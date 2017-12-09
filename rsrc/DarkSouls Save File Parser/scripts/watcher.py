# -*- coding: utf-8 -*
""" DSFP watcher, looks for save file modifications

.. module:: watcher
    :platform: Linux, Windows, MacOS X
    :synopsis: watches for dark souls save file modifications and prints
        any modified data in console
.. moduleauthor:: Tarvitz<tarvitz@blacklibrary.ru>
"""

from __future__ import unicode_literals
import sys
import os
import struct

PROJECT_ROOT = os.path.pardir


def rel(path):
    return os.path.join(PROJECT_ROOT, path)

sys.path.insert(0, os.path.join(PROJECT_ROOT, 'dsfp'))

import six
from datetime import datetime

from time import sleep
from dsfp import DSSaveFileParser
from dsfp.constants import BLOCK_SIZE, BLOCK_INDEX
from dsfp.tools import BinDiff
import simplejson as json
import argparse


SNAPSHOT_DIR = os.path.join(
    os.getcwdu()
    if hasattr(os, 'getcwdu') else os.getcwd(),
    'snapshots'
)


class SimpleWatcher(object):
    """ Simple watcher

    :param str filename: path inspected filename
    :keyword int slot: character slot
    :keyword dict skip_table: skip some data which is represented in table
        stored in dict
    :keyword bool use_curses: use curses interface instead of standard cli
    :keyword int start_offset: start inspections with given offset
    :keyword int start_offset: end inspections with given offset
    """
    def __init__(self, filename, slot=0, skip_tables=None,
                 start_offset=0x0, end_offset=127384):
        self.filename = filename
        self.slot = slot
        self.skip_tables = skip_tables or []
        self.start_offset = start_offset
        self.end_offset = end_offset

    @staticmethod
    def log(out):
        """
        log into the main window
        :keyword bool refresh: True if should be refreshed
        """
        print(out)

    @staticmethod
    def console_log(out, x=1, y=1, clean=False):
        print(out)

    def run(self):
        modified = 0
        old_stat = os.lstat(self.filename)
        fo = open(self.filename, 'rb')
        slot_offset = BLOCK_INDEX + self.slot * BLOCK_SIZE
        fo.seek(slot_offset)
        old_data = fo.read(BLOCK_SIZE)
        fo.close()

        while 1:
            sleep(1)
            stat = os.lstat(self.filename)
            if stat.st_mtime == old_stat.st_mtime:
                continue
            old_stat = stat
            t_modify = "%s modified (%s)" % (
                datetime.now().strftime('%H:%M:%S'), modified
            )
            self.console_log(t_modify, clean=True)
            ds = DSSaveFileParser(self.filename)
            data = ds.read_slot_data(self.slot)
            ds.close()

            data_stream = six.BytesIO(data)
            old_data_stream = six.BytesIO(old_data)

            diff = BinDiff(data, old_data,
                           skip_tables=self.skip_tables,
                           start_offset=self.start_offset,
                           end_offset=self.end_offset,
                           )
            diff_log = diff.process_diff()

            self.console_log("Differences: %i" % len(diff_log), x=2)

            for idx, log in enumerate(diff_log):
                data_stream.seek(log['offset'])
                old_data_stream.seek(log['offset'])

                diff_data = struct.unpack('I', data_stream.read(4))[0]
                diff_data_old = struct.unpack(
                    'I', old_data_stream.read(4))[0]
                fmt = (
                    "0x%(addr)08x[%(saddr)10s] %(value)10s 0x%(hex)08x "
                    "%(follow)5s %(old)10s 0x%(old_hex)08x" % {
                        'addr': log['offset'] + slot_offset,
                        'saddr': log['offset'] + slot_offset,
                        'value': diff_data,
                        'hex': diff_data,
                        'old': diff_data_old,
                        'old_hex': diff_data_old,
                        'follow': '<-'
                    }
                )
                self.log(fmt)

            old_data = data
            modified += 1


def main(ns):
    slot = ns.slot[0] - 1
    filename = ns.filename[0]
    skip_tables = None

    if ns.skip_table:
        skip_tables = []
        for json_file in ns.skip_table:
            load = json.loads(json_file.read())
            skip_tables.append(load)

    watcher = SimpleWatcher(slot=slot, filename=filename,
                            skip_tables=skip_tables)
    try:
        watcher.run()
    except KeyboardInterrupt:
        print("\nCatch Ctrl+C, exiting ..")
        sys.exit(0)

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
        description='Prints changes for darksouls save file.'
    )
    parser.add_argument('-f', '--filename', metavar='draks0005.sl2',
                        type=str, nargs=1,
                        help='save file', required=True)
    parser.add_argument('-s', '--slot', metavar='N', type=int, nargs=1,
                        default=1,
                        help='character slot')
    parser.add_argument('-T', '--skip-table',
                        metavar='table.json,table2.json',
                        nargs='+',
                        type=argparse.FileType('r'),
                        help=(
                            'use data inside of json file for skipping diff'
                            'check inside of block with given offsets'),
                        required=False)
    parser.add_argument('-B', '--start-offset',
                        type=str, required=False,
                        help='start offset for inspections')
    parser.add_argument('-E', '--end-offset',
                        type=str, required=False,
                        help='end offset for inspections')
    arguments = parser.parse_args(sys.argv[1:])
    main(arguments)
