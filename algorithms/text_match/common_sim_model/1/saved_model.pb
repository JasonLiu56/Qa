¶í
¹  
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
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
i
BatchMatMul
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
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
,
Floor
x"T
y"T"
Ttype:
2

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
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
ö
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12
b'unknown'²ø

Input-TokenPlaceholder*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Input-SegmentPlaceholder*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
w
&Embedding-Token/truncated_normal/shapeConst*
valueB"R  8  *
dtype0*
_output_shapes
:
j
%Embedding-Token/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'Embedding-Token/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
Ã
0Embedding-Token/truncated_normal/TruncatedNormalTruncatedNormal&Embedding-Token/truncated_normal/shape*
T0*
dtype0*
seed2½þ×*
seed±ÿå)*!
_output_shapes
:¥¸
²
$Embedding-Token/truncated_normal/mulMul0Embedding-Token/truncated_normal/TruncatedNormal'Embedding-Token/truncated_normal/stddev*
T0*!
_output_shapes
:¥¸
 
 Embedding-Token/truncated_normalAdd$Embedding-Token/truncated_normal/mul%Embedding-Token/truncated_normal/mean*
T0*!
_output_shapes
:¥¸

Embedding-Token/embeddings
VariableV2*
dtype0*
shared_name *
shape:¥¸*
	container *!
_output_shapes
:¥¸
í
!Embedding-Token/embeddings/AssignAssignEmbedding-Token/embeddings Embedding-Token/truncated_normal*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@Embedding-Token/embeddings*!
_output_shapes
:¥¸
¢
Embedding-Token/embeddings/readIdentityEmbedding-Token/embeddings*
T0*-
_class#
!loc:@Embedding-Token/embeddings*!
_output_shapes
:¥¸

Embedding-Token/CastCastInput-Token*

DstT0*
Truncate( *

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

%Embedding-Token/embedding_lookup/axisConst*
value	B : *
dtype0*-
_class#
!loc:@Embedding-Token/embeddings*
_output_shapes
: 

 Embedding-Token/embedding_lookupGatherV2Embedding-Token/embeddings/readEmbedding-Token/Cast%Embedding-Token/embedding_lookup/axis*
Taxis0*
Tparams0*-
_class#
!loc:@Embedding-Token/embeddings*
Tindices0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

)Embedding-Token/embedding_lookup/IdentityIdentity Embedding-Token/embedding_lookup*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
_
Embedding-Token/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Embedding-Token/NotEqualNotEqualInput-TokenEmbedding-Token/NotEqual/y*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
#Embedding-Token/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
v
%Embedding-Token/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
v
%Embedding-Token/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
æ
Embedding-Token/strided_sliceStridedSliceEmbedding-Token/NotEqual#Embedding-Token/strided_slice/stack%Embedding-Token/strided_slice/stack_1%Embedding-Token/strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0
*

begin_mask*
new_axis_mask *
ellipsis_mask *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
|
Embedding-Token/ones_like/ShapeShapeEmbedding-Token/strided_slice*
T0
*
out_type0*
_output_shapes
:
a
Embedding-Token/ones_like/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
°
Embedding-Token/ones_likeFillEmbedding-Token/ones_like/ShapeEmbedding-Token/ones_like/Const*
T0
*

index_type0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
v
%Embedding-Token/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
x
'Embedding-Token/strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
x
'Embedding-Token/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
î
Embedding-Token/strided_slice_1StridedSliceEmbedding-Token/NotEqual%Embedding-Token/strided_slice_1/stack'Embedding-Token/strided_slice_1/stack_1'Embedding-Token/strided_slice_1/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0
*

begin_mask*
new_axis_mask *
ellipsis_mask *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
]
Embedding-Token/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
Embedding-Token/concatConcatV2Embedding-Token/ones_likeEmbedding-Token/strided_slice_1Embedding-Token/concat/axis*
T0
*
N*

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
y
(Embedding-Segment/truncated_normal/shapeConst*
valueB"   8  *
dtype0*
_output_shapes
:
l
'Embedding-Segment/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)Embedding-Segment/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
Ä
2Embedding-Segment/truncated_normal/TruncatedNormalTruncatedNormal(Embedding-Segment/truncated_normal/shape*
T0*
dtype0*
seed2í+*
seed±ÿå)*
_output_shapes
:	¸
¶
&Embedding-Segment/truncated_normal/mulMul2Embedding-Segment/truncated_normal/TruncatedNormal)Embedding-Segment/truncated_normal/stddev*
T0*
_output_shapes
:	¸
¤
"Embedding-Segment/truncated_normalAdd&Embedding-Segment/truncated_normal/mul'Embedding-Segment/truncated_normal/mean*
T0*
_output_shapes
:	¸

Embedding-Segment/embeddings
VariableV2*
dtype0*
shared_name *
shape:	¸*
	container *
_output_shapes
:	¸
ó
#Embedding-Segment/embeddings/AssignAssignEmbedding-Segment/embeddings"Embedding-Segment/truncated_normal*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
:	¸
¦
!Embedding-Segment/embeddings/readIdentityEmbedding-Segment/embeddings*
T0*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
:	¸

Embedding-Segment/CastCastInput-Segment*

DstT0*
Truncate( *

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

'Embedding-Segment/embedding_lookup/axisConst*
value	B : *
dtype0*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
: 
¦
"Embedding-Segment/embedding_lookupGatherV2!Embedding-Segment/embeddings/readEmbedding-Segment/Cast'Embedding-Segment/embedding_lookup/axis*
Taxis0*
Tparams0*/
_class%
#!loc:@Embedding-Segment/embeddings*
Tindices0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

+Embedding-Segment/embedding_lookup/IdentityIdentity"Embedding-Segment/embedding_lookup*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
º
Embedding-Token-Segment/addAdd)Embedding-Token/embedding_lookup/Identity+Embedding-Segment/embedding_lookup/Identity*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
h
&Embedding-Token-Segment/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
»
"Embedding-Token-Segment/ExpandDims
ExpandDimsEmbedding-Token/concat&Embedding-Token-Segment/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
k
)Embedding-Token-Segment/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 

Embedding-Token-Segment/concatIdentity"Embedding-Token-Segment/ExpandDims*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
-Embedding-Token-Segment/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
À
Embedding-Token-Segment/AllAllEmbedding-Token-Segment/concat-Embedding-Token-Segment/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
z
)Embedding-Position/truncated_normal/shapeConst*
valueB"   8  *
dtype0*
_output_shapes
:
m
(Embedding-Position/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*Embedding-Position/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
Ç
3Embedding-Position/truncated_normal/TruncatedNormalTruncatedNormal)Embedding-Position/truncated_normal/shape*
T0*
dtype0*
seed2ÛÔ)*
seed±ÿå)* 
_output_shapes
:
¸
º
'Embedding-Position/truncated_normal/mulMul3Embedding-Position/truncated_normal/TruncatedNormal*Embedding-Position/truncated_normal/stddev*
T0* 
_output_shapes
:
¸
¨
#Embedding-Position/truncated_normalAdd'Embedding-Position/truncated_normal/mul(Embedding-Position/truncated_normal/mean*
T0* 
_output_shapes
:
¸

Embedding-Position/embeddings
VariableV2*
dtype0*
shared_name *
shape:
¸*
	container * 
_output_shapes
:
¸
ø
$Embedding-Position/embeddings/AssignAssignEmbedding-Position/embeddings#Embedding-Position/truncated_normal*
T0*
use_locking(*
validate_shape(*0
_class&
$"loc:@Embedding-Position/embeddings* 
_output_shapes
:
¸
ª
"Embedding-Position/embeddings/readIdentityEmbedding-Position/embeddings*
T0*0
_class&
$"loc:@Embedding-Position/embeddings* 
_output_shapes
:
¸
s
Embedding-Position/ShapeShapeEmbedding-Token-Segment/add*
T0*
out_type0*
_output_shapes
:
p
&Embedding-Position/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(Embedding-Position/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(Embedding-Position/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ø
 Embedding-Position/strided_sliceStridedSliceEmbedding-Position/Shape&Embedding-Position/strided_slice/stack(Embedding-Position/strided_slice/stack_1(Embedding-Position/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
r
(Embedding-Position/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*Embedding-Position/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*Embedding-Position/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
à
"Embedding-Position/strided_slice_1StridedSliceEmbedding-Position/Shape(Embedding-Position/strided_slice_1/stack*Embedding-Position/strided_slice_1/stack_1*Embedding-Position/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
r
(Embedding-Position/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

*Embedding-Position/strided_slice_2/stack_1Pack"Embedding-Position/strided_slice_1*

axis *
T0*
N*
_output_shapes
:
t
*Embedding-Position/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ü
"Embedding-Position/strided_slice_2StridedSlice"Embedding-Position/embeddings/read(Embedding-Position/strided_slice_2/stack*Embedding-Position/strided_slice_2/stack_1*Embedding-Position/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
c
!Embedding-Position/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
µ
Embedding-Position/ExpandDims
ExpandDims"Embedding-Position/strided_slice_2!Embedding-Position/ExpandDims/dim*
T0*

Tdim0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

Embedding-Position/addAddEmbedding-Token-Segment/addEmbedding-Position/ExpandDims*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
c
Embedding-Norm/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

Embedding-Norm/beta
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
Æ
Embedding-Norm/beta/AssignAssignEmbedding-Norm/betaEmbedding-Norm/Const*
T0*
use_locking(*
validate_shape(*&
_class
loc:@Embedding-Norm/beta*
_output_shapes	
:¸

Embedding-Norm/beta/readIdentityEmbedding-Norm/beta*
T0*&
_class
loc:@Embedding-Norm/beta*
_output_shapes	
:¸
e
Embedding-Norm/Const_1Const*
valueB¸*  ?*
dtype0*
_output_shapes	
:¸

Embedding-Norm/gamma
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
Ë
Embedding-Norm/gamma/AssignAssignEmbedding-Norm/gammaEmbedding-Norm/Const_1*
T0*
use_locking(*
validate_shape(*'
_class
loc:@Embedding-Norm/gamma*
_output_shapes	
:¸

Embedding-Norm/gamma/readIdentityEmbedding-Norm/gamma*
T0*'
_class
loc:@Embedding-Norm/gamma*
_output_shapes	
:¸
p
%Embedding-Norm/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
¶
Embedding-Norm/MeanMeanEmbedding-Position/add%Embedding-Norm/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Embedding-Norm/subSubEmbedding-Position/addEmbedding-Norm/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
s
Embedding-Norm/SquareSquareEmbedding-Norm/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
r
'Embedding-Norm/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
¹
Embedding-Norm/Mean_1MeanEmbedding-Norm/Square'Embedding-Norm/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Y
Embedding-Norm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 

Embedding-Norm/addAddEmbedding-Norm/Mean_1Embedding-Norm/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
Embedding-Norm/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
Embedding-Norm/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

$Embedding-Norm/clip_by_value/MinimumMinimumEmbedding-Norm/addEmbedding-Norm/Const_3*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¤
Embedding-Norm/clip_by_valueMaximum$Embedding-Norm/clip_by_value/MinimumEmbedding-Norm/Const_2*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
x
Embedding-Norm/SqrtSqrtEmbedding-Norm/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Embedding-Norm/truedivRealDivEmbedding-Norm/subEmbedding-Norm/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

Embedding-Norm/mulMulEmbedding-Norm/truedivEmbedding-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

Embedding-Norm/add_1AddEmbedding-Norm/mulEmbedding-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
¦
'Transformer-MultiHeadSelfAttention/CastCastEmbedding-Token-Segment/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨
)Transformer-MultiHeadSelfAttention/Cast_1CastEmbedding-Token-Segment/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

ATransformer-MultiHeadSelfAttention/dense_1/truncated_normal/shapeConst*
valueB"8  8  *
dtype0*
_output_shapes
:

@Transformer-MultiHeadSelfAttention/dense_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 

BTransformer-MultiHeadSelfAttention/dense_1/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
ø
KTransformer-MultiHeadSelfAttention/dense_1/truncated_normal/TruncatedNormalTruncatedNormalATransformer-MultiHeadSelfAttention/dense_1/truncated_normal/shape*
T0*
dtype0*
seed2òÿ°*
seed±ÿå)* 
_output_shapes
:
¸¸

?Transformer-MultiHeadSelfAttention/dense_1/truncated_normal/mulMulKTransformer-MultiHeadSelfAttention/dense_1/truncated_normal/TruncatedNormalBTransformer-MultiHeadSelfAttention/dense_1/truncated_normal/stddev*
T0* 
_output_shapes
:
¸¸
ð
;Transformer-MultiHeadSelfAttention/dense_1/truncated_normalAdd?Transformer-MultiHeadSelfAttention/dense_1/truncated_normal/mul@Transformer-MultiHeadSelfAttention/dense_1/truncated_normal/mean*
T0* 
_output_shapes
:
¸¸
©
1Transformer-MultiHeadSelfAttention/dense_1/kernel
VariableV2*
dtype0*
shared_name *
shape:
¸¸*
	container * 
_output_shapes
:
¸¸
Ì
8Transformer-MultiHeadSelfAttention/dense_1/kernel/AssignAssign1Transformer-MultiHeadSelfAttention/dense_1/kernel;Transformer-MultiHeadSelfAttention/dense_1/truncated_normal*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_1/kernel* 
_output_shapes
:
¸¸
æ
6Transformer-MultiHeadSelfAttention/dense_1/kernel/readIdentity1Transformer-MultiHeadSelfAttention/dense_1/kernel*
T0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_1/kernel* 
_output_shapes
:
¸¸

0Transformer-MultiHeadSelfAttention/dense_1/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

/Transformer-MultiHeadSelfAttention/dense_1/bias
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
¶
6Transformer-MultiHeadSelfAttention/dense_1/bias/AssignAssign/Transformer-MultiHeadSelfAttention/dense_1/bias0Transformer-MultiHeadSelfAttention/dense_1/Const*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_1/bias*
_output_shapes	
:¸
Û
4Transformer-MultiHeadSelfAttention/dense_1/bias/readIdentity/Transformer-MultiHeadSelfAttention/dense_1/bias*
T0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_1/bias*
_output_shapes	
:¸

0Transformer-MultiHeadSelfAttention/dense_1/ShapeShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:
ª
2Transformer-MultiHeadSelfAttention/dense_1/unstackUnpack0Transformer-MultiHeadSelfAttention/dense_1/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

2Transformer-MultiHeadSelfAttention/dense_1/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
¬
4Transformer-MultiHeadSelfAttention/dense_1/unstack_1Unpack2Transformer-MultiHeadSelfAttention/dense_1/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

8Transformer-MultiHeadSelfAttention/dense_1/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
Î
2Transformer-MultiHeadSelfAttention/dense_1/ReshapeReshapeEmbedding-Norm/add_18Transformer-MultiHeadSelfAttention/dense_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

9Transformer-MultiHeadSelfAttention/dense_1/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention/dense_1/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_1/kernel/read9Transformer-MultiHeadSelfAttention/dense_1/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

:Transformer-MultiHeadSelfAttention/dense_1/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ê
4Transformer-MultiHeadSelfAttention/dense_1/Reshape_1Reshape4Transformer-MultiHeadSelfAttention/dense_1/transpose:Transformer-MultiHeadSelfAttention/dense_1/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸
þ
1Transformer-MultiHeadSelfAttention/dense_1/MatMulMatMul2Transformer-MultiHeadSelfAttention/dense_1/Reshape4Transformer-MultiHeadSelfAttention/dense_1/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention/dense_1/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¤
:Transformer-MultiHeadSelfAttention/dense_1/Reshape_2/shapePack2Transformer-MultiHeadSelfAttention/dense_1/unstack4Transformer-MultiHeadSelfAttention/dense_1/unstack:1<Transformer-MultiHeadSelfAttention/dense_1/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
ü
4Transformer-MultiHeadSelfAttention/dense_1/Reshape_2Reshape1Transformer-MultiHeadSelfAttention/dense_1/MatMul:Transformer-MultiHeadSelfAttention/dense_1/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

:Transformer-MultiHeadSelfAttention/dense_1/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
í
4Transformer-MultiHeadSelfAttention/dense_1/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_1/bias/read:Transformer-MultiHeadSelfAttention/dense_1/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
á
.Transformer-MultiHeadSelfAttention/dense_1/addAdd4Transformer-MultiHeadSelfAttention/dense_1/Reshape_24Transformer-MultiHeadSelfAttention/dense_1/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

ATransformer-MultiHeadSelfAttention/dense_2/truncated_normal/shapeConst*
valueB"8  8  *
dtype0*
_output_shapes
:

@Transformer-MultiHeadSelfAttention/dense_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 

BTransformer-MultiHeadSelfAttention/dense_2/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
ø
KTransformer-MultiHeadSelfAttention/dense_2/truncated_normal/TruncatedNormalTruncatedNormalATransformer-MultiHeadSelfAttention/dense_2/truncated_normal/shape*
T0*
dtype0*
seed2Øûï*
seed±ÿå)* 
_output_shapes
:
¸¸

?Transformer-MultiHeadSelfAttention/dense_2/truncated_normal/mulMulKTransformer-MultiHeadSelfAttention/dense_2/truncated_normal/TruncatedNormalBTransformer-MultiHeadSelfAttention/dense_2/truncated_normal/stddev*
T0* 
_output_shapes
:
¸¸
ð
;Transformer-MultiHeadSelfAttention/dense_2/truncated_normalAdd?Transformer-MultiHeadSelfAttention/dense_2/truncated_normal/mul@Transformer-MultiHeadSelfAttention/dense_2/truncated_normal/mean*
T0* 
_output_shapes
:
¸¸
©
1Transformer-MultiHeadSelfAttention/dense_2/kernel
VariableV2*
dtype0*
shared_name *
shape:
¸¸*
	container * 
_output_shapes
:
¸¸
Ì
8Transformer-MultiHeadSelfAttention/dense_2/kernel/AssignAssign1Transformer-MultiHeadSelfAttention/dense_2/kernel;Transformer-MultiHeadSelfAttention/dense_2/truncated_normal*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_2/kernel* 
_output_shapes
:
¸¸
æ
6Transformer-MultiHeadSelfAttention/dense_2/kernel/readIdentity1Transformer-MultiHeadSelfAttention/dense_2/kernel*
T0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_2/kernel* 
_output_shapes
:
¸¸

0Transformer-MultiHeadSelfAttention/dense_2/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

/Transformer-MultiHeadSelfAttention/dense_2/bias
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
¶
6Transformer-MultiHeadSelfAttention/dense_2/bias/AssignAssign/Transformer-MultiHeadSelfAttention/dense_2/bias0Transformer-MultiHeadSelfAttention/dense_2/Const*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_2/bias*
_output_shapes	
:¸
Û
4Transformer-MultiHeadSelfAttention/dense_2/bias/readIdentity/Transformer-MultiHeadSelfAttention/dense_2/bias*
T0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_2/bias*
_output_shapes	
:¸

0Transformer-MultiHeadSelfAttention/dense_2/ShapeShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:
ª
2Transformer-MultiHeadSelfAttention/dense_2/unstackUnpack0Transformer-MultiHeadSelfAttention/dense_2/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

2Transformer-MultiHeadSelfAttention/dense_2/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
¬
4Transformer-MultiHeadSelfAttention/dense_2/unstack_1Unpack2Transformer-MultiHeadSelfAttention/dense_2/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

8Transformer-MultiHeadSelfAttention/dense_2/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
Î
2Transformer-MultiHeadSelfAttention/dense_2/ReshapeReshapeEmbedding-Norm/add_18Transformer-MultiHeadSelfAttention/dense_2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

9Transformer-MultiHeadSelfAttention/dense_2/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention/dense_2/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_2/kernel/read9Transformer-MultiHeadSelfAttention/dense_2/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

:Transformer-MultiHeadSelfAttention/dense_2/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ê
4Transformer-MultiHeadSelfAttention/dense_2/Reshape_1Reshape4Transformer-MultiHeadSelfAttention/dense_2/transpose:Transformer-MultiHeadSelfAttention/dense_2/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸
þ
1Transformer-MultiHeadSelfAttention/dense_2/MatMulMatMul2Transformer-MultiHeadSelfAttention/dense_2/Reshape4Transformer-MultiHeadSelfAttention/dense_2/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention/dense_2/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¤
:Transformer-MultiHeadSelfAttention/dense_2/Reshape_2/shapePack2Transformer-MultiHeadSelfAttention/dense_2/unstack4Transformer-MultiHeadSelfAttention/dense_2/unstack:1<Transformer-MultiHeadSelfAttention/dense_2/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
ü
4Transformer-MultiHeadSelfAttention/dense_2/Reshape_2Reshape1Transformer-MultiHeadSelfAttention/dense_2/MatMul:Transformer-MultiHeadSelfAttention/dense_2/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

:Transformer-MultiHeadSelfAttention/dense_2/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
í
4Transformer-MultiHeadSelfAttention/dense_2/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_2/bias/read:Transformer-MultiHeadSelfAttention/dense_2/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
á
.Transformer-MultiHeadSelfAttention/dense_2/addAdd4Transformer-MultiHeadSelfAttention/dense_2/Reshape_24Transformer-MultiHeadSelfAttention/dense_2/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

ATransformer-MultiHeadSelfAttention/dense_3/truncated_normal/shapeConst*
valueB"8  8  *
dtype0*
_output_shapes
:

@Transformer-MultiHeadSelfAttention/dense_3/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 

BTransformer-MultiHeadSelfAttention/dense_3/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
÷
KTransformer-MultiHeadSelfAttention/dense_3/truncated_normal/TruncatedNormalTruncatedNormalATransformer-MultiHeadSelfAttention/dense_3/truncated_normal/shape*
T0*
dtype0*
seed2á:*
seed±ÿå)* 
_output_shapes
:
¸¸

?Transformer-MultiHeadSelfAttention/dense_3/truncated_normal/mulMulKTransformer-MultiHeadSelfAttention/dense_3/truncated_normal/TruncatedNormalBTransformer-MultiHeadSelfAttention/dense_3/truncated_normal/stddev*
T0* 
_output_shapes
:
¸¸
ð
;Transformer-MultiHeadSelfAttention/dense_3/truncated_normalAdd?Transformer-MultiHeadSelfAttention/dense_3/truncated_normal/mul@Transformer-MultiHeadSelfAttention/dense_3/truncated_normal/mean*
T0* 
_output_shapes
:
¸¸
©
1Transformer-MultiHeadSelfAttention/dense_3/kernel
VariableV2*
dtype0*
shared_name *
shape:
¸¸*
	container * 
_output_shapes
:
¸¸
Ì
8Transformer-MultiHeadSelfAttention/dense_3/kernel/AssignAssign1Transformer-MultiHeadSelfAttention/dense_3/kernel;Transformer-MultiHeadSelfAttention/dense_3/truncated_normal*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_3/kernel* 
_output_shapes
:
¸¸
æ
6Transformer-MultiHeadSelfAttention/dense_3/kernel/readIdentity1Transformer-MultiHeadSelfAttention/dense_3/kernel*
T0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_3/kernel* 
_output_shapes
:
¸¸

0Transformer-MultiHeadSelfAttention/dense_3/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

/Transformer-MultiHeadSelfAttention/dense_3/bias
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
¶
6Transformer-MultiHeadSelfAttention/dense_3/bias/AssignAssign/Transformer-MultiHeadSelfAttention/dense_3/bias0Transformer-MultiHeadSelfAttention/dense_3/Const*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_3/bias*
_output_shapes	
:¸
Û
4Transformer-MultiHeadSelfAttention/dense_3/bias/readIdentity/Transformer-MultiHeadSelfAttention/dense_3/bias*
T0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_3/bias*
_output_shapes	
:¸

0Transformer-MultiHeadSelfAttention/dense_3/ShapeShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:
ª
2Transformer-MultiHeadSelfAttention/dense_3/unstackUnpack0Transformer-MultiHeadSelfAttention/dense_3/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

2Transformer-MultiHeadSelfAttention/dense_3/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
¬
4Transformer-MultiHeadSelfAttention/dense_3/unstack_1Unpack2Transformer-MultiHeadSelfAttention/dense_3/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

8Transformer-MultiHeadSelfAttention/dense_3/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
Î
2Transformer-MultiHeadSelfAttention/dense_3/ReshapeReshapeEmbedding-Norm/add_18Transformer-MultiHeadSelfAttention/dense_3/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

9Transformer-MultiHeadSelfAttention/dense_3/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention/dense_3/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_3/kernel/read9Transformer-MultiHeadSelfAttention/dense_3/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

:Transformer-MultiHeadSelfAttention/dense_3/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ê
4Transformer-MultiHeadSelfAttention/dense_3/Reshape_1Reshape4Transformer-MultiHeadSelfAttention/dense_3/transpose:Transformer-MultiHeadSelfAttention/dense_3/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸
þ
1Transformer-MultiHeadSelfAttention/dense_3/MatMulMatMul2Transformer-MultiHeadSelfAttention/dense_3/Reshape4Transformer-MultiHeadSelfAttention/dense_3/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention/dense_3/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¤
:Transformer-MultiHeadSelfAttention/dense_3/Reshape_2/shapePack2Transformer-MultiHeadSelfAttention/dense_3/unstack4Transformer-MultiHeadSelfAttention/dense_3/unstack:1<Transformer-MultiHeadSelfAttention/dense_3/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
ü
4Transformer-MultiHeadSelfAttention/dense_3/Reshape_2Reshape1Transformer-MultiHeadSelfAttention/dense_3/MatMul:Transformer-MultiHeadSelfAttention/dense_3/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

:Transformer-MultiHeadSelfAttention/dense_3/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
í
4Transformer-MultiHeadSelfAttention/dense_3/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_3/bias/read:Transformer-MultiHeadSelfAttention/dense_3/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
á
.Transformer-MultiHeadSelfAttention/dense_3/addAdd4Transformer-MultiHeadSelfAttention/dense_3/Reshape_24Transformer-MultiHeadSelfAttention/dense_3/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
|
(Transformer-MultiHeadSelfAttention/ShapeShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:

6Transformer-MultiHeadSelfAttention/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¨
0Transformer-MultiHeadSelfAttention/strided_sliceStridedSlice(Transformer-MultiHeadSelfAttention/Shape6Transformer-MultiHeadSelfAttention/strided_slice/stack8Transformer-MultiHeadSelfAttention/strided_slice/stack_18Transformer-MultiHeadSelfAttention/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
}
2Transformer-MultiHeadSelfAttention/Reshape/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
t
2Transformer-MultiHeadSelfAttention/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
t
2Transformer-MultiHeadSelfAttention/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
À
0Transformer-MultiHeadSelfAttention/Reshape/shapePack2Transformer-MultiHeadSelfAttention/Reshape/shape/00Transformer-MultiHeadSelfAttention/strided_slice2Transformer-MultiHeadSelfAttention/Reshape/shape/22Transformer-MultiHeadSelfAttention/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:
è
*Transformer-MultiHeadSelfAttention/ReshapeReshape.Transformer-MultiHeadSelfAttention/dense_1/add0Transformer-MultiHeadSelfAttention/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
~
*Transformer-MultiHeadSelfAttention/Shape_1ShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention/strided_slice_1StridedSlice*Transformer-MultiHeadSelfAttention/Shape_18Transformer-MultiHeadSelfAttention/strided_slice_1/stack:Transformer-MultiHeadSelfAttention/strided_slice_1/stack_1:Transformer-MultiHeadSelfAttention/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention/Reshape_1/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ê
2Transformer-MultiHeadSelfAttention/Reshape_1/shapePack4Transformer-MultiHeadSelfAttention/Reshape_1/shape/02Transformer-MultiHeadSelfAttention/strided_slice_14Transformer-MultiHeadSelfAttention/Reshape_1/shape/24Transformer-MultiHeadSelfAttention/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:
ì
,Transformer-MultiHeadSelfAttention/Reshape_1Reshape.Transformer-MultiHeadSelfAttention/dense_2/add2Transformer-MultiHeadSelfAttention/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
~
*Transformer-MultiHeadSelfAttention/Shape_2ShapeEmbedding-Norm/add_1*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention/strided_slice_2StridedSlice*Transformer-MultiHeadSelfAttention/Shape_28Transformer-MultiHeadSelfAttention/strided_slice_2/stack:Transformer-MultiHeadSelfAttention/strided_slice_2/stack_1:Transformer-MultiHeadSelfAttention/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention/Reshape_2/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ê
2Transformer-MultiHeadSelfAttention/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention/Reshape_2/shape/02Transformer-MultiHeadSelfAttention/strided_slice_24Transformer-MultiHeadSelfAttention/Reshape_2/shape/24Transformer-MultiHeadSelfAttention/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:
ì
,Transformer-MultiHeadSelfAttention/Reshape_2Reshape.Transformer-MultiHeadSelfAttention/dense_3/add2Transformer-MultiHeadSelfAttention/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

8Transformer-MultiHeadSelfAttention/einsum/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ö
3Transformer-MultiHeadSelfAttention/einsum/transpose	Transpose*Transformer-MultiHeadSelfAttention/Reshape8Transformer-MultiHeadSelfAttention/einsum/transpose/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention/einsum/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
5Transformer-MultiHeadSelfAttention/einsum/transpose_1	Transpose,Transformer-MultiHeadSelfAttention/Reshape_1:Transformer-MultiHeadSelfAttention/einsum/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¢
/Transformer-MultiHeadSelfAttention/einsum/ShapeShape3Transformer-MultiHeadSelfAttention/einsum/transpose*
T0*
out_type0*
_output_shapes
:

=Transformer-MultiHeadSelfAttention/einsum/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention/einsum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention/einsum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ë
7Transformer-MultiHeadSelfAttention/einsum/strided_sliceStridedSlice/Transformer-MultiHeadSelfAttention/einsum/Shape=Transformer-MultiHeadSelfAttention/einsum/strided_slice/stack?Transformer-MultiHeadSelfAttention/einsum/strided_slice/stack_1?Transformer-MultiHeadSelfAttention/einsum/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

?Transformer-MultiHeadSelfAttention/einsum/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
9Transformer-MultiHeadSelfAttention/einsum/strided_slice_1StridedSlice/Transformer-MultiHeadSelfAttention/einsum/Shape?Transformer-MultiHeadSelfAttention/einsum/strided_slice_1/stackATransformer-MultiHeadSelfAttention/einsum/strided_slice_1/stack_1ATransformer-MultiHeadSelfAttention/einsum/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
q
/Transformer-MultiHeadSelfAttention/einsum/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Á
-Transformer-MultiHeadSelfAttention/einsum/mulMul/Transformer-MultiHeadSelfAttention/einsum/mul/x9Transformer-MultiHeadSelfAttention/einsum/strided_slice_1*
T0*
_output_shapes
: 
{
9Transformer-MultiHeadSelfAttention/einsum/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
{
9Transformer-MultiHeadSelfAttention/einsum/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
×
7Transformer-MultiHeadSelfAttention/einsum/Reshape/shapePack7Transformer-MultiHeadSelfAttention/einsum/strided_slice9Transformer-MultiHeadSelfAttention/einsum/Reshape/shape/1-Transformer-MultiHeadSelfAttention/einsum/mul9Transformer-MultiHeadSelfAttention/einsum/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:
û
1Transformer-MultiHeadSelfAttention/einsum/ReshapeReshape3Transformer-MultiHeadSelfAttention/einsum/transpose7Transformer-MultiHeadSelfAttention/einsum/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦
1Transformer-MultiHeadSelfAttention/einsum/Shape_1Shape5Transformer-MultiHeadSelfAttention/einsum/transpose_1*
T0*
out_type0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention/einsum/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention/einsum/strided_slice_2StridedSlice1Transformer-MultiHeadSelfAttention/einsum/Shape_1?Transformer-MultiHeadSelfAttention/einsum/strided_slice_2/stackATransformer-MultiHeadSelfAttention/einsum/strided_slice_2/stack_1ATransformer-MultiHeadSelfAttention/einsum/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

?Transformer-MultiHeadSelfAttention/einsum/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention/einsum/strided_slice_3StridedSlice1Transformer-MultiHeadSelfAttention/einsum/Shape_1?Transformer-MultiHeadSelfAttention/einsum/strided_slice_3/stackATransformer-MultiHeadSelfAttention/einsum/strided_slice_3/stack_1ATransformer-MultiHeadSelfAttention/einsum/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
s
1Transformer-MultiHeadSelfAttention/einsum/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Å
/Transformer-MultiHeadSelfAttention/einsum/mul_1Mul1Transformer-MultiHeadSelfAttention/einsum/mul_1/x9Transformer-MultiHeadSelfAttention/einsum/strided_slice_3*
T0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
á
9Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shapePack9Transformer-MultiHeadSelfAttention/einsum/strided_slice_2;Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shape/1;Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shape/2/Transformer-MultiHeadSelfAttention/einsum/mul_1*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention/einsum/Reshape_1Reshape5Transformer-MultiHeadSelfAttention/einsum/transpose_19Transformer-MultiHeadSelfAttention/einsum/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

0Transformer-MultiHeadSelfAttention/einsum/MatMulBatchMatMul1Transformer-MultiHeadSelfAttention/einsum/Reshape3Transformer-MultiHeadSelfAttention/einsum/Reshape_1*
T0*
adj_y( *
adj_x( *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
}
;Transformer-MultiHeadSelfAttention/einsum/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ç
9Transformer-MultiHeadSelfAttention/einsum/Reshape_2/shapePack7Transformer-MultiHeadSelfAttention/einsum/strided_slice;Transformer-MultiHeadSelfAttention/einsum/Reshape_2/shape/19Transformer-MultiHeadSelfAttention/einsum/strided_slice_19Transformer-MultiHeadSelfAttention/einsum/strided_slice_3*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention/einsum/Reshape_2Reshape0Transformer-MultiHeadSelfAttention/einsum/MatMul9Transformer-MultiHeadSelfAttention/einsum/Reshape_2/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention/einsum/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

5Transformer-MultiHeadSelfAttention/einsum/transpose_2	Transpose3Transformer-MultiHeadSelfAttention/einsum/Reshape_2:Transformer-MultiHeadSelfAttention/einsum/transpose_2/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
q
,Transformer-MultiHeadSelfAttention/truediv/yConst*
valueB
 *++£@*
dtype0*
_output_shapes
: 
æ
*Transformer-MultiHeadSelfAttention/truedivRealDiv5Transformer-MultiHeadSelfAttention/einsum/transpose_2,Transformer-MultiHeadSelfAttention/truediv/y*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
1Transformer-MultiHeadSelfAttention/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ä
-Transformer-MultiHeadSelfAttention/ExpandDims
ExpandDims)Transformer-MultiHeadSelfAttention/Cast_11Transformer-MultiHeadSelfAttention/ExpandDims/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-MultiHeadSelfAttention/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ð
/Transformer-MultiHeadSelfAttention/ExpandDims_1
ExpandDims-Transformer-MultiHeadSelfAttention/ExpandDims3Transformer-MultiHeadSelfAttention/ExpandDims_1/dim*
T0*

Tdim0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
m
(Transformer-MultiHeadSelfAttention/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
&Transformer-MultiHeadSelfAttention/subSub(Transformer-MultiHeadSelfAttention/sub/x/Transformer-MultiHeadSelfAttention/ExpandDims_1*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
m
(Transformer-MultiHeadSelfAttention/mul/yConst*
valueB
 *¥ÔhS*
dtype0*
_output_shapes
: 
Â
&Transformer-MultiHeadSelfAttention/mulMul&Transformer-MultiHeadSelfAttention/sub(Transformer-MultiHeadSelfAttention/mul/y*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ï
(Transformer-MultiHeadSelfAttention/sub_1Sub*Transformer-MultiHeadSelfAttention/truediv&Transformer-MultiHeadSelfAttention/mul*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
«
*Transformer-MultiHeadSelfAttention/SoftmaxSoftmax(Transformer-MultiHeadSelfAttention/sub_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention/einsum_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

5Transformer-MultiHeadSelfAttention/einsum_1/transpose	Transpose*Transformer-MultiHeadSelfAttention/Softmax:Transformer-MultiHeadSelfAttention/einsum_1/transpose/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention/einsum_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention/einsum_1/transpose_1	Transpose,Transformer-MultiHeadSelfAttention/Reshape_2<Transformer-MultiHeadSelfAttention/einsum_1/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦
1Transformer-MultiHeadSelfAttention/einsum_1/ShapeShape5Transformer-MultiHeadSelfAttention/einsum_1/transpose*
T0*
out_type0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention/einsum_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention/einsum_1/strided_sliceStridedSlice1Transformer-MultiHeadSelfAttention/einsum_1/Shape?Transformer-MultiHeadSelfAttention/einsum_1/strided_slice/stackATransformer-MultiHeadSelfAttention/einsum_1/strided_slice/stack_1ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_1StridedSlice1Transformer-MultiHeadSelfAttention/einsum_1/ShapeATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stackCTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stack_1CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_2StridedSlice1Transformer-MultiHeadSelfAttention/einsum_1/ShapeATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stackCTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stack_1CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
s
1Transformer-MultiHeadSelfAttention/einsum_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
/Transformer-MultiHeadSelfAttention/einsum_1/mulMul1Transformer-MultiHeadSelfAttention/einsum_1/mul/x;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_1*
T0*
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention/einsum_1/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
1Transformer-MultiHeadSelfAttention/einsum_1/mul_1Mul3Transformer-MultiHeadSelfAttention/einsum_1/mul_1/x;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_2*
T0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention/einsum_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
×
9Transformer-MultiHeadSelfAttention/einsum_1/Reshape/shapePack9Transformer-MultiHeadSelfAttention/einsum_1/strided_slice;Transformer-MultiHeadSelfAttention/einsum_1/Reshape/shape/1/Transformer-MultiHeadSelfAttention/einsum_1/mul1Transformer-MultiHeadSelfAttention/einsum_1/mul_1*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention/einsum_1/ReshapeReshape5Transformer-MultiHeadSelfAttention/einsum_1/transpose9Transformer-MultiHeadSelfAttention/einsum_1/Reshape/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention/einsum_1/Shape_1Shape7Transformer-MultiHeadSelfAttention/einsum_1/transpose_1*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_3StridedSlice3Transformer-MultiHeadSelfAttention/einsum_1/Shape_1ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stackCTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stack_1CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_4StridedSlice3Transformer-MultiHeadSelfAttention/einsum_1/Shape_1ATransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stackCTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stack_1CTransformer-MultiHeadSelfAttention/einsum_1/strided_slice_4/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ë
;Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shapePack;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_3=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shape/11Transformer-MultiHeadSelfAttention/einsum_1/mul_1=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1Reshape7Transformer-MultiHeadSelfAttention/einsum_1/transpose_1;Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention/einsum_1/MatMulBatchMatMul3Transformer-MultiHeadSelfAttention/einsum_1/Reshape5Transformer-MultiHeadSelfAttention/einsum_1/Reshape_1*
T0*
adj_y( *
adj_x( *8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ó
;Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shapePack9Transformer-MultiHeadSelfAttention/einsum_1/strided_slice=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shape/1;Transformer-MultiHeadSelfAttention/einsum_1/strided_slice_1=Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2Reshape2Transformer-MultiHeadSelfAttention/einsum_1/MatMul;Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention/einsum_1/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention/einsum_1/transpose_2	Transpose5Transformer-MultiHeadSelfAttention/einsum_1/Reshape_2<Transformer-MultiHeadSelfAttention/einsum_1/transpose_2/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¡
*Transformer-MultiHeadSelfAttention/Shape_3Shape7Transformer-MultiHeadSelfAttention/einsum_1/transpose_2*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention/strided_slice_3StridedSlice*Transformer-MultiHeadSelfAttention/Shape_38Transformer-MultiHeadSelfAttention/strided_slice_3/stack:Transformer-MultiHeadSelfAttention/strided_slice_3/stack_1:Transformer-MultiHeadSelfAttention/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention/Reshape_3/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
w
4Transformer-MultiHeadSelfAttention/Reshape_3/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

2Transformer-MultiHeadSelfAttention/Reshape_3/shapePack4Transformer-MultiHeadSelfAttention/Reshape_3/shape/02Transformer-MultiHeadSelfAttention/strided_slice_34Transformer-MultiHeadSelfAttention/Reshape_3/shape/2*

axis *
T0*
N*
_output_shapes
:
ò
,Transformer-MultiHeadSelfAttention/Reshape_3Reshape7Transformer-MultiHeadSelfAttention/einsum_1/transpose_22Transformer-MultiHeadSelfAttention/Reshape_3/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

ATransformer-MultiHeadSelfAttention/dense_4/truncated_normal/shapeConst*
valueB"8  8  *
dtype0*
_output_shapes
:

@Transformer-MultiHeadSelfAttention/dense_4/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 

BTransformer-MultiHeadSelfAttention/dense_4/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
÷
KTransformer-MultiHeadSelfAttention/dense_4/truncated_normal/TruncatedNormalTruncatedNormalATransformer-MultiHeadSelfAttention/dense_4/truncated_normal/shape*
T0*
dtype0*
seed2£F*
seed±ÿå)* 
_output_shapes
:
¸¸

?Transformer-MultiHeadSelfAttention/dense_4/truncated_normal/mulMulKTransformer-MultiHeadSelfAttention/dense_4/truncated_normal/TruncatedNormalBTransformer-MultiHeadSelfAttention/dense_4/truncated_normal/stddev*
T0* 
_output_shapes
:
¸¸
ð
;Transformer-MultiHeadSelfAttention/dense_4/truncated_normalAdd?Transformer-MultiHeadSelfAttention/dense_4/truncated_normal/mul@Transformer-MultiHeadSelfAttention/dense_4/truncated_normal/mean*
T0* 
_output_shapes
:
¸¸
©
1Transformer-MultiHeadSelfAttention/dense_4/kernel
VariableV2*
dtype0*
shared_name *
shape:
¸¸*
	container * 
_output_shapes
:
¸¸
Ì
8Transformer-MultiHeadSelfAttention/dense_4/kernel/AssignAssign1Transformer-MultiHeadSelfAttention/dense_4/kernel;Transformer-MultiHeadSelfAttention/dense_4/truncated_normal*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_4/kernel* 
_output_shapes
:
¸¸
æ
6Transformer-MultiHeadSelfAttention/dense_4/kernel/readIdentity1Transformer-MultiHeadSelfAttention/dense_4/kernel*
T0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_4/kernel* 
_output_shapes
:
¸¸

0Transformer-MultiHeadSelfAttention/dense_4/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

/Transformer-MultiHeadSelfAttention/dense_4/bias
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
¶
6Transformer-MultiHeadSelfAttention/dense_4/bias/AssignAssign/Transformer-MultiHeadSelfAttention/dense_4/bias0Transformer-MultiHeadSelfAttention/dense_4/Const*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_4/bias*
_output_shapes	
:¸
Û
4Transformer-MultiHeadSelfAttention/dense_4/bias/readIdentity/Transformer-MultiHeadSelfAttention/dense_4/bias*
T0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_4/bias*
_output_shapes	
:¸

0Transformer-MultiHeadSelfAttention/dense_4/ShapeShape,Transformer-MultiHeadSelfAttention/Reshape_3*
T0*
out_type0*
_output_shapes
:
ª
2Transformer-MultiHeadSelfAttention/dense_4/unstackUnpack0Transformer-MultiHeadSelfAttention/dense_4/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

2Transformer-MultiHeadSelfAttention/dense_4/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
¬
4Transformer-MultiHeadSelfAttention/dense_4/unstack_1Unpack2Transformer-MultiHeadSelfAttention/dense_4/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

8Transformer-MultiHeadSelfAttention/dense_4/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
æ
2Transformer-MultiHeadSelfAttention/dense_4/ReshapeReshape,Transformer-MultiHeadSelfAttention/Reshape_38Transformer-MultiHeadSelfAttention/dense_4/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

9Transformer-MultiHeadSelfAttention/dense_4/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention/dense_4/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_4/kernel/read9Transformer-MultiHeadSelfAttention/dense_4/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

:Transformer-MultiHeadSelfAttention/dense_4/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ê
4Transformer-MultiHeadSelfAttention/dense_4/Reshape_1Reshape4Transformer-MultiHeadSelfAttention/dense_4/transpose:Transformer-MultiHeadSelfAttention/dense_4/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸
þ
1Transformer-MultiHeadSelfAttention/dense_4/MatMulMatMul2Transformer-MultiHeadSelfAttention/dense_4/Reshape4Transformer-MultiHeadSelfAttention/dense_4/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention/dense_4/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¤
:Transformer-MultiHeadSelfAttention/dense_4/Reshape_2/shapePack2Transformer-MultiHeadSelfAttention/dense_4/unstack4Transformer-MultiHeadSelfAttention/dense_4/unstack:1<Transformer-MultiHeadSelfAttention/dense_4/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
ü
4Transformer-MultiHeadSelfAttention/dense_4/Reshape_2Reshape1Transformer-MultiHeadSelfAttention/dense_4/MatMul:Transformer-MultiHeadSelfAttention/dense_4/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

:Transformer-MultiHeadSelfAttention/dense_4/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
í
4Transformer-MultiHeadSelfAttention/dense_4/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_4/bias/read:Transformer-MultiHeadSelfAttention/dense_4/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
á
.Transformer-MultiHeadSelfAttention/dense_4/addAdd4Transformer-MultiHeadSelfAttention/dense_4/Reshape_24Transformer-MultiHeadSelfAttention/dense_4/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
u
3Transformer-MultiHeadSelfAttention/ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
æ
/Transformer-MultiHeadSelfAttention/ExpandDims_2
ExpandDims'Transformer-MultiHeadSelfAttention/Cast3Transformer-MultiHeadSelfAttention/ExpandDims_2/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ð
(Transformer-MultiHeadSelfAttention/mul_1Mul.Transformer-MultiHeadSelfAttention/dense_4/add/Transformer-MultiHeadSelfAttention/ExpandDims_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
±
*Transformer-MultiHeadSelfAttention-Add/addAddEmbedding-Norm/add_1(Transformer-MultiHeadSelfAttention/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
w
5Transformer-MultiHeadSelfAttention-Add/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Þ
1Transformer-MultiHeadSelfAttention-Add/ExpandDims
ExpandDimsEmbedding-Token-Segment/All5Transformer-MultiHeadSelfAttention-Add/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
y
7Transformer-MultiHeadSelfAttention-Add/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
â
3Transformer-MultiHeadSelfAttention-Add/ExpandDims_1
ExpandDimsEmbedding-Token-Segment/All7Transformer-MultiHeadSelfAttention-Add/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
2Transformer-MultiHeadSelfAttention-Add/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
©
-Transformer-MultiHeadSelfAttention-Add/concatConcatV21Transformer-MultiHeadSelfAttention-Add/ExpandDims3Transformer-MultiHeadSelfAttention-Add/ExpandDims_12Transformer-MultiHeadSelfAttention-Add/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
~
<Transformer-MultiHeadSelfAttention-Add/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
í
*Transformer-MultiHeadSelfAttention-Add/AllAll-Transformer-MultiHeadSelfAttention-Add/concat<Transformer-MultiHeadSelfAttention-Add/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
|
-Transformer-MultiHeadSelfAttention-Norm/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

,Transformer-MultiHeadSelfAttention-Norm/beta
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
ª
3Transformer-MultiHeadSelfAttention-Norm/beta/AssignAssign,Transformer-MultiHeadSelfAttention-Norm/beta-Transformer-MultiHeadSelfAttention-Norm/Const*
T0*
use_locking(*
validate_shape(*?
_class5
31loc:@Transformer-MultiHeadSelfAttention-Norm/beta*
_output_shapes	
:¸
Ò
1Transformer-MultiHeadSelfAttention-Norm/beta/readIdentity,Transformer-MultiHeadSelfAttention-Norm/beta*
T0*?
_class5
31loc:@Transformer-MultiHeadSelfAttention-Norm/beta*
_output_shapes	
:¸
~
/Transformer-MultiHeadSelfAttention-Norm/Const_1Const*
valueB¸*  ?*
dtype0*
_output_shapes	
:¸

-Transformer-MultiHeadSelfAttention-Norm/gamma
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
¯
4Transformer-MultiHeadSelfAttention-Norm/gamma/AssignAssign-Transformer-MultiHeadSelfAttention-Norm/gamma/Transformer-MultiHeadSelfAttention-Norm/Const_1*
T0*
use_locking(*
validate_shape(*@
_class6
42loc:@Transformer-MultiHeadSelfAttention-Norm/gamma*
_output_shapes	
:¸
Õ
2Transformer-MultiHeadSelfAttention-Norm/gamma/readIdentity-Transformer-MultiHeadSelfAttention-Norm/gamma*
T0*@
_class6
42loc:@Transformer-MultiHeadSelfAttention-Norm/gamma*
_output_shapes	
:¸

>Transformer-MultiHeadSelfAttention-Norm/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
ü
,Transformer-MultiHeadSelfAttention-Norm/MeanMean*Transformer-MultiHeadSelfAttention-Add/add>Transformer-MultiHeadSelfAttention-Norm/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ì
+Transformer-MultiHeadSelfAttention-Norm/subSub*Transformer-MultiHeadSelfAttention-Add/add,Transformer-MultiHeadSelfAttention-Norm/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
¥
.Transformer-MultiHeadSelfAttention-Norm/SquareSquare+Transformer-MultiHeadSelfAttention-Norm/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

@Transformer-MultiHeadSelfAttention-Norm/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

.Transformer-MultiHeadSelfAttention-Norm/Mean_1Mean.Transformer-MultiHeadSelfAttention-Norm/Square@Transformer-MultiHeadSelfAttention-Norm/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
r
-Transformer-MultiHeadSelfAttention-Norm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ð
+Transformer-MultiHeadSelfAttention-Norm/addAdd.Transformer-MultiHeadSelfAttention-Norm/Mean_1-Transformer-MultiHeadSelfAttention-Norm/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
t
/Transformer-MultiHeadSelfAttention-Norm/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 
å
=Transformer-MultiHeadSelfAttention-Norm/clip_by_value/MinimumMinimum+Transformer-MultiHeadSelfAttention-Norm/add/Transformer-MultiHeadSelfAttention-Norm/Const_3*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ï
5Transformer-MultiHeadSelfAttention-Norm/clip_by_valueMaximum=Transformer-MultiHeadSelfAttention-Norm/clip_by_value/Minimum/Transformer-MultiHeadSelfAttention-Norm/Const_2*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
,Transformer-MultiHeadSelfAttention-Norm/SqrtSqrt5Transformer-MultiHeadSelfAttention-Norm/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ
/Transformer-MultiHeadSelfAttention-Norm/truedivRealDiv+Transformer-MultiHeadSelfAttention-Norm/sub,Transformer-MultiHeadSelfAttention-Norm/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
×
+Transformer-MultiHeadSelfAttention-Norm/mulMul/Transformer-MultiHeadSelfAttention-Norm/truediv2Transformer-MultiHeadSelfAttention-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Ô
-Transformer-MultiHeadSelfAttention-Norm/add_1Add+Transformer-MultiHeadSelfAttention-Norm/mul1Transformer-MultiHeadSelfAttention-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

6Transformer-FeedForward/dense_5/truncated_normal/shapeConst*
valueB"8  à  *
dtype0*
_output_shapes
:
z
5Transformer-FeedForward/dense_5/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
7Transformer-FeedForward/dense_5/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
â
@Transformer-FeedForward/dense_5/truncated_normal/TruncatedNormalTruncatedNormal6Transformer-FeedForward/dense_5/truncated_normal/shape*
T0*
dtype0*
seed2°*
seed±ÿå)* 
_output_shapes
:
¸à	
á
4Transformer-FeedForward/dense_5/truncated_normal/mulMul@Transformer-FeedForward/dense_5/truncated_normal/TruncatedNormal7Transformer-FeedForward/dense_5/truncated_normal/stddev*
T0* 
_output_shapes
:
¸à	
Ï
0Transformer-FeedForward/dense_5/truncated_normalAdd4Transformer-FeedForward/dense_5/truncated_normal/mul5Transformer-FeedForward/dense_5/truncated_normal/mean*
T0* 
_output_shapes
:
¸à	

&Transformer-FeedForward/dense_5/kernel
VariableV2*
dtype0*
shared_name *
shape:
¸à	*
	container * 
_output_shapes
:
¸à	
 
-Transformer-FeedForward/dense_5/kernel/AssignAssign&Transformer-FeedForward/dense_5/kernel0Transformer-FeedForward/dense_5/truncated_normal*
T0*
use_locking(*
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_5/kernel* 
_output_shapes
:
¸à	
Å
+Transformer-FeedForward/dense_5/kernel/readIdentity&Transformer-FeedForward/dense_5/kernel*
T0*9
_class/
-+loc:@Transformer-FeedForward/dense_5/kernel* 
_output_shapes
:
¸à	
t
%Transformer-FeedForward/dense_5/ConstConst*
valueBà	*    *
dtype0*
_output_shapes	
:à	

$Transformer-FeedForward/dense_5/bias
VariableV2*
dtype0*
shared_name *
shape:à	*
	container *
_output_shapes	
:à	

+Transformer-FeedForward/dense_5/bias/AssignAssign$Transformer-FeedForward/dense_5/bias%Transformer-FeedForward/dense_5/Const*
T0*
use_locking(*
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_5/bias*
_output_shapes	
:à	
º
)Transformer-FeedForward/dense_5/bias/readIdentity$Transformer-FeedForward/dense_5/bias*
T0*7
_class-
+)loc:@Transformer-FeedForward/dense_5/bias*
_output_shapes	
:à	

%Transformer-FeedForward/dense_5/ShapeShape-Transformer-MultiHeadSelfAttention-Norm/add_1*
T0*
out_type0*
_output_shapes
:

'Transformer-FeedForward/dense_5/unstackUnpack%Transformer-FeedForward/dense_5/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
x
'Transformer-FeedForward/dense_5/Shape_1Const*
valueB"8  à  *
dtype0*
_output_shapes
:

)Transformer-FeedForward/dense_5/unstack_1Unpack'Transformer-FeedForward/dense_5/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 
~
-Transformer-FeedForward/dense_5/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
Ñ
'Transformer-FeedForward/dense_5/ReshapeReshape-Transformer-MultiHeadSelfAttention-Norm/add_1-Transformer-FeedForward/dense_5/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

.Transformer-FeedForward/dense_5/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ë
)Transformer-FeedForward/dense_5/transpose	Transpose+Transformer-FeedForward/dense_5/kernel/read.Transformer-FeedForward/dense_5/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸à	

/Transformer-FeedForward/dense_5/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
É
)Transformer-FeedForward/dense_5/Reshape_1Reshape)Transformer-FeedForward/dense_5/transpose/Transformer-FeedForward/dense_5/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸à	
Ý
&Transformer-FeedForward/dense_5/MatMulMatMul'Transformer-FeedForward/dense_5/Reshape)Transformer-FeedForward/dense_5/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	
t
1Transformer-FeedForward/dense_5/Reshape_2/shape/2Const*
value
B :à	*
dtype0*
_output_shapes
: 
ø
/Transformer-FeedForward/dense_5/Reshape_2/shapePack'Transformer-FeedForward/dense_5/unstack)Transformer-FeedForward/dense_5/unstack:11Transformer-FeedForward/dense_5/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
Û
)Transformer-FeedForward/dense_5/Reshape_2Reshape&Transformer-FeedForward/dense_5/MatMul/Transformer-FeedForward/dense_5/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

/Transformer-FeedForward/dense_5/Reshape_3/shapeConst*!
valueB"      à  *
dtype0*
_output_shapes
:
Ì
)Transformer-FeedForward/dense_5/Reshape_3Reshape)Transformer-FeedForward/dense_5/bias/read/Transformer-FeedForward/dense_5/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:à	
À
#Transformer-FeedForward/dense_5/addAdd)Transformer-FeedForward/dense_5/Reshape_2)Transformer-FeedForward/dense_5/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
j
%Transformer-FeedForward/dense_5/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
¶
#Transformer-FeedForward/dense_5/PowPow#Transformer-FeedForward/dense_5/add%Transformer-FeedForward/dense_5/Pow/y*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
j
%Transformer-FeedForward/dense_5/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¶
#Transformer-FeedForward/dense_5/mulMul%Transformer-FeedForward/dense_5/mul/x#Transformer-FeedForward/dense_5/Pow*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¶
%Transformer-FeedForward/dense_5/add_1Add#Transformer-FeedForward/dense_5/add#Transformer-FeedForward/dense_5/mul*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward/dense_5/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward/dense_5/mul_1Mul'Transformer-FeedForward/dense_5/mul_1/x%Transformer-FeedForward/dense_5/add_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

$Transformer-FeedForward/dense_5/TanhTanh%Transformer-FeedForward/dense_5/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward/dense_5/add_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
»
%Transformer-FeedForward/dense_5/add_2Add'Transformer-FeedForward/dense_5/add_2/x$Transformer-FeedForward/dense_5/Tanh*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward/dense_5/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward/dense_5/mul_2Mul'Transformer-FeedForward/dense_5/mul_2/x%Transformer-FeedForward/dense_5/add_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¸
%Transformer-FeedForward/dense_5/mul_3Mul#Transformer-FeedForward/dense_5/add%Transformer-FeedForward/dense_5/mul_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

6Transformer-FeedForward/dense_6/truncated_normal/shapeConst*
valueB"à  8  *
dtype0*
_output_shapes
:
z
5Transformer-FeedForward/dense_6/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
7Transformer-FeedForward/dense_6/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
â
@Transformer-FeedForward/dense_6/truncated_normal/TruncatedNormalTruncatedNormal6Transformer-FeedForward/dense_6/truncated_normal/shape*
T0*
dtype0*
seed2é¶*
seed±ÿå)* 
_output_shapes
:
à	¸
á
4Transformer-FeedForward/dense_6/truncated_normal/mulMul@Transformer-FeedForward/dense_6/truncated_normal/TruncatedNormal7Transformer-FeedForward/dense_6/truncated_normal/stddev*
T0* 
_output_shapes
:
à	¸
Ï
0Transformer-FeedForward/dense_6/truncated_normalAdd4Transformer-FeedForward/dense_6/truncated_normal/mul5Transformer-FeedForward/dense_6/truncated_normal/mean*
T0* 
_output_shapes
:
à	¸

&Transformer-FeedForward/dense_6/kernel
VariableV2*
dtype0*
shared_name *
shape:
à	¸*
	container * 
_output_shapes
:
à	¸
 
-Transformer-FeedForward/dense_6/kernel/AssignAssign&Transformer-FeedForward/dense_6/kernel0Transformer-FeedForward/dense_6/truncated_normal*
T0*
use_locking(*
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_6/kernel* 
_output_shapes
:
à	¸
Å
+Transformer-FeedForward/dense_6/kernel/readIdentity&Transformer-FeedForward/dense_6/kernel*
T0*9
_class/
-+loc:@Transformer-FeedForward/dense_6/kernel* 
_output_shapes
:
à	¸
t
%Transformer-FeedForward/dense_6/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

$Transformer-FeedForward/dense_6/bias
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸

+Transformer-FeedForward/dense_6/bias/AssignAssign$Transformer-FeedForward/dense_6/bias%Transformer-FeedForward/dense_6/Const*
T0*
use_locking(*
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_6/bias*
_output_shapes	
:¸
º
)Transformer-FeedForward/dense_6/bias/readIdentity$Transformer-FeedForward/dense_6/bias*
T0*7
_class-
+)loc:@Transformer-FeedForward/dense_6/bias*
_output_shapes	
:¸

%Transformer-FeedForward/dense_6/ShapeShape%Transformer-FeedForward/dense_5/mul_3*
T0*
out_type0*
_output_shapes
:

'Transformer-FeedForward/dense_6/unstackUnpack%Transformer-FeedForward/dense_6/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
x
'Transformer-FeedForward/dense_6/Shape_1Const*
valueB"à  8  *
dtype0*
_output_shapes
:

)Transformer-FeedForward/dense_6/unstack_1Unpack'Transformer-FeedForward/dense_6/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 
~
-Transformer-FeedForward/dense_6/Reshape/shapeConst*
valueB"ÿÿÿÿà  *
dtype0*
_output_shapes
:
É
'Transformer-FeedForward/dense_6/ReshapeReshape%Transformer-FeedForward/dense_5/mul_3-Transformer-FeedForward/dense_6/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	

.Transformer-FeedForward/dense_6/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ë
)Transformer-FeedForward/dense_6/transpose	Transpose+Transformer-FeedForward/dense_6/kernel/read.Transformer-FeedForward/dense_6/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
à	¸

/Transformer-FeedForward/dense_6/Reshape_1/shapeConst*
valueB"à  ÿÿÿÿ*
dtype0*
_output_shapes
:
É
)Transformer-FeedForward/dense_6/Reshape_1Reshape)Transformer-FeedForward/dense_6/transpose/Transformer-FeedForward/dense_6/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
à	¸
Ý
&Transformer-FeedForward/dense_6/MatMulMatMul'Transformer-FeedForward/dense_6/Reshape)Transformer-FeedForward/dense_6/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
t
1Transformer-FeedForward/dense_6/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
ø
/Transformer-FeedForward/dense_6/Reshape_2/shapePack'Transformer-FeedForward/dense_6/unstack)Transformer-FeedForward/dense_6/unstack:11Transformer-FeedForward/dense_6/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
Û
)Transformer-FeedForward/dense_6/Reshape_2Reshape&Transformer-FeedForward/dense_6/MatMul/Transformer-FeedForward/dense_6/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

/Transformer-FeedForward/dense_6/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
Ì
)Transformer-FeedForward/dense_6/Reshape_3Reshape)Transformer-FeedForward/dense_6/bias/read/Transformer-FeedForward/dense_6/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
À
#Transformer-FeedForward/dense_6/addAdd)Transformer-FeedForward/dense_6/Reshape_2)Transformer-FeedForward/dense_6/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
º
Transformer-FeedForward-Add/addAdd-Transformer-MultiHeadSelfAttention-Norm/add_1#Transformer-FeedForward/dense_6/add*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
l
*Transformer-FeedForward-Add/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
×
&Transformer-FeedForward-Add/ExpandDims
ExpandDims*Transformer-MultiHeadSelfAttention-Add/All*Transformer-FeedForward-Add/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
n
,Transformer-FeedForward-Add/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Û
(Transformer-FeedForward-Add/ExpandDims_1
ExpandDims*Transformer-MultiHeadSelfAttention-Add/All,Transformer-FeedForward-Add/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
'Transformer-FeedForward-Add/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ý
"Transformer-FeedForward-Add/concatConcatV2&Transformer-FeedForward-Add/ExpandDims(Transformer-FeedForward-Add/ExpandDims_1'Transformer-FeedForward-Add/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
1Transformer-FeedForward-Add/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
Ì
Transformer-FeedForward-Add/AllAll"Transformer-FeedForward-Add/concat1Transformer-FeedForward-Add/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
q
"Transformer-FeedForward-Norm/ConstConst*
valueB¸*    *
dtype0*
_output_shapes	
:¸

!Transformer-FeedForward-Norm/beta
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸
þ
(Transformer-FeedForward-Norm/beta/AssignAssign!Transformer-FeedForward-Norm/beta"Transformer-FeedForward-Norm/Const*
T0*
use_locking(*
validate_shape(*4
_class*
(&loc:@Transformer-FeedForward-Norm/beta*
_output_shapes	
:¸
±
&Transformer-FeedForward-Norm/beta/readIdentity!Transformer-FeedForward-Norm/beta*
T0*4
_class*
(&loc:@Transformer-FeedForward-Norm/beta*
_output_shapes	
:¸
s
$Transformer-FeedForward-Norm/Const_1Const*
valueB¸*  ?*
dtype0*
_output_shapes	
:¸

"Transformer-FeedForward-Norm/gamma
VariableV2*
dtype0*
shared_name *
shape:¸*
	container *
_output_shapes	
:¸

)Transformer-FeedForward-Norm/gamma/AssignAssign"Transformer-FeedForward-Norm/gamma$Transformer-FeedForward-Norm/Const_1*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@Transformer-FeedForward-Norm/gamma*
_output_shapes	
:¸
´
'Transformer-FeedForward-Norm/gamma/readIdentity"Transformer-FeedForward-Norm/gamma*
T0*5
_class+
)'loc:@Transformer-FeedForward-Norm/gamma*
_output_shapes	
:¸
~
3Transformer-FeedForward-Norm/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
Û
!Transformer-FeedForward-Norm/MeanMeanTransformer-FeedForward-Add/add3Transformer-FeedForward-Norm/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
«
 Transformer-FeedForward-Norm/subSubTransformer-FeedForward-Add/add!Transformer-FeedForward-Norm/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

#Transformer-FeedForward-Norm/SquareSquare Transformer-FeedForward-Norm/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

5Transformer-FeedForward-Norm/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
ã
#Transformer-FeedForward-Norm/Mean_1Mean#Transformer-FeedForward-Norm/Square5Transformer-FeedForward-Norm/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
g
"Transformer-FeedForward-Norm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
¯
 Transformer-FeedForward-Norm/addAdd#Transformer-FeedForward-Norm/Mean_1"Transformer-FeedForward-Norm/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$Transformer-FeedForward-Norm/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ä
2Transformer-FeedForward-Norm/clip_by_value/MinimumMinimum Transformer-FeedForward-Norm/add$Transformer-FeedForward-Norm/Const_3*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Î
*Transformer-FeedForward-Norm/clip_by_valueMaximum2Transformer-FeedForward-Norm/clip_by_value/Minimum$Transformer-FeedForward-Norm/Const_2*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

!Transformer-FeedForward-Norm/SqrtSqrt*Transformer-FeedForward-Norm/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´
$Transformer-FeedForward-Norm/truedivRealDiv Transformer-FeedForward-Norm/sub!Transformer-FeedForward-Norm/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
¶
 Transformer-FeedForward-Norm/mulMul$Transformer-FeedForward-Norm/truediv'Transformer-FeedForward-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
³
"Transformer-FeedForward-Norm/add_1Add Transformer-FeedForward-Norm/mul&Transformer-FeedForward-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
¬
)Transformer-MultiHeadSelfAttention_1/CastCastTransformer-FeedForward-Add/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
+Transformer-MultiHeadSelfAttention_1/Cast_1CastTransformer-FeedForward-Add/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_1/dense_1/ShapeShape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_1/dense_1/unstackUnpack2Transformer-MultiHeadSelfAttention_1/dense_1/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_1/dense_1/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_1/dense_1/unstack_1Unpack4Transformer-MultiHeadSelfAttention_1/dense_1/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_1/dense_1/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
à
4Transformer-MultiHeadSelfAttention_1/dense_1/ReshapeReshape"Transformer-FeedForward-Norm/add_1:Transformer-MultiHeadSelfAttention_1/dense_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_1/dense_1/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_1/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_1/kernel/read;Transformer-MultiHeadSelfAttention_1/dense_1/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_1/dense_1/transpose<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_1/dense_1/MatMulMatMul4Transformer-MultiHeadSelfAttention_1/dense_1/Reshape6Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_1/dense_1/unstack6Transformer-MultiHeadSelfAttention_1/dense_1/unstack:1>Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_1/dense_1/MatMul<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_1/bias/read<Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_1/dense_1/addAdd6Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_26Transformer-MultiHeadSelfAttention_1/dense_1/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_1/dense_2/ShapeShape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_1/dense_2/unstackUnpack2Transformer-MultiHeadSelfAttention_1/dense_2/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_1/dense_2/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_1/dense_2/unstack_1Unpack4Transformer-MultiHeadSelfAttention_1/dense_2/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_1/dense_2/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
à
4Transformer-MultiHeadSelfAttention_1/dense_2/ReshapeReshape"Transformer-FeedForward-Norm/add_1:Transformer-MultiHeadSelfAttention_1/dense_2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_1/dense_2/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_2/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_2/kernel/read;Transformer-MultiHeadSelfAttention_1/dense_2/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_1/dense_2/transpose<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_1/dense_2/MatMulMatMul4Transformer-MultiHeadSelfAttention_1/dense_2/Reshape6Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_1/dense_2/unstack6Transformer-MultiHeadSelfAttention_1/dense_2/unstack:1>Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_1/dense_2/MatMul<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_2/bias/read<Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_1/dense_2/addAdd6Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_26Transformer-MultiHeadSelfAttention_1/dense_2/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_1/dense_3/ShapeShape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_1/dense_3/unstackUnpack2Transformer-MultiHeadSelfAttention_1/dense_3/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_1/dense_3/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_1/dense_3/unstack_1Unpack4Transformer-MultiHeadSelfAttention_1/dense_3/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_1/dense_3/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
à
4Transformer-MultiHeadSelfAttention_1/dense_3/ReshapeReshape"Transformer-FeedForward-Norm/add_1:Transformer-MultiHeadSelfAttention_1/dense_3/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_1/dense_3/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_3/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_3/kernel/read;Transformer-MultiHeadSelfAttention_1/dense_3/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_1/dense_3/transpose<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_1/dense_3/MatMulMatMul4Transformer-MultiHeadSelfAttention_1/dense_3/Reshape6Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_1/dense_3/unstack6Transformer-MultiHeadSelfAttention_1/dense_3/unstack:1>Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_1/dense_3/MatMul<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_3/bias/read<Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_1/dense_3/addAdd6Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_26Transformer-MultiHeadSelfAttention_1/dense_3/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

*Transformer-MultiHeadSelfAttention_1/ShapeShape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention_1/strided_sliceStridedSlice*Transformer-MultiHeadSelfAttention_1/Shape8Transformer-MultiHeadSelfAttention_1/strided_slice/stack:Transformer-MultiHeadSelfAttention_1/strided_slice/stack_1:Transformer-MultiHeadSelfAttention_1/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_1/Reshape/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_1/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_1/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ê
2Transformer-MultiHeadSelfAttention_1/Reshape/shapePack4Transformer-MultiHeadSelfAttention_1/Reshape/shape/02Transformer-MultiHeadSelfAttention_1/strided_slice4Transformer-MultiHeadSelfAttention_1/Reshape/shape/24Transformer-MultiHeadSelfAttention_1/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:
î
,Transformer-MultiHeadSelfAttention_1/ReshapeReshape0Transformer-MultiHeadSelfAttention_1/dense_1/add2Transformer-MultiHeadSelfAttention_1/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_1/Shape_1Shape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_1/strided_slice_1StridedSlice,Transformer-MultiHeadSelfAttention_1/Shape_1:Transformer-MultiHeadSelfAttention_1/strided_slice_1/stack<Transformer-MultiHeadSelfAttention_1/strided_slice_1/stack_1<Transformer-MultiHeadSelfAttention_1/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_1/Reshape_1/shapePack6Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/04Transformer-MultiHeadSelfAttention_1/strided_slice_16Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/26Transformer-MultiHeadSelfAttention_1/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_1/Reshape_1Reshape0Transformer-MultiHeadSelfAttention_1/dense_2/add4Transformer-MultiHeadSelfAttention_1/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_1/Shape_2Shape"Transformer-FeedForward-Norm/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_1/strided_slice_2StridedSlice,Transformer-MultiHeadSelfAttention_1/Shape_2:Transformer-MultiHeadSelfAttention_1/strided_slice_2/stack<Transformer-MultiHeadSelfAttention_1/strided_slice_2/stack_1<Transformer-MultiHeadSelfAttention_1/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_1/Reshape_2/shapePack6Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/04Transformer-MultiHeadSelfAttention_1/strided_slice_26Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/26Transformer-MultiHeadSelfAttention_1/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_1/Reshape_2Reshape0Transformer-MultiHeadSelfAttention_1/dense_3/add4Transformer-MultiHeadSelfAttention_1/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention_1/einsum/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
5Transformer-MultiHeadSelfAttention_1/einsum/transpose	Transpose,Transformer-MultiHeadSelfAttention_1/Reshape:Transformer-MultiHeadSelfAttention_1/einsum/transpose/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_1/einsum/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_1/einsum/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_1/Reshape_1<Transformer-MultiHeadSelfAttention_1/einsum/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦
1Transformer-MultiHeadSelfAttention_1/einsum/ShapeShape5Transformer-MultiHeadSelfAttention_1/einsum/transpose*
T0*
out_type0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention_1/einsum/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention_1/einsum/strided_sliceStridedSlice1Transformer-MultiHeadSelfAttention_1/einsum/Shape?Transformer-MultiHeadSelfAttention_1/einsum/strided_slice/stackATransformer-MultiHeadSelfAttention_1/einsum/strided_slice/stack_1ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_1StridedSlice1Transformer-MultiHeadSelfAttention_1/einsum/ShapeATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stackCTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stack_1CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
s
1Transformer-MultiHeadSelfAttention_1/einsum/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
/Transformer-MultiHeadSelfAttention_1/einsum/mulMul1Transformer-MultiHeadSelfAttention_1/einsum/mul/x;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_1*
T0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
á
9Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shapePack9Transformer-MultiHeadSelfAttention_1/einsum/strided_slice;Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shape/1/Transformer-MultiHeadSelfAttention_1/einsum/mul;Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention_1/einsum/ReshapeReshape5Transformer-MultiHeadSelfAttention_1/einsum/transpose9Transformer-MultiHeadSelfAttention_1/einsum/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_1/einsum/Shape_1Shape7Transformer-MultiHeadSelfAttention_1/einsum/transpose_1*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_1/einsum/Shape_1ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stackCTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stack_1CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_3StridedSlice3Transformer-MultiHeadSelfAttention_1/einsum/Shape_1ATransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stackCTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stack_1CTransformer-MultiHeadSelfAttention_1/einsum/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_1/einsum/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
1Transformer-MultiHeadSelfAttention_1/einsum/mul_1Mul3Transformer-MultiHeadSelfAttention_1/einsum/mul_1/x;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_3*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
ë
;Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shapePack;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_2=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shape/1=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shape/21Transformer-MultiHeadSelfAttention_1/einsum/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1Reshape7Transformer-MultiHeadSelfAttention_1/einsum/transpose_1;Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_1/einsum/MatMulBatchMatMul3Transformer-MultiHeadSelfAttention_1/einsum/Reshape5Transformer-MultiHeadSelfAttention_1/einsum/Reshape_1*
T0*
adj_y( *
adj_x( *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ñ
;Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2/shapePack9Transformer-MultiHeadSelfAttention_1/einsum/strided_slice=Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2/shape/1;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_1;Transformer-MultiHeadSelfAttention_1/einsum/strided_slice_3*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2Reshape2Transformer-MultiHeadSelfAttention_1/einsum/MatMul;Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_1/einsum/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_1/einsum/transpose_2	Transpose5Transformer-MultiHeadSelfAttention_1/einsum/Reshape_2<Transformer-MultiHeadSelfAttention_1/einsum/transpose_2/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
.Transformer-MultiHeadSelfAttention_1/truediv/yConst*
valueB
 *++£@*
dtype0*
_output_shapes
: 
ì
,Transformer-MultiHeadSelfAttention_1/truedivRealDiv7Transformer-MultiHeadSelfAttention_1/einsum/transpose_2.Transformer-MultiHeadSelfAttention_1/truediv/y*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-MultiHeadSelfAttention_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ê
/Transformer-MultiHeadSelfAttention_1/ExpandDims
ExpandDims+Transformer-MultiHeadSelfAttention_1/Cast_13Transformer-MultiHeadSelfAttention_1/ExpandDims/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
w
5Transformer-MultiHeadSelfAttention_1/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ö
1Transformer-MultiHeadSelfAttention_1/ExpandDims_1
ExpandDims/Transformer-MultiHeadSelfAttention_1/ExpandDims5Transformer-MultiHeadSelfAttention_1/ExpandDims_1/dim*
T0*

Tdim0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_1/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ñ
(Transformer-MultiHeadSelfAttention_1/subSub*Transformer-MultiHeadSelfAttention_1/sub/x1Transformer-MultiHeadSelfAttention_1/ExpandDims_1*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_1/mul/yConst*
valueB
 *¥ÔhS*
dtype0*
_output_shapes
: 
È
(Transformer-MultiHeadSelfAttention_1/mulMul(Transformer-MultiHeadSelfAttention_1/sub*Transformer-MultiHeadSelfAttention_1/mul/y*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ
*Transformer-MultiHeadSelfAttention_1/sub_1Sub,Transformer-MultiHeadSelfAttention_1/truediv(Transformer-MultiHeadSelfAttention_1/mul*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯
,Transformer-MultiHeadSelfAttention_1/SoftmaxSoftmax*Transformer-MultiHeadSelfAttention_1/sub_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_1/einsum_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_1/einsum_1/transpose	Transpose,Transformer-MultiHeadSelfAttention_1/Softmax<Transformer-MultiHeadSelfAttention_1/einsum_1/transpose/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_1/Reshape_2>Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_1/einsum_1/ShapeShape7Transformer-MultiHeadSelfAttention_1/einsum_1/transpose*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_1/einsum_1/strided_sliceStridedSlice3Transformer-MultiHeadSelfAttention_1/einsum_1/ShapeATransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stackCTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stack_1CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1StridedSlice3Transformer-MultiHeadSelfAttention_1/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stackETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stack_1ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_1/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stackETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stack_1ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_1/einsum_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Í
1Transformer-MultiHeadSelfAttention_1/einsum_1/mulMul3Transformer-MultiHeadSelfAttention_1/einsum_1/mul/x=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1*
T0*
_output_shapes
: 
w
5Transformer-MultiHeadSelfAttention_1/einsum_1/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Transformer-MultiHeadSelfAttention_1/einsum_1/mul_1Mul5Transformer-MultiHeadSelfAttention_1/einsum_1/mul_1/x=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_2*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
á
;Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape/shapePack;Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape/shape/11Transformer-MultiHeadSelfAttention_1/einsum_1/mul3Transformer-MultiHeadSelfAttention_1/einsum_1/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_1/einsum_1/ReshapeReshape7Transformer-MultiHeadSelfAttention_1/einsum_1/transpose;Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
5Transformer-MultiHeadSelfAttention_1/einsum_1/Shape_1Shape9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_1*
T0*
out_type0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3StridedSlice5Transformer-MultiHeadSelfAttention_1/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stackETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stack_1ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4StridedSlice5Transformer-MultiHeadSelfAttention_1/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stackETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stack_1ETransformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_4/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
õ
=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shapePack=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_3?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shape/13Transformer-MultiHeadSelfAttention_1/einsum_1/mul_1?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1Reshape9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_1=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

4Transformer-MultiHeadSelfAttention_1/einsum_1/MatMulBatchMatMul5Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape7Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_1*
T0*
adj_y( *
adj_x( *8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ý
=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shapePack;Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shape/1=Transformer-MultiHeadSelfAttention_1/einsum_1/strided_slice_1?Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2Reshape4Transformer-MultiHeadSelfAttention_1/einsum_1/MatMul=Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_2	Transpose7Transformer-MultiHeadSelfAttention_1/einsum_1/Reshape_2>Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_2/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¥
,Transformer-MultiHeadSelfAttention_1/Shape_3Shape9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_2*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_1/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_1/strided_slice_3StridedSlice,Transformer-MultiHeadSelfAttention_1/Shape_3:Transformer-MultiHeadSelfAttention_1/strided_slice_3/stack<Transformer-MultiHeadSelfAttention_1/strided_slice_3/stack_1<Transformer-MultiHeadSelfAttention_1/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_1/Reshape_3/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
y
6Transformer-MultiHeadSelfAttention_1/Reshape_3/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_1/Reshape_3/shapePack6Transformer-MultiHeadSelfAttention_1/Reshape_3/shape/04Transformer-MultiHeadSelfAttention_1/strided_slice_36Transformer-MultiHeadSelfAttention_1/Reshape_3/shape/2*

axis *
T0*
N*
_output_shapes
:
ø
.Transformer-MultiHeadSelfAttention_1/Reshape_3Reshape9Transformer-MultiHeadSelfAttention_1/einsum_1/transpose_24Transformer-MultiHeadSelfAttention_1/Reshape_3/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
 
2Transformer-MultiHeadSelfAttention_1/dense_4/ShapeShape.Transformer-MultiHeadSelfAttention_1/Reshape_3*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_1/dense_4/unstackUnpack2Transformer-MultiHeadSelfAttention_1/dense_4/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_1/dense_4/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_1/dense_4/unstack_1Unpack4Transformer-MultiHeadSelfAttention_1/dense_4/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_1/dense_4/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention_1/dense_4/ReshapeReshape.Transformer-MultiHeadSelfAttention_1/Reshape_3:Transformer-MultiHeadSelfAttention_1/dense_4/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_1/dense_4/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_4/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_4/kernel/read;Transformer-MultiHeadSelfAttention_1/dense_4/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_1/dense_4/transpose<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_1/dense_4/MatMulMatMul4Transformer-MultiHeadSelfAttention_1/dense_4/Reshape6Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_1/dense_4/unstack6Transformer-MultiHeadSelfAttention_1/dense_4/unstack:1>Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_1/dense_4/MatMul<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_4/bias/read<Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_1/dense_4/addAdd6Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_26Transformer-MultiHeadSelfAttention_1/dense_4/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
w
5Transformer-MultiHeadSelfAttention_1/ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ì
1Transformer-MultiHeadSelfAttention_1/ExpandDims_2
ExpandDims)Transformer-MultiHeadSelfAttention_1/Cast5Transformer-MultiHeadSelfAttention_1/ExpandDims_2/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ö
*Transformer-MultiHeadSelfAttention_1/mul_1Mul0Transformer-MultiHeadSelfAttention_1/dense_4/add1Transformer-MultiHeadSelfAttention_1/ExpandDims_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Ã
,Transformer-MultiHeadSelfAttention-Add_1/addAdd"Transformer-FeedForward-Norm/add_1*Transformer-MultiHeadSelfAttention_1/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
y
7Transformer-MultiHeadSelfAttention-Add_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
æ
3Transformer-MultiHeadSelfAttention-Add_1/ExpandDims
ExpandDimsTransformer-FeedForward-Add/All7Transformer-MultiHeadSelfAttention-Add_1/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
{
9Transformer-MultiHeadSelfAttention-Add_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ê
5Transformer-MultiHeadSelfAttention-Add_1/ExpandDims_1
ExpandDimsTransformer-FeedForward-Add/All9Transformer-MultiHeadSelfAttention-Add_1/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
v
4Transformer-MultiHeadSelfAttention-Add_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
/Transformer-MultiHeadSelfAttention-Add_1/concatConcatV23Transformer-MultiHeadSelfAttention-Add_1/ExpandDims5Transformer-MultiHeadSelfAttention-Add_1/ExpandDims_14Transformer-MultiHeadSelfAttention-Add_1/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention-Add_1/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
ó
,Transformer-MultiHeadSelfAttention-Add_1/AllAll/Transformer-MultiHeadSelfAttention-Add_1/concat>Transformer-MultiHeadSelfAttention-Add_1/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

@Transformer-MultiHeadSelfAttention-Norm_1/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

.Transformer-MultiHeadSelfAttention-Norm_1/MeanMean,Transformer-MultiHeadSelfAttention-Add_1/add@Transformer-MultiHeadSelfAttention-Norm_1/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
-Transformer-MultiHeadSelfAttention-Norm_1/subSub,Transformer-MultiHeadSelfAttention-Add_1/add.Transformer-MultiHeadSelfAttention-Norm_1/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
©
0Transformer-MultiHeadSelfAttention-Norm_1/SquareSquare-Transformer-MultiHeadSelfAttention-Norm_1/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

BTransformer-MultiHeadSelfAttention-Norm_1/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

0Transformer-MultiHeadSelfAttention-Norm_1/Mean_1Mean0Transformer-MultiHeadSelfAttention-Norm_1/SquareBTransformer-MultiHeadSelfAttention-Norm_1/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_1/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ö
-Transformer-MultiHeadSelfAttention-Norm_1/addAdd0Transformer-MultiHeadSelfAttention-Norm_1/Mean_1/Transformer-MultiHeadSelfAttention-Norm_1/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
1Transformer-MultiHeadSelfAttention-Norm_1/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
ë
?Transformer-MultiHeadSelfAttention-Norm_1/clip_by_value/MinimumMinimum-Transformer-MultiHeadSelfAttention-Norm_1/add1Transformer-MultiHeadSelfAttention-Norm_1/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ó
7Transformer-MultiHeadSelfAttention-Norm_1/clip_by_valueMaximum?Transformer-MultiHeadSelfAttention-Norm_1/clip_by_value/Minimum/Transformer-MultiHeadSelfAttention-Norm_1/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
.Transformer-MultiHeadSelfAttention-Norm_1/SqrtSqrt7Transformer-MultiHeadSelfAttention-Norm_1/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Û
1Transformer-MultiHeadSelfAttention-Norm_1/truedivRealDiv-Transformer-MultiHeadSelfAttention-Norm_1/sub.Transformer-MultiHeadSelfAttention-Norm_1/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Û
-Transformer-MultiHeadSelfAttention-Norm_1/mulMul1Transformer-MultiHeadSelfAttention-Norm_1/truediv2Transformer-MultiHeadSelfAttention-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Ø
/Transformer-MultiHeadSelfAttention-Norm_1/add_1Add-Transformer-MultiHeadSelfAttention-Norm_1/mul1Transformer-MultiHeadSelfAttention-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

'Transformer-FeedForward_1/dense_5/ShapeShape/Transformer-MultiHeadSelfAttention-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_1/dense_5/unstackUnpack'Transformer-FeedForward_1/dense_5/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_1/dense_5/Shape_1Const*
valueB"8  à  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_1/dense_5/unstack_1Unpack)Transformer-FeedForward_1/dense_5/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_1/dense_5/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
×
)Transformer-FeedForward_1/dense_5/ReshapeReshape/Transformer-MultiHeadSelfAttention-Norm_1/add_1/Transformer-FeedForward_1/dense_5/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

0Transformer-FeedForward_1/dense_5/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_1/dense_5/transpose	Transpose+Transformer-FeedForward/dense_5/kernel/read0Transformer-FeedForward_1/dense_5/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸à	

1Transformer-FeedForward_1/dense_5/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_1/dense_5/Reshape_1Reshape+Transformer-FeedForward_1/dense_5/transpose1Transformer-FeedForward_1/dense_5/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸à	
ã
(Transformer-FeedForward_1/dense_5/MatMulMatMul)Transformer-FeedForward_1/dense_5/Reshape+Transformer-FeedForward_1/dense_5/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	
v
3Transformer-FeedForward_1/dense_5/Reshape_2/shape/2Const*
value
B :à	*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_1/dense_5/Reshape_2/shapePack)Transformer-FeedForward_1/dense_5/unstack+Transformer-FeedForward_1/dense_5/unstack:13Transformer-FeedForward_1/dense_5/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_1/dense_5/Reshape_2Reshape(Transformer-FeedForward_1/dense_5/MatMul1Transformer-FeedForward_1/dense_5/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

1Transformer-FeedForward_1/dense_5/Reshape_3/shapeConst*!
valueB"      à  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_1/dense_5/Reshape_3Reshape)Transformer-FeedForward/dense_5/bias/read1Transformer-FeedForward_1/dense_5/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:à	
Æ
%Transformer-FeedForward_1/dense_5/addAdd+Transformer-FeedForward_1/dense_5/Reshape_2+Transformer-FeedForward_1/dense_5/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_1/dense_5/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_1/dense_5/PowPow%Transformer-FeedForward_1/dense_5/add'Transformer-FeedForward_1/dense_5/Pow/y*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_1/dense_5/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_1/dense_5/mulMul'Transformer-FeedForward_1/dense_5/mul/x%Transformer-FeedForward_1/dense_5/Pow*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¼
'Transformer-FeedForward_1/dense_5/add_1Add%Transformer-FeedForward_1/dense_5/add%Transformer-FeedForward_1/dense_5/mul*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_1/dense_5/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_1/dense_5/mul_1Mul)Transformer-FeedForward_1/dense_5/mul_1/x'Transformer-FeedForward_1/dense_5/add_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

&Transformer-FeedForward_1/dense_5/TanhTanh'Transformer-FeedForward_1/dense_5/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_1/dense_5/add_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Á
'Transformer-FeedForward_1/dense_5/add_2Add)Transformer-FeedForward_1/dense_5/add_2/x&Transformer-FeedForward_1/dense_5/Tanh*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_1/dense_5/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_1/dense_5/mul_2Mul)Transformer-FeedForward_1/dense_5/mul_2/x'Transformer-FeedForward_1/dense_5/add_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¾
'Transformer-FeedForward_1/dense_5/mul_3Mul%Transformer-FeedForward_1/dense_5/add'Transformer-FeedForward_1/dense_5/mul_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

'Transformer-FeedForward_1/dense_6/ShapeShape'Transformer-FeedForward_1/dense_5/mul_3*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_1/dense_6/unstackUnpack'Transformer-FeedForward_1/dense_6/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_1/dense_6/Shape_1Const*
valueB"à  8  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_1/dense_6/unstack_1Unpack)Transformer-FeedForward_1/dense_6/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_1/dense_6/Reshape/shapeConst*
valueB"ÿÿÿÿà  *
dtype0*
_output_shapes
:
Ï
)Transformer-FeedForward_1/dense_6/ReshapeReshape'Transformer-FeedForward_1/dense_5/mul_3/Transformer-FeedForward_1/dense_6/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	

0Transformer-FeedForward_1/dense_6/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_1/dense_6/transpose	Transpose+Transformer-FeedForward/dense_6/kernel/read0Transformer-FeedForward_1/dense_6/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
à	¸

1Transformer-FeedForward_1/dense_6/Reshape_1/shapeConst*
valueB"à  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_1/dense_6/Reshape_1Reshape+Transformer-FeedForward_1/dense_6/transpose1Transformer-FeedForward_1/dense_6/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
à	¸
ã
(Transformer-FeedForward_1/dense_6/MatMulMatMul)Transformer-FeedForward_1/dense_6/Reshape+Transformer-FeedForward_1/dense_6/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
v
3Transformer-FeedForward_1/dense_6/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_1/dense_6/Reshape_2/shapePack)Transformer-FeedForward_1/dense_6/unstack+Transformer-FeedForward_1/dense_6/unstack:13Transformer-FeedForward_1/dense_6/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_1/dense_6/Reshape_2Reshape(Transformer-FeedForward_1/dense_6/MatMul1Transformer-FeedForward_1/dense_6/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

1Transformer-FeedForward_1/dense_6/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_1/dense_6/Reshape_3Reshape)Transformer-FeedForward/dense_6/bias/read1Transformer-FeedForward_1/dense_6/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
Æ
%Transformer-FeedForward_1/dense_6/addAdd+Transformer-FeedForward_1/dense_6/Reshape_2+Transformer-FeedForward_1/dense_6/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
À
!Transformer-FeedForward-Add_1/addAdd/Transformer-MultiHeadSelfAttention-Norm_1/add_1%Transformer-FeedForward_1/dense_6/add*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
n
,Transformer-FeedForward-Add_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ý
(Transformer-FeedForward-Add_1/ExpandDims
ExpandDims,Transformer-MultiHeadSelfAttention-Add_1/All,Transformer-FeedForward-Add_1/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
.Transformer-FeedForward-Add_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
á
*Transformer-FeedForward-Add_1/ExpandDims_1
ExpandDims,Transformer-MultiHeadSelfAttention-Add_1/All.Transformer-FeedForward-Add_1/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
k
)Transformer-FeedForward-Add_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

$Transformer-FeedForward-Add_1/concatConcatV2(Transformer-FeedForward-Add_1/ExpandDims*Transformer-FeedForward-Add_1/ExpandDims_1)Transformer-FeedForward-Add_1/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-FeedForward-Add_1/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
Ò
!Transformer-FeedForward-Add_1/AllAll$Transformer-FeedForward-Add_1/concat3Transformer-FeedForward-Add_1/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5Transformer-FeedForward-Norm_1/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
á
#Transformer-FeedForward-Norm_1/MeanMean!Transformer-FeedForward-Add_1/add5Transformer-FeedForward-Norm_1/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±
"Transformer-FeedForward-Norm_1/subSub!Transformer-FeedForward-Add_1/add#Transformer-FeedForward-Norm_1/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

%Transformer-FeedForward-Norm_1/SquareSquare"Transformer-FeedForward-Norm_1/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

7Transformer-FeedForward-Norm_1/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
é
%Transformer-FeedForward-Norm_1/Mean_1Mean%Transformer-FeedForward-Norm_1/Square7Transformer-FeedForward-Norm_1/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_1/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
µ
"Transformer-FeedForward-Norm_1/addAdd%Transformer-FeedForward-Norm_1/Mean_1$Transformer-FeedForward-Norm_1/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&Transformer-FeedForward-Norm_1/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ê
4Transformer-FeedForward-Norm_1/clip_by_value/MinimumMinimum"Transformer-FeedForward-Norm_1/add&Transformer-FeedForward-Norm_1/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
,Transformer-FeedForward-Norm_1/clip_by_valueMaximum4Transformer-FeedForward-Norm_1/clip_by_value/Minimum$Transformer-FeedForward-Norm_1/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

#Transformer-FeedForward-Norm_1/SqrtSqrt,Transformer-FeedForward-Norm_1/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
º
&Transformer-FeedForward-Norm_1/truedivRealDiv"Transformer-FeedForward-Norm_1/sub#Transformer-FeedForward-Norm_1/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
º
"Transformer-FeedForward-Norm_1/mulMul&Transformer-FeedForward-Norm_1/truediv'Transformer-FeedForward-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
·
$Transformer-FeedForward-Norm_1/add_1Add"Transformer-FeedForward-Norm_1/mul&Transformer-FeedForward-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
®
)Transformer-MultiHeadSelfAttention_2/CastCast!Transformer-FeedForward-Add_1/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
°
+Transformer-MultiHeadSelfAttention_2/Cast_1Cast!Transformer-FeedForward-Add_1/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_2/dense_1/ShapeShape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_2/dense_1/unstackUnpack2Transformer-MultiHeadSelfAttention_2/dense_1/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_2/dense_1/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_2/dense_1/unstack_1Unpack4Transformer-MultiHeadSelfAttention_2/dense_1/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_2/dense_1/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_2/dense_1/ReshapeReshape$Transformer-FeedForward-Norm_1/add_1:Transformer-MultiHeadSelfAttention_2/dense_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_2/dense_1/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_1/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_1/kernel/read;Transformer-MultiHeadSelfAttention_2/dense_1/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_2/dense_1/transpose<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_2/dense_1/MatMulMatMul4Transformer-MultiHeadSelfAttention_2/dense_1/Reshape6Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_2/dense_1/unstack6Transformer-MultiHeadSelfAttention_2/dense_1/unstack:1>Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_2/dense_1/MatMul<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_1/bias/read<Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_2/dense_1/addAdd6Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_26Transformer-MultiHeadSelfAttention_2/dense_1/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_2/dense_2/ShapeShape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_2/dense_2/unstackUnpack2Transformer-MultiHeadSelfAttention_2/dense_2/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_2/dense_2/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_2/dense_2/unstack_1Unpack4Transformer-MultiHeadSelfAttention_2/dense_2/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_2/dense_2/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_2/dense_2/ReshapeReshape$Transformer-FeedForward-Norm_1/add_1:Transformer-MultiHeadSelfAttention_2/dense_2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_2/dense_2/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_2/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_2/kernel/read;Transformer-MultiHeadSelfAttention_2/dense_2/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_2/dense_2/transpose<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_2/dense_2/MatMulMatMul4Transformer-MultiHeadSelfAttention_2/dense_2/Reshape6Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_2/dense_2/unstack6Transformer-MultiHeadSelfAttention_2/dense_2/unstack:1>Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_2/dense_2/MatMul<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_2/bias/read<Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_2/dense_2/addAdd6Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_26Transformer-MultiHeadSelfAttention_2/dense_2/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_2/dense_3/ShapeShape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_2/dense_3/unstackUnpack2Transformer-MultiHeadSelfAttention_2/dense_3/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_2/dense_3/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_2/dense_3/unstack_1Unpack4Transformer-MultiHeadSelfAttention_2/dense_3/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_2/dense_3/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_2/dense_3/ReshapeReshape$Transformer-FeedForward-Norm_1/add_1:Transformer-MultiHeadSelfAttention_2/dense_3/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_2/dense_3/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_3/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_3/kernel/read;Transformer-MultiHeadSelfAttention_2/dense_3/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_2/dense_3/transpose<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_2/dense_3/MatMulMatMul4Transformer-MultiHeadSelfAttention_2/dense_3/Reshape6Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_2/dense_3/unstack6Transformer-MultiHeadSelfAttention_2/dense_3/unstack:1>Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_2/dense_3/MatMul<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_3/bias/read<Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_2/dense_3/addAdd6Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_26Transformer-MultiHeadSelfAttention_2/dense_3/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

*Transformer-MultiHeadSelfAttention_2/ShapeShape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention_2/strided_sliceStridedSlice*Transformer-MultiHeadSelfAttention_2/Shape8Transformer-MultiHeadSelfAttention_2/strided_slice/stack:Transformer-MultiHeadSelfAttention_2/strided_slice/stack_1:Transformer-MultiHeadSelfAttention_2/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_2/Reshape/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_2/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_2/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ê
2Transformer-MultiHeadSelfAttention_2/Reshape/shapePack4Transformer-MultiHeadSelfAttention_2/Reshape/shape/02Transformer-MultiHeadSelfAttention_2/strided_slice4Transformer-MultiHeadSelfAttention_2/Reshape/shape/24Transformer-MultiHeadSelfAttention_2/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:
î
,Transformer-MultiHeadSelfAttention_2/ReshapeReshape0Transformer-MultiHeadSelfAttention_2/dense_1/add2Transformer-MultiHeadSelfAttention_2/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_2/Shape_1Shape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_2/strided_slice_1StridedSlice,Transformer-MultiHeadSelfAttention_2/Shape_1:Transformer-MultiHeadSelfAttention_2/strided_slice_1/stack<Transformer-MultiHeadSelfAttention_2/strided_slice_1/stack_1<Transformer-MultiHeadSelfAttention_2/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_2/Reshape_1/shapePack6Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/04Transformer-MultiHeadSelfAttention_2/strided_slice_16Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/26Transformer-MultiHeadSelfAttention_2/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_2/Reshape_1Reshape0Transformer-MultiHeadSelfAttention_2/dense_2/add4Transformer-MultiHeadSelfAttention_2/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_2/Shape_2Shape$Transformer-FeedForward-Norm_1/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_2/strided_slice_2StridedSlice,Transformer-MultiHeadSelfAttention_2/Shape_2:Transformer-MultiHeadSelfAttention_2/strided_slice_2/stack<Transformer-MultiHeadSelfAttention_2/strided_slice_2/stack_1<Transformer-MultiHeadSelfAttention_2/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_2/Reshape_2/shapePack6Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/04Transformer-MultiHeadSelfAttention_2/strided_slice_26Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/26Transformer-MultiHeadSelfAttention_2/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_2/Reshape_2Reshape0Transformer-MultiHeadSelfAttention_2/dense_3/add4Transformer-MultiHeadSelfAttention_2/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention_2/einsum/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
5Transformer-MultiHeadSelfAttention_2/einsum/transpose	Transpose,Transformer-MultiHeadSelfAttention_2/Reshape:Transformer-MultiHeadSelfAttention_2/einsum/transpose/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_2/einsum/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_2/einsum/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_2/Reshape_1<Transformer-MultiHeadSelfAttention_2/einsum/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦
1Transformer-MultiHeadSelfAttention_2/einsum/ShapeShape5Transformer-MultiHeadSelfAttention_2/einsum/transpose*
T0*
out_type0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention_2/einsum/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention_2/einsum/strided_sliceStridedSlice1Transformer-MultiHeadSelfAttention_2/einsum/Shape?Transformer-MultiHeadSelfAttention_2/einsum/strided_slice/stackATransformer-MultiHeadSelfAttention_2/einsum/strided_slice/stack_1ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_1StridedSlice1Transformer-MultiHeadSelfAttention_2/einsum/ShapeATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stackCTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stack_1CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
s
1Transformer-MultiHeadSelfAttention_2/einsum/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
/Transformer-MultiHeadSelfAttention_2/einsum/mulMul1Transformer-MultiHeadSelfAttention_2/einsum/mul/x;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_1*
T0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
á
9Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shapePack9Transformer-MultiHeadSelfAttention_2/einsum/strided_slice;Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shape/1/Transformer-MultiHeadSelfAttention_2/einsum/mul;Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention_2/einsum/ReshapeReshape5Transformer-MultiHeadSelfAttention_2/einsum/transpose9Transformer-MultiHeadSelfAttention_2/einsum/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_2/einsum/Shape_1Shape7Transformer-MultiHeadSelfAttention_2/einsum/transpose_1*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_2/einsum/Shape_1ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stackCTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stack_1CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_3StridedSlice3Transformer-MultiHeadSelfAttention_2/einsum/Shape_1ATransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stackCTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stack_1CTransformer-MultiHeadSelfAttention_2/einsum/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_2/einsum/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
1Transformer-MultiHeadSelfAttention_2/einsum/mul_1Mul3Transformer-MultiHeadSelfAttention_2/einsum/mul_1/x;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_3*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
ë
;Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shapePack;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_2=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shape/1=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shape/21Transformer-MultiHeadSelfAttention_2/einsum/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1Reshape7Transformer-MultiHeadSelfAttention_2/einsum/transpose_1;Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_2/einsum/MatMulBatchMatMul3Transformer-MultiHeadSelfAttention_2/einsum/Reshape5Transformer-MultiHeadSelfAttention_2/einsum/Reshape_1*
T0*
adj_y( *
adj_x( *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ñ
;Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2/shapePack9Transformer-MultiHeadSelfAttention_2/einsum/strided_slice=Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2/shape/1;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_1;Transformer-MultiHeadSelfAttention_2/einsum/strided_slice_3*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2Reshape2Transformer-MultiHeadSelfAttention_2/einsum/MatMul;Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_2/einsum/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_2/einsum/transpose_2	Transpose5Transformer-MultiHeadSelfAttention_2/einsum/Reshape_2<Transformer-MultiHeadSelfAttention_2/einsum/transpose_2/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
.Transformer-MultiHeadSelfAttention_2/truediv/yConst*
valueB
 *++£@*
dtype0*
_output_shapes
: 
ì
,Transformer-MultiHeadSelfAttention_2/truedivRealDiv7Transformer-MultiHeadSelfAttention_2/einsum/transpose_2.Transformer-MultiHeadSelfAttention_2/truediv/y*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-MultiHeadSelfAttention_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ê
/Transformer-MultiHeadSelfAttention_2/ExpandDims
ExpandDims+Transformer-MultiHeadSelfAttention_2/Cast_13Transformer-MultiHeadSelfAttention_2/ExpandDims/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
w
5Transformer-MultiHeadSelfAttention_2/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ö
1Transformer-MultiHeadSelfAttention_2/ExpandDims_1
ExpandDims/Transformer-MultiHeadSelfAttention_2/ExpandDims5Transformer-MultiHeadSelfAttention_2/ExpandDims_1/dim*
T0*

Tdim0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_2/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ñ
(Transformer-MultiHeadSelfAttention_2/subSub*Transformer-MultiHeadSelfAttention_2/sub/x1Transformer-MultiHeadSelfAttention_2/ExpandDims_1*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_2/mul/yConst*
valueB
 *¥ÔhS*
dtype0*
_output_shapes
: 
È
(Transformer-MultiHeadSelfAttention_2/mulMul(Transformer-MultiHeadSelfAttention_2/sub*Transformer-MultiHeadSelfAttention_2/mul/y*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ
*Transformer-MultiHeadSelfAttention_2/sub_1Sub,Transformer-MultiHeadSelfAttention_2/truediv(Transformer-MultiHeadSelfAttention_2/mul*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯
,Transformer-MultiHeadSelfAttention_2/SoftmaxSoftmax*Transformer-MultiHeadSelfAttention_2/sub_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_2/einsum_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_2/einsum_1/transpose	Transpose,Transformer-MultiHeadSelfAttention_2/Softmax<Transformer-MultiHeadSelfAttention_2/einsum_1/transpose/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_2/Reshape_2>Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_2/einsum_1/ShapeShape7Transformer-MultiHeadSelfAttention_2/einsum_1/transpose*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_2/einsum_1/strided_sliceStridedSlice3Transformer-MultiHeadSelfAttention_2/einsum_1/ShapeATransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stackCTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stack_1CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1StridedSlice3Transformer-MultiHeadSelfAttention_2/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stackETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stack_1ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_2/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stackETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stack_1ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_2/einsum_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Í
1Transformer-MultiHeadSelfAttention_2/einsum_1/mulMul3Transformer-MultiHeadSelfAttention_2/einsum_1/mul/x=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1*
T0*
_output_shapes
: 
w
5Transformer-MultiHeadSelfAttention_2/einsum_1/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Transformer-MultiHeadSelfAttention_2/einsum_1/mul_1Mul5Transformer-MultiHeadSelfAttention_2/einsum_1/mul_1/x=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_2*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
á
;Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape/shapePack;Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape/shape/11Transformer-MultiHeadSelfAttention_2/einsum_1/mul3Transformer-MultiHeadSelfAttention_2/einsum_1/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_2/einsum_1/ReshapeReshape7Transformer-MultiHeadSelfAttention_2/einsum_1/transpose;Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
5Transformer-MultiHeadSelfAttention_2/einsum_1/Shape_1Shape9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_1*
T0*
out_type0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3StridedSlice5Transformer-MultiHeadSelfAttention_2/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stackETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stack_1ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4StridedSlice5Transformer-MultiHeadSelfAttention_2/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stackETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stack_1ETransformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_4/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
õ
=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shapePack=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_3?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shape/13Transformer-MultiHeadSelfAttention_2/einsum_1/mul_1?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1Reshape9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_1=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

4Transformer-MultiHeadSelfAttention_2/einsum_1/MatMulBatchMatMul5Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape7Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_1*
T0*
adj_y( *
adj_x( *8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ý
=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shapePack;Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shape/1=Transformer-MultiHeadSelfAttention_2/einsum_1/strided_slice_1?Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2Reshape4Transformer-MultiHeadSelfAttention_2/einsum_1/MatMul=Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_2	Transpose7Transformer-MultiHeadSelfAttention_2/einsum_1/Reshape_2>Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_2/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¥
,Transformer-MultiHeadSelfAttention_2/Shape_3Shape9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_2*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_2/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_2/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_2/strided_slice_3StridedSlice,Transformer-MultiHeadSelfAttention_2/Shape_3:Transformer-MultiHeadSelfAttention_2/strided_slice_3/stack<Transformer-MultiHeadSelfAttention_2/strided_slice_3/stack_1<Transformer-MultiHeadSelfAttention_2/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_2/Reshape_3/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
y
6Transformer-MultiHeadSelfAttention_2/Reshape_3/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_2/Reshape_3/shapePack6Transformer-MultiHeadSelfAttention_2/Reshape_3/shape/04Transformer-MultiHeadSelfAttention_2/strided_slice_36Transformer-MultiHeadSelfAttention_2/Reshape_3/shape/2*

axis *
T0*
N*
_output_shapes
:
ø
.Transformer-MultiHeadSelfAttention_2/Reshape_3Reshape9Transformer-MultiHeadSelfAttention_2/einsum_1/transpose_24Transformer-MultiHeadSelfAttention_2/Reshape_3/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
 
2Transformer-MultiHeadSelfAttention_2/dense_4/ShapeShape.Transformer-MultiHeadSelfAttention_2/Reshape_3*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_2/dense_4/unstackUnpack2Transformer-MultiHeadSelfAttention_2/dense_4/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_2/dense_4/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_2/dense_4/unstack_1Unpack4Transformer-MultiHeadSelfAttention_2/dense_4/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_2/dense_4/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention_2/dense_4/ReshapeReshape.Transformer-MultiHeadSelfAttention_2/Reshape_3:Transformer-MultiHeadSelfAttention_2/dense_4/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_2/dense_4/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_4/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_4/kernel/read;Transformer-MultiHeadSelfAttention_2/dense_4/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_2/dense_4/transpose<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_2/dense_4/MatMulMatMul4Transformer-MultiHeadSelfAttention_2/dense_4/Reshape6Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_2/dense_4/unstack6Transformer-MultiHeadSelfAttention_2/dense_4/unstack:1>Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_2/dense_4/MatMul<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_4/bias/read<Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_2/dense_4/addAdd6Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_26Transformer-MultiHeadSelfAttention_2/dense_4/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
w
5Transformer-MultiHeadSelfAttention_2/ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ì
1Transformer-MultiHeadSelfAttention_2/ExpandDims_2
ExpandDims)Transformer-MultiHeadSelfAttention_2/Cast5Transformer-MultiHeadSelfAttention_2/ExpandDims_2/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ö
*Transformer-MultiHeadSelfAttention_2/mul_1Mul0Transformer-MultiHeadSelfAttention_2/dense_4/add1Transformer-MultiHeadSelfAttention_2/ExpandDims_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Å
,Transformer-MultiHeadSelfAttention-Add_2/addAdd$Transformer-FeedForward-Norm_1/add_1*Transformer-MultiHeadSelfAttention_2/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
y
7Transformer-MultiHeadSelfAttention-Add_2/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
è
3Transformer-MultiHeadSelfAttention-Add_2/ExpandDims
ExpandDims!Transformer-FeedForward-Add_1/All7Transformer-MultiHeadSelfAttention-Add_2/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
{
9Transformer-MultiHeadSelfAttention-Add_2/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ì
5Transformer-MultiHeadSelfAttention-Add_2/ExpandDims_1
ExpandDims!Transformer-FeedForward-Add_1/All9Transformer-MultiHeadSelfAttention-Add_2/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
v
4Transformer-MultiHeadSelfAttention-Add_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
/Transformer-MultiHeadSelfAttention-Add_2/concatConcatV23Transformer-MultiHeadSelfAttention-Add_2/ExpandDims5Transformer-MultiHeadSelfAttention-Add_2/ExpandDims_14Transformer-MultiHeadSelfAttention-Add_2/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention-Add_2/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
ó
,Transformer-MultiHeadSelfAttention-Add_2/AllAll/Transformer-MultiHeadSelfAttention-Add_2/concat>Transformer-MultiHeadSelfAttention-Add_2/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

@Transformer-MultiHeadSelfAttention-Norm_2/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

.Transformer-MultiHeadSelfAttention-Norm_2/MeanMean,Transformer-MultiHeadSelfAttention-Add_2/add@Transformer-MultiHeadSelfAttention-Norm_2/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
-Transformer-MultiHeadSelfAttention-Norm_2/subSub,Transformer-MultiHeadSelfAttention-Add_2/add.Transformer-MultiHeadSelfAttention-Norm_2/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
©
0Transformer-MultiHeadSelfAttention-Norm_2/SquareSquare-Transformer-MultiHeadSelfAttention-Norm_2/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

BTransformer-MultiHeadSelfAttention-Norm_2/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

0Transformer-MultiHeadSelfAttention-Norm_2/Mean_1Mean0Transformer-MultiHeadSelfAttention-Norm_2/SquareBTransformer-MultiHeadSelfAttention-Norm_2/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_2/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ö
-Transformer-MultiHeadSelfAttention-Norm_2/addAdd0Transformer-MultiHeadSelfAttention-Norm_2/Mean_1/Transformer-MultiHeadSelfAttention-Norm_2/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
1Transformer-MultiHeadSelfAttention-Norm_2/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
ë
?Transformer-MultiHeadSelfAttention-Norm_2/clip_by_value/MinimumMinimum-Transformer-MultiHeadSelfAttention-Norm_2/add1Transformer-MultiHeadSelfAttention-Norm_2/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ó
7Transformer-MultiHeadSelfAttention-Norm_2/clip_by_valueMaximum?Transformer-MultiHeadSelfAttention-Norm_2/clip_by_value/Minimum/Transformer-MultiHeadSelfAttention-Norm_2/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
.Transformer-MultiHeadSelfAttention-Norm_2/SqrtSqrt7Transformer-MultiHeadSelfAttention-Norm_2/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Û
1Transformer-MultiHeadSelfAttention-Norm_2/truedivRealDiv-Transformer-MultiHeadSelfAttention-Norm_2/sub.Transformer-MultiHeadSelfAttention-Norm_2/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Û
-Transformer-MultiHeadSelfAttention-Norm_2/mulMul1Transformer-MultiHeadSelfAttention-Norm_2/truediv2Transformer-MultiHeadSelfAttention-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Ø
/Transformer-MultiHeadSelfAttention-Norm_2/add_1Add-Transformer-MultiHeadSelfAttention-Norm_2/mul1Transformer-MultiHeadSelfAttention-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

'Transformer-FeedForward_2/dense_5/ShapeShape/Transformer-MultiHeadSelfAttention-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_2/dense_5/unstackUnpack'Transformer-FeedForward_2/dense_5/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_2/dense_5/Shape_1Const*
valueB"8  à  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_2/dense_5/unstack_1Unpack)Transformer-FeedForward_2/dense_5/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_2/dense_5/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
×
)Transformer-FeedForward_2/dense_5/ReshapeReshape/Transformer-MultiHeadSelfAttention-Norm_2/add_1/Transformer-FeedForward_2/dense_5/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

0Transformer-FeedForward_2/dense_5/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_2/dense_5/transpose	Transpose+Transformer-FeedForward/dense_5/kernel/read0Transformer-FeedForward_2/dense_5/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸à	

1Transformer-FeedForward_2/dense_5/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_2/dense_5/Reshape_1Reshape+Transformer-FeedForward_2/dense_5/transpose1Transformer-FeedForward_2/dense_5/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸à	
ã
(Transformer-FeedForward_2/dense_5/MatMulMatMul)Transformer-FeedForward_2/dense_5/Reshape+Transformer-FeedForward_2/dense_5/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	
v
3Transformer-FeedForward_2/dense_5/Reshape_2/shape/2Const*
value
B :à	*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_2/dense_5/Reshape_2/shapePack)Transformer-FeedForward_2/dense_5/unstack+Transformer-FeedForward_2/dense_5/unstack:13Transformer-FeedForward_2/dense_5/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_2/dense_5/Reshape_2Reshape(Transformer-FeedForward_2/dense_5/MatMul1Transformer-FeedForward_2/dense_5/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

1Transformer-FeedForward_2/dense_5/Reshape_3/shapeConst*!
valueB"      à  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_2/dense_5/Reshape_3Reshape)Transformer-FeedForward/dense_5/bias/read1Transformer-FeedForward_2/dense_5/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:à	
Æ
%Transformer-FeedForward_2/dense_5/addAdd+Transformer-FeedForward_2/dense_5/Reshape_2+Transformer-FeedForward_2/dense_5/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_2/dense_5/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_2/dense_5/PowPow%Transformer-FeedForward_2/dense_5/add'Transformer-FeedForward_2/dense_5/Pow/y*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_2/dense_5/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_2/dense_5/mulMul'Transformer-FeedForward_2/dense_5/mul/x%Transformer-FeedForward_2/dense_5/Pow*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¼
'Transformer-FeedForward_2/dense_5/add_1Add%Transformer-FeedForward_2/dense_5/add%Transformer-FeedForward_2/dense_5/mul*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_2/dense_5/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_2/dense_5/mul_1Mul)Transformer-FeedForward_2/dense_5/mul_1/x'Transformer-FeedForward_2/dense_5/add_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

&Transformer-FeedForward_2/dense_5/TanhTanh'Transformer-FeedForward_2/dense_5/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_2/dense_5/add_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Á
'Transformer-FeedForward_2/dense_5/add_2Add)Transformer-FeedForward_2/dense_5/add_2/x&Transformer-FeedForward_2/dense_5/Tanh*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_2/dense_5/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_2/dense_5/mul_2Mul)Transformer-FeedForward_2/dense_5/mul_2/x'Transformer-FeedForward_2/dense_5/add_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¾
'Transformer-FeedForward_2/dense_5/mul_3Mul%Transformer-FeedForward_2/dense_5/add'Transformer-FeedForward_2/dense_5/mul_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

'Transformer-FeedForward_2/dense_6/ShapeShape'Transformer-FeedForward_2/dense_5/mul_3*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_2/dense_6/unstackUnpack'Transformer-FeedForward_2/dense_6/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_2/dense_6/Shape_1Const*
valueB"à  8  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_2/dense_6/unstack_1Unpack)Transformer-FeedForward_2/dense_6/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_2/dense_6/Reshape/shapeConst*
valueB"ÿÿÿÿà  *
dtype0*
_output_shapes
:
Ï
)Transformer-FeedForward_2/dense_6/ReshapeReshape'Transformer-FeedForward_2/dense_5/mul_3/Transformer-FeedForward_2/dense_6/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	

0Transformer-FeedForward_2/dense_6/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_2/dense_6/transpose	Transpose+Transformer-FeedForward/dense_6/kernel/read0Transformer-FeedForward_2/dense_6/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
à	¸

1Transformer-FeedForward_2/dense_6/Reshape_1/shapeConst*
valueB"à  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_2/dense_6/Reshape_1Reshape+Transformer-FeedForward_2/dense_6/transpose1Transformer-FeedForward_2/dense_6/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
à	¸
ã
(Transformer-FeedForward_2/dense_6/MatMulMatMul)Transformer-FeedForward_2/dense_6/Reshape+Transformer-FeedForward_2/dense_6/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
v
3Transformer-FeedForward_2/dense_6/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_2/dense_6/Reshape_2/shapePack)Transformer-FeedForward_2/dense_6/unstack+Transformer-FeedForward_2/dense_6/unstack:13Transformer-FeedForward_2/dense_6/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_2/dense_6/Reshape_2Reshape(Transformer-FeedForward_2/dense_6/MatMul1Transformer-FeedForward_2/dense_6/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

1Transformer-FeedForward_2/dense_6/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_2/dense_6/Reshape_3Reshape)Transformer-FeedForward/dense_6/bias/read1Transformer-FeedForward_2/dense_6/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
Æ
%Transformer-FeedForward_2/dense_6/addAdd+Transformer-FeedForward_2/dense_6/Reshape_2+Transformer-FeedForward_2/dense_6/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
À
!Transformer-FeedForward-Add_2/addAdd/Transformer-MultiHeadSelfAttention-Norm_2/add_1%Transformer-FeedForward_2/dense_6/add*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
n
,Transformer-FeedForward-Add_2/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ý
(Transformer-FeedForward-Add_2/ExpandDims
ExpandDims,Transformer-MultiHeadSelfAttention-Add_2/All,Transformer-FeedForward-Add_2/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
.Transformer-FeedForward-Add_2/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
á
*Transformer-FeedForward-Add_2/ExpandDims_1
ExpandDims,Transformer-MultiHeadSelfAttention-Add_2/All.Transformer-FeedForward-Add_2/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
k
)Transformer-FeedForward-Add_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

$Transformer-FeedForward-Add_2/concatConcatV2(Transformer-FeedForward-Add_2/ExpandDims*Transformer-FeedForward-Add_2/ExpandDims_1)Transformer-FeedForward-Add_2/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-FeedForward-Add_2/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
Ò
!Transformer-FeedForward-Add_2/AllAll$Transformer-FeedForward-Add_2/concat3Transformer-FeedForward-Add_2/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5Transformer-FeedForward-Norm_2/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
á
#Transformer-FeedForward-Norm_2/MeanMean!Transformer-FeedForward-Add_2/add5Transformer-FeedForward-Norm_2/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±
"Transformer-FeedForward-Norm_2/subSub!Transformer-FeedForward-Add_2/add#Transformer-FeedForward-Norm_2/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

%Transformer-FeedForward-Norm_2/SquareSquare"Transformer-FeedForward-Norm_2/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

7Transformer-FeedForward-Norm_2/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
é
%Transformer-FeedForward-Norm_2/Mean_1Mean%Transformer-FeedForward-Norm_2/Square7Transformer-FeedForward-Norm_2/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_2/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
µ
"Transformer-FeedForward-Norm_2/addAdd%Transformer-FeedForward-Norm_2/Mean_1$Transformer-FeedForward-Norm_2/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&Transformer-FeedForward-Norm_2/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ê
4Transformer-FeedForward-Norm_2/clip_by_value/MinimumMinimum"Transformer-FeedForward-Norm_2/add&Transformer-FeedForward-Norm_2/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
,Transformer-FeedForward-Norm_2/clip_by_valueMaximum4Transformer-FeedForward-Norm_2/clip_by_value/Minimum$Transformer-FeedForward-Norm_2/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

#Transformer-FeedForward-Norm_2/SqrtSqrt,Transformer-FeedForward-Norm_2/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
º
&Transformer-FeedForward-Norm_2/truedivRealDiv"Transformer-FeedForward-Norm_2/sub#Transformer-FeedForward-Norm_2/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
º
"Transformer-FeedForward-Norm_2/mulMul&Transformer-FeedForward-Norm_2/truediv'Transformer-FeedForward-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
·
$Transformer-FeedForward-Norm_2/add_1Add"Transformer-FeedForward-Norm_2/mul&Transformer-FeedForward-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
®
)Transformer-MultiHeadSelfAttention_3/CastCast!Transformer-FeedForward-Add_2/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
°
+Transformer-MultiHeadSelfAttention_3/Cast_1Cast!Transformer-FeedForward-Add_2/All*

DstT0*
Truncate( *

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_3/dense_1/ShapeShape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_3/dense_1/unstackUnpack2Transformer-MultiHeadSelfAttention_3/dense_1/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_3/dense_1/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_3/dense_1/unstack_1Unpack4Transformer-MultiHeadSelfAttention_3/dense_1/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_3/dense_1/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_3/dense_1/ReshapeReshape$Transformer-FeedForward-Norm_2/add_1:Transformer-MultiHeadSelfAttention_3/dense_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_3/dense_1/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_1/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_1/kernel/read;Transformer-MultiHeadSelfAttention_3/dense_1/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_3/dense_1/transpose<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_3/dense_1/MatMulMatMul4Transformer-MultiHeadSelfAttention_3/dense_1/Reshape6Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_3/dense_1/unstack6Transformer-MultiHeadSelfAttention_3/dense_1/unstack:1>Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_3/dense_1/MatMul<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_1/bias/read<Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_3/dense_1/addAdd6Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_26Transformer-MultiHeadSelfAttention_3/dense_1/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_3/dense_2/ShapeShape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_3/dense_2/unstackUnpack2Transformer-MultiHeadSelfAttention_3/dense_2/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_3/dense_2/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_3/dense_2/unstack_1Unpack4Transformer-MultiHeadSelfAttention_3/dense_2/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_3/dense_2/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_3/dense_2/ReshapeReshape$Transformer-FeedForward-Norm_2/add_1:Transformer-MultiHeadSelfAttention_3/dense_2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_3/dense_2/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_2/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_2/kernel/read;Transformer-MultiHeadSelfAttention_3/dense_2/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_3/dense_2/transpose<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_3/dense_2/MatMulMatMul4Transformer-MultiHeadSelfAttention_3/dense_2/Reshape6Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_3/dense_2/unstack6Transformer-MultiHeadSelfAttention_3/dense_2/unstack:1>Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_3/dense_2/MatMul<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_2/bias/read<Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_3/dense_2/addAdd6Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_26Transformer-MultiHeadSelfAttention_3/dense_2/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

2Transformer-MultiHeadSelfAttention_3/dense_3/ShapeShape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_3/dense_3/unstackUnpack2Transformer-MultiHeadSelfAttention_3/dense_3/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_3/dense_3/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_3/dense_3/unstack_1Unpack4Transformer-MultiHeadSelfAttention_3/dense_3/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_3/dense_3/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
â
4Transformer-MultiHeadSelfAttention_3/dense_3/ReshapeReshape$Transformer-FeedForward-Norm_2/add_1:Transformer-MultiHeadSelfAttention_3/dense_3/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_3/dense_3/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_3/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_3/kernel/read;Transformer-MultiHeadSelfAttention_3/dense_3/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_3/dense_3/transpose<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_3/dense_3/MatMulMatMul4Transformer-MultiHeadSelfAttention_3/dense_3/Reshape6Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_3/dense_3/unstack6Transformer-MultiHeadSelfAttention_3/dense_3/unstack:1>Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_3/dense_3/MatMul<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_3/bias/read<Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_3/dense_3/addAdd6Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_26Transformer-MultiHeadSelfAttention_3/dense_3/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

*Transformer-MultiHeadSelfAttention_3/ShapeShape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:

8Transformer-MultiHeadSelfAttention_3/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
²
2Transformer-MultiHeadSelfAttention_3/strided_sliceStridedSlice*Transformer-MultiHeadSelfAttention_3/Shape8Transformer-MultiHeadSelfAttention_3/strided_slice/stack:Transformer-MultiHeadSelfAttention_3/strided_slice/stack_1:Transformer-MultiHeadSelfAttention_3/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_3/Reshape/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_3/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
v
4Transformer-MultiHeadSelfAttention_3/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ê
2Transformer-MultiHeadSelfAttention_3/Reshape/shapePack4Transformer-MultiHeadSelfAttention_3/Reshape/shape/02Transformer-MultiHeadSelfAttention_3/strided_slice4Transformer-MultiHeadSelfAttention_3/Reshape/shape/24Transformer-MultiHeadSelfAttention_3/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:
î
,Transformer-MultiHeadSelfAttention_3/ReshapeReshape0Transformer-MultiHeadSelfAttention_3/dense_1/add2Transformer-MultiHeadSelfAttention_3/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_3/Shape_1Shape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_3/strided_slice_1StridedSlice,Transformer-MultiHeadSelfAttention_3/Shape_1:Transformer-MultiHeadSelfAttention_3/strided_slice_1/stack<Transformer-MultiHeadSelfAttention_3/strided_slice_1/stack_1<Transformer-MultiHeadSelfAttention_3/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_3/Reshape_1/shapePack6Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/04Transformer-MultiHeadSelfAttention_3/strided_slice_16Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/26Transformer-MultiHeadSelfAttention_3/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_3/Reshape_1Reshape0Transformer-MultiHeadSelfAttention_3/dense_2/add4Transformer-MultiHeadSelfAttention_3/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

,Transformer-MultiHeadSelfAttention_3/Shape_2Shape$Transformer-FeedForward-Norm_2/add_1*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_3/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_3/strided_slice_2StridedSlice,Transformer-MultiHeadSelfAttention_3/Shape_2:Transformer-MultiHeadSelfAttention_3/strided_slice_2/stack<Transformer-MultiHeadSelfAttention_3/strided_slice_2/stack_1<Transformer-MultiHeadSelfAttention_3/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
x
6Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ô
4Transformer-MultiHeadSelfAttention_3/Reshape_2/shapePack6Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/04Transformer-MultiHeadSelfAttention_3/strided_slice_26Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/26Transformer-MultiHeadSelfAttention_3/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:
ò
.Transformer-MultiHeadSelfAttention_3/Reshape_2Reshape0Transformer-MultiHeadSelfAttention_3/dense_3/add4Transformer-MultiHeadSelfAttention_3/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

:Transformer-MultiHeadSelfAttention_3/einsum/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
5Transformer-MultiHeadSelfAttention_3/einsum/transpose	Transpose,Transformer-MultiHeadSelfAttention_3/Reshape:Transformer-MultiHeadSelfAttention_3/einsum/transpose/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_3/einsum/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_3/einsum/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_3/Reshape_1<Transformer-MultiHeadSelfAttention_3/einsum/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦
1Transformer-MultiHeadSelfAttention_3/einsum/ShapeShape5Transformer-MultiHeadSelfAttention_3/einsum/transpose*
T0*
out_type0*
_output_shapes
:

?Transformer-MultiHeadSelfAttention_3/einsum/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Transformer-MultiHeadSelfAttention_3/einsum/strided_sliceStridedSlice1Transformer-MultiHeadSelfAttention_3/einsum/Shape?Transformer-MultiHeadSelfAttention_3/einsum/strided_slice/stackATransformer-MultiHeadSelfAttention_3/einsum/strided_slice/stack_1ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_1StridedSlice1Transformer-MultiHeadSelfAttention_3/einsum/ShapeATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stackCTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stack_1CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
s
1Transformer-MultiHeadSelfAttention_3/einsum/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
/Transformer-MultiHeadSelfAttention_3/einsum/mulMul1Transformer-MultiHeadSelfAttention_3/einsum/mul/x;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_1*
T0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
}
;Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
á
9Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shapePack9Transformer-MultiHeadSelfAttention_3/einsum/strided_slice;Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shape/1/Transformer-MultiHeadSelfAttention_3/einsum/mul;Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shape/3*

axis *
T0*
N*
_output_shapes
:

3Transformer-MultiHeadSelfAttention_3/einsum/ReshapeReshape5Transformer-MultiHeadSelfAttention_3/einsum/transpose9Transformer-MultiHeadSelfAttention_3/einsum/Reshape/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_3/einsum/Shape_1Shape7Transformer-MultiHeadSelfAttention_3/einsum/transpose_1*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_3/einsum/Shape_1ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stackCTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stack_1CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_3StridedSlice3Transformer-MultiHeadSelfAttention_3/einsum/Shape_1ATransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stackCTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stack_1CTransformer-MultiHeadSelfAttention_3/einsum/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_3/einsum/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
1Transformer-MultiHeadSelfAttention_3/einsum/mul_1Mul3Transformer-MultiHeadSelfAttention_3/einsum/mul_1/x;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_3*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
ë
;Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shapePack;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_2=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shape/1=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shape/21Transformer-MultiHeadSelfAttention_3/einsum/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1Reshape7Transformer-MultiHeadSelfAttention_3/einsum/transpose_1;Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

2Transformer-MultiHeadSelfAttention_3/einsum/MatMulBatchMatMul3Transformer-MultiHeadSelfAttention_3/einsum/Reshape5Transformer-MultiHeadSelfAttention_3/einsum/Reshape_1*
T0*
adj_y( *
adj_x( *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ñ
;Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2/shapePack9Transformer-MultiHeadSelfAttention_3/einsum/strided_slice=Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2/shape/1;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_1;Transformer-MultiHeadSelfAttention_3/einsum/strided_slice_3*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2Reshape2Transformer-MultiHeadSelfAttention_3/einsum/MatMul;Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_3/einsum/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_3/einsum/transpose_2	Transpose5Transformer-MultiHeadSelfAttention_3/einsum/Reshape_2<Transformer-MultiHeadSelfAttention_3/einsum/transpose_2/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
.Transformer-MultiHeadSelfAttention_3/truediv/yConst*
valueB
 *++£@*
dtype0*
_output_shapes
: 
ì
,Transformer-MultiHeadSelfAttention_3/truedivRealDiv7Transformer-MultiHeadSelfAttention_3/einsum/transpose_2.Transformer-MultiHeadSelfAttention_3/truediv/y*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-MultiHeadSelfAttention_3/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ê
/Transformer-MultiHeadSelfAttention_3/ExpandDims
ExpandDims+Transformer-MultiHeadSelfAttention_3/Cast_13Transformer-MultiHeadSelfAttention_3/ExpandDims/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
w
5Transformer-MultiHeadSelfAttention_3/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ö
1Transformer-MultiHeadSelfAttention_3/ExpandDims_1
ExpandDims/Transformer-MultiHeadSelfAttention_3/ExpandDims5Transformer-MultiHeadSelfAttention_3/ExpandDims_1/dim*
T0*

Tdim0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_3/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ñ
(Transformer-MultiHeadSelfAttention_3/subSub*Transformer-MultiHeadSelfAttention_3/sub/x1Transformer-MultiHeadSelfAttention_3/ExpandDims_1*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
o
*Transformer-MultiHeadSelfAttention_3/mul/yConst*
valueB
 *¥ÔhS*
dtype0*
_output_shapes
: 
È
(Transformer-MultiHeadSelfAttention_3/mulMul(Transformer-MultiHeadSelfAttention_3/sub*Transformer-MultiHeadSelfAttention_3/mul/y*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ
*Transformer-MultiHeadSelfAttention_3/sub_1Sub,Transformer-MultiHeadSelfAttention_3/truediv(Transformer-MultiHeadSelfAttention_3/mul*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯
,Transformer-MultiHeadSelfAttention_3/SoftmaxSoftmax*Transformer-MultiHeadSelfAttention_3/sub_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

<Transformer-MultiHeadSelfAttention_3/einsum_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_3/einsum_1/transpose	Transpose,Transformer-MultiHeadSelfAttention_3/Softmax<Transformer-MultiHeadSelfAttention_3/einsum_1/transpose/perm*
T0*
Tperm0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_1	Transpose.Transformer-MultiHeadSelfAttention_3/Reshape_2>Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_1/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª
3Transformer-MultiHeadSelfAttention_3/einsum_1/ShapeShape7Transformer-MultiHeadSelfAttention_3/einsum_1/transpose*
T0*
out_type0*
_output_shapes
:

ATransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;Transformer-MultiHeadSelfAttention_3/einsum_1/strided_sliceStridedSlice3Transformer-MultiHeadSelfAttention_3/einsum_1/ShapeATransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stackCTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stack_1CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1StridedSlice3Transformer-MultiHeadSelfAttention_3/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stackETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stack_1ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2StridedSlice3Transformer-MultiHeadSelfAttention_3/einsum_1/ShapeCTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stackETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stack_1ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
u
3Transformer-MultiHeadSelfAttention_3/einsum_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Í
1Transformer-MultiHeadSelfAttention_3/einsum_1/mulMul3Transformer-MultiHeadSelfAttention_3/einsum_1/mul/x=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1*
T0*
_output_shapes
: 
w
5Transformer-MultiHeadSelfAttention_3/einsum_1/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Transformer-MultiHeadSelfAttention_3/einsum_1/mul_1Mul5Transformer-MultiHeadSelfAttention_3/einsum_1/mul_1/x=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_2*
T0*
_output_shapes
: 

=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
á
;Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape/shapePack;Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape/shape/11Transformer-MultiHeadSelfAttention_3/einsum_1/mul3Transformer-MultiHeadSelfAttention_3/einsum_1/mul_1*

axis *
T0*
N*
_output_shapes
:

5Transformer-MultiHeadSelfAttention_3/einsum_1/ReshapeReshape7Transformer-MultiHeadSelfAttention_3/einsum_1/transpose;Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape/shape*
T0*
Tshape0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
5Transformer-MultiHeadSelfAttention_3/einsum_1/Shape_1Shape9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_1*
T0*
out_type0*
_output_shapes
:

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3StridedSlice5Transformer-MultiHeadSelfAttention_3/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stackETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stack_1ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
é
=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4StridedSlice5Transformer-MultiHeadSelfAttention_3/einsum_1/Shape_1CTransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stackETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stack_1ETransformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_4/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
õ
=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shapePack=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_3?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shape/13Transformer-MultiHeadSelfAttention_3/einsum_1/mul_1?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1Reshape9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_1=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

4Transformer-MultiHeadSelfAttention_3/einsum_1/MatMulBatchMatMul5Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape7Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_1*
T0*
adj_y( *
adj_x( *8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ý
=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shapePack;Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shape/1=Transformer-MultiHeadSelfAttention_3/einsum_1/strided_slice_1?Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shape/3*

axis *
T0*
N*
_output_shapes
:

7Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2Reshape4Transformer-MultiHeadSelfAttention_3/einsum_1/MatMul=Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2/shape*
T0*
Tshape0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:

9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_2	Transpose7Transformer-MultiHeadSelfAttention_3/einsum_1/Reshape_2>Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_2/perm*
T0*
Tperm0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¥
,Transformer-MultiHeadSelfAttention_3/Shape_3Shape9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_2*
T0*
out_type0*
_output_shapes
:

:Transformer-MultiHeadSelfAttention_3/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

<Transformer-MultiHeadSelfAttention_3/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¼
4Transformer-MultiHeadSelfAttention_3/strided_slice_3StridedSlice,Transformer-MultiHeadSelfAttention_3/Shape_3:Transformer-MultiHeadSelfAttention_3/strided_slice_3/stack<Transformer-MultiHeadSelfAttention_3/strided_slice_3/stack_1<Transformer-MultiHeadSelfAttention_3/strided_slice_3/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 

6Transformer-MultiHeadSelfAttention_3/Reshape_3/shape/0Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
y
6Transformer-MultiHeadSelfAttention_3/Reshape_3/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

4Transformer-MultiHeadSelfAttention_3/Reshape_3/shapePack6Transformer-MultiHeadSelfAttention_3/Reshape_3/shape/04Transformer-MultiHeadSelfAttention_3/strided_slice_36Transformer-MultiHeadSelfAttention_3/Reshape_3/shape/2*

axis *
T0*
N*
_output_shapes
:
ø
.Transformer-MultiHeadSelfAttention_3/Reshape_3Reshape9Transformer-MultiHeadSelfAttention_3/einsum_1/transpose_24Transformer-MultiHeadSelfAttention_3/Reshape_3/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
 
2Transformer-MultiHeadSelfAttention_3/dense_4/ShapeShape.Transformer-MultiHeadSelfAttention_3/Reshape_3*
T0*
out_type0*
_output_shapes
:
®
4Transformer-MultiHeadSelfAttention_3/dense_4/unstackUnpack2Transformer-MultiHeadSelfAttention_3/dense_4/Shape*

axis *
T0*	
num*
_output_shapes
: : : 

4Transformer-MultiHeadSelfAttention_3/dense_4/Shape_1Const*
valueB"8  8  *
dtype0*
_output_shapes
:
°
6Transformer-MultiHeadSelfAttention_3/dense_4/unstack_1Unpack4Transformer-MultiHeadSelfAttention_3/dense_4/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

:Transformer-MultiHeadSelfAttention_3/dense_4/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
ì
4Transformer-MultiHeadSelfAttention_3/dense_4/ReshapeReshape.Transformer-MultiHeadSelfAttention_3/Reshape_3:Transformer-MultiHeadSelfAttention_3/dense_4/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

;Transformer-MultiHeadSelfAttention_3/dense_4/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_4/transpose	Transpose6Transformer-MultiHeadSelfAttention/dense_4/kernel/read;Transformer-MultiHeadSelfAttention_3/dense_4/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸¸

<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
ð
6Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_1Reshape6Transformer-MultiHeadSelfAttention_3/dense_4/transpose<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸¸

3Transformer-MultiHeadSelfAttention_3/dense_4/MatMulMatMul4Transformer-MultiHeadSelfAttention_3/dense_4/Reshape6Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

>Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 
¬
<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_2/shapePack4Transformer-MultiHeadSelfAttention_3/dense_4/unstack6Transformer-MultiHeadSelfAttention_3/dense_4/unstack:1>Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:

6Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_2Reshape3Transformer-MultiHeadSelfAttention_3/dense_4/MatMul<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
ñ
6Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_3Reshape4Transformer-MultiHeadSelfAttention/dense_4/bias/read<Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
ç
0Transformer-MultiHeadSelfAttention_3/dense_4/addAdd6Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_26Transformer-MultiHeadSelfAttention_3/dense_4/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
w
5Transformer-MultiHeadSelfAttention_3/ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ì
1Transformer-MultiHeadSelfAttention_3/ExpandDims_2
ExpandDims)Transformer-MultiHeadSelfAttention_3/Cast5Transformer-MultiHeadSelfAttention_3/ExpandDims_2/dim*
T0*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ö
*Transformer-MultiHeadSelfAttention_3/mul_1Mul0Transformer-MultiHeadSelfAttention_3/dense_4/add1Transformer-MultiHeadSelfAttention_3/ExpandDims_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Å
,Transformer-MultiHeadSelfAttention-Add_3/addAdd$Transformer-FeedForward-Norm_2/add_1*Transformer-MultiHeadSelfAttention_3/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
y
7Transformer-MultiHeadSelfAttention-Add_3/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
è
3Transformer-MultiHeadSelfAttention-Add_3/ExpandDims
ExpandDims!Transformer-FeedForward-Add_2/All7Transformer-MultiHeadSelfAttention-Add_3/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
{
9Transformer-MultiHeadSelfAttention-Add_3/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ì
5Transformer-MultiHeadSelfAttention-Add_3/ExpandDims_1
ExpandDims!Transformer-FeedForward-Add_2/All9Transformer-MultiHeadSelfAttention-Add_3/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
v
4Transformer-MultiHeadSelfAttention-Add_3/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
/Transformer-MultiHeadSelfAttention-Add_3/concatConcatV23Transformer-MultiHeadSelfAttention-Add_3/ExpandDims5Transformer-MultiHeadSelfAttention-Add_3/ExpandDims_14Transformer-MultiHeadSelfAttention-Add_3/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>Transformer-MultiHeadSelfAttention-Add_3/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
ó
,Transformer-MultiHeadSelfAttention-Add_3/AllAll/Transformer-MultiHeadSelfAttention-Add_3/concat>Transformer-MultiHeadSelfAttention-Add_3/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

@Transformer-MultiHeadSelfAttention-Norm_3/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

.Transformer-MultiHeadSelfAttention-Norm_3/MeanMean,Transformer-MultiHeadSelfAttention-Add_3/add@Transformer-MultiHeadSelfAttention-Norm_3/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
-Transformer-MultiHeadSelfAttention-Norm_3/subSub,Transformer-MultiHeadSelfAttention-Add_3/add.Transformer-MultiHeadSelfAttention-Norm_3/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
©
0Transformer-MultiHeadSelfAttention-Norm_3/SquareSquare-Transformer-MultiHeadSelfAttention-Norm_3/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

BTransformer-MultiHeadSelfAttention-Norm_3/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

0Transformer-MultiHeadSelfAttention-Norm_3/Mean_1Mean0Transformer-MultiHeadSelfAttention-Norm_3/SquareBTransformer-MultiHeadSelfAttention-Norm_3/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_3/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ö
-Transformer-MultiHeadSelfAttention-Norm_3/addAdd0Transformer-MultiHeadSelfAttention-Norm_3/Mean_1/Transformer-MultiHeadSelfAttention-Norm_3/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
t
/Transformer-MultiHeadSelfAttention-Norm_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
1Transformer-MultiHeadSelfAttention-Norm_3/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
ë
?Transformer-MultiHeadSelfAttention-Norm_3/clip_by_value/MinimumMinimum-Transformer-MultiHeadSelfAttention-Norm_3/add1Transformer-MultiHeadSelfAttention-Norm_3/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ó
7Transformer-MultiHeadSelfAttention-Norm_3/clip_by_valueMaximum?Transformer-MultiHeadSelfAttention-Norm_3/clip_by_value/Minimum/Transformer-MultiHeadSelfAttention-Norm_3/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®
.Transformer-MultiHeadSelfAttention-Norm_3/SqrtSqrt7Transformer-MultiHeadSelfAttention-Norm_3/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Û
1Transformer-MultiHeadSelfAttention-Norm_3/truedivRealDiv-Transformer-MultiHeadSelfAttention-Norm_3/sub.Transformer-MultiHeadSelfAttention-Norm_3/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Û
-Transformer-MultiHeadSelfAttention-Norm_3/mulMul1Transformer-MultiHeadSelfAttention-Norm_3/truediv2Transformer-MultiHeadSelfAttention-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
Ø
/Transformer-MultiHeadSelfAttention-Norm_3/add_1Add-Transformer-MultiHeadSelfAttention-Norm_3/mul1Transformer-MultiHeadSelfAttention-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

'Transformer-FeedForward_3/dense_5/ShapeShape/Transformer-MultiHeadSelfAttention-Norm_3/add_1*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_3/dense_5/unstackUnpack'Transformer-FeedForward_3/dense_5/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_3/dense_5/Shape_1Const*
valueB"8  à  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_3/dense_5/unstack_1Unpack)Transformer-FeedForward_3/dense_5/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_3/dense_5/Reshape/shapeConst*
valueB"ÿÿÿÿ8  *
dtype0*
_output_shapes
:
×
)Transformer-FeedForward_3/dense_5/ReshapeReshape/Transformer-MultiHeadSelfAttention-Norm_3/add_1/Transformer-FeedForward_3/dense_5/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

0Transformer-FeedForward_3/dense_5/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_3/dense_5/transpose	Transpose+Transformer-FeedForward/dense_5/kernel/read0Transformer-FeedForward_3/dense_5/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
¸à	

1Transformer-FeedForward_3/dense_5/Reshape_1/shapeConst*
valueB"8  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_3/dense_5/Reshape_1Reshape+Transformer-FeedForward_3/dense_5/transpose1Transformer-FeedForward_3/dense_5/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
¸à	
ã
(Transformer-FeedForward_3/dense_5/MatMulMatMul)Transformer-FeedForward_3/dense_5/Reshape+Transformer-FeedForward_3/dense_5/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	
v
3Transformer-FeedForward_3/dense_5/Reshape_2/shape/2Const*
value
B :à	*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_3/dense_5/Reshape_2/shapePack)Transformer-FeedForward_3/dense_5/unstack+Transformer-FeedForward_3/dense_5/unstack:13Transformer-FeedForward_3/dense_5/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_3/dense_5/Reshape_2Reshape(Transformer-FeedForward_3/dense_5/MatMul1Transformer-FeedForward_3/dense_5/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

1Transformer-FeedForward_3/dense_5/Reshape_3/shapeConst*!
valueB"      à  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_3/dense_5/Reshape_3Reshape)Transformer-FeedForward/dense_5/bias/read1Transformer-FeedForward_3/dense_5/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:à	
Æ
%Transformer-FeedForward_3/dense_5/addAdd+Transformer-FeedForward_3/dense_5/Reshape_2+Transformer-FeedForward_3/dense_5/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_3/dense_5/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_3/dense_5/PowPow%Transformer-FeedForward_3/dense_5/add'Transformer-FeedForward_3/dense_5/Pow/y*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
l
'Transformer-FeedForward_3/dense_5/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¼
%Transformer-FeedForward_3/dense_5/mulMul'Transformer-FeedForward_3/dense_5/mul/x%Transformer-FeedForward_3/dense_5/Pow*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¼
'Transformer-FeedForward_3/dense_5/add_1Add%Transformer-FeedForward_3/dense_5/add%Transformer-FeedForward_3/dense_5/mul*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_3/dense_5/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_3/dense_5/mul_1Mul)Transformer-FeedForward_3/dense_5/mul_1/x'Transformer-FeedForward_3/dense_5/add_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

&Transformer-FeedForward_3/dense_5/TanhTanh'Transformer-FeedForward_3/dense_5/mul_1*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_3/dense_5/add_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Á
'Transformer-FeedForward_3/dense_5/add_2Add)Transformer-FeedForward_3/dense_5/add_2/x&Transformer-FeedForward_3/dense_5/Tanh*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
n
)Transformer-FeedForward_3/dense_5/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Â
'Transformer-FeedForward_3/dense_5/mul_2Mul)Transformer-FeedForward_3/dense_5/mul_2/x'Transformer-FeedForward_3/dense_5/add_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	
¾
'Transformer-FeedForward_3/dense_5/mul_3Mul%Transformer-FeedForward_3/dense_5/add'Transformer-FeedForward_3/dense_5/mul_2*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà	

'Transformer-FeedForward_3/dense_6/ShapeShape'Transformer-FeedForward_3/dense_5/mul_3*
T0*
out_type0*
_output_shapes
:

)Transformer-FeedForward_3/dense_6/unstackUnpack'Transformer-FeedForward_3/dense_6/Shape*

axis *
T0*	
num*
_output_shapes
: : : 
z
)Transformer-FeedForward_3/dense_6/Shape_1Const*
valueB"à  8  *
dtype0*
_output_shapes
:

+Transformer-FeedForward_3/dense_6/unstack_1Unpack)Transformer-FeedForward_3/dense_6/Shape_1*

axis *
T0*	
num*
_output_shapes
: : 

/Transformer-FeedForward_3/dense_6/Reshape/shapeConst*
valueB"ÿÿÿÿà  *
dtype0*
_output_shapes
:
Ï
)Transformer-FeedForward_3/dense_6/ReshapeReshape'Transformer-FeedForward_3/dense_5/mul_3/Transformer-FeedForward_3/dense_6/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà	

0Transformer-FeedForward_3/dense_6/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_3/dense_6/transpose	Transpose+Transformer-FeedForward/dense_6/kernel/read0Transformer-FeedForward_3/dense_6/transpose/perm*
T0*
Tperm0* 
_output_shapes
:
à	¸

1Transformer-FeedForward_3/dense_6/Reshape_1/shapeConst*
valueB"à  ÿÿÿÿ*
dtype0*
_output_shapes
:
Ï
+Transformer-FeedForward_3/dense_6/Reshape_1Reshape+Transformer-FeedForward_3/dense_6/transpose1Transformer-FeedForward_3/dense_6/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
à	¸
ã
(Transformer-FeedForward_3/dense_6/MatMulMatMul)Transformer-FeedForward_3/dense_6/Reshape+Transformer-FeedForward_3/dense_6/Reshape_1*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
v
3Transformer-FeedForward_3/dense_6/Reshape_2/shape/2Const*
value
B :¸*
dtype0*
_output_shapes
: 

1Transformer-FeedForward_3/dense_6/Reshape_2/shapePack)Transformer-FeedForward_3/dense_6/unstack+Transformer-FeedForward_3/dense_6/unstack:13Transformer-FeedForward_3/dense_6/Reshape_2/shape/2*

axis *
T0*
N*
_output_shapes
:
á
+Transformer-FeedForward_3/dense_6/Reshape_2Reshape(Transformer-FeedForward_3/dense_6/MatMul1Transformer-FeedForward_3/dense_6/Reshape_2/shape*
T0*
Tshape0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

1Transformer-FeedForward_3/dense_6/Reshape_3/shapeConst*!
valueB"      8  *
dtype0*
_output_shapes
:
Ð
+Transformer-FeedForward_3/dense_6/Reshape_3Reshape)Transformer-FeedForward/dense_6/bias/read1Transformer-FeedForward_3/dense_6/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:¸
Æ
%Transformer-FeedForward_3/dense_6/addAdd+Transformer-FeedForward_3/dense_6/Reshape_2+Transformer-FeedForward_3/dense_6/Reshape_3*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
À
!Transformer-FeedForward-Add_3/addAdd/Transformer-MultiHeadSelfAttention-Norm_3/add_1%Transformer-FeedForward_3/dense_6/add*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
n
,Transformer-FeedForward-Add_3/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ý
(Transformer-FeedForward-Add_3/ExpandDims
ExpandDims,Transformer-MultiHeadSelfAttention-Add_3/All,Transformer-FeedForward-Add_3/ExpandDims/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
.Transformer-FeedForward-Add_3/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
á
*Transformer-FeedForward-Add_3/ExpandDims_1
ExpandDims,Transformer-MultiHeadSelfAttention-Add_3/All.Transformer-FeedForward-Add_3/ExpandDims_1/dim*
T0
*

Tdim0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
k
)Transformer-FeedForward-Add_3/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

$Transformer-FeedForward-Add_3/concatConcatV2(Transformer-FeedForward-Add_3/ExpandDims*Transformer-FeedForward-Add_3/ExpandDims_1)Transformer-FeedForward-Add_3/concat/axis*
T0
*
N*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
u
3Transformer-FeedForward-Add_3/All/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
Ò
!Transformer-FeedForward-Add_3/AllAll$Transformer-FeedForward-Add_3/concat3Transformer-FeedForward-Add_3/All/reduction_indices*
	keep_dims( *

Tidx0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5Transformer-FeedForward-Norm_3/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
á
#Transformer-FeedForward-Norm_3/MeanMean!Transformer-FeedForward-Add_3/add5Transformer-FeedForward-Norm_3/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±
"Transformer-FeedForward-Norm_3/subSub!Transformer-FeedForward-Add_3/add#Transformer-FeedForward-Norm_3/Mean*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

%Transformer-FeedForward-Norm_3/SquareSquare"Transformer-FeedForward-Norm_3/sub*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸

7Transformer-FeedForward-Norm_3/Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
é
%Transformer-FeedForward-Norm_3/Mean_1Mean%Transformer-FeedForward-Norm_3/Square7Transformer-FeedForward-Norm_3/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_3/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
µ
"Transformer-FeedForward-Norm_3/addAdd%Transformer-FeedForward-Norm_3/Mean_1$Transformer-FeedForward-Norm_3/add/y*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
i
$Transformer-FeedForward-Norm_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&Transformer-FeedForward-Norm_3/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
Ê
4Transformer-FeedForward-Norm_3/clip_by_value/MinimumMinimum"Transformer-FeedForward-Norm_3/add&Transformer-FeedForward-Norm_3/Const_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ò
,Transformer-FeedForward-Norm_3/clip_by_valueMaximum4Transformer-FeedForward-Norm_3/clip_by_value/Minimum$Transformer-FeedForward-Norm_3/Const*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

#Transformer-FeedForward-Norm_3/SqrtSqrt,Transformer-FeedForward-Norm_3/clip_by_value*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
º
&Transformer-FeedForward-Norm_3/truedivRealDiv"Transformer-FeedForward-Norm_3/sub#Transformer-FeedForward-Norm_3/Sqrt*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
º
"Transformer-FeedForward-Norm_3/mulMul&Transformer-FeedForward-Norm_3/truediv'Transformer-FeedForward-Norm/gamma/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
·
$Transformer-FeedForward-Norm_3/add_1Add"Transformer-FeedForward-Norm_3/mul&Transformer-FeedForward-Norm/beta/read*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
b
PlaceholderPlaceholder*
dtype0*
shape:¥¸*!
_output_shapes
:¥¸
½
AssignAssignEmbedding-Token/embeddingsPlaceholder*
T0*
use_locking( *
validate_shape(*-
_class#
!loc:@Embedding-Token/embeddings*!
_output_shapes
:¥¸
`
Placeholder_1Placeholder*
dtype0*
shape:	¸*
_output_shapes
:	¸
Ã
Assign_1AssignEmbedding-Segment/embeddingsPlaceholder_1*
T0*
use_locking( *
validate_shape(*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
:	¸
b
Placeholder_2Placeholder*
dtype0*
shape:
¸* 
_output_shapes
:
¸
Æ
Assign_2AssignEmbedding-Position/embeddingsPlaceholder_2*
T0*
use_locking( *
validate_shape(*0
_class&
$"loc:@Embedding-Position/embeddings* 
_output_shapes
:
¸
X
Placeholder_3Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
­
Assign_3AssignEmbedding-Norm/betaPlaceholder_3*
T0*
use_locking( *
validate_shape(*&
_class
loc:@Embedding-Norm/beta*
_output_shapes	
:¸
X
Placeholder_4Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
¯
Assign_4AssignEmbedding-Norm/gammaPlaceholder_4*
T0*
use_locking( *
validate_shape(*'
_class
loc:@Embedding-Norm/gamma*
_output_shapes	
:¸
b
Placeholder_5Placeholder*
dtype0*
shape:
¸¸* 
_output_shapes
:
¸¸
î
Assign_5Assign1Transformer-MultiHeadSelfAttention/dense_1/kernelPlaceholder_5*
T0*
use_locking( *
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_1/kernel* 
_output_shapes
:
¸¸
X
Placeholder_6Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
å
Assign_6Assign/Transformer-MultiHeadSelfAttention/dense_1/biasPlaceholder_6*
T0*
use_locking( *
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_1/bias*
_output_shapes	
:¸
b
Placeholder_7Placeholder*
dtype0*
shape:
¸¸* 
_output_shapes
:
¸¸
î
Assign_7Assign1Transformer-MultiHeadSelfAttention/dense_2/kernelPlaceholder_7*
T0*
use_locking( *
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_2/kernel* 
_output_shapes
:
¸¸
X
Placeholder_8Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
å
Assign_8Assign/Transformer-MultiHeadSelfAttention/dense_2/biasPlaceholder_8*
T0*
use_locking( *
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_2/bias*
_output_shapes	
:¸
b
Placeholder_9Placeholder*
dtype0*
shape:
¸¸* 
_output_shapes
:
¸¸
î
Assign_9Assign1Transformer-MultiHeadSelfAttention/dense_3/kernelPlaceholder_9*
T0*
use_locking( *
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_3/kernel* 
_output_shapes
:
¸¸
Y
Placeholder_10Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
ç
	Assign_10Assign/Transformer-MultiHeadSelfAttention/dense_3/biasPlaceholder_10*
T0*
use_locking( *
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_3/bias*
_output_shapes	
:¸
c
Placeholder_11Placeholder*
dtype0*
shape:
¸¸* 
_output_shapes
:
¸¸
ð
	Assign_11Assign1Transformer-MultiHeadSelfAttention/dense_4/kernelPlaceholder_11*
T0*
use_locking( *
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_4/kernel* 
_output_shapes
:
¸¸
Y
Placeholder_12Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
ç
	Assign_12Assign/Transformer-MultiHeadSelfAttention/dense_4/biasPlaceholder_12*
T0*
use_locking( *
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_4/bias*
_output_shapes	
:¸
Y
Placeholder_13Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
á
	Assign_13Assign,Transformer-MultiHeadSelfAttention-Norm/betaPlaceholder_13*
T0*
use_locking( *
validate_shape(*?
_class5
31loc:@Transformer-MultiHeadSelfAttention-Norm/beta*
_output_shapes	
:¸
Y
Placeholder_14Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
ã
	Assign_14Assign-Transformer-MultiHeadSelfAttention-Norm/gammaPlaceholder_14*
T0*
use_locking( *
validate_shape(*@
_class6
42loc:@Transformer-MultiHeadSelfAttention-Norm/gamma*
_output_shapes	
:¸
c
Placeholder_15Placeholder*
dtype0*
shape:
¸à	* 
_output_shapes
:
¸à	
Ú
	Assign_15Assign&Transformer-FeedForward/dense_5/kernelPlaceholder_15*
T0*
use_locking( *
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_5/kernel* 
_output_shapes
:
¸à	
Y
Placeholder_16Placeholder*
dtype0*
shape:à	*
_output_shapes	
:à	
Ñ
	Assign_16Assign$Transformer-FeedForward/dense_5/biasPlaceholder_16*
T0*
use_locking( *
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_5/bias*
_output_shapes	
:à	
c
Placeholder_17Placeholder*
dtype0*
shape:
à	¸* 
_output_shapes
:
à	¸
Ú
	Assign_17Assign&Transformer-FeedForward/dense_6/kernelPlaceholder_17*
T0*
use_locking( *
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_6/kernel* 
_output_shapes
:
à	¸
Y
Placeholder_18Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
Ñ
	Assign_18Assign$Transformer-FeedForward/dense_6/biasPlaceholder_18*
T0*
use_locking( *
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_6/bias*
_output_shapes	
:¸
Y
Placeholder_19Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
Ë
	Assign_19Assign!Transformer-FeedForward-Norm/betaPlaceholder_19*
T0*
use_locking( *
validate_shape(*4
_class*
(&loc:@Transformer-FeedForward-Norm/beta*
_output_shapes	
:¸
Y
Placeholder_20Placeholder*
dtype0*
shape:¸*
_output_shapes	
:¸
Í
	Assign_20Assign"Transformer-FeedForward-Norm/gammaPlaceholder_20*
T0*
use_locking( *
validate_shape(*5
_class+
)'loc:@Transformer-FeedForward-Norm/gamma*
_output_shapes	
:¸

IsVariableInitializedIsVariableInitializedEmbedding-Token/embeddings*
dtype0*-
_class#
!loc:@Embedding-Token/embeddings*
_output_shapes
: 
¤
IsVariableInitialized_1IsVariableInitializedEmbedding-Segment/embeddings*
dtype0*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
: 
¦
IsVariableInitialized_2IsVariableInitializedEmbedding-Position/embeddings*
dtype0*0
_class&
$"loc:@Embedding-Position/embeddings*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedEmbedding-Norm/beta*
dtype0*&
_class
loc:@Embedding-Norm/beta*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedEmbedding-Norm/gamma*
dtype0*'
_class
loc:@Embedding-Norm/gamma*
_output_shapes
: 
Î
IsVariableInitialized_5IsVariableInitialized1Transformer-MultiHeadSelfAttention/dense_1/kernel*
dtype0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_1/kernel*
_output_shapes
: 
Ê
IsVariableInitialized_6IsVariableInitialized/Transformer-MultiHeadSelfAttention/dense_1/bias*
dtype0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_1/bias*
_output_shapes
: 
Î
IsVariableInitialized_7IsVariableInitialized1Transformer-MultiHeadSelfAttention/dense_2/kernel*
dtype0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_2/kernel*
_output_shapes
: 
Ê
IsVariableInitialized_8IsVariableInitialized/Transformer-MultiHeadSelfAttention/dense_2/bias*
dtype0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_2/bias*
_output_shapes
: 
Î
IsVariableInitialized_9IsVariableInitialized1Transformer-MultiHeadSelfAttention/dense_3/kernel*
dtype0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_3/kernel*
_output_shapes
: 
Ë
IsVariableInitialized_10IsVariableInitialized/Transformer-MultiHeadSelfAttention/dense_3/bias*
dtype0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_3/bias*
_output_shapes
: 
Ï
IsVariableInitialized_11IsVariableInitialized1Transformer-MultiHeadSelfAttention/dense_4/kernel*
dtype0*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_4/kernel*
_output_shapes
: 
Ë
IsVariableInitialized_12IsVariableInitialized/Transformer-MultiHeadSelfAttention/dense_4/bias*
dtype0*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_4/bias*
_output_shapes
: 
Å
IsVariableInitialized_13IsVariableInitialized,Transformer-MultiHeadSelfAttention-Norm/beta*
dtype0*?
_class5
31loc:@Transformer-MultiHeadSelfAttention-Norm/beta*
_output_shapes
: 
Ç
IsVariableInitialized_14IsVariableInitialized-Transformer-MultiHeadSelfAttention-Norm/gamma*
dtype0*@
_class6
42loc:@Transformer-MultiHeadSelfAttention-Norm/gamma*
_output_shapes
: 
¹
IsVariableInitialized_15IsVariableInitialized&Transformer-FeedForward/dense_5/kernel*
dtype0*9
_class/
-+loc:@Transformer-FeedForward/dense_5/kernel*
_output_shapes
: 
µ
IsVariableInitialized_16IsVariableInitialized$Transformer-FeedForward/dense_5/bias*
dtype0*7
_class-
+)loc:@Transformer-FeedForward/dense_5/bias*
_output_shapes
: 
¹
IsVariableInitialized_17IsVariableInitialized&Transformer-FeedForward/dense_6/kernel*
dtype0*9
_class/
-+loc:@Transformer-FeedForward/dense_6/kernel*
_output_shapes
: 
µ
IsVariableInitialized_18IsVariableInitialized$Transformer-FeedForward/dense_6/bias*
dtype0*7
_class-
+)loc:@Transformer-FeedForward/dense_6/bias*
_output_shapes
: 
¯
IsVariableInitialized_19IsVariableInitialized!Transformer-FeedForward-Norm/beta*
dtype0*4
_class*
(&loc:@Transformer-FeedForward-Norm/beta*
_output_shapes
: 
±
IsVariableInitialized_20IsVariableInitialized"Transformer-FeedForward-Norm/gamma*
dtype0*5
_class+
)'loc:@Transformer-FeedForward-Norm/gamma*
_output_shapes
: 

initNoOp^Embedding-Norm/beta/Assign^Embedding-Norm/gamma/Assign%^Embedding-Position/embeddings/Assign$^Embedding-Segment/embeddings/Assign"^Embedding-Token/embeddings/Assign)^Transformer-FeedForward-Norm/beta/Assign*^Transformer-FeedForward-Norm/gamma/Assign,^Transformer-FeedForward/dense_5/bias/Assign.^Transformer-FeedForward/dense_5/kernel/Assign,^Transformer-FeedForward/dense_6/bias/Assign.^Transformer-FeedForward/dense_6/kernel/Assign4^Transformer-MultiHeadSelfAttention-Norm/beta/Assign5^Transformer-MultiHeadSelfAttention-Norm/gamma/Assign7^Transformer-MultiHeadSelfAttention/dense_1/bias/Assign9^Transformer-MultiHeadSelfAttention/dense_1/kernel/Assign7^Transformer-MultiHeadSelfAttention/dense_2/bias/Assign9^Transformer-MultiHeadSelfAttention/dense_2/kernel/Assign7^Transformer-MultiHeadSelfAttention/dense_3/bias/Assign9^Transformer-MultiHeadSelfAttention/dense_3/kernel/Assign7^Transformer-MultiHeadSelfAttention/dense_4/bias/Assign9^Transformer-MultiHeadSelfAttention/dense_4/kernel/Assign
n
CLS-token/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
p
CLS-token/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
p
CLS-token/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ò
CLS-token/strided_sliceStridedSlice$Transformer-FeedForward-Norm_3/add_1CLS-token/strided_slice/stackCLS-token/strided_slice/stack_1CLS-token/strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

CLS-token/PlaceholderPlaceholder*
dtype0**
shape!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
p
CLS-token/strided_slice_1/stackConst*
valueB"        *
dtype0*
_output_shapes
:
r
!CLS-token/strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
r
!CLS-token/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ë
CLS-token/strided_slice_1StridedSliceCLS-token/PlaceholderCLS-token/strided_slice_1/stack!CLS-token/strided_slice_1/stack_1!CLS-token/strided_slice_1/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
shape: *
_output_shapes
: 

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
Ç
dropout_1/cond/mul/SwitchSwitchCLS-token/strided_slicedropout_1/cond/pred_id*
T0**
_class 
loc:@CLS-token/strided_slice*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ¸:ÿÿÿÿÿÿÿÿÿ¸
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0*
_output_shapes
:
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
À
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*
seed2Ï®L*
seed±ÿå)*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ã
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
µ
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

dropout_1/cond/dropout/truedivRealDivdropout_1/cond/muldropout_1/cond/dropout/sub*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
Å
dropout_1/cond/Switch_1SwitchCLS-token/strided_slicedropout_1/cond/pred_id*
T0**
_class 
loc:@CLS-token/strided_slice*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ¸:ÿÿÿÿÿÿÿÿÿ¸

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸: 
o
dense_7/truncated_normal/shapeConst*
valueB"8     *
dtype0*
_output_shapes
:
b
dense_7/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
dense_7/truncated_normal/stddevConst*
valueB
 *
×£<*
dtype0*
_output_shapes
: 
±
(dense_7/truncated_normal/TruncatedNormalTruncatedNormaldense_7/truncated_normal/shape*
T0*
dtype0*
seed2áµ*
seed±ÿå)*
_output_shapes
:	¸

dense_7/truncated_normal/mulMul(dense_7/truncated_normal/TruncatedNormaldense_7/truncated_normal/stddev*
T0*
_output_shapes
:	¸

dense_7/truncated_normalAdddense_7/truncated_normal/muldense_7/truncated_normal/mean*
T0*
_output_shapes
:	¸

dense_7/kernel
VariableV2*
dtype0*
shared_name *
shape:	¸*
	container *
_output_shapes
:	¸
¿
dense_7/kernel/AssignAssigndense_7/kerneldense_7/truncated_normal*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_7/kernel*
_output_shapes
:	¸
|
dense_7/kernel/readIdentitydense_7/kernel*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes
:	¸
Z
dense_7/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_7/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:
©
dense_7/bias/AssignAssigndense_7/biasdense_7/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_7/bias*
_output_shapes
:
q
dense_7/bias/readIdentitydense_7/bias*
T0*
_class
loc:@dense_7/bias*
_output_shapes
:

dense_7/MatMulMatMuldropout_1/cond/Mergedense_7/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_7/BiasAddBiasAdddense_7/MatMuldense_7/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
dense_7/SigmoidSigmoiddense_7/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
dtype0	*
shared_name *
shape: *
	container *
_output_shapes
: 
¾
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
T0	*
use_locking(*
validate_shape(*"
_class
loc:@Adam/iterations*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *¬Å§7*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
®
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/beta_1*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
®
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/beta_2*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
ª
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/decay*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

dense_7_targetPlaceholder*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
q
dense_7_sample_weightsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
loss/dense_7_loss/subSubdense_7/Sigmoiddense_7_target*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
n
loss/dense_7_loss/AbsAbsloss/dense_7_loss/sub*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
s
(loss/dense_7_loss/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
ª
loss/dense_7_loss/MeanMeanloss/dense_7_loss/Abs(loss/dense_7_loss/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
m
*loss/dense_7_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
¯
loss/dense_7_loss/Mean_1Meanloss/dense_7_loss/Mean*loss/dense_7_loss/Mean_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
loss/dense_7_loss/mulMulloss/dense_7_loss/Mean_1dense_7_sample_weights*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
loss/dense_7_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_7_loss/NotEqualNotEqualdense_7_sample_weightsloss/dense_7_loss/NotEqual/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

loss/dense_7_loss/CastCastloss/dense_7_loss/NotEqual*

DstT0*
Truncate( *

SrcT0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
loss/dense_7_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_7_loss/Mean_2Meanloss/dense_7_loss/Castloss/dense_7_loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

loss/dense_7_loss/truedivRealDivloss/dense_7_loss/mulloss/dense_7_loss/Mean_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
loss/dense_7_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_7_loss/Mean_3Meanloss/dense_7_loss/truedivloss/dense_7_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_7_loss/Mean_3*
T0*
_output_shapes
: 

metrics/mean_absolute_error/subSubdense_7/Sigmoiddense_7_target*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

metrics/mean_absolute_error/AbsAbsmetrics/mean_absolute_error/sub*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
}
2metrics/mean_absolute_error/Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
È
 metrics/mean_absolute_error/MeanMeanmetrics/mean_absolute_error/Abs2metrics/mean_absolute_error/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
!metrics/mean_absolute_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
­
"metrics/mean_absolute_error/Mean_1Mean metrics/mean_absolute_error/Mean!metrics/mean_absolute_error/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
a
Placeholder_21Placeholder*
dtype0*
shape:	¸*
_output_shapes
:	¸
©
	Assign_21Assigndense_7/kernelPlaceholder_21*
T0*
use_locking( *
validate_shape(*!
_class
loc:@dense_7/kernel*
_output_shapes
:	¸
W
Placeholder_22Placeholder*
dtype0*
shape:*
_output_shapes
:
 
	Assign_22Assigndense_7/biasPlaceholder_22*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense_7/bias*
_output_shapes
:

IsVariableInitialized_21IsVariableInitializeddense_7/kernel*
dtype0*!
_class
loc:@dense_7/kernel*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializeddense_7/bias*
dtype0*
_class
loc:@dense_7/bias*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedAdam/iterations*
dtype0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
{
IsVariableInitialized_24IsVariableInitializedAdam/lr*
dtype0*
_class
loc:@Adam/lr*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializedAdam/beta_1*
dtype0*
_class
loc:@Adam/beta_1*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedAdam/beta_2*
dtype0*
_class
loc:@Adam/beta_2*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitialized
Adam/decay*
dtype0*
_class
loc:@Adam/decay*
_output_shapes
: 
¤
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_7/bias/Assign^dense_7/kernel/Assign
$

group_depsNoOp^dense_7/Sigmoid
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_aeca5a66835642d58c16278be92557dd/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
£
save/SaveV2/tensor_namesConst"/device:CPU:0*Ç
value½BºBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBEmbedding-Norm/betaBEmbedding-Norm/gammaBEmbedding-Position/embeddingsBEmbedding-Segment/embeddingsBEmbedding-Token/embeddingsB!Transformer-FeedForward-Norm/betaB"Transformer-FeedForward-Norm/gammaB$Transformer-FeedForward/dense_5/biasB&Transformer-FeedForward/dense_5/kernelB$Transformer-FeedForward/dense_6/biasB&Transformer-FeedForward/dense_6/kernelB,Transformer-MultiHeadSelfAttention-Norm/betaB-Transformer-MultiHeadSelfAttention-Norm/gammaB/Transformer-MultiHeadSelfAttention/dense_1/biasB1Transformer-MultiHeadSelfAttention/dense_1/kernelB/Transformer-MultiHeadSelfAttention/dense_2/biasB1Transformer-MultiHeadSelfAttention/dense_2/kernelB/Transformer-MultiHeadSelfAttention/dense_3/biasB1Transformer-MultiHeadSelfAttention/dense_3/kernelB/Transformer-MultiHeadSelfAttention/dense_4/biasB1Transformer-MultiHeadSelfAttention/dense_4/kernelBdense_7/biasBdense_7/kernel*
dtype0*
_output_shapes
:
ª
save/SaveV2/shape_and_slicesConst"/device:CPU:0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ð
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrEmbedding-Norm/betaEmbedding-Norm/gammaEmbedding-Position/embeddingsEmbedding-Segment/embeddingsEmbedding-Token/embeddings!Transformer-FeedForward-Norm/beta"Transformer-FeedForward-Norm/gamma$Transformer-FeedForward/dense_5/bias&Transformer-FeedForward/dense_5/kernel$Transformer-FeedForward/dense_6/bias&Transformer-FeedForward/dense_6/kernel,Transformer-MultiHeadSelfAttention-Norm/beta-Transformer-MultiHeadSelfAttention-Norm/gamma/Transformer-MultiHeadSelfAttention/dense_1/bias1Transformer-MultiHeadSelfAttention/dense_1/kernel/Transformer-MultiHeadSelfAttention/dense_2/bias1Transformer-MultiHeadSelfAttention/dense_2/kernel/Transformer-MultiHeadSelfAttention/dense_3/bias1Transformer-MultiHeadSelfAttention/dense_3/kernel/Transformer-MultiHeadSelfAttention/dense_4/bias1Transformer-MultiHeadSelfAttention/dense_4/kerneldense_7/biasdense_7/kernel"/device:CPU:0**
dtypes 
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
¦
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ç
value½BºBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBEmbedding-Norm/betaBEmbedding-Norm/gammaBEmbedding-Position/embeddingsBEmbedding-Segment/embeddingsBEmbedding-Token/embeddingsB!Transformer-FeedForward-Norm/betaB"Transformer-FeedForward-Norm/gammaB$Transformer-FeedForward/dense_5/biasB&Transformer-FeedForward/dense_5/kernelB$Transformer-FeedForward/dense_6/biasB&Transformer-FeedForward/dense_6/kernelB,Transformer-MultiHeadSelfAttention-Norm/betaB-Transformer-MultiHeadSelfAttention-Norm/gammaB/Transformer-MultiHeadSelfAttention/dense_1/biasB1Transformer-MultiHeadSelfAttention/dense_1/kernelB/Transformer-MultiHeadSelfAttention/dense_2/biasB1Transformer-MultiHeadSelfAttention/dense_2/kernelB/Transformer-MultiHeadSelfAttention/dense_3/biasB1Transformer-MultiHeadSelfAttention/dense_3/kernelB/Transformer-MultiHeadSelfAttention/dense_4/biasB1Transformer-MultiHeadSelfAttention/dense_4/kernelBdense_7/biasBdense_7/kernel*
dtype0*
_output_shapes
:
­
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
§
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0**
dtypes 
2	*
_output_shapesr
p::::::::::::::::::::::::::::

save/AssignAssignAdam/beta_1save/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/beta_1*
_output_shapes
: 
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/beta_2*
_output_shapes
: 

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/decay*
_output_shapes
: 
¨
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
T0	*
use_locking(*
validate_shape(*"
_class
loc:@Adam/iterations*
_output_shapes
: 

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@Adam/lr*
_output_shapes
: 
µ
save/Assign_5AssignEmbedding-Norm/betasave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*&
_class
loc:@Embedding-Norm/beta*
_output_shapes	
:¸
·
save/Assign_6AssignEmbedding-Norm/gammasave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*'
_class
loc:@Embedding-Norm/gamma*
_output_shapes	
:¸
Î
save/Assign_7AssignEmbedding-Position/embeddingssave/RestoreV2:7*
T0*
use_locking(*
validate_shape(*0
_class&
$"loc:@Embedding-Position/embeddings* 
_output_shapes
:
¸
Ë
save/Assign_8AssignEmbedding-Segment/embeddingssave/RestoreV2:8*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@Embedding-Segment/embeddings*
_output_shapes
:	¸
É
save/Assign_9AssignEmbedding-Token/embeddingssave/RestoreV2:9*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@Embedding-Token/embeddings*!
_output_shapes
:¥¸
Ó
save/Assign_10Assign!Transformer-FeedForward-Norm/betasave/RestoreV2:10*
T0*
use_locking(*
validate_shape(*4
_class*
(&loc:@Transformer-FeedForward-Norm/beta*
_output_shapes	
:¸
Õ
save/Assign_11Assign"Transformer-FeedForward-Norm/gammasave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@Transformer-FeedForward-Norm/gamma*
_output_shapes	
:¸
Ù
save/Assign_12Assign$Transformer-FeedForward/dense_5/biassave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_5/bias*
_output_shapes	
:à	
â
save/Assign_13Assign&Transformer-FeedForward/dense_5/kernelsave/RestoreV2:13*
T0*
use_locking(*
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_5/kernel* 
_output_shapes
:
¸à	
Ù
save/Assign_14Assign$Transformer-FeedForward/dense_6/biassave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*7
_class-
+)loc:@Transformer-FeedForward/dense_6/bias*
_output_shapes	
:¸
â
save/Assign_15Assign&Transformer-FeedForward/dense_6/kernelsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(*9
_class/
-+loc:@Transformer-FeedForward/dense_6/kernel* 
_output_shapes
:
à	¸
é
save/Assign_16Assign,Transformer-MultiHeadSelfAttention-Norm/betasave/RestoreV2:16*
T0*
use_locking(*
validate_shape(*?
_class5
31loc:@Transformer-MultiHeadSelfAttention-Norm/beta*
_output_shapes	
:¸
ë
save/Assign_17Assign-Transformer-MultiHeadSelfAttention-Norm/gammasave/RestoreV2:17*
T0*
use_locking(*
validate_shape(*@
_class6
42loc:@Transformer-MultiHeadSelfAttention-Norm/gamma*
_output_shapes	
:¸
ï
save/Assign_18Assign/Transformer-MultiHeadSelfAttention/dense_1/biassave/RestoreV2:18*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_1/bias*
_output_shapes	
:¸
ø
save/Assign_19Assign1Transformer-MultiHeadSelfAttention/dense_1/kernelsave/RestoreV2:19*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_1/kernel* 
_output_shapes
:
¸¸
ï
save/Assign_20Assign/Transformer-MultiHeadSelfAttention/dense_2/biassave/RestoreV2:20*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_2/bias*
_output_shapes	
:¸
ø
save/Assign_21Assign1Transformer-MultiHeadSelfAttention/dense_2/kernelsave/RestoreV2:21*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_2/kernel* 
_output_shapes
:
¸¸
ï
save/Assign_22Assign/Transformer-MultiHeadSelfAttention/dense_3/biassave/RestoreV2:22*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_3/bias*
_output_shapes	
:¸
ø
save/Assign_23Assign1Transformer-MultiHeadSelfAttention/dense_3/kernelsave/RestoreV2:23*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_3/kernel* 
_output_shapes
:
¸¸
ï
save/Assign_24Assign/Transformer-MultiHeadSelfAttention/dense_4/biassave/RestoreV2:24*
T0*
use_locking(*
validate_shape(*B
_class8
64loc:@Transformer-MultiHeadSelfAttention/dense_4/bias*
_output_shapes	
:¸
ø
save/Assign_25Assign1Transformer-MultiHeadSelfAttention/dense_4/kernelsave/RestoreV2:25*
T0*
use_locking(*
validate_shape(*D
_class:
86loc:@Transformer-MultiHeadSelfAttention/dense_4/kernel* 
_output_shapes
:
¸¸
¨
save/Assign_26Assigndense_7/biassave/RestoreV2:26*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_7/bias*
_output_shapes
:
±
save/Assign_27Assigndense_7/kernelsave/RestoreV2:27*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_7/kernel*
_output_shapes
:	¸
ê
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"$
trainable_variablesô#ñ#

Embedding-Token/embeddings:0!Embedding-Token/embeddings/Assign!Embedding-Token/embeddings/read:02"Embedding-Token/truncated_normal:08

Embedding-Segment/embeddings:0#Embedding-Segment/embeddings/Assign#Embedding-Segment/embeddings/read:02$Embedding-Segment/truncated_normal:08

Embedding-Position/embeddings:0$Embedding-Position/embeddings/Assign$Embedding-Position/embeddings/read:02%Embedding-Position/truncated_normal:08
i
Embedding-Norm/beta:0Embedding-Norm/beta/AssignEmbedding-Norm/beta/read:02Embedding-Norm/Const:08
n
Embedding-Norm/gamma:0Embedding-Norm/gamma/AssignEmbedding-Norm/gamma/read:02Embedding-Norm/Const_1:08
ê
3Transformer-MultiHeadSelfAttention/dense_1/kernel:08Transformer-MultiHeadSelfAttention/dense_1/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_1/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_1/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_1/bias:06Transformer-MultiHeadSelfAttention/dense_1/bias/Assign6Transformer-MultiHeadSelfAttention/dense_1/bias/read:022Transformer-MultiHeadSelfAttention/dense_1/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_2/kernel:08Transformer-MultiHeadSelfAttention/dense_2/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_2/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_2/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_2/bias:06Transformer-MultiHeadSelfAttention/dense_2/bias/Assign6Transformer-MultiHeadSelfAttention/dense_2/bias/read:022Transformer-MultiHeadSelfAttention/dense_2/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_3/kernel:08Transformer-MultiHeadSelfAttention/dense_3/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_3/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_3/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_3/bias:06Transformer-MultiHeadSelfAttention/dense_3/bias/Assign6Transformer-MultiHeadSelfAttention/dense_3/bias/read:022Transformer-MultiHeadSelfAttention/dense_3/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_4/kernel:08Transformer-MultiHeadSelfAttention/dense_4/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_4/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_4/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_4/bias:06Transformer-MultiHeadSelfAttention/dense_4/bias/Assign6Transformer-MultiHeadSelfAttention/dense_4/bias/read:022Transformer-MultiHeadSelfAttention/dense_4/Const:08
Í
.Transformer-MultiHeadSelfAttention-Norm/beta:03Transformer-MultiHeadSelfAttention-Norm/beta/Assign3Transformer-MultiHeadSelfAttention-Norm/beta/read:02/Transformer-MultiHeadSelfAttention-Norm/Const:08
Ò
/Transformer-MultiHeadSelfAttention-Norm/gamma:04Transformer-MultiHeadSelfAttention-Norm/gamma/Assign4Transformer-MultiHeadSelfAttention-Norm/gamma/read:021Transformer-MultiHeadSelfAttention-Norm/Const_1:08
¾
(Transformer-FeedForward/dense_5/kernel:0-Transformer-FeedForward/dense_5/kernel/Assign-Transformer-FeedForward/dense_5/kernel/read:022Transformer-FeedForward/dense_5/truncated_normal:08
­
&Transformer-FeedForward/dense_5/bias:0+Transformer-FeedForward/dense_5/bias/Assign+Transformer-FeedForward/dense_5/bias/read:02'Transformer-FeedForward/dense_5/Const:08
¾
(Transformer-FeedForward/dense_6/kernel:0-Transformer-FeedForward/dense_6/kernel/Assign-Transformer-FeedForward/dense_6/kernel/read:022Transformer-FeedForward/dense_6/truncated_normal:08
­
&Transformer-FeedForward/dense_6/bias:0+Transformer-FeedForward/dense_6/bias/Assign+Transformer-FeedForward/dense_6/bias/read:02'Transformer-FeedForward/dense_6/Const:08
¡
#Transformer-FeedForward-Norm/beta:0(Transformer-FeedForward-Norm/beta/Assign(Transformer-FeedForward-Norm/beta/read:02$Transformer-FeedForward-Norm/Const:08
¦
$Transformer-FeedForward-Norm/gamma:0)Transformer-FeedForward-Norm/gamma/Assign)Transformer-FeedForward-Norm/gamma/read:02&Transformer-FeedForward-Norm/Const_1:08
^
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02dense_7/truncated_normal:08
M
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02dense_7/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08"$
	variablesô#ñ#

Embedding-Token/embeddings:0!Embedding-Token/embeddings/Assign!Embedding-Token/embeddings/read:02"Embedding-Token/truncated_normal:08

Embedding-Segment/embeddings:0#Embedding-Segment/embeddings/Assign#Embedding-Segment/embeddings/read:02$Embedding-Segment/truncated_normal:08

Embedding-Position/embeddings:0$Embedding-Position/embeddings/Assign$Embedding-Position/embeddings/read:02%Embedding-Position/truncated_normal:08
i
Embedding-Norm/beta:0Embedding-Norm/beta/AssignEmbedding-Norm/beta/read:02Embedding-Norm/Const:08
n
Embedding-Norm/gamma:0Embedding-Norm/gamma/AssignEmbedding-Norm/gamma/read:02Embedding-Norm/Const_1:08
ê
3Transformer-MultiHeadSelfAttention/dense_1/kernel:08Transformer-MultiHeadSelfAttention/dense_1/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_1/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_1/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_1/bias:06Transformer-MultiHeadSelfAttention/dense_1/bias/Assign6Transformer-MultiHeadSelfAttention/dense_1/bias/read:022Transformer-MultiHeadSelfAttention/dense_1/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_2/kernel:08Transformer-MultiHeadSelfAttention/dense_2/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_2/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_2/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_2/bias:06Transformer-MultiHeadSelfAttention/dense_2/bias/Assign6Transformer-MultiHeadSelfAttention/dense_2/bias/read:022Transformer-MultiHeadSelfAttention/dense_2/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_3/kernel:08Transformer-MultiHeadSelfAttention/dense_3/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_3/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_3/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_3/bias:06Transformer-MultiHeadSelfAttention/dense_3/bias/Assign6Transformer-MultiHeadSelfAttention/dense_3/bias/read:022Transformer-MultiHeadSelfAttention/dense_3/Const:08
ê
3Transformer-MultiHeadSelfAttention/dense_4/kernel:08Transformer-MultiHeadSelfAttention/dense_4/kernel/Assign8Transformer-MultiHeadSelfAttention/dense_4/kernel/read:02=Transformer-MultiHeadSelfAttention/dense_4/truncated_normal:08
Ù
1Transformer-MultiHeadSelfAttention/dense_4/bias:06Transformer-MultiHeadSelfAttention/dense_4/bias/Assign6Transformer-MultiHeadSelfAttention/dense_4/bias/read:022Transformer-MultiHeadSelfAttention/dense_4/Const:08
Í
.Transformer-MultiHeadSelfAttention-Norm/beta:03Transformer-MultiHeadSelfAttention-Norm/beta/Assign3Transformer-MultiHeadSelfAttention-Norm/beta/read:02/Transformer-MultiHeadSelfAttention-Norm/Const:08
Ò
/Transformer-MultiHeadSelfAttention-Norm/gamma:04Transformer-MultiHeadSelfAttention-Norm/gamma/Assign4Transformer-MultiHeadSelfAttention-Norm/gamma/read:021Transformer-MultiHeadSelfAttention-Norm/Const_1:08
¾
(Transformer-FeedForward/dense_5/kernel:0-Transformer-FeedForward/dense_5/kernel/Assign-Transformer-FeedForward/dense_5/kernel/read:022Transformer-FeedForward/dense_5/truncated_normal:08
­
&Transformer-FeedForward/dense_5/bias:0+Transformer-FeedForward/dense_5/bias/Assign+Transformer-FeedForward/dense_5/bias/read:02'Transformer-FeedForward/dense_5/Const:08
¾
(Transformer-FeedForward/dense_6/kernel:0-Transformer-FeedForward/dense_6/kernel/Assign-Transformer-FeedForward/dense_6/kernel/read:022Transformer-FeedForward/dense_6/truncated_normal:08
­
&Transformer-FeedForward/dense_6/bias:0+Transformer-FeedForward/dense_6/bias/Assign+Transformer-FeedForward/dense_6/bias/read:02'Transformer-FeedForward/dense_6/Const:08
¡
#Transformer-FeedForward-Norm/beta:0(Transformer-FeedForward-Norm/beta/Assign(Transformer-FeedForward-Norm/beta/read:02$Transformer-FeedForward-Norm/Const:08
¦
$Transformer-FeedForward-Norm/gamma:0)Transformer-FeedForward-Norm/gamma/Assign)Transformer-FeedForward-Norm/gamma/read:02&Transformer-FeedForward-Norm/Const_1:08
^
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02dense_7/truncated_normal:08
M
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02dense_7/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08"Ð	
cond_context¿	¼	
î
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *
CLS-token/strided_slice:0
dropout_1/cond/dropout/Floor:0
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/mul/Switch:1
dropout_1/cond/mul/y:0
dropout_1/cond/mul:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:08
CLS-token/strided_slice:0dropout_1/cond/mul/Switch:1
È
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ô
CLS-token/strided_slice:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:06
CLS-token/strided_slice:0dropout_1/cond/Switch_1:0*
predict
<
input_token-
Input-Token:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@
input_segment/
Input-Segment:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
output(
dense_7/Sigmoid:0ÿÿÿÿÿÿÿÿÿ>
	cls_token1
CLS-token/strided_slice:0ÿÿÿÿÿÿÿÿÿ¸tensorflow/serving/predict