��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	"
offsetint �
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
G
Where

input"T	
index	"'
Ttype0
:
2	
"serve*2.12.02unknown8�u
]
f1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
]
f2Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
e

string_colPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
H
Equal/yConst*
_output_shapes
: *
dtype0*
valueB B 
Q
EqualEqual
string_colEqual/y*
T0*#
_output_shapes
:���������
j
ConstConst*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
M
ShapeShape
string_col*
T0*
_output_shapes
::��
H
TileTileConstShape*
T0*#
_output_shapes
:���������
[
SelectV2SelectV2EqualTile
string_col*
T0*#
_output_shapes
:���������
h
input_layer/f1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
|
input_layer/f1/ExpandDims
ExpandDimsf1input_layer/f1/ExpandDims/dim*
T0*'
_output_shapes
:���������
w
input_layer/f1/CastCastinput_layer/f1/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
e
input_layer/f1/ShapeShapeinput_layer/f1/Cast*
T0*
_output_shapes
::��
l
"input_layer/f1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$input_layer/f1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$input_layer/f1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
input_layer/f1/strided_sliceStridedSliceinput_layer/f1/Shape"input_layer/f1/strided_slice/stack$input_layer/f1/strided_slice/stack_1$input_layer/f1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
input_layer/f1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
input_layer/f1/Reshape/shapePackinput_layer/f1/strided_sliceinput_layer/f1/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
input_layer/f1/ReshapeReshapeinput_layer/f1/Castinput_layer/f1/Reshape/shape*
T0*'
_output_shapes
:���������
h
input_layer/f2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
|
input_layer/f2/ExpandDims
ExpandDimsf2input_layer/f2/ExpandDims/dim*
T0*'
_output_shapes
:���������
w
input_layer/f2/CastCastinput_layer/f2/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
e
input_layer/f2/ShapeShapeinput_layer/f2/Cast*
T0*
_output_shapes
::��
l
"input_layer/f2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$input_layer/f2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$input_layer/f2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
input_layer/f2/strided_sliceStridedSliceinput_layer/f2/Shape"input_layer/f2/strided_slice/stack$input_layer/f2/strided_slice/stack_1$input_layer/f2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
input_layer/f2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
input_layer/f2/Reshape/shapePackinput_layer/f2/strided_sliceinput_layer/f2/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
input_layer/f2/ReshapeReshapeinput_layer/f2/Castinput_layer/f2/Reshape/shape*
T0*'
_output_shapes
:���������
z
/input_layer/string_col_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+input_layer/string_col_indicator/ExpandDims
ExpandDimsSelectV2/input_layer/string_col_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
?input_layer/string_col_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
9input_layer/string_col_indicator/to_sparse_input/NotEqualNotEqual+input_layer/string_col_indicator/ExpandDims?input_layer/string_col_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
8input_layer/string_col_indicator/to_sparse_input/indicesWhere9input_layer/string_col_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
7input_layer/string_col_indicator/to_sparse_input/valuesGatherNd+input_layer/string_col_indicator/ExpandDims8input_layer/string_col_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
<input_layer/string_col_indicator/to_sparse_input/dense_shapeShape+input_layer/string_col_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	:��
�
Hinput_layer/string_col_indicator/string_col_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/os-d/home/cloud-dataengine-materialize-test-tempstore/isolated_serving-materialize/devpool37-devpool_serving.shard/0/7/ttl=12h/f6337483d38077ab/assets/string_col.txt
�
Cinput_layer/string_col_indicator/string_col_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Hinput_layer/string_col_indicator/string_col_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/os-d/home/cloud-dataengine-materialize-test-tempstore/isolated_serving-materialize/devpool37-devpool_serving.shard/0/7/ttl=12h/f6337483d38077ab/assets/string_col.txt_5_-2_-1*
value_dtype0	
�
finput_layer/string_col_indicator/string_col_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Hinput_layer/string_col_indicator/string_col_lookup/hash_table/hash_tableHinput_layer/string_col_indicator/string_col_lookup/hash_table/asset_path*&
 _has_manual_control_dependencies(*
	key_index���������*
value_index���������*

vocab_size
�
Dinput_layer/string_col_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Hinput_layer/string_col_indicator/string_col_lookup/hash_table/hash_table7input_layer/string_col_indicator/to_sparse_input/valuesCinput_layer/string_col_indicator/string_col_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
<input_layer/string_col_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
.input_layer/string_col_indicator/SparseToDenseSparseToDense8input_layer/string_col_indicator/to_sparse_input/indices<input_layer/string_col_indicator/to_sparse_input/dense_shapeDinput_layer/string_col_indicator/hash_table_Lookup/LookupTableFindV2<input_layer/string_col_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
s
.input_layer/string_col_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
u
0input_layer/string_col_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
p
.input_layer/string_col_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
�
(input_layer/string_col_indicator/one_hotOneHot.input_layer/string_col_indicator/SparseToDense.input_layer/string_col_indicator/one_hot/depth.input_layer/string_col_indicator/one_hot/Const0input_layer/string_col_indicator/one_hot/Const_1*
T0*+
_output_shapes
:���������
�
6input_layer/string_col_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
$input_layer/string_col_indicator/SumSum(input_layer/string_col_indicator/one_hot6input_layer/string_col_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
&input_layer/string_col_indicator/ShapeShape$input_layer/string_col_indicator/Sum*
T0*
_output_shapes
::��
~
4input_layer/string_col_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6input_layer/string_col_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6input_layer/string_col_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.input_layer/string_col_indicator/strided_sliceStridedSlice&input_layer/string_col_indicator/Shape4input_layer/string_col_indicator/strided_slice/stack6input_layer/string_col_indicator/strided_slice/stack_16input_layer/string_col_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
r
0input_layer/string_col_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
.input_layer/string_col_indicator/Reshape/shapePack.input_layer/string_col_indicator/strided_slice0input_layer/string_col_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
(input_layer/string_col_indicator/ReshapeReshape$input_layer/string_col_indicator/Sum.input_layer/string_col_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
Y
input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
�
input_layer/concatConcatV2input_layer/f1/Reshapeinput_layer/f2/Reshape(input_layer/string_col_indicator/Reshapeinput_layer/concat/axis*
N*
T0*'
_output_shapes
:���������
�
Const_1Const*
_output_shapes

:*
dtype0*Q
valueHBF"8(Kv����?@�vT�?D��M��@l?��P��@!t�R��@t�9���@#�R��@
�
weightsVarHandleOp*
_class
loc:@weights*
_output_shapes
: *
dtype0*
shape
:*
shared_name	weights
_
(weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpweights*
_output_shapes
: 
i
weights/AssignAssignVariableOpweightsConst_1*&
 _has_manual_control_dependencies(*
dtype0
c
weights/Read/ReadVariableOpReadVariableOpweights*
_output_shapes

:*
dtype0
P
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2s�9����
�
	interceptVarHandleOp*
_class
loc:@intercept*
_output_shapes
: *
dtype0*
shape: *
shared_name	intercept
c
*intercept/IsInitialized/VarIsInitializedOpVarIsInitializedOp	intercept*
_output_shapes
: 
m
intercept/AssignAssignVariableOp	interceptConst_2*&
 _has_manual_control_dependencies(*
dtype0
_
intercept/Read/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
a
CastCastinput_layer/concat*

DstT0*

SrcT0*'
_output_shapes
:���������
]
MatMul/ReadVariableOpReadVariableOpweights*
_output_shapes

:*
dtype0
_
MatMulMatMulCastMatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
X
compute/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
b
computeAddV2MatMulcompute/ReadVariableOp*
T0*'
_output_shapes
:���������
X
initNoOp^intercept/Assign^weights/Assign*&
 _has_manual_control_dependencies(
�
init_all_tablesNoOpg^input_layer/string_col_indicator/string_col_lookup/hash_table/table_init/InitializeTableFromTextFileV2*&
 _has_manual_control_dependencies(
+

group_depsNoOp^init^init_all_tables
�
init_all_tables_1NoOpg^input_layer/string_col_indicator/string_col_lookup/hash_table/table_init/InitializeTableFromTextFileV2
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesintercept/Read/ReadVariableOpweights/Read/ReadVariableOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*&
 _has_manual_control_dependencies(*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*&
 _has_manual_control_dependencies(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
z
save/AssignVariableOpAssignVariableOp	interceptsave/Identity_1*&
 _has_manual_control_dependencies(*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
z
save/AssignVariableOp_1AssignVariableOpweightssave/Identity_2*&
 _has_manual_control_dependencies(*
dtype0
t
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1*&
 _has_manual_control_dependencies(
-
save/restore_allNoOp^save/restore_shard"�
<
save/Const:0save/Identity:0save/restore_all (5 @F8"a
asset_filepathsN
L
Jinput_layer/string_col_indicator/string_col_lookup/hash_table/asset_path:0"�
saved_model_assets�*�
�
+type.googleapis.com/tensorflow.AssetFileDef^
L
Jinput_layer/string_col_indicator/string_col_lookup/hash_table/asset_path:0string_col.txt",
saved_model_main_op

init_all_tables_1"
table_initializerj
h
finput_layer/string_col_indicator/string_col_lookup/hash_table/table_init/InitializeTableFromTextFileV2"�
trainable_variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_1:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_2:08"�
	variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_1:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_2:08*�
serving_default�

f1
f1:0���������

f2
f2:0���������
-

string_col
string_col:0���������;
predicted_label_reg_lin 
	compute:0���������tensorflow/serving/predict