??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
,
Exp
x"T
y"T"
Ttype:

2
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:
2
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?*1.13.12
b'unknown'8??
n
PlaceholderPlaceholder*
shape:?????????
*
dtype0*'
_output_shapes
:?????????

l
reshape/event_shape_outConst*!
valueB"         *
dtype0*
_output_shapes
:
a
reshape/event_shape_inConst*
valueB:?*
dtype0*
_output_shapes
:
N
reshape/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
P
reshape/Size_1Const*
value	B :*
dtype0*
_output_shapes
: 
N
reshape/RankConst*
dtype0*
_output_shapes
: *
value	B :
P
reshape/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
?
?rotation0//orthogonal_stiefel/A/Initializer/random_normal/shapeConst*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
>rotation0//orthogonal_stiefel/A/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
valueB
 *    
?
@rotation0//orthogonal_stiefel/A/Initializer/random_normal/stddevConst*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Nrotation0//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?rotation0//orthogonal_stiefel/A/Initializer/random_normal/shape*
dtype0* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A
?
=rotation0//orthogonal_stiefel/A/Initializer/random_normal/mulMulNrotation0//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormal@rotation0//orthogonal_stiefel/A/Initializer/random_normal/stddev*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A* 
_output_shapes
:
??
?
9rotation0//orthogonal_stiefel/A/Initializer/random_normalAdd=rotation0//orthogonal_stiefel/A/Initializer/random_normal/mul>rotation0//orthogonal_stiefel/A/Initializer/random_normal/mean* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A
?
.rotation0//orthogonal_stiefel/A/Initializer/QrQr9rotation0//orthogonal_stiefel/A/Initializer/random_normal*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*,
_output_shapes
:
??:
??
?
4rotation0//orthogonal_stiefel/A/Initializer/DiagPartDiagPart0rotation0//orthogonal_stiefel/A/Initializer/Qr:1*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
_output_shapes	
:?*
T0
?
0rotation0//orthogonal_stiefel/A/Initializer/SignSign4rotation0//orthogonal_stiefel/A/Initializer/DiagPart*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
_output_shapes	
:?
?
/rotation0//orthogonal_stiefel/A/Initializer/mulMul.rotation0//orthogonal_stiefel/A/Initializer/Qr0rotation0//orthogonal_stiefel/A/Initializer/Sign*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A* 
_output_shapes
:
??*
T0
?
9rotation0//orthogonal_stiefel/A/Initializer/Reshape/shapeConst*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
3rotation0//orthogonal_stiefel/A/Initializer/ReshapeReshape/rotation0//orthogonal_stiefel/A/Initializer/mul9rotation0//orthogonal_stiefel/A/Initializer/Reshape/shape*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A* 
_output_shapes
:
??
?
3rotation0//orthogonal_stiefel/A/Initializer/mul_1/xConst*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1rotation0//orthogonal_stiefel/A/Initializer/mul_1Mul3rotation0//orthogonal_stiefel/A/Initializer/mul_1/x3rotation0//orthogonal_stiefel/A/Initializer/Reshape* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A
?
rotation0//orthogonal_stiefel/AVarHandleOp*
shape:
??*
dtype0*
_output_shapes
: *0
shared_name!rotation0//orthogonal_stiefel/A*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A
?
@rotation0//orthogonal_stiefel/A/IsInitialized/VarIsInitializedOpVarIsInitializedOprotation0//orthogonal_stiefel/A*
_output_shapes
: 
?
&rotation0//orthogonal_stiefel/A/AssignAssignVariableOprotation0//orthogonal_stiefel/A1rotation0//orthogonal_stiefel/A/Initializer/mul_1*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A*
dtype0
?
3rotation0//orthogonal_stiefel/A/Read/ReadVariableOpReadVariableOprotation0//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??*2
_class(
&$loc:@rotation0//orthogonal_stiefel/A
?
?rotation1//orthogonal_stiefel/A/Initializer/random_normal/shapeConst*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
>rotation1//orthogonal_stiefel/A/Initializer/random_normal/meanConst*
_output_shapes
: *2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
valueB
 *    *
dtype0
?
@rotation1//orthogonal_stiefel/A/Initializer/random_normal/stddevConst*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Nrotation1//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?rotation1//orthogonal_stiefel/A/Initializer/random_normal/shape*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??
?
=rotation1//orthogonal_stiefel/A/Initializer/random_normal/mulMulNrotation1//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormal@rotation1//orthogonal_stiefel/A/Initializer/random_normal/stddev*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A* 
_output_shapes
:
??
?
9rotation1//orthogonal_stiefel/A/Initializer/random_normalAdd=rotation1//orthogonal_stiefel/A/Initializer/random_normal/mul>rotation1//orthogonal_stiefel/A/Initializer/random_normal/mean* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
.rotation1//orthogonal_stiefel/A/Initializer/QrQr9rotation1//orthogonal_stiefel/A/Initializer/random_normal*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*,
_output_shapes
:
??:
??
?
4rotation1//orthogonal_stiefel/A/Initializer/DiagPartDiagPart0rotation1//orthogonal_stiefel/A/Initializer/Qr:1*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
_output_shapes	
:?
?
0rotation1//orthogonal_stiefel/A/Initializer/SignSign4rotation1//orthogonal_stiefel/A/Initializer/DiagPart*
_output_shapes	
:?*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
/rotation1//orthogonal_stiefel/A/Initializer/mulMul.rotation1//orthogonal_stiefel/A/Initializer/Qr0rotation1//orthogonal_stiefel/A/Initializer/Sign*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A* 
_output_shapes
:
??
?
9rotation1//orthogonal_stiefel/A/Initializer/Reshape/shapeConst*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
3rotation1//orthogonal_stiefel/A/Initializer/ReshapeReshape/rotation1//orthogonal_stiefel/A/Initializer/mul9rotation1//orthogonal_stiefel/A/Initializer/Reshape/shape* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
3rotation1//orthogonal_stiefel/A/Initializer/mul_1/xConst*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1rotation1//orthogonal_stiefel/A/Initializer/mul_1Mul3rotation1//orthogonal_stiefel/A/Initializer/mul_1/x3rotation1//orthogonal_stiefel/A/Initializer/Reshape* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
rotation1//orthogonal_stiefel/AVarHandleOp*
shape:
??*
dtype0*
_output_shapes
: *0
shared_name!rotation1//orthogonal_stiefel/A*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
@rotation1//orthogonal_stiefel/A/IsInitialized/VarIsInitializedOpVarIsInitializedOprotation1//orthogonal_stiefel/A*
_output_shapes
: 
?
&rotation1//orthogonal_stiefel/A/AssignAssignVariableOprotation1//orthogonal_stiefel/A1rotation1//orthogonal_stiefel/A/Initializer/mul_1*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A*
dtype0
?
3rotation1//orthogonal_stiefel/A/Read/ReadVariableOpReadVariableOprotation1//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??*2
_class(
&$loc:@rotation1//orthogonal_stiefel/A
?
?rotation2//orthogonal_stiefel/A/Initializer/random_normal/shapeConst*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
>rotation2//orthogonal_stiefel/A/Initializer/random_normal/meanConst*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
valueB
 *    *
dtype0*
_output_shapes
: 
?
@rotation2//orthogonal_stiefel/A/Initializer/random_normal/stddevConst*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Nrotation2//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?rotation2//orthogonal_stiefel/A/Initializer/random_normal/shape*
dtype0* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A
?
=rotation2//orthogonal_stiefel/A/Initializer/random_normal/mulMulNrotation2//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormal@rotation2//orthogonal_stiefel/A/Initializer/random_normal/stddev* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A
?
9rotation2//orthogonal_stiefel/A/Initializer/random_normalAdd=rotation2//orthogonal_stiefel/A/Initializer/random_normal/mul>rotation2//orthogonal_stiefel/A/Initializer/random_normal/mean*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A* 
_output_shapes
:
??
?
.rotation2//orthogonal_stiefel/A/Initializer/QrQr9rotation2//orthogonal_stiefel/A/Initializer/random_normal*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*,
_output_shapes
:
??:
??
?
4rotation2//orthogonal_stiefel/A/Initializer/DiagPartDiagPart0rotation2//orthogonal_stiefel/A/Initializer/Qr:1*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
_output_shapes	
:?
?
0rotation2//orthogonal_stiefel/A/Initializer/SignSign4rotation2//orthogonal_stiefel/A/Initializer/DiagPart*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
_output_shapes	
:?*
T0
?
/rotation2//orthogonal_stiefel/A/Initializer/mulMul.rotation2//orthogonal_stiefel/A/Initializer/Qr0rotation2//orthogonal_stiefel/A/Initializer/Sign*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A* 
_output_shapes
:
??
?
9rotation2//orthogonal_stiefel/A/Initializer/Reshape/shapeConst*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
valueB"    *
dtype0*
_output_shapes
:
?
3rotation2//orthogonal_stiefel/A/Initializer/ReshapeReshape/rotation2//orthogonal_stiefel/A/Initializer/mul9rotation2//orthogonal_stiefel/A/Initializer/Reshape/shape* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A
?
3rotation2//orthogonal_stiefel/A/Initializer/mul_1/xConst*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1rotation2//orthogonal_stiefel/A/Initializer/mul_1Mul3rotation2//orthogonal_stiefel/A/Initializer/mul_1/x3rotation2//orthogonal_stiefel/A/Initializer/Reshape* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A
?
rotation2//orthogonal_stiefel/AVarHandleOp*
shape:
??*
dtype0*
_output_shapes
: *0
shared_name!rotation2//orthogonal_stiefel/A*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A
?
@rotation2//orthogonal_stiefel/A/IsInitialized/VarIsInitializedOpVarIsInitializedOprotation2//orthogonal_stiefel/A*
_output_shapes
: 
?
&rotation2//orthogonal_stiefel/A/AssignAssignVariableOprotation2//orthogonal_stiefel/A1rotation2//orthogonal_stiefel/A/Initializer/mul_1*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
dtype0
?
3rotation2//orthogonal_stiefel/A/Read/ReadVariableOpReadVariableOprotation2//orthogonal_stiefel/A* 
_output_shapes
:
??*2
_class(
&$loc:@rotation2//orthogonal_stiefel/A*
dtype0
?
Acompression//orthogonal_stiefel/A/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
valueB"  
   
?
@compression//orthogonal_stiefel/A/Initializer/random_normal/meanConst*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Bcompression//orthogonal_stiefel/A/Initializer/random_normal/stddevConst*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Pcompression//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormalRandomStandardNormalAcompression//orthogonal_stiefel/A/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	?
*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A
?
?compression//orthogonal_stiefel/A/Initializer/random_normal/mulMulPcompression//orthogonal_stiefel/A/Initializer/random_normal/RandomStandardNormalBcompression//orthogonal_stiefel/A/Initializer/random_normal/stddev*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
_output_shapes
:	?

?
;compression//orthogonal_stiefel/A/Initializer/random_normalAdd?compression//orthogonal_stiefel/A/Initializer/random_normal/mul@compression//orthogonal_stiefel/A/Initializer/random_normal/mean*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
_output_shapes
:	?
*
T0
?
0compression//orthogonal_stiefel/A/Initializer/QrQr;compression//orthogonal_stiefel/A/Initializer/random_normal*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A*)
_output_shapes
:	?
:


?
6compression//orthogonal_stiefel/A/Initializer/DiagPartDiagPart2compression//orthogonal_stiefel/A/Initializer/Qr:1*
_output_shapes
:
*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A
?
2compression//orthogonal_stiefel/A/Initializer/SignSign6compression//orthogonal_stiefel/A/Initializer/DiagPart*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
_output_shapes
:
*
T0
?
1compression//orthogonal_stiefel/A/Initializer/mulMul0compression//orthogonal_stiefel/A/Initializer/Qr2compression//orthogonal_stiefel/A/Initializer/Sign*
_output_shapes
:	?
*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A
?
;compression//orthogonal_stiefel/A/Initializer/Reshape/shapeConst*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
valueB"  
   *
dtype0*
_output_shapes
:
?
5compression//orthogonal_stiefel/A/Initializer/ReshapeReshape1compression//orthogonal_stiefel/A/Initializer/mul;compression//orthogonal_stiefel/A/Initializer/Reshape/shape*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
_output_shapes
:	?

?
5compression//orthogonal_stiefel/A/Initializer/mul_1/xConst*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3compression//orthogonal_stiefel/A/Initializer/mul_1Mul5compression//orthogonal_stiefel/A/Initializer/mul_1/x5compression//orthogonal_stiefel/A/Initializer/Reshape*
T0*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
_output_shapes
:	?

?
!compression//orthogonal_stiefel/AVarHandleOp*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
shape:	?
*
dtype0*
_output_shapes
: *2
shared_name#!compression//orthogonal_stiefel/A
?
Bcompression//orthogonal_stiefel/A/IsInitialized/VarIsInitializedOpVarIsInitializedOp!compression//orthogonal_stiefel/A*
_output_shapes
: 
?
(compression//orthogonal_stiefel/A/AssignAssignVariableOp!compression//orthogonal_stiefel/A3compression//orthogonal_stiefel/A/Initializer/mul_1*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
dtype0
?
5compression//orthogonal_stiefel/A/Read/ReadVariableOpReadVariableOp!compression//orthogonal_stiefel/A*
_output_shapes
:	?
*4
_class*
(&loc:@compression//orthogonal_stiefel/A*
dtype0
j
zerosConst*
dtype0*&
_output_shapes
:*%
valueB*    
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/ConstConst*
valueB"     *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/ReshapeReshapezeros?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/Const*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_sliceStridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/Reshape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice/stack_2*

begin_mask*
ellipsis_mask*
_output_shapes
:	?*
T0*
Index0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stackConst*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1StridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/reshape/inverse/Reshape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*
_output_shapes
:	?*
Index0*
T0
?
Greal_nvp_default_template/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB"?     
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB
 * ٦?
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/maxConst*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB
 * ٦=*
dtype0*
_output_shapes
: 
?
Oreal_nvp_default_template/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformGreal_nvp_default_template/dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/subSubEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/maxEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/min*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
_output_shapes
: 
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/mulMulOreal_nvp_default_template/dense/kernel/Initializer/random_uniform/RandomUniformEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/sub*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel* 
_output_shapes
:
??
?
Areal_nvp_default_template/dense/kernel/Initializer/random_uniformAddEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/mulEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/min*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel* 
_output_shapes
:
??
?
&real_nvp_default_template/dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *7
shared_name(&real_nvp_default_template/dense/kernel*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
shape:
??
?
Greal_nvp_default_template/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template/dense/kernel*
_output_shapes
: 
?
-real_nvp_default_template/dense/kernel/AssignAssignVariableOp&real_nvp_default_template/dense/kernelAreal_nvp_default_template/dense/kernel/Initializer/random_uniform*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
dtype0
?
:real_nvp_default_template/dense/kernel/Read/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
dtype0* 
_output_shapes
:
??
?
6real_nvp_default_template/dense/bias/Initializer/zerosConst*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
$real_nvp_default_template/dense/biasVarHandleOp*
dtype0*
_output_shapes
: *5
shared_name&$real_nvp_default_template/dense/bias*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
shape:?
?
Ereal_nvp_default_template/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp$real_nvp_default_template/dense/bias*
_output_shapes
: 
?
+real_nvp_default_template/dense/bias/AssignAssignVariableOp$real_nvp_default_template/dense/bias6real_nvp_default_template/dense/bias/Initializer/zeros*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
dtype0
?
8real_nvp_default_template/dense/bias/Read/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?*7
_class-
+)loc:@real_nvp_default_template/dense/bias
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/BiasAdd*
_output_shapes
:	?
?
Ireal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB
 *qĜ?
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/maxGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/sub*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel* 
_output_shapes
:
??*
T0
?
Creal_nvp_default_template/dense_1/kernel/Initializer/random_uniformAddGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/mulGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel
?
(real_nvp_default_template/dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template/dense_1/kernel*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
shape:
??
?
Ireal_nvp_default_template/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template/dense_1/kernel*
_output_shapes
: 
?
/real_nvp_default_template/dense_1/kernel/AssignAssignVariableOp(real_nvp_default_template/dense_1/kernelCreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
dtype0
?
<real_nvp_default_template/dense_1/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
8real_nvp_default_template/dense_1/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template/dense_1/biasVarHandleOp*7
shared_name(&real_nvp_default_template/dense_1/bias*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
shape:?*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template/dense_1/bias*
_output_shapes
: 
?
-real_nvp_default_template/dense_1/bias/AssignAssignVariableOp&real_nvp_default_template/dense_1/bias8real_nvp_default_template/dense_1/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
dtype0
?
:real_nvp_default_template/dense_1/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/BiasAdd*
_output_shapes
:	?
?
Ireal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB
 *HY??
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB
 *HY?=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/maxGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
_output_shapes
: 
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel* 
_output_shapes
:
??
?
Creal_nvp_default_template/dense_2/kernel/Initializer/random_uniformAddGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/mulGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel
?
(real_nvp_default_template/dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template/dense_2/kernel*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
shape:
??
?
Ireal_nvp_default_template/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template/dense_2/kernel*
_output_shapes
: 
?
/real_nvp_default_template/dense_2/kernel/AssignAssignVariableOp(real_nvp_default_template/dense_2/kernelCreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0
?
<real_nvp_default_template/dense_2/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
8real_nvp_default_template/dense_2/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template/dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *7
shared_name(&real_nvp_default_template/dense_2/bias*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
shape:?
?
Greal_nvp_default_template/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template/dense_2/bias*
_output_shapes
: 
?
-real_nvp_default_template/dense_2/bias/AssignAssignVariableOp&real_nvp_default_template/dense_2/bias8real_nvp_default_template/dense_2/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
dtype0
?
:real_nvp_default_template/dense_2/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/splitSplit?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/split/split_dim?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split**
_output_shapes
:	?:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/subSub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/split*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/NegNeg?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/real_nvp_default_template/split:1*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/ExpExp?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/Neg*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/mulMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/sub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/Exp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/mul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/concat/axis*
N*
_output_shapes
:	?*
T0
?
*rotation0/inverse/Tensordot/ReadVariableOpReadVariableOprotation0//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??
{
*rotation0/inverse/Tensordot/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
%rotation0/inverse/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp0/inverse/concat*rotation0/inverse/Tensordot/transpose/perm*
_output_shapes
:	?*
T0
z
)rotation0/inverse/Tensordot/Reshape/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
?
#rotation0/inverse/Tensordot/ReshapeReshape%rotation0/inverse/Tensordot/transpose)rotation0/inverse/Tensordot/Reshape/shape*
_output_shapes
:	?*
T0
}
,rotation0/inverse/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
'rotation0/inverse/Tensordot/transpose_1	Transpose*rotation0/inverse/Tensordot/ReadVariableOp,rotation0/inverse/Tensordot/transpose_1/perm* 
_output_shapes
:
??*
T0
|
+rotation0/inverse/Tensordot/Reshape_1/shapeConst*
valueB"    *
dtype0*
_output_shapes
:
?
%rotation0/inverse/Tensordot/Reshape_1Reshape'rotation0/inverse/Tensordot/transpose_1+rotation0/inverse/Tensordot/Reshape_1/shape* 
_output_shapes
:
??*
T0
?
"rotation0/inverse/Tensordot/MatMulMatMul#rotation0/inverse/Tensordot/Reshape%rotation0/inverse/Tensordot/Reshape_1*
_output_shapes
:	?*
T0
r
!rotation0/inverse/Tensordot/shapeConst*
_output_shapes
:*
valueB"     *
dtype0
?
rotation0/inverse/TensordotReshape"rotation0/inverse/Tensordot/MatMul!rotation0/inverse/Tensordot/shape*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_sliceStridedSlicerotation0/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice/stack_2*
T0*
Index0*
ellipsis_mask*

begin_mask*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"    ?  
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1StridedSlicerotation0/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1/stack_2*
end_mask*
_output_shapes
:	?*
T0*
Index0*
ellipsis_mask
?
Ireal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB"?     *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB
 * ٦?*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB
 * ٦=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel
?
Creal_nvp_default_template_1/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel
?
(real_nvp_default_template_1/dense/kernelVarHandleOp*9
shared_name*(real_nvp_default_template_1/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
shape:
??*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_1/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_1/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_1/dense/kernelCreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
dtype0
?
<real_nvp_default_template_1/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
dtype0* 
_output_shapes
:
??
?
8real_nvp_default_template_1/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_1/dense/biasVarHandleOp*
shape:?*
dtype0*
_output_shapes
: *7
shared_name(&real_nvp_default_template_1/dense/bias*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias
?
Greal_nvp_default_template_1/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_1/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_1/dense/bias/AssignAssignVariableOp&real_nvp_default_template_1/dense/bias8real_nvp_default_template_1/dense/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
dtype0
?
:real_nvp_default_template_1/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
valueB
 *qĜ?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
Ireal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel
?
Ereal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_1/dense_1/kernelVarHandleOp*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
shape:
??*
dtype0*
_output_shapes
: *;
shared_name,*real_nvp_default_template_1/dense_1/kernel
?
Kreal_nvp_default_template_1/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_1/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_1/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_1/dense_1/kernelEreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform*
dtype0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel
?
>real_nvp_default_template_1/dense_1/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_1/dense_1/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
(real_nvp_default_template_1/dense_1/biasVarHandleOp*
_output_shapes
: *9
shared_name*(real_nvp_default_template_1/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
shape:?*
dtype0
?
Ireal_nvp_default_template_1/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_1/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_1/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_1/dense_1/bias:real_nvp_default_template_1/dense_1/bias/Initializer/zeros*
dtype0*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias
?
<real_nvp_default_template_1/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
_output_shapes	
:?*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB"     
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB
 *HY??*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB
 *HY?=
?
Sreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/min*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel* 
_output_shapes
:
??*
T0
?
*real_nvp_default_template_1/dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *;
shared_name,*real_nvp_default_template_1/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
shape:
??
?
Kreal_nvp_default_template_1/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_1/dense_2/kernel*
_output_shapes
: 
?
1real_nvp_default_template_1/dense_2/kernel/AssignAssignVariableOp*real_nvp_default_template_1/dense_2/kernelEreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
dtype0
?
>real_nvp_default_template_1/dense_2/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_1/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
valueB?*    
?
(real_nvp_default_template_1/dense_2/biasVarHandleOp*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
shape:?*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template_1/dense_2/bias
?
Ireal_nvp_default_template_1/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_1/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_1/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_1/dense_2/bias:real_nvp_default_template_1/dense_2/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
dtype0
?
<real_nvp_default_template_1/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
_output_shapes	
:?*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/splitSplit?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/split/split_dim?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split**
_output_shapes
:	?:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/subSub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/split*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/NegNeg?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/real_nvp_default_template/split:1*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/ExpExp?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/Neg*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/mulMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/sub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/Exp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/mul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/concat/axis*
_output_shapes
:	?*
T0*
N
?
*rotation1/inverse/Tensordot/ReadVariableOpReadVariableOprotation1//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??
{
*rotation1/inverse/Tensordot/transpose/permConst*
_output_shapes
:*
valueB"       *
dtype0
?
%rotation1/inverse/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp1/inverse/concat*rotation1/inverse/Tensordot/transpose/perm*
_output_shapes
:	?*
T0
z
)rotation1/inverse/Tensordot/Reshape/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
?
#rotation1/inverse/Tensordot/ReshapeReshape%rotation1/inverse/Tensordot/transpose)rotation1/inverse/Tensordot/Reshape/shape*
T0*
_output_shapes
:	?
}
,rotation1/inverse/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
'rotation1/inverse/Tensordot/transpose_1	Transpose*rotation1/inverse/Tensordot/ReadVariableOp,rotation1/inverse/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
??
|
+rotation1/inverse/Tensordot/Reshape_1/shapeConst*
valueB"    *
dtype0*
_output_shapes
:
?
%rotation1/inverse/Tensordot/Reshape_1Reshape'rotation1/inverse/Tensordot/transpose_1+rotation1/inverse/Tensordot/Reshape_1/shape* 
_output_shapes
:
??*
T0
?
"rotation1/inverse/Tensordot/MatMulMatMul#rotation1/inverse/Tensordot/Reshape%rotation1/inverse/Tensordot/Reshape_1*
T0*
_output_shapes
:	?
r
!rotation1/inverse/Tensordot/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
?
rotation1/inverse/TensordotReshape"rotation1/inverse/Tensordot/MatMul!rotation1/inverse/Tensordot/shape*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_sliceStridedSlicerotation1/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice/stack_2*
ellipsis_mask*

begin_mask*
_output_shapes
:	?*
T0*
Index0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stackConst*
_output_shapes
:*
valueB"    ?  *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1StridedSlicerotation1/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*
_output_shapes
:	?*
Index0*
T0
?
Ireal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB"?     *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB
 * ٦?*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB
 * ٦=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/shape*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
dtype0* 
_output_shapes
:
??*
T0
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel* 
_output_shapes
:
??
?
Creal_nvp_default_template_2/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel* 
_output_shapes
:
??
?
(real_nvp_default_template_2/dense/kernelVarHandleOp*9
shared_name*(real_nvp_default_template_2/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
shape:
??*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_2/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_2/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_2/dense/kernelCreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform*
dtype0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel
?
<real_nvp_default_template_2/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
dtype0* 
_output_shapes
:
??
?
8real_nvp_default_template_2/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_2/dense/biasVarHandleOp*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
shape:?*
dtype0*
_output_shapes
: *7
shared_name(&real_nvp_default_template_2/dense/bias
?
Greal_nvp_default_template_2/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_2/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_2/dense/bias/AssignAssignVariableOp&real_nvp_default_template_2/dense/bias8real_nvp_default_template_2/dense/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
dtype0
?
:real_nvp_default_template_2/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
valueB
 *qĜ?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
valueB
 *qĜ=
?
Sreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_2/dense_1/kernelVarHandleOp*
shape:
??*
dtype0*
_output_shapes
: *;
shared_name,*real_nvp_default_template_2/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel
?
Kreal_nvp_default_template_2/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_2/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_2/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_2/dense_1/kernelEreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
dtype0
?
>real_nvp_default_template_2/dense_1/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel* 
_output_shapes
:
??*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
dtype0
?
:real_nvp_default_template_2/dense_1/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
(real_nvp_default_template_2/dense_1/biasVarHandleOp*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
shape:?*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template_2/dense_1/bias
?
Ireal_nvp_default_template_2/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_2/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_2/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_2/dense_1/bias:real_nvp_default_template_2/dense_1/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
dtype0
?
<real_nvp_default_template_2/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
_output_shapes	
:?*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB"   ?  *
dtype0
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB
 * ٦?
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB
 * ٦=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_2/dense_2/kernelVarHandleOp*;
shared_name,*real_nvp_default_template_2/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
shape:
??*
dtype0*
_output_shapes
: 
?
Kreal_nvp_default_template_2/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_2/dense_2/kernel*
_output_shapes
: 
?
1real_nvp_default_template_2/dense_2/kernel/AssignAssignVariableOp*real_nvp_default_template_2/dense_2/kernelEreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
dtype0
?
>real_nvp_default_template_2/dense_2/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_2/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
valueB?*    
?
(real_nvp_default_template_2/dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template_2/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
shape:?
?
Ireal_nvp_default_template_2/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_2/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_2/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_2/dense_2/bias:real_nvp_default_template_2/dense_2/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
dtype0
?
<real_nvp_default_template_2/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel* 
_output_shapes
:
??*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/subSub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/sub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/concat/axis*
N*
_output_shapes
:	?*
T0
?
*rotation2/inverse/Tensordot/ReadVariableOpReadVariableOprotation2//orthogonal_stiefel/A* 
_output_shapes
:
??*
dtype0
{
*rotation2/inverse/Tensordot/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
%rotation2/inverse/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp2/inverse/concat*rotation2/inverse/Tensordot/transpose/perm*
T0*
_output_shapes
:	?
z
)rotation2/inverse/Tensordot/Reshape/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
?
#rotation2/inverse/Tensordot/ReshapeReshape%rotation2/inverse/Tensordot/transpose)rotation2/inverse/Tensordot/Reshape/shape*
_output_shapes
:	?*
T0
}
,rotation2/inverse/Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
'rotation2/inverse/Tensordot/transpose_1	Transpose*rotation2/inverse/Tensordot/ReadVariableOp,rotation2/inverse/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
??
|
+rotation2/inverse/Tensordot/Reshape_1/shapeConst*
valueB"    *
dtype0*
_output_shapes
:
?
%rotation2/inverse/Tensordot/Reshape_1Reshape'rotation2/inverse/Tensordot/transpose_1+rotation2/inverse/Tensordot/Reshape_1/shape*
T0* 
_output_shapes
:
??
?
"rotation2/inverse/Tensordot/MatMulMatMul#rotation2/inverse/Tensordot/Reshape%rotation2/inverse/Tensordot/Reshape_1*
T0*
_output_shapes
:	?
r
!rotation2/inverse/Tensordot/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
?
rotation2/inverse/TensordotReshape"rotation2/inverse/Tensordot/MatMul!rotation2/inverse/Tensordot/shape*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"    ?  
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_sliceStridedSlicerotation2/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice/stack_2*

begin_mask*
ellipsis_mask*
_output_shapes
:	?*
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stackConst*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1StridedSlicerotation2/inverse/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*
_output_shapes
:	?*
Index0*
T0
?
Ireal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB"?     *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB
 * ٦?*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB
 * ٦=
?
Qreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
dtype0* 
_output_shapes
:
??
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
_output_shapes
: 
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel* 
_output_shapes
:
??
?
Creal_nvp_default_template_3/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel* 
_output_shapes
:
??
?
(real_nvp_default_template_3/dense/kernelVarHandleOp*9
shared_name*(real_nvp_default_template_3/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
shape:
??*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_3/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_3/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_3/dense/kernelCreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
dtype0
?
<real_nvp_default_template_3/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
dtype0* 
_output_shapes
:
??
?
8real_nvp_default_template_3/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
valueB?*    
?
&real_nvp_default_template_3/dense/biasVarHandleOp*
dtype0*
_output_shapes
: *7
shared_name(&real_nvp_default_template_3/dense/bias*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
shape:?
?
Greal_nvp_default_template_3/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_3/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_3/dense/bias/AssignAssignVariableOp&real_nvp_default_template_3/dense/bias8real_nvp_default_template_3/dense/bias/Initializer/zeros*
dtype0*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias
?
:real_nvp_default_template_3/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
_output_shapes	
:?*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
valueB
 *qĜ?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
valueB
 *qĜ=
?
Sreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_3/dense_1/kernelVarHandleOp*
_output_shapes
: *;
shared_name,*real_nvp_default_template_3/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
shape:
??*
dtype0
?
Kreal_nvp_default_template_3/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_3/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_3/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_3/dense_1/kernelEreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
dtype0
?
>real_nvp_default_template_3/dense_1/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_3/dense_1/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_3/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
(real_nvp_default_template_3/dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *9
shared_name*(real_nvp_default_template_3/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_1/bias*
shape:?
?
Ireal_nvp_default_template_3/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_3/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_3/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_3/dense_1/bias:real_nvp_default_template_3/dense_1/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_3/dense_1/bias*
dtype0
?
<real_nvp_default_template_3/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
_output_shapes	
:?*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/BiasAdd*
_output_shapes
:	?
?
Kreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB"   ?  *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB
 * ٦?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB
 * ٦=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/shape*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
dtype0* 
_output_shapes
:
??*
T0
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_3/dense_2/kernelVarHandleOp*
shape:
??*
dtype0*
_output_shapes
: *;
shared_name,*real_nvp_default_template_3/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel
?
Kreal_nvp_default_template_3/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_3/dense_2/kernel*
_output_shapes
: 
?
1real_nvp_default_template_3/dense_2/kernel/AssignAssignVariableOp*real_nvp_default_template_3/dense_2/kernelEreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
dtype0
?
>real_nvp_default_template_3/dense_2/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_3/dense_2/bias/Initializer/zerosConst*
_output_shapes	
:?*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
valueB?*    *
dtype0
?
(real_nvp_default_template_3/dense_2/biasVarHandleOp*9
shared_name*(real_nvp_default_template_3/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
shape:?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_3/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_3/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_3/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_3/dense_2/bias:real_nvp_default_template_3/dense_2/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
dtype0
?
<real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/subSub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/real_nvp_default_template/dense_2/BiasAdd*
_output_shapes
:	?*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/sub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/concat/axis*
T0*
N*
_output_shapes
:	?
?
,compression/inverse/Tensordot/ReadVariableOpReadVariableOp!compression//orthogonal_stiefel/A*
_output_shapes
:	?
*
dtype0
}
,compression/inverse/Tensordot/transpose/permConst*
_output_shapes
:*
valueB"       *
dtype0
?
'compression/inverse/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/inverse/nvp3/inverse/concat,compression/inverse/Tensordot/transpose/perm*
T0*
_output_shapes
:	?
|
+compression/inverse/Tensordot/Reshape/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
?
%compression/inverse/Tensordot/ReshapeReshape'compression/inverse/Tensordot/transpose+compression/inverse/Tensordot/Reshape/shape*
T0*
_output_shapes
:	?

.compression/inverse/Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
)compression/inverse/Tensordot/transpose_1	Transpose,compression/inverse/Tensordot/ReadVariableOp.compression/inverse/Tensordot/transpose_1/perm*
T0*
_output_shapes
:	?

~
-compression/inverse/Tensordot/Reshape_1/shapeConst*
valueB"  
   *
dtype0*
_output_shapes
:
?
'compression/inverse/Tensordot/Reshape_1Reshape)compression/inverse/Tensordot/transpose_1-compression/inverse/Tensordot/Reshape_1/shape*
_output_shapes
:	?
*
T0
?
$compression/inverse/Tensordot/MatMulMatMul%compression/inverse/Tensordot/Reshape'compression/inverse/Tensordot/Reshape_1*
_output_shapes

:
*
T0
t
#compression/inverse/Tensordot/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
?
compression/inverse/TensordotReshape$compression/inverse/Tensordot/MatMul#compression/inverse/Tensordot/shape*
T0*
_output_shapes

:

?
,compression/forward/transpose/ReadVariableOpReadVariableOp!compression//orthogonal_stiefel/A*
_output_shapes
:	?
*
dtype0
s
"compression/forward/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
compression/forward/transpose	Transpose,compression/forward/transpose/ReadVariableOp"compression/forward/transpose/perm*
T0*
_output_shapes
:	
?
l
"compression/forward/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
l
"compression/forward/Tensordot/freeConst*
dtype0*
_output_shapes
:*
valueB: 
^
#compression/forward/Tensordot/ShapeShapePlaceholder*
_output_shapes
:*
T0
m
+compression/forward/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
&compression/forward/Tensordot/GatherV2GatherV2#compression/forward/Tensordot/Shape"compression/forward/Tensordot/free+compression/forward/Tensordot/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
o
-compression/forward/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
(compression/forward/Tensordot/GatherV2_1GatherV2#compression/forward/Tensordot/Shape"compression/forward/Tensordot/axes-compression/forward/Tensordot/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
m
#compression/forward/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
"compression/forward/Tensordot/ProdProd&compression/forward/Tensordot/GatherV2#compression/forward/Tensordot/Const*
T0*
_output_shapes
: 
o
%compression/forward/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
$compression/forward/Tensordot/Prod_1Prod(compression/forward/Tensordot/GatherV2_1%compression/forward/Tensordot/Const_1*
T0*
_output_shapes
: 
k
)compression/forward/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
$compression/forward/Tensordot/concatConcatV2"compression/forward/Tensordot/free"compression/forward/Tensordot/axes)compression/forward/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
?
#compression/forward/Tensordot/stackPack"compression/forward/Tensordot/Prod$compression/forward/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
?
'compression/forward/Tensordot/transpose	TransposePlaceholder$compression/forward/Tensordot/concat*
T0*'
_output_shapes
:?????????

?
%compression/forward/Tensordot/ReshapeReshape'compression/forward/Tensordot/transpose#compression/forward/Tensordot/stack*0
_output_shapes
:??????????????????*
T0

.compression/forward/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
)compression/forward/Tensordot/transpose_1	Transposecompression/forward/transpose.compression/forward/Tensordot/transpose_1/perm*
T0*
_output_shapes
:	
?
~
-compression/forward/Tensordot/Reshape_1/shapeConst*
valueB"
     *
dtype0*
_output_shapes
:
?
'compression/forward/Tensordot/Reshape_1Reshape)compression/forward/Tensordot/transpose_1-compression/forward/Tensordot/Reshape_1/shape*
T0*
_output_shapes
:	
?
?
$compression/forward/Tensordot/MatMulMatMul%compression/forward/Tensordot/Reshape'compression/forward/Tensordot/Reshape_1*(
_output_shapes
:??????????*
T0
p
%compression/forward/Tensordot/Const_2Const*
valueB:?*
dtype0*
_output_shapes
:
m
+compression/forward/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
&compression/forward/Tensordot/concat_1ConcatV2&compression/forward/Tensordot/GatherV2%compression/forward/Tensordot/Const_2+compression/forward/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:
?
compression/forward/TensordotReshape$compression/forward/Tensordot/MatMul&compression/forward/Tensordot/concat_1*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_sliceStridedSlicecompression/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice/stack_2*(
_output_shapes
:??????????*
Index0*
T0*
ellipsis_mask*

begin_mask
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stackConst*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1StridedSlicecompression/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1/stack_2*
end_mask*(
_output_shapes
:??????????*
T0*
Index0*
ellipsis_mask
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
_output_shapes	
:?*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
_output_shapes	
:?*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/addAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/real_nvp_default_template_3/dense_2/BiasAdd*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/add?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/concat/axis*
T0*
N*(
_output_shapes
:??????????
?
*rotation2/forward/transpose/ReadVariableOpReadVariableOprotation2//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??
q
 rotation2/forward/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
rotation2/forward/transpose	Transpose*rotation2/forward/transpose/ReadVariableOp rotation2/forward/transpose/perm* 
_output_shapes
:
??*
T0
j
 rotation2/forward/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
j
 rotation2/forward/Tensordot/freeConst*
valueB: *
dtype0*
_output_shapes
:
?
!rotation2/forward/Tensordot/ShapeShape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/concat*
_output_shapes
:*
T0
k
)rotation2/forward/Tensordot/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
$rotation2/forward/Tensordot/GatherV2GatherV2!rotation2/forward/Tensordot/Shape rotation2/forward/Tensordot/free)rotation2/forward/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
m
+rotation2/forward/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
&rotation2/forward/Tensordot/GatherV2_1GatherV2!rotation2/forward/Tensordot/Shape rotation2/forward/Tensordot/axes+rotation2/forward/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
k
!rotation2/forward/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
 rotation2/forward/Tensordot/ProdProd$rotation2/forward/Tensordot/GatherV2!rotation2/forward/Tensordot/Const*
_output_shapes
: *
T0
m
#rotation2/forward/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
"rotation2/forward/Tensordot/Prod_1Prod&rotation2/forward/Tensordot/GatherV2_1#rotation2/forward/Tensordot/Const_1*
T0*
_output_shapes
: 
i
'rotation2/forward/Tensordot/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
"rotation2/forward/Tensordot/concatConcatV2 rotation2/forward/Tensordot/free rotation2/forward/Tensordot/axes'rotation2/forward/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
?
!rotation2/forward/Tensordot/stackPack rotation2/forward/Tensordot/Prod"rotation2/forward/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
?
%rotation2/forward/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp3/forward/concat"rotation2/forward/Tensordot/concat*(
_output_shapes
:??????????*
T0
?
#rotation2/forward/Tensordot/ReshapeReshape%rotation2/forward/Tensordot/transpose!rotation2/forward/Tensordot/stack*0
_output_shapes
:??????????????????*
T0
}
,rotation2/forward/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
'rotation2/forward/Tensordot/transpose_1	Transposerotation2/forward/transpose,rotation2/forward/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
??
|
+rotation2/forward/Tensordot/Reshape_1/shapeConst*
valueB"    *
dtype0*
_output_shapes
:
?
%rotation2/forward/Tensordot/Reshape_1Reshape'rotation2/forward/Tensordot/transpose_1+rotation2/forward/Tensordot/Reshape_1/shape*
T0* 
_output_shapes
:
??
?
"rotation2/forward/Tensordot/MatMulMatMul#rotation2/forward/Tensordot/Reshape%rotation2/forward/Tensordot/Reshape_1*(
_output_shapes
:??????????*
T0
n
#rotation2/forward/Tensordot/Const_2Const*
_output_shapes
:*
valueB:?*
dtype0
k
)rotation2/forward/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
$rotation2/forward/Tensordot/concat_1ConcatV2$rotation2/forward/Tensordot/GatherV2#rotation2/forward/Tensordot/Const_2)rotation2/forward/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:
?
rotation2/forward/TensordotReshape"rotation2/forward/Tensordot/MatMul$rotation2/forward/Tensordot/concat_1*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_sliceStridedSlicerotation2/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice/stack_2*

begin_mask*
ellipsis_mask*(
_output_shapes
:??????????*
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stackConst*
_output_shapes
:*
valueB"    ?  *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1StridedSlicerotation2/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*(
_output_shapes
:??????????*
T0*
Index0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/addAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/real_nvp_default_template_2/dense_2/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/add?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/concat/axis*
N*(
_output_shapes
:??????????*
T0
?
*rotation1/forward/transpose/ReadVariableOpReadVariableOprotation1//orthogonal_stiefel/A*
dtype0* 
_output_shapes
:
??
q
 rotation1/forward/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
rotation1/forward/transpose	Transpose*rotation1/forward/transpose/ReadVariableOp rotation1/forward/transpose/perm*
T0* 
_output_shapes
:
??
j
 rotation1/forward/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
j
 rotation1/forward/Tensordot/freeConst*
dtype0*
_output_shapes
:*
valueB: 
?
!rotation1/forward/Tensordot/ShapeShape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/concat*
_output_shapes
:*
T0
k
)rotation1/forward/Tensordot/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
$rotation1/forward/Tensordot/GatherV2GatherV2!rotation1/forward/Tensordot/Shape rotation1/forward/Tensordot/free)rotation1/forward/Tensordot/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
m
+rotation1/forward/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
&rotation1/forward/Tensordot/GatherV2_1GatherV2!rotation1/forward/Tensordot/Shape rotation1/forward/Tensordot/axes+rotation1/forward/Tensordot/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
k
!rotation1/forward/Tensordot/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
 rotation1/forward/Tensordot/ProdProd$rotation1/forward/Tensordot/GatherV2!rotation1/forward/Tensordot/Const*
T0*
_output_shapes
: 
m
#rotation1/forward/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
"rotation1/forward/Tensordot/Prod_1Prod&rotation1/forward/Tensordot/GatherV2_1#rotation1/forward/Tensordot/Const_1*
_output_shapes
: *
T0
i
'rotation1/forward/Tensordot/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
"rotation1/forward/Tensordot/concatConcatV2 rotation1/forward/Tensordot/free rotation1/forward/Tensordot/axes'rotation1/forward/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
?
!rotation1/forward/Tensordot/stackPack rotation1/forward/Tensordot/Prod"rotation1/forward/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
?
%rotation1/forward/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp2/forward/concat"rotation1/forward/Tensordot/concat*
T0*(
_output_shapes
:??????????
?
#rotation1/forward/Tensordot/ReshapeReshape%rotation1/forward/Tensordot/transpose!rotation1/forward/Tensordot/stack*0
_output_shapes
:??????????????????*
T0
}
,rotation1/forward/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
'rotation1/forward/Tensordot/transpose_1	Transposerotation1/forward/transpose,rotation1/forward/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
??
|
+rotation1/forward/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
valueB"    *
dtype0
?
%rotation1/forward/Tensordot/Reshape_1Reshape'rotation1/forward/Tensordot/transpose_1+rotation1/forward/Tensordot/Reshape_1/shape*
T0* 
_output_shapes
:
??
?
"rotation1/forward/Tensordot/MatMulMatMul#rotation1/forward/Tensordot/Reshape%rotation1/forward/Tensordot/Reshape_1*(
_output_shapes
:??????????*
T0
n
#rotation1/forward/Tensordot/Const_2Const*
valueB:?*
dtype0*
_output_shapes
:
k
)rotation1/forward/Tensordot/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
$rotation1/forward/Tensordot/concat_1ConcatV2$rotation1/forward/Tensordot/GatherV2#rotation1/forward/Tensordot/Const_2)rotation1/forward/Tensordot/concat_1/axis*
N*
_output_shapes
:*
T0
?
rotation1/forward/TensordotReshape"rotation1/forward/Tensordot/MatMul$rotation1/forward/Tensordot/concat_1*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"    ?  
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_sliceStridedSlicerotation1/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice/stack_2*

begin_mask*
ellipsis_mask*(
_output_shapes
:??????????*
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stackConst*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1StridedSlicerotation1/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*(
_output_shapes
:??????????*
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel* 
_output_shapes
:
??*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/splitSplit?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/split/split_dim?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/dense_2/BiasAdd*
T0*
	num_split*<
_output_shapes*
(:??????????:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/ExpExp?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/split:1*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/mulMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/Exp*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/addAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/mul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/real_nvp_default_template_1/split*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/add?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/concat/axis*
T0*
N*(
_output_shapes
:??????????
?
*rotation0/forward/transpose/ReadVariableOpReadVariableOprotation0//orthogonal_stiefel/A* 
_output_shapes
:
??*
dtype0
q
 rotation0/forward/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
rotation0/forward/transpose	Transpose*rotation0/forward/transpose/ReadVariableOp rotation0/forward/transpose/perm* 
_output_shapes
:
??*
T0
j
 rotation0/forward/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
j
 rotation0/forward/Tensordot/freeConst*
valueB: *
dtype0*
_output_shapes
:
?
!rotation0/forward/Tensordot/ShapeShape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/concat*
T0*
_output_shapes
:
k
)rotation0/forward/Tensordot/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
$rotation0/forward/Tensordot/GatherV2GatherV2!rotation0/forward/Tensordot/Shape rotation0/forward/Tensordot/free)rotation0/forward/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
m
+rotation0/forward/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
&rotation0/forward/Tensordot/GatherV2_1GatherV2!rotation0/forward/Tensordot/Shape rotation0/forward/Tensordot/axes+rotation0/forward/Tensordot/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
k
!rotation0/forward/Tensordot/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
 rotation0/forward/Tensordot/ProdProd$rotation0/forward/Tensordot/GatherV2!rotation0/forward/Tensordot/Const*
T0*
_output_shapes
: 
m
#rotation0/forward/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
"rotation0/forward/Tensordot/Prod_1Prod&rotation0/forward/Tensordot/GatherV2_1#rotation0/forward/Tensordot/Const_1*
_output_shapes
: *
T0
i
'rotation0/forward/Tensordot/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
"rotation0/forward/Tensordot/concatConcatV2 rotation0/forward/Tensordot/free rotation0/forward/Tensordot/axes'rotation0/forward/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
?
!rotation0/forward/Tensordot/stackPack rotation0/forward/Tensordot/Prod"rotation0/forward/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
?
%rotation0/forward/Tensordot/transpose	Transpose?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp1/forward/concat"rotation0/forward/Tensordot/concat*(
_output_shapes
:??????????*
T0
?
#rotation0/forward/Tensordot/ReshapeReshape%rotation0/forward/Tensordot/transpose!rotation0/forward/Tensordot/stack*0
_output_shapes
:??????????????????*
T0
}
,rotation0/forward/Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
?
'rotation0/forward/Tensordot/transpose_1	Transposerotation0/forward/transpose,rotation0/forward/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
??
|
+rotation0/forward/Tensordot/Reshape_1/shapeConst*
valueB"    *
dtype0*
_output_shapes
:
?
%rotation0/forward/Tensordot/Reshape_1Reshape'rotation0/forward/Tensordot/transpose_1+rotation0/forward/Tensordot/Reshape_1/shape* 
_output_shapes
:
??*
T0
?
"rotation0/forward/Tensordot/MatMulMatMul#rotation0/forward/Tensordot/Reshape%rotation0/forward/Tensordot/Reshape_1*(
_output_shapes
:??????????*
T0
n
#rotation0/forward/Tensordot/Const_2Const*
valueB:?*
dtype0*
_output_shapes
:
k
)rotation0/forward/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
$rotation0/forward/Tensordot/concat_1ConcatV2$rotation0/forward/Tensordot/GatherV2#rotation0/forward/Tensordot/Const_2)rotation0/forward/Tensordot/concat_1/axis*
_output_shapes
:*
T0*
N
?
rotation0/forward/TensordotReshape"rotation0/forward/Tensordot/MatMul$rotation0/forward/Tensordot/concat_1*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stack_1Const*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_sliceStridedSlicerotation0/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice/stack_2*

begin_mask*
ellipsis_mask*(
_output_shapes
:??????????*
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stackConst*
valueB"    ?  *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1StridedSlicerotation0/forward/Tensordot?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1/stack_2*
ellipsis_mask*
end_mask*(
_output_shapes
:??????????*
T0*
Index0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/LeakyRelu	LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/BiasAdd*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_1/LeakyRelu?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/MatMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/ConstConst*
_output_shapes
: *
value	B :*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/split/split_dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/splitSplit?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/split/split_dim?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/dense_2/BiasAdd*
	num_split*<
_output_shapes*
(:??????????:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/ExpExp?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/split:1*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/mulMul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/Exp*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/addAdd?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/mul?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/real_nvp_default_template/split*
T0*(
_output_shapes
:??????????
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/concat/axisConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/add?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/concat/axis*
N*(
_output_shapes
:??????????*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/ShapeShape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/concat*
_output_shapes
:*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_sliceStridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape_2Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1StridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape_2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/subSub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1*
_output_shapes
: *
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stackPack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/sub*
T0*
N*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2StridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_2/stack_2*
T0*
Index0*
end_mask*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/sub_1Sub?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_1*
_output_shapes
: *
T0
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stack_1Pack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/sub_1*
T0*
N*
_output_shapes
:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3StridedSlice?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Shape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stack?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stack_1?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3/stack_2*
_output_shapes
:*
Index0*
T0*

begin_mask
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/concatConcatV2?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/strided_slice_3reshape/event_shape_out?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/concat/axis*
_output_shapes
:*
T0*
N
?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/ReshapeReshape?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/nvp0/forward/concat?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/concat*
T0*/
_output_shapes
:?????????""?1
trainable_variables?1?1
?
!rotation0//orthogonal_stiefel/A:0&rotation0//orthogonal_stiefel/A/Assign5rotation0//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation0//orthogonal_stiefel/A/Initializer/mul_1:08
?
!rotation1//orthogonal_stiefel/A:0&rotation1//orthogonal_stiefel/A/Assign5rotation1//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation1//orthogonal_stiefel/A/Initializer/mul_1:08
?
!rotation2//orthogonal_stiefel/A:0&rotation2//orthogonal_stiefel/A/Assign5rotation2//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation2//orthogonal_stiefel/A/Initializer/mul_1:08
?
#compression//orthogonal_stiefel/A:0(compression//orthogonal_stiefel/A/Assign7compression//orthogonal_stiefel/A/Read/ReadVariableOp:0(25compression//orthogonal_stiefel/A/Initializer/mul_1:08
?
(real_nvp_default_template/dense/kernel:0-real_nvp_default_template/dense/kernel/Assign<real_nvp_default_template/dense/kernel/Read/ReadVariableOp:0(2Creal_nvp_default_template/dense/kernel/Initializer/random_uniform:08
?
&real_nvp_default_template/dense/bias:0+real_nvp_default_template/dense/bias/Assign:real_nvp_default_template/dense/bias/Read/ReadVariableOp:0(28real_nvp_default_template/dense/bias/Initializer/zeros:08
?
*real_nvp_default_template/dense_1/kernel:0/real_nvp_default_template/dense_1/kernel/Assign>real_nvp_default_template/dense_1/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template/dense_1/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template/dense_1/bias:0-real_nvp_default_template/dense_1/bias/Assign<real_nvp_default_template/dense_1/bias/Read/ReadVariableOp:0(2:real_nvp_default_template/dense_1/bias/Initializer/zeros:08
?
*real_nvp_default_template/dense_2/kernel:0/real_nvp_default_template/dense_2/kernel/Assign>real_nvp_default_template/dense_2/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template/dense_2/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template/dense_2/bias:0-real_nvp_default_template/dense_2/bias/Assign<real_nvp_default_template/dense_2/bias/Read/ReadVariableOp:0(2:real_nvp_default_template/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_1/dense/kernel:0/real_nvp_default_template_1/dense/kernel/Assign>real_nvp_default_template_1/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_1/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_1/dense/bias:0-real_nvp_default_template_1/dense/bias/Assign<real_nvp_default_template_1/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_1/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_1/dense_1/kernel:01real_nvp_default_template_1/dense_1/kernel/Assign@real_nvp_default_template_1/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_1/dense_1/bias:0/real_nvp_default_template_1/dense_1/bias/Assign>real_nvp_default_template_1/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_1/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_1/dense_2/kernel:01real_nvp_default_template_1/dense_2/kernel/Assign@real_nvp_default_template_1/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_1/dense_2/bias:0/real_nvp_default_template_1/dense_2/bias/Assign>real_nvp_default_template_1/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_1/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_2/dense/kernel:0/real_nvp_default_template_2/dense/kernel/Assign>real_nvp_default_template_2/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_2/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_2/dense/bias:0-real_nvp_default_template_2/dense/bias/Assign<real_nvp_default_template_2/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_2/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_2/dense_1/kernel:01real_nvp_default_template_2/dense_1/kernel/Assign@real_nvp_default_template_2/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_2/dense_1/bias:0/real_nvp_default_template_2/dense_1/bias/Assign>real_nvp_default_template_2/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_2/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_2/dense_2/kernel:01real_nvp_default_template_2/dense_2/kernel/Assign@real_nvp_default_template_2/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_2/dense_2/bias:0/real_nvp_default_template_2/dense_2/bias/Assign>real_nvp_default_template_2/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_2/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_3/dense/kernel:0/real_nvp_default_template_3/dense/kernel/Assign>real_nvp_default_template_3/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_3/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_3/dense/bias:0-real_nvp_default_template_3/dense/bias/Assign<real_nvp_default_template_3/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_3/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_3/dense_1/kernel:01real_nvp_default_template_3/dense_1/kernel/Assign@real_nvp_default_template_3/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_3/dense_1/bias:0/real_nvp_default_template_3/dense_1/bias/Assign>real_nvp_default_template_3/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_3/dense_2/kernel:01real_nvp_default_template_3/dense_2/kernel/Assign@real_nvp_default_template_3/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_3/dense_2/bias:0/real_nvp_default_template_3/dense_2/bias/Assign>real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_2/bias/Initializer/zeros:08"?1
	variables?1?1
?
!rotation0//orthogonal_stiefel/A:0&rotation0//orthogonal_stiefel/A/Assign5rotation0//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation0//orthogonal_stiefel/A/Initializer/mul_1:08
?
!rotation1//orthogonal_stiefel/A:0&rotation1//orthogonal_stiefel/A/Assign5rotation1//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation1//orthogonal_stiefel/A/Initializer/mul_1:08
?
!rotation2//orthogonal_stiefel/A:0&rotation2//orthogonal_stiefel/A/Assign5rotation2//orthogonal_stiefel/A/Read/ReadVariableOp:0(23rotation2//orthogonal_stiefel/A/Initializer/mul_1:08
?
#compression//orthogonal_stiefel/A:0(compression//orthogonal_stiefel/A/Assign7compression//orthogonal_stiefel/A/Read/ReadVariableOp:0(25compression//orthogonal_stiefel/A/Initializer/mul_1:08
?
(real_nvp_default_template/dense/kernel:0-real_nvp_default_template/dense/kernel/Assign<real_nvp_default_template/dense/kernel/Read/ReadVariableOp:0(2Creal_nvp_default_template/dense/kernel/Initializer/random_uniform:08
?
&real_nvp_default_template/dense/bias:0+real_nvp_default_template/dense/bias/Assign:real_nvp_default_template/dense/bias/Read/ReadVariableOp:0(28real_nvp_default_template/dense/bias/Initializer/zeros:08
?
*real_nvp_default_template/dense_1/kernel:0/real_nvp_default_template/dense_1/kernel/Assign>real_nvp_default_template/dense_1/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template/dense_1/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template/dense_1/bias:0-real_nvp_default_template/dense_1/bias/Assign<real_nvp_default_template/dense_1/bias/Read/ReadVariableOp:0(2:real_nvp_default_template/dense_1/bias/Initializer/zeros:08
?
*real_nvp_default_template/dense_2/kernel:0/real_nvp_default_template/dense_2/kernel/Assign>real_nvp_default_template/dense_2/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template/dense_2/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template/dense_2/bias:0-real_nvp_default_template/dense_2/bias/Assign<real_nvp_default_template/dense_2/bias/Read/ReadVariableOp:0(2:real_nvp_default_template/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_1/dense/kernel:0/real_nvp_default_template_1/dense/kernel/Assign>real_nvp_default_template_1/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_1/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_1/dense/bias:0-real_nvp_default_template_1/dense/bias/Assign<real_nvp_default_template_1/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_1/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_1/dense_1/kernel:01real_nvp_default_template_1/dense_1/kernel/Assign@real_nvp_default_template_1/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_1/dense_1/bias:0/real_nvp_default_template_1/dense_1/bias/Assign>real_nvp_default_template_1/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_1/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_1/dense_2/kernel:01real_nvp_default_template_1/dense_2/kernel/Assign@real_nvp_default_template_1/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_1/dense_2/bias:0/real_nvp_default_template_1/dense_2/bias/Assign>real_nvp_default_template_1/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_1/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_2/dense/kernel:0/real_nvp_default_template_2/dense/kernel/Assign>real_nvp_default_template_2/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_2/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_2/dense/bias:0-real_nvp_default_template_2/dense/bias/Assign<real_nvp_default_template_2/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_2/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_2/dense_1/kernel:01real_nvp_default_template_2/dense_1/kernel/Assign@real_nvp_default_template_2/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_2/dense_1/bias:0/real_nvp_default_template_2/dense_1/bias/Assign>real_nvp_default_template_2/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_2/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_2/dense_2/kernel:01real_nvp_default_template_2/dense_2/kernel/Assign@real_nvp_default_template_2/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_2/dense_2/bias:0/real_nvp_default_template_2/dense_2/bias/Assign>real_nvp_default_template_2/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_2/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_3/dense/kernel:0/real_nvp_default_template_3/dense/kernel/Assign>real_nvp_default_template_3/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_3/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_3/dense/bias:0-real_nvp_default_template_3/dense/bias/Assign<real_nvp_default_template_3/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_3/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_3/dense_1/kernel:01real_nvp_default_template_3/dense_1/kernel/Assign@real_nvp_default_template_3/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_3/dense_1/bias:0/real_nvp_default_template_3/dense_1/bias/Assign>real_nvp_default_template_3/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_3/dense_2/kernel:01real_nvp_default_template_3/dense_2/kernel/Assign@real_nvp_default_template_3/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_3/dense_2/bias:0/real_nvp_default_template_3/dense_2/bias/Assign>real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_2/bias/Initializer/zeros:08*?
default?
/
default$
Placeholder:0?????????
?
default?
?chain_of_reshape_of_nvp0_of_rotation0/_of_nvp1_of_rotation1/_of_nvp2_of_rotation2/_of_nvp3_of_compression/forward/reshape/forward/Reshape:0?????????