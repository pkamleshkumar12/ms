’ 
¶К
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02unknown8эЭ
В
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
В
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
: *
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
: *
dtype0
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0
{
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АтА*
shared_namedense_4/kernel
t
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*!
_output_shapes
:АтА*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:А*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	А	*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:	*
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
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

NoOpNoOp
њ>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ъ=
valueр=Bн= Bж=
ґ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
Ю
layer-0
layer-1
layer-2
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
w
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
 	keras_api
Н

!kernel
"bias
##_self_saveable_object_factories
$regularization_losses
%trainable_variables
&	variables
'	keras_api
w
#(_self_saveable_object_factories
)regularization_losses
*trainable_variables
+	variables
,	keras_api
Н

-kernel
.bias
#/_self_saveable_object_factories
0regularization_losses
1trainable_variables
2	variables
3	keras_api
w
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
Н

9kernel
:bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
w
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
w
#E_self_saveable_object_factories
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
w
#J_self_saveable_object_factories
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
Н

Okernel
Pbias
#Q_self_saveable_object_factories
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
Н

Vkernel
Wbias
#X_self_saveable_object_factories
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
 
 
 
F
!0
"1
-2
.3
94
:5
O6
P7
V8
W9
 
F
!0
"1
-2
.3
94
:5
O6
P7
V8
W9
≠

]layers
^layer_metrics
_metrics
	variables
`non_trainable_variables
regularization_losses
trainable_variables
alayer_regularization_losses
Б
b_rng
#c_self_saveable_object_factories
dregularization_losses
etrainable_variables
f	variables
g	keras_api
Б
h_rng
#i_self_saveable_object_factories
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
Б
n_rng
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
 
 
 
 
≠

tlayers
ulayer_metrics
vmetrics
	variables
wnon_trainable_variables
regularization_losses
trainable_variables
xlayer_regularization_losses
 
 
 
 
≠

ylayers
zlayer_metrics
regularization_losses
{non_trainable_variables
trainable_variables
	variables
|metrics
}layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

!0
"1

!0
"1
∞

~layers
layer_metrics
$regularization_losses
Аnon_trainable_variables
%trainable_variables
&	variables
Бmetrics
 Вlayer_regularization_losses
 
 
 
 
≤
Гlayers
Дlayer_metrics
)regularization_losses
Еnon_trainable_variables
*trainable_variables
+	variables
Жmetrics
 Зlayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

-0
.1

-0
.1
≤
Иlayers
Йlayer_metrics
0regularization_losses
Кnon_trainable_variables
1trainable_variables
2	variables
Лmetrics
 Мlayer_regularization_losses
 
 
 
 
≤
Нlayers
Оlayer_metrics
5regularization_losses
Пnon_trainable_variables
6trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

90
:1

90
:1
≤
Тlayers
Уlayer_metrics
<regularization_losses
Фnon_trainable_variables
=trainable_variables
>	variables
Хmetrics
 Цlayer_regularization_losses
 
 
 
 
≤
Чlayers
Шlayer_metrics
Aregularization_losses
Щnon_trainable_variables
Btrainable_variables
C	variables
Ъmetrics
 Ыlayer_regularization_losses
 
 
 
 
≤
Ьlayers
Эlayer_metrics
Fregularization_losses
Юnon_trainable_variables
Gtrainable_variables
H	variables
Яmetrics
 †layer_regularization_losses
 
 
 
 
≤
°layers
Ґlayer_metrics
Kregularization_losses
£non_trainable_variables
Ltrainable_variables
M	variables
§metrics
 •layer_regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

O0
P1

O0
P1
≤
¶layers
Іlayer_metrics
Rregularization_losses
®non_trainable_variables
Strainable_variables
T	variables
©metrics
 ™layer_regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

V0
W1

V0
W1
≤
Ђlayers
ђlayer_metrics
Yregularization_losses
≠non_trainable_variables
Ztrainable_variables
[	variables
Ѓmetrics
 ѓlayer_regularization_losses
V
0
1
2
3
4
5
6
7
	8

9
10
11
 

∞0
±1
 
 
7
≤
_state_var
$≥_self_saveable_object_factories
 
 
 
 
≤
іlayers
µlayer_metrics
dregularization_losses
ґnon_trainable_variables
etrainable_variables
f	variables
Јmetrics
 Єlayer_regularization_losses
7
є
_state_var
$Ї_self_saveable_object_factories
 
 
 
 
≤
їlayers
Љlayer_metrics
jregularization_losses
љnon_trainable_variables
ktrainable_variables
l	variables
Њmetrics
 њlayer_regularization_losses
7
ј
_state_var
$Ѕ_self_saveable_object_factories
 
 
 
 
≤
¬layers
√layer_metrics
pregularization_losses
ƒnon_trainable_variables
qtrainable_variables
r	variables
≈metrics
 ∆layer_regularization_losses

0
1
2
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
8

«total

»count
…	variables
 	keras_api
I

Ћtotal

ћcount
Ќ
_fn_kwargs
ќ	variables
ѕ	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
 
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
 
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
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

«0
»1

…	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ћ0
ћ1

ќ	variables
Щ
"serving_default_sequential_2_inputPlaceholder*1
_output_shapes
:€€€€€€€€€іі*
dtype0*&
shape:€€€€€€€€€іі
м
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_2_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_26603
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ё
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_27991
Д
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasVariable
Variable_1
Variable_2totalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_28052≠±
Ч,
Ў
__inference__traced_save_27991
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename”
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*е
valueџBЎB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesђ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesф
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2			2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*†
_input_shapesО
Л: ::: : : @:@:АтА:А:	А	:	:::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:АтА:!

_output_shapes	
:А:%	!

_output_shapes
:	А	: 


_output_shapes
:	: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
’
K
/__inference_max_pooling2d_8_layer_call_fn_27478

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_260972
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ш3
ш
G__inference_sequential_3_layer_call_and_return_conditional_losses_26534
sequential_2_input(
conv2d_6_26503:
conv2d_6_26505:(
conv2d_7_26509: 
conv2d_7_26511: (
conv2d_8_26515: @
conv2d_8_26517:@"
dense_4_26523:АтА
dense_4_26525:	А 
dense_5_26528:	А	
dense_5_26530:	
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallх
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_256482
sequential_2/PartitionedCallЕ
rescaling_3/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_261262
rescaling_3/PartitionedCallє
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$rescaling_3/PartitionedCall:output:0conv2d_6_26503conv2d_6_26505*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_261392"
 conv2d_6/StatefulPartitionedCallУ
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_261492!
max_pooling2d_6/PartitionedCallї
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_26509conv2d_7_26511*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_261622"
 conv2d_7/StatefulPartitionedCallУ
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_261722!
max_pooling2d_7/PartitionedCallї
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_26515conv2d_8_26517*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_261852"
 conv2d_8/StatefulPartitionedCallУ
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_261952!
max_pooling2d_8/PartitionedCallъ
dropout/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_262022
dropout/PartitionedCallт
flatten_2/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Ат* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_262102
flatten_2/PartitionedCall©
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_26523dense_4_26525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_262232!
dense_4/StatefulPartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_26528dense_5_26530*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_262392!
dense_5/StatefulPartitionedCallГ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityы
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
и
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_27516

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ y  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
®
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_26126

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ЉС
њ
F__inference_random_zoom_layer_call_and_return_conditional_losses_27890

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceБ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
strided_slice_1/stackЕ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_2/stackЕ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1v
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/shape/1°
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЩ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xК
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1ў
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipЦ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackЪ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1Ъ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2ќ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЩ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/BitcastЪ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackЮ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1Ю
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2∆
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Я
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1†
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algЉ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2+
)stateful_uniform/StatelessRandomUniformV2Т
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub≥
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
stateful_uniform/mulШ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
stateful_uniform\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЩ
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
concate
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
zoom_matrix/ShapeМ
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
zoom_matrix/strided_slice/stackР
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_1Р
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_2™
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
zoom_matrix/strided_slicek
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub/yr
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/subs
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv/yЛ
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truedivЫ
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_1/stackЯ
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_1/stack_1Я
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_1/stack_2с
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_1o
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_1/x£
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/sub_1Л
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/mulo
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_2/yv
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/sub_2w
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv_1/yУ
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truediv_1Ы
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_2/stackЯ
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_2/stack_1Я
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_2/stack_2с
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_2o
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_3/x£
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/sub_3С
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/mul_1Ы
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_3/stackЯ
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_3/stack_1Я
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_3/stack_2с
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_3t
zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/mul/yЬ
zoom_matrix/zeros/mulMul"zoom_matrix/strided_slice:output:0 zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros/mulw
zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros/Less/yЧ
zoom_matrix/zeros/LessLesszoom_matrix/zeros/mul:z:0!zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros/Lessz
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/packed/1≥
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros/packedw
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros/Const•
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zerosx
zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/mul/yҐ
zoom_matrix/zeros_1/mulMul"zoom_matrix/strided_slice:output:0"zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_1/mul{
zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros_1/Less/yЯ
zoom_matrix/zeros_1/LessLesszoom_matrix/zeros_1/mul:z:0#zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_1/Less~
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/packed/1є
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_1/packed{
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_1/Const≠
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zeros_1Ы
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_4/stackЯ
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_4/stack_1Я
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_4/stack_2с
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_4x
zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/mul/yҐ
zoom_matrix/zeros_2/mulMul"zoom_matrix/strided_slice:output:0"zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_2/mul{
zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros_2/Less/yЯ
zoom_matrix/zeros_2/LessLesszoom_matrix/zeros_2/mul:z:0#zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_2/Less~
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/packed/1є
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_2/packed{
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_2/Const≠
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zeros_2t
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/concat/axisб
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/ShapeИ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackМ
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1М
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2К
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value≈
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3Ю
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
р
Х
'__inference_dense_5_layer_call_fn_27560

inputs
unknown:	А	
	unknown_0:	
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_262392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
n
G__inference_sequential_2_layer_call_and_return_conditional_losses_26031
random_flip_input
identityс
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_256332
random_flip/PartitionedCallР
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_256392!
random_rotation/PartitionedCallИ
random_zoom/PartitionedCallPartitionedCall(random_rotation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_256452
random_zoom/PartitionedCallВ
IdentityIdentity$random_zoom/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:d `
1
_output_shapes
:€€€€€€€€€іі
+
_user_specified_namerandom_flip_input
∞†
√
J__inference_random_rotation_layer_call_and_return_conditional_losses_25908

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceБ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
strided_slice_1/stackЕ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_2/stackЕ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њ2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЩ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xК
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1ў
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipЦ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackЪ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1Ъ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2ќ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЩ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/BitcastЪ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackЮ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1Ю
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2∆
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Я
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1†
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algЄ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2+
)stateful_uniform/StatelessRandomUniformV2Т
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/subѓ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
stateful_uniform/mulФ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_1/yД
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1У
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_2/yВ
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2Ч
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_1Ч
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_3Ч
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/y™
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_5/yВ
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_6/yД
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6Щ
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_7/yВ
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7Щ
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_3Ч
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/addЧ
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y∞
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/ShapeФ
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stackШ
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1Ш
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2¬
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_2Я
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stack£
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1£
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2ч
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_2Я
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stack£
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1£
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2ч
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2Н
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/NegЯ
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stack£
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1£
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2щ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_3Я
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stack£
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1£
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2ч
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_3Я
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stack£
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1£
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2ч
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5Я
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stack£
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1£
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2ы
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6|
rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/zeros/mul/yђ
rotation_matrix/zeros/mulMul&rotation_matrix/strided_slice:output:0$rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/mul
rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
rotation_matrix/zeros/Less/yІ
rotation_matrix/zeros/LessLessrotation_matrix/zeros/mul:z:0%rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/LessВ
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1√
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constµ
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axis®
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/ShapeИ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackМ
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1М
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2К
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value…
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3Ю
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
и
K
/__inference_max_pooling2d_7_layer_call_fn_27443

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_261722
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€-- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ZZ :W S
/
_output_shapes
:€€€€€€€€€ZZ 
 
_user_specified_nameinputs
Ш
Э
(__inference_conv2d_8_layer_call_fn_27463

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_261852
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€--@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-- 
 
_user_specified_nameinputs
о
{
+__inference_random_flip_layer_call_fn_27634

inputs
unknown:	
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_259792
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
†
Э
(__inference_conv2d_6_layer_call_fn_27383

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_261392
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іі: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
х
ь
C__inference_conv2d_6_layer_call_and_return_conditional_losses_26139

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іі: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
о
{
+__inference_random_zoom_layer_call_fn_27902

inputs
unknown:	
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_257732
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
њ
Ѓ
,__inference_sequential_2_layer_call_fn_27350

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_260042
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€іі: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
©
ќ
G__inference_sequential_2_layer_call_and_return_conditional_losses_26044
random_flip_input
random_flip_26034:	#
random_rotation_26037:	
random_zoom_26040:	
identityИҐ#random_flip/StatefulPartitionedCallҐ'random_rotation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallЭ
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_26034*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_259792%
#random_flip/StatefulPartitionedCall»
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_26037*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_259082)
'random_rotation/StatefulPartitionedCallЉ
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall0random_rotation/StatefulPartitionedCall:output:0random_zoom_26040*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_257732%
#random_zoom/StatefulPartitionedCallС
IdentityIdentity,random_zoom/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityƒ
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€іі: : : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:d `
1
_output_shapes
:€€€€€€€€€іі
+
_user_specified_namerandom_flip_input
к
a
B__inference_dropout_layer_call_and_return_conditional_losses_27500

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
°
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_27048

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
†
b
F__inference_random_flip_layer_call_and_return_conditional_losses_25633

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
й
ь
C__inference_conv2d_7_layer_call_and_return_conditional_losses_26162

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ZZ
 
_user_specified_nameinputs
Р
ч
B__inference_dense_4_layer_call_and_return_conditional_losses_27532

inputs3
matmul_readvariableop_resource:АтА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АтА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Ат: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€Ат
 
_user_specified_nameinputs
Ў
C
'__inference_dropout_layer_call_fn_27505

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_262022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ЬJ
з	
!__inference__traced_restore_28052
file_prefix:
 assignvariableop_conv2d_6_kernel:.
 assignvariableop_1_conv2d_6_bias:<
"assignvariableop_2_conv2d_7_kernel: .
 assignvariableop_3_conv2d_7_bias: <
"assignvariableop_4_conv2d_8_kernel: @.
 assignvariableop_5_conv2d_8_bias:@6
!assignvariableop_6_dense_4_kernel:АтА.
assignvariableop_7_dense_4_bias:	А4
!assignvariableop_8_dense_5_kernel:	А	-
assignvariableop_9_dense_5_bias:	*
assignvariableop_10_variable:	,
assignvariableop_11_variable_1:	,
assignvariableop_12_variable_2:	#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 
identity_18ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ў
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*е
valueџBЎB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names≤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЕ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1•
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3•
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5•
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¶
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7§
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¶
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_variableIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11¶
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12¶
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13°
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14°
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp‘
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17f
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_18Љ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
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
љ
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_26172

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€-- *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€-- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ZZ :W S
/
_output_shapes
:€€€€€€€€€ZZ 
 
_user_specified_nameinputs
к
a
B__inference_dropout_layer_call_and_return_conditional_losses_26315

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
П
`
B__inference_dropout_layer_call_and_return_conditional_losses_27488

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р
K
/__inference_random_rotation_layer_call_fn_27765

inputs
identity“
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_256392
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
м

С
#__inference_signature_wrapper_26603
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:АтА
	unknown_6:	А
	unknown_7:	А	
	unknown_8:	
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_256222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
И
√
G__inference_sequential_2_layer_call_and_return_conditional_losses_26004

inputs
random_flip_25994:	#
random_rotation_25997:	
random_zoom_26000:	
identityИҐ#random_flip/StatefulPartitionedCallҐ'random_rotation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallТ
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_25994*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_259792%
#random_flip/StatefulPartitionedCall»
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_25997*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_259082)
'random_rotation/StatefulPartitionedCallЉ
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall0random_rotation/StatefulPartitionedCall:output:0random_zoom_26000*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_257732%
#random_zoom/StatefulPartitionedCallС
IdentityIdentity,random_zoom/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityƒ
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€іі: : : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
±O
т	
 __inference__wrapped_model_25622
sequential_2_inputN
4sequential_3_conv2d_6_conv2d_readvariableop_resource:C
5sequential_3_conv2d_6_biasadd_readvariableop_resource:N
4sequential_3_conv2d_7_conv2d_readvariableop_resource: C
5sequential_3_conv2d_7_biasadd_readvariableop_resource: N
4sequential_3_conv2d_8_conv2d_readvariableop_resource: @C
5sequential_3_conv2d_8_biasadd_readvariableop_resource:@H
3sequential_3_dense_4_matmul_readvariableop_resource:АтАC
4sequential_3_dense_4_biasadd_readvariableop_resource:	АF
3sequential_3_dense_5_matmul_readvariableop_resource:	А	B
4sequential_3_dense_5_biasadd_readvariableop_resource:	
identityИҐ,sequential_3/conv2d_6/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_6/Conv2D/ReadVariableOpҐ,sequential_3/conv2d_7/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_7/Conv2D/ReadVariableOpҐ,sequential_3/conv2d_8/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_8/Conv2D/ReadVariableOpҐ+sequential_3/dense_4/BiasAdd/ReadVariableOpҐ*sequential_3/dense_4/MatMul/ReadVariableOpҐ+sequential_3/dense_5/BiasAdd/ReadVariableOpҐ*sequential_3/dense_5/MatMul/ReadVariableOpЗ
sequential_3/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2!
sequential_3/rescaling_3/Cast/xЛ
!sequential_3/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/rescaling_3/Cast_1/xљ
sequential_3/rescaling_3/mulMulsequential_2_input(sequential_3/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
sequential_3/rescaling_3/mulѕ
sequential_3/rescaling_3/addAddV2 sequential_3/rescaling_3/mul:z:0*sequential_3/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
sequential_3/rescaling_3/add„
+sequential_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_3/conv2d_6/Conv2D/ReadVariableOpБ
sequential_3/conv2d_6/Conv2DConv2D sequential_3/rescaling_3/add:z:03sequential_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі*
paddingSAME*
strides
2
sequential_3/conv2d_6/Conv2Dќ
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpв
sequential_3/conv2d_6/BiasAddBiasAdd%sequential_3/conv2d_6/Conv2D:output:04sequential_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
sequential_3/conv2d_6/BiasAdd§
sequential_3/conv2d_6/ReluRelu&sequential_3/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
sequential_3/conv2d_6/Reluо
$sequential_3/max_pooling2d_6/MaxPoolMaxPool(sequential_3/conv2d_6/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ZZ*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_6/MaxPool„
+sequential_3/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_3/conv2d_7/Conv2D/ReadVariableOpМ
sequential_3/conv2d_7/Conv2DConv2D-sequential_3/max_pooling2d_6/MaxPool:output:03sequential_3/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ *
paddingSAME*
strides
2
sequential_3/conv2d_7/Conv2Dќ
,sequential_3/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/conv2d_7/BiasAdd/ReadVariableOpа
sequential_3/conv2d_7/BiasAddBiasAdd%sequential_3/conv2d_7/Conv2D:output:04sequential_3/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
sequential_3/conv2d_7/BiasAddҐ
sequential_3/conv2d_7/ReluRelu&sequential_3/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
sequential_3/conv2d_7/Reluо
$sequential_3/max_pooling2d_7/MaxPoolMaxPool(sequential_3/conv2d_7/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-- *
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_7/MaxPool„
+sequential_3/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_8/Conv2D/ReadVariableOpМ
sequential_3/conv2d_8/Conv2DConv2D-sequential_3/max_pooling2d_7/MaxPool:output:03sequential_3/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@*
paddingSAME*
strides
2
sequential_3/conv2d_8/Conv2Dќ
,sequential_3/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/conv2d_8/BiasAdd/ReadVariableOpа
sequential_3/conv2d_8/BiasAddBiasAdd%sequential_3/conv2d_8/Conv2D:output:04sequential_3/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
sequential_3/conv2d_8/BiasAddҐ
sequential_3/conv2d_8/ReluRelu&sequential_3/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
sequential_3/conv2d_8/Reluо
$sequential_3/max_pooling2d_8/MaxPoolMaxPool(sequential_3/conv2d_8/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_8/MaxPool≥
sequential_3/dropout/IdentityIdentity-sequential_3/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_3/dropout/IdentityН
sequential_3/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ y  2
sequential_3/flatten_2/Constќ
sequential_3/flatten_2/ReshapeReshape&sequential_3/dropout/Identity:output:0%sequential_3/flatten_2/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2 
sequential_3/flatten_2/Reshapeѕ
*sequential_3/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_4_matmul_readvariableop_resource*!
_output_shapes
:АтА*
dtype02,
*sequential_3/dense_4/MatMul/ReadVariableOp‘
sequential_3/dense_4/MatMulMatMul'sequential_3/flatten_2/Reshape:output:02sequential_3/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_4/MatMulћ
+sequential_3/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+sequential_3/dense_4/BiasAdd/ReadVariableOp÷
sequential_3/dense_4/BiasAddBiasAdd%sequential_3/dense_4/MatMul:product:03sequential_3/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_4/BiasAddШ
sequential_3/dense_4/ReluRelu%sequential_3/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_4/ReluЌ
*sequential_3/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype02,
*sequential_3/dense_5/MatMul/ReadVariableOp”
sequential_3/dense_5/MatMulMatMul'sequential_3/dense_4/Relu:activations:02sequential_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
sequential_3/dense_5/MatMulЋ
+sequential_3/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02-
+sequential_3/dense_5/BiasAdd/ReadVariableOp’
sequential_3/dense_5/BiasAddBiasAdd%sequential_3/dense_5/MatMul:product:03sequential_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
sequential_3/dense_5/BiasAddА
IdentityIdentity%sequential_3/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

IdentityЫ
NoOpNoOp-^sequential_3/conv2d_6/BiasAdd/ReadVariableOp,^sequential_3/conv2d_6/Conv2D/ReadVariableOp-^sequential_3/conv2d_7/BiasAdd/ReadVariableOp,^sequential_3/conv2d_7/Conv2D/ReadVariableOp-^sequential_3/conv2d_8/BiasAdd/ReadVariableOp,^sequential_3/conv2d_8/Conv2D/ReadVariableOp,^sequential_3/dense_4/BiasAdd/ReadVariableOp+^sequential_3/dense_4/MatMul/ReadVariableOp,^sequential_3/dense_5/BiasAdd/ReadVariableOp+^sequential_3/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 2\
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp,sequential_3/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_6/Conv2D/ReadVariableOp+sequential_3/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_7/BiasAdd/ReadVariableOp,sequential_3/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_7/Conv2D/ReadVariableOp+sequential_3/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_8/BiasAdd/ReadVariableOp,sequential_3/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_8/Conv2D/ReadVariableOp+sequential_3/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_3/dense_4/BiasAdd/ReadVariableOp+sequential_3/dense_4/BiasAdd/ReadVariableOp2X
*sequential_3/dense_4/MatMul/ReadVariableOp*sequential_3/dense_4/MatMul/ReadVariableOp2Z
+sequential_3/dense_5/BiasAdd/ReadVariableOp+sequential_3/dense_5/BiasAdd/ReadVariableOp2X
*sequential_3/dense_5/MatMul/ReadVariableOp*sequential_3/dense_5/MatMul/ReadVariableOp:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
ЏТ
§
G__inference_sequential_3_layer_call_and_return_conditional_losses_26988

inputsX
Jsequential_2_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	S
Esequential_2_random_rotation_stateful_uniform_rngreadandskip_resource:	O
Asequential_2_random_zoom_stateful_uniform_rngreadandskip_resource:	A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource: 6
(conv2d_7_biasadd_readvariableop_resource: A
'conv2d_8_conv2d_readvariableop_resource: @6
(conv2d_8_biasadd_readvariableop_resource:@;
&dense_4_matmul_readvariableop_resource:АтА6
'dense_4_biasadd_readvariableop_resource:	А9
&dense_5_matmul_readvariableop_resource:	А	5
'dense_5_biasadd_readvariableop_resource:	
identityИҐconv2d_6/BiasAdd/ReadVariableOpҐconv2d_6/Conv2D/ReadVariableOpҐconv2d_7/BiasAdd/ReadVariableOpҐconv2d_7/Conv2D/ReadVariableOpҐconv2d_8/BiasAdd/ReadVariableOpҐconv2d_8/Conv2D/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐAsequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkipҐhsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgҐosequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterҐ<sequential_2/random_rotation/stateful_uniform/RngReadAndSkipҐ8sequential_2/random_zoom/stateful_uniform/RngReadAndSkipЊ
8sequential_2/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/random_flip/stateful_uniform_full_int/shapeЊ
8sequential_2/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_2/random_flip/stateful_uniform_full_int/Const°
7sequential_2/random_flip/stateful_uniform_full_int/ProdProdAsequential_2/random_flip/stateful_uniform_full_int/shape:output:0Asequential_2/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 29
7sequential_2/random_flip/stateful_uniform_full_int/ProdЄ
9sequential_2/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2;
9sequential_2/random_flip/stateful_uniform_full_int/Cast/xр
9sequential_2/random_flip/stateful_uniform_full_int/Cast_1Cast@sequential_2/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2;
9sequential_2/random_flip/stateful_uniform_full_int/Cast_1Г
Asequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipJsequential_2_random_flip_stateful_uniform_full_int_rngreadandskip_resourceBsequential_2/random_flip/stateful_uniform_full_int/Cast/x:output:0=sequential_2/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2C
Asequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkipЏ
Fsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stackё
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_1ё
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_2Ъ
@sequential_2/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceIsequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Osequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Qsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Qsequential_2/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2B
@sequential_2/random_flip/stateful_uniform_full_int/strided_slice€
:sequential_2/random_flip/stateful_uniform_full_int/BitcastBitcastIsequential_2/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02<
:sequential_2/random_flip/stateful_uniform_full_int/Bitcastё
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stackв
Jsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1в
Jsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Т
Bsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceIsequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Ssequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Ssequential_2/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2D
Bsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1Е
<sequential_2/random_flip/stateful_uniform_full_int/Bitcast_1BitcastKsequential_2/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02>
<sequential_2/random_flip/stateful_uniform_full_int/Bitcast_1≤
6sequential_2/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_2/random_flip/stateful_uniform_full_int/algƒ
2sequential_2/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2Asequential_2/random_flip/stateful_uniform_full_int/shape:output:0Esequential_2/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Csequential_2/random_flip/stateful_uniform_full_int/Bitcast:output:0?sequential_2/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	24
2sequential_2/random_flip/stateful_uniform_full_intФ
#sequential_2/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2%
#sequential_2/random_flip/zeros_likeе
sequential_2/random_flip/stackPack;sequential_2/random_flip/stateful_uniform_full_int:output:0,sequential_2/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2 
sequential_2/random_flip/stack≠
,sequential_2/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,sequential_2/random_flip/strided_slice/stack±
.sequential_2/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_2/random_flip/strided_slice/stack_1±
.sequential_2/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.sequential_2/random_flip/strided_slice/stack_2Ю
&sequential_2/random_flip/strided_sliceStridedSlice'sequential_2/random_flip/stack:output:05sequential_2/random_flip/strided_slice/stack:output:07sequential_2/random_flip/strided_slice/stack_1:output:07sequential_2/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2(
&sequential_2/random_flip/strided_sliceЗ
Lsequential_2/random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€іі2N
Lsequential_2/random_flip/stateless_random_flip_left_right/control_dependencyЗ
?sequential_2/random_flip/stateless_random_flip_left_right/ShapeShapeUsequential_2/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2A
?sequential_2/random_flip/stateless_random_flip_left_right/Shapeи
Msequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2O
Msequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stackм
Osequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Q
Osequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_1м
Osequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Q
Osequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Њ
Gsequential_2/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceHsequential_2/random_flip/stateless_random_flip_left_right/Shape:output:0Vsequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Xsequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Xsequential_2/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2I
Gsequential_2/random_flip/stateless_random_flip_left_right/strided_sliceЉ
Xsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackPsequential_2/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2Z
Xsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapeх
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2X
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minх
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2X
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max’
osequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/sequential_2/random_flip/strided_slice:output:0* 
_output_shapes
::2q
osequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterч
hsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgp^sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2j
hsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgа
ksequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0usequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0nsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:€€€€€€€€€2m
ksequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2Ъ
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSub_sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2X
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subЈ
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMultsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2X
Vsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulЬ
Rsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Zsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2T
Rsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniformЎ
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2K
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/1Ў
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2K
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/2Ў
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2K
Isequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/3Ц
Gsequential_2/random_flip/stateless_random_flip_left_right/Reshape/shapePackPsequential_2/random_flip/stateless_random_flip_left_right/strided_slice:output:0Rsequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Rsequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Rsequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2I
Gsequential_2/random_flip/stateless_random_flip_left_right/Reshape/shapeх
Asequential_2/random_flip/stateless_random_flip_left_right/ReshapeReshapeVsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Psequential_2/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2C
Asequential_2/random_flip/stateless_random_flip_left_right/ReshapeС
?sequential_2/random_flip/stateless_random_flip_left_right/RoundRoundJsequential_2/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2A
?sequential_2/random_flip/stateless_random_flip_left_right/Roundё
Hsequential_2/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_2/random_flip/stateless_random_flip_left_right/ReverseV2/axisэ
Csequential_2/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Usequential_2/random_flip/stateless_random_flip_left_right/control_dependency:output:0Qsequential_2/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2E
Csequential_2/random_flip/stateless_random_flip_left_right/ReverseV2‘
=sequential_2/random_flip/stateless_random_flip_left_right/mulMulCsequential_2/random_flip/stateless_random_flip_left_right/Round:y:0Lsequential_2/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2?
=sequential_2/random_flip/stateless_random_flip_left_right/mul«
?sequential_2/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2A
?sequential_2/random_flip/stateless_random_flip_left_right/sub/xќ
=sequential_2/random_flip/stateless_random_flip_left_right/subSubHsequential_2/random_flip/stateless_random_flip_left_right/sub/x:output:0Csequential_2/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2?
=sequential_2/random_flip/stateless_random_flip_left_right/subя
?sequential_2/random_flip/stateless_random_flip_left_right/mul_1MulAsequential_2/random_flip/stateless_random_flip_left_right/sub:z:0Usequential_2/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2A
?sequential_2/random_flip/stateless_random_flip_left_right/mul_1Ћ
=sequential_2/random_flip/stateless_random_flip_left_right/addAddV2Asequential_2/random_flip/stateless_random_flip_left_right/mul:z:0Csequential_2/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі2?
=sequential_2/random_flip/stateless_random_flip_left_right/addє
"sequential_2/random_rotation/ShapeShapeAsequential_2/random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"sequential_2/random_rotation/ShapeЃ
0sequential_2/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_2/random_rotation/strided_slice/stack≤
2sequential_2/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_rotation/strided_slice/stack_1≤
2sequential_2/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_rotation/strided_slice/stack_2Р
*sequential_2/random_rotation/strided_sliceStridedSlice+sequential_2/random_rotation/Shape:output:09sequential_2/random_rotation/strided_slice/stack:output:0;sequential_2/random_rotation/strided_slice/stack_1:output:0;sequential_2/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_2/random_rotation/strided_sliceї
2sequential_2/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€24
2sequential_2/random_rotation/strided_slice_1/stackњ
4sequential_2/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€26
4sequential_2/random_rotation/strided_slice_1/stack_1ґ
4sequential_2/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation/strided_slice_1/stack_2Ъ
,sequential_2/random_rotation/strided_slice_1StridedSlice+sequential_2/random_rotation/Shape:output:0;sequential_2/random_rotation/strided_slice_1/stack:output:0=sequential_2/random_rotation/strided_slice_1/stack_1:output:0=sequential_2/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_2/random_rotation/strided_slice_1µ
!sequential_2/random_rotation/CastCast5sequential_2/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_2/random_rotation/Castї
2sequential_2/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€24
2sequential_2/random_rotation/strided_slice_2/stackњ
4sequential_2/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€26
4sequential_2/random_rotation/strided_slice_2/stack_1ґ
4sequential_2/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation/strided_slice_2/stack_2Ъ
,sequential_2/random_rotation/strided_slice_2StridedSlice+sequential_2/random_rotation/Shape:output:0;sequential_2/random_rotation/strided_slice_2/stack:output:0=sequential_2/random_rotation/strided_slice_2/stack_1:output:0=sequential_2/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_2/random_rotation/strided_slice_2є
#sequential_2/random_rotation/Cast_1Cast5sequential_2/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_2/random_rotation/Cast_1’
3sequential_2/random_rotation/stateful_uniform/shapePack3sequential_2/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:25
3sequential_2/random_rotation/stateful_uniform/shapeЂ
1sequential_2/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њ23
1sequential_2/random_rotation/stateful_uniform/minЂ
1sequential_2/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?23
1sequential_2/random_rotation/stateful_uniform/maxі
3sequential_2/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_2/random_rotation/stateful_uniform/ConstН
2sequential_2/random_rotation/stateful_uniform/ProdProd<sequential_2/random_rotation/stateful_uniform/shape:output:0<sequential_2/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/stateful_uniform/ProdЃ
4sequential_2/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_2/random_rotation/stateful_uniform/Cast/xб
4sequential_2/random_rotation/stateful_uniform/Cast_1Cast;sequential_2/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 26
4sequential_2/random_rotation/stateful_uniform/Cast_1к
<sequential_2/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_2_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_2/random_rotation/stateful_uniform/Cast/x:output:08sequential_2/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:2>
<sequential_2/random_rotation/stateful_uniform/RngReadAndSkip–
Asequential_2/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_2/random_rotation/stateful_uniform/strided_slice/stack‘
Csequential_2/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_2/random_rotation/stateful_uniform/strided_slice/stack_1‘
Csequential_2/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_2/random_rotation/stateful_uniform/strided_slice/stack_2ь
;sequential_2/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_2/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_2/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_2/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_2/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2=
;sequential_2/random_rotation/stateful_uniform/strided_sliceр
5sequential_2/random_rotation/stateful_uniform/BitcastBitcastDsequential_2/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type027
5sequential_2/random_rotation/stateful_uniform/Bitcast‘
Csequential_2/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_2/random_rotation/stateful_uniform/strided_slice_1/stackЎ
Esequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_1Ў
Esequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_2ф
=sequential_2/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_2/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_2/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_2/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2?
=sequential_2/random_rotation/stateful_uniform/strided_slice_1ц
7sequential_2/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_2/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type029
7sequential_2/random_rotation/stateful_uniform/Bitcast_1Џ
Jsequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2L
Jsequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2/algж
Fsequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_2/random_rotation/stateful_uniform/shape:output:0@sequential_2/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_2/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2H
Fsequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2Ж
1sequential_2/random_rotation/stateful_uniform/subSub:sequential_2/random_rotation/stateful_uniform/max:output:0:sequential_2/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 23
1sequential_2/random_rotation/stateful_uniform/sub£
1sequential_2/random_rotation/stateful_uniform/mulMulOsequential_2/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_2/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€23
1sequential_2/random_rotation/stateful_uniform/mulИ
-sequential_2/random_rotation/stateful_uniformAddV25sequential_2/random_rotation/stateful_uniform/mul:z:0:sequential_2/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2/
-sequential_2/random_rotation/stateful_uniform≠
2sequential_2/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential_2/random_rotation/rotation_matrix/sub/yт
0sequential_2/random_rotation/rotation_matrix/subSub'sequential_2/random_rotation/Cast_1:y:0;sequential_2/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_rotation/rotation_matrix/subћ
0sequential_2/random_rotation/rotation_matrix/CosCos1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_2/random_rotation/rotation_matrix/Cos±
4sequential_2/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4sequential_2/random_rotation/rotation_matrix/sub_1/yш
2sequential_2/random_rotation/rotation_matrix/sub_1Sub'sequential_2/random_rotation/Cast_1:y:0=sequential_2/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/rotation_matrix/sub_1З
0sequential_2/random_rotation/rotation_matrix/mulMul4sequential_2/random_rotation/rotation_matrix/Cos:y:06sequential_2/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_2/random_rotation/rotation_matrix/mulћ
0sequential_2/random_rotation/rotation_matrix/SinSin1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_2/random_rotation/rotation_matrix/Sin±
4sequential_2/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4sequential_2/random_rotation/rotation_matrix/sub_2/yц
2sequential_2/random_rotation/rotation_matrix/sub_2Sub%sequential_2/random_rotation/Cast:y:0=sequential_2/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/rotation_matrix/sub_2Л
2sequential_2/random_rotation/rotation_matrix/mul_1Mul4sequential_2/random_rotation/rotation_matrix/Sin:y:06sequential_2/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/mul_1Л
2sequential_2/random_rotation/rotation_matrix/sub_3Sub4sequential_2/random_rotation/rotation_matrix/mul:z:06sequential_2/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/sub_3Л
2sequential_2/random_rotation/rotation_matrix/sub_4Sub4sequential_2/random_rotation/rotation_matrix/sub:z:06sequential_2/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/sub_4µ
6sequential_2/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @28
6sequential_2/random_rotation/rotation_matrix/truediv/yЮ
4sequential_2/random_rotation/rotation_matrix/truedivRealDiv6sequential_2/random_rotation/rotation_matrix/sub_4:z:0?sequential_2/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€26
4sequential_2/random_rotation/rotation_matrix/truediv±
4sequential_2/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4sequential_2/random_rotation/rotation_matrix/sub_5/yц
2sequential_2/random_rotation/rotation_matrix/sub_5Sub%sequential_2/random_rotation/Cast:y:0=sequential_2/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/rotation_matrix/sub_5–
2sequential_2/random_rotation/rotation_matrix/Sin_1Sin1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Sin_1±
4sequential_2/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4sequential_2/random_rotation/rotation_matrix/sub_6/yш
2sequential_2/random_rotation/rotation_matrix/sub_6Sub'sequential_2/random_rotation/Cast_1:y:0=sequential_2/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/rotation_matrix/sub_6Н
2sequential_2/random_rotation/rotation_matrix/mul_2Mul6sequential_2/random_rotation/rotation_matrix/Sin_1:y:06sequential_2/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/mul_2–
2sequential_2/random_rotation/rotation_matrix/Cos_1Cos1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Cos_1±
4sequential_2/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?26
4sequential_2/random_rotation/rotation_matrix/sub_7/yц
2sequential_2/random_rotation/rotation_matrix/sub_7Sub%sequential_2/random_rotation/Cast:y:0=sequential_2/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation/rotation_matrix/sub_7Н
2sequential_2/random_rotation/rotation_matrix/mul_3Mul6sequential_2/random_rotation/rotation_matrix/Cos_1:y:06sequential_2/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/mul_3Л
0sequential_2/random_rotation/rotation_matrix/addAddV26sequential_2/random_rotation/rotation_matrix/mul_2:z:06sequential_2/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_2/random_rotation/rotation_matrix/addЛ
2sequential_2/random_rotation/rotation_matrix/sub_8Sub6sequential_2/random_rotation/rotation_matrix/sub_5:z:04sequential_2/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/sub_8є
8sequential_2/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_2/random_rotation/rotation_matrix/truediv_1/y§
6sequential_2/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_2/random_rotation/rotation_matrix/sub_8:z:0Asequential_2/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€28
6sequential_2/random_rotation/rotation_matrix/truediv_1…
2sequential_2/random_rotation/rotation_matrix/ShapeShape1sequential_2/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:24
2sequential_2/random_rotation/rotation_matrix/Shapeќ
@sequential_2/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@sequential_2/random_rotation/rotation_matrix/strided_slice/stack“
Bsequential_2/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice/stack_1“
Bsequential_2/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice/stack_2р
:sequential_2/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_2/random_rotation/rotation_matrix/Shape:output:0Isequential_2/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_2/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_2/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:sequential_2/random_rotation/rotation_matrix/strided_slice–
2sequential_2/random_rotation/rotation_matrix/Cos_2Cos1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Cos_2ў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_1/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_2•
<sequential_2/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_2/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_1–
2sequential_2/random_rotation/rotation_matrix/Sin_2Sin1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Sin_2ў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_2/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_2•
<sequential_2/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_2/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_2д
0sequential_2/random_rotation/rotation_matrix/NegNegEsequential_2/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_2/random_rotation/rotation_matrix/Negў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_3/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_2І
<sequential_2/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_2/random_rotation/rotation_matrix/truediv:z:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_3–
2sequential_2/random_rotation/rotation_matrix/Sin_3Sin1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Sin_3ў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_4/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_2•
<sequential_2/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_2/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_4–
2sequential_2/random_rotation/rotation_matrix/Cos_3Cos1sequential_2/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/Cos_3ў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_5/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_2•
<sequential_2/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_2/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_5ў
Bsequential_2/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_2/random_rotation/rotation_matrix/strided_slice_6/stackЁ
Dsequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_1Ё
Dsequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_2©
<sequential_2/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_2/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_2/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_2/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_2/random_rotation/rotation_matrix/strided_slice_6ґ
8sequential_2/random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_2/random_rotation/rotation_matrix/zeros/mul/y†
6sequential_2/random_rotation/rotation_matrix/zeros/mulMulCsequential_2/random_rotation/rotation_matrix/strided_slice:output:0Asequential_2/random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 28
6sequential_2/random_rotation/rotation_matrix/zeros/mulє
9sequential_2/random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2;
9sequential_2/random_rotation/rotation_matrix/zeros/Less/yЫ
7sequential_2/random_rotation/rotation_matrix/zeros/LessLess:sequential_2/random_rotation/rotation_matrix/zeros/mul:z:0Bsequential_2/random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 29
7sequential_2/random_rotation/rotation_matrix/zeros/LessЉ
;sequential_2/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_2/random_rotation/rotation_matrix/zeros/packed/1Ј
9sequential_2/random_rotation/rotation_matrix/zeros/packedPackCsequential_2/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_2/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2;
9sequential_2/random_rotation/rotation_matrix/zeros/packedє
8sequential_2/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8sequential_2/random_rotation/rotation_matrix/zeros/Const©
2sequential_2/random_rotation/rotation_matrix/zerosFillBsequential_2/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_2/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€24
2sequential_2/random_rotation/rotation_matrix/zerosґ
8sequential_2/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_2/random_rotation/rotation_matrix/concat/axis 
3sequential_2/random_rotation/rotation_matrix/concatConcatV2Esequential_2/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_2/random_rotation/rotation_matrix/Neg:y:0Esequential_2/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_2/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_2/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_2/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_2/random_rotation/rotation_matrix/zeros:output:0Asequential_2/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€25
3sequential_2/random_rotation/rotation_matrix/concatЌ
,sequential_2/random_rotation/transform/ShapeShapeAsequential_2/random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2.
,sequential_2/random_rotation/transform/Shape¬
:sequential_2/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_rotation/transform/strided_slice/stack∆
<sequential_2/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_rotation/transform/strided_slice/stack_1∆
<sequential_2/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_rotation/transform/strided_slice/stack_2Є
4sequential_2/random_rotation/transform/strided_sliceStridedSlice5sequential_2/random_rotation/transform/Shape:output:0Csequential_2/random_rotation/transform/strided_slice/stack:output:0Esequential_2/random_rotation/transform/strided_slice/stack_1:output:0Esequential_2/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4sequential_2/random_rotation/transform/strided_sliceЂ
1sequential_2/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_2/random_rotation/transform/fill_valueХ
Asequential_2/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Asequential_2/random_flip/stateless_random_flip_left_right/add:z:0<sequential_2/random_rotation/rotation_matrix/concat:output:0=sequential_2/random_rotation/transform/strided_slice:output:0:sequential_2/random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2C
Asequential_2/random_rotation/transform/ImageProjectiveTransformV3∆
sequential_2/random_zoom/ShapeShapeVsequential_2/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2 
sequential_2/random_zoom/Shape¶
,sequential_2/random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_2/random_zoom/strided_slice/stack™
.sequential_2/random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_2/random_zoom/strided_slice/stack_1™
.sequential_2/random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_2/random_zoom/strided_slice/stack_2ш
&sequential_2/random_zoom/strided_sliceStridedSlice'sequential_2/random_zoom/Shape:output:05sequential_2/random_zoom/strided_slice/stack:output:07sequential_2/random_zoom/strided_slice/stack_1:output:07sequential_2/random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_2/random_zoom/strided_slice≥
.sequential_2/random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€20
.sequential_2/random_zoom/strided_slice_1/stackЈ
0sequential_2/random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€22
0sequential_2/random_zoom/strided_slice_1/stack_1Ѓ
0sequential_2/random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom/strided_slice_1/stack_2В
(sequential_2/random_zoom/strided_slice_1StridedSlice'sequential_2/random_zoom/Shape:output:07sequential_2/random_zoom/strided_slice_1/stack:output:09sequential_2/random_zoom/strided_slice_1/stack_1:output:09sequential_2/random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_2/random_zoom/strided_slice_1©
sequential_2/random_zoom/CastCast1sequential_2/random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential_2/random_zoom/Cast≥
.sequential_2/random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€20
.sequential_2/random_zoom/strided_slice_2/stackЈ
0sequential_2/random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€22
0sequential_2/random_zoom/strided_slice_2/stack_1Ѓ
0sequential_2/random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom/strided_slice_2/stack_2В
(sequential_2/random_zoom/strided_slice_2StridedSlice'sequential_2/random_zoom/Shape:output:07sequential_2/random_zoom/strided_slice_2/stack:output:09sequential_2/random_zoom/strided_slice_2/stack_1:output:09sequential_2/random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_2/random_zoom/strided_slice_2≠
sequential_2/random_zoom/Cast_1Cast1sequential_2/random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_2/random_zoom/Cast_1®
1sequential_2/random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1sequential_2/random_zoom/stateful_uniform/shape/1Е
/sequential_2/random_zoom/stateful_uniform/shapePack/sequential_2/random_zoom/strided_slice:output:0:sequential_2/random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:21
/sequential_2/random_zoom/stateful_uniform/shape£
-sequential_2/random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2/
-sequential_2/random_zoom/stateful_uniform/min£
-sequential_2/random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?2/
-sequential_2/random_zoom/stateful_uniform/maxђ
/sequential_2/random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/random_zoom/stateful_uniform/Constэ
.sequential_2/random_zoom/stateful_uniform/ProdProd8sequential_2/random_zoom/stateful_uniform/shape:output:08sequential_2/random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 20
.sequential_2/random_zoom/stateful_uniform/Prod¶
0sequential_2/random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_2/random_zoom/stateful_uniform/Cast/x’
0sequential_2/random_zoom/stateful_uniform/Cast_1Cast7sequential_2/random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 22
0sequential_2/random_zoom/stateful_uniform/Cast_1÷
8sequential_2/random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkipAsequential_2_random_zoom_stateful_uniform_rngreadandskip_resource9sequential_2/random_zoom/stateful_uniform/Cast/x:output:04sequential_2/random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2:
8sequential_2/random_zoom/stateful_uniform/RngReadAndSkip»
=sequential_2/random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_2/random_zoom/stateful_uniform/strided_slice/stackћ
?sequential_2/random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_2/random_zoom/stateful_uniform/strided_slice/stack_1ћ
?sequential_2/random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_2/random_zoom/stateful_uniform/strided_slice/stack_2д
7sequential_2/random_zoom/stateful_uniform/strided_sliceStridedSlice@sequential_2/random_zoom/stateful_uniform/RngReadAndSkip:value:0Fsequential_2/random_zoom/stateful_uniform/strided_slice/stack:output:0Hsequential_2/random_zoom/stateful_uniform/strided_slice/stack_1:output:0Hsequential_2/random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask29
7sequential_2/random_zoom/stateful_uniform/strided_sliceд
1sequential_2/random_zoom/stateful_uniform/BitcastBitcast@sequential_2/random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type023
1sequential_2/random_zoom/stateful_uniform/Bitcastћ
?sequential_2/random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_2/random_zoom/stateful_uniform/strided_slice_1/stack–
Asequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_1–
Asequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_2№
9sequential_2/random_zoom/stateful_uniform/strided_slice_1StridedSlice@sequential_2/random_zoom/stateful_uniform/RngReadAndSkip:value:0Hsequential_2/random_zoom/stateful_uniform/strided_slice_1/stack:output:0Jsequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0Jsequential_2/random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2;
9sequential_2/random_zoom/stateful_uniform/strided_slice_1к
3sequential_2/random_zoom/stateful_uniform/Bitcast_1BitcastBsequential_2/random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type025
3sequential_2/random_zoom/stateful_uniform/Bitcast_1“
Fsequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2H
Fsequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg“
Bsequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV28sequential_2/random_zoom/stateful_uniform/shape:output:0<sequential_2/random_zoom/stateful_uniform/Bitcast_1:output:0:sequential_2/random_zoom/stateful_uniform/Bitcast:output:0Osequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2D
Bsequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2ц
-sequential_2/random_zoom/stateful_uniform/subSub6sequential_2/random_zoom/stateful_uniform/max:output:06sequential_2/random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2/
-sequential_2/random_zoom/stateful_uniform/subЧ
-sequential_2/random_zoom/stateful_uniform/mulMulKsequential_2/random_zoom/stateful_uniform/StatelessRandomUniformV2:output:01sequential_2/random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-sequential_2/random_zoom/stateful_uniform/mulь
)sequential_2/random_zoom/stateful_uniformAddV21sequential_2/random_zoom/stateful_uniform/mul:z:06sequential_2/random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)sequential_2/random_zoom/stateful_uniformО
$sequential_2/random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_2/random_zoom/concat/axisЦ
sequential_2/random_zoom/concatConcatV2-sequential_2/random_zoom/stateful_uniform:z:0-sequential_2/random_zoom/stateful_uniform:z:0-sequential_2/random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2!
sequential_2/random_zoom/concat∞
*sequential_2/random_zoom/zoom_matrix/ShapeShape(sequential_2/random_zoom/concat:output:0*
T0*
_output_shapes
:2,
*sequential_2/random_zoom/zoom_matrix/ShapeЊ
8sequential_2/random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_2/random_zoom/zoom_matrix/strided_slice/stack¬
:sequential_2/random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom/zoom_matrix/strided_slice/stack_1¬
:sequential_2/random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom/zoom_matrix/strided_slice/stack_2ј
2sequential_2/random_zoom/zoom_matrix/strided_sliceStridedSlice3sequential_2/random_zoom/zoom_matrix/Shape:output:0Asequential_2/random_zoom/zoom_matrix/strided_slice/stack:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice/stack_1:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_2/random_zoom/zoom_matrix/strided_sliceЭ
*sequential_2/random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2,
*sequential_2/random_zoom/zoom_matrix/sub/y÷
(sequential_2/random_zoom/zoom_matrix/subSub#sequential_2/random_zoom/Cast_1:y:03sequential_2/random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2*
(sequential_2/random_zoom/zoom_matrix/sub•
.sequential_2/random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.sequential_2/random_zoom/zoom_matrix/truediv/yп
,sequential_2/random_zoom/zoom_matrix/truedivRealDiv,sequential_2/random_zoom/zoom_matrix/sub:z:07sequential_2/random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2.
,sequential_2/random_zoom/zoom_matrix/truedivЌ
:sequential_2/random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2<
:sequential_2/random_zoom/zoom_matrix/strided_slice_1/stack—
<sequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_1—
<sequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_2З
4sequential_2/random_zoom/zoom_matrix/strided_slice_1StridedSlice(sequential_2/random_zoom/concat:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice_1/stack:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_1:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_2/random_zoom/zoom_matrix/strided_slice_1°
,sequential_2/random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,sequential_2/random_zoom/zoom_matrix/sub_1/xЗ
*sequential_2/random_zoom/zoom_matrix/sub_1Sub5sequential_2/random_zoom/zoom_matrix/sub_1/x:output:0=sequential_2/random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_2/random_zoom/zoom_matrix/sub_1п
(sequential_2/random_zoom/zoom_matrix/mulMul0sequential_2/random_zoom/zoom_matrix/truediv:z:0.sequential_2/random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2*
(sequential_2/random_zoom/zoom_matrix/mul°
,sequential_2/random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,sequential_2/random_zoom/zoom_matrix/sub_2/yЏ
*sequential_2/random_zoom/zoom_matrix/sub_2Sub!sequential_2/random_zoom/Cast:y:05sequential_2/random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2,
*sequential_2/random_zoom/zoom_matrix/sub_2©
0sequential_2/random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_2/random_zoom/zoom_matrix/truediv_1/yч
.sequential_2/random_zoom/zoom_matrix/truediv_1RealDiv.sequential_2/random_zoom/zoom_matrix/sub_2:z:09sequential_2/random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 20
.sequential_2/random_zoom/zoom_matrix/truediv_1Ќ
:sequential_2/random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2<
:sequential_2/random_zoom/zoom_matrix/strided_slice_2/stack—
<sequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_1—
<sequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_2З
4sequential_2/random_zoom/zoom_matrix/strided_slice_2StridedSlice(sequential_2/random_zoom/concat:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice_2/stack:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_1:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_2/random_zoom/zoom_matrix/strided_slice_2°
,sequential_2/random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,sequential_2/random_zoom/zoom_matrix/sub_3/xЗ
*sequential_2/random_zoom/zoom_matrix/sub_3Sub5sequential_2/random_zoom/zoom_matrix/sub_3/x:output:0=sequential_2/random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_2/random_zoom/zoom_matrix/sub_3х
*sequential_2/random_zoom/zoom_matrix/mul_1Mul2sequential_2/random_zoom/zoom_matrix/truediv_1:z:0.sequential_2/random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_2/random_zoom/zoom_matrix/mul_1Ќ
:sequential_2/random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2<
:sequential_2/random_zoom/zoom_matrix/strided_slice_3/stack—
<sequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_1—
<sequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_2З
4sequential_2/random_zoom/zoom_matrix/strided_slice_3StridedSlice(sequential_2/random_zoom/concat:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice_3/stack:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_1:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_2/random_zoom/zoom_matrix/strided_slice_3¶
0sequential_2/random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_2/random_zoom/zoom_matrix/zeros/mul/yА
.sequential_2/random_zoom/zoom_matrix/zeros/mulMul;sequential_2/random_zoom/zoom_matrix/strided_slice:output:09sequential_2/random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 20
.sequential_2/random_zoom/zoom_matrix/zeros/mul©
1sequential_2/random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и23
1sequential_2/random_zoom/zoom_matrix/zeros/Less/yы
/sequential_2/random_zoom/zoom_matrix/zeros/LessLess2sequential_2/random_zoom/zoom_matrix/zeros/mul:z:0:sequential_2/random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 21
/sequential_2/random_zoom/zoom_matrix/zeros/Lessђ
3sequential_2/random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_2/random_zoom/zoom_matrix/zeros/packed/1Ч
1sequential_2/random_zoom/zoom_matrix/zeros/packedPack;sequential_2/random_zoom/zoom_matrix/strided_slice:output:0<sequential_2/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_2/random_zoom/zoom_matrix/zeros/packed©
0sequential_2/random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_2/random_zoom/zoom_matrix/zeros/ConstЙ
*sequential_2/random_zoom/zoom_matrix/zerosFill:sequential_2/random_zoom/zoom_matrix/zeros/packed:output:09sequential_2/random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*sequential_2/random_zoom/zoom_matrix/zeros™
2sequential_2/random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom/zoom_matrix/zeros_1/mul/yЖ
0sequential_2/random_zoom/zoom_matrix/zeros_1/mulMul;sequential_2/random_zoom/zoom_matrix/strided_slice:output:0;sequential_2/random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom/zoom_matrix/zeros_1/mul≠
3sequential_2/random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и25
3sequential_2/random_zoom/zoom_matrix/zeros_1/Less/yГ
1sequential_2/random_zoom/zoom_matrix/zeros_1/LessLess4sequential_2/random_zoom/zoom_matrix/zeros_1/mul:z:0<sequential_2/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_2/random_zoom/zoom_matrix/zeros_1/Less∞
5sequential_2/random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/random_zoom/zoom_matrix/zeros_1/packed/1Э
3sequential_2/random_zoom/zoom_matrix/zeros_1/packedPack;sequential_2/random_zoom/zoom_matrix/strided_slice:output:0>sequential_2/random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_2/random_zoom/zoom_matrix/zeros_1/packed≠
2sequential_2/random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_2/random_zoom/zoom_matrix/zeros_1/ConstС
,sequential_2/random_zoom/zoom_matrix/zeros_1Fill<sequential_2/random_zoom/zoom_matrix/zeros_1/packed:output:0;sequential_2/random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_2/random_zoom/zoom_matrix/zeros_1Ќ
:sequential_2/random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2<
:sequential_2/random_zoom/zoom_matrix/strided_slice_4/stack—
<sequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_1—
<sequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_2З
4sequential_2/random_zoom/zoom_matrix/strided_slice_4StridedSlice(sequential_2/random_zoom/concat:output:0Csequential_2/random_zoom/zoom_matrix/strided_slice_4/stack:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_1:output:0Esequential_2/random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_2/random_zoom/zoom_matrix/strided_slice_4™
2sequential_2/random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom/zoom_matrix/zeros_2/mul/yЖ
0sequential_2/random_zoom/zoom_matrix/zeros_2/mulMul;sequential_2/random_zoom/zoom_matrix/strided_slice:output:0;sequential_2/random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom/zoom_matrix/zeros_2/mul≠
3sequential_2/random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и25
3sequential_2/random_zoom/zoom_matrix/zeros_2/Less/yГ
1sequential_2/random_zoom/zoom_matrix/zeros_2/LessLess4sequential_2/random_zoom/zoom_matrix/zeros_2/mul:z:0<sequential_2/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_2/random_zoom/zoom_matrix/zeros_2/Less∞
5sequential_2/random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/random_zoom/zoom_matrix/zeros_2/packed/1Э
3sequential_2/random_zoom/zoom_matrix/zeros_2/packedPack;sequential_2/random_zoom/zoom_matrix/strided_slice:output:0>sequential_2/random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_2/random_zoom/zoom_matrix/zeros_2/packed≠
2sequential_2/random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_2/random_zoom/zoom_matrix/zeros_2/ConstС
,sequential_2/random_zoom/zoom_matrix/zeros_2Fill<sequential_2/random_zoom/zoom_matrix/zeros_2/packed:output:0;sequential_2/random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_2/random_zoom/zoom_matrix/zeros_2¶
0sequential_2/random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_2/random_zoom/zoom_matrix/concat/axisџ
+sequential_2/random_zoom/zoom_matrix/concatConcatV2=sequential_2/random_zoom/zoom_matrix/strided_slice_3:output:03sequential_2/random_zoom/zoom_matrix/zeros:output:0,sequential_2/random_zoom/zoom_matrix/mul:z:05sequential_2/random_zoom/zoom_matrix/zeros_1:output:0=sequential_2/random_zoom/zoom_matrix/strided_slice_4:output:0.sequential_2/random_zoom/zoom_matrix/mul_1:z:05sequential_2/random_zoom/zoom_matrix/zeros_2:output:09sequential_2/random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2-
+sequential_2/random_zoom/zoom_matrix/concatЏ
(sequential_2/random_zoom/transform/ShapeShapeVsequential_2/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2*
(sequential_2/random_zoom/transform/ShapeЇ
6sequential_2/random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_zoom/transform/strided_slice/stackЊ
8sequential_2/random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/random_zoom/transform/strided_slice/stack_1Њ
8sequential_2/random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/random_zoom/transform/strided_slice/stack_2†
0sequential_2/random_zoom/transform/strided_sliceStridedSlice1sequential_2/random_zoom/transform/Shape:output:0?sequential_2/random_zoom/transform/strided_slice/stack:output:0Asequential_2/random_zoom/transform/strided_slice/stack_1:output:0Asequential_2/random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:22
0sequential_2/random_zoom/transform/strided_slice£
-sequential_2/random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-sequential_2/random_zoom/transform/fill_valueТ
=sequential_2/random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Vsequential_2/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:04sequential_2/random_zoom/zoom_matrix/concat:output:09sequential_2/random_zoom/transform/strided_slice:output:06sequential_2/random_zoom/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2?
=sequential_2/random_zoom/transform/ImageProjectiveTransformV3m
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/x÷
rescaling_3/mulMulRsequential_2/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
rescaling_3/mulЫ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
rescaling_3/add∞
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOpЌ
conv2d_6/Conv2DConv2Drescaling_3/add:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі*
paddingSAME*
strides
2
conv2d_6/Conv2DІ
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOpЃ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
conv2d_6/BiasAdd}
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
conv2d_6/Relu«
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ZZ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_6/MaxPool∞
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_7/Conv2D/ReadVariableOpЎ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ *
paddingSAME*
strides
2
conv2d_7/Conv2DІ
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_7/BiasAdd/ReadVariableOpђ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
conv2d_7/BiasAdd{
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
conv2d_7/Relu«
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-- *
ksize
*
paddingVALID*
strides
2
max_pooling2d_7/MaxPool∞
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_8/Conv2D/ReadVariableOpЎ
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@*
paddingSAME*
strides
2
conv2d_8/Conv2DІ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpђ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
conv2d_8/BiasAdd{
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
conv2d_8/Relu«
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/dropout/Const≠
dropout/dropout/MulMul max_pooling2d_8/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/dropout/Mul~
dropout/dropout/ShapeShape max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape‘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2 
dropout/dropout/GreaterEqual/yж
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/dropout/CastҐ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/dropout/Mul_1s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ y  2
flatten_2/ConstЪ
flatten_2/ReshapeReshapedropout/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2
flatten_2/Reshape®
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*!
_output_shapes
:АтА*
dtype02
dense_4/MatMul/ReadVariableOp†
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/MatMul•
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_4/BiasAdd/ReadVariableOpҐ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/Relu¶
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype02
dense_5/MatMul/ReadVariableOpЯ
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
dense_5/BiasAdds
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityі
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOpB^sequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkipi^sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgp^sequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter=^sequential_2/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_2/random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€іі: : : : : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2Ж
Asequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkipAsequential_2/random_flip/stateful_uniform_full_int/RngReadAndSkip2‘
hsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlghsequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2в
osequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterosequential_2/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2|
<sequential_2/random_rotation/stateful_uniform/RngReadAndSkip<sequential_2/random_rotation/stateful_uniform/RngReadAndSkip2t
8sequential_2/random_zoom/stateful_uniform/RngReadAndSkip8sequential_2/random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
–
E
)__inference_flatten_2_layer_call_fn_27521

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Ат* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_262102
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
§
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_27638

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
т>
Й
G__inference_sequential_3_layer_call_and_return_conditional_losses_26651

inputsA
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource: 6
(conv2d_7_biasadd_readvariableop_resource: A
'conv2d_8_conv2d_readvariableop_resource: @6
(conv2d_8_biasadd_readvariableop_resource:@;
&dense_4_matmul_readvariableop_resource:АтА6
'dense_4_biasadd_readvariableop_resource:	А9
&dense_5_matmul_readvariableop_resource:	А	5
'dense_5_biasadd_readvariableop_resource:	
identityИҐconv2d_6/BiasAdd/ReadVariableOpҐconv2d_6/Conv2D/ReadVariableOpҐconv2d_7/BiasAdd/ReadVariableOpҐconv2d_7/Conv2D/ReadVariableOpҐconv2d_8/BiasAdd/ReadVariableOpҐconv2d_8/Conv2D/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xК
rescaling_3/mulMulinputsrescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
rescaling_3/mulЫ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
rescaling_3/add∞
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOpЌ
conv2d_6/Conv2DConv2Drescaling_3/add:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі*
paddingSAME*
strides
2
conv2d_6/Conv2DІ
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOpЃ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
conv2d_6/BiasAdd}
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
conv2d_6/Relu«
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ZZ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_6/MaxPool∞
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_7/Conv2D/ReadVariableOpЎ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ *
paddingSAME*
strides
2
conv2d_7/Conv2DІ
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_7/BiasAdd/ReadVariableOpђ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
conv2d_7/BiasAdd{
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
conv2d_7/Relu«
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-- *
ksize
*
paddingVALID*
strides
2
max_pooling2d_7/MaxPool∞
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_8/Conv2D/ReadVariableOpЎ
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@*
paddingSAME*
strides
2
conv2d_8/Conv2DІ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpђ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
conv2d_8/BiasAdd{
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
conv2d_8/Relu«
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPoolМ
dropout/IdentityIdentity max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ y  2
flatten_2/ConstЪ
flatten_2/ReshapeReshapedropout/Identity:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2
flatten_2/Reshape®
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*!
_output_shapes
:АтА*
dtype02
dense_4/MatMul/ReadVariableOp†
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/MatMul•
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_4/BiasAdd/ReadVariableOpҐ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_4/Relu¶
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype02
dense_5/MatMul/ReadVariableOpЯ
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
dense_5/BiasAdds
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

IdentityЩ
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
аf
ь
F__inference_random_flip_layer_call_and_return_conditional_losses_25979

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgҐVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterМ
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shapeМ
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Constљ
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/ProdЖ
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x•
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1Ж
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip®
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stackђ
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1ђ
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2Д
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_sliceі
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcastђ
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack∞
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1∞
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ь
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1Ї
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1А
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/algЃ
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_likeБ
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2И
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice’
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€іі25
3stateless_random_flip_left_right/control_dependencyЉ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shapeґ
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stackЇ
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1Ї
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2®
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceс
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape√
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min√
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2?
=stateless_random_flip_left_right/stateless_random_uniform/maxК
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterђ
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg 
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:€€€€€€€€€2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2ґ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/sub”
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2?
=stateless_random_flip_left_right/stateless_random_uniform/mulЄ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2;
9stateless_random_flip_left_right/stateless_random_uniform¶
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1¶
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2¶
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3А
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shapeС
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(stateless_random_flip_left_right/Reshape∆
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&stateless_random_flip_left_right/Roundђ
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axisЩ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2,
*stateless_random_flip_left_right/ReverseV2р
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2&
$stateless_random_flip_left_right/mulХ
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2(
&stateless_random_flip_left_right/sub/xк
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2&
$stateless_random_flip_left_right/subы
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2(
&stateless_random_flip_left_right/mul_1з
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі2&
$stateless_random_flip_left_right/addН
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity§
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2Ґ
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
І7
І
G__inference_sequential_3_layer_call_and_return_conditional_losses_26576
sequential_2_input 
sequential_2_26537:	 
sequential_2_26539:	 
sequential_2_26541:	(
conv2d_6_26545:
conv2d_6_26547:(
conv2d_7_26551: 
conv2d_7_26553: (
conv2d_8_26557: @
conv2d_8_26559:@"
dense_4_26565:АтА
dense_4_26567:	А 
dense_5_26570:	А	
dense_5_26572:	
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallћ
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputsequential_2_26537sequential_2_26539sequential_2_26541*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_260042&
$sequential_2/StatefulPartitionedCallН
rescaling_3/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_261262
rescaling_3/PartitionedCallє
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$rescaling_3/PartitionedCall:output:0conv2d_6_26545conv2d_6_26547*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_261392"
 conv2d_6/StatefulPartitionedCallУ
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_261492!
max_pooling2d_6/PartitionedCallї
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_26551conv2d_7_26553*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_261622"
 conv2d_7/StatefulPartitionedCallУ
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_261722!
max_pooling2d_7/PartitionedCallї
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_26557conv2d_8_26559*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_261852"
 conv2d_8/StatefulPartitionedCallУ
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_261952!
max_pooling2d_8/PartitionedCallТ
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_263152!
dropout/StatefulPartitionedCallъ
flatten_2/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Ат* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_262102
flatten_2/PartitionedCall©
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_26565dense_4_26567*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_262232!
dense_4/StatefulPartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_26570dense_5_26572*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_262392!
dense_5/StatefulPartitionedCallГ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityƒ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€іі: : : : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
§
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_25639

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ф2
м
G__inference_sequential_3_layer_call_and_return_conditional_losses_26246

inputs(
conv2d_6_26140:
conv2d_6_26142:(
conv2d_7_26163: 
conv2d_7_26165: (
conv2d_8_26186: @
conv2d_8_26188:@"
dense_4_26224:АтА
dense_4_26226:	А 
dense_5_26240:	А	
dense_5_26242:	
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallй
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_256482
sequential_2/PartitionedCallЕ
rescaling_3/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_261262
rescaling_3/PartitionedCallє
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$rescaling_3/PartitionedCall:output:0conv2d_6_26140conv2d_6_26142*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_261392"
 conv2d_6/StatefulPartitionedCallУ
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_261492!
max_pooling2d_6/PartitionedCallї
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_26163conv2d_7_26165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_261622"
 conv2d_7/StatefulPartitionedCallУ
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_261722!
max_pooling2d_7/PartitionedCallї
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_26186conv2d_8_26188*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_261852"
 conv2d_8/StatefulPartitionedCallУ
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_261952!
max_pooling2d_8/PartitionedCallъ
dropout/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_262022
dropout/PartitionedCallт
flatten_2/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Ат* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_262102
flatten_2/PartitionedCall©
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_26224dense_4_26226*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_262232!
dense_4/StatefulPartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_26240dense_5_26242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_262392!
dense_5/StatefulPartitionedCallГ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityы
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
Ь
Ъ
,__inference_sequential_3_layer_call_fn_26269
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:АтА
	unknown_6:	А
	unknown_7:	А	
	unknown_8:	
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_262462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
љ
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_26195

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€--@:W S
/
_output_shapes
:€€€€€€€€€--@
 
_user_specified_nameinputs
∞†
√
J__inference_random_rotation_layer_call_and_return_conditional_losses_27760

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceБ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
strided_slice_1/stackЕ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_2/stackЕ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њ2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЩ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xК
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1ў
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipЦ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackЪ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1Ъ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2ќ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЩ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/BitcastЪ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackЮ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1Ю
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2∆
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Я
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1†
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algЄ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2+
)stateful_uniform/StatelessRandomUniformV2Т
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/subѓ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
stateful_uniform/mulФ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_1/yД
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1У
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_2/yВ
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2Ч
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_1Ч
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_3Ч
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/y™
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_5/yВ
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_6/yД
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6Щ
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
rotation_matrix/sub_7/yВ
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7Щ
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/mul_3Ч
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/addЧ
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y∞
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/ShapeФ
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stackШ
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1Ш
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2¬
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_2Я
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stack£
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1£
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2ч
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_2Я
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stack£
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1£
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2ч
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2Н
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/NegЯ
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stack£
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1£
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2щ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Sin_3Я
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stack£
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1£
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2ч
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2
rotation_matrix/Cos_3Я
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stack£
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1£
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2ч
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5Я
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stack£
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1£
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2ы
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6|
rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/zeros/mul/yђ
rotation_matrix/zeros/mulMul&rotation_matrix/strided_slice:output:0$rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/mul
rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
rotation_matrix/zeros/Less/yІ
rotation_matrix/zeros/LessLessrotation_matrix/zeros/mul:z:0%rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/LessВ
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1√
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constµ
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axis®
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/ShapeИ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackМ
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1М
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2К
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value…
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3Ю
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
и
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_26210

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ y  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€Ат2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
љ
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27473

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€--@:W S
/
_output_shapes
:€€€€€€€€€--@
 
_user_specified_nameinputs
«
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_25648

inputs
identityж
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_256332
random_flip/PartitionedCallР
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_256392!
random_rotation/PartitionedCallИ
random_zoom/PartitionedCallPartitionedCall(random_rotation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_256452
random_zoom/PartitionedCallВ
IdentityIdentity$random_zoom/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
Ѕ
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27393

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€ZZ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
и
G
+__inference_random_zoom_layer_call_fn_27895

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_256452
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
й
ь
C__inference_conv2d_8_layer_call_and_return_conditional_losses_26185

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€--@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-- 
 
_user_specified_nameinputs
Р
ч
B__inference_dense_4_layer_call_and_return_conditional_losses_26223

inputs3
matmul_readvariableop_resource:АтА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АтА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Ат: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€Ат
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27388

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_26053

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
’
K
/__inference_max_pooling2d_7_layer_call_fn_27438

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_260752
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Х
з
,__inference_sequential_3_layer_call_fn_26498
sequential_2_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:АтА
	unknown_9:	А

unknown_10:	А	

unknown_11:	
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_264382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€іі: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€іі
,
_user_specified_namesequential_2_input
П
`
B__inference_dropout_layer_call_and_return_conditional_losses_26202

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27428

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
љ
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27433

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€-- *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€-- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ZZ :W S
/
_output_shapes
:€€€€€€€€€ZZ 
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_26097

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_26075

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
и
G
+__inference_rescaling_3_layer_call_fn_27363

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_261262
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ї
`
'__inference_dropout_layer_call_fn_27510

inputs
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_263152
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ц

/__inference_random_rotation_layer_call_fn_27772

inputs
unknown:	
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_259082
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
й
ь
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27454

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€--@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€--@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€--@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-- 
 
_user_specified_nameinputs
†
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_27776

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
†
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_25645

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
а
є
,__inference_sequential_2_layer_call_fn_26024
random_flip_input
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_260042
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€іі: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:€€€€€€€€€іі
+
_user_specified_namerandom_flip_input
к
H
,__inference_sequential_2_layer_call_fn_27339

inputs
identityѕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_256482
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
Л
S
,__inference_sequential_2_layer_call_fn_25651
random_flip_input
identityЏ
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_256482
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:d `
1
_output_shapes
:€€€€€€€€€іі
+
_user_specified_namerandom_flip_input
х
ь
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27374

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іі2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іі: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
й
ь
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27414

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ZZ
 
_user_specified_nameinputs
и
K
/__inference_max_pooling2d_8_layer_call_fn_27483

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_261952
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€--@:W S
/
_output_shapes
:€€€€€€€€€--@
 
_user_specified_nameinputs
Г7
Ы
G__inference_sequential_3_layer_call_and_return_conditional_losses_26438

inputs 
sequential_2_26399:	 
sequential_2_26401:	 
sequential_2_26403:	(
conv2d_6_26407:
conv2d_6_26409:(
conv2d_7_26413: 
conv2d_7_26415: (
conv2d_8_26419: @
conv2d_8_26421:@"
dense_4_26427:АтА
dense_4_26429:	А 
dense_5_26432:	А	
dense_5_26434:	
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallј
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_26399sequential_2_26401sequential_2_26403*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_260042&
$sequential_2/StatefulPartitionedCallН
rescaling_3/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_261262
rescaling_3/PartitionedCallє
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$rescaling_3/PartitionedCall:output:0conv2d_6_26407conv2d_6_26409*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_261392"
 conv2d_6/StatefulPartitionedCallУ
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_261492!
max_pooling2d_6/PartitionedCallї
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_26413conv2d_7_26415*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_261622"
 conv2d_7/StatefulPartitionedCallУ
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_261722!
max_pooling2d_7/PartitionedCallї
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_26419conv2d_8_26421*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_261852"
 conv2d_8/StatefulPartitionedCallУ
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_261952!
max_pooling2d_8/PartitionedCallТ
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_263152!
dropout/StatefulPartitionedCallъ
flatten_2/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Ат* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_262102
flatten_2/PartitionedCall©
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_26427dense_4_26429*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_262232!
dense_4/StatefulPartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_26432dense_5_26434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_262392!
dense_5/StatefulPartitionedCallГ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityƒ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€іі: : : : : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
с
џ
,__inference_sequential_3_layer_call_fn_27044

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:АтА
	unknown_9:	А

unknown_10:	А	

unknown_11:	
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_264382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€іі: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
®
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_27358

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
†
b
F__inference_random_flip_layer_call_and_return_conditional_losses_27564

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
рт
Щ
G__inference_sequential_2_layer_call_and_return_conditional_losses_27334

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	
identityИҐ4random_flip/stateful_uniform_full_int/RngReadAndSkipҐ[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgҐbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterҐ/random_rotation/stateful_uniform/RngReadAndSkipҐ+random_zoom/stateful_uniform/RngReadAndSkip§
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_flip/stateful_uniform_full_int/shape§
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_flip/stateful_uniform_full_int/Constн
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2,
*random_flip/stateful_uniform_full_int/ProdЮ
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_flip/stateful_uniform_full_int/Cast/x…
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_flip/stateful_uniform_full_int/Cast_1¬
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:26
4random_flip/stateful_uniform_full_int/RngReadAndSkipј
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip/stateful_uniform_full_int/strided_slice/stackƒ
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_1ƒ
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice/stack_2ћ
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_flip/stateful_uniform_full_int/strided_sliceЎ
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_flip/stateful_uniform_full_int/Bitcastƒ
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateful_uniform_full_int/strided_slice_1/stack»
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1»
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2ƒ
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_flip/stateful_uniform_full_int/strided_slice_1ё
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_flip/stateful_uniform_full_int/Bitcast_1Ш
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_flip/stateful_uniform_full_int/algц
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2'
%random_flip/stateful_uniform_full_intz
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip/zeros_like±
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip/stackУ
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
random_flip/strided_slice/stackЧ
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!random_flip/strided_slice/stack_1Ч
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!random_flip/strided_slice/stack_2–
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip/strided_sliceн
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€іі2A
?random_flip/stateless_random_flip_left_right/control_dependencyа
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:24
2random_flip/stateless_random_flip_left_right/Shapeќ
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@random_flip/stateless_random_flip_left_right/strided_slice/stack“
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1“
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2р
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:random_flip/stateless_random_flip_left_right/strided_sliceХ
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2M
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapeџ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minџ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxЃ
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::2d
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter–
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2]
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgТ
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0arandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:€€€€€€€€€2`
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2ж
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subГ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2K
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulи
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2G
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformЊ
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Њ
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Њ
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2>
<random_flip/stateless_random_flip_left_right/Reshape/shape/3»
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2<
:random_flip/stateless_random_flip_left_right/Reshape/shapeЅ
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€26
4random_flip/stateless_random_flip_left_right/Reshapeк
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€24
2random_flip/stateless_random_flip_left_right/Roundƒ
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip/stateless_random_flip_left_right/ReverseV2/axis…
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі28
6random_flip/stateless_random_flip_left_right/ReverseV2†
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі22
0random_flip/stateless_random_flip_left_right/mul≠
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2random_flip/stateless_random_flip_left_right/sub/xЪ
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€22
0random_flip/stateless_random_flip_left_right/subЂ
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі24
2random_flip/stateless_random_flip_left_right/mul_1Ч
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі22
0random_flip/stateless_random_flip_left_right/addТ
random_rotation/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation/ShapeФ
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stackШ
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1Ш
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2¬
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice°
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2'
%random_rotation/strided_slice_1/stack•
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2)
'random_rotation/strided_slice_1/stack_1Ь
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2ћ
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1О
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast°
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2'
%random_rotation/strided_slice_2/stack•
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2)
'random_rotation/strided_slice_2/stack_1Ь
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2ћ
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2Т
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1Ѓ
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shapeС
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њ2&
$random_rotation/stateful_uniform/minС
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?2&
$random_rotation/stateful_uniform/maxЪ
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Constў
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/ProdФ
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/xЇ
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1©
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkipґ
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stackЇ
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1Ї
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2Ѓ
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice…
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/BitcastЇ
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stackЊ
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1Њ
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2¶
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1ѕ
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1ј
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algШ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2“
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/subп
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2&
$random_rotation/stateful_uniform/mul‘
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2"
 random_rotation/stateful_uniformУ
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%random_rotation/rotation_matrix/sub/yЊ
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub•
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/CosЧ
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_1/yƒ
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1”
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/mul•
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/SinЧ
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_2/y¬
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2„
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_1„
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_3„
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_4Ы
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/yк
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation/rotation_matrix/truedivЧ
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_5/y¬
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5©
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_1Ч
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_6/yƒ
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6ў
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_2©
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_1Ч
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_7/y¬
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7ў
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_3„
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/add„
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_8Я
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/yр
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation/rotation_matrix/truediv_1Ґ
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shapeі
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stackЄ
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1Є
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2Ґ
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice©
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_2њ
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack√
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1√
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2„
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1©
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_2њ
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack√
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1√
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2„
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2љ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/Negњ
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack√
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1√
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2ў
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3©
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_3њ
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack√
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1√
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2„
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4©
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_3њ
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack√
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1√
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2„
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5њ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack√
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1√
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2џ
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6Ь
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/yм
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mulЯ
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2.
,random_rotation/rotation_matrix/zeros/Less/yз
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/LessҐ
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1Г
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packedЯ
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Constх
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/zerosЬ
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis»
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2(
&random_rotation/rotation_matrix/concat¶
random_rotation/transform/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape®
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stackђ
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1ђ
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2к
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_sliceС
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value«
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV34random_flip/stateless_random_flip_left_right/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3Я
random_zoom/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/ShapeМ
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
random_zoom/strided_slice/stackР
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_1Р
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_2™
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_sliceЩ
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2#
!random_zoom/strided_slice_1/stackЭ
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2%
#random_zoom/strided_slice_1/stack_1Ф
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_2і
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_1В
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/CastЩ
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2#
!random_zoom/strided_slice_2/stackЭ
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2%
#random_zoom/strided_slice_2/stack_1Ф
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_2і
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_2Ж
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast_1О
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$random_zoom/stateful_uniform/shape/1—
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"random_zoom/stateful_uniform/shapeЙ
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2"
 random_zoom/stateful_uniform/minЙ
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?2"
 random_zoom/stateful_uniform/maxТ
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"random_zoom/stateful_uniform/Const…
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2#
!random_zoom/stateful_uniform/ProdМ
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/stateful_uniform/Cast/xЃ
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#random_zoom/stateful_uniform/Cast_1Х
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2-
+random_zoom/stateful_uniform/RngReadAndSkipЃ
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0random_zoom/stateful_uniform/strided_slice/stack≤
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_1≤
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_2Ц
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2,
*random_zoom/stateful_uniform/strided_sliceљ
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02&
$random_zoom/stateful_uniform/Bitcast≤
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice_1/stackґ
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_1ґ
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_2О
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2.
,random_zoom/stateful_uniform/strided_slice_1√
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom/stateful_uniform/Bitcast_1Є
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2;
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algД
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€27
5random_zoom/stateful_uniform/StatelessRandomUniformV2¬
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_zoom/stateful_uniform/subг
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2"
 random_zoom/stateful_uniform/mul»
random_zoom/stateful_uniformAddV2$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/stateful_uniformt
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom/concat/axis’
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/concatЙ
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:2
random_zoom/zoom_matrix/Shape§
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_zoom/zoom_matrix/strided_slice/stack®
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_1®
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_2т
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%random_zoom/zoom_matrix/strided_sliceГ
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
random_zoom/zoom_matrix/sub/yҐ
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/subЛ
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!random_zoom/zoom_matrix/truediv/yї
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2!
random_zoom/zoom_matrix/truediv≥
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_1/stackЈ
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_1/stack_1Ј
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_1/stack_2є
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_1З
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom/zoom_matrix/sub_1/x”
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/zoom_matrix/sub_1ї
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/zoom_matrix/mulЗ
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom/zoom_matrix/sub_2/y¶
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub_2П
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom/zoom_matrix/truediv_1/y√
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/truediv_1≥
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_2/stackЈ
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_2/stack_1Ј
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_2/stack_2є
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_2З
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom/zoom_matrix/sub_3/x”
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/zoom_matrix/sub_3Ѕ
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/zoom_matrix/mul_1≥
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_3/stackЈ
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_3/stack_1Ј
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_3/stack_2є
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_3М
#random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/zeros/mul/yћ
!random_zoom/zoom_matrix/zeros/mulMul.random_zoom/zoom_matrix/strided_slice:output:0,random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/zeros/mulП
$random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2&
$random_zoom/zoom_matrix/zeros/Less/y«
"random_zoom/zoom_matrix/zeros/LessLess%random_zoom/zoom_matrix/zeros/mul:z:0-random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"random_zoom/zoom_matrix/zeros/LessТ
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom/zoom_matrix/zeros/packed/1г
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom/zoom_matrix/zeros/packedП
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#random_zoom/zoom_matrix/zeros/Const’
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom/zoom_matrix/zerosР
%random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_1/mul/y“
#random_zoom/zoom_matrix/zeros_1/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_1/mulУ
&random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&random_zoom/zoom_matrix/zeros_1/Less/yѕ
$random_zoom/zoom_matrix/zeros_1/LessLess'random_zoom/zoom_matrix/zeros_1/mul:z:0/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_1/LessЦ
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_1/packed/1й
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_1/packedУ
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_1/ConstЁ
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom/zoom_matrix/zeros_1≥
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_4/stackЈ
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_4/stack_1Ј
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_4/stack_2є
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_4Р
%random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_2/mul/y“
#random_zoom/zoom_matrix/zeros_2/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_2/mulУ
&random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&random_zoom/zoom_matrix/zeros_2/Less/yѕ
$random_zoom/zoom_matrix/zeros_2/LessLess'random_zoom/zoom_matrix/zeros_2/mul:z:0/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_2/LessЦ
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_2/packed/1й
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_2/packedУ
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_2/ConstЁ
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom/zoom_matrix/zeros_2М
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/concat/axisў
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2 
random_zoom/zoom_matrix/concat≥
random_zoom/transform/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/transform/Shape†
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)random_zoom/transform/strided_slice/stack§
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_1§
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_2“
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#random_zoom/transform/strided_sliceЙ
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 random_zoom/transform/fill_valueƒ
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Irandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR22
0random_zoom/transform/ImageProjectiveTransformV3™
IdentityIdentityErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity®
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip\^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgc^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter0^random_rotation/stateful_uniform/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€іі: : : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2Ї
[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg[random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2»
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterbrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ч
Ш
'__inference_dense_4_layer_call_fn_27541

inputs
unknown:АтА
	unknown_0:	А
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_262232
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Ат: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€Ат
 
_user_specified_nameinputs
®

ф
B__inference_dense_5_layer_call_and_return_conditional_losses_27551

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:	
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ш
Э
(__inference_conv2d_7_layer_call_fn_27423

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_261622
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ZZ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ZZ
 
_user_specified_nameinputs
™
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27468

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_26149

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€ZZ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ЉС
њ
F__inference_random_zoom_layer_call_and_return_conditional_losses_25773

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceБ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
strided_slice_1/stackЕ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2м
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2
strided_slice_2/stackЕ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2м
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1v
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/shape/1°
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЩ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xК
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1ў
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipЦ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackЪ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1Ъ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2ќ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЩ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/BitcastЪ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackЮ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1Ю
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2∆
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Я
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1†
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algЉ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2+
)stateful_uniform/StatelessRandomUniformV2Т
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub≥
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
stateful_uniform/mulШ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
stateful_uniform\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЩ
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
concate
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
zoom_matrix/ShapeМ
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
zoom_matrix/strided_slice/stackР
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_1Р
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_2™
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
zoom_matrix/strided_slicek
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub/yr
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/subs
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv/yЛ
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truedivЫ
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_1/stackЯ
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_1/stack_1Я
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_1/stack_2с
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_1o
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_1/x£
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/sub_1Л
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/mulo
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_2/yv
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/sub_2w
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv_1/yУ
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truediv_1Ы
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_2/stackЯ
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_2/stack_1Я
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_2/stack_2с
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_2o
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
zoom_matrix/sub_3/x£
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/sub_3С
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/mul_1Ы
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_3/stackЯ
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_3/stack_1Я
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_3/stack_2с
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_3t
zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/mul/yЬ
zoom_matrix/zeros/mulMul"zoom_matrix/strided_slice:output:0 zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros/mulw
zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros/Less/yЧ
zoom_matrix/zeros/LessLesszoom_matrix/zeros/mul:z:0!zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros/Lessz
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/packed/1≥
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros/packedw
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros/Const•
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zerosx
zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/mul/yҐ
zoom_matrix/zeros_1/mulMul"zoom_matrix/strided_slice:output:0"zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_1/mul{
zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros_1/Less/yЯ
zoom_matrix/zeros_1/LessLesszoom_matrix/zeros_1/mul:z:0#zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_1/Less~
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/packed/1є
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_1/packed{
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_1/Const≠
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zeros_1Ы
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_4/stackЯ
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_4/stack_1Я
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_4/stack_2с
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_4x
zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/mul/yҐ
zoom_matrix/zeros_2/mulMul"zoom_matrix/strided_slice:output:0"zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_2/mul{
zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zoom_matrix/zeros_2/Less/yЯ
zoom_matrix/zeros_2/LessLesszoom_matrix/zeros_2/mul:z:0#zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/zeros_2/Less~
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/packed/1є
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_2/packed{
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_2/Const≠
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/zeros_2t
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/concat/axisб
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
zoom_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/ShapeИ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackМ
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1М
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2К
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value≈
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€іі*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3Ю
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
®

ф
B__inference_dense_5_layer_call_and_return_conditional_losses_26239

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:	
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
аf
ь
F__inference_random_flip_layer_call_and_return_conditional_losses_27622

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgҐVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterМ
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shapeМ
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Constљ
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/ProdЖ
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x•
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1Ж
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip®
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stackђ
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1ђ
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2Д
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_sliceі
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcastђ
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack∞
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1∞
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ь
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1Ї
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1А
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/algЃ
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_likeБ
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2И
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice’
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€іі25
3stateless_random_flip_left_right/control_dependencyЉ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shapeґ
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stackЇ
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1Ї
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2®
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceс
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape√
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min√
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2?
=stateless_random_flip_left_right/stateless_random_uniform/maxК
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterђ
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg 
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:€€€€€€€€€2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2ґ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/sub”
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2?
=stateless_random_flip_left_right/stateless_random_uniform/mulЄ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2;
9stateless_random_flip_left_right/stateless_random_uniform¶
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1¶
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2¶
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3А
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shapeС
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(stateless_random_flip_left_right/Reshape∆
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&stateless_random_flip_left_right/Roundђ
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axisЩ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2,
*stateless_random_flip_left_right/ReverseV2р
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2&
$stateless_random_flip_left_right/mulХ
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2(
&stateless_random_flip_left_right/sub/xк
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2&
$stateless_random_flip_left_right/subы
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2(
&stateless_random_flip_left_right/mul_1з
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€іі2&
$stateless_random_flip_left_right/addН
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity§
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€іі: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2Ґ
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
и
G
+__inference_random_flip_layer_call_fn_27627

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іі* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_256332
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€іі2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
м
K
/__inference_max_pooling2d_6_layer_call_fn_27403

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_261492
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€іі:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
ш

О
,__inference_sequential_3_layer_call_fn_27013

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:АтА
	unknown_6:	А
	unknown_7:	А	
	unknown_8:	
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_262462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€іі: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іі
 
_user_specified_nameinputs
’
K
/__inference_max_pooling2d_6_layer_call_fn_27398

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_260532
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp* 
serving_defaultґ
[
sequential_2_inputE
$serving_default_sequential_2_input:0€€€€€€€€€іі;
dense_50
StatefulPartitionedCall:0€€€€€€€€€	tensorflow/serving/predict:ЂЦ
Ѓ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+–&call_and_return_all_conditional_losses
—_default_save_signature
“__call__"
_tf_keras_sequential
ш
layer-0
layer-1
layer-2
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+”&call_and_return_all_conditional_losses
‘__call__"
_tf_keras_sequential
ћ
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
 	keras_api
+’&call_and_return_all_conditional_losses
÷__call__"
_tf_keras_layer
в

!kernel
"bias
##_self_saveable_object_factories
$regularization_losses
%trainable_variables
&	variables
'	keras_api
+„&call_and_return_all_conditional_losses
Ў__call__"
_tf_keras_layer
ћ
#(_self_saveable_object_factories
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+ў&call_and_return_all_conditional_losses
Џ__call__"
_tf_keras_layer
в

-kernel
.bias
#/_self_saveable_object_factories
0regularization_losses
1trainable_variables
2	variables
3	keras_api
+џ&call_and_return_all_conditional_losses
№__call__"
_tf_keras_layer
ћ
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"
_tf_keras_layer
в

9kernel
:bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
+я&call_and_return_all_conditional_losses
а__call__"
_tf_keras_layer
ћ
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
+б&call_and_return_all_conditional_losses
в__call__"
_tf_keras_layer
ћ
#E_self_saveable_object_factories
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
+г&call_and_return_all_conditional_losses
д__call__"
_tf_keras_layer
ћ
#J_self_saveable_object_factories
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"
_tf_keras_layer
в

Okernel
Pbias
#Q_self_saveable_object_factories
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
+з&call_and_return_all_conditional_losses
и__call__"
_tf_keras_layer
в

Vkernel
Wbias
#X_self_saveable_object_factories
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
+й&call_and_return_all_conditional_losses
к__call__"
_tf_keras_layer
"
	optimizer
-
лserving_default"
signature_map
 "
trackable_dict_wrapper
f
!0
"1
-2
.3
94
:5
O6
P7
V8
W9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
!0
"1
-2
.3
94
:5
O6
P7
V8
W9"
trackable_list_wrapper
ќ

]layers
^layer_metrics
_metrics
	variables
`non_trainable_variables
regularization_losses
trainable_variables
alayer_regularization_losses
“__call__
—_default_save_signature
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
÷
b_rng
#c_self_saveable_object_factories
dregularization_losses
etrainable_variables
f	variables
g	keras_api
+м&call_and_return_all_conditional_losses
н__call__"
_tf_keras_layer
÷
h_rng
#i_self_saveable_object_factories
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
+о&call_and_return_all_conditional_losses
п__call__"
_tf_keras_layer
÷
n_rng
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
+р&call_and_return_all_conditional_losses
с__call__"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

tlayers
ulayer_metrics
vmetrics
	variables
wnon_trainable_variables
regularization_losses
trainable_variables
xlayer_regularization_losses
‘__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

ylayers
zlayer_metrics
regularization_losses
{non_trainable_variables
trainable_variables
	variables
|metrics
}layer_regularization_losses
÷__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_6/kernel
:2conv2d_6/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
≥

~layers
layer_metrics
$regularization_losses
Аnon_trainable_variables
%trainable_variables
&	variables
Бmetrics
 Вlayer_regularization_losses
Ў__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Гlayers
Дlayer_metrics
)regularization_losses
Еnon_trainable_variables
*trainable_variables
+	variables
Жmetrics
 Зlayer_regularization_losses
Џ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_7/kernel
: 2conv2d_7/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
µ
Иlayers
Йlayer_metrics
0regularization_losses
Кnon_trainable_variables
1trainable_variables
2	variables
Лmetrics
 Мlayer_regularization_losses
№__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Нlayers
Оlayer_metrics
5regularization_losses
Пnon_trainable_variables
6trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_8/kernel
:@2conv2d_8/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
µ
Тlayers
Уlayer_metrics
<regularization_losses
Фnon_trainable_variables
=trainable_variables
>	variables
Хmetrics
 Цlayer_regularization_losses
а__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Чlayers
Шlayer_metrics
Aregularization_losses
Щnon_trainable_variables
Btrainable_variables
C	variables
Ъmetrics
 Ыlayer_regularization_losses
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ьlayers
Эlayer_metrics
Fregularization_losses
Юnon_trainable_variables
Gtrainable_variables
H	variables
Яmetrics
 †layer_regularization_losses
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
°layers
Ґlayer_metrics
Kregularization_losses
£non_trainable_variables
Ltrainable_variables
M	variables
§metrics
 •layer_regularization_losses
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
#:!АтА2dense_4/kernel
:А2dense_4/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
µ
¶layers
Іlayer_metrics
Rregularization_losses
®non_trainable_variables
Strainable_variables
T	variables
©metrics
 ™layer_regularization_losses
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
!:	А	2dense_5/kernel
:	2dense_5/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
µ
Ђlayers
ђlayer_metrics
Yregularization_losses
≠non_trainable_variables
Ztrainable_variables
[	variables
Ѓmetrics
 ѓlayer_regularization_losses
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
∞0
±1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
U
≤
_state_var
$≥_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
іlayers
µlayer_metrics
dregularization_losses
ґnon_trainable_variables
etrainable_variables
f	variables
Јmetrics
 Єlayer_regularization_losses
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
U
є
_state_var
$Ї_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
їlayers
Љlayer_metrics
jregularization_losses
љnon_trainable_variables
ktrainable_variables
l	variables
Њmetrics
 њlayer_regularization_losses
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
U
ј
_state_var
$Ѕ_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¬layers
√layer_metrics
pregularization_losses
ƒnon_trainable_variables
qtrainable_variables
r	variables
≈metrics
 ∆layer_regularization_losses
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
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
R

«total

»count
…	variables
 	keras_api"
_tf_keras_metric
c

Ћtotal

ћcount
Ќ
_fn_kwargs
ќ	variables
ѕ	keras_api"
_tf_keras_metric
:	2Variable
 "
trackable_dict_wrapper
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
:	2Variable
 "
trackable_dict_wrapper
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
:	2Variable
 "
trackable_dict_wrapper
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
0
«0
»1"
trackable_list_wrapper
.
…	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ћ0
ћ1"
trackable_list_wrapper
.
ќ	variables"
_generic_user_object
к2з
G__inference_sequential_3_layer_call_and_return_conditional_losses_26651
G__inference_sequential_3_layer_call_and_return_conditional_losses_26988
G__inference_sequential_3_layer_call_and_return_conditional_losses_26534
G__inference_sequential_3_layer_call_and_return_conditional_losses_26576ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
÷B”
 __inference__wrapped_model_25622sequential_2_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ю2ы
,__inference_sequential_3_layer_call_fn_26269
,__inference_sequential_3_layer_call_fn_27013
,__inference_sequential_3_layer_call_fn_27044
,__inference_sequential_3_layer_call_fn_26498ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
к2з
G__inference_sequential_2_layer_call_and_return_conditional_losses_27048
G__inference_sequential_2_layer_call_and_return_conditional_losses_27334
G__inference_sequential_2_layer_call_and_return_conditional_losses_26031
G__inference_sequential_2_layer_call_and_return_conditional_losses_26044ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ю2ы
,__inference_sequential_2_layer_call_fn_25651
,__inference_sequential_2_layer_call_fn_27339
,__inference_sequential_2_layer_call_fn_27350
,__inference_sequential_2_layer_call_fn_26024ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
р2н
F__inference_rescaling_3_layer_call_and_return_conditional_losses_27358Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_rescaling_3_layer_call_fn_27363Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27374Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv2d_6_layer_call_fn_27383Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ј2љ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27388
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27393Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
К2З
/__inference_max_pooling2d_6_layer_call_fn_27398
/__inference_max_pooling2d_6_layer_call_fn_27403Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27414Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv2d_7_layer_call_fn_27423Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ј2љ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27428
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27433Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
К2З
/__inference_max_pooling2d_7_layer_call_fn_27438
/__inference_max_pooling2d_7_layer_call_fn_27443Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27454Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv2d_8_layer_call_fn_27463Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ј2љ
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27468
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27473Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
К2З
/__inference_max_pooling2d_8_layer_call_fn_27478
/__inference_max_pooling2d_8_layer_call_fn_27483Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¬2њ
B__inference_dropout_layer_call_and_return_conditional_losses_27488
B__inference_dropout_layer_call_and_return_conditional_losses_27500і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
М2Й
'__inference_dropout_layer_call_fn_27505
'__inference_dropout_layer_call_fn_27510і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_flatten_2_layer_call_and_return_conditional_losses_27516Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_flatten_2_layer_call_fn_27521Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_dense_4_layer_call_and_return_conditional_losses_27532Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_dense_4_layer_call_fn_27541Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_dense_5_layer_call_and_return_conditional_losses_27551Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_dense_5_layer_call_fn_27560Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’B“
#__inference_signature_wrapper_26603sequential_2_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 2«
F__inference_random_flip_layer_call_and_return_conditional_losses_27564
F__inference_random_flip_layer_call_and_return_conditional_losses_27622і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ф2С
+__inference_random_flip_layer_call_fn_27627
+__inference_random_flip_layer_call_fn_27634і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
J__inference_random_rotation_layer_call_and_return_conditional_losses_27638
J__inference_random_rotation_layer_call_and_return_conditional_losses_27760і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ь2Щ
/__inference_random_rotation_layer_call_fn_27765
/__inference_random_rotation_layer_call_fn_27772і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 2«
F__inference_random_zoom_layer_call_and_return_conditional_losses_27776
F__inference_random_zoom_layer_call_and_return_conditional_losses_27890і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ф2С
+__inference_random_zoom_layer_call_fn_27895
+__inference_random_zoom_layer_call_fn_27902і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Ђ
 __inference__wrapped_model_25622Ж
!"-.9:OPVWEҐB
;Ґ8
6К3
sequential_2_input€€€€€€€€€іі
™ "1™.
,
dense_5!К
dense_5€€€€€€€€€	Ј
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27374p!"9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ П
(__inference_conv2d_6_layer_call_fn_27383c!"9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ ""К€€€€€€€€€іі≥
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27414l-.7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ZZ
™ "-Ґ*
#К 
0€€€€€€€€€ZZ 
Ъ Л
(__inference_conv2d_7_layer_call_fn_27423_-.7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ZZ
™ " К€€€€€€€€€ZZ ≥
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27454l9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-- 
™ "-Ґ*
#К 
0€€€€€€€€€--@
Ъ Л
(__inference_conv2d_8_layer_call_fn_27463_9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-- 
™ " К€€€€€€€€€--@•
B__inference_dense_4_layer_call_and_return_conditional_losses_27532_OP1Ґ.
'Ґ$
"К
inputs€€€€€€€€€Ат
™ "&Ґ#
К
0€€€€€€€€€А
Ъ }
'__inference_dense_4_layer_call_fn_27541ROP1Ґ.
'Ґ$
"К
inputs€€€€€€€€€Ат
™ "К€€€€€€€€€А£
B__inference_dense_5_layer_call_and_return_conditional_losses_27551]VW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€	
Ъ {
'__inference_dense_5_layer_call_fn_27560PVW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€	≤
B__inference_dropout_layer_call_and_return_conditional_losses_27488l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ ≤
B__inference_dropout_layer_call_and_return_conditional_losses_27500l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ К
'__inference_dropout_layer_call_fn_27505_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@К
'__inference_dropout_layer_call_fn_27510_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@™
D__inference_flatten_2_layer_call_and_return_conditional_losses_27516b7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "'Ґ$
К
0€€€€€€€€€Ат
Ъ В
)__inference_flatten_2_layer_call_fn_27521U7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€Атн
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27388ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Є
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_27393j9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ "-Ґ*
#К 
0€€€€€€€€€ZZ
Ъ ≈
/__inference_max_pooling2d_6_layer_call_fn_27398СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Р
/__inference_max_pooling2d_6_layer_call_fn_27403]9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ " К€€€€€€€€€ZZн
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27428ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ґ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_27433h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ZZ 
™ "-Ґ*
#К 
0€€€€€€€€€-- 
Ъ ≈
/__inference_max_pooling2d_7_layer_call_fn_27438СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€О
/__inference_max_pooling2d_7_layer_call_fn_27443[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ZZ 
™ " К€€€€€€€€€-- н
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27468ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ґ
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_27473h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€--@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ ≈
/__inference_max_pooling2d_8_layer_call_fn_27478СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€О
/__inference_max_pooling2d_8_layer_call_fn_27483[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€--@
™ " К€€€€€€€€€@Ї
F__inference_random_flip_layer_call_and_return_conditional_losses_27564p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Њ
F__inference_random_flip_layer_call_and_return_conditional_losses_27622t≤=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Т
+__inference_random_flip_layer_call_fn_27627c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ ""К€€€€€€€€€ііЦ
+__inference_random_flip_layer_call_fn_27634g≤=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ ""К€€€€€€€€€ііЊ
J__inference_random_rotation_layer_call_and_return_conditional_losses_27638p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ ¬
J__inference_random_rotation_layer_call_and_return_conditional_losses_27760tє=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Ц
/__inference_random_rotation_layer_call_fn_27765c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ ""К€€€€€€€€€ііЪ
/__inference_random_rotation_layer_call_fn_27772gє=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ ""К€€€€€€€€€ііЇ
F__inference_random_zoom_layer_call_and_return_conditional_losses_27776p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Њ
F__inference_random_zoom_layer_call_and_return_conditional_losses_27890tј=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Т
+__inference_random_zoom_layer_call_fn_27895c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p 
™ ""К€€€€€€€€€ііЦ
+__inference_random_zoom_layer_call_fn_27902gј=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€іі
p
™ ""К€€€€€€€€€ііґ
F__inference_rescaling_3_layer_call_and_return_conditional_losses_27358l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ О
+__inference_rescaling_3_layer_call_fn_27363_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іі
™ ""К€€€€€€€€€іі 
G__inference_sequential_2_layer_call_and_return_conditional_losses_26031LҐI
BҐ?
5К2
random_flip_input€€€€€€€€€іі
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ ”
G__inference_sequential_2_layer_call_and_return_conditional_losses_26044З≤єјLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€іі
p

 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ њ
G__inference_sequential_2_layer_call_and_return_conditional_losses_27048tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ «
G__inference_sequential_2_layer_call_and_return_conditional_losses_27334|≤єјAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p

 
™ "/Ґ,
%К"
0€€€€€€€€€іі
Ъ Ґ
,__inference_sequential_2_layer_call_fn_25651rLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€іі
p 

 
™ ""К€€€€€€€€€іі™
,__inference_sequential_2_layer_call_fn_26024z≤єјLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€іі
p

 
™ ""К€€€€€€€€€ііЧ
,__inference_sequential_2_layer_call_fn_27339gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p 

 
™ ""К€€€€€€€€€ііЯ
,__inference_sequential_2_layer_call_fn_27350o≤єјAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p

 
™ ""К€€€€€€€€€ііќ
G__inference_sequential_3_layer_call_and_return_conditional_losses_26534В
!"-.9:OPVWMҐJ
CҐ@
6К3
sequential_2_input€€€€€€€€€іі
p 

 
™ "%Ґ"
К
0€€€€€€€€€	
Ъ ‘
G__inference_sequential_3_layer_call_and_return_conditional_losses_26576И≤єј!"-.9:OPVWMҐJ
CҐ@
6К3
sequential_2_input€€€€€€€€€іі
p

 
™ "%Ґ"
К
0€€€€€€€€€	
Ъ Ѕ
G__inference_sequential_3_layer_call_and_return_conditional_losses_26651v
!"-.9:OPVWAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p 

 
™ "%Ґ"
К
0€€€€€€€€€	
Ъ «
G__inference_sequential_3_layer_call_and_return_conditional_losses_26988|≤єј!"-.9:OPVWAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p

 
™ "%Ґ"
К
0€€€€€€€€€	
Ъ •
,__inference_sequential_3_layer_call_fn_26269u
!"-.9:OPVWMҐJ
CҐ@
6К3
sequential_2_input€€€€€€€€€іі
p 

 
™ "К€€€€€€€€€	Ђ
,__inference_sequential_3_layer_call_fn_26498{≤єј!"-.9:OPVWMҐJ
CҐ@
6К3
sequential_2_input€€€€€€€€€іі
p

 
™ "К€€€€€€€€€	Щ
,__inference_sequential_3_layer_call_fn_27013i
!"-.9:OPVWAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p 

 
™ "К€€€€€€€€€	Я
,__inference_sequential_3_layer_call_fn_27044o≤єј!"-.9:OPVWAҐ>
7Ґ4
*К'
inputs€€€€€€€€€іі
p

 
™ "К€€€€€€€€€	ƒ
#__inference_signature_wrapper_26603Ь
!"-.9:OPVW[ҐX
Ґ 
Q™N
L
sequential_2_input6К3
sequential_2_input€€€€€€€€€іі"1™.
,
dense_5!К
dense_5€€€€€€€€€	