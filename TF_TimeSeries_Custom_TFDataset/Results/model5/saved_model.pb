?? 
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:(*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
?
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
?
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:(*
dtype0
?
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
?
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:((*
dtype0
?
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*0
shared_name!simple_rnn/simple_rnn_cell/bias
?
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:(*
dtype0
?
%simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*6
shared_name'%simple_rnn_1/simple_rnn_cell_1/kernel
?
9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel*
_output_shapes

:((*
dtype0
?
/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*@
shared_name1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
?
Csimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel*
_output_shapes

:((*
dtype0
?
#simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#simple_rnn_1/simple_rnn_cell_1/bias
?
7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
SGD/dense/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(**
shared_nameSGD/dense/kernel/momentum
?
-SGD/dense/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense/kernel/momentum*
_output_shapes

:(*
dtype0
?
SGD/dense/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameSGD/dense/bias/momentum

+SGD/dense/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense/bias/momentum*
_output_shapes
:*
dtype0
?
.SGD/simple_rnn/simple_rnn_cell/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*?
shared_name0.SGD/simple_rnn/simple_rnn_cell/kernel/momentum
?
BSGD/simple_rnn/simple_rnn_cell/kernel/momentum/Read/ReadVariableOpReadVariableOp.SGD/simple_rnn/simple_rnn_cell/kernel/momentum*
_output_shapes

:(*
dtype0
?
8SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*I
shared_name:8SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum
?
LSGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum/Read/ReadVariableOpReadVariableOp8SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum*
_output_shapes

:((*
dtype0
?
,SGD/simple_rnn/simple_rnn_cell/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*=
shared_name.,SGD/simple_rnn/simple_rnn_cell/bias/momentum
?
@SGD/simple_rnn/simple_rnn_cell/bias/momentum/Read/ReadVariableOpReadVariableOp,SGD/simple_rnn/simple_rnn_cell/bias/momentum*
_output_shapes
:(*
dtype0
?
2SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*C
shared_name42SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum
?
FSGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum/Read/ReadVariableOpReadVariableOp2SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum*
_output_shapes

:((*
dtype0
?
<SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*M
shared_name><SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum
?
PSGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum/Read/ReadVariableOpReadVariableOp<SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum*
_output_shapes

:((*
dtype0
?
0SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*A
shared_name20SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum
?
DSGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum/Read/ReadVariableOpReadVariableOp0SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum*
_output_shapes
:(*
dtype0

NoOpNoOp
?/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?/
value?/B?/ B?/
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
R
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?
&iter
	'decay
(learning_rate
)momentummomentummmomentumn*momentumo+momentump,momentumq-momentumr.momentums/momentumt
 
8
*0
+1
,2
-3
.4
/5
6
7
8
*0
+1
,2
-3
.4
/5
6
7
?
regularization_losses

0layers
1layer_metrics
2metrics
trainable_variables
3layer_regularization_losses
		variables
4non_trainable_variables
 
 
 
 
?
regularization_losses

5layers
6layer_metrics
7metrics
trainable_variables
8layer_regularization_losses
	variables
9non_trainable_variables
~

*kernel
+recurrent_kernel
,bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
 
 

*0
+1
,2

*0
+1
,2
?
regularization_losses

>layers
?layer_metrics
@metrics

Astates
trainable_variables
Blayer_regularization_losses
	variables
Cnon_trainable_variables
~

-kernel
.recurrent_kernel
/bias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
 
 

-0
.1
/2

-0
.1
/2
?
regularization_losses

Hlayers
Ilayer_metrics
Jmetrics

Kstates
trainable_variables
Llayer_regularization_losses
	variables
Mnon_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

Nlayers
Olayer_metrics
Pmetrics
trainable_variables
Qlayer_regularization_losses
 	variables
Rnon_trainable_variables
 
 
 
?
"regularization_losses

Slayers
Tlayer_metrics
Umetrics
#trainable_variables
Vlayer_regularization_losses
$	variables
Wnon_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_1/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_1/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 

X0
Y1
 
 
 
 
 
 
 
 

*0
+1
,2

*0
+1
,2
?
:regularization_losses

Zlayers
[layer_metrics
\metrics
;trainable_variables
]layer_regularization_losses
<	variables
^non_trainable_variables

0
 
 
 
 
 
 

-0
.1
/2

-0
.1
/2
?
Dregularization_losses

_layers
`layer_metrics
ametrics
Etrainable_variables
blayer_regularization_losses
F	variables
cnon_trainable_variables

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	dtotal
	ecount
f	variables
g	keras_api
D
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

d0
e1

f	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1

k	variables
??
VARIABLE_VALUESGD/dense/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/dense/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.SGD/simple_rnn/simple_rnn_cell/kernel/momentumStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentumStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,SGD/simple_rnn/simple_rnn_cell/bias/momentumStrainable_variables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentumStrainable_variables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentumStrainable_variables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentumStrainable_variables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lambda_inputPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_input!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kernel%simple_rnn_1/simple_rnn_cell_1/kernel#simple_rnn_1/simple_rnn_cell_1/bias/simple_rnn_1/simple_rnn_cell_1/recurrent_kerneldense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_465890
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpCsimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOp7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-SGD/dense/kernel/momentum/Read/ReadVariableOp+SGD/dense/bias/momentum/Read/ReadVariableOpBSGD/simple_rnn/simple_rnn_cell/kernel/momentum/Read/ReadVariableOpLSGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum/Read/ReadVariableOp@SGD/simple_rnn/simple_rnn_cell/bias/momentum/Read/ReadVariableOpFSGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum/Read/ReadVariableOpPSGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum/Read/ReadVariableOpDSGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_467658
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias%simple_rnn_1/simple_rnn_cell_1/kernel/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel#simple_rnn_1/simple_rnn_cell_1/biastotalcounttotal_1count_1SGD/dense/kernel/momentumSGD/dense/bias/momentum.SGD/simple_rnn/simple_rnn_cell/kernel/momentum8SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum,SGD/simple_rnn/simple_rnn_cell/bias/momentum2SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum<SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum0SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_467740֢
?C
?
simple_rnn_1_while_body_4660886
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((T
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:((R
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:(W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMul?
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd?
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1?
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2*
(simple_rnn_1/while/simple_rnn_cell_1/add?
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh?
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3?
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
simple_rnn_1/while/Identity_4"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467174
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_467108*
condR
while_cond_467107*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????(
"
_user_specified_name
inputs/0
?L
?
'sequential_simple_rnn_while_body_463866H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0?
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:([
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:(`
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:(((
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1?
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor\
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:(Y
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:(^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:((??Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem?
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02C
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(24
2sequential/simple_rnn/while/simple_rnn_cell/MatMul?
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02D
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(25
3sequential/simple_rnn/while/simple_rnn_cell/BiasAdd?
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02E
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_2Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(26
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1?
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(21
/sequential/simple_rnn/while/simple_rnn_cell/add?
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(22
0sequential/simple_rnn/while/simple_rnn_cell/Tanh?
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem?
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/simple_rnn/while/add/y?
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/while/add?
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/simple_rnn/while/add_1/y?
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn/while/add_1?
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity?
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterationsC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_1?
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_2?
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_3?
&sequential/simple_rnn/while/Identity_4Identity4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2(
&sequential/simple_rnn/while/Identity_4"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"?
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"?
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"?
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2?
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2?
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_467219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_467219___redundant_placeholder04
0while_while_cond_467219___redundant_placeholder14
0while_while_cond_467219___redundant_placeholder24
0while_while_cond_467219___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_466503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_466503___redundant_placeholder04
0while_while_cond_466503___redundant_placeholder14
0while_while_cond_466503___redundant_placeholder24
0while_while_cond_466503___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?4
?
while_body_467108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_465427

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
mul/y[
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467286

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_467220*
condR
while_cond_467219*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?
?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467563

inputs
states_00
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?	
?
+__inference_sequential_layer_call_fn_465932

inputs
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_4657732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?3
?
while_body_466840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?$
?
while_body_464647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_464669_0:((.
 while_simple_rnn_cell_1_464671_0:(2
 while_simple_rnn_cell_1_464673_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_464669:((,
while_simple_rnn_cell_1_464671:(0
while_simple_rnn_cell_1_464673:((??/while/simple_rnn_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_464669_0 while_simple_rnn_cell_1_464671_0 while_simple_rnn_cell_1_464673_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_46463421
/while/simple_rnn_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:10^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_464669 while_simple_rnn_cell_1_464669_0"B
while_simple_rnn_cell_1_464671 while_simple_rnn_cell_1_464671_0"B
while_simple_rnn_cell_1_464673 while_simple_rnn_cell_1_464673_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?C
?
simple_rnn_1_while_body_4663186
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((T
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:((R
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:(W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMul?
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd?
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1?
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2*
(simple_rnn_1/while/simple_rnn_cell_1/add?
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh?
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3?
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
simple_rnn_1/while/Identity_4"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467062
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_466996*
condR
while_cond_466995*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????(
"
_user_specified_name
inputs/0
?O
?
)sequential_simple_rnn_1_while_body_463974L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2K
Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0?
?sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0b
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((_
Qsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(d
Rsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((*
&sequential_simple_rnn_1_while_identity,
(sequential_simple_rnn_1_while_identity_1,
(sequential_simple_rnn_1_while_identity_2,
(sequential_simple_rnn_1_while_identity_3,
(sequential_simple_rnn_1_while_identity_4I
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1?
?sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor`
Nsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:((]
Osequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:(b
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Osequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2Q
Osequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Asequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0)sequential_simple_rnn_1_while_placeholderXsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02C
Asequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem?
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpPsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02G
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?
6sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulHsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Msequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(28
6sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul?
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpQsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02H
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
7sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd@sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Nsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(29
7sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd?
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpRsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02I
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
8sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul+sequential_simple_rnn_1_while_placeholder_2Osequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2:
8sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1?
3sequential/simple_rnn_1/while/simple_rnn_cell_1/addAddV2@sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Bsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(25
3sequential/simple_rnn_1/while/simple_rnn_cell_1/add?
4sequential/simple_rnn_1/while/simple_rnn_cell_1/TanhTanh7sequential/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(26
4sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh?
Bsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_simple_rnn_1_while_placeholder_1)sequential_simple_rnn_1_while_placeholder8sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02D
Bsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem?
#sequential/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/simple_rnn_1/while/add/y?
!sequential/simple_rnn_1/while/addAddV2)sequential_simple_rnn_1_while_placeholder,sequential/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn_1/while/add?
%sequential/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/simple_rnn_1/while/add_1/y?
#sequential/simple_rnn_1/while/add_1AddV2Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counter.sequential/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential/simple_rnn_1/while/add_1?
&sequential/simple_rnn_1/while/IdentityIdentity'sequential/simple_rnn_1/while/add_1:z:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn_1/while/Identity?
(sequential/simple_rnn_1/while/Identity_1IdentityNsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterationsG^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_1?
(sequential/simple_rnn_1/while/Identity_2Identity%sequential/simple_rnn_1/while/add:z:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_2?
(sequential/simple_rnn_1/while/Identity_3IdentityRsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_3?
(sequential/simple_rnn_1/while/Identity_4Identity8sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2*
(sequential/simple_rnn_1/while/Identity_4"Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0"]
(sequential_simple_rnn_1_while_identity_11sequential/simple_rnn_1/while/Identity_1:output:0"]
(sequential_simple_rnn_1_while_identity_21sequential/simple_rnn_1/while/Identity_2:output:0"]
(sequential_simple_rnn_1_while_identity_31sequential/simple_rnn_1/while/Identity_3:output:0"]
(sequential_simple_rnn_1_while_identity_41sequential/simple_rnn_1/while/Identity_4:output:0"?
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0"?
Osequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceQsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceRsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Nsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourcePsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
?sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor?sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2?
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpFsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpEsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpGsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_467439

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
mul/y[
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_465175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_465175___redundant_placeholder04
0while_while_cond_465175___redundant_placeholder14
0while_while_cond_465175___redundant_placeholder24
0while_while_cond_465175___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466570
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_466504*
condR
while_cond_466503*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?3
?
while_body_466616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?

?
2__inference_simple_rnn_cell_1_layer_call_fn_467515

inputs
states_0
unknown:((
	unknown_0:(
	unknown_1:((
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4646342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?	
?
$__inference_signature_wrapper_465890
lambda_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_4640482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
??
?	
!__inference__wrapped_model_464048
lambda_inputV
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:(S
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:(X
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:((Z
Hsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:((W
Isequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:(\
Jsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:((A
/sequential_dense_matmul_readvariableop_resource:(>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?sequential/simple_rnn/while?@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp??sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?sequential/simple_rnn_1/while?
 sequential/lambda/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 sequential/lambda/ExpandDims/dim?
sequential/lambda/ExpandDims
ExpandDimslambda_input)sequential/lambda/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2
sequential/lambda/ExpandDims?
sequential/simple_rnn/ShapeShape%sequential/lambda/ExpandDims:output:0*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape?
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/simple_rnn/strided_slice/stack?
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_1?
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_2?
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/simple_rnn/strided_slice?
!sequential/simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2#
!sequential/simple_rnn/zeros/mul/y?
sequential/simple_rnn/zeros/mulMul,sequential/simple_rnn/strided_slice:output:0*sequential/simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/zeros/mul?
"sequential/simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential/simple_rnn/zeros/Less/y?
 sequential/simple_rnn/zeros/LessLess#sequential/simple_rnn/zeros/mul:z:0+sequential/simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/zeros/Less?
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2&
$sequential/simple_rnn/zeros/packed/1?
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/simple_rnn/zeros/packed?
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/simple_rnn/zeros/Const?
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
sequential/simple_rnn/zeros?
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/simple_rnn/transpose/perm?
sequential/simple_rnn/transpose	Transpose%sequential/lambda/ExpandDims:output:0-sequential/simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2!
sequential/simple_rnn/transpose?
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape_1?
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_1/stack?
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_1?
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_2?
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_1?
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential/simple_rnn/TensorArrayV2/element_shape?
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/simple_rnn/TensorArrayV2?
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor?
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_2/stack?
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_1?
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_2?
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_2?
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02=
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2.
,sequential/simple_rnn/simple_rnn_cell/MatMul?
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02>
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2/
-sequential/simple_rnn/simple_rnn_cell/BiasAdd?
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02?
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(20
.sequential/simple_rnn/simple_rnn_cell/MatMul_1?
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2+
)sequential/simple_rnn/simple_rnn_cell/add?
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2,
*sequential/simple_rnn/simple_rnn_cell/Tanh?
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   25
3sequential/simple_rnn/TensorArrayV2_1/element_shape?
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/simple_rnn/TensorArrayV2_1z
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/simple_rnn/time?
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential/simple_rnn/while/maximum_iterations?
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/simple_rnn/while/loop_counter?
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*3
body+R)
'sequential_simple_rnn_while_body_463866*3
cond+R)
'sequential_simple_rnn_while_cond_463865*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
sequential/simple_rnn/while?
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2H
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02:
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStack?
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential/simple_rnn/strided_slice_3/stack?
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn/strided_slice_3/stack_1?
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_3/stack_2?
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_3?
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn/transpose_1/perm?
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2#
!sequential/simple_rnn/transpose_1?
sequential/simple_rnn_1/ShapeShape%sequential/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/simple_rnn_1/Shape?
+sequential/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn_1/strided_slice/stack?
-sequential/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn_1/strided_slice/stack_1?
-sequential/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn_1/strided_slice/stack_2?
%sequential/simple_rnn_1/strided_sliceStridedSlice&sequential/simple_rnn_1/Shape:output:04sequential/simple_rnn_1/strided_slice/stack:output:06sequential/simple_rnn_1/strided_slice/stack_1:output:06sequential/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/simple_rnn_1/strided_slice?
#sequential/simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2%
#sequential/simple_rnn_1/zeros/mul/y?
!sequential/simple_rnn_1/zeros/mulMul.sequential/simple_rnn_1/strided_slice:output:0,sequential/simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn_1/zeros/mul?
$sequential/simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential/simple_rnn_1/zeros/Less/y?
"sequential/simple_rnn_1/zeros/LessLess%sequential/simple_rnn_1/zeros/mul:z:0-sequential/simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/simple_rnn_1/zeros/Less?
&sequential/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2(
&sequential/simple_rnn_1/zeros/packed/1?
$sequential/simple_rnn_1/zeros/packedPack.sequential/simple_rnn_1/strided_slice:output:0/sequential/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/simple_rnn_1/zeros/packed?
#sequential/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/simple_rnn_1/zeros/Const?
sequential/simple_rnn_1/zerosFill-sequential/simple_rnn_1/zeros/packed:output:0,sequential/simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
sequential/simple_rnn_1/zeros?
&sequential/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn_1/transpose/perm?
!sequential/simple_rnn_1/transpose	Transpose%sequential/simple_rnn/transpose_1:y:0/sequential/simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2#
!sequential/simple_rnn_1/transpose?
sequential/simple_rnn_1/Shape_1Shape%sequential/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2!
sequential/simple_rnn_1/Shape_1?
-sequential/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn_1/strided_slice_1/stack?
/sequential/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_1/stack_1?
/sequential/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_1/stack_2?
'sequential/simple_rnn_1/strided_slice_1StridedSlice(sequential/simple_rnn_1/Shape_1:output:06sequential/simple_rnn_1/strided_slice_1/stack:output:08sequential/simple_rnn_1/strided_slice_1/stack_1:output:08sequential/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_1?
3sequential/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3sequential/simple_rnn_1/TensorArrayV2/element_shape?
%sequential/simple_rnn_1/TensorArrayV2TensorListReserve<sequential/simple_rnn_1/TensorArrayV2/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/simple_rnn_1/TensorArrayV2?
Msequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2O
Msequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn_1/transpose:y:0Vsequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor?
-sequential/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn_1/strided_slice_2/stack?
/sequential/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_2/stack_1?
/sequential/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_2/stack_2?
'sequential/simple_rnn_1/strided_slice_2StridedSlice%sequential/simple_rnn_1/transpose:y:06sequential/simple_rnn_1/strided_slice_2/stack:output:08sequential/simple_rnn_1/strided_slice_2/stack_1:output:08sequential/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_2?
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpHsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02A
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?
0sequential/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul0sequential/simple_rnn_1/strided_slice_2:output:0Gsequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(22
0sequential/simple_rnn_1/simple_rnn_cell_1/MatMul?
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpIsequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02B
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
1sequential/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd:sequential/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Hsequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(23
1sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd?
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpJsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02C
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
2sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul&sequential/simple_rnn_1/zeros:output:0Isequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(24
2sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1?
-sequential/simple_rnn_1/simple_rnn_cell_1/addAddV2:sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0<sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2/
-sequential/simple_rnn_1/simple_rnn_cell_1/add?
.sequential/simple_rnn_1/simple_rnn_cell_1/TanhTanh1sequential/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(20
.sequential/simple_rnn_1/simple_rnn_cell_1/Tanh?
5sequential/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5sequential/simple_rnn_1/TensorArrayV2_1/element_shape?
'sequential/simple_rnn_1/TensorArrayV2_1TensorListReserve>sequential/simple_rnn_1/TensorArrayV2_1/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential/simple_rnn_1/TensorArrayV2_1~
sequential/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/simple_rnn_1/time?
0sequential/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential/simple_rnn_1/while/maximum_iterations?
*sequential/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/simple_rnn_1/while/loop_counter?
sequential/simple_rnn_1/whileWhile3sequential/simple_rnn_1/while/loop_counter:output:09sequential/simple_rnn_1/while/maximum_iterations:output:0%sequential/simple_rnn_1/time:output:00sequential/simple_rnn_1/TensorArrayV2_1:handle:0&sequential/simple_rnn_1/zeros:output:00sequential/simple_rnn_1/strided_slice_1:output:0Osequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceIsequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceJsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*5
body-R+
)sequential_simple_rnn_1_while_body_463974*5
cond-R+
)sequential_simple_rnn_1_while_cond_463973*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
sequential/simple_rnn_1/while?
Hsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2J
Hsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape?
:sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack&sequential/simple_rnn_1/while:output:3Qsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02<
:sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack?
-sequential/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2/
-sequential/simple_rnn_1/strided_slice_3/stack?
/sequential/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential/simple_rnn_1/strided_slice_3/stack_1?
/sequential/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_3/stack_2?
'sequential/simple_rnn_1/strided_slice_3StridedSliceCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:06sequential/simple_rnn_1/strided_slice_3/stack:output:08sequential/simple_rnn_1/strided_slice_3/stack_1:output:08sequential/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_3?
(sequential/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential/simple_rnn_1/transpose_1/perm?
#sequential/simple_rnn_1/transpose_1	TransposeCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:01sequential/simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2%
#sequential/simple_rnn_1/transpose_1?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul0sequential/simple_rnn_1/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/BiasAdd{
sequential/lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
sequential/lambda_1/mul/y?
sequential/lambda_1/mulMul!sequential/dense/BiasAdd:output:0"sequential/lambda_1/mul/y:output:0*
T0*'
_output_shapes
:?????????2
sequential/lambda_1/mul?
IdentityIdentitysequential/lambda_1/mul:z:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/whileA^sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp@^sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpB^sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^sequential/simple_rnn_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2?
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpAsequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2>
sequential/simple_rnn_1/whilesequential/simple_rnn_1/while:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
?
^
B__inference_lambda_layer_call_and_return_conditional_losses_465129

inputs
identityk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2

ExpandDimst
IdentityIdentityExpandDims:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
simple_rnn_while_cond_4659792
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_465979___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_465979___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_465979___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_465979___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?<
?
__inference__traced_save_467658
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableopD
@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopN
Jsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_sgd_dense_kernel_momentum_read_readvariableop6
2savev2_sgd_dense_bias_momentum_read_readvariableopM
Isavev2_sgd_simple_rnn_simple_rnn_cell_kernel_momentum_read_readvariableopW
Ssavev2_sgd_simple_rnn_simple_rnn_cell_recurrent_kernel_momentum_read_readvariableopK
Gsavev2_sgd_simple_rnn_simple_rnn_cell_bias_momentum_read_readvariableopQ
Msavev2_sgd_simple_rnn_1_simple_rnn_cell_1_kernel_momentum_read_readvariableop[
Wsavev2_sgd_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_momentum_read_readvariableopO
Ksavev2_sgd_simple_rnn_1_simple_rnn_cell_1_bias_momentum_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopJsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableop>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_sgd_dense_kernel_momentum_read_readvariableop2savev2_sgd_dense_bias_momentum_read_readvariableopIsavev2_sgd_simple_rnn_simple_rnn_cell_kernel_momentum_read_readvariableopSsavev2_sgd_simple_rnn_simple_rnn_cell_recurrent_kernel_momentum_read_readvariableopGsavev2_sgd_simple_rnn_simple_rnn_cell_bias_momentum_read_readvariableopMsavev2_sgd_simple_rnn_1_simple_rnn_cell_1_kernel_momentum_read_readvariableopWsavev2_sgd_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_momentum_read_readvariableopKsavev2_sgd_simple_rnn_1_simple_rnn_cell_1_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :(:: : : : :(:((:(:((:((:(: : : : :(::(:((:(:((:((:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:(: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$ 

_output_shapes

:((: 	

_output_shapes
:(:$
 

_output_shapes

:((:$ 

_output_shapes

:((: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:(:$ 

_output_shapes

:((: 

_output_shapes
:(:$ 

_output_shapes

:((:$ 

_output_shapes

:((: 

_output_shapes
:(:

_output_shapes
: 
?
C
'__inference_lambda_layer_call_fn_466402

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4657222
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
'sequential_simple_rnn_while_cond_463865H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_463865___redundant_placeholder0`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_463865___redundant_placeholder1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_463865___redundant_placeholder2`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_463865___redundant_placeholder3(
$sequential_simple_rnn_while_identity
?
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/while/Less?
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?

?
simple_rnn_1_while_cond_4663176
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466317___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466317___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466317___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466317___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_464634

inputs

states0
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_namestates
?
?
while_cond_465498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_465498___redundant_placeholder04
0while_while_cond_465498___redundant_placeholder14
0while_while_cond_465498___redundant_placeholder24
0while_while_cond_465498___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
Ż
?
F__inference_sequential_layer_call_and_return_conditional_losses_466392

inputsK
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:(H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:(M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:((O
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:((L
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:(Q
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:((6
$dense_matmul_readvariableop_resource:(3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/while?5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whiley
lambda/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lambda/ExpandDims/dim?
lambda/ExpandDims
ExpandDimsinputslambda/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2
lambda/ExpandDimsn
simple_rnn/ShapeShapelambda/ExpandDims:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape?
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack?
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1?
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn/zeros/mul/y?
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn/zeros/Less/y?
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn/zeros/packed/1?
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
simple_rnn/zeros?
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm?
simple_rnn/transpose	Transposelambda/ExpandDims:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1?
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack?
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1?
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1?
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn/TensorArrayV2/element_shape?
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2?
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor?
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack?
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1?
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn/strided_slice_2?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2#
!simple_rnn/simple_rnn_cell/MatMul?
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2$
"simple_rnn/simple_rnn_cell/BiasAdd?
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2%
#simple_rnn/simple_rnn_cell/MatMul_1?
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2 
simple_rnn/simple_rnn_cell/add?
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2!
simple_rnn/simple_rnn_cell/Tanh?
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2*
(simple_rnn/TensorArrayV2_1/element_shape?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time?
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#simple_rnn/while/maximum_iterations?
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*(
body R
simple_rnn_while_body_466210*(
cond R
simple_rnn_while_cond_466209*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
simple_rnn/while?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack?
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 simple_rnn/strided_slice_3/stack?
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1?
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn/strided_slice_3?
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn/transpose_1r
simple_rnn_1/ShapeShapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape?
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack?
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1?
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slicev
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn_1/zeros/mul/y?
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/muly
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_1/zeros/Less/y?
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/Less|
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn_1/zeros/packed/1?
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_1/zeros/packedy
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_1/zeros/Const?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_1/zeros?
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/perm?
simple_rnn_1/transpose	Transposesimple_rnn/transpose_1:y:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn_1/transposev
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape_1?
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack?
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1?
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice_1?
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(simple_rnn_1/TensorArrayV2/element_shape?
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2?
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor?
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_2/stack?
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_1?
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn_1/strided_slice_2?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2'
%simple_rnn_1/simple_rnn_cell_1/MatMul?
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2(
&simple_rnn_1/simple_rnn_cell_1/BiasAdd?
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1?
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2$
"simple_rnn_1/simple_rnn_cell_1/add?
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2%
#simple_rnn_1/simple_rnn_cell_1/Tanh?
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2,
*simple_rnn_1/TensorArrayV2_1/element_shape?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time?
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%simple_rnn_1/while/maximum_iterations?
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_1_while_body_466318**
cond"R 
simple_rnn_1_while_cond_466317*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
simple_rnn_1/while?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack?
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"simple_rnn_1/strided_slice_3/stack?
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_3/stack_1?
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_3/stack_2?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn_1/strided_slice_3?
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/perm?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn_1/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul%simple_rnn_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdde
lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
lambda_1/mul/y?
lambda_1/mulMuldense/BiasAdd:output:0lambda_1/mul/y:output:0*
T0*'
_output_shapes
:?????????2
lambda_1/mul?
IdentityIdentitylambda_1/mul:z:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
+__inference_simple_rnn_layer_call_fn_466436
inputs_0
unknown:(
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4643502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_simple_rnn_layer_call_fn_466447

inputs
unknown:(
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4652422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
simple_rnn_1_while_cond_4660876
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466087___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466087___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466087___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_466087___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_465294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_465294___redundant_placeholder04
0while_while_cond_465294___redundant_placeholder14
0while_while_cond_465294___redundant_placeholder24
0while_while_cond_465294___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_467433

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
mul/y[
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_lambda_layer_call_and_return_conditional_losses_465722

inputs
identityk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2

ExpandDimst
IdentityIdentityExpandDims:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_465361

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_465295*
condR
while_cond_465294*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?
?
while_cond_466839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_466839___redundant_placeholder04
0while_while_cond_466839___redundant_placeholder14
0while_while_cond_466839___redundant_placeholder24
0while_while_cond_466839___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_465391

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
mul/y[
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_466615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_466615___redundant_placeholder04
0while_while_cond_466615___redundant_placeholder14
0while_while_cond_466615___redundant_placeholder24
0while_while_cond_466615___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_464287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_464309_0:(,
while_simple_rnn_cell_464311_0:(0
while_simple_rnn_cell_464313_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_464309:(*
while_simple_rnn_cell_464311:(.
while_simple_rnn_cell_464313:((??-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_464309_0while_simple_rnn_cell_464311_0while_simple_rnn_cell_464313_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4642202/
-while/simple_rnn_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_464309while_simple_rnn_cell_464309_0">
while_simple_rnn_cell_464311while_simple_rnn_cell_464311_0">
while_simple_rnn_cell_464313while_simple_rnn_cell_464313_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_464646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_464646___redundant_placeholder04
0while_while_cond_464646___redundant_placeholder14
0while_while_cond_464646___redundant_placeholder24
0while_while_cond_464646___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467398

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_467332*
condR
while_cond_467331*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?
?
while_cond_464112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_464112___redundant_placeholder04
0while_while_cond_464112___redundant_placeholder14
0while_while_cond_464112___redundant_placeholder24
0while_while_cond_464112___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?3
?
while_body_465176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
)sequential_simple_rnn_1_while_cond_463973L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2N
Jsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_463973___redundant_placeholder0d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_463973___redundant_placeholder1d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_463973___redundant_placeholder2d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_463973___redundant_placeholder3*
&sequential_simple_rnn_1_while_identity
?
"sequential/simple_rnn_1/while/LessLess)sequential_simple_rnn_1_while_placeholderJsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential/simple_rnn_1/while/Less?
&sequential/simple_rnn_1/while/IdentityIdentity&sequential/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential/simple_rnn_1/while/Identity"Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?l
?
"__inference__traced_restore_467740
file_prefix/
assignvariableop_dense_kernel:(+
assignvariableop_1_dense_bias:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: F
4assignvariableop_6_simple_rnn_simple_rnn_cell_kernel:(P
>assignvariableop_7_simple_rnn_simple_rnn_cell_recurrent_kernel:((@
2assignvariableop_8_simple_rnn_simple_rnn_cell_bias:(J
8assignvariableop_9_simple_rnn_1_simple_rnn_cell_1_kernel:((U
Cassignvariableop_10_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel:((E
7assignvariableop_11_simple_rnn_1_simple_rnn_cell_1_bias:(#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: ?
-assignvariableop_16_sgd_dense_kernel_momentum:(9
+assignvariableop_17_sgd_dense_bias_momentum:T
Bassignvariableop_18_sgd_simple_rnn_simple_rnn_cell_kernel_momentum:(^
Lassignvariableop_19_sgd_simple_rnn_simple_rnn_cell_recurrent_kernel_momentum:((N
@assignvariableop_20_sgd_simple_rnn_simple_rnn_cell_bias_momentum:(X
Fassignvariableop_21_sgd_simple_rnn_1_simple_rnn_cell_1_kernel_momentum:((b
Passignvariableop_22_sgd_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_momentum:((R
Dassignvariableop_23_sgd_simple_rnn_1_simple_rnn_cell_1_bias_momentum:(
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp4assignvariableop_6_simple_rnn_simple_rnn_cell_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp>assignvariableop_7_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp2assignvariableop_8_simple_rnn_simple_rnn_cell_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp8assignvariableop_9_simple_rnn_1_simple_rnn_cell_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpCassignvariableop_10_simple_rnn_1_simple_rnn_cell_1_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp7assignvariableop_11_simple_rnn_1_simple_rnn_cell_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp-assignvariableop_16_sgd_dense_kernel_momentumIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_sgd_dense_bias_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpBassignvariableop_18_sgd_simple_rnn_simple_rnn_cell_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpLassignvariableop_19_sgd_simple_rnn_simple_rnn_cell_recurrent_kernel_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp@assignvariableop_20_sgd_simple_rnn_simple_rnn_cell_bias_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpFassignvariableop_21_sgd_simple_rnn_1_simple_rnn_cell_1_kernel_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpPassignvariableop_22_sgd_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_momentumIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpDassignvariableop_23_sgd_simple_rnn_1_simple_rnn_cell_1_bias_momentumIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24?
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466906

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_466840*
condR
while_cond_466839*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?=
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_464176

inputs(
simple_rnn_cell_464101:($
simple_rnn_cell_464103:((
simple_rnn_cell_464105:((
identity??'simple_rnn_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_464101simple_rnn_cell_464103simple_rnn_cell_464105*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4641002)
'simple_rnn_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_464101simple_rnn_cell_464103simple_rnn_cell_464105*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_464113*
condR
while_cond_464112*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0(^simple_rnn_cell/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
+__inference_simple_rnn_layer_call_fn_466458

inputs
unknown:(
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4656992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
^
B__inference_lambda_layer_call_and_return_conditional_losses_466414

inputs
identityk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2

ExpandDimst
IdentityIdentityExpandDims:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?=
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_464884

inputs*
simple_rnn_cell_1_464809:((&
simple_rnn_cell_1_464811:(*
simple_rnn_cell_1_464813:((
identity??)simple_rnn_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_464809simple_rnn_cell_1_464811simple_rnn_cell_1_464813*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4647542+
)simple_rnn_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_464809simple_rnn_cell_1_464811simple_rnn_cell_1_464813*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_464821*
condR
while_cond_464820*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466682
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_466616*
condR
while_cond_466615*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?=
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_464710

inputs*
simple_rnn_cell_1_464635:((&
simple_rnn_cell_1_464637:(*
simple_rnn_cell_1_464639:((
identity??)simple_rnn_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_464635simple_rnn_cell_1_464637simple_rnn_cell_1_464639*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4646342+
)simple_rnn_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_464635simple_rnn_cell_1_464637simple_rnn_cell_1_464639*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_464647*
condR
while_cond_464646*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?
E
)__inference_lambda_1_layer_call_fn_467422

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4653912
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_lambda_1_layer_call_fn_467427

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4654272
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
C
'__inference_lambda_layer_call_fn_466397

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4651292
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?=
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_464350

inputs(
simple_rnn_cell_464275:($
simple_rnn_cell_464277:((
simple_rnn_cell_464279:((
identity??'simple_rnn_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_464275simple_rnn_cell_464277simple_rnn_cell_464279*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4642202)
'simple_rnn_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_464275simple_rnn_cell_464277simple_rnn_cell_464279*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_464287*
condR
while_cond_464286*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0(^simple_rnn_cell/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_467417

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
while_cond_467331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_467331___redundant_placeholder04
0while_while_cond_467331___redundant_placeholder14
0while_while_cond_467331___redundant_placeholder24
0while_while_cond_467331___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?

?
2__inference_simple_rnn_cell_1_layer_call_fn_467529

inputs
states_0
unknown:((
	unknown_0:(
	unknown_1:((
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4647542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?
?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467501

inputs
states_00
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?	
?
+__inference_sequential_layer_call_fn_465813
lambda_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_4657732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
?4
?
while_body_465499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?3
?
while_body_465633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_simple_rnn_layer_call_fn_466425
inputs_0
unknown:(
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4641762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
&__inference_dense_layer_call_fn_467407

inputs
unknown:(
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4653792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?H
?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_465565

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:((?
1simple_rnn_cell_1_biasadd_readvariableop_resource:(D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:((
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_2?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul?
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/BiasAdd?
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/MatMul_1?
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/add?
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell_1/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_465499*
condR
while_cond_465498*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_465242

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_465176*
condR
while_cond_465175*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
-__inference_simple_rnn_1_layer_call_fn_466928
inputs_0
unknown:((
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4648842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????(
"
_user_specified_name
inputs/0
?3
?
while_body_466504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
Ż
?
F__inference_sequential_layer_call_and_return_conditional_losses_466162

inputsK
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:(H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:(M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:((O
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:((L
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:(Q
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:((6
$dense_matmul_readvariableop_resource:(3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/while?5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whiley
lambda/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lambda/ExpandDims/dim?
lambda/ExpandDims
ExpandDimsinputslambda/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2
lambda/ExpandDimsn
simple_rnn/ShapeShapelambda/ExpandDims:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape?
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack?
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1?
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn/zeros/mul/y?
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn/zeros/Less/y?
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn/zeros/packed/1?
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
simple_rnn/zeros?
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm?
simple_rnn/transpose	Transposelambda/ExpandDims:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1?
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack?
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1?
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1?
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn/TensorArrayV2/element_shape?
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2?
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor?
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack?
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1?
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn/strided_slice_2?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2#
!simple_rnn/simple_rnn_cell/MatMul?
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2$
"simple_rnn/simple_rnn_cell/BiasAdd?
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2%
#simple_rnn/simple_rnn_cell/MatMul_1?
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2 
simple_rnn/simple_rnn_cell/add?
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2!
simple_rnn/simple_rnn_cell/Tanh?
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2*
(simple_rnn/TensorArrayV2_1/element_shape?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time?
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#simple_rnn/while/maximum_iterations?
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*(
body R
simple_rnn_while_body_465980*(
cond R
simple_rnn_while_cond_465979*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
simple_rnn/while?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack?
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 simple_rnn/strided_slice_3/stack?
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1?
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn/strided_slice_3?
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn/transpose_1r
simple_rnn_1/ShapeShapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape?
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack?
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1?
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slicev
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn_1/zeros/mul/y?
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/muly
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_1/zeros/Less/y?
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/Less|
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
simple_rnn_1/zeros/packed/1?
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_1/zeros/packedy
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_1/zeros/Const?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_1/zeros?
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/perm?
simple_rnn_1/transpose	Transposesimple_rnn/transpose_1:y:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn_1/transposev
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape_1?
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack?
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1?
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice_1?
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(simple_rnn_1/TensorArrayV2/element_shape?
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2?
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor?
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_2/stack?
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_1?
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn_1/strided_slice_2?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:((*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2'
%simple_rnn_1/simple_rnn_cell_1/MatMul?
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2(
&simple_rnn_1/simple_rnn_cell_1/BiasAdd?
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1?
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2$
"simple_rnn_1/simple_rnn_cell_1/add?
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2%
#simple_rnn_1/simple_rnn_cell_1/Tanh?
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2,
*simple_rnn_1/TensorArrayV2_1/element_shape?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time?
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%simple_rnn_1/while/maximum_iterations?
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_1_while_body_466088**
cond"R 
simple_rnn_1_while_cond_466087*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
simple_rnn_1/while?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack?
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"simple_rnn_1/strided_slice_3/stack?
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_3/stack_1?
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_3/stack_2?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
simple_rnn_1/strided_slice_3?
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/perm?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
simple_rnn_1/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul%simple_rnn_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdde
lambda_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?B2
lambda_1/mul/y?
lambda_1/mulMuldense/BiasAdd:output:0lambda_1/mul/y:output:0*
T0*'
_output_shapes
:?????????2
lambda_1/mul?
IdentityIdentitylambda_1/mul:z:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?@
?
simple_rnn_while_body_4659802
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:(P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:(U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:(N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:(S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:((??7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2)
'simple_rnn/while/simple_rnn_cell/MatMul?
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2*
(simple_rnn/while/simple_rnn_cell/BiasAdd?
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2+
)simple_rnn/while/simple_rnn_cell/MatMul_1?
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2&
$simple_rnn/while/simple_rnn_cell/add?
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2'
%simple_rnn/while/simple_rnn_cell/Tanh?
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y?
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1?
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1?
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3?
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_465699

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_465633*
condR
while_cond_465632*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_464820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_464820___redundant_placeholder04
0while_while_cond_464820___redundant_placeholder14
0while_while_cond_464820___redundant_placeholder24
0while_while_cond_464820___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467484

inputs
states_00
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?
?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_464754

inputs

states0
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_namestates
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_465863
lambda_input#
simple_rnn_465842:(
simple_rnn_465844:(#
simple_rnn_465846:((%
simple_rnn_1_465849:((!
simple_rnn_1_465851:(%
simple_rnn_1_465853:((
dense_465856:(
dense_465858:
identity??dense/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?$simple_rnn_1/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCalllambda_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4657222
lambda/PartitionedCall?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0simple_rnn_465842simple_rnn_465844simple_rnn_465846*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4656992$
"simple_rnn/StatefulPartitionedCall?
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_465849simple_rnn_1_465851simple_rnn_1_465853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4655652&
$simple_rnn_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_465856dense_465858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4653792
dense/StatefulPartitionedCall?
lambda_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4654272
lambda_1/PartitionedCall?
IdentityIdentity!lambda_1/PartitionedCall:output:0^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
?
^
B__inference_lambda_layer_call_and_return_conditional_losses_466408

inputs
identityk
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????2

ExpandDimst
IdentityIdentityExpandDims:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????????????:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_465379

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
while_cond_466727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_466727___redundant_placeholder04
0while_while_cond_466727___redundant_placeholder14
0while_while_cond_466727___redundant_placeholder24
0while_while_cond_466727___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_465838
lambda_input#
simple_rnn_465817:(
simple_rnn_465819:(#
simple_rnn_465821:((%
simple_rnn_1_465824:((!
simple_rnn_1_465826:(%
simple_rnn_1_465828:((
dense_465831:(
dense_465833:
identity??dense/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?$simple_rnn_1/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCalllambda_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4651292
lambda/PartitionedCall?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0simple_rnn_465817simple_rnn_465819simple_rnn_465821*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4652422$
"simple_rnn/StatefulPartitionedCall?
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_465824simple_rnn_1_465826simple_rnn_1_465828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4653612&
$simple_rnn_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_465831dense_465833*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4653792
dense/StatefulPartitionedCall?
lambda_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4653912
lambda_1/PartitionedCall?
IdentityIdentity!lambda_1/PartitionedCall:output:0^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
?

?
simple_rnn_while_cond_4662092
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_466209___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_466209___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_466209___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_466209___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467546

inputs
states_00
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????(:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?	
?
+__inference_sequential_layer_call_fn_465413
lambda_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_4653942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:??????????????????
&
_user_specified_namelambda_input
?
?
-__inference_simple_rnn_1_layer_call_fn_466939

inputs
unknown:((
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4653612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?4
?
while_body_467332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_464100

inputs

states0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_namestates
?4
?
while_body_465295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?3
?
while_body_466728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:(E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:(J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:(C
5while_simple_rnn_cell_biasadd_readvariableop_resource:(H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:((??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/MatMul?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/BiasAdd?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell/MatMul_1?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/add?
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?	
?
+__inference_sequential_layer_call_fn_465911

inputs
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_4653942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?#
?
while_body_464113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_464135_0:(,
while_simple_rnn_cell_464137_0:(0
while_simple_rnn_cell_464139_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_464135:(*
while_simple_rnn_cell_464137:(.
while_simple_rnn_cell_464139:((??-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_464135_0while_simple_rnn_cell_464137_0while_simple_rnn_cell_464139_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4641002/
-while/simple_rnn_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_464135while_simple_rnn_cell_464135_0">
while_simple_rnn_cell_464137while_simple_rnn_cell_464137_0">
while_simple_rnn_cell_464139while_simple_rnn_cell_464139_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_466995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_466995___redundant_placeholder04
0while_while_cond_466995___redundant_placeholder14
0while_while_cond_466995___redundant_placeholder24
0while_while_cond_466995___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?4
?
while_body_466996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?$
?
while_body_464821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_464843_0:((.
 while_simple_rnn_cell_1_464845_0:(2
 while_simple_rnn_cell_1_464847_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_464843:((,
while_simple_rnn_cell_1_464845:(0
while_simple_rnn_cell_1_464847:((??/while/simple_rnn_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_464843_0 while_simple_rnn_cell_1_464845_0 while_simple_rnn_cell_1_464847_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_46475421
/while/simple_rnn_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:10^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_464843 while_simple_rnn_cell_1_464843_0"B
while_simple_rnn_cell_1_464845 while_simple_rnn_cell_1_464845_0"B
while_simple_rnn_cell_1_464847 while_simple_rnn_cell_1_464847_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_465632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_465632___redundant_placeholder04
0while_while_cond_465632___redundant_placeholder14
0while_while_cond_465632___redundant_placeholder24
0while_while_cond_465632___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?@
?
simple_rnn_while_body_4662102
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:(P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:(U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:((
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:(N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:(S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:((??7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2)
'simple_rnn/while/simple_rnn_cell/MatMul?
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2*
(simple_rnn/while/simple_rnn_cell/BiasAdd?
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2+
)simple_rnn/while/simple_rnn_cell/MatMul_1?
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2&
$simple_rnn/while/simple_rnn_cell/add?
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2'
%simple_rnn/while/simple_rnn_cell/Tanh?
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y?
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1?
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1?
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3?
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_464286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_464286___redundant_placeholder04
0while_while_cond_464286___redundant_placeholder14
0while_while_cond_464286___redundant_placeholder24
0while_while_cond_464286___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_467107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_467107___redundant_placeholder04
0while_while_cond_467107___redundant_placeholder14
0while_while_cond_467107___redundant_placeholder24
0while_while_cond_467107___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
:
?

?
0__inference_simple_rnn_cell_layer_call_fn_467453

inputs
states_0
unknown:(
	unknown_0:(
	unknown_1:((
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4641002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0
?4
?
while_body_467220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:((??.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2 
while/simple_rnn_cell_1/MatMul?
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
while/simple_rnn_cell_1/BiasAdd?
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 while/simple_rnn_cell_1/MatMul_1?
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/add?
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:?????????(2
while/simple_rnn_cell_1/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????(: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_465394

inputs#
simple_rnn_465243:(
simple_rnn_465245:(#
simple_rnn_465247:((%
simple_rnn_1_465362:((!
simple_rnn_1_465364:(%
simple_rnn_1_465366:((
dense_465380:(
dense_465382:
identity??dense/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?$simple_rnn_1/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4651292
lambda/PartitionedCall?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0simple_rnn_465243simple_rnn_465245simple_rnn_465247*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4652422$
"simple_rnn/StatefulPartitionedCall?
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_465362simple_rnn_1_465364simple_rnn_1_465366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4653612&
$simple_rnn_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_465380dense_465382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4653792
dense/StatefulPartitionedCall?
lambda_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4653912
lambda_1/PartitionedCall?
IdentityIdentity!lambda_1/PartitionedCall:output:0^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_464220

inputs

states0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????(2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_namestates
?
?
-__inference_simple_rnn_1_layer_call_fn_466917
inputs_0
unknown:((
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4647102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????(
"
_user_specified_name
inputs/0
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_465773

inputs#
simple_rnn_465752:(
simple_rnn_465754:(#
simple_rnn_465756:((%
simple_rnn_1_465759:((!
simple_rnn_1_465761:(%
simple_rnn_1_465763:((
dense_465766:(
dense_465768:
identity??dense/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?$simple_rnn_1/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lambda_layer_call_and_return_conditional_losses_4657222
lambda/PartitionedCall?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0simple_rnn_465752simple_rnn_465754simple_rnn_465756*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_4656992$
"simple_rnn/StatefulPartitionedCall?
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_465759simple_rnn_1_465761simple_rnn_1_465763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4655652&
$simple_rnn_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_465766dense_465768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4653792
dense/StatefulPartitionedCall?
lambda_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_4654272
lambda_1/PartitionedCall?
IdentityIdentity!lambda_1/PartitionedCall:output:0^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?H
?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466794

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:(=
/simple_rnn_cell_biasadd_readvariableop_resource:(B
0simple_rnn_cell_matmul_1_readvariableop_resource:((
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/BiasAdd?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/MatMul_1?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????(2
simple_rnn_cell/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????(: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_466728*
condR
while_cond_466727*8
output_shapes'
%: : : : :?????????(: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(2
transpose_1?
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
-__inference_simple_rnn_1_layer_call_fn_466950

inputs
unknown:((
	unknown_0:(
	unknown_1:((
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4655652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????(
 
_user_specified_nameinputs
?

?
0__inference_simple_rnn_cell_layer_call_fn_467467

inputs
states_0
unknown:(
	unknown_0:(
	unknown_1:((
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????(:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4642202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????(
"
_user_specified_name
states/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
N
lambda_input>
serving_default_lambda_input:0??????????????????<
lambda_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?A
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
u__call__
*v&call_and_return_all_conditional_losses
w_default_save_signature"?>
_tf_keras_sequential?>{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_input"}}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABDAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTun/////KQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaAXipAHIGAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkx\nNWEzMDM+2gg8bGFtYmRhPggAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABDAAAAcwgAAAB8AGQBFABTACkCTmcAAAAAAABZQKkAKQHaAXhyAQAA\nAHIBAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkxNWEzMDM+2gg8bGFtYmRhPg0AAADzAAAA\nAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}]}, "shared_object_id": 16, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null]}, "float32", "lambda_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_input"}, "shared_object_id": 0}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABDAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTun/////KQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaAXipAHIGAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkx\nNWEzMDM+2gg8bGFtYmRhPggAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 1}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 6}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABDAAAAcwgAAAB8AGQBFABTACkCTmcAAAAAAABZQKkAKQHaAXhyAQAA\nAHIBAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkxNWEzMDM+2gg8bGFtYmRhPg0AAADzAAAA\nAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 15}]}}, "training_config": {"loss": {"class_name": "Huber", "config": {"reduction": "auto", "name": "huber_loss", "delta": 1.0}, "shared_object_id": 17}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 18}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 4.999999873689376e-05, "decay": 0.0, "momentum": 0.8999999761581421, "nesterov": false}}}}
?
regularization_losses
trainable_variables
	variables
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABDAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTun/////KQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaAXipAHIGAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkx\nNWEzMDM+2gg8bGFtYmRhPggAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 1}
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?
{"name": "simple_rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 6, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?
{"name": "simple_rnn_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 11, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 40]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 40]}}
?

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
~__call__
*&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40]}}
?
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lambda_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABDAAAAcwgAAAB8AGQBFABTACkCTmcAAAAAAABZQKkAKQHaAXhyAQAA\nAHIBAAAA+h88aXB5dGhvbi1pbnB1dC02Ni1hN2UyMjkxNWEzMDM+2gg8bGFtYmRhPg0AAADzAAAA\nAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 15}
?
&iter
	'decay
(learning_rate
)momentummomentummmomentumn*momentumo+momentump,momentumq-momentumr.momentums/momentumt"
	optimizer
 "
trackable_list_wrapper
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
?
regularization_losses

0layers
1layer_metrics
2metrics
trainable_variables
3layer_regularization_losses
		variables
4non_trainable_variables
u__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses

5layers
6layer_metrics
7metrics
trainable_variables
8layer_regularization_losses
	variables
9non_trainable_variables
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?

*kernel
+recurrent_kernel
,bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "simple_rnn_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNNCell", "config": {"name": "simple_rnn_cell", "trainable": true, "dtype": "float32", "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 5}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
?
regularization_losses

>layers
?layer_metrics
@metrics

Astates
trainable_variables
Blayer_regularization_losses
	variables
Cnon_trainable_variables
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?

-kernel
.recurrent_kernel
/bias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "simple_rnn_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNNCell", "config": {"name": "simple_rnn_cell_1", "trainable": true, "dtype": "float32", "units": 40, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 10}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
?
regularization_losses

Hlayers
Ilayer_metrics
Jmetrics

Kstates
trainable_variables
Llayer_regularization_losses
	variables
Mnon_trainable_variables
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
:(2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

Nlayers
Olayer_metrics
Pmetrics
trainable_variables
Qlayer_regularization_losses
 	variables
Rnon_trainable_variables
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
"regularization_losses

Slayers
Tlayer_metrics
Umetrics
#trainable_variables
Vlayer_regularization_losses
$	variables
Wnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
3:1(2!simple_rnn/simple_rnn_cell/kernel
=:;((2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+(2simple_rnn/simple_rnn_cell/bias
7:5((2%simple_rnn_1/simple_rnn_cell_1/kernel
A:?((2/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
1:/(2#simple_rnn_1/simple_rnn_cell_1/bias
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
?
:regularization_losses

Zlayers
[layer_metrics
\metrics
;trainable_variables
]layer_regularization_losses
<	variables
^non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
?
Dregularization_losses

_layers
`layer_metrics
ametrics
Etrainable_variables
blayer_regularization_losses
F	variables
cnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	dtotal
	ecount
f	variables
g	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 22}
?
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 18}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
d0
e1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
):'(2SGD/dense/kernel/momentum
#:!2SGD/dense/bias/momentum
>:<(2.SGD/simple_rnn/simple_rnn_cell/kernel/momentum
H:F((28SGD/simple_rnn/simple_rnn_cell/recurrent_kernel/momentum
8:6(2,SGD/simple_rnn/simple_rnn_cell/bias/momentum
B:@((22SGD/simple_rnn_1/simple_rnn_cell_1/kernel/momentum
L:J((2<SGD/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/momentum
<::(20SGD/simple_rnn_1/simple_rnn_cell_1/bias/momentum
?2?
+__inference_sequential_layer_call_fn_465413
+__inference_sequential_layer_call_fn_465911
+__inference_sequential_layer_call_fn_465932
+__inference_sequential_layer_call_fn_465813?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_466162
F__inference_sequential_layer_call_and_return_conditional_losses_466392
F__inference_sequential_layer_call_and_return_conditional_losses_465838
F__inference_sequential_layer_call_and_return_conditional_losses_465863?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_464048?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *4?1
/?,
lambda_input??????????????????
?2?
'__inference_lambda_layer_call_fn_466397
'__inference_lambda_layer_call_fn_466402?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lambda_layer_call_and_return_conditional_losses_466408
B__inference_lambda_layer_call_and_return_conditional_losses_466414?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_simple_rnn_layer_call_fn_466425
+__inference_simple_rnn_layer_call_fn_466436
+__inference_simple_rnn_layer_call_fn_466447
+__inference_simple_rnn_layer_call_fn_466458?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466570
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466682
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466794
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466906?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_simple_rnn_1_layer_call_fn_466917
-__inference_simple_rnn_1_layer_call_fn_466928
-__inference_simple_rnn_1_layer_call_fn_466939
-__inference_simple_rnn_1_layer_call_fn_466950?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467062
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467174
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467286
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467398?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_467407?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_467417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_lambda_1_layer_call_fn_467422
)__inference_lambda_1_layer_call_fn_467427?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lambda_1_layer_call_and_return_conditional_losses_467433
D__inference_lambda_1_layer_call_and_return_conditional_losses_467439?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_465890lambda_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_simple_rnn_cell_layer_call_fn_467453
0__inference_simple_rnn_cell_layer_call_fn_467467?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467484
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467501?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
2__inference_simple_rnn_cell_1_layer_call_fn_467515
2__inference_simple_rnn_cell_1_layer_call_fn_467529?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467546
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467563?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_464048*,+-/.>?;
4?1
/?,
lambda_input??????????????????
? "3?0
.
lambda_1"?
lambda_1??????????
A__inference_dense_layer_call_and_return_conditional_losses_467417\/?,
%?"
 ?
inputs?????????(
? "%?"
?
0?????????
? y
&__inference_dense_layer_call_fn_467407O/?,
%?"
 ?
inputs?????????(
? "???????????
D__inference_lambda_1_layer_call_and_return_conditional_losses_467433`7?4
-?*
 ?
inputs?????????

 
p 
? "%?"
?
0?????????
? ?
D__inference_lambda_1_layer_call_and_return_conditional_losses_467439`7?4
-?*
 ?
inputs?????????

 
p
? "%?"
?
0?????????
? ?
)__inference_lambda_1_layer_call_fn_467422S7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
)__inference_lambda_1_layer_call_fn_467427S7?4
-?*
 ?
inputs?????????

 
p
? "???????????
B__inference_lambda_layer_call_and_return_conditional_losses_466408v@?=
6?3
)?&
inputs??????????????????

 
p 
? "2?/
(?%
0??????????????????
? ?
B__inference_lambda_layer_call_and_return_conditional_losses_466414v@?=
6?3
)?&
inputs??????????????????

 
p
? "2?/
(?%
0??????????????????
? ?
'__inference_lambda_layer_call_fn_466397i@?=
6?3
)?&
inputs??????????????????

 
p 
? "%?"???????????????????
'__inference_lambda_layer_call_fn_466402i@?=
6?3
)?&
inputs??????????????????

 
p
? "%?"???????????????????
F__inference_sequential_layer_call_and_return_conditional_losses_465838y*,+-/.F?C
<?9
/?,
lambda_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_465863y*,+-/.F?C
<?9
/?,
lambda_input??????????????????
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_466162s*,+-/.@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_466392s*,+-/.@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_465413l*,+-/.F?C
<?9
/?,
lambda_input??????????????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_465813l*,+-/.F?C
<?9
/?,
lambda_input??????????????????
p

 
? "???????????
+__inference_sequential_layer_call_fn_465911f*,+-/.@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_465932f*,+-/.@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
$__inference_signature_wrapper_465890?*,+-/.N?K
? 
D?A
?
lambda_input/?,
lambda_input??????????????????"3?0
.
lambda_1"?
lambda_1??????????
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467062}-/.O?L
E?B
4?1
/?,
inputs/0??????????????????(

 
p 

 
? "%?"
?
0?????????(
? ?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467174}-/.O?L
E?B
4?1
/?,
inputs/0??????????????????(

 
p

 
? "%?"
?
0?????????(
? ?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467286v-/.H?E
>?;
-?*
inputs??????????????????(

 
p 

 
? "%?"
?
0?????????(
? ?
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_467398v-/.H?E
>?;
-?*
inputs??????????????????(

 
p

 
? "%?"
?
0?????????(
? ?
-__inference_simple_rnn_1_layer_call_fn_466917p-/.O?L
E?B
4?1
/?,
inputs/0??????????????????(

 
p 

 
? "??????????(?
-__inference_simple_rnn_1_layer_call_fn_466928p-/.O?L
E?B
4?1
/?,
inputs/0??????????????????(

 
p

 
? "??????????(?
-__inference_simple_rnn_1_layer_call_fn_466939i-/.H?E
>?;
-?*
inputs??????????????????(

 
p 

 
? "??????????(?
-__inference_simple_rnn_1_layer_call_fn_466950i-/.H?E
>?;
-?*
inputs??????????????????(

 
p

 
? "??????????(?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467546?-/.\?Y
R?O
 ?
inputs?????????(
'?$
"?
states/0?????????(
p 
? "R?O
H?E
?
0/0?????????(
$?!
?
0/1/0?????????(
? ?
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_467563?-/.\?Y
R?O
 ?
inputs?????????(
'?$
"?
states/0?????????(
p
? "R?O
H?E
?
0/0?????????(
$?!
?
0/1/0?????????(
? ?
2__inference_simple_rnn_cell_1_layer_call_fn_467515?-/.\?Y
R?O
 ?
inputs?????????(
'?$
"?
states/0?????????(
p 
? "D?A
?
0?????????(
"?
?
1/0?????????(?
2__inference_simple_rnn_cell_1_layer_call_fn_467529?-/.\?Y
R?O
 ?
inputs?????????(
'?$
"?
states/0?????????(
p
? "D?A
?
0?????????(
"?
?
1/0?????????(?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467484?*,+\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????(
p 
? "R?O
H?E
?
0/0?????????(
$?!
?
0/1/0?????????(
? ?
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_467501?*,+\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????(
p
? "R?O
H?E
?
0/0?????????(
$?!
?
0/1/0?????????(
? ?
0__inference_simple_rnn_cell_layer_call_fn_467453?*,+\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????(
p 
? "D?A
?
0?????????(
"?
?
1/0?????????(?
0__inference_simple_rnn_cell_layer_call_fn_467467?*,+\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????(
p
? "D?A
?
0?????????(
"?
?
1/0?????????(?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466570?*,+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????(
? ?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466682?*,+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????(
? ?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466794?*,+H?E
>?;
-?*
inputs??????????????????

 
p 

 
? "2?/
(?%
0??????????????????(
? ?
F__inference_simple_rnn_layer_call_and_return_conditional_losses_466906?*,+H?E
>?;
-?*
inputs??????????????????

 
p

 
? "2?/
(?%
0??????????????????(
? ?
+__inference_simple_rnn_layer_call_fn_466425}*,+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????(?
+__inference_simple_rnn_layer_call_fn_466436}*,+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????(?
+__inference_simple_rnn_layer_call_fn_466447v*,+H?E
>?;
-?*
inputs??????????????????

 
p 

 
? "%?"??????????????????(?
+__inference_simple_rnn_layer_call_fn_466458v*,+H?E
>?;
-?*
inputs??????????????????

 
p

 
? "%?"??????????????????(