єю
╙4к4
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
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
Ц
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
2
L2Loss
t"T
output"T"
Ttype:
2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2


LogicalNot
x

y

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"TА
pred

output_false"TА
output_true"TА"	
TtypeШ
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
Ў
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
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"train*1.9.02v1.9.0-0-g25c197e0238пэ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
shape: 
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
x
inputPlaceholder*
dtype0*/
_output_shapes
:           *$
shape:           
a
outputPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
М
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
К
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
T0
*
_output_shapes
: : 
a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
У
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
Я
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
_output_shapes
: *
T0	
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *,Чй╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *,Чй=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
╫
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
П
conv2d/kernel
VariableV2* 
_class
loc:@conv2d/kernel*
shape: *
dtype0*&
_output_shapes
: 
к
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
s
conv2d/bias
VariableV2*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias*
shape: 
Н
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ф
conv2d/Conv2DConv2Dinputconv2d/kernel/read*/
_output_shapes
:            *
T0*
strides
*
paddingSAME
t
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*/
_output_shapes
:            
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:            
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"              *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ч╙z╜*"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ч╙z=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
▌
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_1/kernel
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_1/kernel
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
У
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
:  *"
_class
loc:@conv2d_1/kernel*
shape:  
▓
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
О
conv2d_1/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
w
conv2d_1/bias
VariableV2*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
shape: 
Х
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
_output_shapes
: *
T0* 
_class
loc:@conv2d_1/bias
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ю
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/kernel/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:            
z
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*/
_output_shapes
:            
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:            
Ь
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:          
^
dropout/dropout/keep_probConst*
valueB
 *  @?*
dtype0*
_output_shapes
: 
Z
dropout/dropout/ShapeShapemax_pooling2d/MaxPool*
_output_shapes
:*
T0
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ы
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*
T0*
dtype0*/
_output_shapes
:          
Т
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
╡
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*/
_output_shapes
:          
з
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*/
_output_shapes
:          
П
dropout/dropout/addAdddropout/dropout/keep_probdropout/dropout/random_uniform*
T0*/
_output_shapes
:          
m
dropout/dropout/FloorFloordropout/dropout/add*
T0*/
_output_shapes
:          
К
dropout/dropout/divRealDivmax_pooling2d/MaxPooldropout/dropout/keep_prob*
T0*/
_output_shapes
:          
А
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*/
_output_shapes
:          *
T0
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
▌
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
: @
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
У
conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
: @*"
_class
loc:@conv2d_2/kernel*
shape: @
▓
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
О
conv2d_2/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
w
conv2d_2/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias
Х
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ж
conv2d_2/Conv2DConv2Ddropout/dropout/mulconv2d_2/kernel/read*/
_output_shapes
:         @*
T0*
strides
*
paddingSAME
z
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*/
_output_shapes
:         @
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:═У╜*"
_class
loc:@conv2d_3/kernel
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:═У=*"
_class
loc:@conv2d_3/kernel
▌
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:@@*
T0*"
_class
loc:@conv2d_3/kernel
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
У
conv2d_3/kernel
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
▓
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
Ж
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
О
conv2d_3/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:@
w
conv2d_3/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_3/bias
Х
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
t
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
g
conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
а
conv2d_3/Conv2DConv2Dconv2d_2/Reluconv2d_3/kernel/read*
strides
*
paddingSAME*/
_output_shapes
:         @*
T0
z
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*/
_output_shapes
:         @
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:         @
Ю
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:         @
`
dropout_1/dropout/keep_probConst*
valueB
 *  @?*
dtype0*
_output_shapes
: 
^
dropout_1/dropout/ShapeShapemax_pooling2d_1/MaxPool*
_output_shapes
:*
T0
i
$dropout_1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Я
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*
dtype0*/
_output_shapes
:         @*
T0
Ш
$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
╗
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*
T0*/
_output_shapes
:         @
н
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*/
_output_shapes
:         @
Х
dropout_1/dropout/addAdddropout_1/dropout/keep_prob dropout_1/dropout/random_uniform*
T0*/
_output_shapes
:         @
q
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*/
_output_shapes
:         @
Р
dropout_1/dropout/divRealDivmax_pooling2d_1/MaxPooldropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
Ж
dropout_1/dropout/mulMuldropout_1/dropout/divdropout_1/dropout/Floor*/
_output_shapes
:         @*
T0
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
k
ReshapeReshapedropout_1/dropout/mulReshape/shape*
T0*(
_output_shapes
:         А 
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *М7╜*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *М7=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
╬
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel* 
_output_shapes
:
А А*
T0
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
Б
dense/kernel
VariableV2*
shape:
А А*
dtype0* 
_output_shapes
:
А А*
_class
loc:@dense/kernel
а
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Ц
,dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╗
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
s

dense/bias
VariableV2*
dtype0*
_output_shapes	
:А*
_class
loc:@dense/bias*
shape:А
К
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
l
dense/bias/readIdentity
dense/bias*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
e
dense/MatMulMatMulReshapedense/kernel/read*(
_output_shapes
:         А*
T0
j
dense/BiasAddBiasAdddense/MatMuldense/bias/read*(
_output_shapes
:         А*
T0
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
`
dropout_2/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩ?
Q
dropout_2/dropout/ShapeShape
dense/Relu*
T0*
_output_shapes
:
i
$dropout_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ш
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*(
_output_shapes
:         А*
T0*
dtype0
Ш
$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
┤
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
ж
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*(
_output_shapes
:         А*
T0
О
dropout_2/dropout/addAdddropout_2/dropout/keep_prob dropout_2/dropout/random_uniform*(
_output_shapes
:         А*
T0
j
dropout_2/dropout/FloorFloordropout_2/dropout/add*(
_output_shapes
:         А*
T0
|
dropout_2/dropout/divRealDiv
dense/Reludropout_2/dropout/keep_prob*(
_output_shapes
:         А*
T0

dropout_2/dropout/mulMuldropout_2/dropout/divdropout_2/dropout/Floor*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *  А╜*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *  А=*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╘
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0* 
_output_shapes
:
АА
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
T0
ъ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
▄
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
Е
dense_1/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*!
_class
loc:@dense_1/kernel*
shape:
АА
и
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:А
w
dense_1/bias
VariableV2*
dtype0*
_output_shapes	
:А*
_class
loc:@dense_1/bias*
shape:А
Т
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
w
dense_1/MatMulMatMuldropout_2/dropout/muldense_1/kernel/read*
T0*(
_output_shapes
:         А
p
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*(
_output_shapes
:         А
`
dropout_3/dropout/keep_probConst*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
V
dropout_3/dropout/ShapeShapedense_1/BiasAdd*
T0*
_output_shapes
:
i
$dropout_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_3/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ш
.dropout_3/dropout/random_uniform/RandomUniformRandomUniformdropout_3/dropout/Shape*
T0*
dtype0*(
_output_shapes
:         А
Ш
$dropout_3/dropout/random_uniform/subSub$dropout_3/dropout/random_uniform/max$dropout_3/dropout/random_uniform/min*
T0*
_output_shapes
: 
┤
$dropout_3/dropout/random_uniform/mulMul.dropout_3/dropout/random_uniform/RandomUniform$dropout_3/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
ж
 dropout_3/dropout/random_uniformAdd$dropout_3/dropout/random_uniform/mul$dropout_3/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
О
dropout_3/dropout/addAdddropout_3/dropout/keep_prob dropout_3/dropout/random_uniform*
T0*(
_output_shapes
:         А
j
dropout_3/dropout/FloorFloordropout_3/dropout/add*(
_output_shapes
:         А*
T0
Б
dropout_3/dropout/divRealDivdense_1/BiasAdddropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А

dropout_3/dropout/mulMuldropout_3/dropout/divdropout_3/dropout/Floor*(
_output_shapes
:         А*
T0
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   d   *!
_class
loc:@dense_2/kernel
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *?╚╩╜*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *?╚╩=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╙
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	Аd*
T0*!
_class
loc:@dense_2/kernel
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
щ
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	Аd*
T0*!
_class
loc:@dense_2/kernel
█
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Г
dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
shape:	Аd*
dtype0*
_output_shapes
:	Аd
з
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
М
dense_2/bias/Initializer/zerosConst*
_output_shapes
:d*
valueBd*    *
_class
loc:@dense_2/bias*
dtype0
u
dense_2/bias
VariableV2*
shape:d*
dtype0*
_output_shapes
:d*
_class
loc:@dense_2/bias
С
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
v
dense_2/MatMulMatMuldropout_3/dropout/muldense_2/kernel/read*'
_output_shapes
:         d*
T0
o
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*'
_output_shapes
:         d
U
one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
one_hot/depthConst*
value	B :d*
dtype0*
_output_shapes
: 
Й
one_hotOneHotoutputone_hot/depthone_hot/on_valueone_hot/off_value*'
_output_shapes
:         d*
T0*
TI0
z
/softmax_cross_entropy_loss/labels_stop_gradientStopGradientone_hot*
T0*'
_output_shapes
:         d
j
(softmax_cross_entropy_loss/xentropy/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
)softmax_cross_entropy_loss/xentropy/ShapeShapedense_2/BiasAdd*
T0*
_output_shapes
:
l
*softmax_cross_entropy_loss/xentropy/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
+softmax_cross_entropy_loss/xentropy/Shape_1Shapedense_2/BiasAdd*
_output_shapes
:*
T0
k
)softmax_cross_entropy_loss/xentropy/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
ж
'softmax_cross_entropy_loss/xentropy/SubSub*softmax_cross_entropy_loss/xentropy/Rank_1)softmax_cross_entropy_loss/xentropy/Sub/y*
T0*
_output_shapes
: 
О
/softmax_cross_entropy_loss/xentropy/Slice/beginPack'softmax_cross_entropy_loss/xentropy/Sub*
N*
_output_shapes
:*
T0
x
.softmax_cross_entropy_loss/xentropy/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Є
)softmax_cross_entropy_loss/xentropy/SliceSlice+softmax_cross_entropy_loss/xentropy/Shape_1/softmax_cross_entropy_loss/xentropy/Slice/begin.softmax_cross_entropy_loss/xentropy/Slice/size*
T0*
Index0*
_output_shapes
:
Ж
3softmax_cross_entropy_loss/xentropy/concat/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_loss/xentropy/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ї
*softmax_cross_entropy_loss/xentropy/concatConcatV23softmax_cross_entropy_loss/xentropy/concat/values_0)softmax_cross_entropy_loss/xentropy/Slice/softmax_cross_entropy_loss/xentropy/concat/axis*
T0*
N*
_output_shapes
:
о
+softmax_cross_entropy_loss/xentropy/ReshapeReshapedense_2/BiasAdd*softmax_cross_entropy_loss/xentropy/concat*0
_output_shapes
:                  *
T0
l
*softmax_cross_entropy_loss/xentropy/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
К
+softmax_cross_entropy_loss/xentropy/Shape_2Shape/softmax_cross_entropy_loss/labels_stop_gradient*
T0*
_output_shapes
:
m
+softmax_cross_entropy_loss/xentropy/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
к
)softmax_cross_entropy_loss/xentropy/Sub_1Sub*softmax_cross_entropy_loss/xentropy/Rank_2+softmax_cross_entropy_loss/xentropy/Sub_1/y*
_output_shapes
: *
T0
Т
1softmax_cross_entropy_loss/xentropy/Slice_1/beginPack)softmax_cross_entropy_loss/xentropy/Sub_1*
T0*
N*
_output_shapes
:
z
0softmax_cross_entropy_loss/xentropy/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
°
+softmax_cross_entropy_loss/xentropy/Slice_1Slice+softmax_cross_entropy_loss/xentropy/Shape_21softmax_cross_entropy_loss/xentropy/Slice_1/begin0softmax_cross_entropy_loss/xentropy/Slice_1/size*
_output_shapes
:*
T0*
Index0
И
5softmax_cross_entropy_loss/xentropy/concat_1/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
s
1softmax_cross_entropy_loss/xentropy/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¤
,softmax_cross_entropy_loss/xentropy/concat_1ConcatV25softmax_cross_entropy_loss/xentropy/concat_1/values_0+softmax_cross_entropy_loss/xentropy/Slice_11softmax_cross_entropy_loss/xentropy/concat_1/axis*
T0*
N*
_output_shapes
:
╥
-softmax_cross_entropy_loss/xentropy/Reshape_1Reshape/softmax_cross_entropy_loss/labels_stop_gradient,softmax_cross_entropy_loss/xentropy/concat_1*
T0*0
_output_shapes
:                  
ъ
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits+softmax_cross_entropy_loss/xentropy/Reshape-softmax_cross_entropy_loss/xentropy/Reshape_1*?
_output_shapes-
+:         :                  *
T0
m
+softmax_cross_entropy_loss/xentropy/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
и
)softmax_cross_entropy_loss/xentropy/Sub_2Sub(softmax_cross_entropy_loss/xentropy/Rank+softmax_cross_entropy_loss/xentropy/Sub_2/y*
_output_shapes
: *
T0
{
1softmax_cross_entropy_loss/xentropy/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
С
0softmax_cross_entropy_loss/xentropy/Slice_2/sizePack)softmax_cross_entropy_loss/xentropy/Sub_2*
T0*
N*
_output_shapes
:
Ў
+softmax_cross_entropy_loss/xentropy/Slice_2Slice)softmax_cross_entropy_loss/xentropy/Shape1softmax_cross_entropy_loss/xentropy/Slice_2/begin0softmax_cross_entropy_loss/xentropy/Slice_2/size*
_output_shapes
:*
T0*
Index0
╕
-softmax_cross_entropy_loss/xentropy/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy+softmax_cross_entropy_loss/xentropy/Slice_2*#
_output_shapes
:         *
T0
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
А
=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
<softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
_output_shapes
:*
T0
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
╣
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
к
softmax_cross_entropy_loss/MulMul-softmax_cross_entropy_loss/xentropy/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
╕
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
И
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
T0*
_output_shapes
: 
┴
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
о
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
_output_shapes
: *
T0
─
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
╟
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╔
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╔
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ы
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ь
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB *
dtype0
ъ
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
Е
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
щ
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
┐
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
▀
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
╟
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
М
Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:         
р
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
─
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
╢
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
T0*
_output_shapes
: 
│
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
М
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
_output_shapes
: *
T0
╖
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
_output_shapes
: *
T0
╡
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
_output_shapes
: *
T0
╗
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
╜
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  А?
е
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
╝
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
_output_shapes
: *
T0
П
softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╕
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
╢
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
а
,OptimizeLoss/learning_rate/Initializer/ConstConst*
valueB
 *╖╤8*-
_class#
!loc:@OptimizeLoss/learning_rate*
dtype0*
_output_shapes
: 
Й
OptimizeLoss/learning_rate
VariableV2*
dtype0*
_output_shapes
: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shape: 
┼
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: *
T0
Ч
OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*
_output_shapes
: *
T0*-
_class#
!loc:@OptimizeLoss/learning_rate
_
OptimizeLoss/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
e
 OptimizeLoss/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Д
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/Shape OptimizeLoss/gradients/grad_ys_0*
T0*
_output_shapes
: 
М
GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
·
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
_output_shapes
: *
T0
у
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
ї
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
Г
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
г
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*2
_output_shapes 
:         :         
ш
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
№
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
Ё
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
T0*
_output_shapes
: 
И
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
╙
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
┘
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
_output_shapes
: *
T0
Г
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
№
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
: *
T0
Ў
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
_output_shapes
: 
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
щ
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Н
JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
С
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Ї
AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Const*
_output_shapes
: *
T0
Т
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
 
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0
О
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ShapeShapesoftmax_cross_entropy_loss/Mul*
_output_shapes
:*
T0
√
?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         
Э
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
T0*
_output_shapes
:
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
г
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         
▄
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/MulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*#
_output_shapes
:         *
T0
·
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/MulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
¤
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
T0*#
_output_shapes
:         
х
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1Mul-softmax_cross_entropy_loss/xentropy/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
А
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
Ў
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
_output_shapes
: *
T0
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ў
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:         
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
в
OOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ShapeShape#softmax_cross_entropy_loss/xentropy*
T0*
_output_shapes
:
░
QOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/Shape*#
_output_shapes
:         *
T0
Р
!OptimizeLoss/gradients/zeros_like	ZerosLike%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
Щ
NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
н
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsQOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*'
_output_shapes
:         *
T0
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
└
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_loss/xentropy/Reshape*
T0*0
_output_shapes
:                  
╤
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/NegNegJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax*0
_output_shapes
:                  *
T0
Ы
POptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
▒
LOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1
ExpandDimsQOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapePOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:         
Ъ
EOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1MulLOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/Neg*
T0*0
_output_shapes
:                  
ц
POptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulF^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1
П
XOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulQ^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*0
_output_shapes
:                  *
T0*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul
Х
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1Q^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1*0
_output_shapes
:                  
М
MOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0
╡
OOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependencyMOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Shape*'
_output_shapes
:         d*
T0
╝
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*
T0*
_output_shapes
:d
╨
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradP^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape
Ў
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentityOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*'
_output_shapes
:         d
╗
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:d*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
▄
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:         А
╫
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_3/dropout/mulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	Аd
н
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:         А
╢
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	Аd*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
|
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ShapeShapedropout_3/dropout/div*
T0*
_output_shapes
:
А
9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1Shapedropout_3/dropout/Floor*
T0*
_output_shapes
:
И
GOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         
═
5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/MulMulCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencydropout_3/dropout/Floor*(
_output_shapes
:         А*
T0
▀
5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
ч
9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape*
T0*(
_output_shapes
:         А
═
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Mul_1Muldropout_3/dropout/divCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency*(
_output_shapes
:         А*
T0
х
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
э
;OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:         А
─
BOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape*(
_output_shapes
:         А
▌
LOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
v
7OptimizeLoss/gradients/dropout_3/dropout/div_grad/ShapeShapedense_1/BiasAdd*
_output_shapes
:*
T0
|
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
И
GOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         
р
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencydropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А
у
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
ч
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape*(
_output_shapes
:         А*
T0
А
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/NegNegdense_1/BiasAdd*(
_output_shapes
:         А*
T0
═
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_3/dropout/div_grad/Negdropout_3/dropout/keep_prob*(
_output_shapes
:         А*
T0
╙
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_1dropout_3/dropout/keep_prob*(
_output_shapes
:         А*
T0
°
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_2*(
_output_shapes
:         А*
T0
у
7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_3/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
█
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*
_output_shapes
: 
─
BOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_3/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape*(
_output_shapes
:         А
╦
LOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1*
_output_shapes
: 
╕
7OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradJOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency*
T0*
_output_shapes	
:А
╦
<OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGradK^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency
▄
DOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentityJOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency=^OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
▄
1OptimizeLoss/gradients/dense_1/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*(
_output_shapes
:         А*
transpose_b(
╪
3OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mulDOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
АА*
T0
н
;OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul
╖
EOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА*
T0
|
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/div*
T0*
_output_shapes
:
А
9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
_output_shapes
:*
T0
И
GOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         
═
5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/MulMulCOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependencydropout_2/dropout/Floor*(
_output_shapes
:         А*
T0
▀
5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
ч
9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape*
T0*(
_output_shapes
:         А
═
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Mul_1Muldropout_2/dropout/divCOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency*(
_output_shapes
:         А*
T0
х
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
э
;OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:         А
─
BOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape*(
_output_shapes
:         А
▌
LOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
q
7OptimizeLoss/gradients/dropout_2/dropout/div_grad/ShapeShape
dense/Relu*
T0*
_output_shapes
:
|
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
И
GOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         
р
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencydropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А
у
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
ч
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape*(
_output_shapes
:         А*
T0
{
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/NegNeg
dense/Relu*(
_output_shapes
:         А*
T0
═
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_2/dropout/div_grad/Negdropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А
╙
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_1dropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А
°
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_2*(
_output_shapes
:         А*
T0
у
7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_2/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
█
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*
_output_shapes
: 
─
BOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_2/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape*(
_output_shapes
:         А
╦
LOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1*
_output_shapes
: 
╞
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradJOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:         А
Ы
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А
м
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad
│
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*(
_output_shapes
:         А*
T0
┤
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
╓
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*(
_output_shapes
:         А *
transpose_b(*
T0
╞
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
А А*
T0
з
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
▒
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:         А *
T0*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul
п
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
А А
n
)OptimizeLoss/gradients/Reshape_grad/ShapeShapedropout_1/dropout/mul*
_output_shapes
:*
T0
▐
+OptimizeLoss/gradients/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency)OptimizeLoss/gradients/Reshape_grad/Shape*
T0*/
_output_shapes
:         @
|
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/div*
_output_shapes
:*
T0
А
9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
T0*
_output_shapes
:
И
GOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         
╝
5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/MulMul+OptimizeLoss/gradients/Reshape_grad/Reshapedropout_1/dropout/Floor*
T0*/
_output_shapes
:         @
▀
5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
ю
9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape*
T0*/
_output_shapes
:         @
╝
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Mul_1Muldropout_1/dropout/div+OptimizeLoss/gradients/Reshape_grad/Reshape*/
_output_shapes
:         @*
T0
х
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ї
;OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*/
_output_shapes
:         @
─
BOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1
▐
JOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:         @*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape
ф
LOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1*/
_output_shapes
:         @
~
7OptimizeLoss/gradients/dropout_1/dropout/div_grad/ShapeShapemax_pooling2d_1/MaxPool*
T0*
_output_shapes
:
|
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
И
GOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         
ч
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencydropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
у
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
ю
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape*
T0*/
_output_shapes
:         @
П
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/NegNegmax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:         @
╘
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_1/dropout/div_grad/Negdropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
┌
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_1dropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
 
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_2*
T0*/
_output_shapes
:         @
у
7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_1/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
█
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*
_output_shapes
: 
─
BOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1
▐
JOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_1/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape*/
_output_shapes
:         @
╦
LOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1
п
?OptimizeLoss/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d_1/MaxPoolJOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependency*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:         @
╚
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*/
_output_shapes
:         @
а
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*
_output_shapes
:@
╡
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*/
_output_shapes
:         @
┐
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Х
2OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNconv2d_2/Reluconv2d_3/kernel/read*
T0*
N* 
_output_shapes
::
╔
?OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
strides
*
paddingSAME*/
_output_shapes
:         @*
T0
╜
@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu4OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
paddingSAME*&
_output_shapes
:@@
╔
<OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:         @*
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
┘
FOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@@
═
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradDOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyconv2d_2/Relu*
T0*/
_output_shapes
:         @
а
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0
╡
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:         @*
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad
┐
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
Ы
2OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNdropout/dropout/mulconv2d_2/kernel/read*
T0*
N* 
_output_shapes
::
╔
?OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:          *
T0*
strides
*
paddingSAME
├
@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/dropout/mul4OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
paddingSAME*&
_output_shapes
: @
╔
<OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:          
┘
FOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
x
5OptimizeLoss/gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
_output_shapes
:
|
7OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
_output_shapes
:*
T0
В
EOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape7OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         
╤
3OptimizeLoss/gradients/dropout/dropout/mul_grad/MulMulDOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependencydropout/dropout/Floor*
T0*/
_output_shapes
:          
┘
3OptimizeLoss/gradients/dropout/dropout/mul_grad/SumSum3OptimizeLoss/gradients/dropout/dropout/mul_grad/MulEOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
ш
7OptimizeLoss/gradients/dropout/dropout/mul_grad/ReshapeReshape3OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum5OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape*
T0*/
_output_shapes
:          
╤
5OptimizeLoss/gradients/dropout/dropout/mul_grad/Mul_1Muldropout/dropout/divDOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:          *
T0
▀
5OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum_1Sum5OptimizeLoss/gradients/dropout/dropout/mul_grad/Mul_1GOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
ю
9OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1Reshape5OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum_17OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1*/
_output_shapes
:          *
T0
╛
@OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape:^OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1
╓
HOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity7OptimizeLoss/gradients/dropout/dropout/mul_grad/ReshapeA^OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape*/
_output_shapes
:          
▄
JOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity9OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1A^OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:          *
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1
z
5OptimizeLoss/gradients/dropout/dropout/div_grad/ShapeShapemax_pooling2d/MaxPool*
_output_shapes
:*
T0
z
7OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
В
EOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs5OptimizeLoss/gradients/dropout/dropout/div_grad/Shape7OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         
с
7OptimizeLoss/gradients/dropout/dropout/div_grad/RealDivRealDivHOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout/dropout/keep_prob*/
_output_shapes
:          *
T0
▌
3OptimizeLoss/gradients/dropout/dropout/div_grad/SumSum7OptimizeLoss/gradients/dropout/dropout/div_grad/RealDivEOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
ш
7OptimizeLoss/gradients/dropout/dropout/div_grad/ReshapeReshape3OptimizeLoss/gradients/dropout/dropout/div_grad/Sum5OptimizeLoss/gradients/dropout/dropout/div_grad/Shape*
T0*/
_output_shapes
:          
Л
3OptimizeLoss/gradients/dropout/dropout/div_grad/NegNegmax_pooling2d/MaxPool*
T0*/
_output_shapes
:          
╬
9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_1RealDiv3OptimizeLoss/gradients/dropout/dropout/div_grad/Negdropout/dropout/keep_prob*
T0*/
_output_shapes
:          
╘
9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_2RealDiv9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_1dropout/dropout/keep_prob*
T0*/
_output_shapes
:          
∙
3OptimizeLoss/gradients/dropout/dropout/div_grad/mulMulHOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependency9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_2*
T0*/
_output_shapes
:          
▌
5OptimizeLoss/gradients/dropout/dropout/div_grad/Sum_1Sum3OptimizeLoss/gradients/dropout/dropout/div_grad/mulGOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
╒
9OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1Reshape5OptimizeLoss/gradients/dropout/dropout/div_grad/Sum_17OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0
╛
@OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape:^OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1
╓
HOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity7OptimizeLoss/gradients/dropout/dropout/div_grad/ReshapeA^OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_deps*/
_output_shapes
:          *
T0*J
_class@
><loc:@OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape
├
JOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity9OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1A^OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
й
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d/MaxPoolHOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependency*
ksize
*
paddingVALID*/
_output_shapes
:            *
strides

╞
2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_1/Relu*/
_output_shapes
:            *
T0
а
8OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad*
_output_shapes
: *
T0
╡
=OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:            *
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad
┐
GOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
У
2OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/kernel/read*
N* 
_output_shapes
::*
T0
╔
?OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:            *
T0*
strides

╗
@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:  *
T0*
strides
*
paddingSAME
╔
<OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_deps*/
_output_shapes
:            *
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
┘
FOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:  *
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
╔
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradDOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyconv2d/Relu*
T0*/
_output_shapes
:            
Ь
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
п
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad
╛
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:            
╖
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Й
0OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeNShapeNinputconv2d/kernel/read*
T0*
N* 
_output_shapes
::
┴
=OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
paddingSAME*/
_output_shapes
:           
п
>OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput2OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeN:1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
: *
T0*
strides

├
:OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp?^OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter>^OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
╓
BOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity=OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput;^OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:           
╤
DOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity>OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter;^OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
у
OptimizeLoss/global_norm/L2LossL2LossDOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
▐
!OptimizeLoss/global_norm/L2Loss_1L2LossEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
щ
!OptimizeLoss/global_norm/L2Loss_2L2LossFOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
т
!OptimizeLoss/global_norm/L2Loss_3L2LossGOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
щ
!OptimizeLoss/global_norm/L2Loss_4L2LossFOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
т
!OptimizeLoss/global_norm/L2Loss_5L2LossGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
щ
!OptimizeLoss/global_norm/L2Loss_6L2LossFOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
т
!OptimizeLoss/global_norm/L2Loss_7L2LossGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╫
!OptimizeLoss/global_norm/L2Loss_8L2LossCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
: 
▄
!OptimizeLoss/global_norm/L2Loss_9L2LossDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
▄
"OptimizeLoss/global_norm/L2Loss_10L2LossEOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes
: 
с
"OptimizeLoss/global_norm/L2Loss_11L2LossFOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad
▄
"OptimizeLoss/global_norm/L2Loss_12L2LossEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
: 
с
"OptimizeLoss/global_norm/L2Loss_13L2LossFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
└
OptimizeLoss/global_norm/stackPackOptimizeLoss/global_norm/L2Loss!OptimizeLoss/global_norm/L2Loss_1!OptimizeLoss/global_norm/L2Loss_2!OptimizeLoss/global_norm/L2Loss_3!OptimizeLoss/global_norm/L2Loss_4!OptimizeLoss/global_norm/L2Loss_5!OptimizeLoss/global_norm/L2Loss_6!OptimizeLoss/global_norm/L2Loss_7!OptimizeLoss/global_norm/L2Loss_8!OptimizeLoss/global_norm/L2Loss_9"OptimizeLoss/global_norm/L2Loss_10"OptimizeLoss/global_norm/L2Loss_11"OptimizeLoss/global_norm/L2Loss_12"OptimizeLoss/global_norm/L2Loss_13*
T0*
N*
_output_shapes
:
h
OptimizeLoss/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Д
OptimizeLoss/global_norm/SumSumOptimizeLoss/global_norm/stackOptimizeLoss/global_norm/Const*
T0*
_output_shapes
: 
e
 OptimizeLoss/global_norm/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *   @
Д
OptimizeLoss/global_norm/mulMulOptimizeLoss/global_norm/Sum OptimizeLoss/global_norm/Const_1*
_output_shapes
: *
T0
k
$OptimizeLoss/global_norm/global_normSqrtOptimizeLoss/global_norm/mul*
_output_shapes
: *
T0
Т
+OptimizeLoss/global_norm/gradient_norm/tagsConst*7
value.B, B&OptimizeLoss/global_norm/gradient_norm*
dtype0*
_output_shapes
: 
л
&OptimizeLoss/global_norm/gradient_normScalarSummary+OptimizeLoss/global_norm/gradient_norm/tags$OptimizeLoss/global_norm/global_norm*
_output_shapes
: *
T0
h
OptimizeLoss/loss/tagsConst*
_output_shapes
: *"
valueB BOptimizeLoss/loss*
dtype0
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Л
&OptimizeLoss/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
x
OptimizeLoss/beta1_power
VariableV2*
_class
loc:@conv2d/bias*
shape: *
dtype0*
_output_shapes
: 
м
OptimizeLoss/beta1_power/AssignAssignOptimizeLoss/beta1_power&OptimizeLoss/beta1_power/initial_value*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
Д
OptimizeLoss/beta1_power/readIdentityOptimizeLoss/beta1_power*
_class
loc:@conv2d/bias*
_output_shapes
: *
T0
Л
&OptimizeLoss/beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
x
OptimizeLoss/beta2_power
VariableV2*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias*
shape: 
м
OptimizeLoss/beta2_power/AssignAssignOptimizeLoss/beta2_power&OptimizeLoss/beta2_power/initial_value*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Д
OptimizeLoss/beta2_power/readIdentityOptimizeLoss/beta2_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
╝
AOptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
Ю
7OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0
И
1OptimizeLoss/conv2d/kernel/Adam/Initializer/zerosFillAOptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor7OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/Const*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
б
OptimizeLoss/conv2d/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*
shape: 
╫
&OptimizeLoss/conv2d/kernel/Adam/AssignAssignOptimizeLoss/conv2d/kernel/Adam1OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
д
$OptimizeLoss/conv2d/kernel/Adam/readIdentityOptimizeLoss/conv2d/kernel/Adam*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
╛
COptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
а
9OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    * 
_class
loc:@conv2d/kernel
О
3OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zerosFillCOptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
г
!OptimizeLoss/conv2d/kernel/Adam_1
VariableV2* 
_class
loc:@conv2d/kernel*
shape: *
dtype0*&
_output_shapes
: 
▌
(OptimizeLoss/conv2d/kernel/Adam_1/AssignAssign!OptimizeLoss/conv2d/kernel/Adam_13OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
и
&OptimizeLoss/conv2d/kernel/Adam_1/readIdentity!OptimizeLoss/conv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ь
/OptimizeLoss/conv2d/bias/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Е
OptimizeLoss/conv2d/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias*
shape: 
├
$OptimizeLoss/conv2d/bias/Adam/AssignAssignOptimizeLoss/conv2d/bias/Adam/OptimizeLoss/conv2d/bias/Adam/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Т
"OptimizeLoss/conv2d/bias/Adam/readIdentityOptimizeLoss/conv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ю
1OptimizeLoss/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
З
OptimizeLoss/conv2d/bias/Adam_1
VariableV2*
_class
loc:@conv2d/bias*
shape: *
dtype0*
_output_shapes
: 
╔
&OptimizeLoss/conv2d/bias/Adam_1/AssignAssignOptimizeLoss/conv2d/bias/Adam_11OptimizeLoss/conv2d/bias/Adam_1/Initializer/zeros*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
Ц
$OptimizeLoss/conv2d/bias/Adam_1/readIdentityOptimizeLoss/conv2d/bias/Adam_1*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
└
COptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"              *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
в
9OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Р
3OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
е
!OptimizeLoss/conv2d_1/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:  *"
_class
loc:@conv2d_1/kernel*
shape:  
▀
(OptimizeLoss/conv2d_1/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_1/kernel/Adam3OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
к
&OptimizeLoss/conv2d_1/kernel/Adam/readIdentity!OptimizeLoss/conv2d_1/kernel/Adam*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
┬
EOptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"              *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
д
;OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_1/kernel
Ц
5OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
з
#OptimizeLoss/conv2d_1/kernel/Adam_1
VariableV2*
shape:  *
dtype0*&
_output_shapes
:  *"
_class
loc:@conv2d_1/kernel
х
*OptimizeLoss/conv2d_1/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_1/kernel/Adam_15OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
о
(OptimizeLoss/conv2d_1/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_1/kernel/Adam_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
а
1OptimizeLoss/conv2d_1/bias/Adam/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
Й
OptimizeLoss/conv2d_1/bias/Adam
VariableV2*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
shape: *
dtype0
╦
&OptimizeLoss/conv2d_1/bias/Adam/AssignAssignOptimizeLoss/conv2d_1/bias/Adam1OptimizeLoss/conv2d_1/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ш
$OptimizeLoss/conv2d_1/bias/Adam/readIdentityOptimizeLoss/conv2d_1/bias/Adam* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
T0
в
3OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
Л
!OptimizeLoss/conv2d_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
shape: 
╤
(OptimizeLoss/conv2d_1/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_1/bias/Adam_13OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
T0
Ь
&OptimizeLoss/conv2d_1/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_1/bias/Adam_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
└
COptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
в
9OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Р
3OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
е
!OptimizeLoss/conv2d_2/kernel/Adam
VariableV2*"
_class
loc:@conv2d_2/kernel*
shape: @*
dtype0*&
_output_shapes
: @
▀
(OptimizeLoss/conv2d_2/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_2/kernel/Adam3OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
к
&OptimizeLoss/conv2d_2/kernel/Adam/readIdentity!OptimizeLoss/conv2d_2/kernel/Adam*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
┬
EOptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0
д
;OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ц
5OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
з
#OptimizeLoss/conv2d_2/kernel/Adam_1
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*"
_class
loc:@conv2d_2/kernel
х
*OptimizeLoss/conv2d_2/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_2/kernel/Adam_15OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
о
(OptimizeLoss/conv2d_2/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_2/kernel/Adam_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
а
1OptimizeLoss/conv2d_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_2/bias
Й
OptimizeLoss/conv2d_2/bias/Adam
VariableV2* 
_class
loc:@conv2d_2/bias*
shape:@*
dtype0*
_output_shapes
:@
╦
&OptimizeLoss/conv2d_2/bias/Adam/AssignAssignOptimizeLoss/conv2d_2/bias/Adam1OptimizeLoss/conv2d_2/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Ш
$OptimizeLoss/conv2d_2/bias/Adam/readIdentityOptimizeLoss/conv2d_2/bias/Adam*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
в
3OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0
Л
!OptimizeLoss/conv2d_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
shape:@
╤
(OptimizeLoss/conv2d_2/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_2/bias/Adam_13OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
Ь
&OptimizeLoss/conv2d_2/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_2/bias/Adam_1*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
└
COptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @   @   *"
_class
loc:@conv2d_3/kernel*
dtype0
в
9OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0
Р
3OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/Const*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@*
T0
е
!OptimizeLoss/conv2d_3/kernel/Adam
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
▀
(OptimizeLoss/conv2d_3/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_3/kernel/Adam3OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
к
&OptimizeLoss/conv2d_3/kernel/Adam/readIdentity!OptimizeLoss/conv2d_3/kernel/Adam*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
┬
EOptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
д
;OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ц
5OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
з
#OptimizeLoss/conv2d_3/kernel/Adam_1
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
х
*OptimizeLoss/conv2d_3/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_3/kernel/Adam_15OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
о
(OptimizeLoss/conv2d_3/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_3/kernel/Adam_1*&
_output_shapes
:@@*
T0*"
_class
loc:@conv2d_3/kernel
а
1OptimizeLoss/conv2d_3/bias/Adam/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:@
Й
OptimizeLoss/conv2d_3/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_3/bias*
shape:@
╦
&OptimizeLoss/conv2d_3/bias/Adam/AssignAssignOptimizeLoss/conv2d_3/bias/Adam1OptimizeLoss/conv2d_3/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
Ш
$OptimizeLoss/conv2d_3/bias/Adam/readIdentityOptimizeLoss/conv2d_3/bias/Adam*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_3/bias
в
3OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:@
Л
!OptimizeLoss/conv2d_3/bias/Adam_1
VariableV2* 
_class
loc:@conv2d_3/bias*
shape:@*
dtype0*
_output_shapes
:@
╤
(OptimizeLoss/conv2d_3/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_3/bias/Adam_13OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
Ь
&OptimizeLoss/conv2d_3/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_3/bias/Adam_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
▓
@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
Ь
6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
■
0OptimizeLoss/dense/kernel/Adam/Initializer/zerosFill@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
У
OptimizeLoss/dense/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
А А*
_class
loc:@dense/kernel*
shape:
А А
═
%OptimizeLoss/dense/kernel/Adam/AssignAssignOptimizeLoss/dense/kernel/Adam0OptimizeLoss/dense/kernel/Adam/Initializer/zeros*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Ы
#OptimizeLoss/dense/kernel/Adam/readIdentityOptimizeLoss/dense/kernel/Adam*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
┤
BOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      *
_class
loc:@dense/kernel
Ю
8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Д
2OptimizeLoss/dense/kernel/Adam_1/Initializer/zerosFillBOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Х
 OptimizeLoss/dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
shape:
А А*
dtype0* 
_output_shapes
:
А А
╙
'OptimizeLoss/dense/kernel/Adam_1/AssignAssign OptimizeLoss/dense/kernel/Adam_12OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Я
%OptimizeLoss/dense/kernel/Adam_1/readIdentity OptimizeLoss/dense/kernel/Adam_1* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
и
>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*
_class
loc:@dense/bias
Ш
4OptimizeLoss/dense/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense/bias
ё
.OptimizeLoss/dense/bias/Adam/Initializer/zerosFill>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensor4OptimizeLoss/dense/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Е
OptimizeLoss/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
_class
loc:@dense/bias*
shape:А
└
#OptimizeLoss/dense/bias/Adam/AssignAssignOptimizeLoss/dense/bias/Adam.OptimizeLoss/dense/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Р
!OptimizeLoss/dense/bias/Adam/readIdentityOptimizeLoss/dense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
к
@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ъ
6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
ў
0OptimizeLoss/dense/bias/Adam_1/Initializer/zerosFill@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/Const*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
З
OptimizeLoss/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
_class
loc:@dense/bias*
shape:А
╞
%OptimizeLoss/dense/bias/Adam_1/AssignAssignOptimizeLoss/dense/bias/Adam_10OptimizeLoss/dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Ф
#OptimizeLoss/dense/bias/Adam_1/readIdentityOptimizeLoss/dense/bias/Adam_1*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
╢
BOptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
а
8OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Ж
2OptimizeLoss/dense_1/kernel/Adam/Initializer/zerosFillBOptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Ч
 OptimizeLoss/dense_1/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
АА*!
_class
loc:@dense_1/kernel*
shape:
АА
╒
'OptimizeLoss/dense_1/kernel/Adam/AssignAssign OptimizeLoss/dense_1/kernel/Adam2OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
б
%OptimizeLoss/dense_1/kernel/Adam/readIdentity OptimizeLoss/dense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
╕
DOptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
в
:OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
М
4OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zerosFillDOptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor:OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Щ
"OptimizeLoss/dense_1/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
АА*!
_class
loc:@dense_1/kernel*
shape:
АА
█
)OptimizeLoss/dense_1/kernel/Adam_1/AssignAssign"OptimizeLoss/dense_1/kernel/Adam_14OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
е
'OptimizeLoss/dense_1/kernel/Adam_1/readIdentity"OptimizeLoss/dense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
а
0OptimizeLoss/dense_1/bias/Adam/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:А
Й
OptimizeLoss/dense_1/bias/Adam
VariableV2*
_class
loc:@dense_1/bias*
shape:А*
dtype0*
_output_shapes	
:А
╚
%OptimizeLoss/dense_1/bias/Adam/AssignAssignOptimizeLoss/dense_1/bias/Adam0OptimizeLoss/dense_1/bias/Adam/Initializer/zeros*
_output_shapes	
:А*
T0*
_class
loc:@dense_1/bias
Ц
#OptimizeLoss/dense_1/bias/Adam/readIdentityOptimizeLoss/dense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
в
2OptimizeLoss/dense_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *
_class
loc:@dense_1/bias
Л
 OptimizeLoss/dense_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
_class
loc:@dense_1/bias*
shape:А
╬
'OptimizeLoss/dense_1/bias/Adam_1/AssignAssign OptimizeLoss/dense_1/bias/Adam_12OptimizeLoss/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
T0*
_class
loc:@dense_1/bias
Ъ
%OptimizeLoss/dense_1/bias/Adam_1/readIdentity OptimizeLoss/dense_1/bias/Adam_1*
_output_shapes	
:А*
T0*
_class
loc:@dense_1/bias
╢
BOptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   d   *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
а
8OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Е
2OptimizeLoss/dense_2/kernel/Adam/Initializer/zerosFillBOptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Х
 OptimizeLoss/dense_2/kernel/Adam
VariableV2*!
_class
loc:@dense_2/kernel*
shape:	Аd*
dtype0*
_output_shapes
:	Аd
╘
'OptimizeLoss/dense_2/kernel/Adam/AssignAssign OptimizeLoss/dense_2/kernel/Adam2OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
а
%OptimizeLoss/dense_2/kernel/Adam/readIdentity OptimizeLoss/dense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
╕
DOptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   d   *!
_class
loc:@dense_2/kernel
в
:OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Л
4OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zerosFillDOptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor:OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Ч
"OptimizeLoss/dense_2/kernel/Adam_1
VariableV2*!
_class
loc:@dense_2/kernel*
shape:	Аd*
dtype0*
_output_shapes
:	Аd
┌
)OptimizeLoss/dense_2/kernel/Adam_1/AssignAssign"OptimizeLoss/dense_2/kernel/Adam_14OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
д
'OptimizeLoss/dense_2/kernel/Adam_1/readIdentity"OptimizeLoss/dense_2/kernel/Adam_1*
_output_shapes
:	Аd*
T0*!
_class
loc:@dense_2/kernel
Ю
0OptimizeLoss/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
valueBd*    *
_class
loc:@dense_2/bias
З
OptimizeLoss/dense_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:d*
_class
loc:@dense_2/bias*
shape:d
╟
%OptimizeLoss/dense_2/bias/Adam/AssignAssignOptimizeLoss/dense_2/bias/Adam0OptimizeLoss/dense_2/bias/Adam/Initializer/zeros*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
Х
#OptimizeLoss/dense_2/bias/Adam/readIdentityOptimizeLoss/dense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
а
2OptimizeLoss/dense_2/bias/Adam_1/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:d
Й
 OptimizeLoss/dense_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:d*
_class
loc:@dense_2/bias*
shape:d
═
'OptimizeLoss/dense_2/bias/Adam_1/AssignAssign OptimizeLoss/dense_2/bias/Adam_12OptimizeLoss/dense_2/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
Щ
%OptimizeLoss/dense_2/bias/Adam_1/readIdentity OptimizeLoss/dense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
]
OptimizeLoss/train/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
]
OptimizeLoss/train/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w╛?
_
OptimizeLoss/train/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w╠+2
┘
1OptimizeLoss/train/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelOptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
─
/OptimizeLoss/train/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
х
3OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernel!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_1/kernel
╨
1OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasOptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
х
3OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernel!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
╨
1OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasOptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
х
3OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernel!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
╨
1OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasOptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
═
0OptimizeLoss/train/update_dense/kernel/ApplyAdam	ApplyAdamdense/kernelOptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
┐
.OptimizeLoss/train/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasOptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
┘
2OptimizeLoss/train/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kernel OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
╦
0OptimizeLoss/train/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasOptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
╪
2OptimizeLoss/train/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kernel OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	Аd*
T0*!
_class
loc:@dense_2/kernel
╩
0OptimizeLoss/train/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasOptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
я
OptimizeLoss/train/mulMulOptimizeLoss/beta1_power/readOptimizeLoss/train/beta10^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
й
OptimizeLoss/train/AssignAssignOptimizeLoss/beta1_powerOptimizeLoss/train/mul*
use_locking( *
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
ё
OptimizeLoss/train/mul_1MulOptimizeLoss/beta2_power/readOptimizeLoss/train/beta20^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
н
OptimizeLoss/train/Assign_1AssignOptimizeLoss/beta2_powerOptimizeLoss/train/mul_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
│
OptimizeLoss/train/updateNoOp^OptimizeLoss/train/Assign^OptimizeLoss/train/Assign_10^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam
Ц
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
value	B	 R*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
З
OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
T0	*
_class
loc:@global_step*
_output_shapes
: 
╕
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*
T0*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
a
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*
T0*#
_output_shapes
:         
\
softmax_tensorSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:         d
у
initNoOp ^OptimizeLoss/beta1_power/Assign ^OptimizeLoss/beta2_power/Assign%^OptimizeLoss/conv2d/bias/Adam/Assign'^OptimizeLoss/conv2d/bias/Adam_1/Assign'^OptimizeLoss/conv2d/kernel/Adam/Assign)^OptimizeLoss/conv2d/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_1/bias/Adam/Assign)^OptimizeLoss/conv2d_1/bias/Adam_1/Assign)^OptimizeLoss/conv2d_1/kernel/Adam/Assign+^OptimizeLoss/conv2d_1/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_2/bias/Adam/Assign)^OptimizeLoss/conv2d_2/bias/Adam_1/Assign)^OptimizeLoss/conv2d_2/kernel/Adam/Assign+^OptimizeLoss/conv2d_2/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_3/bias/Adam/Assign)^OptimizeLoss/conv2d_3/bias/Adam_1/Assign)^OptimizeLoss/conv2d_3/kernel/Adam/Assign+^OptimizeLoss/conv2d_3/kernel/Adam_1/Assign$^OptimizeLoss/dense/bias/Adam/Assign&^OptimizeLoss/dense/bias/Adam_1/Assign&^OptimizeLoss/dense/kernel/Adam/Assign(^OptimizeLoss/dense/kernel/Adam_1/Assign&^OptimizeLoss/dense_1/bias/Adam/Assign(^OptimizeLoss/dense_1/bias/Adam_1/Assign(^OptimizeLoss/dense_1/kernel/Adam/Assign*^OptimizeLoss/dense_1/kernel/Adam_1/Assign&^OptimizeLoss/dense_2/bias/Adam/Assign(^OptimizeLoss/dense_2/bias/Adam_1/Assign(^OptimizeLoss/dense_2/kernel/Adam/Assign*^OptimizeLoss/dense_2/kernel/Adam_1/Assign"^OptimizeLoss/learning_rate/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^global_step/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d/kernel
б
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
д
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
д
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
└
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
dtype0*
_output_shapes
: 
п
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedOptimizeLoss/beta1_power*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
п
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedOptimizeLoss/beta2_power*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
╕
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedOptimizeLoss/conv2d/kernel/Adam* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitialized!OptimizeLoss/conv2d/kernel/Adam_1* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
┤
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedOptimizeLoss/conv2d/bias/Adam*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedOptimizeLoss/conv2d/bias/Adam_1*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
╝
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitialized!OptimizeLoss/conv2d_1/kernel/Adam*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
╛
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitialized#OptimizeLoss/conv2d_1/kernel/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
╕
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedOptimizeLoss/conv2d_1/bias/Adam* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitialized!OptimizeLoss/conv2d_1/bias/Adam_1*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias
╝
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitialized!OptimizeLoss/conv2d_2/kernel/Adam*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel
╛
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitialized#OptimizeLoss/conv2d_2/kernel/Adam_1*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedOptimizeLoss/conv2d_2/bias/Adam* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitialized!OptimizeLoss/conv2d_2/bias/Adam_1* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitialized!OptimizeLoss/conv2d_3/kernel/Adam*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
╛
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitialized#OptimizeLoss/conv2d_3/kernel/Adam_1*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedOptimizeLoss/conv2d_3/bias/Adam*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_3/bias
║
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitialized!OptimizeLoss/conv2d_3/bias/Adam_1* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedOptimizeLoss/dense/kernel/Adam*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitialized OptimizeLoss/dense/kernel/Adam_1*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel
▓
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedOptimizeLoss/dense/bias/Adam*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
┤
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedOptimizeLoss/dense/bias/Adam_1*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitialized OptimizeLoss/dense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitialized"OptimizeLoss/dense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedOptimizeLoss/dense_1/bias/Adam*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitialized OptimizeLoss/dense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitialized OptimizeLoss/dense_2/kernel/Adam*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitialized"OptimizeLoss/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
╢
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedOptimizeLoss/dense_2/bias/Adam*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitialized OptimizeLoss/dense_2/bias/Adam_1*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
Ы
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_45"/device:CPU:0*
T0
*
N.*
_output_shapes
:.
И
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:.
ф

$report_uninitialized_variables/ConstConst"/device:CPU:0*№	
valueЄ	Bя	.Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBOptimizeLoss/learning_rateBOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1*
dtype0*
_output_shapes
:.
К
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ш
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Д
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
Index0*
T0
Ы
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ч
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: 
М
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:.
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Ю
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
_output_shapes
: *
Index0*
T0
М
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Ь
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
end_mask*
_output_shapes
: 
▓
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*
N*
_output_shapes
:
И
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ы
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:
╠
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
_output_shapes
:.
Э
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
▄
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
_output_shapes
:.
й
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:         
┼
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:         
К
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
┼
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Tparams0*#
_output_shapes
:         *
Taxis0*
Tindices0	
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▓
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:         
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
г
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
л
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias
л
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel
з
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel
з
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
е
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
в
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
┬
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
dtype0*
_output_shapes
: 
▒
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedOptimizeLoss/beta1_power*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
▒
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedOptimizeLoss/beta2_power*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
║
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedOptimizeLoss/conv2d/kernel/Adam* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitialized!OptimizeLoss/conv2d/kernel/Adam_1* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
╢
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedOptimizeLoss/conv2d/bias/Adam*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedOptimizeLoss/conv2d/bias/Adam_1*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitialized!OptimizeLoss/conv2d_1/kernel/Adam*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitialized#OptimizeLoss/conv2d_1/kernel/Adam_1*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedOptimizeLoss/conv2d_1/bias/Adam* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitialized!OptimizeLoss/conv2d_1/bias/Adam_1* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitialized!OptimizeLoss/conv2d_2/kernel/Adam*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitialized#OptimizeLoss/conv2d_2/kernel/Adam_1*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedOptimizeLoss/conv2d_2/bias/Adam*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_2/bias
╝
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitialized!OptimizeLoss/conv2d_2/bias/Adam_1* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitialized!OptimizeLoss/conv2d_3/kernel/Adam*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitialized#OptimizeLoss/conv2d_3/kernel/Adam_1*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedOptimizeLoss/conv2d_3/bias/Adam* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitialized!OptimizeLoss/conv2d_3/bias/Adam_1* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedOptimizeLoss/dense/kernel/Adam*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitialized OptimizeLoss/dense/kernel/Adam_1*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
┤
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedOptimizeLoss/dense/bias/Adam*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╢
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedOptimizeLoss/dense/bias/Adam_1*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitialized OptimizeLoss/dense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitialized"OptimizeLoss/dense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedOptimizeLoss/dense_1/bias/Adam*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitialized OptimizeLoss/dense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitialized OptimizeLoss/dense_2/kernel/Adam*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitialized"OptimizeLoss/dense_2/kernel/Adam_1*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedOptimizeLoss/dense_2/bias/Adam*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitialized OptimizeLoss/dense_2/bias/Adam_1*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
∙
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_45"/device:CPU:0*
T0
*
N.*
_output_shapes
:.
М
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:.
ц

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*№	
valueЄ	Bя	.Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBOptimizeLoss/learning_rateBOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1*
dtype0*
_output_shapes
:.
М
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
О
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
Index0*
T0*
_output_shapes
:
Э
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
э
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: 
О
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
и
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
_output_shapes
: *
T0*
Index0
О
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ж
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
end_mask*
_output_shapes
: *
Index0*
T0
╢
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*
N*
_output_shapes
:
К
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ї
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:
╥
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
_output_shapes
:.
Я
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
         
т
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
_output_shapes
:.
н
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:         
╔
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:         *
squeeze_dims

М
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
═
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:         *
Taxis0

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
~
Merge/MergeSummaryMergeSummary&OptimizeLoss/global_norm/gradient_normOptimizeLoss/loss*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c9606c70866d4d1294a55632516823a7/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
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
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
╪

save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step
╬
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ч
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/beta1_powerOptimizeLoss/beta2_powerOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1 OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1 OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step"/device:CPU:0*<
dtypes2
02.	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
█

save/RestoreV2/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╤
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:.
Г
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	
А
save/AssignAssignOptimizeLoss/beta1_powersave/RestoreV2*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Д
save/Assign_1AssignOptimizeLoss/beta2_powersave/RestoreV2:1*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
Н
save/Assign_2AssignOptimizeLoss/conv2d/bias/Adamsave/RestoreV2:2*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
П
save/Assign_3AssignOptimizeLoss/conv2d/bias/Adam_1save/RestoreV2:3*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Э
save/Assign_4AssignOptimizeLoss/conv2d/kernel/Adamsave/RestoreV2:4*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Я
save/Assign_5Assign!OptimizeLoss/conv2d/kernel/Adam_1save/RestoreV2:5*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
С
save/Assign_6AssignOptimizeLoss/conv2d_1/bias/Adamsave/RestoreV2:6*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
У
save/Assign_7Assign!OptimizeLoss/conv2d_1/bias/Adam_1save/RestoreV2:7*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
б
save/Assign_8Assign!OptimizeLoss/conv2d_1/kernel/Adamsave/RestoreV2:8*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_1/kernel
г
save/Assign_9Assign#OptimizeLoss/conv2d_1/kernel/Adam_1save/RestoreV2:9*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
У
save/Assign_10AssignOptimizeLoss/conv2d_2/bias/Adamsave/RestoreV2:10*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
Х
save/Assign_11Assign!OptimizeLoss/conv2d_2/bias/Adam_1save/RestoreV2:11*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
г
save/Assign_12Assign!OptimizeLoss/conv2d_2/kernel/Adamsave/RestoreV2:12*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
е
save/Assign_13Assign#OptimizeLoss/conv2d_2/kernel/Adam_1save/RestoreV2:13*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
У
save/Assign_14AssignOptimizeLoss/conv2d_3/bias/Adamsave/RestoreV2:14*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
Х
save/Assign_15Assign!OptimizeLoss/conv2d_3/bias/Adam_1save/RestoreV2:15*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_3/bias
г
save/Assign_16Assign!OptimizeLoss/conv2d_3/kernel/Adamsave/RestoreV2:16*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
е
save/Assign_17Assign#OptimizeLoss/conv2d_3/kernel/Adam_1save/RestoreV2:17*&
_output_shapes
:@@*
T0*"
_class
loc:@conv2d_3/kernel
О
save/Assign_18AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2:18*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Р
save/Assign_19AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2:19*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Ч
save/Assign_20AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2:20*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Щ
save/Assign_21Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2:21*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Т
save/Assign_22AssignOptimizeLoss/dense_1/bias/Adamsave/RestoreV2:22*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Ф
save/Assign_23Assign OptimizeLoss/dense_1/bias/Adam_1save/RestoreV2:23*
_output_shapes	
:А*
T0*
_class
loc:@dense_1/bias
Ы
save/Assign_24Assign OptimizeLoss/dense_1/kernel/Adamsave/RestoreV2:24*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Э
save/Assign_25Assign"OptimizeLoss/dense_1/kernel/Adam_1save/RestoreV2:25* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
С
save/Assign_26AssignOptimizeLoss/dense_2/bias/Adamsave/RestoreV2:26*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
У
save/Assign_27Assign OptimizeLoss/dense_2/bias/Adam_1save/RestoreV2:27*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
Ъ
save/Assign_28Assign OptimizeLoss/dense_2/kernel/Adamsave/RestoreV2:28*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Ь
save/Assign_29Assign"OptimizeLoss/dense_2/kernel/Adam_1save/RestoreV2:29*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Ч
save/Assign_30AssignOptimizeLoss/learning_ratesave/RestoreV2:30*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
}
save/Assign_31Assignconv2d/biassave/RestoreV2:31*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Н
save/Assign_32Assignconv2d/kernelsave/RestoreV2:32*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Б
save/Assign_33Assignconv2d_1/biassave/RestoreV2:33*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
С
save/Assign_34Assignconv2d_1/kernelsave/RestoreV2:34*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
Б
save/Assign_35Assignconv2d_2/biassave/RestoreV2:35*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
С
save/Assign_36Assignconv2d_2/kernelsave/RestoreV2:36*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Б
save/Assign_37Assignconv2d_3/biassave/RestoreV2:37*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_3/bias
С
save/Assign_38Assignconv2d_3/kernelsave/RestoreV2:38*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
|
save/Assign_39Assign
dense/biassave/RestoreV2:39*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Е
save/Assign_40Assigndense/kernelsave/RestoreV2:40*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
А
save/Assign_41Assigndense_1/biassave/RestoreV2:41*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Й
save/Assign_42Assigndense_1/kernelsave/RestoreV2:42*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА

save/Assign_43Assigndense_2/biassave/RestoreV2:43*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
И
save/Assign_44Assigndense_2/kernelsave/RestoreV2:44*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
y
save/Assign_45Assignglobal_stepsave/RestoreV2:45*
T0	*
_class
loc:@global_step*
_output_shapes
: 
Ь
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
R
save/Const_1Const*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save/StringJoin_1/inputs_1Const*<
value3B1 B+_temp_d7fa4cec5a5941e6afd0a040879546b0/part*
dtype0*
_output_shapes
: 
j
save/StringJoin_1
StringJoinsave/Const_1save/StringJoin_1/inputs_1*
N*
_output_shapes
: 
S
save/num_shards_1Const*
value	B :*
dtype0*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save/ShardedFilename_1ShardedFilenamesave/StringJoin_1save/ShardedFilename_1/shardsave/num_shards_1"/device:CPU:0*
_output_shapes
: 
┌

save/SaveV2_1/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╨
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Я
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesOptimizeLoss/beta1_powerOptimizeLoss/beta2_powerOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1 OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1 OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step"/device:CPU:0*<
dtypes2
02.	
и
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save/ShardedFilename_1
ж
-save/MergeV2Checkpoints_1/checkpoint_prefixesPacksave/ShardedFilename_1^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
{
save/MergeV2Checkpoints_1MergeV2Checkpoints-save/MergeV2Checkpoints_1/checkpoint_prefixessave/Const_1"/device:CPU:0
С
save/Identity_1Identitysave/Const_1^save/MergeV2Checkpoints_1^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
▌

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╙
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Л
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	
Е
save/Assign_46AssignOptimizeLoss/beta1_powersave/RestoreV2_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
З
save/Assign_47AssignOptimizeLoss/beta2_powersave/RestoreV2_1:1*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
Р
save/Assign_48AssignOptimizeLoss/conv2d/bias/Adamsave/RestoreV2_1:2*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Т
save/Assign_49AssignOptimizeLoss/conv2d/bias/Adam_1save/RestoreV2_1:3*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
а
save/Assign_50AssignOptimizeLoss/conv2d/kernel/Adamsave/RestoreV2_1:4*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
в
save/Assign_51Assign!OptimizeLoss/conv2d/kernel/Adam_1save/RestoreV2_1:5*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ф
save/Assign_52AssignOptimizeLoss/conv2d_1/bias/Adamsave/RestoreV2_1:6*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ц
save/Assign_53Assign!OptimizeLoss/conv2d_1/bias/Adam_1save/RestoreV2_1:7*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
д
save/Assign_54Assign!OptimizeLoss/conv2d_1/kernel/Adamsave/RestoreV2_1:8*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
ж
save/Assign_55Assign#OptimizeLoss/conv2d_1/kernel/Adam_1save/RestoreV2_1:9*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
Х
save/Assign_56AssignOptimizeLoss/conv2d_2/bias/Adamsave/RestoreV2_1:10*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
Ч
save/Assign_57Assign!OptimizeLoss/conv2d_2/bias/Adam_1save/RestoreV2_1:11*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
е
save/Assign_58Assign!OptimizeLoss/conv2d_2/kernel/Adamsave/RestoreV2_1:12*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
з
save/Assign_59Assign#OptimizeLoss/conv2d_2/kernel/Adam_1save/RestoreV2_1:13*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Х
save/Assign_60AssignOptimizeLoss/conv2d_3/bias/Adamsave/RestoreV2_1:14*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
Ч
save/Assign_61Assign!OptimizeLoss/conv2d_3/bias/Adam_1save/RestoreV2_1:15*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
е
save/Assign_62Assign!OptimizeLoss/conv2d_3/kernel/Adamsave/RestoreV2_1:16*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
з
save/Assign_63Assign#OptimizeLoss/conv2d_3/kernel/Adam_1save/RestoreV2_1:17*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
Р
save/Assign_64AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2_1:18*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Т
save/Assign_65AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2_1:19*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Щ
save/Assign_66AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2_1:20*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Ы
save/Assign_67Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2_1:21*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
Ф
save/Assign_68AssignOptimizeLoss/dense_1/bias/Adamsave/RestoreV2_1:22*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Ц
save/Assign_69Assign OptimizeLoss/dense_1/bias/Adam_1save/RestoreV2_1:23*
_output_shapes	
:А*
T0*
_class
loc:@dense_1/bias
Э
save/Assign_70Assign OptimizeLoss/dense_1/kernel/Adamsave/RestoreV2_1:24*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Я
save/Assign_71Assign"OptimizeLoss/dense_1/kernel/Adam_1save/RestoreV2_1:25*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
У
save/Assign_72AssignOptimizeLoss/dense_2/bias/Adamsave/RestoreV2_1:26*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
Х
save/Assign_73Assign OptimizeLoss/dense_2/bias/Adam_1save/RestoreV2_1:27*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
Ь
save/Assign_74Assign OptimizeLoss/dense_2/kernel/Adamsave/RestoreV2_1:28*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Ю
save/Assign_75Assign"OptimizeLoss/dense_2/kernel/Adam_1save/RestoreV2_1:29*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Щ
save/Assign_76AssignOptimizeLoss/learning_ratesave/RestoreV2_1:30*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 

save/Assign_77Assignconv2d/biassave/RestoreV2_1:31*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
П
save/Assign_78Assignconv2d/kernelsave/RestoreV2_1:32*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Г
save/Assign_79Assignconv2d_1/biassave/RestoreV2_1:33*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
У
save/Assign_80Assignconv2d_1/kernelsave/RestoreV2_1:34*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
Г
save/Assign_81Assignconv2d_2/biassave/RestoreV2_1:35*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
У
save/Assign_82Assignconv2d_2/kernelsave/RestoreV2_1:36*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Г
save/Assign_83Assignconv2d_3/biassave/RestoreV2_1:37*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
У
save/Assign_84Assignconv2d_3/kernelsave/RestoreV2_1:38*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
~
save/Assign_85Assign
dense/biassave/RestoreV2_1:39*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
З
save/Assign_86Assigndense/kernelsave/RestoreV2_1:40*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
В
save/Assign_87Assigndense_1/biassave/RestoreV2_1:41*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Л
save/Assign_88Assigndense_1/kernelsave/RestoreV2_1:42*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Б
save/Assign_89Assigndense_2/biassave/RestoreV2_1:43*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:d
К
save/Assign_90Assigndense_2/kernelsave/RestoreV2_1:44*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
{
save/Assign_91Assignglobal_stepsave/RestoreV2_1:45*
T0	*
_class
loc:@global_step*
_output_shapes
: 
к
save/restore_shard_1NoOp^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91
1
save/restore_all_1NoOp^save/restore_shard_1"B
save/Const_1:0save/Identity_1:0save/restore_all_1 (5 @F8"!
local_init_op

group_deps_1"є5
	variablesх5т5
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
Ф
OptimizeLoss/learning_rate:0!OptimizeLoss/learning_rate/Assign!OptimizeLoss/learning_rate/read:02.OptimizeLoss/learning_rate/Initializer/Const:0
И
OptimizeLoss/beta1_power:0OptimizeLoss/beta1_power/AssignOptimizeLoss/beta1_power/read:02(OptimizeLoss/beta1_power/initial_value:0
И
OptimizeLoss/beta2_power:0OptimizeLoss/beta2_power/AssignOptimizeLoss/beta2_power/read:02(OptimizeLoss/beta2_power/initial_value:0
и
!OptimizeLoss/conv2d/kernel/Adam:0&OptimizeLoss/conv2d/kernel/Adam/Assign&OptimizeLoss/conv2d/kernel/Adam/read:023OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d/kernel/Adam_1:0(OptimizeLoss/conv2d/kernel/Adam_1/Assign(OptimizeLoss/conv2d/kernel/Adam_1/read:025OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros:0
а
OptimizeLoss/conv2d/bias/Adam:0$OptimizeLoss/conv2d/bias/Adam/Assign$OptimizeLoss/conv2d/bias/Adam/read:021OptimizeLoss/conv2d/bias/Adam/Initializer/zeros:0
и
!OptimizeLoss/conv2d/bias/Adam_1:0&OptimizeLoss/conv2d/bias/Adam_1/Assign&OptimizeLoss/conv2d/bias/Adam_1/read:023OptimizeLoss/conv2d/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_1/kernel/Adam:0(OptimizeLoss/conv2d_1/kernel/Adam/Assign(OptimizeLoss/conv2d_1/kernel/Adam/read:025OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_1/kernel/Adam_1:0*OptimizeLoss/conv2d_1/kernel/Adam_1/Assign*OptimizeLoss/conv2d_1/kernel/Adam_1/read:027OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_1/bias/Adam:0&OptimizeLoss/conv2d_1/bias/Adam/Assign&OptimizeLoss/conv2d_1/bias/Adam/read:023OptimizeLoss/conv2d_1/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_1/bias/Adam_1:0(OptimizeLoss/conv2d_1/bias/Adam_1/Assign(OptimizeLoss/conv2d_1/bias/Adam_1/read:025OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_2/kernel/Adam:0(OptimizeLoss/conv2d_2/kernel/Adam/Assign(OptimizeLoss/conv2d_2/kernel/Adam/read:025OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_2/kernel/Adam_1:0*OptimizeLoss/conv2d_2/kernel/Adam_1/Assign*OptimizeLoss/conv2d_2/kernel/Adam_1/read:027OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_2/bias/Adam:0&OptimizeLoss/conv2d_2/bias/Adam/Assign&OptimizeLoss/conv2d_2/bias/Adam/read:023OptimizeLoss/conv2d_2/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_2/bias/Adam_1:0(OptimizeLoss/conv2d_2/bias/Adam_1/Assign(OptimizeLoss/conv2d_2/bias/Adam_1/read:025OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_3/kernel/Adam:0(OptimizeLoss/conv2d_3/kernel/Adam/Assign(OptimizeLoss/conv2d_3/kernel/Adam/read:025OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_3/kernel/Adam_1:0*OptimizeLoss/conv2d_3/kernel/Adam_1/Assign*OptimizeLoss/conv2d_3/kernel/Adam_1/read:027OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_3/bias/Adam:0&OptimizeLoss/conv2d_3/bias/Adam/Assign&OptimizeLoss/conv2d_3/bias/Adam/read:023OptimizeLoss/conv2d_3/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_3/bias/Adam_1:0(OptimizeLoss/conv2d_3/bias/Adam_1/Assign(OptimizeLoss/conv2d_3/bias/Adam_1/read:025OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense/kernel/Adam:0%OptimizeLoss/dense/kernel/Adam/Assign%OptimizeLoss/dense/kernel/Adam/read:022OptimizeLoss/dense/kernel/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense/kernel/Adam_1:0'OptimizeLoss/dense/kernel/Adam_1/Assign'OptimizeLoss/dense/kernel/Adam_1/read:024OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros:0
Ь
OptimizeLoss/dense/bias/Adam:0#OptimizeLoss/dense/bias/Adam/Assign#OptimizeLoss/dense/bias/Adam/read:020OptimizeLoss/dense/bias/Adam/Initializer/zeros:0
д
 OptimizeLoss/dense/bias/Adam_1:0%OptimizeLoss/dense/bias/Adam_1/Assign%OptimizeLoss/dense/bias/Adam_1/read:022OptimizeLoss/dense/bias/Adam_1/Initializer/zeros:0
м
"OptimizeLoss/dense_1/kernel/Adam:0'OptimizeLoss/dense_1/kernel/Adam/Assign'OptimizeLoss/dense_1/kernel/Adam/read:024OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros:0
┤
$OptimizeLoss/dense_1/kernel/Adam_1:0)OptimizeLoss/dense_1/kernel/Adam_1/Assign)OptimizeLoss/dense_1/kernel/Adam_1/read:026OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense_1/bias/Adam:0%OptimizeLoss/dense_1/bias/Adam/Assign%OptimizeLoss/dense_1/bias/Adam/read:022OptimizeLoss/dense_1/bias/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense_1/bias/Adam_1:0'OptimizeLoss/dense_1/bias/Adam_1/Assign'OptimizeLoss/dense_1/bias/Adam_1/read:024OptimizeLoss/dense_1/bias/Adam_1/Initializer/zeros:0
м
"OptimizeLoss/dense_2/kernel/Adam:0'OptimizeLoss/dense_2/kernel/Adam/Assign'OptimizeLoss/dense_2/kernel/Adam/read:024OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros:0
┤
$OptimizeLoss/dense_2/kernel/Adam_1:0)OptimizeLoss/dense_2/kernel/Adam_1/Assign)OptimizeLoss/dense_2/kernel/Adam_1/read:026OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense_2/bias/Adam:0%OptimizeLoss/dense_2/bias/Adam/Assign%OptimizeLoss/dense_2/bias/Adam/read:022OptimizeLoss/dense_2/bias/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense_2/bias/Adam_1:0'OptimizeLoss/dense_2/bias/Adam_1/Assign'OptimizeLoss/dense_2/bias/Adam_1/read:024OptimizeLoss/dense_2/bias/Adam_1/Initializer/zeros:0"
ready_op


concat:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"T
lossesJ
H
"softmax_cross_entropy_loss/value:0
"softmax_cross_entropy_loss/value:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"2
global_step_read_op_cache

global_step/add:0""
train_op

OptimizeLoss/train"&

summary_op

Merge/MergeSummary:0"N
	summariesA
?
(OptimizeLoss/global_norm/gradient_norm:0
OptimizeLoss/loss:0"╥
trainable_variables║╖
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08"W
ready_for_local_init_op<
:
8report_uninitialized_variables_1/boolean_mask/GatherV2:0"
init_op


group_deps"╚
cond_context╖┤
╞
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *ь
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:0/
global_step:0global_step/cond/read/Switch:18
global_step/cond/pred_id:0global_step/cond/pred_id:0
ш
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*О
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:08
global_step/cond/pred_id:0global_step/cond/pred_id:0┘╤
╤4к4
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
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
Ц
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
2
L2Loss
t"T
output"T"
Ttype:
2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2


LogicalNot
x

y

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"TА
pred

output_false"TА
output_true"TА"	
TtypeШ
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
Ў
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
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.9.02v1.9.0-0-g25c197e023Ч╨

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
x
inputPlaceholder*$
shape:           *
dtype0*/
_output_shapes
:           
a
outputPlaceholder*
shape:         *
dtype0*#
_output_shapes
:         
М
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
К
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
T0
*
_output_shapes
: : 
a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
_output_shapes
: *
T0

_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
У
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
Я
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d/kernel*%
valueB"             
У
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *,Чй╜*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *,Чй=*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ч
conv2d/bias
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
e
conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
┌
conv2d/Conv2DConv2Dinputconv2d/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:            
Л
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:            
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:            
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"              *
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ч╙z╜*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ч╙z=*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
╖
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape:  
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
О
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ы
conv2d_1/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_1/bias
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ф
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:            *
	dilations

С
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:            
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:            
╝
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:          *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
^
dropout/dropout/keep_probConst*
valueB
 *  @?*
dtype0*
_output_shapes
: 
j
dropout/dropout/ShapeShapemax_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┤
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*

seed *
T0*
dtype0*/
_output_shapes
:          *
seed2 
Т
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
╡
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*/
_output_shapes
:          
з
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*/
_output_shapes
:          
П
dropout/dropout/addAdddropout/dropout/keep_probdropout/dropout/random_uniform*
T0*/
_output_shapes
:          
m
dropout/dropout/FloorFloordropout/dropout/add*
T0*/
_output_shapes
:          
К
dropout/dropout/divRealDivmax_pooling2d/MaxPooldropout/dropout/keep_prob*/
_output_shapes
:          *
T0
А
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*/
_output_shapes
:          *
T0
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
valueB
 *лкк╜
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *лкк=*
dtype0*
_output_shapes
: 
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
: @*

seed 
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
╖
conv2d_2/kernel
VariableV2*"
_class
loc:@conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
█
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
О
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ы
conv2d_2/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container 
╛
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ь
conv2d_2/Conv2DConv2Ddropout/dropout/mulconv2d_2/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @
С
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *:═У╜*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *:═У=*
dtype0*
_output_shapes
: 
Ў
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_3/kernel
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*&
_output_shapes
:@@*
T0*"
_class
loc:@conv2d_3/kernel
╖
conv2d_3/kernel
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *"
_class
loc:@conv2d_3/kernel
█
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
Ж
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
О
conv2d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_3/bias*
valueB@*    
Ы
conv2d_3/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╛
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ц
conv2d_3/Conv2DConv2Dconv2d_2/Reluconv2d_3/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @
С
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:         @
╛
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu*
ksize
*
paddingVALID*/
_output_shapes
:         @*
T0*
data_formatNHWC*
strides

`
dropout_1/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *  @?
n
dropout_1/dropout/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
i
$dropout_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╕
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*
T0*
dtype0*/
_output_shapes
:         @*
seed2 *

seed 
Ш
$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
_output_shapes
: *
T0
╗
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*
T0*/
_output_shapes
:         @
н
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*/
_output_shapes
:         @
Х
dropout_1/dropout/addAdddropout_1/dropout/keep_prob dropout_1/dropout/random_uniform*
T0*/
_output_shapes
:         @
q
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*/
_output_shapes
:         @
Р
dropout_1/dropout/divRealDivmax_pooling2d_1/MaxPooldropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
Ж
dropout_1/dropout/mulMuldropout_1/dropout/divdropout_1/dropout/Floor*
T0*/
_output_shapes
:         @
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
y
ReshapeReshapedropout_1/dropout/mulReshape/shape*
T0*
Tshape0*(
_output_shapes
:         А 
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *М7╜*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *М7=*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
А А*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
е
dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
А А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:
А А
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
А А*
use_locking(*
T0*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel
Ц
,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:А*
dtype0*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
═
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias*

index_type0
Ч

dense/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *
_class
loc:@dense/bias*
	container *
shape:А
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Л
dense/MatMulMatMulReshapedense/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*(
_output_shapes
:         А*
T0
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
`
dropout_2/dropout/keep_probConst*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
a
dropout_2/dropout/ShapeShape
dense/Relu*
T0*
out_type0*
_output_shapes
:
i
$dropout_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
▒
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:         А*
seed2 
Ш
$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
_output_shapes
: *
T0
┤
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
ж
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*(
_output_shapes
:         А*
T0
О
dropout_2/dropout/addAdddropout_2/dropout/keep_prob dropout_2/dropout/random_uniform*
T0*(
_output_shapes
:         А
j
dropout_2/dropout/FloorFloordropout_2/dropout/add*
T0*(
_output_shapes
:         А
|
dropout_2/dropout/divRealDiv
dense/Reludropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А

dropout_2/dropout/mulMuldropout_2/dropout/divdropout_2/dropout/Floor*(
_output_shapes
:         А*
T0
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *  А╜
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *  А=*
dtype0*
_output_shapes
: 
э
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ъ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
▄
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
й
dense_1/kernel
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
╤
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
Ы
dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
╗
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Э
dense_1/MatMulMatMuldropout_2/dropout/muldense_1/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
З
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*(
_output_shapes
:         А*
T0
`
dropout_3/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩ?
f
dropout_3/dropout/ShapeShapedense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
$dropout_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_3/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
▒
.dropout_3/dropout/random_uniform/RandomUniformRandomUniformdropout_3/dropout/Shape*
T0*
dtype0*(
_output_shapes
:         А*
seed2 *

seed 
Ш
$dropout_3/dropout/random_uniform/subSub$dropout_3/dropout/random_uniform/max$dropout_3/dropout/random_uniform/min*
T0*
_output_shapes
: 
┤
$dropout_3/dropout/random_uniform/mulMul.dropout_3/dropout/random_uniform/RandomUniform$dropout_3/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
ж
 dropout_3/dropout/random_uniformAdd$dropout_3/dropout/random_uniform/mul$dropout_3/dropout/random_uniform/min*(
_output_shapes
:         А*
T0
О
dropout_3/dropout/addAdddropout_3/dropout/keep_prob dropout_3/dropout/random_uniform*
T0*(
_output_shapes
:         А
j
dropout_3/dropout/FloorFloordropout_3/dropout/add*
T0*(
_output_shapes
:         А
Б
dropout_3/dropout/divRealDivdense_1/BiasAdddropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А

dropout_3/dropout/mulMuldropout_3/dropout/divdropout_3/dropout/Floor*
T0*(
_output_shapes
:         А
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *?╚╩╜*
dtype0*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *?╚╩=*
dtype0*
_output_shapes
: 
ь
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0*
_output_shapes
:	Аd*

seed 
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
щ
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
█
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
з
dense_2/kernel
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
	container *
shape:	Аd*
dtype0*
_output_shapes
:	Аd
╨
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
М
dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueBd*    *
dtype0*
_output_shapes
:d
Щ
dense_2/bias
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
║
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
q
dense_2/bias/readIdentitydense_2/bias*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
Ь
dense_2/MatMulMatMuldropout_3/dropout/muldense_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         d*
transpose_a( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         d
U
one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
O
one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :d
Ю
one_hotOneHotoutputone_hot/depthone_hot/on_valueone_hot/off_value*'
_output_shapes
:         d*
T0*
axis         *
TI0
z
/softmax_cross_entropy_loss/labels_stop_gradientStopGradientone_hot*'
_output_shapes
:         d*
T0
j
(softmax_cross_entropy_loss/xentropy/RankConst*
value	B :*
dtype0*
_output_shapes
: 
x
)softmax_cross_entropy_loss/xentropy/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
l
*softmax_cross_entropy_loss/xentropy/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
z
+softmax_cross_entropy_loss/xentropy/Shape_1Shapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
)softmax_cross_entropy_loss/xentropy/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
ж
'softmax_cross_entropy_loss/xentropy/SubSub*softmax_cross_entropy_loss/xentropy/Rank_1)softmax_cross_entropy_loss/xentropy/Sub/y*
T0*
_output_shapes
: 
Ъ
/softmax_cross_entropy_loss/xentropy/Slice/beginPack'softmax_cross_entropy_loss/xentropy/Sub*
N*
_output_shapes
:*
T0*

axis 
x
.softmax_cross_entropy_loss/xentropy/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Є
)softmax_cross_entropy_loss/xentropy/SliceSlice+softmax_cross_entropy_loss/xentropy/Shape_1/softmax_cross_entropy_loss/xentropy/Slice/begin.softmax_cross_entropy_loss/xentropy/Slice/size*
Index0*
T0*
_output_shapes
:
Ж
3softmax_cross_entropy_loss/xentropy/concat/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_loss/xentropy/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Б
*softmax_cross_entropy_loss/xentropy/concatConcatV23softmax_cross_entropy_loss/xentropy/concat/values_0)softmax_cross_entropy_loss/xentropy/Slice/softmax_cross_entropy_loss/xentropy/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
╝
+softmax_cross_entropy_loss/xentropy/ReshapeReshapedense_2/BiasAdd*softmax_cross_entropy_loss/xentropy/concat*0
_output_shapes
:                  *
T0*
Tshape0
l
*softmax_cross_entropy_loss/xentropy/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
+softmax_cross_entropy_loss/xentropy/Shape_2Shape/softmax_cross_entropy_loss/labels_stop_gradient*
_output_shapes
:*
T0*
out_type0
m
+softmax_cross_entropy_loss/xentropy/Sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
к
)softmax_cross_entropy_loss/xentropy/Sub_1Sub*softmax_cross_entropy_loss/xentropy/Rank_2+softmax_cross_entropy_loss/xentropy/Sub_1/y*
T0*
_output_shapes
: 
Ю
1softmax_cross_entropy_loss/xentropy/Slice_1/beginPack)softmax_cross_entropy_loss/xentropy/Sub_1*
T0*

axis *
N*
_output_shapes
:
z
0softmax_cross_entropy_loss/xentropy/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
°
+softmax_cross_entropy_loss/xentropy/Slice_1Slice+softmax_cross_entropy_loss/xentropy/Shape_21softmax_cross_entropy_loss/xentropy/Slice_1/begin0softmax_cross_entropy_loss/xentropy/Slice_1/size*
Index0*
T0*
_output_shapes
:
И
5softmax_cross_entropy_loss/xentropy/concat_1/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
s
1softmax_cross_entropy_loss/xentropy/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
,softmax_cross_entropy_loss/xentropy/concat_1ConcatV25softmax_cross_entropy_loss/xentropy/concat_1/values_0+softmax_cross_entropy_loss/xentropy/Slice_11softmax_cross_entropy_loss/xentropy/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
р
-softmax_cross_entropy_loss/xentropy/Reshape_1Reshape/softmax_cross_entropy_loss/labels_stop_gradient,softmax_cross_entropy_loss/xentropy/concat_1*
T0*
Tshape0*0
_output_shapes
:                  
ъ
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits+softmax_cross_entropy_loss/xentropy/Reshape-softmax_cross_entropy_loss/xentropy/Reshape_1*?
_output_shapes-
+:         :                  *
T0
m
+softmax_cross_entropy_loss/xentropy/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
и
)softmax_cross_entropy_loss/xentropy/Sub_2Sub(softmax_cross_entropy_loss/xentropy/Rank+softmax_cross_entropy_loss/xentropy/Sub_2/y*
T0*
_output_shapes
: 
{
1softmax_cross_entropy_loss/xentropy/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
Э
0softmax_cross_entropy_loss/xentropy/Slice_2/sizePack)softmax_cross_entropy_loss/xentropy/Sub_2*
T0*

axis *
N*
_output_shapes
:
Ў
+softmax_cross_entropy_loss/xentropy/Slice_2Slice)softmax_cross_entropy_loss/xentropy/Shape1softmax_cross_entropy_loss/xentropy/Slice_2/begin0softmax_cross_entropy_loss/xentropy/Slice_2/size*
Index0*
T0*
_output_shapes
:
╞
-softmax_cross_entropy_loss/xentropy/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy+softmax_cross_entropy_loss/xentropy/Slice_2*#
_output_shapes
:         *
T0*
Tshape0
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
А
=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
й
<softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
_output_shapes
:*
T0*
out_type0
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
╣
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
к
softmax_cross_entropy_loss/MulMul-softmax_cross_entropy_loss/xentropy/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
╕
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB: 
е
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
┴
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
о
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
─
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
╟
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
╔
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
█
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
ы
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ь
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
ъ
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
Х
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
щ
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
┐
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
я
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
╟
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ю
Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:         
р
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
─
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
╙
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
│
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
й
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
╖
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
_output_shapes
: *
T0
╡
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
╗
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
╜
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╖
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
╝
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
_output_shapes
: *
T0
П
softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╕
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
╢
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
а
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*
_output_shapes
: *-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *╖╤8
н
OptimizeLoss/learning_rate
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *-
_class#
!loc:@OptimizeLoss/learning_rate*
	container 
ю
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate
Ч
OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
e
 OptimizeLoss/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ц
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/Shape OptimizeLoss/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
М
GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
·
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
_output_shapes
: *
T0
у
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
ї
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
Г
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ш
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Щ
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
■
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
И
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
_output_shapes
: *
T0
╙
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
┘
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
_output_shapes
: *
T0
Г
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
_output_shapes
: *
T0
Щ
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
щ
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Н
JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
Я
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Ж
AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
Т
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Н
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Ю
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ShapeShapesoftmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
Н
?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         *

Tmultiples0
н
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
T0*
out_type0*
_output_shapes
:
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▄
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/MulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*#
_output_shapes
:         *
T0
Ч
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/MulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
х
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1Mul-softmax_cross_entropy_loss/xentropy/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Э
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ў
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:         
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
▓
OOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ShapeShape#softmax_cross_entropy_loss/xentropy*
T0*
out_type0*
_output_shapes
:
╛
QOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
Р
!OptimizeLoss/gradients/zeros_like	ZerosLike%softmax_cross_entropy_loss/xentropy:1*0
_output_shapes
:                  *
T0
Щ
NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
╣
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsQOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
└
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_loss/xentropy/Reshape*
T0*0
_output_shapes
:                  
╤
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/NegNegJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax*
T0*0
_output_shapes
:                  
Ы
POptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
╜
LOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1
ExpandDimsQOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapePOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:         *

Tdim0
Ъ
EOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1MulLOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/Neg*
T0*0
_output_shapes
:                  
ц
POptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulF^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1
П
XOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulQ^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul*0
_output_shapes
:                  
Х
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1Q^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1*0
_output_shapes
:                  
Ь
MOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
├
OOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependencyMOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         d
╙
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:d
╨
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradP^OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape
Ў
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentityOOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*'
_output_shapes
:         d
╗
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
я
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
ъ
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_3/dropout/mulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	Аd*
transpose_a(*
transpose_b( 
н
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:         А
╢
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	Аd
М
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ShapeShapedropout_3/dropout/div*
_output_shapes
:*
T0*
out_type0
Р
9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1Shapedropout_3/dropout/Floor*
T0*
out_type0*
_output_shapes
:
С
GOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
═
5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/MulMulCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencydropout_3/dropout/Floor*
T0*(
_output_shapes
:         А
№
5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ї
9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         А
═
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Mul_1Muldropout_3/dropout/divCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency*(
_output_shapes
:         А*
T0
В
7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
√
;OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:         А
─
BOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_3/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape*(
_output_shapes
:         А
▌
LOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_3/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
Ж
7OptimizeLoss/gradients/dropout_3/dropout/div_grad/ShapeShapedense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
|
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
С
GOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
р
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencydropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А
А
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ї
9OptimizeLoss/gradients/dropout_3/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         А
А
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/NegNegdense_1/BiasAdd*
T0*(
_output_shapes
:         А
═
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_3/dropout/div_grad/Negdropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А
╙
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_1dropout_3/dropout/keep_prob*
T0*(
_output_shapes
:         А
°
5OptimizeLoss/gradients/dropout_3/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_3/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
А
7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_3/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
щ
;OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_3/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
─
BOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_3/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape
╦
LOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape_1*
_output_shapes
: 
╧
7OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradJOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes	
:А
╦
<OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGradK^OptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency
▄
DOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentityJOptimizeLoss/gradients/dropout_3/dropout/div_grad/tuple/control_dependency=^OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_3/dropout/div_grad/Reshape*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad
я
1OptimizeLoss/gradients/dense_1/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
ы
3OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mulDOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
н
;OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
М
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/div*
_output_shapes
:*
T0*
out_type0
Р
9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
_output_shapes
:*
T0*
out_type0
С
GOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
═
5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/MulMulCOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependencydropout_2/dropout/Floor*
T0*(
_output_shapes
:         А
№
5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ї
9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         А
═
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Mul_1Muldropout_2/dropout/divCOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
В
7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
√
;OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:         А
─
BOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_2/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape*(
_output_shapes
:         А
▌
LOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_2/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
Б
7OptimizeLoss/gradients/dropout_2/dropout/div_grad/ShapeShape
dense/Relu*
T0*
out_type0*
_output_shapes
:
|
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
С
GOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
р
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencydropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А
А
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ї
9OptimizeLoss/gradients/dropout_2/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape*(
_output_shapes
:         А*
T0*
Tshape0
{
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/NegNeg
dense/Relu*(
_output_shapes
:         А*
T0
═
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_2/dropout/div_grad/Negdropout_2/dropout/keep_prob*
T0*(
_output_shapes
:         А
╙
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_1dropout_2/dropout/keep_prob*(
_output_shapes
:         А*
T0
°
5OptimizeLoss/gradients/dropout_2/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_2/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
А
7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_2/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
щ
;OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_2/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
─
BOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1
╫
JOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_2/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape*(
_output_shapes
:         А
╦
LOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_2/dropout/div_grad/Reshape_1
╞
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradJOptimizeLoss/gradients/dropout_2/dropout/div_grad/tuple/control_dependency
dense/Relu*(
_output_shapes
:         А*
T0
▓
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
м
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad
│
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*(
_output_shapes
:         А
┤
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А*
T0
щ
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*(
_output_shapes
:         А *
transpose_a( *
transpose_b(
┘
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
А А*
transpose_a(*
transpose_b( *
T0
з
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
▒
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:         А *
T0*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul
п
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
А А
~
)OptimizeLoss/gradients/Reshape_grad/ShapeShapedropout_1/dropout/mul*
out_type0*
_output_shapes
:*
T0
ь
+OptimizeLoss/gradients/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency)OptimizeLoss/gradients/Reshape_grad/Shape*/
_output_shapes
:         @*
T0*
Tshape0
М
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/div*
_output_shapes
:*
T0*
out_type0
Р
9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
_output_shapes
:*
T0*
out_type0
С
GOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╝
5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/MulMul+OptimizeLoss/gradients/Reshape_grad/Reshapedropout_1/dropout/Floor*
T0*/
_output_shapes
:         @
№
5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/SumSum5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/MulGOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
№
9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape*/
_output_shapes
:         @*
T0*
Tshape0
╝
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Mul_1Muldropout_1/dropout/div+OptimizeLoss/gradients/Reshape_grad/Reshape*
T0*/
_output_shapes
:         @
В
7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum_1Sum7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Mul_1IOptimizeLoss/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
В
;OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Sum_19OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         @
─
BOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape<^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1
▐
JOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_1/dropout/mul_grad/ReshapeC^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape*/
_output_shapes
:         @
ф
LOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1C^OptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_1/dropout/mul_grad/Reshape_1*/
_output_shapes
:         @
О
7OptimizeLoss/gradients/dropout_1/dropout/div_grad/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
|
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
С
GOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape9OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ч
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDivRealDivJOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencydropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
А
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/SumSum9OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDivGOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
№
9OptimizeLoss/gradients/dropout_1/dropout/div_grad/ReshapeReshape5OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         @
П
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/NegNegmax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:         @
╘
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_1RealDiv5OptimizeLoss/gradients/dropout_1/dropout/div_grad/Negdropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
┌
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_2RealDiv;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_1dropout_1/dropout/keep_prob*
T0*/
_output_shapes
:         @
 
5OptimizeLoss/gradients/dropout_1/dropout/div_grad/mulMulJOptimizeLoss/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency;OptimizeLoss/gradients/dropout_1/dropout/div_grad/RealDiv_2*
T0*/
_output_shapes
:         @
А
7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum_1Sum5OptimizeLoss/gradients/dropout_1/dropout/div_grad/mulIOptimizeLoss/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
щ
;OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1Reshape7OptimizeLoss/gradients/dropout_1/dropout/div_grad/Sum_19OptimizeLoss/gradients/dropout_1/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
─
BOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape<^OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1
▐
JOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dropout_1/dropout/div_grad/ReshapeC^OptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape*/
_output_shapes
:         @
╦
LOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1C^OptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dropout_1/dropout/div_grad/Reshape_1
╧
?OptimizeLoss/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d_1/MaxPoolJOptimizeLoss/gradients/dropout_1/dropout/div_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:         @
╚
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*/
_output_shapes
:         @
╖
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
╡
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*/
_output_shapes
:         @
┐
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
е
2OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNconv2d_2/Reluconv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
П
?OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:         @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Г
@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu4OptimizeLoss/gradients/conv2d_3/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@@*
	dilations
*
T0
╔
<OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         @
┘
FOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/group_deps*&
_output_shapes
:@@*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
═
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradDOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyconv2d_2/Relu*
T0*/
_output_shapes
:         @
╖
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
╡
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:         @
┐
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
л
2OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNdropout/dropout/mulconv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
П
?OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:          *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Й
@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/dropout/mul4OptimizeLoss/gradients/conv2d_2/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @
╔
<OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:          
┘
FOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
И
5OptimizeLoss/gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*
_output_shapes
:
М
7OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
_output_shapes
:*
T0*
out_type0
Л
EOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape7OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╤
3OptimizeLoss/gradients/dropout/dropout/mul_grad/MulMulDOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependencydropout/dropout/Floor*/
_output_shapes
:          *
T0
Ў
3OptimizeLoss/gradients/dropout/dropout/mul_grad/SumSum3OptimizeLoss/gradients/dropout/dropout/mul_grad/MulEOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
7OptimizeLoss/gradients/dropout/dropout/mul_grad/ReshapeReshape3OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum5OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*/
_output_shapes
:          
╤
5OptimizeLoss/gradients/dropout/dropout/mul_grad/Mul_1Muldropout/dropout/divDOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*/
_output_shapes
:          
№
5OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum_1Sum5OptimizeLoss/gradients/dropout/dropout/mul_grad/Mul_1GOptimizeLoss/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
№
9OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1Reshape5OptimizeLoss/gradients/dropout/dropout/mul_grad/Sum_17OptimizeLoss/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:          
╛
@OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape:^OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1
╓
HOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity7OptimizeLoss/gradients/dropout/dropout/mul_grad/ReshapeA^OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:          *
T0*J
_class@
><loc:@OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape
▄
JOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity9OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1A^OptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:          *
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout/dropout/mul_grad/Reshape_1
К
5OptimizeLoss/gradients/dropout/dropout/div_grad/ShapeShapemax_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
z
7OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Л
EOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs5OptimizeLoss/gradients/dropout/dropout/div_grad/Shape7OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
с
7OptimizeLoss/gradients/dropout/dropout/div_grad/RealDivRealDivHOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout/dropout/keep_prob*
T0*/
_output_shapes
:          
·
3OptimizeLoss/gradients/dropout/dropout/div_grad/SumSum7OptimizeLoss/gradients/dropout/dropout/div_grad/RealDivEOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
7OptimizeLoss/gradients/dropout/dropout/div_grad/ReshapeReshape3OptimizeLoss/gradients/dropout/dropout/div_grad/Sum5OptimizeLoss/gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*/
_output_shapes
:          
Л
3OptimizeLoss/gradients/dropout/dropout/div_grad/NegNegmax_pooling2d/MaxPool*/
_output_shapes
:          *
T0
╬
9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_1RealDiv3OptimizeLoss/gradients/dropout/dropout/div_grad/Negdropout/dropout/keep_prob*
T0*/
_output_shapes
:          
╘
9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_2RealDiv9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_1dropout/dropout/keep_prob*
T0*/
_output_shapes
:          
∙
3OptimizeLoss/gradients/dropout/dropout/div_grad/mulMulHOptimizeLoss/gradients/dropout/dropout/mul_grad/tuple/control_dependency9OptimizeLoss/gradients/dropout/dropout/div_grad/RealDiv_2*/
_output_shapes
:          *
T0
·
5OptimizeLoss/gradients/dropout/dropout/div_grad/Sum_1Sum3OptimizeLoss/gradients/dropout/dropout/div_grad/mulGOptimizeLoss/gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
у
9OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1Reshape5OptimizeLoss/gradients/dropout/dropout/div_grad/Sum_17OptimizeLoss/gradients/dropout/dropout/div_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
╛
@OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_depsNoOp8^OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape:^OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1
╓
HOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity7OptimizeLoss/gradients/dropout/dropout/div_grad/ReshapeA^OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape*/
_output_shapes
:          
├
JOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity9OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1A^OptimizeLoss/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
╔
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d/MaxPoolHOptimizeLoss/gradients/dropout/dropout/div_grad/tuple/control_dependency*
ksize
*
paddingVALID*/
_output_shapes
:            *
T0*
data_formatNHWC*
strides

╞
2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_1/Relu*/
_output_shapes
:            *
T0
╖
8OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
╡
=OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp9^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad3^OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad
╞
EOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:            
┐
GOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
г
2OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
П
?OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:            *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Б
@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4OptimizeLoss/gradients/conv2d_1/Conv2D_grad/ShapeN:1EOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:  
╔
<OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOpA^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
▐
DOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity?OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput=^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*R
_classH
FDloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:            
┘
FOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter=^OptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:  *
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
╔
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradDOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyconv2d/Relu*
T0*/
_output_shapes
:            
│
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
п
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad
╛
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:            
╖
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Щ
0OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeNShapeNinputconv2d/kernel/read*
out_type0*
N* 
_output_shapes
::*
T0
З
=OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:           *
	dilations

ї
>OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput2OptimizeLoss/gradients/conv2d/Conv2D_grad/ShapeN:1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0
├
:OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp?^OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter>^OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
╓
BOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity=OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput;^OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:           
╤
DOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity>OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter;^OptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
у
OptimizeLoss/global_norm/L2LossL2LossDOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*Q
_classG
ECloc:@OptimizeLoss/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
▐
!OptimizeLoss/global_norm/L2Loss_1L2LossEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
щ
!OptimizeLoss/global_norm/L2Loss_2L2LossFOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
т
!OptimizeLoss/global_norm/L2Loss_3L2LossGOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
щ
!OptimizeLoss/global_norm/L2Loss_4L2LossFOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
т
!OptimizeLoss/global_norm/L2Loss_5L2LossGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
щ
!OptimizeLoss/global_norm/L2Loss_6L2LossFOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*S
_classI
GEloc:@OptimizeLoss/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
т
!OptimizeLoss/global_norm/L2Loss_7L2LossGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╫
!OptimizeLoss/global_norm/L2Loss_8L2LossCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
: 
▄
!OptimizeLoss/global_norm/L2Loss_9L2LossDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
▄
"OptimizeLoss/global_norm/L2Loss_10L2LossEOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes
: 
с
"OptimizeLoss/global_norm/L2Loss_11L2LossFOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
▄
"OptimizeLoss/global_norm/L2Loss_12L2LossEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
: 
с
"OptimizeLoss/global_norm/L2Loss_13L2LossFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
╠
OptimizeLoss/global_norm/stackPackOptimizeLoss/global_norm/L2Loss!OptimizeLoss/global_norm/L2Loss_1!OptimizeLoss/global_norm/L2Loss_2!OptimizeLoss/global_norm/L2Loss_3!OptimizeLoss/global_norm/L2Loss_4!OptimizeLoss/global_norm/L2Loss_5!OptimizeLoss/global_norm/L2Loss_6!OptimizeLoss/global_norm/L2Loss_7!OptimizeLoss/global_norm/L2Loss_8!OptimizeLoss/global_norm/L2Loss_9"OptimizeLoss/global_norm/L2Loss_10"OptimizeLoss/global_norm/L2Loss_11"OptimizeLoss/global_norm/L2Loss_12"OptimizeLoss/global_norm/L2Loss_13*
N*
_output_shapes
:*
T0*

axis 
h
OptimizeLoss/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
б
OptimizeLoss/global_norm/SumSumOptimizeLoss/global_norm/stackOptimizeLoss/global_norm/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
 OptimizeLoss/global_norm/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *   @
Д
OptimizeLoss/global_norm/mulMulOptimizeLoss/global_norm/Sum OptimizeLoss/global_norm/Const_1*
_output_shapes
: *
T0
k
$OptimizeLoss/global_norm/global_normSqrtOptimizeLoss/global_norm/mul*
T0*
_output_shapes
: 
Т
+OptimizeLoss/global_norm/gradient_norm/tagsConst*7
value.B, B&OptimizeLoss/global_norm/gradient_norm*
dtype0*
_output_shapes
: 
л
&OptimizeLoss/global_norm/gradient_normScalarSummary+OptimizeLoss/global_norm/gradient_norm/tags$OptimizeLoss/global_norm/global_norm*
_output_shapes
: *
T0
h
OptimizeLoss/loss/tagsConst*"
valueB BOptimizeLoss/loss*
dtype0*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Л
&OptimizeLoss/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias*
valueB
 *fff?
Ь
OptimizeLoss/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
╒
OptimizeLoss/beta1_power/AssignAssignOptimizeLoss/beta1_power&OptimizeLoss/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
Д
OptimizeLoss/beta1_power/readIdentityOptimizeLoss/beta1_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Л
&OptimizeLoss/beta2_power/initial_valueConst*
_class
loc:@conv2d/bias*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
Ь
OptimizeLoss/beta2_power
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╒
OptimizeLoss/beta2_power/AssignAssignOptimizeLoss/beta2_power&OptimizeLoss/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
Д
OptimizeLoss/beta2_power/readIdentityOptimizeLoss/beta2_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
╝
AOptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv2d/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ю
7OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
valueB
 *    
Ъ
1OptimizeLoss/conv2d/kernel/Adam/Initializer/zerosFillAOptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor7OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel*

index_type0
┼
OptimizeLoss/conv2d/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
А
&OptimizeLoss/conv2d/kernel/Adam/AssignAssignOptimizeLoss/conv2d/kernel/Adam1OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
д
$OptimizeLoss/conv2d/kernel/Adam/readIdentityOptimizeLoss/conv2d/kernel/Adam*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
╛
COptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv2d/kernel*%
valueB"             *
dtype0*
_output_shapes
:
а
9OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst* 
_class
loc:@conv2d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
а
3OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zerosFillCOptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0* 
_class
loc:@conv2d/kernel*

index_type0*&
_output_shapes
: 
╟
!OptimizeLoss/conv2d/kernel/Adam_1
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container 
Ж
(OptimizeLoss/conv2d/kernel/Adam_1/AssignAssign!OptimizeLoss/conv2d/kernel/Adam_13OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
и
&OptimizeLoss/conv2d/kernel/Adam_1/readIdentity!OptimizeLoss/conv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ь
/OptimizeLoss/conv2d/bias/Adam/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
й
OptimizeLoss/conv2d/bias/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias
ь
$OptimizeLoss/conv2d/bias/Adam/AssignAssignOptimizeLoss/conv2d/bias/Adam/OptimizeLoss/conv2d/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
Т
"OptimizeLoss/conv2d/bias/Adam/readIdentityOptimizeLoss/conv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ю
1OptimizeLoss/conv2d/bias/Adam_1/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
л
OptimizeLoss/conv2d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
Є
&OptimizeLoss/conv2d/bias/Adam_1/AssignAssignOptimizeLoss/conv2d/bias/Adam_11OptimizeLoss/conv2d/bias/Adam_1/Initializer/zeros*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ц
$OptimizeLoss/conv2d/bias/Adam_1/readIdentityOptimizeLoss/conv2d/bias/Adam_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
└
COptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*%
valueB"              *
dtype0*
_output_shapes
:
в
9OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
в
3OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0*&
_output_shapes
:  
╔
!OptimizeLoss/conv2d_1/kernel/Adam
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *"
_class
loc:@conv2d_1/kernel
И
(OptimizeLoss/conv2d_1/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_1/kernel/Adam3OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
к
&OptimizeLoss/conv2d_1/kernel/Adam/readIdentity!OptimizeLoss/conv2d_1/kernel/Adam*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_1/kernel
┬
EOptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*%
valueB"              *
dtype0*
_output_shapes
:
д
;OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
и
5OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0*&
_output_shapes
:  
╦
#OptimizeLoss/conv2d_1/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape:  
О
*OptimizeLoss/conv2d_1/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_1/kernel/Adam_15OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
о
(OptimizeLoss/conv2d_1/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_1/kernel/Adam_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:  
а
1OptimizeLoss/conv2d_1/bias/Adam/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
н
OptimizeLoss/conv2d_1/bias/Adam
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ї
&OptimizeLoss/conv2d_1/bias/Adam/AssignAssignOptimizeLoss/conv2d_1/bias/Adam1OptimizeLoss/conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
Ш
$OptimizeLoss/conv2d_1/bias/Adam/readIdentityOptimizeLoss/conv2d_1/bias/Adam*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
в
3OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
п
!OptimizeLoss/conv2d_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape: 
·
(OptimizeLoss/conv2d_1/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_1/bias/Adam_13OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(
Ь
&OptimizeLoss/conv2d_1/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_1/bias/Adam_1*
_output_shapes
: *
T0* 
_class
loc:@conv2d_1/bias
└
COptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
в
9OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
в
3OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0
╔
!OptimizeLoss/conv2d_2/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape: @
И
(OptimizeLoss/conv2d_2/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_2/kernel/Adam3OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
к
&OptimizeLoss/conv2d_2/kernel/Adam/readIdentity!OptimizeLoss/conv2d_2/kernel/Adam*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
T0
┬
EOptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   
д
;OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
и
5OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0*&
_output_shapes
: @
╦
#OptimizeLoss/conv2d_2/kernel/Adam_1
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_2/kernel
О
*OptimizeLoss/conv2d_2/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_2/kernel/Adam_15OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
о
(OptimizeLoss/conv2d_2/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_2/kernel/Adam_1*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
а
1OptimizeLoss/conv2d_2/bias/Adam/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
н
OptimizeLoss/conv2d_2/bias/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container 
Ї
&OptimizeLoss/conv2d_2/bias/Adam/AssignAssignOptimizeLoss/conv2d_2/bias/Adam1OptimizeLoss/conv2d_2/bias/Adam/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ш
$OptimizeLoss/conv2d_2/bias/Adam/readIdentityOptimizeLoss/conv2d_2/bias/Adam*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
в
3OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
п
!OptimizeLoss/conv2d_2/bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
·
(OptimizeLoss/conv2d_2/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_2/bias/Adam_13OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
Ь
&OptimizeLoss/conv2d_2/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_2/bias/Adam_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
└
COptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
в
9OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
в
3OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zerosFillCOptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor9OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_3/kernel*

index_type0*&
_output_shapes
:@@
╔
!OptimizeLoss/conv2d_3/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@@
И
(OptimizeLoss/conv2d_3/kernel/Adam/AssignAssign!OptimizeLoss/conv2d_3/kernel/Adam3OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
к
&OptimizeLoss/conv2d_3/kernel/Adam/readIdentity!OptimizeLoss/conv2d_3/kernel/Adam*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@*
T0
┬
EOptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
д
;OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
и
5OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zerosFillEOptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor;OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_3/kernel*

index_type0*&
_output_shapes
:@@
╦
#OptimizeLoss/conv2d_3/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
О
*OptimizeLoss/conv2d_3/kernel/Adam_1/AssignAssign#OptimizeLoss/conv2d_3/kernel/Adam_15OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros*&
_output_shapes
:@@*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(
о
(OptimizeLoss/conv2d_3/kernel/Adam_1/readIdentity#OptimizeLoss/conv2d_3/kernel/Adam_1*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
а
1OptimizeLoss/conv2d_3/bias/Adam/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
valueB@*    *
dtype0*
_output_shapes
:@
н
OptimizeLoss/conv2d_3/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:@
Ї
&OptimizeLoss/conv2d_3/bias/Adam/AssignAssignOptimizeLoss/conv2d_3/bias/Adam1OptimizeLoss/conv2d_3/bias/Adam/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(
Ш
$OptimizeLoss/conv2d_3/bias/Adam/readIdentityOptimizeLoss/conv2d_3/bias/Adam*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_3/bias
в
3OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
valueB@*    *
dtype0*
_output_shapes
:@
п
!OptimizeLoss/conv2d_3/bias/Adam_1
VariableV2* 
_class
loc:@conv2d_3/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
·
(OptimizeLoss/conv2d_3/bias/Adam_1/AssignAssign!OptimizeLoss/conv2d_3/bias/Adam_13OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(
Ь
&OptimizeLoss/conv2d_3/bias/Adam_1/readIdentity!OptimizeLoss/conv2d_3/bias/Adam_1* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@*
T0
▓
@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ь
6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
0OptimizeLoss/dense/kernel/Adam/Initializer/zerosFill@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
А А*
T0*
_class
loc:@dense/kernel*

index_type0
╖
OptimizeLoss/dense/kernel/Adam
VariableV2*
shape:
А А*
dtype0* 
_output_shapes
:
А А*
shared_name *
_class
loc:@dense/kernel*
	container 
Ў
%OptimizeLoss/dense/kernel/Adam/AssignAssignOptimizeLoss/dense/kernel/Adam0OptimizeLoss/dense/kernel/Adam/Initializer/zeros* 
_output_shapes
:
А А*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
Ы
#OptimizeLoss/dense/kernel/Adam/readIdentityOptimizeLoss/dense/kernel/Adam*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
┤
BOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ю
8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
2OptimizeLoss/dense/kernel/Adam_1/Initializer/zerosFillBOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:
А А
╣
 OptimizeLoss/dense/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
А А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:
А А
№
'OptimizeLoss/dense/kernel/Adam_1/AssignAssign OptimizeLoss/dense/kernel/Adam_12OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
Я
%OptimizeLoss/dense/kernel/Adam_1/readIdentity OptimizeLoss/dense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
А А
и
>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:А*
dtype0*
_output_shapes
:
Ш
4OptimizeLoss/dense/bias/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@dense/bias*
valueB
 *    *
dtype0
Г
.OptimizeLoss/dense/bias/Adam/Initializer/zerosFill>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensor4OptimizeLoss/dense/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0*
_output_shapes	
:А
й
OptimizeLoss/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *
_class
loc:@dense/bias*
	container *
shape:А
щ
#OptimizeLoss/dense/bias/Adam/AssignAssignOptimizeLoss/dense/bias/Adam.OptimizeLoss/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
Р
!OptimizeLoss/dense/bias/Adam/readIdentityOptimizeLoss/dense/bias/Adam*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
к
@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:А*
dtype0*
_output_shapes
:
Ъ
6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Й
0OptimizeLoss/dense/bias/Adam_1/Initializer/zerosFill@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0*
_output_shapes	
:А
л
OptimizeLoss/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *
_class
loc:@dense/bias*
	container *
shape:А
я
%OptimizeLoss/dense/bias/Adam_1/AssignAssignOptimizeLoss/dense/bias/Adam_10OptimizeLoss/dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
#OptimizeLoss/dense/bias/Adam_1/readIdentityOptimizeLoss/dense/bias/Adam_1*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
╢
BOptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"      
а
8OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
2OptimizeLoss/dense_1/kernel/Adam/Initializer/zerosFillBOptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros/Const*!
_class
loc:@dense_1/kernel*

index_type0* 
_output_shapes
:
АА*
T0
╗
 OptimizeLoss/dense_1/kernel/Adam
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *!
_class
loc:@dense_1/kernel
■
'OptimizeLoss/dense_1/kernel/Adam/AssignAssign OptimizeLoss/dense_1/kernel/Adam2OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros* 
_output_shapes
:
АА*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
б
%OptimizeLoss/dense_1/kernel/Adam/readIdentity OptimizeLoss/dense_1/kernel/Adam* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
╕
DOptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:
в
:OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
4OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zerosFillDOptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor:OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros/Const*!
_class
loc:@dense_1/kernel*

index_type0* 
_output_shapes
:
АА*
T0
╜
"OptimizeLoss/dense_1/kernel/Adam_1
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
Д
)OptimizeLoss/dense_1/kernel/Adam_1/AssignAssign"OptimizeLoss/dense_1/kernel/Adam_14OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
е
'OptimizeLoss/dense_1/kernel/Adam_1/readIdentity"OptimizeLoss/dense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
а
0OptimizeLoss/dense_1/bias/Adam/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
н
OptimizeLoss/dense_1/bias/Adam
VariableV2*
_output_shapes	
:А*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:А*
dtype0
ё
%OptimizeLoss/dense_1/bias/Adam/AssignAssignOptimizeLoss/dense_1/bias/Adam0OptimizeLoss/dense_1/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ц
#OptimizeLoss/dense_1/bias/Adam/readIdentityOptimizeLoss/dense_1/bias/Adam*
_class
loc:@dense_1/bias*
_output_shapes	
:А*
T0
в
2OptimizeLoss/dense_1/bias/Adam_1/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
п
 OptimizeLoss/dense_1/bias/Adam_1
VariableV2*
_class
loc:@dense_1/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
ў
'OptimizeLoss/dense_1/bias/Adam_1/AssignAssign OptimizeLoss/dense_1/bias/Adam_12OptimizeLoss/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
Ъ
%OptimizeLoss/dense_1/bias/Adam_1/readIdentity OptimizeLoss/dense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
╢
BOptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
а
8OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
2OptimizeLoss/dense_2/kernel/Adam/Initializer/zerosFillBOptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0*
_output_shapes
:	Аd
╣
 OptimizeLoss/dense_2/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	Аd*
shared_name *!
_class
loc:@dense_2/kernel*
	container *
shape:	Аd
¤
'OptimizeLoss/dense_2/kernel/Adam/AssignAssign OptimizeLoss/dense_2/kernel/Adam2OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd*
use_locking(
а
%OptimizeLoss/dense_2/kernel/Adam/readIdentity OptimizeLoss/dense_2/kernel/Adam*
_output_shapes
:	Аd*
T0*!
_class
loc:@dense_2/kernel
╕
DOptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
в
:OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Э
4OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zerosFillDOptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor:OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0*
_output_shapes
:	Аd
╗
"OptimizeLoss/dense_2/kernel/Adam_1
VariableV2*
	container *
shape:	Аd*
dtype0*
_output_shapes
:	Аd*
shared_name *!
_class
loc:@dense_2/kernel
Г
)OptimizeLoss/dense_2/kernel/Adam_1/AssignAssign"OptimizeLoss/dense_2/kernel/Adam_14OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd*
use_locking(
д
'OptimizeLoss/dense_2/kernel/Adam_1/readIdentity"OptimizeLoss/dense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	Аd
Ю
0OptimizeLoss/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
_class
loc:@dense_2/bias*
valueBd*    
л
OptimizeLoss/dense_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@dense_2/bias*
	container *
shape:d
Ё
%OptimizeLoss/dense_2/bias/Adam/AssignAssignOptimizeLoss/dense_2/bias/Adam0OptimizeLoss/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
Х
#OptimizeLoss/dense_2/bias/Adam/readIdentityOptimizeLoss/dense_2/bias/Adam*
_output_shapes
:d*
T0*
_class
loc:@dense_2/bias
а
2OptimizeLoss/dense_2/bias/Adam_1/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueBd*    *
dtype0*
_output_shapes
:d
н
 OptimizeLoss/dense_2/bias/Adam_1
VariableV2*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@dense_2/bias
Ў
'OptimizeLoss/dense_2/bias/Adam_1/AssignAssign OptimizeLoss/dense_2/bias/Adam_12OptimizeLoss/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
Щ
%OptimizeLoss/dense_2/bias/Adam_1/readIdentity OptimizeLoss/dense_2/bias/Adam_1*
_class
loc:@dense_2/bias*
_output_shapes
:d*
T0
]
OptimizeLoss/train/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
]
OptimizeLoss/train/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
_
OptimizeLoss/train/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
А
1OptimizeLoss/train/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelOptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d/kernel*
use_nesterov( *&
_output_shapes
: 
ы
/OptimizeLoss/train/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
: 
М
3OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernel!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
:  
ў
1OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasOptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0
М
3OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernel!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @*
use_locking( 
ў
1OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasOptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
М
3OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernel!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
:@@*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel
ў
1OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasOptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
_output_shapes
:@
Ї
0OptimizeLoss/train/update_dense/kernel/ApplyAdam	ApplyAdamdense/kernelOptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/kernel*
use_nesterov( * 
_output_shapes
:
А А*
use_locking( 
ц
.OptimizeLoss/train/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasOptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0
А
2OptimizeLoss/train/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kernel OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( * 
_output_shapes
:
АА
Є
0OptimizeLoss/train/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasOptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0*
_class
loc:@dense_1/bias
 
2OptimizeLoss/train/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kernel OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( *
_output_shapes
:	Аd*
use_locking( 
ё
0OptimizeLoss/train/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasOptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readOptimizeLoss/learning_rate/readOptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_2/bias*
use_nesterov( *
_output_shapes
:d
я
OptimizeLoss/train/mulMulOptimizeLoss/beta1_power/readOptimizeLoss/train/beta10^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam*
_class
loc:@conv2d/bias*
_output_shapes
: *
T0
┐
OptimizeLoss/train/AssignAssignOptimizeLoss/beta1_powerOptimizeLoss/train/mul*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
ё
OptimizeLoss/train/mul_1MulOptimizeLoss/beta2_power/readOptimizeLoss/train/beta20^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
├
OptimizeLoss/train/Assign_1AssignOptimizeLoss/beta2_powerOptimizeLoss/train/mul_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
│
OptimizeLoss/train/updateNoOp^OptimizeLoss/train/Assign^OptimizeLoss/train/Assign_10^OptimizeLoss/train/update_conv2d/bias/ApplyAdam2^OptimizeLoss/train/update_conv2d/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_1/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_1/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_2/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_2/kernel/ApplyAdam2^OptimizeLoss/train/update_conv2d_3/bias/ApplyAdam4^OptimizeLoss/train/update_conv2d_3/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_1/bias/ApplyAdam3^OptimizeLoss/train/update_dense_1/kernel/ApplyAdam1^OptimizeLoss/train/update_dense_2/bias/ApplyAdam3^OptimizeLoss/train/update_dense_2/kernel/ApplyAdam
Ц
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R
Ъ
OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
T0	*
_class
loc:@global_step*
_output_shapes
: *
use_locking( 
╕
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*
T0*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
_output_shapes
: 
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
А
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
\
softmax_tensorSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:         d
у
initNoOp ^OptimizeLoss/beta1_power/Assign ^OptimizeLoss/beta2_power/Assign%^OptimizeLoss/conv2d/bias/Adam/Assign'^OptimizeLoss/conv2d/bias/Adam_1/Assign'^OptimizeLoss/conv2d/kernel/Adam/Assign)^OptimizeLoss/conv2d/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_1/bias/Adam/Assign)^OptimizeLoss/conv2d_1/bias/Adam_1/Assign)^OptimizeLoss/conv2d_1/kernel/Adam/Assign+^OptimizeLoss/conv2d_1/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_2/bias/Adam/Assign)^OptimizeLoss/conv2d_2/bias/Adam_1/Assign)^OptimizeLoss/conv2d_2/kernel/Adam/Assign+^OptimizeLoss/conv2d_2/kernel/Adam_1/Assign'^OptimizeLoss/conv2d_3/bias/Adam/Assign)^OptimizeLoss/conv2d_3/bias/Adam_1/Assign)^OptimizeLoss/conv2d_3/kernel/Adam/Assign+^OptimizeLoss/conv2d_3/kernel/Adam_1/Assign$^OptimizeLoss/dense/bias/Adam/Assign&^OptimizeLoss/dense/bias/Adam_1/Assign&^OptimizeLoss/dense/kernel/Adam/Assign(^OptimizeLoss/dense/kernel/Adam_1/Assign&^OptimizeLoss/dense_1/bias/Adam/Assign(^OptimizeLoss/dense_1/bias/Adam_1/Assign(^OptimizeLoss/dense_1/kernel/Adam/Assign*^OptimizeLoss/dense_1/kernel/Adam_1/Assign&^OptimizeLoss/dense_2/bias/Adam/Assign(^OptimizeLoss/dense_2/bias/Adam_1/Assign(^OptimizeLoss/dense_2/kernel/Adam/Assign*^OptimizeLoss/dense_2/kernel/Adam_1/Assign"^OptimizeLoss/learning_rate/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^global_step/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
dtype0
б
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel*
dtype0
е
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
└
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
dtype0*
_output_shapes
: 
п
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedOptimizeLoss/beta1_power*
_output_shapes
: *
_class
loc:@conv2d/bias*
dtype0
п
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedOptimizeLoss/beta2_power*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedOptimizeLoss/conv2d/kernel/Adam* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitialized!OptimizeLoss/conv2d/kernel/Adam_1*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d/kernel
┤
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedOptimizeLoss/conv2d/bias/Adam*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedOptimizeLoss/conv2d/bias/Adam_1*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitialized!OptimizeLoss/conv2d_1/kernel/Adam*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
╛
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitialized#OptimizeLoss/conv2d_1/kernel/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
╕
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedOptimizeLoss/conv2d_1/bias/Adam* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitialized!OptimizeLoss/conv2d_1/bias/Adam_1* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitialized!OptimizeLoss/conv2d_2/kernel/Adam*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
╛
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitialized#OptimizeLoss/conv2d_2/kernel/Adam_1*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
dtype0
╕
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedOptimizeLoss/conv2d_2/bias/Adam* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitialized!OptimizeLoss/conv2d_2/bias/Adam_1*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_2/bias
╝
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitialized!OptimizeLoss/conv2d_3/kernel/Adam*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
╛
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitialized#OptimizeLoss/conv2d_3/kernel/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel
╕
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedOptimizeLoss/conv2d_3/bias/Adam* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitialized!OptimizeLoss/conv2d_3/bias/Adam_1* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedOptimizeLoss/dense/kernel/Adam*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitialized OptimizeLoss/dense/kernel/Adam_1*
_output_shapes
: *
_class
loc:@dense/kernel*
dtype0
▓
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedOptimizeLoss/dense/bias/Adam*
dtype0*
_output_shapes
: *
_class
loc:@dense/bias
┤
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedOptimizeLoss/dense/bias/Adam_1*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitialized OptimizeLoss/dense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitialized"OptimizeLoss/dense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedOptimizeLoss/dense_1/bias/Adam*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
╕
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitialized OptimizeLoss/dense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
║
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitialized OptimizeLoss/dense_2/kernel/Adam*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╝
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitialized"OptimizeLoss/dense_2/kernel/Adam_1*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╢
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedOptimizeLoss/dense_2/bias/Adam*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
╕
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitialized OptimizeLoss/dense_2/bias/Adam_1*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
з
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_45"/device:CPU:0*
T0
*

axis *
N.*
_output_shapes
:.
И
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:.
ф

$report_uninitialized_variables/ConstConst"/device:CPU:0*№	
valueЄ	Bя	.Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBOptimizeLoss/learning_rateBOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1*
dtype0*
_output_shapes
:.
К
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ш
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ш
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Ы
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Д
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
М
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Ё
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
М
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ё
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
end_mask*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
╛
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
И
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ў
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
┌
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:.
Э
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
ъ
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:.
▓
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:         *
T0

┼
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:         *
squeeze_dims
*
T0	
К
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
┼
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:         *
Taxis0
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
╛
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
_class
loc:@global_step*
dtype0	
з
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
г
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias
л
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
dtype0
з
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
_output_shapes
: * 
_class
loc:@conv2d_3/bias*
dtype0
е
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel
в
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
┬
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedOptimizeLoss/learning_rate*
_output_shapes
: *-
_class#
!loc:@OptimizeLoss/learning_rate*
dtype0
▒
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedOptimizeLoss/beta1_power*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
▒
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedOptimizeLoss/beta2_power*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedOptimizeLoss/conv2d/kernel/Adam*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
dtype0
╝
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitialized!OptimizeLoss/conv2d/kernel/Adam_1*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d/kernel
╢
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedOptimizeLoss/conv2d/bias/Adam*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedOptimizeLoss/conv2d/bias/Adam_1*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
╛
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitialized!OptimizeLoss/conv2d_1/kernel/Adam*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitialized#OptimizeLoss/conv2d_1/kernel/Adam_1*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedOptimizeLoss/conv2d_1/bias/Adam* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitialized!OptimizeLoss/conv2d_1/bias/Adam_1* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitialized!OptimizeLoss/conv2d_2/kernel/Adam*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitialized#OptimizeLoss/conv2d_2/kernel/Adam_1*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
dtype0
║
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedOptimizeLoss/conv2d_2/bias/Adam*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_2/bias
╝
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitialized!OptimizeLoss/conv2d_2/bias/Adam_1* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitialized!OptimizeLoss/conv2d_3/kernel/Adam*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
└
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitialized#OptimizeLoss/conv2d_3/kernel/Adam_1*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedOptimizeLoss/conv2d_3/bias/Adam*
_output_shapes
: * 
_class
loc:@conv2d_3/bias*
dtype0
╝
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitialized!OptimizeLoss/conv2d_3/bias/Adam_1* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedOptimizeLoss/dense/kernel/Adam*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitialized OptimizeLoss/dense/kernel/Adam_1*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
┤
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedOptimizeLoss/dense/bias/Adam*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╢
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedOptimizeLoss/dense/bias/Adam_1*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
╝
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitialized OptimizeLoss/dense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitialized"OptimizeLoss/dense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╕
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedOptimizeLoss/dense_1/bias/Adam*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/bias
║
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitialized OptimizeLoss/dense_1/bias/Adam_1*
_output_shapes
: *
_class
loc:@dense_1/bias*
dtype0
╝
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitialized OptimizeLoss/dense_2/kernel/Adam*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╛
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitialized"OptimizeLoss/dense_2/kernel/Adam_1*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
dtype0
╕
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedOptimizeLoss/dense_2/bias/Adam*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
║
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitialized OptimizeLoss/dense_2/bias/Adam_1*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
Е
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_45"/device:CPU:0*

axis *
N.*
_output_shapes
:.*
T0

М
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:.
ц

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:.*№	
valueЄ	Bя	.Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBOptimizeLoss/learning_rateBOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1
М
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ъ
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Є
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
Э
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
К
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
О
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
·
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
О
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:.*
dtype0*
_output_shapes
:
Ь
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ю
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
·
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 
┬
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
К
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Б
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
N*
_output_shapes
:*

Tidx0*
T0
р
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:.
Я
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
Ё
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:.
╢
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:         
╔
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:         *
squeeze_dims

М
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
═
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:         *
Taxis0

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
~
Merge/MergeSummaryMergeSummary&OptimizeLoss/global_norm/gradient_normOptimizeLoss/loss*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c9606c70866d4d1294a55632516823a7/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
╪

save/SaveV2/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╬
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ч
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/beta1_powerOptimizeLoss/beta2_powerOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1 OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1 OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step"/device:CPU:0*<
dtypes2
02.	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
█

save/RestoreV2/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╤
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:.
Г
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	
й
save/AssignAssignOptimizeLoss/beta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
н
save/Assign_1AssignOptimizeLoss/beta2_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
╢
save/Assign_2AssignOptimizeLoss/conv2d/bias/Adamsave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╕
save/Assign_3AssignOptimizeLoss/conv2d/bias/Adam_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╞
save/Assign_4AssignOptimizeLoss/conv2d/kernel/Adamsave/RestoreV2:4*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╚
save/Assign_5Assign!OptimizeLoss/conv2d/kernel/Adam_1save/RestoreV2:5*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
║
save/Assign_6AssignOptimizeLoss/conv2d_1/bias/Adamsave/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
╝
save/Assign_7Assign!OptimizeLoss/conv2d_1/bias/Adam_1save/RestoreV2:7*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╩
save/Assign_8Assign!OptimizeLoss/conv2d_1/kernel/Adamsave/RestoreV2:8*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
╠
save/Assign_9Assign#OptimizeLoss/conv2d_1/kernel/Adam_1save/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
╝
save/Assign_10AssignOptimizeLoss/conv2d_2/bias/Adamsave/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╛
save/Assign_11Assign!OptimizeLoss/conv2d_2/bias/Adam_1save/RestoreV2:11*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
╠
save/Assign_12Assign!OptimizeLoss/conv2d_2/kernel/Adamsave/RestoreV2:12*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
╬
save/Assign_13Assign#OptimizeLoss/conv2d_2/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
╝
save/Assign_14AssignOptimizeLoss/conv2d_3/bias/Adamsave/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
╛
save/Assign_15Assign!OptimizeLoss/conv2d_3/bias/Adam_1save/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
╠
save/Assign_16Assign!OptimizeLoss/conv2d_3/kernel/Adamsave/RestoreV2:16*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
╬
save/Assign_17Assign#OptimizeLoss/conv2d_3/kernel/Adam_1save/RestoreV2:17*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╖
save/Assign_18AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
╣
save/Assign_19AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2:19*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
└
save/Assign_20AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2:20*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
┬
save/Assign_21Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2:21*
validate_shape(* 
_output_shapes
:
А А*
use_locking(*
T0*
_class
loc:@dense/kernel
╗
save/Assign_22AssignOptimizeLoss/dense_1/bias/Adamsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
╜
save/Assign_23Assign OptimizeLoss/dense_1/bias/Adam_1save/RestoreV2:23*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense_1/bias
─
save/Assign_24Assign OptimizeLoss/dense_1/kernel/Adamsave/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
╞
save/Assign_25Assign"OptimizeLoss/dense_1/kernel/Adam_1save/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
║
save/Assign_26AssignOptimizeLoss/dense_2/bias/Adamsave/RestoreV2:26*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
╝
save/Assign_27Assign OptimizeLoss/dense_2/bias/Adam_1save/RestoreV2:27*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
├
save/Assign_28Assign OptimizeLoss/dense_2/kernel/Adamsave/RestoreV2:28*
validate_shape(*
_output_shapes
:	Аd*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
┼
save/Assign_29Assign"OptimizeLoss/dense_2/kernel/Adam_1save/RestoreV2:29*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd
└
save/Assign_30AssignOptimizeLoss/learning_ratesave/RestoreV2:30*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate*
validate_shape(*
_output_shapes
: *
use_locking(
ж
save/Assign_31Assignconv2d/biassave/RestoreV2:31*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╢
save/Assign_32Assignconv2d/kernelsave/RestoreV2:32*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
к
save/Assign_33Assignconv2d_1/biassave/RestoreV2:33*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
║
save/Assign_34Assignconv2d_1/kernelsave/RestoreV2:34*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
к
save/Assign_35Assignconv2d_2/biassave/RestoreV2:35*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
║
save/Assign_36Assignconv2d_2/kernelsave/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
к
save/Assign_37Assignconv2d_3/biassave/RestoreV2:37*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
║
save/Assign_38Assignconv2d_3/kernelsave/RestoreV2:38*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
е
save/Assign_39Assign
dense/biassave/RestoreV2:39*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
о
save/Assign_40Assigndense/kernelsave/RestoreV2:40*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
й
save/Assign_41Assigndense_1/biassave/RestoreV2:41*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
▓
save/Assign_42Assigndense_1/kernelsave/RestoreV2:42*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
и
save/Assign_43Assigndense_2/biassave/RestoreV2:43*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
▒
save/Assign_44Assigndense_2/kernelsave/RestoreV2:44*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd
в
save/Assign_45Assignglobal_stepsave/RestoreV2:45*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Ь
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
R
save/Const_1Const*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save/StringJoin_1/inputs_1Const*<
value3B1 B+_temp_d7fa4cec5a5941e6afd0a040879546b0/part*
dtype0*
_output_shapes
: 
{
save/StringJoin_1
StringJoinsave/Const_1save/StringJoin_1/inputs_1*
N*
_output_shapes
: *
	separator 
S
save/num_shards_1Const*
value	B :*
dtype0*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save/ShardedFilename_1ShardedFilenamesave/StringJoin_1save/ShardedFilename_1/shardsave/num_shards_1"/device:CPU:0*
_output_shapes
: 
┌

save/SaveV2_1/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╨
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Я
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesOptimizeLoss/beta1_powerOptimizeLoss/beta2_powerOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1 OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1 OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step"/device:CPU:0*<
dtypes2
02.	
и
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save/ShardedFilename_1
▓
-save/MergeV2Checkpoints_1/checkpoint_prefixesPacksave/ShardedFilename_1^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save/MergeV2Checkpoints_1MergeV2Checkpoints-save/MergeV2Checkpoints_1/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(
С
save/Identity_1Identitysave/Const_1^save/MergeV2Checkpoints_1^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
▌

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╙
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:.
Л
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*<
dtypes2
02.	*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::
о
save/Assign_46AssignOptimizeLoss/beta1_powersave/RestoreV2_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
░
save/Assign_47AssignOptimizeLoss/beta2_powersave/RestoreV2_1:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
╣
save/Assign_48AssignOptimizeLoss/conv2d/bias/Adamsave/RestoreV2_1:2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╗
save/Assign_49AssignOptimizeLoss/conv2d/bias/Adam_1save/RestoreV2_1:3*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╔
save/Assign_50AssignOptimizeLoss/conv2d/kernel/Adamsave/RestoreV2_1:4*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
╦
save/Assign_51Assign!OptimizeLoss/conv2d/kernel/Adam_1save/RestoreV2_1:5*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
╜
save/Assign_52AssignOptimizeLoss/conv2d_1/bias/Adamsave/RestoreV2_1:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
┐
save/Assign_53Assign!OptimizeLoss/conv2d_1/bias/Adam_1save/RestoreV2_1:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
═
save/Assign_54Assign!OptimizeLoss/conv2d_1/kernel/Adamsave/RestoreV2_1:8*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
╧
save/Assign_55Assign#OptimizeLoss/conv2d_1/kernel/Adam_1save/RestoreV2_1:9*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
╛
save/Assign_56AssignOptimizeLoss/conv2d_2/bias/Adamsave/RestoreV2_1:10*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
└
save/Assign_57Assign!OptimizeLoss/conv2d_2/bias/Adam_1save/RestoreV2_1:11*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╬
save/Assign_58Assign!OptimizeLoss/conv2d_2/kernel/Adamsave/RestoreV2_1:12*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╨
save/Assign_59Assign#OptimizeLoss/conv2d_2/kernel/Adam_1save/RestoreV2_1:13*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╛
save/Assign_60AssignOptimizeLoss/conv2d_3/bias/Adamsave/RestoreV2_1:14*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
└
save/Assign_61Assign!OptimizeLoss/conv2d_3/bias/Adam_1save/RestoreV2_1:15*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╬
save/Assign_62Assign!OptimizeLoss/conv2d_3/kernel/Adamsave/RestoreV2_1:16*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
╨
save/Assign_63Assign#OptimizeLoss/conv2d_3/kernel/Adam_1save/RestoreV2_1:17*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
╣
save/Assign_64AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2_1:18*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
╗
save/Assign_65AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2_1:19*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
┬
save/Assign_66AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2_1:20*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
─
save/Assign_67Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2_1:21*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А*
use_locking(
╜
save/Assign_68AssignOptimizeLoss/dense_1/bias/Adamsave/RestoreV2_1:22*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
┐
save/Assign_69Assign OptimizeLoss/dense_1/bias/Adam_1save/RestoreV2_1:23*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense_1/bias
╞
save/Assign_70Assign OptimizeLoss/dense_1/kernel/Adamsave/RestoreV2_1:24*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
╚
save/Assign_71Assign"OptimizeLoss/dense_1/kernel/Adam_1save/RestoreV2_1:25*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
╝
save/Assign_72AssignOptimizeLoss/dense_2/bias/Adamsave/RestoreV2_1:26*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
╛
save/Assign_73Assign OptimizeLoss/dense_2/bias/Adam_1save/RestoreV2_1:27*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
┼
save/Assign_74Assign OptimizeLoss/dense_2/kernel/Adamsave/RestoreV2_1:28*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd*
use_locking(
╟
save/Assign_75Assign"OptimizeLoss/dense_2/kernel/Adam_1save/RestoreV2_1:29*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd
┬
save/Assign_76AssignOptimizeLoss/learning_ratesave/RestoreV2_1:30*
use_locking(*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate*
validate_shape(*
_output_shapes
: 
и
save/Assign_77Assignconv2d/biassave/RestoreV2_1:31*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╕
save/Assign_78Assignconv2d/kernelsave/RestoreV2_1:32*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
м
save/Assign_79Assignconv2d_1/biassave/RestoreV2_1:33*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╝
save/Assign_80Assignconv2d_1/kernelsave/RestoreV2_1:34*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
м
save/Assign_81Assignconv2d_2/biassave/RestoreV2_1:35*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╝
save/Assign_82Assignconv2d_2/kernelsave/RestoreV2_1:36*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
м
save/Assign_83Assignconv2d_3/biassave/RestoreV2_1:37*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
╝
save/Assign_84Assignconv2d_3/kernelsave/RestoreV2_1:38*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
з
save/Assign_85Assign
dense/biassave/RestoreV2_1:39*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
░
save/Assign_86Assigndense/kernelsave/RestoreV2_1:40*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А*
use_locking(
л
save/Assign_87Assigndense_1/biassave/RestoreV2_1:41*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense_1/bias
┤
save/Assign_88Assigndense_1/kernelsave/RestoreV2_1:42*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА
к
save/Assign_89Assigndense_2/biassave/RestoreV2_1:43*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@dense_2/bias
│
save/Assign_90Assigndense_2/kernelsave/RestoreV2_1:44*
validate_shape(*
_output_shapes
:	Аd*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
д
save/Assign_91Assignglobal_stepsave/RestoreV2_1:45*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
к
save/restore_shard_1NoOp^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91
1
save/restore_all_1NoOp^save/restore_shard_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_671fefb7b0c24f88814b15326dabe46a/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
┌

save_1/SaveV2/tensor_namesConst"/device:CPU:0*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:.
╨
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:.
Я
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesOptimizeLoss/beta1_powerOptimizeLoss/beta2_powerOptimizeLoss/conv2d/bias/AdamOptimizeLoss/conv2d/bias/Adam_1OptimizeLoss/conv2d/kernel/Adam!OptimizeLoss/conv2d/kernel/Adam_1OptimizeLoss/conv2d_1/bias/Adam!OptimizeLoss/conv2d_1/bias/Adam_1!OptimizeLoss/conv2d_1/kernel/Adam#OptimizeLoss/conv2d_1/kernel/Adam_1OptimizeLoss/conv2d_2/bias/Adam!OptimizeLoss/conv2d_2/bias/Adam_1!OptimizeLoss/conv2d_2/kernel/Adam#OptimizeLoss/conv2d_2/kernel/Adam_1OptimizeLoss/conv2d_3/bias/Adam!OptimizeLoss/conv2d_3/bias/Adam_1!OptimizeLoss/conv2d_3/kernel/Adam#OptimizeLoss/conv2d_3/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/dense_1/bias/Adam OptimizeLoss/dense_1/bias/Adam_1 OptimizeLoss/dense_1/kernel/Adam"OptimizeLoss/dense_1/kernel/Adam_1OptimizeLoss/dense_2/bias/Adam OptimizeLoss/dense_2/bias/Adam_1 OptimizeLoss/dense_2/kernel/Adam"OptimizeLoss/dense_2/kernel/Adam_1OptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step"/device:CPU:0*<
dtypes2
02.	
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
▌

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:.*№	
valueЄ	Bя	.BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerBOptimizeLoss/conv2d/bias/AdamBOptimizeLoss/conv2d/bias/Adam_1BOptimizeLoss/conv2d/kernel/AdamB!OptimizeLoss/conv2d/kernel/Adam_1BOptimizeLoss/conv2d_1/bias/AdamB!OptimizeLoss/conv2d_1/bias/Adam_1B!OptimizeLoss/conv2d_1/kernel/AdamB#OptimizeLoss/conv2d_1/kernel/Adam_1BOptimizeLoss/conv2d_2/bias/AdamB!OptimizeLoss/conv2d_2/bias/Adam_1B!OptimizeLoss/conv2d_2/kernel/AdamB#OptimizeLoss/conv2d_2/kernel/Adam_1BOptimizeLoss/conv2d_3/bias/AdamB!OptimizeLoss/conv2d_3/bias/Adam_1B!OptimizeLoss/conv2d_3/kernel/AdamB#OptimizeLoss/conv2d_3/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BOptimizeLoss/dense_1/bias/AdamB OptimizeLoss/dense_1/bias/Adam_1B OptimizeLoss/dense_1/kernel/AdamB"OptimizeLoss/dense_1/kernel/Adam_1BOptimizeLoss/dense_2/bias/AdamB OptimizeLoss/dense_2/bias/Adam_1B OptimizeLoss/dense_2/kernel/AdamB"OptimizeLoss/dense_2/kernel/Adam_1BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step
╙
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:.
Л
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	
н
save_1/AssignAssignOptimizeLoss/beta1_powersave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
▒
save_1/Assign_1AssignOptimizeLoss/beta2_powersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
║
save_1/Assign_2AssignOptimizeLoss/conv2d/bias/Adamsave_1/RestoreV2:2*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
╝
save_1/Assign_3AssignOptimizeLoss/conv2d/bias/Adam_1save_1/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
╩
save_1/Assign_4AssignOptimizeLoss/conv2d/kernel/Adamsave_1/RestoreV2:4*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
╠
save_1/Assign_5Assign!OptimizeLoss/conv2d/kernel/Adam_1save_1/RestoreV2:5*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
╛
save_1/Assign_6AssignOptimizeLoss/conv2d_1/bias/Adamsave_1/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
└
save_1/Assign_7Assign!OptimizeLoss/conv2d_1/bias/Adam_1save_1/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╬
save_1/Assign_8Assign!OptimizeLoss/conv2d_1/kernel/Adamsave_1/RestoreV2:8*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
╨
save_1/Assign_9Assign#OptimizeLoss/conv2d_1/kernel/Adam_1save_1/RestoreV2:9*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
└
save_1/Assign_10AssignOptimizeLoss/conv2d_2/bias/Adamsave_1/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
┬
save_1/Assign_11Assign!OptimizeLoss/conv2d_2/bias/Adam_1save_1/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
╨
save_1/Assign_12Assign!OptimizeLoss/conv2d_2/kernel/Adamsave_1/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
╥
save_1/Assign_13Assign#OptimizeLoss/conv2d_2/kernel/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
└
save_1/Assign_14AssignOptimizeLoss/conv2d_3/bias/Adamsave_1/RestoreV2:14*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
┬
save_1/Assign_15Assign!OptimizeLoss/conv2d_3/bias/Adam_1save_1/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
╨
save_1/Assign_16Assign!OptimizeLoss/conv2d_3/kernel/Adamsave_1/RestoreV2:16*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
╥
save_1/Assign_17Assign#OptimizeLoss/conv2d_3/kernel/Adam_1save_1/RestoreV2:17*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╗
save_1/Assign_18AssignOptimizeLoss/dense/bias/Adamsave_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
╜
save_1/Assign_19AssignOptimizeLoss/dense/bias/Adam_1save_1/RestoreV2:19*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
─
save_1/Assign_20AssignOptimizeLoss/dense/kernel/Adamsave_1/RestoreV2:20*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
╞
save_1/Assign_21Assign OptimizeLoss/dense/kernel/Adam_1save_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
┐
save_1/Assign_22AssignOptimizeLoss/dense_1/bias/Adamsave_1/RestoreV2:22*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
┴
save_1/Assign_23Assign OptimizeLoss/dense_1/bias/Adam_1save_1/RestoreV2:23*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А
╚
save_1/Assign_24Assign OptimizeLoss/dense_1/kernel/Adamsave_1/RestoreV2:24*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
╩
save_1/Assign_25Assign"OptimizeLoss/dense_1/kernel/Adam_1save_1/RestoreV2:25*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
╛
save_1/Assign_26AssignOptimizeLoss/dense_2/bias/Adamsave_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
└
save_1/Assign_27Assign OptimizeLoss/dense_2/bias/Adam_1save_1/RestoreV2:27*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
╟
save_1/Assign_28Assign OptimizeLoss/dense_2/kernel/Adamsave_1/RestoreV2:28*
validate_shape(*
_output_shapes
:	Аd*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
╔
save_1/Assign_29Assign"OptimizeLoss/dense_2/kernel/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	Аd
─
save_1/Assign_30AssignOptimizeLoss/learning_ratesave_1/RestoreV2:30*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*-
_class#
!loc:@OptimizeLoss/learning_rate
к
save_1/Assign_31Assignconv2d/biassave_1/RestoreV2:31*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
║
save_1/Assign_32Assignconv2d/kernelsave_1/RestoreV2:32*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
о
save_1/Assign_33Assignconv2d_1/biassave_1/RestoreV2:33*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
╛
save_1/Assign_34Assignconv2d_1/kernelsave_1/RestoreV2:34*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:  
о
save_1/Assign_35Assignconv2d_2/biassave_1/RestoreV2:35*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╛
save_1/Assign_36Assignconv2d_2/kernelsave_1/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
о
save_1/Assign_37Assignconv2d_3/biassave_1/RestoreV2:37*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@
╛
save_1/Assign_38Assignconv2d_3/kernelsave_1/RestoreV2:38*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
й
save_1/Assign_39Assign
dense/biassave_1/RestoreV2:39*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
▓
save_1/Assign_40Assigndense/kernelsave_1/RestoreV2:40*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
А А
н
save_1/Assign_41Assigndense_1/biassave_1/RestoreV2:41*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
╢
save_1/Assign_42Assigndense_1/kernelsave_1/RestoreV2:42*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
м
save_1/Assign_43Assigndense_2/biassave_1/RestoreV2:43*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:d
╡
save_1/Assign_44Assigndense_2/kernelsave_1/RestoreV2:44*
validate_shape(*
_output_shapes
:	Аd*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
ж
save_1/Assign_45Assignglobal_stepsave_1/RestoreV2:45*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
·
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"!
local_init_op

group_deps_1"є5
	variablesх5т5
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
Ф
OptimizeLoss/learning_rate:0!OptimizeLoss/learning_rate/Assign!OptimizeLoss/learning_rate/read:02.OptimizeLoss/learning_rate/Initializer/Const:0
И
OptimizeLoss/beta1_power:0OptimizeLoss/beta1_power/AssignOptimizeLoss/beta1_power/read:02(OptimizeLoss/beta1_power/initial_value:0
И
OptimizeLoss/beta2_power:0OptimizeLoss/beta2_power/AssignOptimizeLoss/beta2_power/read:02(OptimizeLoss/beta2_power/initial_value:0
и
!OptimizeLoss/conv2d/kernel/Adam:0&OptimizeLoss/conv2d/kernel/Adam/Assign&OptimizeLoss/conv2d/kernel/Adam/read:023OptimizeLoss/conv2d/kernel/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d/kernel/Adam_1:0(OptimizeLoss/conv2d/kernel/Adam_1/Assign(OptimizeLoss/conv2d/kernel/Adam_1/read:025OptimizeLoss/conv2d/kernel/Adam_1/Initializer/zeros:0
а
OptimizeLoss/conv2d/bias/Adam:0$OptimizeLoss/conv2d/bias/Adam/Assign$OptimizeLoss/conv2d/bias/Adam/read:021OptimizeLoss/conv2d/bias/Adam/Initializer/zeros:0
и
!OptimizeLoss/conv2d/bias/Adam_1:0&OptimizeLoss/conv2d/bias/Adam_1/Assign&OptimizeLoss/conv2d/bias/Adam_1/read:023OptimizeLoss/conv2d/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_1/kernel/Adam:0(OptimizeLoss/conv2d_1/kernel/Adam/Assign(OptimizeLoss/conv2d_1/kernel/Adam/read:025OptimizeLoss/conv2d_1/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_1/kernel/Adam_1:0*OptimizeLoss/conv2d_1/kernel/Adam_1/Assign*OptimizeLoss/conv2d_1/kernel/Adam_1/read:027OptimizeLoss/conv2d_1/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_1/bias/Adam:0&OptimizeLoss/conv2d_1/bias/Adam/Assign&OptimizeLoss/conv2d_1/bias/Adam/read:023OptimizeLoss/conv2d_1/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_1/bias/Adam_1:0(OptimizeLoss/conv2d_1/bias/Adam_1/Assign(OptimizeLoss/conv2d_1/bias/Adam_1/read:025OptimizeLoss/conv2d_1/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_2/kernel/Adam:0(OptimizeLoss/conv2d_2/kernel/Adam/Assign(OptimizeLoss/conv2d_2/kernel/Adam/read:025OptimizeLoss/conv2d_2/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_2/kernel/Adam_1:0*OptimizeLoss/conv2d_2/kernel/Adam_1/Assign*OptimizeLoss/conv2d_2/kernel/Adam_1/read:027OptimizeLoss/conv2d_2/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_2/bias/Adam:0&OptimizeLoss/conv2d_2/bias/Adam/Assign&OptimizeLoss/conv2d_2/bias/Adam/read:023OptimizeLoss/conv2d_2/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_2/bias/Adam_1:0(OptimizeLoss/conv2d_2/bias/Adam_1/Assign(OptimizeLoss/conv2d_2/bias/Adam_1/read:025OptimizeLoss/conv2d_2/bias/Adam_1/Initializer/zeros:0
░
#OptimizeLoss/conv2d_3/kernel/Adam:0(OptimizeLoss/conv2d_3/kernel/Adam/Assign(OptimizeLoss/conv2d_3/kernel/Adam/read:025OptimizeLoss/conv2d_3/kernel/Adam/Initializer/zeros:0
╕
%OptimizeLoss/conv2d_3/kernel/Adam_1:0*OptimizeLoss/conv2d_3/kernel/Adam_1/Assign*OptimizeLoss/conv2d_3/kernel/Adam_1/read:027OptimizeLoss/conv2d_3/kernel/Adam_1/Initializer/zeros:0
и
!OptimizeLoss/conv2d_3/bias/Adam:0&OptimizeLoss/conv2d_3/bias/Adam/Assign&OptimizeLoss/conv2d_3/bias/Adam/read:023OptimizeLoss/conv2d_3/bias/Adam/Initializer/zeros:0
░
#OptimizeLoss/conv2d_3/bias/Adam_1:0(OptimizeLoss/conv2d_3/bias/Adam_1/Assign(OptimizeLoss/conv2d_3/bias/Adam_1/read:025OptimizeLoss/conv2d_3/bias/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense/kernel/Adam:0%OptimizeLoss/dense/kernel/Adam/Assign%OptimizeLoss/dense/kernel/Adam/read:022OptimizeLoss/dense/kernel/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense/kernel/Adam_1:0'OptimizeLoss/dense/kernel/Adam_1/Assign'OptimizeLoss/dense/kernel/Adam_1/read:024OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros:0
Ь
OptimizeLoss/dense/bias/Adam:0#OptimizeLoss/dense/bias/Adam/Assign#OptimizeLoss/dense/bias/Adam/read:020OptimizeLoss/dense/bias/Adam/Initializer/zeros:0
д
 OptimizeLoss/dense/bias/Adam_1:0%OptimizeLoss/dense/bias/Adam_1/Assign%OptimizeLoss/dense/bias/Adam_1/read:022OptimizeLoss/dense/bias/Adam_1/Initializer/zeros:0
м
"OptimizeLoss/dense_1/kernel/Adam:0'OptimizeLoss/dense_1/kernel/Adam/Assign'OptimizeLoss/dense_1/kernel/Adam/read:024OptimizeLoss/dense_1/kernel/Adam/Initializer/zeros:0
┤
$OptimizeLoss/dense_1/kernel/Adam_1:0)OptimizeLoss/dense_1/kernel/Adam_1/Assign)OptimizeLoss/dense_1/kernel/Adam_1/read:026OptimizeLoss/dense_1/kernel/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense_1/bias/Adam:0%OptimizeLoss/dense_1/bias/Adam/Assign%OptimizeLoss/dense_1/bias/Adam/read:022OptimizeLoss/dense_1/bias/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense_1/bias/Adam_1:0'OptimizeLoss/dense_1/bias/Adam_1/Assign'OptimizeLoss/dense_1/bias/Adam_1/read:024OptimizeLoss/dense_1/bias/Adam_1/Initializer/zeros:0
м
"OptimizeLoss/dense_2/kernel/Adam:0'OptimizeLoss/dense_2/kernel/Adam/Assign'OptimizeLoss/dense_2/kernel/Adam/read:024OptimizeLoss/dense_2/kernel/Adam/Initializer/zeros:0
┤
$OptimizeLoss/dense_2/kernel/Adam_1:0)OptimizeLoss/dense_2/kernel/Adam_1/Assign)OptimizeLoss/dense_2/kernel/Adam_1/read:026OptimizeLoss/dense_2/kernel/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense_2/bias/Adam:0%OptimizeLoss/dense_2/bias/Adam/Assign%OptimizeLoss/dense_2/bias/Adam/read:022OptimizeLoss/dense_2/bias/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense_2/bias/Adam_1:0'OptimizeLoss/dense_2/bias/Adam_1/Assign'OptimizeLoss/dense_2/bias/Adam_1/read:024OptimizeLoss/dense_2/bias/Adam_1/Initializer/zeros:0"
ready_op


concat:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"T
lossesJ
H
"softmax_cross_entropy_loss/value:0
"softmax_cross_entropy_loss/value:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"2
global_step_read_op_cache

global_step/add:0""
train_op

OptimizeLoss/train"&

summary_op

Merge/MergeSummary:0"N
	summariesA
?
(OptimizeLoss/global_norm/gradient_norm:0
OptimizeLoss/loss:0"╥
trainable_variables║╖
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08"W
ready_for_local_init_op<
:
8report_uninitialized_variables_1/boolean_mask/GatherV2:0"
init_op


group_deps"╚
cond_context╖┤
╞
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *ь
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:08
global_step/cond/pred_id:0global_step/cond/pred_id:0/
global_step:0global_step/cond/read/Switch:1
ш
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*О
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:08
global_step/cond/pred_id:0global_step/cond/pred_id:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:0