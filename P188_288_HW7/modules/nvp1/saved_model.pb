??$
??
,
Abs
x"T
y"T"
Ttype:

2	
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
,
Log
x"T
y"T"
Ttype:

2
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
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
?*1.13.12b'v1.13.1-2-g09e3b09e69'8??#
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:?????????
*
shape:?????????

N
Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 
p
Placeholder_2Placeholder*
dtype0*'
_output_shapes
:?????????
*
shape:?????????

_
zeros/shape_as_tensorConst*
valueB:
*
dtype0*
_output_shapes
:
P
zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
V
zerosFillzeros/shape_as_tensorzeros/Const*
_output_shapes
:
*
T0
y
4prior/init/make_diag_scale/scale_identity_multiplierConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Fprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Bprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims
ExpandDims4prior/init/make_diag_scale/scale_identity_multiplierFprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims/dim*
T0*
_output_shapes
:
?
Hprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Dprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims_1
ExpandDimsBprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDimsHprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims_1/dim*
_output_shapes

:*
T0
?
;prior/init/make_diag_scale/LinearOperatorScaledIdentity/AbsAbs4prior/init/make_diag_scale/scale_identity_multiplier*
T0*
_output_shapes
: 
?
@prior/init/make_diag_scale/LinearOperatorScaledIdentity/num_rowsConst*
dtype0*
_output_shapes
: *
value	B :

?
<prior/init/make_diag_scale/LinearOperatorScaledIdentity/CastCast@prior/init/make_diag_scale/LinearOperatorScaledIdentity/num_rows*

SrcT0*

DstT0*
_output_shapes
: 
?
>prior/init/make_diag_scale/LinearOperatorScaledIdentity/Cast_1Cast@prior/init/make_diag_scale/LinearOperatorScaledIdentity/num_rows*

DstT0*
_output_shapes
: *

SrcT0
?
Yprior/shapes_from_loc_and_scale/LinearOperatorScaledIdentity/range_dimension_tensor/ConstConst*
value	B :
*
dtype0*
_output_shapes
: 
?
]prior/shapes_from_loc_and_scale/LinearOperatorScaledIdentity_1/batch_shape_tensor/batch_shapeConst*
dtype0*
_output_shapes
: *
valueB 
r
/prior/shapes_from_loc_and_scale/loc_batch_shapeConst*
valueB *
dtype0*
_output_shapes
: 
L
zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
I
onesConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
E
Normal/IdentityIdentityzeros_1*
_output_shapes
: *
T0
D
Normal/Identity_1Identityones*
T0*
_output_shapes
: 
L

prior/zeroConst*
_output_shapes
: *
value	B : *
dtype0
N
prior/emptyConst*
valueB *
dtype0*
_output_shapes
: 
h
&Normal/is_scalar_batch/is_scalar_batchConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
T
prior/batch_shapeConst*
valueB *
dtype0*
_output_shapes
: 
M
prior/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
O
prior/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
O
prior/Const_2Const*
_output_shapes
: *
value	B
 Z*
dtype0

O
prior/Const_3Const*
value	B : *
dtype0*
_output_shapes
: 
O
prior/Const_4Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
O
prior/Const_5Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
h
&Normal/is_scalar_event/is_scalar_eventConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
[
prior/event_shapeConst*
valueB:
*
dtype0*
_output_shapes
:
O
prior/Const_6Const*
_output_shapes
: *
value	B :*
dtype0
O
prior/Const_7Const*
value	B : *
dtype0*
_output_shapes
: 
O
prior/Const_8Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
O
prior/Const_9Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
prior/Const_10Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
P
prior/Const_11Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
prior/Const_12Const*
dtype0*
_output_shapes
: *
value	B :
P
prior/Const_13Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
prior/Const_14Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
P
prior/Const_15Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
j
(Normal/is_scalar_batch_1/is_scalar_batchConst*
_output_shapes
: *
value	B
 Z*
dtype0

P
prior/Const_16Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
prior/Const_17Const*
_output_shapes
: *
value	B
 Z *
dtype0

P
prior/Const_18Const*
value	B :*
dtype0*
_output_shapes
: 
M
prior/sub/xConst*
value	B : *
dtype0*
_output_shapes
: 
N
	prior/subSubprior/sub/xprior/Const_18*
T0*
_output_shapes
: 
S
prior/range/limitConst*
dtype0*
_output_shapes
: *
value	B : 
S
prior/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
a
prior/rangeRange	prior/subprior/range/limitprior/range/delta*
_output_shapes
:
U

perm0/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm0/permutationConst*
_output_shapes
:
*e
value\BZ	
"P                            	                                           *
dtype0	
U

perm1/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm1/permutationConst*e
value\BZ	
"P                            	                                           *
dtype0	*
_output_shapes
:

U

perm2/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm2/permutationConst*e
value\BZ	
"P                            	                                           *
dtype0	*
_output_shapes
:

U

perm3/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm3/permutationConst*
dtype0	*
_output_shapes
:
*e
value\BZ	
"P                            	                                           
U

perm4/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm4/permutationConst*e
value\BZ	
"P                            	                                           *
dtype0	*
_output_shapes
:

U

perm5/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
perm5/permutationConst*e
value\BZ	
"P                            	                                           *
dtype0	*
_output_shapes
:

L

mynvp/zeroConst*
value	B : *
dtype0*
_output_shapes
: 
N
mynvp/emptyConst*
_output_shapes
: *
valueB *
dtype0
g
%prior/is_scalar_batch/is_scalar_batchConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
T
mynvp/batch_shapeConst*
valueB *
dtype0*
_output_shapes
: 
M
mynvp/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
O
mynvp/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
O
mynvp/Const_2Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
O
mynvp/Const_3Const*
dtype0*
_output_shapes
: *
value	B : 
O
mynvp/Const_4Const*
dtype0
*
_output_shapes
: *
value	B
 Z
O
mynvp/Const_5Const*
dtype0
*
_output_shapes
: *
value	B
 Z 
g
%prior/is_scalar_event/is_scalar_eventConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
T
mynvp/event_shapeConst*
valueB *
dtype0*
_output_shapes
: 
O
mynvp/Const_6Const*
value	B : *
dtype0*
_output_shapes
: 
O
mynvp/Const_7Const*
value	B : *
dtype0*
_output_shapes
: 
O
mynvp/Const_8Const*
dtype0
*
_output_shapes
: *
value	B
 Z
O
mynvp/Const_9Const*
value	B : *
dtype0*
_output_shapes
: 
P
mynvp/Const_10Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
P
mynvp/Const_11Const*
dtype0
*
_output_shapes
: *
value	B
 Z 
P
mynvp/Const_12Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
i
'prior/is_scalar_batch_1/is_scalar_batchConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
P
mynvp/Const_13Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
mynvp/Const_14Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
P
mynvp/Const_15Const*
value	B : *
dtype0*
_output_shapes
: 
M
mynvp/sub/xConst*
value	B : *
dtype0*
_output_shapes
: 
N
	mynvp/subSubmynvp/sub/xmynvp/Const_15*
T0*
_output_shapes
: 
S
mynvp/range/limitConst*
value	B : *
dtype0*
_output_shapes
: 
S
mynvp/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
_
mynvp/rangeRange	mynvp/submynvp/range/limitmynvp/range/delta*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_sliceStridedSlicePlaceholder?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice/stack_2*'
_output_shapes
:?????????*
Index0*
T0*

begin_mask*
ellipsis_mask
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1StridedSlicePlaceholder?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1/stack_2*
end_mask*'
_output_shapes
:?????????*
ellipsis_mask*
T0*
Index0
?
Greal_nvp_default_template/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB"      
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/minConst*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB
 *??ܽ*
dtype0*
_output_shapes
: 
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/maxConst*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Oreal_nvp_default_template/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformGreal_nvp_default_template/dense/kernel/Initializer/random_uniform/shape*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
dtype0*
_output_shapes
:	?
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/subSubEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/maxEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel
?
Ereal_nvp_default_template/dense/kernel/Initializer/random_uniform/mulMulOreal_nvp_default_template/dense/kernel/Initializer/random_uniform/RandomUniformEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel
?
Areal_nvp_default_template/dense/kernel/Initializer/random_uniformAddEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/mulEreal_nvp_default_template/dense/kernel/Initializer/random_uniform/min*
T0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
_output_shapes
:	?
?
&real_nvp_default_template/dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:	?*7
shared_name(&real_nvp_default_template/dense/kernel*9
_class/
-+loc:@real_nvp_default_template/dense/kernel
?
Greal_nvp_default_template/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template/dense/kernel*
_output_shapes
: 
?
-real_nvp_default_template/dense/kernel/AssignAssignVariableOp&real_nvp_default_template/dense/kernelAreal_nvp_default_template/dense/kernel/Initializer/random_uniform*
dtype0*9
_class/
-+loc:@real_nvp_default_template/dense/kernel
?
:real_nvp_default_template/dense/kernel/Read/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
_output_shapes
:	?*9
_class/
-+loc:@real_nvp_default_template/dense/kernel*
dtype0
?
6real_nvp_default_template/dense/bias/Initializer/zerosConst*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
$real_nvp_default_template/dense/biasVarHandleOp*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
dtype0*
_output_shapes
: *
shape:?*5
shared_name&$real_nvp_default_template/dense/bias
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
8real_nvp_default_template/dense/bias/Read/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*7
_class-
+)loc:@real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
Ireal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB
 *qĜ?*
dtype0
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
valueB
 *qĜ=*
dtype0
?
Qreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/maxGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel
?
Greal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel* 
_output_shapes
:
??
?
Creal_nvp_default_template/dense_1/kernel/Initializer/random_uniformAddGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/mulGreal_nvp_default_template/dense_1/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel* 
_output_shapes
:
??
?
(real_nvp_default_template/dense_1/kernelVarHandleOp*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
dtype0*
_output_shapes
: *
shape:
??*9
shared_name*(real_nvp_default_template/dense_1/kernel
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
<real_nvp_default_template/dense_1/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel* 
_output_shapes
:
??*;
_class1
/-loc:@real_nvp_default_template/dense_1/kernel*
dtype0
?
8real_nvp_default_template/dense_1/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template/dense_1/biasVarHandleOp*9
_class/
-+loc:@real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes
: *
shape:?*7
shared_name(&real_nvp_default_template/dense_1/bias
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
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
Ireal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB"   
   *
dtype0
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB
 *??۽*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
valueB
 *???=*
dtype0
?
Qreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
:	?

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
_output_shapes
:	?

?
Creal_nvp_default_template/dense_2/kernel/Initializer/random_uniformAddGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/mulGreal_nvp_default_template/dense_2/kernel/Initializer/random_uniform/min*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
_output_shapes
:	?
*
T0
?
(real_nvp_default_template/dense_2/kernelVarHandleOp*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
: *
shape:	?
*9
shared_name*(real_nvp_default_template/dense_2/kernel
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
<real_nvp_default_template/dense_2/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
_output_shapes
:	?
*;
_class1
/-loc:@real_nvp_default_template/dense_2/kernel*
dtype0
?
8real_nvp_default_template/dense_2/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
&real_nvp_default_template/dense_2/biasVarHandleOp*7
shared_name(&real_nvp_default_template/dense_2/bias*9
_class/
-+loc:@real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes
: *
shape:

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
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/ConstConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/split*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/Neg*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/concat/axis*
N*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/InvertPermutationInvertPermutationperm0/permutation*
_output_shapes
:
*
T0	
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/InvertPermutation
perm0/axis*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice/stack_2*
ellipsis_mask*

begin_mask*
Index0*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1/stack_2*
ellipsis_mask*
T0*
Index0*
end_mask*'
_output_shapes
:?????????
?
Ireal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB
 *??ܽ*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
dtype0*
_output_shapes
:	?
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel
?
Greal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
_output_shapes
:	?
?
Creal_nvp_default_template_1/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_1/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
_output_shapes
:	?
?
(real_nvp_default_template_1/dense/kernelVarHandleOp*
_output_shapes
: *
shape:	?*9
shared_name*(real_nvp_default_template_1/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
dtype0
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
<real_nvp_default_template_1/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
_output_shapes
:	?*;
_class1
/-loc:@real_nvp_default_template_1/dense/kernel*
dtype0
?
8real_nvp_default_template_1/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_1/dense/biasVarHandleOp*7
shared_name(&real_nvp_default_template_1/dense/bias*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes
: *
shape:?
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
:real_nvp_default_template_1/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
_output_shapes	
:?*9
_class/
-+loc:@real_nvp_default_template_1/dense/bias*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
valueB"      
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
Ireal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel* 
_output_shapes
:
??
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
1/loc:@real_nvp_default_template_1/dense_1/kernel*
dtype0*
_output_shapes
: *
shape:
??*;
shared_name,*real_nvp_default_template_1/dense_1/kernel
?
Kreal_nvp_default_template_1/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_1/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_1/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_1/dense_1/kernelEreal_nvp_default_template_1/dense_1/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_1/dense_1/kernel*
dtype0
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
(real_nvp_default_template_1/dense_1/biasVarHandleOp*9
shared_name*(real_nvp_default_template_1/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes
: *
shape:?
?
Ireal_nvp_default_template_1/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_1/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_1/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_1/dense_1/bias:real_nvp_default_template_1/dense_1/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
dtype0
?
<real_nvp_default_template_1/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB"   
   
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB
 *??۽*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel
?
Ireal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/sub*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
_output_shapes
:	?
*
T0
?
Ereal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_1/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel*
_output_shapes
:	?

?
*real_nvp_default_template_1/dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:	?
*;
shared_name,*real_nvp_default_template_1/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_1/dense_2/kernel
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
_output_shapes
:	?

?
:real_nvp_default_template_1/dense_2/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
(real_nvp_default_template_1/dense_2/biasVarHandleOp*
shape:
*9
shared_name*(real_nvp_default_template_1/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes
: 
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
<real_nvp_default_template_1/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes
:
*;
_class1
/-loc:@real_nvp_default_template_1/dense_2/bias
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/split*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/real_nvp_default_template/split:1*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/Neg*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/concat/axisConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/InvertPermutationInvertPermutationperm1/permutation*
T0	*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/InvertPermutation
perm1/axis*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	*
Tparams0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice/stack_2*
ellipsis_mask*

begin_mask*
T0*
Index0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1/stack_2*
end_mask*'
_output_shapes
:?????????*
ellipsis_mask*
Index0*
T0
?
Ireal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB"      *
dtype0
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB
 *??ܽ*
dtype0
?
Greal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
T0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel
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
_output_shapes
:	?
?
Creal_nvp_default_template_2/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
_output_shapes
:	?
?
(real_nvp_default_template_2/dense/kernelVarHandleOp*9
shared_name*(real_nvp_default_template_2/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
dtype0*
_output_shapes
: *
shape:	?
?
Ireal_nvp_default_template_2/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_2/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_2/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_2/dense/kernelCreal_nvp_default_template_2/dense/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel*
dtype0
?
<real_nvp_default_template_2/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0*
_output_shapes
:	?*;
_class1
/-loc:@real_nvp_default_template_2/dense/kernel
?
8real_nvp_default_template_2/dense/bias/Initializer/zerosConst*
_output_shapes	
:?*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
valueB?*    *
dtype0
?
&real_nvp_default_template_2/dense/biasVarHandleOp*
_output_shapes
: *
shape:?*7
shared_name(&real_nvp_default_template_2/dense/bias*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias*
dtype0
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
:real_nvp_default_template_2/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?*9
_class/
-+loc:@real_nvp_default_template_2/dense/bias
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/BiasAdd*(
_output_shapes
:??????????*
T0
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
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel
?
Ereal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_2/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_2/dense_1/kernelVarHandleOp*;
shared_name,*real_nvp_default_template_2/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_2/dense_1/kernel*
dtype0*
_output_shapes
: *
shape:
??
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
(real_nvp_default_template_2/dense_1/biasVarHandleOp*9
shared_name*(real_nvp_default_template_2/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes
: *
shape:?
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
<real_nvp_default_template_2/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
Kreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB
 *??۽*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
dtype0*
_output_shapes
:	?

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
_output_shapes
:	?

?
Ereal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_2/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
_output_shapes
:	?

?
*real_nvp_default_template_2/dense_2/kernelVarHandleOp*
_output_shapes
: *
shape:	?
*;
shared_name,*real_nvp_default_template_2/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_2/dense_2/kernel*
dtype0
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
_output_shapes
:	?

?
:real_nvp_default_template_2/dense_2/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
(real_nvp_default_template_2/dense_2/biasVarHandleOp*
shape:
*9
shared_name*(real_nvp_default_template_2/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
_output_shapes
:
*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/ConstConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/split*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/Neg*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/concat/axis*
N*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/InvertPermutationInvertPermutationperm2/permutation*
T0	*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/InvertPermutation
perm2/axis*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	*
Tparams0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice/stack_2*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask*
Index0*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stackConst*
_output_shapes
:*
valueB"       *
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1/stack_2*'
_output_shapes
:?????????*
ellipsis_mask*
T0*
Index0*
end_mask
?
Ireal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB
 *??ܽ*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
valueB
 *???=*
dtype0
?
Qreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/shape*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
dtype0*
_output_shapes
:	?*
T0
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
_output_shapes
:	?
?
Creal_nvp_default_template_3/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_3/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	?*
T0*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel
?
(real_nvp_default_template_3/dense/kernelVarHandleOp*;
_class1
/-loc:@real_nvp_default_template_3/dense/kernel*
dtype0*
_output_shapes
: *
shape:	?*9
shared_name*(real_nvp_default_template_3/dense/kernel
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
_output_shapes
:	?
?
8real_nvp_default_template_3/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_3/dense/biasVarHandleOp*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes
: *
shape:?*7
shared_name(&real_nvp_default_template_3/dense/bias
?
Greal_nvp_default_template_3/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_3/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_3/dense/bias/AssignAssignVariableOp&real_nvp_default_template_3/dense/bias8real_nvp_default_template_3/dense/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
dtype0
?
:real_nvp_default_template_3/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*9
_class/
-+loc:@real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
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
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/shape*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??*
T0
?
Ireal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel
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
*real_nvp_default_template_3/dense_1/kernelVarHandleOp*
shape:
??*;
shared_name,*real_nvp_default_template_3/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel*
dtype0*
_output_shapes
: 
?
Kreal_nvp_default_template_3/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_3/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_3/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_3/dense_1/kernelEreal_nvp_default_template_3/dense_1/kernel/Initializer/random_uniform*
dtype0*=
_class3
1/loc:@real_nvp_default_template_3/dense_1/kernel
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
(real_nvp_default_template_3/dense_1/biasVarHandleOp*
shape:?*9
shared_name*(real_nvp_default_template_3/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes
: 
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
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB"   
   
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB
 *??۽
?
Ireal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
valueB
 *???=
?
Sreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/shape*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
dtype0*
_output_shapes
:	?
*
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
_output_shapes
:	?

?
Ereal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_3/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
_output_shapes
:	?

?
*real_nvp_default_template_3/dense_2/kernelVarHandleOp*
shape:	?
*;
shared_name,*real_nvp_default_template_3/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_3/dense_2/kernel*
dtype0*
_output_shapes
: 
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
_output_shapes
:	?

?
:real_nvp_default_template_3/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:
*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
valueB
*    
?
(real_nvp_default_template_3/dense_2/biasVarHandleOp*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
: *
shape:
*9
shared_name*(real_nvp_default_template_3/dense_2/bias
?
Ireal_nvp_default_template_3/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_3/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_3/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_3/dense_2/bias:real_nvp_default_template_3/dense_2/bias/Initializer/zeros*
dtype0*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias
?
<real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
_output_shapes
:	?
*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/split*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/Neg*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/concat/axis*'
_output_shapes
:?????????
*
T0*
N
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/InvertPermutationInvertPermutationperm3/permutation*
T0	*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/InvertPermutation
perm3/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1/stack_2*
ellipsis_mask*
T0*
Index0*
end_mask*'
_output_shapes
:?????????
?
Ireal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
valueB"      
?
Greal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
valueB
 *??ܽ*
dtype0*
_output_shapes
: 
?
Greal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
valueB
 *???=*
dtype0
?
Qreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
Greal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/min*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
_output_shapes
: *
T0
?
Greal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
_output_shapes
:	?
?
Creal_nvp_default_template_4/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
_output_shapes
:	?
?
(real_nvp_default_template_4/dense/kernelVarHandleOp*9
shared_name*(real_nvp_default_template_4/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
: *
shape:	?
?
Ireal_nvp_default_template_4/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_4/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_4/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_4/dense/kernelCreal_nvp_default_template_4/dense/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
dtype0
?
<real_nvp_default_template_4/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
8real_nvp_default_template_4/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_4/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_4/dense/biasVarHandleOp*7
shared_name(&real_nvp_default_template_4/dense/bias*9
_class/
-+loc:@real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes
: *
shape:?
?
Greal_nvp_default_template_4/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_4/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_4/dense/bias/AssignAssignVariableOp&real_nvp_default_template_4/dense/bias8real_nvp_default_template_4/dense/bias/Initializer/zeros*9
_class/
-+loc:@real_nvp_default_template_4/dense/bias*
dtype0
?
:real_nvp_default_template_4/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_4/dense/bias*9
_class/
-+loc:@real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
valueB
 *qĜ?*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/shape*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??*
T0
?
Ireal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel
?
Ereal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_4/dense_1/kernelVarHandleOp*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
dtype0*
_output_shapes
: *
shape:
??*;
shared_name,*real_nvp_default_template_4/dense_1/kernel
?
Kreal_nvp_default_template_4/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_4/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_4/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_4/dense_1/kernelEreal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel*
dtype0
?
>real_nvp_default_template_4/dense_1/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??*=
_class3
1/loc:@real_nvp_default_template_4/dense_1/kernel
?
:real_nvp_default_template_4/dense_1/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_4/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
(real_nvp_default_template_4/dense_1/biasVarHandleOp*9
shared_name*(real_nvp_default_template_4/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes
: *
shape:?
?
Ireal_nvp_default_template_4/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_4/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_4/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_4/dense_1/bias:real_nvp_default_template_4/dense_1/bias/Initializer/zeros*
dtype0*;
_class1
/-loc:@real_nvp_default_template_4/dense_1/bias
?
<real_nvp_default_template_4/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
Kreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
valueB
 *??۽
?
Ireal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
Ireal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/sub*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
_output_shapes
:	?
*
T0
?
Ereal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	?
*
T0*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel
?
*real_nvp_default_template_4/dense_2/kernelVarHandleOp*
shape:	?
*;
shared_name,*real_nvp_default_template_4/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
: 
?
Kreal_nvp_default_template_4/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_4/dense_2/kernel*
_output_shapes
: 
?
1real_nvp_default_template_4/dense_2/kernel/AssignAssignVariableOp*real_nvp_default_template_4/dense_2/kernelEreal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
dtype0
?
>real_nvp_default_template_4/dense_2/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
:real_nvp_default_template_4/dense_2/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_4/dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
(real_nvp_default_template_4/dense_2/biasVarHandleOp*9
shared_name*(real_nvp_default_template_4/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
: *
shape:

?
Ireal_nvp_default_template_4/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_4/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_4/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_4/dense_2/bias:real_nvp_default_template_4/dense_2/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_4/dense_2/bias*
dtype0
?
<real_nvp_default_template_4/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/split*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/Neg*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/concat/axis*
N*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/InvertPermutationInvertPermutationperm4/permutation*
T0	*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/InvertPermutation
perm4/axis*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	*
Tparams0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice/stack_2*

begin_mask*
ellipsis_mask*
Index0*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1/stack_2*
Index0*
T0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
Ireal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Greal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
valueB
 *??ܽ*
dtype0
?
Greal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Qreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformIreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
Greal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/subSubGreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/maxGreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/min*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
_output_shapes
: *
T0
?
Greal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/mulMulQreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/RandomUniformGreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel
?
Creal_nvp_default_template_5/dense/kernel/Initializer/random_uniformAddGreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/mulGreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
_output_shapes
:	?
?
(real_nvp_default_template_5/dense/kernelVarHandleOp*
shape:	?*9
shared_name*(real_nvp_default_template_5/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_5/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_5/dense/kernel*
_output_shapes
: 
?
/real_nvp_default_template_5/dense/kernel/AssignAssignVariableOp(real_nvp_default_template_5/dense/kernelCreal_nvp_default_template_5/dense/kernel/Initializer/random_uniform*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
dtype0
?
<real_nvp_default_template_5/dense/kernel/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense/kernel*;
_class1
/-loc:@real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
8real_nvp_default_template_5/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@real_nvp_default_template_5/dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&real_nvp_default_template_5/dense/biasVarHandleOp*
_output_shapes
: *
shape:?*7
shared_name(&real_nvp_default_template_5/dense/bias*9
_class/
-+loc:@real_nvp_default_template_5/dense/bias*
dtype0
?
Greal_nvp_default_template_5/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&real_nvp_default_template_5/dense/bias*
_output_shapes
: 
?
-real_nvp_default_template_5/dense/bias/AssignAssignVariableOp&real_nvp_default_template_5/dense/bias8real_nvp_default_template_5/dense/bias/Initializer/zeros*
dtype0*9
_class/
-+loc:@real_nvp_default_template_5/dense/bias
?
:real_nvp_default_template_5/dense/bias/Read/ReadVariableOpReadVariableOp&real_nvp_default_template_5/dense/bias*9
_class/
-+loc:@real_nvp_default_template_5/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_5/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
valueB
 *qĜ?*
dtype0
?
Ireal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
valueB
 *qĜ=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
Ireal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
_output_shapes
: 
?
Ireal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel* 
_output_shapes
:
??
?
Ereal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniformAddIreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel* 
_output_shapes
:
??
?
*real_nvp_default_template_5/dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:
??*;
shared_name,*real_nvp_default_template_5/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel
?
Kreal_nvp_default_template_5/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_5/dense_1/kernel*
_output_shapes
: 
?
1real_nvp_default_template_5/dense_1/kernel/AssignAssignVariableOp*real_nvp_default_template_5/dense_1/kernelEreal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
dtype0
?
>real_nvp_default_template_5/dense_1/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_1/kernel*=
_class3
1/loc:@real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
:real_nvp_default_template_5/dense_1/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_5/dense_1/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
(real_nvp_default_template_5/dense_1/biasVarHandleOp*
shape:?*9
shared_name*(real_nvp_default_template_5/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_5/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_5/dense_1/bias*
_output_shapes
: 
?
/real_nvp_default_template_5/dense_1/bias/AssignAssignVariableOp(real_nvp_default_template_5/dense_1/bias:real_nvp_default_template_5/dense_1/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_5/dense_1/bias*
dtype0
?
<real_nvp_default_template_5/dense_1/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_1/bias*;
_class1
/-loc:@real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
Kreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
?
Ireal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
valueB
 *??۽*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Sreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformKreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/shape*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?
*
T0
?
Ireal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/subSubIreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/maxIreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel
?
Ireal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/mulMulSreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/RandomUniformIreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?
*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel
?
Ereal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniformAddIreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/mulIreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
_output_shapes
:	?

?
*real_nvp_default_template_5/dense_2/kernelVarHandleOp*;
shared_name,*real_nvp_default_template_5/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
: *
shape:	?

?
Kreal_nvp_default_template_5/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*real_nvp_default_template_5/dense_2/kernel*
_output_shapes
: 
?
1real_nvp_default_template_5/dense_2/kernel/AssignAssignVariableOp*real_nvp_default_template_5/dense_2/kernelEreal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
dtype0
?
>real_nvp_default_template_5/dense_2/kernel/Read/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_2/kernel*=
_class3
1/loc:@real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
:real_nvp_default_template_5/dense_2/bias/Initializer/zerosConst*;
_class1
/-loc:@real_nvp_default_template_5/dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
(real_nvp_default_template_5/dense_2/biasVarHandleOp*
shape:
*9
shared_name*(real_nvp_default_template_5/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
: 
?
Ireal_nvp_default_template_5/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(real_nvp_default_template_5/dense_2/bias*
_output_shapes
: 
?
/real_nvp_default_template_5/dense_2/bias/AssignAssignVariableOp(real_nvp_default_template_5/dense_2/bias:real_nvp_default_template_5/dense_2/bias/Initializer/zeros*;
_class1
/-loc:@real_nvp_default_template_5/dense_2/bias*
dtype0
?
<real_nvp_default_template_5/dense_2/bias/Read/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_2/bias*;
_class1
/-loc:@real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/split*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/ExpExp?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/Neg*
T0*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/concatConcatV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm5/inverse/InvertPermutationInvertPermutationperm5/permutation*
T0	*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm5/inverse/GatherV2GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/concat?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm5/inverse/InvertPermutation
perm5/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/ShapeShapePlaceholder*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/RankConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Rank?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice/stack_2*
T0*
Index0*
end_mask*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/event_ndimsConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_sliceStridedSlicePlaceholder?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice/stack_2*
T0*
Index0*
ellipsis_mask*

begin_mask*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/ConstConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/real_nvp_default_template/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/ShapeShapePlaceholder*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub_1/yConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub_1/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Neg*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum_1/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/addAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Cast/x?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp/inverse_log_det_jacobian/Sum_1*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/SizeConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp/inverse/concat*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub*
N*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/sub_1*
_output_shapes
:*
T0*
N
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Sum/reduction_indices*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_1Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm0/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_1Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/event_ndimsConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice/stack_2*'
_output_shapes
:?????????*
Index0*
T0*
ellipsis_mask*

begin_mask
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/real_nvp_default_template_1/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm0/inverse/GatherV2*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub*
N*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Neg*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
_output_shapes
: *
valueB *
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum_1/reduction_indices*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_2Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_3/inverse_log_det_jacobian/Sum_1*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_2Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/event_ndimsConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_1/inverse/concat*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Sum/reduction_indices*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_3Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm1/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_3Const*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/event_ndimsConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice/stack_2*
T0*
Index0*
ellipsis_mask*

begin_mask*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
_output_shapes	
:?*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/split/split_dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/real_nvp_default_template_2/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm1/inverse/GatherV2*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Neg*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum_1/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_4Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_3?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_6/inverse_log_det_jacobian/Sum_1*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_4Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_2/inverse/concat*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub*
_output_shapes
:*
T0*
N
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Sum/reduction_indices*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_5Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_4?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm2/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_5Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice/stack_2*'
_output_shapes
:?????????*
T0*
Index0*

begin_mask*
ellipsis_mask
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
_output_shapes
:	?*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/real_nvp_default_template_3/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum/reduction_indices*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm2/inverse/GatherV2*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Neg*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum_1/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_6Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_5?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_9/inverse_log_det_jacobian/Sum_1*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_6Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/event_ndimsConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_3/inverse/concat*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Sum/reduction_indices*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_7Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_6?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm3/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_7Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/BiasAdd*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/real_nvp_default_template_4/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum/reduction_indices*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm3/inverse/GatherV2*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub_1/yConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Neg*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum_1/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_8Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_7?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_12/inverse_log_det_jacobian/Sum_1*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_8Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_4/inverse/concat*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/sub_1*
N*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Sum/reduction_indices*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_9Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_8?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm4/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_9Const*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/GatherV2?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_5/dense/bias*
_output_shapes	
:?*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/ReluRelu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/MatMulMatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_1/Relu?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/BiasAddBiasAdd?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/MatMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/split/split_dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/splitSplit?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/split/split_dim?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/real_nvp_default_template_5/split:1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum/reduction_indices*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/NegNeg?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm4/inverse/GatherV2*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub_1/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub*
N*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/ones/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Neg*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum_1Sum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum_1/reduction_indices*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_10Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_9?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/real_nvp_15/inverse_log_det_jacobian/Sum_1*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_10Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/event_ndimsConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/ShapeShape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/real_nvp_5/inverse/concat*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/SizeConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Size?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub_1/y*
_output_shapes
: *
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/sub_1*
N*
_output_shapes
:*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?	
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_sliceStridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Shape?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/strided_slice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Sum/reduction_indices*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_11Add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_10?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/perm5/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_11Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Shape_1ShapePlaceholder*
T0*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_12Const*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_1Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_12?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_2Sub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Size_12?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_2/y*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stackPack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_1*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stack_1Pack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/sub_2*
T0*
N*
_output_shapes
:
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1StridedSlice?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Shape_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stack?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stack_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
T0
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/onesFill?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/strided_slice_1?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/ones/Const*
T0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/mulMul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/ones?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/add_11*
T0*#
_output_shapes
:?????????
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/SumSum?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/mul?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Sum/reduction_indices*
T0*#
_output_shapes
:?????????
?
1prior/log_prob/affine_linear_operator/inverse/subSub?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/inverse/perm5/inverse/GatherV2zeros*
T0*'
_output_shapes
:?????????

?
_prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/ExpandDims
ExpandDims1prior/log_prob/affine_linear_operator/inverse/sub_prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/ExpandDims/dim*
T0*+
_output_shapes
:?????????

?
{prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/LinearOperatorScaledIdentity/solve/truedivRealDiv[prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/ExpandDimsDprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims_1*
T0*+
_output_shapes
:?????????

?
Xprior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/SqueezeSqueeze{prior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/LinearOperatorScaledIdentity/solve/truediv*
squeeze_dims

?????????*
T0*'
_output_shapes
:?????????

?
Lprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/event_ndimsConst*
value	B :*
dtype0*
_output_shapes
: 
?
mprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/LinearOperatorScaledIdentity/log_abs_det/LogLog;prior/init/make_diag_scale/LinearOperatorScaledIdentity/Abs*
_output_shapes
: *
T0
?
mprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/LinearOperatorScaledIdentity/log_abs_det/mulMul>prior/init/make_diag_scale/LinearOperatorScaledIdentity/Cast_1mprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/LinearOperatorScaledIdentity/log_abs_det/Log*
_output_shapes
: *
T0
?
Dprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/NegNegmprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/LinearOperatorScaledIdentity/log_abs_det/mul*
_output_shapes
: *
T0
?
Fprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/ShapeShapeXprior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/Squeeze*
T0*
_output_shapes
:
?
Eprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/SizeConst*
dtype0*
_output_shapes
: *
value	B :
?
Fprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
Dprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/subSubEprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/SizeFprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub/y*
T0*
_output_shapes
: 
?
Hprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
Fprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub_1SubEprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/SizeHprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub_1/y*
T0*
_output_shapes
: 
?
Tprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stackPackDprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub*
N*
_output_shapes
:*
T0
?
Vprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stack_1PackFprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/sub_1*
N*
_output_shapes
:*
T0
?
Vprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Nprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_sliceStridedSliceFprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/ShapeTprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stackVprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stack_1Vprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0
?
Kprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Eprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/onesFillNprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/strided_sliceKprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/ones/Const*
_output_shapes
: *
T0
?
Dprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/mulMulEprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/onesDprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/Neg*
_output_shapes
: *
T0
?
Vprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/Sum/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
?
Dprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/SumSumDprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/mulVprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/Sum/reduction_indices*
T0*
_output_shapes
: 
?
Normal/log_prob/standardize/subSubXprior/log_prob/affine_linear_operator/inverse/LinearOperatorScaledIdentity/solve/SqueezeNormal/Identity*
T0*'
_output_shapes
:?????????

?
#Normal/log_prob/standardize/truedivRealDivNormal/log_prob/standardize/subNormal/Identity_1*
T0*'
_output_shapes
:?????????

w
Normal/log_prob/SquareSquare#Normal/log_prob/standardize/truediv*
T0*'
_output_shapes
:?????????

Z
Normal/log_prob/mul/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
{
Normal/log_prob/mulMulNormal/log_prob/mul/xNormal/log_prob/Square*
T0*'
_output_shapes
:?????????

N
Normal/log_prob/LogLogNormal/Identity_1*
T0*
_output_shapes
: 
Z
Normal/log_prob/add/xConst*
valueB
 *??k?*
dtype0*
_output_shapes
: 
g
Normal/log_prob/addAddNormal/log_prob/add/xNormal/log_prob/Log*
T0*
_output_shapes
: 
v
Normal/log_prob/subSubNormal/log_prob/mulNormal/log_prob/add*'
_output_shapes
:?????????
*
T0
i
prior/log_prob/SumSumNormal/log_prob/subprior/range*
T0*#
_output_shapes
:?????????
?
prior/log_prob/addAddprior/log_prob/SumDprior/log_prob/affine_linear_operator_1/inverse_log_det_jacobian/Sum*
T0*#
_output_shapes
:?????????
?
mynvp/log_prob/addAddprior/log_prob/add?mynvp/log_prob/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5_1/inverse_log_det_jacobian/Sum*#
_output_shapes
:?????????*
T0
U
mynvp/sample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
]
mynvp/sample/ProdProdPlaceholder_1mynvp/sample/Const*
T0*
_output_shapes
: 
u
+mynvp/sample/expand_to_vector/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
?
%mynvp/sample/expand_to_vector/ReshapeReshapePlaceholder_1+mynvp/sample/expand_to_vector/Reshape/shape*
T0*
_output_shapes
:
\
mynvp/sample/packedPackmynvp/sample/Prod*
N*
_output_shapes
:*
T0
e
mynvp/sample/concat/values_0Packmynvp/sample/Prod*
N*
_output_shapes
:*
T0
Z
mynvp/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
mynvp/sample/concatConcatV2mynvp/sample/concat/values_0mynvp/emptymynvp/emptymynvp/emptymynvp/sample/concat/axis*
N*
_output_shapes
:*
T0
\
prior/sample/ConstConst*
valueB: *
dtype0*
_output_shapes
:
c
prior/sample/ProdProdmynvp/sample/concatprior/sample/Const*
_output_shapes
: *
T0
\
prior/sample/packedPackprior/sample/Prod*
T0*
N*
_output_shapes
:
e
prior/sample/concat/values_0Packprior/sample/Prod*
T0*
N*
_output_shapes
:
Z
prior/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
prior/sample/concatConcatV2prior/sample/concat/values_0prior/emptyprior/event_shapeprior/emptyprior/sample/concat/axis*
_output_shapes
:*
T0*
N
]
Normal/sample/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
e
Normal/sample/ProdProdprior/sample/concatNormal/sample/Const*
_output_shapes
: *
T0
h
%Normal/batch_shape_tensor/batch_shapeConst*
_output_shapes
: *
valueB *
dtype0
g
Normal/sample/concat/values_0PackNormal/sample/Prod*
_output_shapes
:*
T0*
N
[
Normal/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Normal/sample/concatConcatV2Normal/sample/concat/values_0%Normal/batch_shape_tensor/batch_shapeNormal/sample/concat/axis*
N*
_output_shapes
:*
T0
e
 Normal/sample/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
g
"Normal/sample/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
0Normal/sample/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat*
T0*
dtype0*#
_output_shapes
:?????????
?
Normal/sample/random_normal/mulMul0Normal/sample/random_normal/RandomStandardNormal"Normal/sample/random_normal/stddev*
T0*#
_output_shapes
:?????????
?
Normal/sample/random_normalAddNormal/sample/random_normal/mul Normal/sample/random_normal/mean*
T0*#
_output_shapes
:?????????
v
Normal/sample/mulMulNormal/sample/random_normalNormal/Identity_1*
T0*#
_output_shapes
:?????????
j
Normal/sample/addAddNormal/sample/mulNormal/Identity*#
_output_shapes
:?????????*
T0
T
Normal/sample/ShapeShapeNormal/sample/add*
T0*
_output_shapes
:
k
!Normal/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#Normal/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#Normal/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Normal/sample/strided_sliceStridedSliceNormal/sample/Shape!Normal/sample/strided_slice/stack#Normal/sample/strided_slice/stack_1#Normal/sample/strided_slice/stack_2*
T0*
Index0*
end_mask*
_output_shapes
: 
]
Normal/sample/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Normal/sample/concat_1ConcatV2prior/sample/concatNormal/sample/strided_sliceNormal/sample/concat_1/axis*
T0*
N*
_output_shapes
:
}
Normal/sample/ReshapeReshapeNormal/sample/addNormal/sample/concat_1*
T0*'
_output_shapes
:?????????

W
prior/sample/ShapeShapeNormal/sample/Reshape*
T0*
_output_shapes
:
j
 prior/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"prior/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
l
"prior/sample/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
prior/sample/strided_sliceStridedSliceprior/sample/Shape prior/sample/strided_slice/stack"prior/sample/strided_slice/stack_1"prior/sample/strided_slice/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0
\
prior/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
prior/sample/concat_1ConcatV2mynvp/sample/concatprior/sample/strided_sliceprior/sample/concat_1/axis*
N*
_output_shapes
:*
T0

prior/sample/ReshapeReshapeNormal/sample/Reshapeprior/sample/concat_1*
T0*'
_output_shapes
:?????????

?
^prior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Zprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/ExpandDims
ExpandDimsprior/sample/Reshape^prior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/ExpandDims/dim*+
_output_shapes
:?????????
*
T0
?
wprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/LinearOperatorScaledIdentity/matmul/mulMulZprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/ExpandDimsDprior/init/make_diag_scale/LinearOperatorScaledIdentity/ExpandDims_1*
T0*+
_output_shapes
:?????????

?
Wprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/SqueezeSqueezewprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/LinearOperatorScaledIdentity/matmul/mul*
T0*'
_output_shapes
:?????????
*
squeeze_dims

?????????
?
/prior/sample/affine_linear_operator/forward/addAddWprior/sample/affine_linear_operator/forward/LinearOperatorScaledIdentity/matvec/Squeezezeros*
T0*'
_output_shapes
:?????????

q
mynvp/sample/ShapeShape/prior/sample/affine_linear_operator/forward/add*
T0*
_output_shapes
:
j
 mynvp/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"mynvp/sample/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
l
"mynvp/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
mynvp/sample/strided_sliceStridedSlicemynvp/sample/Shape mynvp/sample/strided_slice/stack"mynvp/sample/strided_slice/stack_1"mynvp/sample/strided_slice/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0
\
mynvp/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
mynvp/sample/concat_1ConcatV2%mynvp/sample/expand_to_vector/Reshapemynvp/sample/strided_slicemynvp/sample/concat_1/axis*
T0*
N*
_output_shapes
:
?
mynvp/sample/ReshapeReshape/prior/sample/affine_linear_operator/forward/addmynvp/sample/concat_1*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2GatherV2mynvp/sample/Reshapeperm5/permutation
perm5/axis*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	*
Tparams0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_2*'
_output_shapes
:?????????*
T0*
Index0*

begin_mask*
ellipsis_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_2*'
_output_shapes
:?????????*
Index0*
T0*
ellipsis_mask*
end_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_5/dense/bias*
_output_shapes	
:?*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concat/axis*'
_output_shapes
:?????????
*
T0*
N
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concatperm4/permutation
perm4/axis*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_2*'
_output_shapes
:?????????*
T0*
Index0*
ellipsis_mask*

begin_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_2*
ellipsis_mask*
T0*
Index0*
end_mask*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split/split_dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split:1*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concatperm3/permutation
perm3/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_2*'
_output_shapes
:?????????*
T0*
Index0*

begin_mask*
ellipsis_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_2*
end_mask*'
_output_shapes
:?????????*
Index0*
T0*
ellipsis_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concatperm2/permutation
perm2/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_2*
end_mask*'
_output_shapes
:?????????*
T0*
Index0*
ellipsis_mask
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
_output_shapes
:	?*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*
_output_shapes
:	?
*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split/split_dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split:1*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/Exp*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concat/axis*
N*'
_output_shapes
:?????????
*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concatperm1/permutation
perm1/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_2*
Index0*
T0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
dtype0*
_output_shapes
:	?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
_output_shapes	
:?*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concat/axis*'
_output_shapes
:?????????
*
T0*
N
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concatperm0/permutation
perm0/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_sliceStridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_2*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask*
Index0*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1StridedSlice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_2*
T0*
Index0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
_output_shapes
:	?*
dtype0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/ReluRelu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMulMatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/Relu?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
dtype0*
_output_shapes
:

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAddBiasAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/splitSplit?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split/split_dim?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/ExpExp?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/mulMul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/Exp*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/addAdd?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/mul?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split*'
_output_shapes
:?????????*
T0
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concatConcatV2?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/add?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2GatherV2Placeholder_2perm5/permutation
perm5/axis*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
*
Taxis0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice/stack_2*'
_output_shapes
:?????????*

begin_mask*
ellipsis_mask*
T0*
Index0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm5/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1/stack_2*
Index0*
T0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_5/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_5/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_5/dense_2/bias*
dtype0*
_output_shapes
:

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split:1*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/Exp*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/real_nvp_default_template_5/split*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp/forward/concatperm4/permutation
perm4/axis*
Tparams0*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice/stack_2*

begin_mask*
ellipsis_mask*
T0*
Index0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm4/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1/stack_2*
end_mask*'
_output_shapes
:?????????*
Index0*
T0*
ellipsis_mask
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_4/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_4/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_4/dense_2/bias*
dtype0*
_output_shapes
:

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/dense_2/BiasAdd*
	num_split*:
_output_shapes(
&:?????????:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split:1*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/Exp*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/real_nvp_default_template_4/split*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_1/forward/concatperm3/permutation
perm3/axis*
Tparams0*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice/stack_2*
Index0*
T0*
ellipsis_mask*

begin_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm3/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1/stack_2*
T0*
Index0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_3/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_3/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_3/dense_2/bias*
dtype0*
_output_shapes
:

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/ConstConst*
_output_shapes
: *
value	B :*
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split:1*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/Exp*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/real_nvp_default_template_3/split*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_2/forward/concatperm2/permutation
perm2/axis*
Tparams0*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice/stack_2*

begin_mask*
ellipsis_mask*
Index0*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm2/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1/stack_2*
T0*
Index0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_2/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_2/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_2/dense_2/bias*
dtype0*
_output_shapes
:

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split:1*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/Exp*'
_output_shapes
:?????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/real_nvp_default_template_2/split*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concat/axis*
N*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_3/forward/concatperm1/permutation
perm1/axis*'
_output_shapes
:?????????
*
Taxis0*
Tindices0	*
Tparams0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice/stack_2*'
_output_shapes
:?????????*
Index0*
T0*
ellipsis_mask*

begin_mask
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm1/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1/stack_2*
T0*
Index0*
ellipsis_mask*
end_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template_1/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/BiasAdd*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/BiasAdd*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOpReadVariableOp*real_nvp_default_template_1/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp(real_nvp_default_template_1/dense_2/bias*
_output_shapes
:
*
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/ConstConst*
dtype0*
_output_shapes
: *
value	B :
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split:1*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/Exp*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/real_nvp_default_template_1/split*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_4/forward/concatperm0/permutation
perm0/axis*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_sliceStridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice/stack_2*
T0*
Index0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"       
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1StridedSlice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/perm0/forward/GatherV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1/stack_2*'
_output_shapes
:?????????*
ellipsis_mask*
T0*
Index0*
end_mask
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul/ReadVariableOpReadVariableOp&real_nvp_default_template/dense/kernel*
dtype0*
_output_shapes
:	?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOpReadVariableOp$real_nvp_default_template/dense/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/BiasAdd*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_1/bias*
dtype0*
_output_shapes	
:?
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/ReluRelu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/BiasAdd*(
_output_shapes
:??????????*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOpReadVariableOp(real_nvp_default_template/dense_2/kernel*
dtype0*
_output_shapes
:	?

?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMulMatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_1/Relu?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOpReadVariableOp&real_nvp_default_template/dense_2/bias*
_output_shapes
:
*
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAddBiasAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/MatMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split/split_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/splitSplit?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split/split_dim?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/dense_2/BiasAdd*
T0*
	num_split*:
_output_shapes(
&:?????????:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/ExpExp?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split:1*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/mulMul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice_1?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/Exp*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/addAdd?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/mul?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/real_nvp_default_template/split*
T0*'
_output_shapes
:?????????
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat/axisConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concatConcatV2?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/strided_slice?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/add?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat/axis*
T0*
N*'
_output_shapes
:?????????
""?A
trainable_variables?@?@
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
*real_nvp_default_template_3/dense_2/bias:0/real_nvp_default_template_3/dense_2/bias/Assign>real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_4/dense/kernel:0/real_nvp_default_template_4/dense/kernel/Assign>real_nvp_default_template_4/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_4/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_4/dense/bias:0-real_nvp_default_template_4/dense/bias/Assign<real_nvp_default_template_4/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_4/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_4/dense_1/kernel:01real_nvp_default_template_4/dense_1/kernel/Assign@real_nvp_default_template_4/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_4/dense_1/bias:0/real_nvp_default_template_4/dense_1/bias/Assign>real_nvp_default_template_4/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_4/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_4/dense_2/kernel:01real_nvp_default_template_4/dense_2/kernel/Assign@real_nvp_default_template_4/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_4/dense_2/bias:0/real_nvp_default_template_4/dense_2/bias/Assign>real_nvp_default_template_4/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_4/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_5/dense/kernel:0/real_nvp_default_template_5/dense/kernel/Assign>real_nvp_default_template_5/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_5/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_5/dense/bias:0-real_nvp_default_template_5/dense/bias/Assign<real_nvp_default_template_5/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_5/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_5/dense_1/kernel:01real_nvp_default_template_5/dense_1/kernel/Assign@real_nvp_default_template_5/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_5/dense_1/bias:0/real_nvp_default_template_5/dense_1/bias/Assign>real_nvp_default_template_5/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_5/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_5/dense_2/kernel:01real_nvp_default_template_5/dense_2/kernel/Assign@real_nvp_default_template_5/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_5/dense_2/bias:0/real_nvp_default_template_5/dense_2/bias/Assign>real_nvp_default_template_5/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_5/dense_2/bias/Initializer/zeros:08"?@
	variables?@?@
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
*real_nvp_default_template_3/dense_2/bias:0/real_nvp_default_template_3/dense_2/bias/Assign>real_nvp_default_template_3/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_3/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_4/dense/kernel:0/real_nvp_default_template_4/dense/kernel/Assign>real_nvp_default_template_4/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_4/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_4/dense/bias:0-real_nvp_default_template_4/dense/bias/Assign<real_nvp_default_template_4/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_4/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_4/dense_1/kernel:01real_nvp_default_template_4/dense_1/kernel/Assign@real_nvp_default_template_4/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_4/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_4/dense_1/bias:0/real_nvp_default_template_4/dense_1/bias/Assign>real_nvp_default_template_4/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_4/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_4/dense_2/kernel:01real_nvp_default_template_4/dense_2/kernel/Assign@real_nvp_default_template_4/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_4/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_4/dense_2/bias:0/real_nvp_default_template_4/dense_2/bias/Assign>real_nvp_default_template_4/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_4/dense_2/bias/Initializer/zeros:08
?
*real_nvp_default_template_5/dense/kernel:0/real_nvp_default_template_5/dense/kernel/Assign>real_nvp_default_template_5/dense/kernel/Read/ReadVariableOp:0(2Ereal_nvp_default_template_5/dense/kernel/Initializer/random_uniform:08
?
(real_nvp_default_template_5/dense/bias:0-real_nvp_default_template_5/dense/bias/Assign<real_nvp_default_template_5/dense/bias/Read/ReadVariableOp:0(2:real_nvp_default_template_5/dense/bias/Initializer/zeros:08
?
,real_nvp_default_template_5/dense_1/kernel:01real_nvp_default_template_5/dense_1/kernel/Assign@real_nvp_default_template_5/dense_1/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_5/dense_1/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_5/dense_1/bias:0/real_nvp_default_template_5/dense_1/bias/Assign>real_nvp_default_template_5/dense_1/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_5/dense_1/bias/Initializer/zeros:08
?
,real_nvp_default_template_5/dense_2/kernel:01real_nvp_default_template_5/dense_2/kernel/Assign@real_nvp_default_template_5/dense_2/kernel/Read/ReadVariableOp:0(2Greal_nvp_default_template_5/dense_2/kernel/Initializer/random_uniform:08
?
*real_nvp_default_template_5/dense_2/bias:0/real_nvp_default_template_5/dense_2/bias/Assign>real_nvp_default_template_5/dense_2/bias/Read/ReadVariableOp:0(2<real_nvp_default_template_5/dense_2/bias/Initializer/zeros:08*?
default?
$
sample_size
Placeholder_1:0 
2
u_sample&
Placeholder_2:0?????????

0
z_sample$
Placeholder:0?????????
?
sample?
?mynvp/sample/chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat:0?????????
?
fwd_pass?
?chain_of_real_nvp_of_perm0_of_real_nvp_of_perm1_of_real_nvp_of_perm2_of_real_nvp_of_perm3_of_real_nvp_of_perm4_of_real_nvp_of_perm5/forward/real_nvp_5/forward/concat:0?????????
3
log_prob'
mynvp/log_prob/add:0?????????