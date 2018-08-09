'''
Dark Souls .nvm (Navimesh) model importer

Author: Sean Pesce
Navimesh research by: HotPocketRemix
'''

from inc_noesis import *
import noesis
import rapi

def registerNoesisTypes():
    '''Register the plugin. Just change the Game name and extension.'''
    
    handle = noesis.register("Dark Souls Navimesh", ".nvm")
    noesis.setHandlerTypeCheck(handle, noepyCheckType)
    noesis.setHandlerLoadModel(handle, noepyLoadModel)
    return 1

def noepyCheckType(data):
    '''Verify that the format is supported by this plugin. Default yes'''
    
    if len(data) < 24:
        return 0
    try:
        bs = NoeBitStream(data)
        return 1
    except:
        return 0
    
def get_endian(data):
    return 0 # Little Endian

def noepyLoadModel(data, mdlList):
    '''Build the model, set materials, bones, and animations. You do not
    need all of them as long as they are empty lists (they are by default)'''
    
    endian = get_endian(data)
    ctx = rapi.rpgCreateContext()
    parser = SanaeParser(data, endian)
    parser.parse_file()
    mdl = rapi.rpgConstructModel()
    mdl.setModelMaterials(NoeModelMaterials(parser.texList, parser.matList))
    mdl.setBones(parser.boneList)
    mdl.setAnims(parser.animList)
    mdlList.append(mdl)
    return 1

class NVM_mesh(object):
    
    def __init__(self):
        
        self.numVerts = 0
        self.vertSize = 12
        self.vertOfs = 0
        self.vertBuff = bytes()
        self.numTris = 0
        self.triSize = 28
        self.triOfs = 0
        self.triBuff = bytes()

class SanaeParser(object):
    
    def __init__(self, data, endian=0):
        
        self.inFile = NoeBitStream(data, endian)
        self.animList = []
        self.texList = []
        self.matList = []
        self.boneList = []
        self.meshList = []
        if endian:
            rapi.rpgSetOption(noesis.RPGOPT_BIGENDIAN, 1)
            
    def parse_file(self):
        '''Main parser method'''
        
        # Header
        signum = self.inFile.readUInt() # Always = 1
        
        numVerts = self.inFile.readUInt()
        vertOfs = self.inFile.readUInt()
        numTris = self.inFile.readUInt()
        triOfs = self.inFile.readUInt()
        rootPrismOfs = self.inFile.readUInt()
        
        # Create mesh object
        mesh = NVM_mesh()
        self.meshList.append(mesh)
        
        self.inFile.seek(vertOfs)
        
        mesh.numVerts = numVerts
        mesh.vertSize = 12
        mesh.vertOfs = vertOfs
        mesh.numTris = numTris
        mesh.triSize = 28
        mesh.triOfs = triOfs
        
        positions = []
        
        numTrisModifier = 1
        
        for k in range(0, numTris):
            self.inFile.seek(triOfs+(k*mesh.triSize))
            ix, iy, iz = self.inFile.read('3L')
            self.inFile.seek(mesh.vertOfs+(12*ix))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            self.inFile.seek(mesh.vertOfs+(12*iy))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            self.inFile.seek(mesh.vertOfs+(12*iz))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            
            
            # Comment out this block for culled faces
            '''
            numTrisModifier = 2
            self.inFile.seek(triOfs+(k*mesh.triSize))
            ix, iz, iy = self.inFile.read('3L')
            self.inFile.seek(vertOfs+(12*ix))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            self.inFile.seek(vertOfs+(12*iy))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            self.inFile.seek(vertOfs+(12*iz))
            vx, vy, vz = self.inFile.read('3f')
            positions.append([vx, vy, vz])
            '''
            # End of block
        
        rapi.immBegin(noesis.RPGEO_TRIANGLE)
        for l in range(0, (numTris*numTrisModifier)*3):
            rapi.immVertex3(positions[l])
        rapi.immEnd()
        