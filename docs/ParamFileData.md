# Dark Souls Parameter file parsing  

## Sections  
 * [Header](#header) (44 bytes)
 * Constant (?) (4 bytes): 00 02 00 00
 * [Parameter ID array](#id-array) (12 * n bytes)
 * Parameter data array (P * n bytes)
 * Name strings array
 
<sup>n = number of parameters in the parameter array</sup>  
<sup>P = size of parameter structure (varies depending on the param structure type, which is specific to each .param file)</sup>
 

## Header  
**Visualization:**  
```
+----------------------------------------------------------------------------------------+
|                           Total header size: 44 bytes (0x2C)                           |
+-------+---+-------+---+----------------------------------------------------------------+
|   A   | B |   C   | D |                               E                                |
+-------+---+-------+---+----------------------------------------------------------------+
```
Fields:  
 * **`(A)`** `[0x00, 0x03] ( 4 bytes)` ?  
 * **`(B)`** `[0x04, 0x05] ( 2 bytes)` Starting offset of parameter data structure array (may be incorrect in altered game archives)  
 * **`(C)`** `[0x06, 0x09] ( 4 bytes)` ?  
 * **`(D)`** `[0x0A, 0x0B] ( 2 bytes)` Number of parameters in the data array (array length)  
 * **`(E)`** `[0x0C, 0x2B] (32 bytes)` Title of the file as an ASCII string. The title is followed by null byte, and then trailing spaces until another null byte at 0x2C.  

**Example Header:**  
<sup>(from EquipParamWeapon.param)</sup>
```
Offset (hex)  |  00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F  |    Text format   
--------------+---------------------------------------------------+------------------
00000000      |  60 65 05 00 8C 3A 01 00 01 00 DD 04 45 51 55 49  |  `e..Œ:....Ý.EQUI
00000010      |  50 5F 50 41 52 41 4D 5F 57 45 41 50 4F 4E 5F 53  |  P_PARAM_WEAPON_S
00000020      |  54 00 20 20 20 20 20 20 20 20 20 20 00 02 00 00  |  T.          ....
```



## ID array  

Starting at file offset 0x30 is an array of 12-byte structs (one for every parameter structure in the parameter array). These ID structures contain the following fields:

```
+--------------------------------------------------------------------------------------------------+
|                                Total data structure size: 12 bytes                               |
+--------------------------------+--------------------------------+--------------------------------+
|     Parameter ID (4 bytes)     |  Param struct offset (4 bytes) |  Name string offset (4 bytes)  |
+--------------------------------+--------------------------------+--------------------------------+
```
