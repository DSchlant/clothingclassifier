¥ú8
â
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758ø3

batch_normalization_112/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_112/gamma

1batch_normalization_112/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_112/gamma*
_output_shapes	
:*
dtype0

batch_normalization_112/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_112/beta

0batch_normalization_112/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_112/beta*
_output_shapes	
:*
dtype0

#batch_normalization_112/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_112/moving_mean

7batch_normalization_112/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_112/moving_mean*
_output_shapes	
:*
dtype0
§
'batch_normalization_112/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_112/moving_variance
 
;batch_normalization_112/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_112/moving_variance*
_output_shapes	
:*
dtype0
}
dense_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *!
shared_namedense_144/kernel
v
$dense_144/kernel/Read/ReadVariableOpReadVariableOpdense_144/kernel*
_output_shapes
:	 *
dtype0
t
dense_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_144/bias
m
"dense_144/bias/Read/ReadVariableOpReadVariableOpdense_144/bias*
_output_shapes
: *
dtype0

batch_normalization_113/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_113/gamma

1batch_normalization_113/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_113/gamma*
_output_shapes
: *
dtype0

batch_normalization_113/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_113/beta

0batch_normalization_113/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_113/beta*
_output_shapes
: *
dtype0

#batch_normalization_113/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_113/moving_mean

7batch_normalization_113/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_113/moving_mean*
_output_shapes
: *
dtype0
¦
'batch_normalization_113/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_113/moving_variance

;batch_normalization_113/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_113/moving_variance*
_output_shapes
: *
dtype0
|
dense_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*!
shared_namedense_145/kernel
u
$dense_145/kernel/Read/ReadVariableOpReadVariableOpdense_145/kernel*
_output_shapes

: @*
dtype0
t
dense_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_145/bias
m
"dense_145/bias/Read/ReadVariableOpReadVariableOpdense_145/bias*
_output_shapes
:@*
dtype0

batch_normalization_114/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_114/gamma

1batch_normalization_114/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_114/gamma*
_output_shapes
:@*
dtype0

batch_normalization_114/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_114/beta

0batch_normalization_114/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_114/beta*
_output_shapes
:@*
dtype0

#batch_normalization_114/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_114/moving_mean

7batch_normalization_114/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_114/moving_mean*
_output_shapes
:@*
dtype0
¦
'batch_normalization_114/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_114/moving_variance

;batch_normalization_114/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_114/moving_variance*
_output_shapes
:@*
dtype0
}
dense_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*!
shared_namedense_146/kernel
v
$dense_146/kernel/Read/ReadVariableOpReadVariableOpdense_146/kernel*
_output_shapes
:	@*
dtype0
u
dense_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_146/bias
n
"dense_146/bias/Read/ReadVariableOpReadVariableOpdense_146/bias*
_output_shapes	
:*
dtype0

batch_normalization_115/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_115/gamma

1batch_normalization_115/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_115/gamma*
_output_shapes	
:*
dtype0

batch_normalization_115/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_115/beta

0batch_normalization_115/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_115/beta*
_output_shapes	
:*
dtype0

#batch_normalization_115/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_115/moving_mean

7batch_normalization_115/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_115/moving_mean*
_output_shapes	
:*
dtype0
§
'batch_normalization_115/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_115/moving_variance
 
;batch_normalization_115/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_115/moving_variance*
_output_shapes	
:*
dtype0
~
dense_147/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_namedense_147/kernel
w
$dense_147/kernel/Read/ReadVariableOpReadVariableOpdense_147/kernel* 
_output_shapes
:
*
dtype0
u
dense_147/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_147/bias
n
"dense_147/bias/Read/ReadVariableOpReadVariableOpdense_147/bias*
_output_shapes	
:*
dtype0

batch_normalization_116/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_116/gamma

1batch_normalization_116/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_116/gamma*
_output_shapes	
:*
dtype0

batch_normalization_116/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_116/beta

0batch_normalization_116/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_116/beta*
_output_shapes	
:*
dtype0

#batch_normalization_116/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_116/moving_mean

7batch_normalization_116/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_116/moving_mean*
_output_shapes	
:*
dtype0
§
'batch_normalization_116/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_116/moving_variance
 
;batch_normalization_116/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_116/moving_variance*
_output_shapes	
:*
dtype0
}
dense_148/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*!
shared_namedense_148/kernel
v
$dense_148/kernel/Read/ReadVariableOpReadVariableOpdense_148/kernel*
_output_shapes
:	@*
dtype0
t
dense_148/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_148/bias
m
"dense_148/bias/Read/ReadVariableOpReadVariableOpdense_148/bias*
_output_shapes
:@*
dtype0

batch_normalization_117/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_117/gamma

1batch_normalization_117/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_117/gamma*
_output_shapes
:@*
dtype0

batch_normalization_117/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_117/beta

0batch_normalization_117/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_117/beta*
_output_shapes
:@*
dtype0

#batch_normalization_117/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_117/moving_mean

7batch_normalization_117/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_117/moving_mean*
_output_shapes
:@*
dtype0
¦
'batch_normalization_117/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_117/moving_variance

;batch_normalization_117/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_117/moving_variance*
_output_shapes
:@*
dtype0
|
dense_149/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *!
shared_namedense_149/kernel
u
$dense_149/kernel/Read/ReadVariableOpReadVariableOpdense_149/kernel*
_output_shapes

:@ *
dtype0
t
dense_149/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_149/bias
m
"dense_149/bias/Read/ReadVariableOpReadVariableOpdense_149/bias*
_output_shapes
: *
dtype0

batch_normalization_118/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_118/gamma

1batch_normalization_118/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_118/gamma*
_output_shapes
: *
dtype0

batch_normalization_118/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_118/beta

0batch_normalization_118/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_118/beta*
_output_shapes
: *
dtype0

#batch_normalization_118/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_118/moving_mean

7batch_normalization_118/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_118/moving_mean*
_output_shapes
: *
dtype0
¦
'batch_normalization_118/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_118/moving_variance

;batch_normalization_118/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_118/moving_variance*
_output_shapes
: *
dtype0
|
dense_150/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*!
shared_namedense_150/kernel
u
$dense_150/kernel/Read/ReadVariableOpReadVariableOpdense_150/kernel*
_output_shapes

: @*
dtype0
t
dense_150/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_150/bias
m
"dense_150/bias/Read/ReadVariableOpReadVariableOpdense_150/bias*
_output_shapes
:@*
dtype0
|
dense_151/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_151/kernel
u
$dense_151/kernel/Read/ReadVariableOpReadVariableOpdense_151/kernel*
_output_shapes

:@@*
dtype0
t
dense_151/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_151/bias
m
"dense_151/bias/Read/ReadVariableOpReadVariableOpdense_151/bias*
_output_shapes
:@*
dtype0
|
dense_152/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	*!
shared_namedense_152/kernel
u
$dense_152/kernel/Read/ReadVariableOpReadVariableOpdense_152/kernel*
_output_shapes

:@	*
dtype0
t
dense_152/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_152/bias
m
"dense_152/bias/Read/ReadVariableOpReadVariableOpdense_152/bias*
_output_shapes
:	*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel

'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0

block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel

'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0

block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock2_conv1/kernel

'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:*
dtype0

block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock2_conv2/kernel

'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv1/kernel

'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:*
dtype0

block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv2/kernel

'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv3/kernel

'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:*
dtype0

block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv1/kernel

'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:*
dtype0

block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv2/kernel

'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:*
dtype0

block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv3/kernel

'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:*
dtype0

block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv1/kernel

'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:*
dtype0

block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv2/kernel

'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:*
dtype0

block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv3/kernel

'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:*
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
¡
$Adam/batch_normalization_112/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_112/gamma/m

8Adam/batch_normalization_112/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_112/gamma/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_112/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_112/beta/m

7Adam/batch_normalization_112/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_112/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *(
shared_nameAdam/dense_144/kernel/m

+Adam/dense_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/m*
_output_shapes
:	 *
dtype0

Adam/dense_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_144/bias/m
{
)Adam/dense_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/m*
_output_shapes
: *
dtype0
 
$Adam/batch_normalization_113/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_113/gamma/m

8Adam/batch_normalization_113/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_113/gamma/m*
_output_shapes
: *
dtype0

#Adam/batch_normalization_113/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_113/beta/m

7Adam/batch_normalization_113/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_113/beta/m*
_output_shapes
: *
dtype0

Adam/dense_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdam/dense_145/kernel/m

+Adam/dense_145/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/m*
_output_shapes

: @*
dtype0

Adam/dense_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_145/bias/m
{
)Adam/dense_145/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/m*
_output_shapes
:@*
dtype0
 
$Adam/batch_normalization_114/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_114/gamma/m

8Adam/batch_normalization_114/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_114/gamma/m*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_114/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_114/beta/m

7Adam/batch_normalization_114/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_114/beta/m*
_output_shapes
:@*
dtype0

Adam/dense_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_146/kernel/m

+Adam/dense_146/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_146/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_146/bias/m
|
)Adam/dense_146/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_146/bias/m*
_output_shapes	
:*
dtype0
¡
$Adam/batch_normalization_115/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_115/gamma/m

8Adam/batch_normalization_115/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_115/gamma/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_115/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_115/beta/m

7Adam/batch_normalization_115/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_115/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_147/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/dense_147/kernel/m

+Adam/dense_147/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_147/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_147/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_147/bias/m
|
)Adam/dense_147/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_147/bias/m*
_output_shapes	
:*
dtype0
¡
$Adam/batch_normalization_116/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_116/gamma/m

8Adam/batch_normalization_116/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_116/gamma/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_116/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_116/beta/m

7Adam/batch_normalization_116/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_116/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_148/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_148/kernel/m

+Adam/dense_148/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_148/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_148/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_148/bias/m
{
)Adam/dense_148/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_148/bias/m*
_output_shapes
:@*
dtype0
 
$Adam/batch_normalization_117/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_117/gamma/m

8Adam/batch_normalization_117/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_117/gamma/m*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_117/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_117/beta/m

7Adam/batch_normalization_117/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_117/beta/m*
_output_shapes
:@*
dtype0

Adam/dense_149/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_149/kernel/m

+Adam/dense_149/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_149/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_149/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_149/bias/m
{
)Adam/dense_149/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_149/bias/m*
_output_shapes
: *
dtype0
 
$Adam/batch_normalization_118/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_118/gamma/m

8Adam/batch_normalization_118/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_118/gamma/m*
_output_shapes
: *
dtype0

#Adam/batch_normalization_118/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_118/beta/m

7Adam/batch_normalization_118/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_118/beta/m*
_output_shapes
: *
dtype0

Adam/dense_150/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdam/dense_150/kernel/m

+Adam/dense_150/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_150/kernel/m*
_output_shapes

: @*
dtype0

Adam/dense_150/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_150/bias/m
{
)Adam/dense_150/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_150/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_151/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_151/kernel/m

+Adam/dense_151/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_151/kernel/m*
_output_shapes

:@@*
dtype0

Adam/dense_151/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_151/bias/m
{
)Adam/dense_151/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_151/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_152/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	*(
shared_nameAdam/dense_152/kernel/m

+Adam/dense_152/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_152/kernel/m*
_output_shapes

:@	*
dtype0

Adam/dense_152/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_152/bias/m
{
)Adam/dense_152/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_152/bias/m*
_output_shapes
:	*
dtype0
¡
$Adam/batch_normalization_112/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_112/gamma/v

8Adam/batch_normalization_112/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_112/gamma/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_112/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_112/beta/v

7Adam/batch_normalization_112/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_112/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *(
shared_nameAdam/dense_144/kernel/v

+Adam/dense_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/v*
_output_shapes
:	 *
dtype0

Adam/dense_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_144/bias/v
{
)Adam/dense_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/v*
_output_shapes
: *
dtype0
 
$Adam/batch_normalization_113/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_113/gamma/v

8Adam/batch_normalization_113/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_113/gamma/v*
_output_shapes
: *
dtype0

#Adam/batch_normalization_113/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_113/beta/v

7Adam/batch_normalization_113/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_113/beta/v*
_output_shapes
: *
dtype0

Adam/dense_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdam/dense_145/kernel/v

+Adam/dense_145/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/v*
_output_shapes

: @*
dtype0

Adam/dense_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_145/bias/v
{
)Adam/dense_145/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/v*
_output_shapes
:@*
dtype0
 
$Adam/batch_normalization_114/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_114/gamma/v

8Adam/batch_normalization_114/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_114/gamma/v*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_114/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_114/beta/v

7Adam/batch_normalization_114/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_114/beta/v*
_output_shapes
:@*
dtype0

Adam/dense_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_146/kernel/v

+Adam/dense_146/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_146/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_146/bias/v
|
)Adam/dense_146/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_146/bias/v*
_output_shapes	
:*
dtype0
¡
$Adam/batch_normalization_115/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_115/gamma/v

8Adam/batch_normalization_115/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_115/gamma/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_115/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_115/beta/v

7Adam/batch_normalization_115/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_115/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_147/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/dense_147/kernel/v

+Adam/dense_147/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_147/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_147/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_147/bias/v
|
)Adam/dense_147/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_147/bias/v*
_output_shapes	
:*
dtype0
¡
$Adam/batch_normalization_116/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_116/gamma/v

8Adam/batch_normalization_116/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_116/gamma/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_116/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_116/beta/v

7Adam/batch_normalization_116/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_116/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_148/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_148/kernel/v

+Adam/dense_148/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_148/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_148/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_148/bias/v
{
)Adam/dense_148/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_148/bias/v*
_output_shapes
:@*
dtype0
 
$Adam/batch_normalization_117/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_117/gamma/v

8Adam/batch_normalization_117/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_117/gamma/v*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_117/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_117/beta/v

7Adam/batch_normalization_117/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_117/beta/v*
_output_shapes
:@*
dtype0

Adam/dense_149/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_149/kernel/v

+Adam/dense_149/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_149/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_149/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_149/bias/v
{
)Adam/dense_149/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_149/bias/v*
_output_shapes
: *
dtype0
 
$Adam/batch_normalization_118/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_118/gamma/v

8Adam/batch_normalization_118/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_118/gamma/v*
_output_shapes
: *
dtype0

#Adam/batch_normalization_118/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_118/beta/v

7Adam/batch_normalization_118/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_118/beta/v*
_output_shapes
: *
dtype0

Adam/dense_150/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdam/dense_150/kernel/v

+Adam/dense_150/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_150/kernel/v*
_output_shapes

: @*
dtype0

Adam/dense_150/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_150/bias/v
{
)Adam/dense_150/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_150/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_151/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_151/kernel/v

+Adam/dense_151/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_151/kernel/v*
_output_shapes

:@@*
dtype0

Adam/dense_151/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_151/bias/v
{
)Adam/dense_151/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_151/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_152/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	*(
shared_nameAdam/dense_152/kernel/v

+Adam/dense_152/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_152/kernel/v*
_output_shapes

:@	*
dtype0

Adam/dense_152/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_152/bias/v
{
)Adam/dense_152/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_152/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
ãß
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ß
valueßBß Bß
á
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
layer-21
layer_with_weights-14
layer-22
layer_with_weights-15
layer-23
layer_with_weights-16
layer-24
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"
signatures*
å
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer-10
.layer_with_weights-7
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer-14
2layer_with_weights-10
2layer-15
3layer_with_weights-11
3layer-16
4layer_with_weights-12
4layer-17
5layer-18
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*

<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
Õ
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*
¦

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses*
Õ
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
¥
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d_random_generator
e__call__
*f&call_and_return_all_conditional_losses* 
¦

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
Õ
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses*
¦
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~_random_generator
__call__
+&call_and_return_all_conditional_losses* 
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
à
	axis

gamma
	beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
®
kernel
	bias
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses*
à
	£axis

¤gamma
	¥beta
¦moving_mean
§moving_variance
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses*
¬
®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²_random_generator
³__call__
+´&call_and_return_all_conditional_losses* 
®
µkernel
	¶bias
·	variables
¸trainable_variables
¹regularization_losses
º	keras_api
»__call__
+¼&call_and_return_all_conditional_losses*
à
	½axis

¾gamma
	¿beta
Àmoving_mean
Ámoving_variance
Â	variables
Ãtrainable_variables
Äregularization_losses
Å	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses*
¬
È	variables
Étrainable_variables
Êregularization_losses
Ë	keras_api
Ì_random_generator
Í__call__
+Î&call_and_return_all_conditional_losses* 
®
Ïkernel
	Ðbias
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses*
à
	×axis

Øgamma
	Ùbeta
Úmoving_mean
Ûmoving_variance
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses*
¬
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ_random_generator
ç__call__
+è&call_and_return_all_conditional_losses* 

é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses* 
®
ïkernel
	ðbias
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses*
®
÷kernel
	øbias
ù	variables
útrainable_variables
ûregularization_losses
ü	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses*
®
ÿkernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
õ
	iter
beta_1
beta_2

decay
learning_rateCmúDmûMmüNmýVmþWmÿgmhmpmqm	m	m	m	m	m	m	¤m	¥m	µm	¶m	¾m	¿m	Ïm	Ðm	Øm	Ùm	ïm	ðm	÷m	øm	ÿm	mCvDvMvNvVvWvgv hv¡pv¢qv£	v¤	v¥	v¦	v§	v¨	v©	¤vª	¥v«	µv¬	¶v­	¾v®	¿v¯	Ïv°	Ðv±	Øv²	Ùv³	ïv´	ðvµ	÷v¶	øv·	ÿv¸	v¹*
ò
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25
C26
D27
E28
F29
M30
N31
V32
W33
X34
Y35
g36
h37
p38
q39
r40
s41
42
43
44
45
46
47
48
49
¤50
¥51
¦52
§53
µ54
¶55
¾56
¿57
À58
Á59
Ï60
Ð61
Ø62
Ù63
Ú64
Û65
ï66
ð67
÷68
ø69
ÿ70
71*

C0
D1
M2
N3
V4
W5
g6
h7
p8
q9
10
11
12
13
14
15
¤16
¥17
µ18
¶19
¾20
¿21
Ï22
Ð23
Ø24
Ù25
ï26
ð27
÷28
ø29
ÿ30
31*
* 
µ
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
* 

«serving_default* 
* 
®
kernel
	bias
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses*
®
kernel
	bias
²	variables
³trainable_variables
´regularization_losses
µ	keras_api
¶__call__
+·&call_and_return_all_conditional_losses*

¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses* 
®
kernel
	bias
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses*
®
kernel
	bias
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses*

Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses* 
®
kernel
	bias
Ð	variables
Ñtrainable_variables
Òregularization_losses
Ó	keras_api
Ô__call__
+Õ&call_and_return_all_conditional_losses*
®
kernel
	bias
Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses*
®
kernel
	bias
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses*

â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses* 
®
kernel
	bias
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses*
®
kernel
	bias
î	variables
ïtrainable_variables
ðregularization_losses
ñ	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses*
®
kernel
	bias
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses*

ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses* 
®
 kernel
	¡bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
¢kernel
	£bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
¤kernel
	¥bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
ä
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_112/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_112/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_112/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_112/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
C0
D1
E2
F3*

C0
D1*
* 

¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_144/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_144/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_113/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_113/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_113/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_113/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
V0
W1
X2
Y3*

V0
W1*
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
`	variables
atrainable_variables
bregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_145/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_145/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_114/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_114/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_114/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_114/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
p0
q1
r2
s3*

p0
q1*
* 

»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
z	variables
{trainable_variables
|regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_146/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_146/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_115/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_115/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_115/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_115/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
0
1
2
3*

0
1*
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_147/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_147/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_116/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_116/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_116/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_116/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
¤0
¥1
¦2
§3*

¤0
¥1*
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
®	variables
¯trainable_variables
°regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses* 
* 
* 
* 
a[
VARIABLE_VALUEdense_148/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_148/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

µ0
¶1*

µ0
¶1*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
·	variables
¸trainable_variables
¹regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses*
* 
* 
* 
mg
VARIABLE_VALUEbatch_normalization_117/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEbatch_normalization_117/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE#batch_normalization_117/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE'batch_normalization_117/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
¾0
¿1
À2
Á3*

¾0
¿1*
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
Â	variables
Ãtrainable_variables
Äregularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
È	variables
Étrainable_variables
Êregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses* 
* 
* 
* 
a[
VARIABLE_VALUEdense_149/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_149/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ï0
Ð1*

Ï0
Ð1*
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses*
* 
* 
* 
mg
VARIABLE_VALUEbatch_normalization_118/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEbatch_normalization_118/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE#batch_normalization_118/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE'batch_normalization_118/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
Ø0
Ù1
Ú2
Û3*

Ø0
Ù1*
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEdense_150/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_150/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

ï0
ð1*

ï0
ð1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_151/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_151/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*

÷0
ø1*

÷0
ø1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ù	variables
útrainable_variables
ûregularization_losses
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_152/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_152/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*

ÿ0
1*

ÿ0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
Ü
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25
E26
F27
X28
Y29
r30
s31
32
33
¦34
§35
À36
Á37
Ú38
Û39*
Â
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
12
13
14
15
16
17
18
19
20
21
22
23
24*

0
1*
* 
* 
* 

0
1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
²	variables
³trainable_variables
´regularization_losses
¶__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses* 
* 
* 

0
1*
* 
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses* 
* 
* 

0
1*
* 
* 

µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
Ð	variables
Ñtrainable_variables
Òregularization_losses
Ô__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ö	variables
×trainable_variables
Øregularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses* 
* 
* 

0
1*
* 
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
î	variables
ïtrainable_variables
ðregularization_losses
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses*
* 
* 

0
1*
* 
* 

Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses* 
* 
* 

 0
¡1*
* 
* 

Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 

¢0
£1*
* 
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 

¤0
¥1*
* 
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
ä
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25*

#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518*
* 
* 
* 
* 
* 
* 
* 
* 

E0
F1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

X0
Y1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

r0
s1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

¦0
§1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

À0
Á1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ú0
Û1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

ñtotal

òcount
ó	variables
ô	keras_api*
M

õtotal

öcount
÷
_fn_kwargs
ø	variables
ù	keras_api*

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

 0
¡1*
* 
* 
* 
* 

¢0
£1*
* 
* 
* 
* 

¤0
¥1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ñ0
ò1*

ó	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

õ0
ö1*

ø	variables*

VARIABLE_VALUE$Adam/batch_normalization_112/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_112/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_144/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_144/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_113/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_113/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_145/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_145/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_114/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_114/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_146/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_146/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_115/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_115/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_147/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_147/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_116/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_116/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_148/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_148/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_117/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_117/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_149/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_149/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_118/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_118/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_150/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_150/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_151/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_151/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_152/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_152/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_112/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_112/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_144/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_144/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_113/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_113/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_145/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_145/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_114/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_114/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_146/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_146/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_115/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_115/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_147/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_147/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_116/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_116/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_148/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_148/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_117/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_117/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_149/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_149/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Adam/batch_normalization_118/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_118/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_150/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_150/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_151/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_151/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_152/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_152/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_vgg16_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿàà
Ñ
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/bias'batch_normalization_112/moving_variancebatch_normalization_112/gamma#batch_normalization_112/moving_meanbatch_normalization_112/betadense_144/kerneldense_144/bias'batch_normalization_113/moving_variancebatch_normalization_113/gamma#batch_normalization_113/moving_meanbatch_normalization_113/betadense_145/kerneldense_145/bias'batch_normalization_114/moving_variancebatch_normalization_114/gamma#batch_normalization_114/moving_meanbatch_normalization_114/betadense_146/kerneldense_146/bias'batch_normalization_115/moving_variancebatch_normalization_115/gamma#batch_normalization_115/moving_meanbatch_normalization_115/betadense_147/kerneldense_147/bias'batch_normalization_116/moving_variancebatch_normalization_116/gamma#batch_normalization_116/moving_meanbatch_normalization_116/betadense_148/kerneldense_148/bias'batch_normalization_117/moving_variancebatch_normalization_117/gamma#batch_normalization_117/moving_meanbatch_normalization_117/betadense_149/kerneldense_149/bias'batch_normalization_118/moving_variancebatch_normalization_118/gamma#batch_normalization_118/moving_meanbatch_normalization_118/betadense_150/kerneldense_150/biasdense_151/kerneldense_151/biasdense_152/kerneldense_152/bias*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_5151538
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
î7
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1batch_normalization_112/gamma/Read/ReadVariableOp0batch_normalization_112/beta/Read/ReadVariableOp7batch_normalization_112/moving_mean/Read/ReadVariableOp;batch_normalization_112/moving_variance/Read/ReadVariableOp$dense_144/kernel/Read/ReadVariableOp"dense_144/bias/Read/ReadVariableOp1batch_normalization_113/gamma/Read/ReadVariableOp0batch_normalization_113/beta/Read/ReadVariableOp7batch_normalization_113/moving_mean/Read/ReadVariableOp;batch_normalization_113/moving_variance/Read/ReadVariableOp$dense_145/kernel/Read/ReadVariableOp"dense_145/bias/Read/ReadVariableOp1batch_normalization_114/gamma/Read/ReadVariableOp0batch_normalization_114/beta/Read/ReadVariableOp7batch_normalization_114/moving_mean/Read/ReadVariableOp;batch_normalization_114/moving_variance/Read/ReadVariableOp$dense_146/kernel/Read/ReadVariableOp"dense_146/bias/Read/ReadVariableOp1batch_normalization_115/gamma/Read/ReadVariableOp0batch_normalization_115/beta/Read/ReadVariableOp7batch_normalization_115/moving_mean/Read/ReadVariableOp;batch_normalization_115/moving_variance/Read/ReadVariableOp$dense_147/kernel/Read/ReadVariableOp"dense_147/bias/Read/ReadVariableOp1batch_normalization_116/gamma/Read/ReadVariableOp0batch_normalization_116/beta/Read/ReadVariableOp7batch_normalization_116/moving_mean/Read/ReadVariableOp;batch_normalization_116/moving_variance/Read/ReadVariableOp$dense_148/kernel/Read/ReadVariableOp"dense_148/bias/Read/ReadVariableOp1batch_normalization_117/gamma/Read/ReadVariableOp0batch_normalization_117/beta/Read/ReadVariableOp7batch_normalization_117/moving_mean/Read/ReadVariableOp;batch_normalization_117/moving_variance/Read/ReadVariableOp$dense_149/kernel/Read/ReadVariableOp"dense_149/bias/Read/ReadVariableOp1batch_normalization_118/gamma/Read/ReadVariableOp0batch_normalization_118/beta/Read/ReadVariableOp7batch_normalization_118/moving_mean/Read/ReadVariableOp;batch_normalization_118/moving_variance/Read/ReadVariableOp$dense_150/kernel/Read/ReadVariableOp"dense_150/bias/Read/ReadVariableOp$dense_151/kernel/Read/ReadVariableOp"dense_151/bias/Read/ReadVariableOp$dense_152/kernel/Read/ReadVariableOp"dense_152/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adam/batch_normalization_112/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_112/beta/m/Read/ReadVariableOp+Adam/dense_144/kernel/m/Read/ReadVariableOp)Adam/dense_144/bias/m/Read/ReadVariableOp8Adam/batch_normalization_113/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_113/beta/m/Read/ReadVariableOp+Adam/dense_145/kernel/m/Read/ReadVariableOp)Adam/dense_145/bias/m/Read/ReadVariableOp8Adam/batch_normalization_114/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_114/beta/m/Read/ReadVariableOp+Adam/dense_146/kernel/m/Read/ReadVariableOp)Adam/dense_146/bias/m/Read/ReadVariableOp8Adam/batch_normalization_115/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_115/beta/m/Read/ReadVariableOp+Adam/dense_147/kernel/m/Read/ReadVariableOp)Adam/dense_147/bias/m/Read/ReadVariableOp8Adam/batch_normalization_116/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_116/beta/m/Read/ReadVariableOp+Adam/dense_148/kernel/m/Read/ReadVariableOp)Adam/dense_148/bias/m/Read/ReadVariableOp8Adam/batch_normalization_117/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_117/beta/m/Read/ReadVariableOp+Adam/dense_149/kernel/m/Read/ReadVariableOp)Adam/dense_149/bias/m/Read/ReadVariableOp8Adam/batch_normalization_118/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_118/beta/m/Read/ReadVariableOp+Adam/dense_150/kernel/m/Read/ReadVariableOp)Adam/dense_150/bias/m/Read/ReadVariableOp+Adam/dense_151/kernel/m/Read/ReadVariableOp)Adam/dense_151/bias/m/Read/ReadVariableOp+Adam/dense_152/kernel/m/Read/ReadVariableOp)Adam/dense_152/bias/m/Read/ReadVariableOp8Adam/batch_normalization_112/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_112/beta/v/Read/ReadVariableOp+Adam/dense_144/kernel/v/Read/ReadVariableOp)Adam/dense_144/bias/v/Read/ReadVariableOp8Adam/batch_normalization_113/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_113/beta/v/Read/ReadVariableOp+Adam/dense_145/kernel/v/Read/ReadVariableOp)Adam/dense_145/bias/v/Read/ReadVariableOp8Adam/batch_normalization_114/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_114/beta/v/Read/ReadVariableOp+Adam/dense_146/kernel/v/Read/ReadVariableOp)Adam/dense_146/bias/v/Read/ReadVariableOp8Adam/batch_normalization_115/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_115/beta/v/Read/ReadVariableOp+Adam/dense_147/kernel/v/Read/ReadVariableOp)Adam/dense_147/bias/v/Read/ReadVariableOp8Adam/batch_normalization_116/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_116/beta/v/Read/ReadVariableOp+Adam/dense_148/kernel/v/Read/ReadVariableOp)Adam/dense_148/bias/v/Read/ReadVariableOp8Adam/batch_normalization_117/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_117/beta/v/Read/ReadVariableOp+Adam/dense_149/kernel/v/Read/ReadVariableOp)Adam/dense_149/bias/v/Read/ReadVariableOp8Adam/batch_normalization_118/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_118/beta/v/Read/ReadVariableOp+Adam/dense_150/kernel/v/Read/ReadVariableOp)Adam/dense_150/bias/v/Read/ReadVariableOp+Adam/dense_151/kernel/v/Read/ReadVariableOp)Adam/dense_151/bias/v/Read/ReadVariableOp+Adam/dense_152/kernel/v/Read/ReadVariableOp)Adam/dense_152/bias/v/Read/ReadVariableOpConst*¡
Tin
2	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_5153544
!
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_112/gammabatch_normalization_112/beta#batch_normalization_112/moving_mean'batch_normalization_112/moving_variancedense_144/kerneldense_144/biasbatch_normalization_113/gammabatch_normalization_113/beta#batch_normalization_113/moving_mean'batch_normalization_113/moving_variancedense_145/kerneldense_145/biasbatch_normalization_114/gammabatch_normalization_114/beta#batch_normalization_114/moving_mean'batch_normalization_114/moving_variancedense_146/kerneldense_146/biasbatch_normalization_115/gammabatch_normalization_115/beta#batch_normalization_115/moving_mean'batch_normalization_115/moving_variancedense_147/kerneldense_147/biasbatch_normalization_116/gammabatch_normalization_116/beta#batch_normalization_116/moving_mean'batch_normalization_116/moving_variancedense_148/kerneldense_148/biasbatch_normalization_117/gammabatch_normalization_117/beta#batch_normalization_117/moving_mean'batch_normalization_117/moving_variancedense_149/kerneldense_149/biasbatch_normalization_118/gammabatch_normalization_118/beta#batch_normalization_118/moving_mean'batch_normalization_118/moving_variancedense_150/kerneldense_150/biasdense_151/kerneldense_151/biasdense_152/kerneldense_152/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biastotalcounttotal_1count_1$Adam/batch_normalization_112/gamma/m#Adam/batch_normalization_112/beta/mAdam/dense_144/kernel/mAdam/dense_144/bias/m$Adam/batch_normalization_113/gamma/m#Adam/batch_normalization_113/beta/mAdam/dense_145/kernel/mAdam/dense_145/bias/m$Adam/batch_normalization_114/gamma/m#Adam/batch_normalization_114/beta/mAdam/dense_146/kernel/mAdam/dense_146/bias/m$Adam/batch_normalization_115/gamma/m#Adam/batch_normalization_115/beta/mAdam/dense_147/kernel/mAdam/dense_147/bias/m$Adam/batch_normalization_116/gamma/m#Adam/batch_normalization_116/beta/mAdam/dense_148/kernel/mAdam/dense_148/bias/m$Adam/batch_normalization_117/gamma/m#Adam/batch_normalization_117/beta/mAdam/dense_149/kernel/mAdam/dense_149/bias/m$Adam/batch_normalization_118/gamma/m#Adam/batch_normalization_118/beta/mAdam/dense_150/kernel/mAdam/dense_150/bias/mAdam/dense_151/kernel/mAdam/dense_151/bias/mAdam/dense_152/kernel/mAdam/dense_152/bias/m$Adam/batch_normalization_112/gamma/v#Adam/batch_normalization_112/beta/vAdam/dense_144/kernel/vAdam/dense_144/bias/v$Adam/batch_normalization_113/gamma/v#Adam/batch_normalization_113/beta/vAdam/dense_145/kernel/vAdam/dense_145/bias/v$Adam/batch_normalization_114/gamma/v#Adam/batch_normalization_114/beta/vAdam/dense_146/kernel/vAdam/dense_146/bias/v$Adam/batch_normalization_115/gamma/v#Adam/batch_normalization_115/beta/vAdam/dense_147/kernel/vAdam/dense_147/bias/v$Adam/batch_normalization_116/gamma/v#Adam/batch_normalization_116/beta/vAdam/dense_148/kernel/vAdam/dense_148/bias/v$Adam/batch_normalization_117/gamma/v#Adam/batch_normalization_117/beta/vAdam/dense_149/kernel/vAdam/dense_149/bias/v$Adam/batch_normalization_118/gamma/v#Adam/batch_normalization_118/beta/vAdam/dense_150/kernel/vAdam/dense_150/bias/vAdam/dense_151/kernel/vAdam/dense_151/bias/vAdam/dense_152/kernel/vAdam/dense_152/bias/v* 
Tin
2*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_5153989ü,
Þ
e
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152439

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²%
ñ
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148195

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
¦
.__inference_block5_conv2_layer_call_fn_5153045

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ù
F__inference_dense_146_layer_call_and_return_conditional_losses_5152217

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¯
Ô
9__inference_batch_normalization_117_layer_call_fn_5152497

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ø
e
,__inference_dropout_96_layer_call_fn_5152053

inputs
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5149394o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ
I
-__inference_block5_pool_layer_call_fn_5153081

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
f
-__inference_dropout_100_layer_call_fn_5152561

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5149262o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã
·
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148148

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â 
£
/__inference_sequential_16_layer_call_fn_5150027
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: @

unknown_36:@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@

unknown_41:	@

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:


unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	@

unknown_54:@

unknown_55:@

unknown_56:@

unknown_57:@

unknown_58:@

unknown_59:@ 

unknown_60: 

unknown_61: 

unknown_62: 

unknown_63: 

unknown_64: 

unknown_65: @

unknown_66:@

unknown_67:@@

unknown_68:@

unknown_69:@	

unknown_70:	
identity¢StatefulPartitionedCall¤

StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*\
_read_only_resource_inputs>
<:	
 #$%&)*+,/0125678;<=>ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_5149731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input

d
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152324

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block5_conv3_layer_call_and_return_conditional_losses_5153076

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
H
,__inference_dropout_96_layer_call_fn_5152048

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5148799`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ
I
-__inference_block4_pool_layer_call_fn_5153011

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ
¦
.__inference_block4_conv3_layer_call_fn_5152995

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²%
ñ
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152424

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block5_conv1_layer_call_and_return_conditional_losses_5153036

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
I
-__inference_dropout_100_layer_call_fn_5152556

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5148931`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ
¦
.__inference_block3_conv3_layer_call_fn_5152925

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs
õ	
f
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152070

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¡

ø
F__inference_dense_144_layer_call_and_return_conditional_losses_5151963

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
¦
.__inference_block3_conv2_layer_call_fn_5152905

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs
Û
f
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152566

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs


I__inference_block3_conv3_layer_call_and_return_conditional_losses_5152936

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs


I__inference_block5_conv2_layer_call_and_return_conditional_losses_5153056

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
e
G__inference_dropout_97_layer_call_and_return_conditional_losses_5148832

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152678

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Û
f
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152693

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ö
ë
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150373
vgg16_input'
vgg16_5150203:@
vgg16_5150205:@'
vgg16_5150207:@@
vgg16_5150209:@(
vgg16_5150211:@
vgg16_5150213:	)
vgg16_5150215:
vgg16_5150217:	)
vgg16_5150219:
vgg16_5150221:	)
vgg16_5150223:
vgg16_5150225:	)
vgg16_5150227:
vgg16_5150229:	)
vgg16_5150231:
vgg16_5150233:	)
vgg16_5150235:
vgg16_5150237:	)
vgg16_5150239:
vgg16_5150241:	)
vgg16_5150243:
vgg16_5150245:	)
vgg16_5150247:
vgg16_5150249:	)
vgg16_5150251:
vgg16_5150253:	.
batch_normalization_112_5150257:	.
batch_normalization_112_5150259:	.
batch_normalization_112_5150261:	.
batch_normalization_112_5150263:	$
dense_144_5150266:	 
dense_144_5150268: -
batch_normalization_113_5150271: -
batch_normalization_113_5150273: -
batch_normalization_113_5150275: -
batch_normalization_113_5150277: #
dense_145_5150281: @
dense_145_5150283:@-
batch_normalization_114_5150286:@-
batch_normalization_114_5150288:@-
batch_normalization_114_5150290:@-
batch_normalization_114_5150292:@$
dense_146_5150296:	@ 
dense_146_5150298:	.
batch_normalization_115_5150301:	.
batch_normalization_115_5150303:	.
batch_normalization_115_5150305:	.
batch_normalization_115_5150307:	%
dense_147_5150311:
 
dense_147_5150313:	.
batch_normalization_116_5150316:	.
batch_normalization_116_5150318:	.
batch_normalization_116_5150320:	.
batch_normalization_116_5150322:	$
dense_148_5150326:	@
dense_148_5150328:@-
batch_normalization_117_5150331:@-
batch_normalization_117_5150333:@-
batch_normalization_117_5150335:@-
batch_normalization_117_5150337:@#
dense_149_5150341:@ 
dense_149_5150343: -
batch_normalization_118_5150346: -
batch_normalization_118_5150348: -
batch_normalization_118_5150350: -
batch_normalization_118_5150352: #
dense_150_5150357: @
dense_150_5150359:@#
dense_151_5150362:@@
dense_151_5150364:@#
dense_152_5150367:@	
dense_152_5150369:	
identity¢/batch_normalization_112/StatefulPartitionedCall¢/batch_normalization_113/StatefulPartitionedCall¢/batch_normalization_114/StatefulPartitionedCall¢/batch_normalization_115/StatefulPartitionedCall¢/batch_normalization_116/StatefulPartitionedCall¢/batch_normalization_117/StatefulPartitionedCall¢/batch_normalization_118/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢!dense_146/StatefulPartitionedCall¢!dense_147/StatefulPartitionedCall¢!dense_148/StatefulPartitionedCall¢!dense_149/StatefulPartitionedCall¢!dense_150/StatefulPartitionedCall¢!dense_151/StatefulPartitionedCall¢!dense_152/StatefulPartitionedCall¢#dropout_100/StatefulPartitionedCall¢#dropout_101/StatefulPartitionedCall¢"dropout_96/StatefulPartitionedCall¢"dropout_97/StatefulPartitionedCall¢"dropout_98/StatefulPartitionedCall¢"dropout_99/StatefulPartitionedCall¢vgg16/StatefulPartitionedCall
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_5150203vgg16_5150205vgg16_5150207vgg16_5150209vgg16_5150211vgg16_5150213vgg16_5150215vgg16_5150217vgg16_5150219vgg16_5150221vgg16_5150223vgg16_5150225vgg16_5150227vgg16_5150229vgg16_5150231vgg16_5150233vgg16_5150235vgg16_5150237vgg16_5150239vgg16_5150241vgg16_5150243vgg16_5150245vgg16_5150247vgg16_5150249vgg16_5150251vgg16_5150253*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147851
+global_average_pooling2d_16/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121¥
/batch_normalization_112/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_16/PartitionedCall:output:0batch_normalization_112_5150257batch_normalization_112_5150259batch_normalization_112_5150261batch_normalization_112_5150263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148195¬
!dense_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_112/StatefulPartitionedCall:output:0dense_144_5150266dense_144_5150268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0batch_normalization_113_5150271batch_normalization_113_5150273batch_normalization_113_5150275batch_normalization_113_5150277*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148277
"dropout_96/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5149394
!dense_145/StatefulPartitionedCallStatefulPartitionedCall+dropout_96/StatefulPartitionedCall:output:0dense_145_5150281dense_145_5150283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall*dense_145/StatefulPartitionedCall:output:0batch_normalization_114_5150286batch_normalization_114_5150288batch_normalization_114_5150290batch_normalization_114_5150292*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148359§
"dropout_97/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0#^dropout_96/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5149361 
!dense_146/StatefulPartitionedCallStatefulPartitionedCall+dropout_97/StatefulPartitionedCall:output:0dense_146_5150296dense_146_5150298*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall*dense_146/StatefulPartitionedCall:output:0batch_normalization_115_5150301batch_normalization_115_5150303batch_normalization_115_5150305batch_normalization_115_5150307*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148441¨
"dropout_98/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0#^dropout_97/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5149328 
!dense_147/StatefulPartitionedCallStatefulPartitionedCall+dropout_98/StatefulPartitionedCall:output:0dense_147_5150311dense_147_5150313*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall*dense_147/StatefulPartitionedCall:output:0batch_normalization_116_5150316batch_normalization_116_5150318batch_normalization_116_5150320batch_normalization_116_5150322*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148523¨
"dropout_99/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0#^dropout_98/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5149295
!dense_148/StatefulPartitionedCallStatefulPartitionedCall+dropout_99/StatefulPartitionedCall:output:0dense_148_5150326dense_148_5150328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911
/batch_normalization_117/StatefulPartitionedCallStatefulPartitionedCall*dense_148/StatefulPartitionedCall:output:0batch_normalization_117_5150331batch_normalization_117_5150333batch_normalization_117_5150335batch_normalization_117_5150337*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148605©
#dropout_100/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_117/StatefulPartitionedCall:output:0#^dropout_99/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5149262 
!dense_149/StatefulPartitionedCallStatefulPartitionedCall,dropout_100/StatefulPartitionedCall:output:0dense_149_5150341dense_149_5150343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944
/batch_normalization_118/StatefulPartitionedCallStatefulPartitionedCall*dense_149/StatefulPartitionedCall:output:0batch_normalization_118_5150346batch_normalization_118_5150348batch_normalization_118_5150350batch_normalization_118_5150352*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148687ª
#dropout_101/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_118/StatefulPartitionedCall:output:0$^dropout_100/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5149229æ
flatten_16/PartitionedCallPartitionedCall,dropout_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_150_5150357dense_150_5150359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985
!dense_151/StatefulPartitionedCallStatefulPartitionedCall*dense_150/StatefulPartitionedCall:output:0dense_151_5150362dense_151_5150364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002
!dense_152/StatefulPartitionedCallStatefulPartitionedCall*dense_151/StatefulPartitionedCall:output:0dense_152_5150367dense_152_5150369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019y
IdentityIdentity*dense_152/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	è
NoOpNoOp0^batch_normalization_112/StatefulPartitionedCall0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall0^batch_normalization_117/StatefulPartitionedCall0^batch_normalization_118/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall"^dense_146/StatefulPartitionedCall"^dense_147/StatefulPartitionedCall"^dense_148/StatefulPartitionedCall"^dense_149/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall$^dropout_100/StatefulPartitionedCall$^dropout_101/StatefulPartitionedCall#^dropout_96/StatefulPartitionedCall#^dropout_97/StatefulPartitionedCall#^dropout_98/StatefulPartitionedCall#^dropout_99/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_112/StatefulPartitionedCall/batch_normalization_112/StatefulPartitionedCall2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2b
/batch_normalization_117/StatefulPartitionedCall/batch_normalization_117/StatefulPartitionedCall2b
/batch_normalization_118/StatefulPartitionedCall/batch_normalization_118/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2F
!dense_149/StatefulPartitionedCall!dense_149/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2J
#dropout_100/StatefulPartitionedCall#dropout_100/StatefulPartitionedCall2J
#dropout_101/StatefulPartitionedCall#dropout_101/StatefulPartitionedCall2H
"dropout_96/StatefulPartitionedCall"dropout_96/StatefulPartitionedCall2H
"dropout_97/StatefulPartitionedCall"dropout_97/StatefulPartitionedCall2H
"dropout_98/StatefulPartitionedCall"dropout_98/StatefulPartitionedCall2H
"dropout_99/StatefulPartitionedCall"dropout_99/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input
·
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_5152716

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
þ
¦
.__inference_block2_conv2_layer_call_fn_5152855

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿpp: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
 
_user_specified_nameinputs
±
÷
B__inference_vgg16_layer_call_and_return_conditional_losses_5151852

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	
identity¢#block1_conv1/BiasAdd/ReadVariableOp¢"block1_conv1/Conv2D/ReadVariableOp¢#block1_conv2/BiasAdd/ReadVariableOp¢"block1_conv2/Conv2D/ReadVariableOp¢#block2_conv1/BiasAdd/ReadVariableOp¢"block2_conv1/Conv2D/ReadVariableOp¢#block2_conv2/BiasAdd/ReadVariableOp¢"block2_conv2/Conv2D/ReadVariableOp¢#block3_conv1/BiasAdd/ReadVariableOp¢"block3_conv1/Conv2D/ReadVariableOp¢#block3_conv2/BiasAdd/ReadVariableOp¢"block3_conv2/Conv2D/ReadVariableOp¢#block3_conv3/BiasAdd/ReadVariableOp¢"block3_conv3/Conv2D/ReadVariableOp¢#block4_conv1/BiasAdd/ReadVariableOp¢"block4_conv1/Conv2D/ReadVariableOp¢#block4_conv2/BiasAdd/ReadVariableOp¢"block4_conv2/Conv2D/ReadVariableOp¢#block4_conv3/BiasAdd/ReadVariableOp¢"block4_conv3/Conv2D/ReadVariableOp¢#block5_conv1/BiasAdd/ReadVariableOp¢"block5_conv1/Conv2D/ReadVariableOp¢#block5_conv2/BiasAdd/ReadVariableOp¢"block5_conv2/Conv2D/ReadVariableOp¢#block5_conv3/BiasAdd/ReadVariableOp¢"block5_conv3/Conv2D/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0µ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¦
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Î
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¦
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¬
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ê
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpps
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpps
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ã
·
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148394

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
ÔA
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150962

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	M
1vgg16_block2_conv2_conv2d_readvariableop_resource:A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv1_conv2d_readvariableop_resource:A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	M
1vgg16_block3_conv2_conv2d_readvariableop_resource:A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv3_conv2d_readvariableop_resource:A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	M
1vgg16_block4_conv1_conv2d_readvariableop_resource:A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	M
1vgg16_block4_conv2_conv2d_readvariableop_resource:A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	M
1vgg16_block4_conv3_conv2d_readvariableop_resource:A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	M
1vgg16_block5_conv1_conv2d_readvariableop_resource:A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	M
1vgg16_block5_conv2_conv2d_readvariableop_resource:A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	M
1vgg16_block5_conv3_conv2d_readvariableop_resource:A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	H
9batch_normalization_112_batchnorm_readvariableop_resource:	L
=batch_normalization_112_batchnorm_mul_readvariableop_resource:	J
;batch_normalization_112_batchnorm_readvariableop_1_resource:	J
;batch_normalization_112_batchnorm_readvariableop_2_resource:	;
(dense_144_matmul_readvariableop_resource:	 7
)dense_144_biasadd_readvariableop_resource: G
9batch_normalization_113_batchnorm_readvariableop_resource: K
=batch_normalization_113_batchnorm_mul_readvariableop_resource: I
;batch_normalization_113_batchnorm_readvariableop_1_resource: I
;batch_normalization_113_batchnorm_readvariableop_2_resource: :
(dense_145_matmul_readvariableop_resource: @7
)dense_145_biasadd_readvariableop_resource:@G
9batch_normalization_114_batchnorm_readvariableop_resource:@K
=batch_normalization_114_batchnorm_mul_readvariableop_resource:@I
;batch_normalization_114_batchnorm_readvariableop_1_resource:@I
;batch_normalization_114_batchnorm_readvariableop_2_resource:@;
(dense_146_matmul_readvariableop_resource:	@8
)dense_146_biasadd_readvariableop_resource:	H
9batch_normalization_115_batchnorm_readvariableop_resource:	L
=batch_normalization_115_batchnorm_mul_readvariableop_resource:	J
;batch_normalization_115_batchnorm_readvariableop_1_resource:	J
;batch_normalization_115_batchnorm_readvariableop_2_resource:	<
(dense_147_matmul_readvariableop_resource:
8
)dense_147_biasadd_readvariableop_resource:	H
9batch_normalization_116_batchnorm_readvariableop_resource:	L
=batch_normalization_116_batchnorm_mul_readvariableop_resource:	J
;batch_normalization_116_batchnorm_readvariableop_1_resource:	J
;batch_normalization_116_batchnorm_readvariableop_2_resource:	;
(dense_148_matmul_readvariableop_resource:	@7
)dense_148_biasadd_readvariableop_resource:@G
9batch_normalization_117_batchnorm_readvariableop_resource:@K
=batch_normalization_117_batchnorm_mul_readvariableop_resource:@I
;batch_normalization_117_batchnorm_readvariableop_1_resource:@I
;batch_normalization_117_batchnorm_readvariableop_2_resource:@:
(dense_149_matmul_readvariableop_resource:@ 7
)dense_149_biasadd_readvariableop_resource: G
9batch_normalization_118_batchnorm_readvariableop_resource: K
=batch_normalization_118_batchnorm_mul_readvariableop_resource: I
;batch_normalization_118_batchnorm_readvariableop_1_resource: I
;batch_normalization_118_batchnorm_readvariableop_2_resource: :
(dense_150_matmul_readvariableop_resource: @7
)dense_150_biasadd_readvariableop_resource:@:
(dense_151_matmul_readvariableop_resource:@@7
)dense_151_biasadd_readvariableop_resource:@:
(dense_152_matmul_readvariableop_resource:@	7
)dense_152_biasadd_readvariableop_resource:	
identity¢0batch_normalization_112/batchnorm/ReadVariableOp¢2batch_normalization_112/batchnorm/ReadVariableOp_1¢2batch_normalization_112/batchnorm/ReadVariableOp_2¢4batch_normalization_112/batchnorm/mul/ReadVariableOp¢0batch_normalization_113/batchnorm/ReadVariableOp¢2batch_normalization_113/batchnorm/ReadVariableOp_1¢2batch_normalization_113/batchnorm/ReadVariableOp_2¢4batch_normalization_113/batchnorm/mul/ReadVariableOp¢0batch_normalization_114/batchnorm/ReadVariableOp¢2batch_normalization_114/batchnorm/ReadVariableOp_1¢2batch_normalization_114/batchnorm/ReadVariableOp_2¢4batch_normalization_114/batchnorm/mul/ReadVariableOp¢0batch_normalization_115/batchnorm/ReadVariableOp¢2batch_normalization_115/batchnorm/ReadVariableOp_1¢2batch_normalization_115/batchnorm/ReadVariableOp_2¢4batch_normalization_115/batchnorm/mul/ReadVariableOp¢0batch_normalization_116/batchnorm/ReadVariableOp¢2batch_normalization_116/batchnorm/ReadVariableOp_1¢2batch_normalization_116/batchnorm/ReadVariableOp_2¢4batch_normalization_116/batchnorm/mul/ReadVariableOp¢0batch_normalization_117/batchnorm/ReadVariableOp¢2batch_normalization_117/batchnorm/ReadVariableOp_1¢2batch_normalization_117/batchnorm/ReadVariableOp_2¢4batch_normalization_117/batchnorm/mul/ReadVariableOp¢0batch_normalization_118/batchnorm/ReadVariableOp¢2batch_normalization_118/batchnorm/ReadVariableOp_1¢2batch_normalization_118/batchnorm/ReadVariableOp_2¢4batch_normalization_118/batchnorm/mul/ReadVariableOp¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢ dense_145/BiasAdd/ReadVariableOp¢dense_145/MatMul/ReadVariableOp¢ dense_146/BiasAdd/ReadVariableOp¢dense_146/MatMul/ReadVariableOp¢ dense_147/BiasAdd/ReadVariableOp¢dense_147/MatMul/ReadVariableOp¢ dense_148/BiasAdd/ReadVariableOp¢dense_148/MatMul/ReadVariableOp¢ dense_149/BiasAdd/ReadVariableOp¢dense_149/MatMul/ReadVariableOp¢ dense_150/BiasAdd/ReadVariableOp¢dense_150/MatMul/ReadVariableOp¢ dense_151/BiasAdd/ReadVariableOp¢dense_151/MatMul/ReadVariableOp¢ dense_152/BiasAdd/ReadVariableOp¢dense_152/MatMul/ReadVariableOp¢)vgg16/block1_conv1/BiasAdd/ReadVariableOp¢(vgg16/block1_conv1/Conv2D/ReadVariableOp¢)vgg16/block1_conv2/BiasAdd/ReadVariableOp¢(vgg16/block1_conv2/Conv2D/ReadVariableOp¢)vgg16/block2_conv1/BiasAdd/ReadVariableOp¢(vgg16/block2_conv1/Conv2D/ReadVariableOp¢)vgg16/block2_conv2/BiasAdd/ReadVariableOp¢(vgg16/block2_conv2/Conv2D/ReadVariableOp¢)vgg16/block3_conv1/BiasAdd/ReadVariableOp¢(vgg16/block3_conv1/Conv2D/ReadVariableOp¢)vgg16/block3_conv2/BiasAdd/ReadVariableOp¢(vgg16/block3_conv2/Conv2D/ReadVariableOp¢)vgg16/block3_conv3/BiasAdd/ReadVariableOp¢(vgg16/block3_conv3/Conv2D/ReadVariableOp¢)vgg16/block4_conv1/BiasAdd/ReadVariableOp¢(vgg16/block4_conv1/Conv2D/ReadVariableOp¢)vgg16/block4_conv2/BiasAdd/ReadVariableOp¢(vgg16/block4_conv2/Conv2D/ReadVariableOp¢)vgg16/block4_conv3/BiasAdd/ReadVariableOp¢(vgg16/block4_conv3/Conv2D/ReadVariableOp¢)vgg16/block5_conv1/BiasAdd/ReadVariableOp¢(vgg16/block5_conv1/Conv2D/ReadVariableOp¢)vgg16/block5_conv2/BiasAdd/ReadVariableOp¢(vgg16/block5_conv2/Conv2D/ReadVariableOp¢)vgg16/block5_conv3/BiasAdd/ReadVariableOp¢(vgg16/block5_conv3/Conv2D/ReadVariableOp¢
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¢
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0à
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¸
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@*
ksize
*
paddingVALID*
strides
£
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp¤
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp¹
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
ksize
*
paddingVALID*
strides
¤
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¤
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¤
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¹
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

2global_average_pooling2d_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ¼
 global_average_pooling2d_16/MeanMean"vgg16/block5_pool/MaxPool:output:0;global_average_pooling2d_16/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0batch_normalization_112/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_112_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0l
'batch_normalization_112/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:À
%batch_normalization_112/batchnorm/addAddV28batch_normalization_112/batchnorm/ReadVariableOp:value:00batch_normalization_112/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_112/batchnorm/RsqrtRsqrt)batch_normalization_112/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_112/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_112_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_112/batchnorm/mulMul+batch_normalization_112/batchnorm/Rsqrt:y:0<batch_normalization_112/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:·
'batch_normalization_112/batchnorm/mul_1Mul)global_average_pooling2d_16/Mean:output:0)batch_normalization_112/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
2batch_normalization_112/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_112_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0»
'batch_normalization_112/batchnorm/mul_2Mul:batch_normalization_112/batchnorm/ReadVariableOp_1:value:0)batch_normalization_112/batchnorm/mul:z:0*
T0*
_output_shapes	
:«
2batch_normalization_112/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_112_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0»
%batch_normalization_112/batchnorm/subSub:batch_normalization_112/batchnorm/ReadVariableOp_2:value:0+batch_normalization_112/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_112/batchnorm/add_1AddV2+batch_normalization_112/batchnorm/mul_1:z:0)batch_normalization_112/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0¢
dense_144/MatMulMatMul+batch_normalization_112/batchnorm/add_1:z:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_144/ReluReludense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
0batch_normalization_113/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_113_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0l
'batch_normalization_113/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¿
%batch_normalization_113/batchnorm/addAddV28batch_normalization_113/batchnorm/ReadVariableOp:value:00batch_normalization_113/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
'batch_normalization_113/batchnorm/RsqrtRsqrt)batch_normalization_113/batchnorm/add:z:0*
T0*
_output_shapes
: ®
4batch_normalization_113/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_113_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0¼
%batch_normalization_113/batchnorm/mulMul+batch_normalization_113/batchnorm/Rsqrt:y:0<batch_normalization_113/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ©
'batch_normalization_113/batchnorm/mul_1Muldense_144/Relu:activations:0)batch_normalization_113/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
2batch_normalization_113/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_113_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0º
'batch_normalization_113/batchnorm/mul_2Mul:batch_normalization_113/batchnorm/ReadVariableOp_1:value:0)batch_normalization_113/batchnorm/mul:z:0*
T0*
_output_shapes
: ª
2batch_normalization_113/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_113_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0º
%batch_normalization_113/batchnorm/subSub:batch_normalization_113/batchnorm/ReadVariableOp_2:value:0+batch_normalization_113/batchnorm/mul_2:z:0*
T0*
_output_shapes
: º
'batch_normalization_113/batchnorm/add_1AddV2+batch_normalization_113/batchnorm/mul_1:z:0)batch_normalization_113/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
dropout_96/IdentityIdentity+batch_normalization_113/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0
dense_145/MatMulMatMuldropout_96/Identity:output:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_145/ReluReludense_145/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0batch_normalization_114/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_114_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0l
'batch_normalization_114/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¿
%batch_normalization_114/batchnorm/addAddV28batch_normalization_114/batchnorm/ReadVariableOp:value:00batch_normalization_114/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
'batch_normalization_114/batchnorm/RsqrtRsqrt)batch_normalization_114/batchnorm/add:z:0*
T0*
_output_shapes
:@®
4batch_normalization_114/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_114_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¼
%batch_normalization_114/batchnorm/mulMul+batch_normalization_114/batchnorm/Rsqrt:y:0<batch_normalization_114/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@©
'batch_normalization_114/batchnorm/mul_1Muldense_145/Relu:activations:0)batch_normalization_114/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2batch_normalization_114/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_114_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0º
'batch_normalization_114/batchnorm/mul_2Mul:batch_normalization_114/batchnorm/ReadVariableOp_1:value:0)batch_normalization_114/batchnorm/mul:z:0*
T0*
_output_shapes
:@ª
2batch_normalization_114/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_114_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0º
%batch_normalization_114/batchnorm/subSub:batch_normalization_114/batchnorm/ReadVariableOp_2:value:0+batch_normalization_114/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@º
'batch_normalization_114/batchnorm/add_1AddV2+batch_normalization_114/batchnorm/mul_1:z:0)batch_normalization_114/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dropout_97/IdentityIdentity+batch_normalization_114/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_146/MatMul/ReadVariableOpReadVariableOp(dense_146_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_146/MatMulMatMuldropout_97/Identity:output:0'dense_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_146/BiasAdd/ReadVariableOpReadVariableOp)dense_146_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_146/BiasAddBiasAdddense_146/MatMul:product:0(dense_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_146/ReluReludense_146/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0batch_normalization_115/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_115_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0l
'batch_normalization_115/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:À
%batch_normalization_115/batchnorm/addAddV28batch_normalization_115/batchnorm/ReadVariableOp:value:00batch_normalization_115/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_115/batchnorm/RsqrtRsqrt)batch_normalization_115/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_115/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_115_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_115/batchnorm/mulMul+batch_normalization_115/batchnorm/Rsqrt:y:0<batch_normalization_115/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ª
'batch_normalization_115/batchnorm/mul_1Muldense_146/Relu:activations:0)batch_normalization_115/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
2batch_normalization_115/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_115_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0»
'batch_normalization_115/batchnorm/mul_2Mul:batch_normalization_115/batchnorm/ReadVariableOp_1:value:0)batch_normalization_115/batchnorm/mul:z:0*
T0*
_output_shapes	
:«
2batch_normalization_115/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_115_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0»
%batch_normalization_115/batchnorm/subSub:batch_normalization_115/batchnorm/ReadVariableOp_2:value:0+batch_normalization_115/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_115/batchnorm/add_1AddV2+batch_normalization_115/batchnorm/mul_1:z:0)batch_normalization_115/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_98/IdentityIdentity+batch_normalization_115/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_147/MatMul/ReadVariableOpReadVariableOp(dense_147_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_147/MatMulMatMuldropout_98/Identity:output:0'dense_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_147/BiasAdd/ReadVariableOpReadVariableOp)dense_147_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_147/BiasAddBiasAdddense_147/MatMul:product:0(dense_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_147/ReluReludense_147/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0batch_normalization_116/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_116_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0l
'batch_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:À
%batch_normalization_116/batchnorm/addAddV28batch_normalization_116/batchnorm/ReadVariableOp:value:00batch_normalization_116/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_116/batchnorm/RsqrtRsqrt)batch_normalization_116/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_116/batchnorm/mulMul+batch_normalization_116/batchnorm/Rsqrt:y:0<batch_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ª
'batch_normalization_116/batchnorm/mul_1Muldense_147/Relu:activations:0)batch_normalization_116/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
2batch_normalization_116/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_116_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0»
'batch_normalization_116/batchnorm/mul_2Mul:batch_normalization_116/batchnorm/ReadVariableOp_1:value:0)batch_normalization_116/batchnorm/mul:z:0*
T0*
_output_shapes	
:«
2batch_normalization_116/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_116_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0»
%batch_normalization_116/batchnorm/subSub:batch_normalization_116/batchnorm/ReadVariableOp_2:value:0+batch_normalization_116/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_116/batchnorm/add_1AddV2+batch_normalization_116/batchnorm/mul_1:z:0)batch_normalization_116/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_99/IdentityIdentity+batch_normalization_116/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_148/MatMul/ReadVariableOpReadVariableOp(dense_148_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_148/MatMulMatMuldropout_99/Identity:output:0'dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_148/BiasAdd/ReadVariableOpReadVariableOp)dense_148_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_148/BiasAddBiasAdddense_148/MatMul:product:0(dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_148/ReluReludense_148/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0batch_normalization_117/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0l
'batch_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¿
%batch_normalization_117/batchnorm/addAddV28batch_normalization_117/batchnorm/ReadVariableOp:value:00batch_normalization_117/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
'batch_normalization_117/batchnorm/RsqrtRsqrt)batch_normalization_117/batchnorm/add:z:0*
T0*
_output_shapes
:@®
4batch_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¼
%batch_normalization_117/batchnorm/mulMul+batch_normalization_117/batchnorm/Rsqrt:y:0<batch_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@©
'batch_normalization_117/batchnorm/mul_1Muldense_148/Relu:activations:0)batch_normalization_117/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2batch_normalization_117/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_117_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0º
'batch_normalization_117/batchnorm/mul_2Mul:batch_normalization_117/batchnorm/ReadVariableOp_1:value:0)batch_normalization_117/batchnorm/mul:z:0*
T0*
_output_shapes
:@ª
2batch_normalization_117/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_117_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0º
%batch_normalization_117/batchnorm/subSub:batch_normalization_117/batchnorm/ReadVariableOp_2:value:0+batch_normalization_117/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@º
'batch_normalization_117/batchnorm/add_1AddV2+batch_normalization_117/batchnorm/mul_1:z:0)batch_normalization_117/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_100/IdentityIdentity+batch_normalization_117/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_149/MatMul/ReadVariableOpReadVariableOp(dense_149_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_149/MatMulMatMuldropout_100/Identity:output:0'dense_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_149/BiasAdd/ReadVariableOpReadVariableOp)dense_149_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_149/BiasAddBiasAdddense_149/MatMul:product:0(dense_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_149/ReluReludense_149/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
0batch_normalization_118/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_118_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0l
'batch_normalization_118/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¿
%batch_normalization_118/batchnorm/addAddV28batch_normalization_118/batchnorm/ReadVariableOp:value:00batch_normalization_118/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
'batch_normalization_118/batchnorm/RsqrtRsqrt)batch_normalization_118/batchnorm/add:z:0*
T0*
_output_shapes
: ®
4batch_normalization_118/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_118_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0¼
%batch_normalization_118/batchnorm/mulMul+batch_normalization_118/batchnorm/Rsqrt:y:0<batch_normalization_118/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ©
'batch_normalization_118/batchnorm/mul_1Muldense_149/Relu:activations:0)batch_normalization_118/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
2batch_normalization_118/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_118_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0º
'batch_normalization_118/batchnorm/mul_2Mul:batch_normalization_118/batchnorm/ReadVariableOp_1:value:0)batch_normalization_118/batchnorm/mul:z:0*
T0*
_output_shapes
: ª
2batch_normalization_118/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_118_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0º
%batch_normalization_118/batchnorm/subSub:batch_normalization_118/batchnorm/ReadVariableOp_2:value:0+batch_normalization_118/batchnorm/mul_2:z:0*
T0*
_output_shapes
: º
'batch_normalization_118/batchnorm/add_1AddV2+batch_normalization_118/batchnorm/mul_1:z:0)batch_normalization_118/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_101/IdentityIdentity+batch_normalization_118/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_16/ReshapeReshapedropout_101/Identity:output:0flatten_16/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_150/MatMul/ReadVariableOpReadVariableOp(dense_150_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0
dense_150/MatMulMatMulflatten_16/Reshape:output:0'dense_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_150/BiasAdd/ReadVariableOpReadVariableOp)dense_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_150/BiasAddBiasAdddense_150/MatMul:product:0(dense_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_150/ReluReludense_150/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_151/MatMul/ReadVariableOpReadVariableOp(dense_151_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense_151/MatMulMatMuldense_150/Relu:activations:0'dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_151/BiasAdd/ReadVariableOpReadVariableOp)dense_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_151/BiasAddBiasAdddense_151/MatMul:product:0(dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_151/ReluReludense_151/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0
dense_152/MatMulMatMuldense_151/Relu:activations:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	j
dense_152/SoftmaxSoftmaxdense_152/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	j
IdentityIdentitydense_152/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	ê
NoOpNoOp1^batch_normalization_112/batchnorm/ReadVariableOp3^batch_normalization_112/batchnorm/ReadVariableOp_13^batch_normalization_112/batchnorm/ReadVariableOp_25^batch_normalization_112/batchnorm/mul/ReadVariableOp1^batch_normalization_113/batchnorm/ReadVariableOp3^batch_normalization_113/batchnorm/ReadVariableOp_13^batch_normalization_113/batchnorm/ReadVariableOp_25^batch_normalization_113/batchnorm/mul/ReadVariableOp1^batch_normalization_114/batchnorm/ReadVariableOp3^batch_normalization_114/batchnorm/ReadVariableOp_13^batch_normalization_114/batchnorm/ReadVariableOp_25^batch_normalization_114/batchnorm/mul/ReadVariableOp1^batch_normalization_115/batchnorm/ReadVariableOp3^batch_normalization_115/batchnorm/ReadVariableOp_13^batch_normalization_115/batchnorm/ReadVariableOp_25^batch_normalization_115/batchnorm/mul/ReadVariableOp1^batch_normalization_116/batchnorm/ReadVariableOp3^batch_normalization_116/batchnorm/ReadVariableOp_13^batch_normalization_116/batchnorm/ReadVariableOp_25^batch_normalization_116/batchnorm/mul/ReadVariableOp1^batch_normalization_117/batchnorm/ReadVariableOp3^batch_normalization_117/batchnorm/ReadVariableOp_13^batch_normalization_117/batchnorm/ReadVariableOp_25^batch_normalization_117/batchnorm/mul/ReadVariableOp1^batch_normalization_118/batchnorm/ReadVariableOp3^batch_normalization_118/batchnorm/ReadVariableOp_13^batch_normalization_118/batchnorm/ReadVariableOp_25^batch_normalization_118/batchnorm/mul/ReadVariableOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp!^dense_146/BiasAdd/ReadVariableOp ^dense_146/MatMul/ReadVariableOp!^dense_147/BiasAdd/ReadVariableOp ^dense_147/MatMul/ReadVariableOp!^dense_148/BiasAdd/ReadVariableOp ^dense_148/MatMul/ReadVariableOp!^dense_149/BiasAdd/ReadVariableOp ^dense_149/MatMul/ReadVariableOp!^dense_150/BiasAdd/ReadVariableOp ^dense_150/MatMul/ReadVariableOp!^dense_151/BiasAdd/ReadVariableOp ^dense_151/MatMul/ReadVariableOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_112/batchnorm/ReadVariableOp0batch_normalization_112/batchnorm/ReadVariableOp2h
2batch_normalization_112/batchnorm/ReadVariableOp_12batch_normalization_112/batchnorm/ReadVariableOp_12h
2batch_normalization_112/batchnorm/ReadVariableOp_22batch_normalization_112/batchnorm/ReadVariableOp_22l
4batch_normalization_112/batchnorm/mul/ReadVariableOp4batch_normalization_112/batchnorm/mul/ReadVariableOp2d
0batch_normalization_113/batchnorm/ReadVariableOp0batch_normalization_113/batchnorm/ReadVariableOp2h
2batch_normalization_113/batchnorm/ReadVariableOp_12batch_normalization_113/batchnorm/ReadVariableOp_12h
2batch_normalization_113/batchnorm/ReadVariableOp_22batch_normalization_113/batchnorm/ReadVariableOp_22l
4batch_normalization_113/batchnorm/mul/ReadVariableOp4batch_normalization_113/batchnorm/mul/ReadVariableOp2d
0batch_normalization_114/batchnorm/ReadVariableOp0batch_normalization_114/batchnorm/ReadVariableOp2h
2batch_normalization_114/batchnorm/ReadVariableOp_12batch_normalization_114/batchnorm/ReadVariableOp_12h
2batch_normalization_114/batchnorm/ReadVariableOp_22batch_normalization_114/batchnorm/ReadVariableOp_22l
4batch_normalization_114/batchnorm/mul/ReadVariableOp4batch_normalization_114/batchnorm/mul/ReadVariableOp2d
0batch_normalization_115/batchnorm/ReadVariableOp0batch_normalization_115/batchnorm/ReadVariableOp2h
2batch_normalization_115/batchnorm/ReadVariableOp_12batch_normalization_115/batchnorm/ReadVariableOp_12h
2batch_normalization_115/batchnorm/ReadVariableOp_22batch_normalization_115/batchnorm/ReadVariableOp_22l
4batch_normalization_115/batchnorm/mul/ReadVariableOp4batch_normalization_115/batchnorm/mul/ReadVariableOp2d
0batch_normalization_116/batchnorm/ReadVariableOp0batch_normalization_116/batchnorm/ReadVariableOp2h
2batch_normalization_116/batchnorm/ReadVariableOp_12batch_normalization_116/batchnorm/ReadVariableOp_12h
2batch_normalization_116/batchnorm/ReadVariableOp_22batch_normalization_116/batchnorm/ReadVariableOp_22l
4batch_normalization_116/batchnorm/mul/ReadVariableOp4batch_normalization_116/batchnorm/mul/ReadVariableOp2d
0batch_normalization_117/batchnorm/ReadVariableOp0batch_normalization_117/batchnorm/ReadVariableOp2h
2batch_normalization_117/batchnorm/ReadVariableOp_12batch_normalization_117/batchnorm/ReadVariableOp_12h
2batch_normalization_117/batchnorm/ReadVariableOp_22batch_normalization_117/batchnorm/ReadVariableOp_22l
4batch_normalization_117/batchnorm/mul/ReadVariableOp4batch_normalization_117/batchnorm/mul/ReadVariableOp2d
0batch_normalization_118/batchnorm/ReadVariableOp0batch_normalization_118/batchnorm/ReadVariableOp2h
2batch_normalization_118/batchnorm/ReadVariableOp_12batch_normalization_118/batchnorm/ReadVariableOp_12h
2batch_normalization_118/batchnorm/ReadVariableOp_22batch_normalization_118/batchnorm/ReadVariableOp_22l
4batch_normalization_118/batchnorm/mul/ReadVariableOp4batch_normalization_118/batchnorm/mul/ReadVariableOp2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2D
 dense_146/BiasAdd/ReadVariableOp dense_146/BiasAdd/ReadVariableOp2B
dense_146/MatMul/ReadVariableOpdense_146/MatMul/ReadVariableOp2D
 dense_147/BiasAdd/ReadVariableOp dense_147/BiasAdd/ReadVariableOp2B
dense_147/MatMul/ReadVariableOpdense_147/MatMul/ReadVariableOp2D
 dense_148/BiasAdd/ReadVariableOp dense_148/BiasAdd/ReadVariableOp2B
dense_148/MatMul/ReadVariableOpdense_148/MatMul/ReadVariableOp2D
 dense_149/BiasAdd/ReadVariableOp dense_149/BiasAdd/ReadVariableOp2B
dense_149/MatMul/ReadVariableOpdense_149/MatMul/ReadVariableOp2D
 dense_150/BiasAdd/ReadVariableOp dense_150/BiasAdd/ReadVariableOp2B
dense_150/MatMul/ReadVariableOpdense_150/MatMul/ReadVariableOp2D
 dense_151/BiasAdd/ReadVariableOp dense_151/BiasAdd/ReadVariableOp2B
dense_151/MatMul/ReadVariableOpdense_151/MatMul/ReadVariableOp2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs


I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs

d
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²%
ñ
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152297

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152517

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ö	
g
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152578

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152644

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¢

÷
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019

inputs0
matmul_readvariableop_resource:@	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

d
H__inference_block4_pool_layer_call_and_return_conditional_losses_5153016

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
éW
À
B__inference_vgg16_layer_call_and_return_conditional_losses_5147533

inputs.
block1_conv1_5147318:@"
block1_conv1_5147320:@.
block1_conv2_5147335:@@"
block1_conv2_5147337:@/
block2_conv1_5147353:@#
block2_conv1_5147355:	0
block2_conv2_5147370:#
block2_conv2_5147372:	0
block3_conv1_5147388:#
block3_conv1_5147390:	0
block3_conv2_5147405:#
block3_conv2_5147407:	0
block3_conv3_5147422:#
block3_conv3_5147424:	0
block4_conv1_5147440:#
block4_conv1_5147442:	0
block4_conv2_5147457:#
block4_conv2_5147459:	0
block4_conv3_5147474:#
block4_conv3_5147476:	0
block5_conv1_5147492:#
block5_conv1_5147494:	0
block5_conv2_5147509:#
block5_conv2_5147511:	0
block5_conv3_5147526:#
block5_conv3_5147528:	
identity¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_5147318block1_conv1_5147320*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317·
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5147335block1_conv2_5147337*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334ñ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248­
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5147353block2_conv1_5147355*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352¶
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5147370block2_conv2_5147372*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369ò
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260­
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5147388block3_conv1_5147390*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387¶
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5147405block3_conv2_5147407*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404¶
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5147422block3_conv3_5147424*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421ò
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272­
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5147440block4_conv1_5147442*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439¶
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5147457block4_conv2_5147459*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456¶
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5147474block4_conv3_5147476*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473ò
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284­
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5147492block5_conv1_5147494*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491¶
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5147509block5_conv2_5147511*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508¶
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5147526block5_conv3_5147528*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525ò
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
þ
¦
.__inference_block5_conv1_layer_call_fn_5153025

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
Ø
9__inference_batch_normalization_112_layer_call_fn_5151889

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148195p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152136

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ý
³
'__inference_vgg16_layer_call_fn_5151595

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147533x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_99_layer_call_and_return_conditional_losses_5149295

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

+__inference_dense_148_layer_call_fn_5152460

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïW
Â
B__inference_vgg16_layer_call_and_return_conditional_losses_5148111
input_17.
block1_conv1_5148040:@"
block1_conv1_5148042:@.
block1_conv2_5148045:@@"
block1_conv2_5148047:@/
block2_conv1_5148051:@#
block2_conv1_5148053:	0
block2_conv2_5148056:#
block2_conv2_5148058:	0
block3_conv1_5148062:#
block3_conv1_5148064:	0
block3_conv2_5148067:#
block3_conv2_5148069:	0
block3_conv3_5148072:#
block3_conv3_5148074:	0
block4_conv1_5148078:#
block4_conv1_5148080:	0
block4_conv2_5148083:#
block4_conv2_5148085:	0
block4_conv3_5148088:#
block4_conv3_5148090:	0
block5_conv1_5148094:#
block5_conv1_5148096:	0
block5_conv2_5148099:#
block5_conv2_5148101:	0
block5_conv3_5148104:#
block5_conv3_5148106:	
identity¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_17block1_conv1_5148040block1_conv1_5148042*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317·
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5148045block1_conv2_5148047*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334ñ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248­
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5148051block2_conv1_5148053*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352¶
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5148056block2_conv2_5148058*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369ò
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260­
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5148062block3_conv1_5148064*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387¶
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5148067block3_conv2_5148069*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404¶
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5148072block3_conv3_5148074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421ò
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272­
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5148078block4_conv1_5148080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439¶
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5148083block4_conv2_5148085*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456¶
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5148088block4_conv3_5148090*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473ò
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284­
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5148094block5_conv1_5148096*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491¶
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5148099block5_conv2_5148101*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508¶
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5148104block5_conv3_5148106*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525ò
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_17
%
í
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152170

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 
âA
 __inference__traced_save_5153544
file_prefix<
8savev2_batch_normalization_112_gamma_read_readvariableop;
7savev2_batch_normalization_112_beta_read_readvariableopB
>savev2_batch_normalization_112_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_112_moving_variance_read_readvariableop/
+savev2_dense_144_kernel_read_readvariableop-
)savev2_dense_144_bias_read_readvariableop<
8savev2_batch_normalization_113_gamma_read_readvariableop;
7savev2_batch_normalization_113_beta_read_readvariableopB
>savev2_batch_normalization_113_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_113_moving_variance_read_readvariableop/
+savev2_dense_145_kernel_read_readvariableop-
)savev2_dense_145_bias_read_readvariableop<
8savev2_batch_normalization_114_gamma_read_readvariableop;
7savev2_batch_normalization_114_beta_read_readvariableopB
>savev2_batch_normalization_114_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_114_moving_variance_read_readvariableop/
+savev2_dense_146_kernel_read_readvariableop-
)savev2_dense_146_bias_read_readvariableop<
8savev2_batch_normalization_115_gamma_read_readvariableop;
7savev2_batch_normalization_115_beta_read_readvariableopB
>savev2_batch_normalization_115_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_115_moving_variance_read_readvariableop/
+savev2_dense_147_kernel_read_readvariableop-
)savev2_dense_147_bias_read_readvariableop<
8savev2_batch_normalization_116_gamma_read_readvariableop;
7savev2_batch_normalization_116_beta_read_readvariableopB
>savev2_batch_normalization_116_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_116_moving_variance_read_readvariableop/
+savev2_dense_148_kernel_read_readvariableop-
)savev2_dense_148_bias_read_readvariableop<
8savev2_batch_normalization_117_gamma_read_readvariableop;
7savev2_batch_normalization_117_beta_read_readvariableopB
>savev2_batch_normalization_117_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_117_moving_variance_read_readvariableop/
+savev2_dense_149_kernel_read_readvariableop-
)savev2_dense_149_bias_read_readvariableop<
8savev2_batch_normalization_118_gamma_read_readvariableop;
7savev2_batch_normalization_118_beta_read_readvariableopB
>savev2_batch_normalization_118_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_118_moving_variance_read_readvariableop/
+savev2_dense_150_kernel_read_readvariableop-
)savev2_dense_150_bias_read_readvariableop/
+savev2_dense_151_kernel_read_readvariableop-
)savev2_dense_151_bias_read_readvariableop/
+savev2_dense_152_kernel_read_readvariableop-
)savev2_dense_152_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adam_batch_normalization_112_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_112_beta_m_read_readvariableop6
2savev2_adam_dense_144_kernel_m_read_readvariableop4
0savev2_adam_dense_144_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_113_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_113_beta_m_read_readvariableop6
2savev2_adam_dense_145_kernel_m_read_readvariableop4
0savev2_adam_dense_145_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_114_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_114_beta_m_read_readvariableop6
2savev2_adam_dense_146_kernel_m_read_readvariableop4
0savev2_adam_dense_146_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_115_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_115_beta_m_read_readvariableop6
2savev2_adam_dense_147_kernel_m_read_readvariableop4
0savev2_adam_dense_147_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_116_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_116_beta_m_read_readvariableop6
2savev2_adam_dense_148_kernel_m_read_readvariableop4
0savev2_adam_dense_148_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_117_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_117_beta_m_read_readvariableop6
2savev2_adam_dense_149_kernel_m_read_readvariableop4
0savev2_adam_dense_149_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_118_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_118_beta_m_read_readvariableop6
2savev2_adam_dense_150_kernel_m_read_readvariableop4
0savev2_adam_dense_150_bias_m_read_readvariableop6
2savev2_adam_dense_151_kernel_m_read_readvariableop4
0savev2_adam_dense_151_bias_m_read_readvariableop6
2savev2_adam_dense_152_kernel_m_read_readvariableop4
0savev2_adam_dense_152_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_112_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_112_beta_v_read_readvariableop6
2savev2_adam_dense_144_kernel_v_read_readvariableop4
0savev2_adam_dense_144_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_113_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_113_beta_v_read_readvariableop6
2savev2_adam_dense_145_kernel_v_read_readvariableop4
0savev2_adam_dense_145_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_114_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_114_beta_v_read_readvariableop6
2savev2_adam_dense_146_kernel_v_read_readvariableop4
0savev2_adam_dense_146_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_115_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_115_beta_v_read_readvariableop6
2savev2_adam_dense_147_kernel_v_read_readvariableop4
0savev2_adam_dense_147_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_116_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_116_beta_v_read_readvariableop6
2savev2_adam_dense_148_kernel_v_read_readvariableop4
0savev2_adam_dense_148_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_117_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_117_beta_v_read_readvariableop6
2savev2_adam_dense_149_kernel_v_read_readvariableop4
0savev2_adam_dense_149_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_118_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_118_beta_v_read_readvariableop6
2savev2_adam_dense_150_kernel_v_read_readvariableop4
0savev2_adam_dense_150_bias_v_read_readvariableop6
2savev2_adam_dense_151_kernel_v_read_readvariableop4
0savev2_adam_dense_151_bias_v_read_readvariableop6
2savev2_adam_dense_152_kernel_v_read_readvariableop4
0savev2_adam_dense_152_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: K
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*¼J
value²JB¯JB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*º
value°B­B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ö>
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_batch_normalization_112_gamma_read_readvariableop7savev2_batch_normalization_112_beta_read_readvariableop>savev2_batch_normalization_112_moving_mean_read_readvariableopBsavev2_batch_normalization_112_moving_variance_read_readvariableop+savev2_dense_144_kernel_read_readvariableop)savev2_dense_144_bias_read_readvariableop8savev2_batch_normalization_113_gamma_read_readvariableop7savev2_batch_normalization_113_beta_read_readvariableop>savev2_batch_normalization_113_moving_mean_read_readvariableopBsavev2_batch_normalization_113_moving_variance_read_readvariableop+savev2_dense_145_kernel_read_readvariableop)savev2_dense_145_bias_read_readvariableop8savev2_batch_normalization_114_gamma_read_readvariableop7savev2_batch_normalization_114_beta_read_readvariableop>savev2_batch_normalization_114_moving_mean_read_readvariableopBsavev2_batch_normalization_114_moving_variance_read_readvariableop+savev2_dense_146_kernel_read_readvariableop)savev2_dense_146_bias_read_readvariableop8savev2_batch_normalization_115_gamma_read_readvariableop7savev2_batch_normalization_115_beta_read_readvariableop>savev2_batch_normalization_115_moving_mean_read_readvariableopBsavev2_batch_normalization_115_moving_variance_read_readvariableop+savev2_dense_147_kernel_read_readvariableop)savev2_dense_147_bias_read_readvariableop8savev2_batch_normalization_116_gamma_read_readvariableop7savev2_batch_normalization_116_beta_read_readvariableop>savev2_batch_normalization_116_moving_mean_read_readvariableopBsavev2_batch_normalization_116_moving_variance_read_readvariableop+savev2_dense_148_kernel_read_readvariableop)savev2_dense_148_bias_read_readvariableop8savev2_batch_normalization_117_gamma_read_readvariableop7savev2_batch_normalization_117_beta_read_readvariableop>savev2_batch_normalization_117_moving_mean_read_readvariableopBsavev2_batch_normalization_117_moving_variance_read_readvariableop+savev2_dense_149_kernel_read_readvariableop)savev2_dense_149_bias_read_readvariableop8savev2_batch_normalization_118_gamma_read_readvariableop7savev2_batch_normalization_118_beta_read_readvariableop>savev2_batch_normalization_118_moving_mean_read_readvariableopBsavev2_batch_normalization_118_moving_variance_read_readvariableop+savev2_dense_150_kernel_read_readvariableop)savev2_dense_150_bias_read_readvariableop+savev2_dense_151_kernel_read_readvariableop)savev2_dense_151_bias_read_readvariableop+savev2_dense_152_kernel_read_readvariableop)savev2_dense_152_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adam_batch_normalization_112_gamma_m_read_readvariableop>savev2_adam_batch_normalization_112_beta_m_read_readvariableop2savev2_adam_dense_144_kernel_m_read_readvariableop0savev2_adam_dense_144_bias_m_read_readvariableop?savev2_adam_batch_normalization_113_gamma_m_read_readvariableop>savev2_adam_batch_normalization_113_beta_m_read_readvariableop2savev2_adam_dense_145_kernel_m_read_readvariableop0savev2_adam_dense_145_bias_m_read_readvariableop?savev2_adam_batch_normalization_114_gamma_m_read_readvariableop>savev2_adam_batch_normalization_114_beta_m_read_readvariableop2savev2_adam_dense_146_kernel_m_read_readvariableop0savev2_adam_dense_146_bias_m_read_readvariableop?savev2_adam_batch_normalization_115_gamma_m_read_readvariableop>savev2_adam_batch_normalization_115_beta_m_read_readvariableop2savev2_adam_dense_147_kernel_m_read_readvariableop0savev2_adam_dense_147_bias_m_read_readvariableop?savev2_adam_batch_normalization_116_gamma_m_read_readvariableop>savev2_adam_batch_normalization_116_beta_m_read_readvariableop2savev2_adam_dense_148_kernel_m_read_readvariableop0savev2_adam_dense_148_bias_m_read_readvariableop?savev2_adam_batch_normalization_117_gamma_m_read_readvariableop>savev2_adam_batch_normalization_117_beta_m_read_readvariableop2savev2_adam_dense_149_kernel_m_read_readvariableop0savev2_adam_dense_149_bias_m_read_readvariableop?savev2_adam_batch_normalization_118_gamma_m_read_readvariableop>savev2_adam_batch_normalization_118_beta_m_read_readvariableop2savev2_adam_dense_150_kernel_m_read_readvariableop0savev2_adam_dense_150_bias_m_read_readvariableop2savev2_adam_dense_151_kernel_m_read_readvariableop0savev2_adam_dense_151_bias_m_read_readvariableop2savev2_adam_dense_152_kernel_m_read_readvariableop0savev2_adam_dense_152_bias_m_read_readvariableop?savev2_adam_batch_normalization_112_gamma_v_read_readvariableop>savev2_adam_batch_normalization_112_beta_v_read_readvariableop2savev2_adam_dense_144_kernel_v_read_readvariableop0savev2_adam_dense_144_bias_v_read_readvariableop?savev2_adam_batch_normalization_113_gamma_v_read_readvariableop>savev2_adam_batch_normalization_113_beta_v_read_readvariableop2savev2_adam_dense_145_kernel_v_read_readvariableop0savev2_adam_dense_145_bias_v_read_readvariableop?savev2_adam_batch_normalization_114_gamma_v_read_readvariableop>savev2_adam_batch_normalization_114_beta_v_read_readvariableop2savev2_adam_dense_146_kernel_v_read_readvariableop0savev2_adam_dense_146_bias_v_read_readvariableop?savev2_adam_batch_normalization_115_gamma_v_read_readvariableop>savev2_adam_batch_normalization_115_beta_v_read_readvariableop2savev2_adam_dense_147_kernel_v_read_readvariableop0savev2_adam_dense_147_bias_v_read_readvariableop?savev2_adam_batch_normalization_116_gamma_v_read_readvariableop>savev2_adam_batch_normalization_116_beta_v_read_readvariableop2savev2_adam_dense_148_kernel_v_read_readvariableop0savev2_adam_dense_148_bias_v_read_readvariableop?savev2_adam_batch_normalization_117_gamma_v_read_readvariableop>savev2_adam_batch_normalization_117_beta_v_read_readvariableop2savev2_adam_dense_149_kernel_v_read_readvariableop0savev2_adam_dense_149_bias_v_read_readvariableop?savev2_adam_batch_normalization_118_gamma_v_read_readvariableop>savev2_adam_batch_normalization_118_beta_v_read_readvariableop2savev2_adam_dense_150_kernel_v_read_readvariableop0savev2_adam_dense_150_bias_v_read_readvariableop2savev2_adam_dense_151_kernel_v_read_readvariableop0savev2_adam_dense_151_bias_v_read_readvariableop2savev2_adam_dense_152_kernel_v_read_readvariableop0savev2_adam_dense_152_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *£
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*°	
_input_shapes	
	: :::::	 : : : : : : @:@:@:@:@:@:	@::::::
::::::	@:@:@:@:@:@:@ : : : : : : @:@:@@:@:@	:	: : : : : :@:@:@@:@:@:::::::::::::::::::::: : : : :::	 : : : : @:@:@:@:	@::::
::::	@:@:@:@:@ : : : : @:@:@@:@:@	:	:::	 : : : : @:@:@:@:	@::::
::::	@:@:@:@:@ : : : : @:@:@@:@:@	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	 : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@: 

_output_shapes
:@:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@:$# 

_output_shapes

:@ : $

_output_shapes
: : %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: : (

_output_shapes
: :$) 

_output_shapes

: @: *

_output_shapes
:@:$+ 

_output_shapes

:@@: ,

_output_shapes
:@:$- 

_output_shapes

:@	: .

_output_shapes
:	:/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :,4(
&
_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:-8)
'
_output_shapes
:@:!9

_output_shapes	
::.:*
(
_output_shapes
::!;

_output_shapes	
::.<*
(
_output_shapes
::!=

_output_shapes	
::.>*
(
_output_shapes
::!?

_output_shapes	
::.@*
(
_output_shapes
::!A

_output_shapes	
::.B*
(
_output_shapes
::!C

_output_shapes	
::.D*
(
_output_shapes
::!E

_output_shapes	
::.F*
(
_output_shapes
::!G

_output_shapes	
::.H*
(
_output_shapes
::!I

_output_shapes	
::.J*
(
_output_shapes
::!K

_output_shapes	
::.L*
(
_output_shapes
::!M

_output_shapes	
::N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :!R

_output_shapes	
::!S

_output_shapes	
::%T!

_output_shapes
:	 : U

_output_shapes
: : V

_output_shapes
: : W

_output_shapes
: :$X 

_output_shapes

: @: Y

_output_shapes
:@: Z

_output_shapes
:@: [

_output_shapes
:@:%\!

_output_shapes
:	@:!]

_output_shapes	
::!^

_output_shapes	
::!_

_output_shapes	
::&`"
 
_output_shapes
:
:!a

_output_shapes	
::!b

_output_shapes	
::!c

_output_shapes	
::%d!

_output_shapes
:	@: e

_output_shapes
:@: f

_output_shapes
:@: g

_output_shapes
:@:$h 

_output_shapes

:@ : i

_output_shapes
: : j

_output_shapes
: : k

_output_shapes
: :$l 

_output_shapes

: @: m

_output_shapes
:@:$n 

_output_shapes

:@@: o

_output_shapes
:@:$p 

_output_shapes

:@	: q

_output_shapes
:	:!r

_output_shapes	
::!s

_output_shapes	
::%t!

_output_shapes
:	 : u

_output_shapes
: : v

_output_shapes
: : w

_output_shapes
: :$x 

_output_shapes

: @: y

_output_shapes
:@: z

_output_shapes
:@: {

_output_shapes
:@:%|!

_output_shapes
:	@:!}

_output_shapes	
::!~

_output_shapes	
::!

_output_shapes	
::'"
 
_output_shapes
:
:"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::&!

_output_shapes
:	@:!

_output_shapes
:@:!

_output_shapes
:@:!

_output_shapes
:@:% 

_output_shapes

:@ :!

_output_shapes
: :!

_output_shapes
: :!

_output_shapes
: :% 

_output_shapes

: @:!

_output_shapes
:@:% 

_output_shapes

:@@:!

_output_shapes
:@:% 

_output_shapes

:@	:!

_output_shapes
:	:

_output_shapes
: 
Ú
e
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152058

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


I__inference_block2_conv2_layer_call_and_return_conditional_losses_5152866

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿpp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
 
_user_specified_nameinputs
²%
ñ
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148523

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
Ô
9__inference_batch_normalization_114_layer_call_fn_5152103

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148312o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_98_layer_call_and_return_conditional_losses_5149328

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148359

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü
e
,__inference_dropout_98_layer_call_fn_5152307

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5149328p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
e
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152185

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ª
H
,__inference_dropout_98_layer_call_fn_5152302

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5148865a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
¦
.__inference_block4_conv1_layer_call_fn_5152955

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð 
£
/__inference_sequential_16_layer_call_fn_5149173
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: @

unknown_36:@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@

unknown_41:	@

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:


unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	@

unknown_54:@

unknown_55:@

unknown_56:@

unknown_57:@

unknown_58:@

unknown_59:@ 

unknown_60: 

unknown_61: 

unknown_62: 

unknown_63: 

unknown_64: 

unknown_65: @

unknown_66:@

unknown_67:@@

unknown_68:@

unknown_69:@	

unknown_70:	
identity¢StatefulPartitionedCall²

StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_5149026o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input


I__inference_block3_conv2_layer_call_and_return_conditional_losses_5152916

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs
Þ
e
G__inference_dropout_99_layer_call_and_return_conditional_losses_5148898

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ã
·
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152390

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
H
,__inference_flatten_16_layer_call_fn_5152710

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¹
t
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·Å
Ü`
#__inference__traced_restore_5153989
file_prefix=
.assignvariableop_batch_normalization_112_gamma:	>
/assignvariableop_1_batch_normalization_112_beta:	E
6assignvariableop_2_batch_normalization_112_moving_mean:	I
:assignvariableop_3_batch_normalization_112_moving_variance:	6
#assignvariableop_4_dense_144_kernel:	 /
!assignvariableop_5_dense_144_bias: >
0assignvariableop_6_batch_normalization_113_gamma: =
/assignvariableop_7_batch_normalization_113_beta: D
6assignvariableop_8_batch_normalization_113_moving_mean: H
:assignvariableop_9_batch_normalization_113_moving_variance: 6
$assignvariableop_10_dense_145_kernel: @0
"assignvariableop_11_dense_145_bias:@?
1assignvariableop_12_batch_normalization_114_gamma:@>
0assignvariableop_13_batch_normalization_114_beta:@E
7assignvariableop_14_batch_normalization_114_moving_mean:@I
;assignvariableop_15_batch_normalization_114_moving_variance:@7
$assignvariableop_16_dense_146_kernel:	@1
"assignvariableop_17_dense_146_bias:	@
1assignvariableop_18_batch_normalization_115_gamma:	?
0assignvariableop_19_batch_normalization_115_beta:	F
7assignvariableop_20_batch_normalization_115_moving_mean:	J
;assignvariableop_21_batch_normalization_115_moving_variance:	8
$assignvariableop_22_dense_147_kernel:
1
"assignvariableop_23_dense_147_bias:	@
1assignvariableop_24_batch_normalization_116_gamma:	?
0assignvariableop_25_batch_normalization_116_beta:	F
7assignvariableop_26_batch_normalization_116_moving_mean:	J
;assignvariableop_27_batch_normalization_116_moving_variance:	7
$assignvariableop_28_dense_148_kernel:	@0
"assignvariableop_29_dense_148_bias:@?
1assignvariableop_30_batch_normalization_117_gamma:@>
0assignvariableop_31_batch_normalization_117_beta:@E
7assignvariableop_32_batch_normalization_117_moving_mean:@I
;assignvariableop_33_batch_normalization_117_moving_variance:@6
$assignvariableop_34_dense_149_kernel:@ 0
"assignvariableop_35_dense_149_bias: ?
1assignvariableop_36_batch_normalization_118_gamma: >
0assignvariableop_37_batch_normalization_118_beta: E
7assignvariableop_38_batch_normalization_118_moving_mean: I
;assignvariableop_39_batch_normalization_118_moving_variance: 6
$assignvariableop_40_dense_150_kernel: @0
"assignvariableop_41_dense_150_bias:@6
$assignvariableop_42_dense_151_kernel:@@0
"assignvariableop_43_dense_151_bias:@6
$assignvariableop_44_dense_152_kernel:@	0
"assignvariableop_45_dense_152_bias:	'
assignvariableop_46_adam_iter:	 )
assignvariableop_47_adam_beta_1: )
assignvariableop_48_adam_beta_2: (
assignvariableop_49_adam_decay: 0
&assignvariableop_50_adam_learning_rate: A
'assignvariableop_51_block1_conv1_kernel:@3
%assignvariableop_52_block1_conv1_bias:@A
'assignvariableop_53_block1_conv2_kernel:@@3
%assignvariableop_54_block1_conv2_bias:@B
'assignvariableop_55_block2_conv1_kernel:@4
%assignvariableop_56_block2_conv1_bias:	C
'assignvariableop_57_block2_conv2_kernel:4
%assignvariableop_58_block2_conv2_bias:	C
'assignvariableop_59_block3_conv1_kernel:4
%assignvariableop_60_block3_conv1_bias:	C
'assignvariableop_61_block3_conv2_kernel:4
%assignvariableop_62_block3_conv2_bias:	C
'assignvariableop_63_block3_conv3_kernel:4
%assignvariableop_64_block3_conv3_bias:	C
'assignvariableop_65_block4_conv1_kernel:4
%assignvariableop_66_block4_conv1_bias:	C
'assignvariableop_67_block4_conv2_kernel:4
%assignvariableop_68_block4_conv2_bias:	C
'assignvariableop_69_block4_conv3_kernel:4
%assignvariableop_70_block4_conv3_bias:	C
'assignvariableop_71_block5_conv1_kernel:4
%assignvariableop_72_block5_conv1_bias:	C
'assignvariableop_73_block5_conv2_kernel:4
%assignvariableop_74_block5_conv2_bias:	C
'assignvariableop_75_block5_conv3_kernel:4
%assignvariableop_76_block5_conv3_bias:	#
assignvariableop_77_total: #
assignvariableop_78_count: %
assignvariableop_79_total_1: %
assignvariableop_80_count_1: G
8assignvariableop_81_adam_batch_normalization_112_gamma_m:	F
7assignvariableop_82_adam_batch_normalization_112_beta_m:	>
+assignvariableop_83_adam_dense_144_kernel_m:	 7
)assignvariableop_84_adam_dense_144_bias_m: F
8assignvariableop_85_adam_batch_normalization_113_gamma_m: E
7assignvariableop_86_adam_batch_normalization_113_beta_m: =
+assignvariableop_87_adam_dense_145_kernel_m: @7
)assignvariableop_88_adam_dense_145_bias_m:@F
8assignvariableop_89_adam_batch_normalization_114_gamma_m:@E
7assignvariableop_90_adam_batch_normalization_114_beta_m:@>
+assignvariableop_91_adam_dense_146_kernel_m:	@8
)assignvariableop_92_adam_dense_146_bias_m:	G
8assignvariableop_93_adam_batch_normalization_115_gamma_m:	F
7assignvariableop_94_adam_batch_normalization_115_beta_m:	?
+assignvariableop_95_adam_dense_147_kernel_m:
8
)assignvariableop_96_adam_dense_147_bias_m:	G
8assignvariableop_97_adam_batch_normalization_116_gamma_m:	F
7assignvariableop_98_adam_batch_normalization_116_beta_m:	>
+assignvariableop_99_adam_dense_148_kernel_m:	@8
*assignvariableop_100_adam_dense_148_bias_m:@G
9assignvariableop_101_adam_batch_normalization_117_gamma_m:@F
8assignvariableop_102_adam_batch_normalization_117_beta_m:@>
,assignvariableop_103_adam_dense_149_kernel_m:@ 8
*assignvariableop_104_adam_dense_149_bias_m: G
9assignvariableop_105_adam_batch_normalization_118_gamma_m: F
8assignvariableop_106_adam_batch_normalization_118_beta_m: >
,assignvariableop_107_adam_dense_150_kernel_m: @8
*assignvariableop_108_adam_dense_150_bias_m:@>
,assignvariableop_109_adam_dense_151_kernel_m:@@8
*assignvariableop_110_adam_dense_151_bias_m:@>
,assignvariableop_111_adam_dense_152_kernel_m:@	8
*assignvariableop_112_adam_dense_152_bias_m:	H
9assignvariableop_113_adam_batch_normalization_112_gamma_v:	G
8assignvariableop_114_adam_batch_normalization_112_beta_v:	?
,assignvariableop_115_adam_dense_144_kernel_v:	 8
*assignvariableop_116_adam_dense_144_bias_v: G
9assignvariableop_117_adam_batch_normalization_113_gamma_v: F
8assignvariableop_118_adam_batch_normalization_113_beta_v: >
,assignvariableop_119_adam_dense_145_kernel_v: @8
*assignvariableop_120_adam_dense_145_bias_v:@G
9assignvariableop_121_adam_batch_normalization_114_gamma_v:@F
8assignvariableop_122_adam_batch_normalization_114_beta_v:@?
,assignvariableop_123_adam_dense_146_kernel_v:	@9
*assignvariableop_124_adam_dense_146_bias_v:	H
9assignvariableop_125_adam_batch_normalization_115_gamma_v:	G
8assignvariableop_126_adam_batch_normalization_115_beta_v:	@
,assignvariableop_127_adam_dense_147_kernel_v:
9
*assignvariableop_128_adam_dense_147_bias_v:	H
9assignvariableop_129_adam_batch_normalization_116_gamma_v:	G
8assignvariableop_130_adam_batch_normalization_116_beta_v:	?
,assignvariableop_131_adam_dense_148_kernel_v:	@8
*assignvariableop_132_adam_dense_148_bias_v:@G
9assignvariableop_133_adam_batch_normalization_117_gamma_v:@F
8assignvariableop_134_adam_batch_normalization_117_beta_v:@>
,assignvariableop_135_adam_dense_149_kernel_v:@ 8
*assignvariableop_136_adam_dense_149_bias_v: G
9assignvariableop_137_adam_batch_normalization_118_gamma_v: F
8assignvariableop_138_adam_batch_normalization_118_beta_v: >
,assignvariableop_139_adam_dense_150_kernel_v: @8
*assignvariableop_140_adam_dense_150_bias_v:@>
,assignvariableop_141_adam_dense_151_kernel_v:@@8
*assignvariableop_142_adam_dense_151_bias_v:@>
,assignvariableop_143_adam_dense_152_kernel_v:@	8
*assignvariableop_144_adam_dense_152_bias_v:	
identity_146¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_122¢AssignVariableOp_123¢AssignVariableOp_124¢AssignVariableOp_125¢AssignVariableOp_126¢AssignVariableOp_127¢AssignVariableOp_128¢AssignVariableOp_129¢AssignVariableOp_13¢AssignVariableOp_130¢AssignVariableOp_131¢AssignVariableOp_132¢AssignVariableOp_133¢AssignVariableOp_134¢AssignVariableOp_135¢AssignVariableOp_136¢AssignVariableOp_137¢AssignVariableOp_138¢AssignVariableOp_139¢AssignVariableOp_14¢AssignVariableOp_140¢AssignVariableOp_141¢AssignVariableOp_142¢AssignVariableOp_143¢AssignVariableOp_144¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99K
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*¼J
value²JB¯JB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*º
value°B­B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ÿ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Þ
_output_shapesË
È::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*£
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp.assignvariableop_batch_normalization_112_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_112_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_2AssignVariableOp6assignvariableop_2_batch_normalization_112_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_3AssignVariableOp:assignvariableop_3_batch_normalization_112_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_144_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_144_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp0assignvariableop_6_batch_normalization_113_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp/assignvariableop_7_batch_normalization_113_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_8AssignVariableOp6assignvariableop_8_batch_normalization_113_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_9AssignVariableOp:assignvariableop_9_batch_normalization_113_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_145_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_145_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_12AssignVariableOp1assignvariableop_12_batch_normalization_114_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_13AssignVariableOp0assignvariableop_13_batch_normalization_114_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_14AssignVariableOp7assignvariableop_14_batch_normalization_114_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_15AssignVariableOp;assignvariableop_15_batch_normalization_114_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp$assignvariableop_16_dense_146_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_146_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_18AssignVariableOp1assignvariableop_18_batch_normalization_115_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_19AssignVariableOp0assignvariableop_19_batch_normalization_115_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_20AssignVariableOp7assignvariableop_20_batch_normalization_115_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_21AssignVariableOp;assignvariableop_21_batch_normalization_115_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp$assignvariableop_22_dense_147_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_147_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_24AssignVariableOp1assignvariableop_24_batch_normalization_116_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_25AssignVariableOp0assignvariableop_25_batch_normalization_116_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_26AssignVariableOp7assignvariableop_26_batch_normalization_116_moving_meanIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_27AssignVariableOp;assignvariableop_27_batch_normalization_116_moving_varianceIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp$assignvariableop_28_dense_148_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp"assignvariableop_29_dense_148_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_30AssignVariableOp1assignvariableop_30_batch_normalization_117_gammaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_31AssignVariableOp0assignvariableop_31_batch_normalization_117_betaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_32AssignVariableOp7assignvariableop_32_batch_normalization_117_moving_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_33AssignVariableOp;assignvariableop_33_batch_normalization_117_moving_varianceIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp$assignvariableop_34_dense_149_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp"assignvariableop_35_dense_149_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_36AssignVariableOp1assignvariableop_36_batch_normalization_118_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_37AssignVariableOp0assignvariableop_37_batch_normalization_118_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_38AssignVariableOp7assignvariableop_38_batch_normalization_118_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_39AssignVariableOp;assignvariableop_39_batch_normalization_118_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp$assignvariableop_40_dense_150_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp"assignvariableop_41_dense_150_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp$assignvariableop_42_dense_151_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp"assignvariableop_43_dense_151_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp$assignvariableop_44_dense_152_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp"assignvariableop_45_dense_152_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_adam_iterIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOpassignvariableop_47_adam_beta_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOpassignvariableop_48_adam_beta_2Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOpassignvariableop_49_adam_decayIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_learning_rateIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_block1_conv1_kernelIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp%assignvariableop_52_block1_conv1_biasIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp'assignvariableop_53_block1_conv2_kernelIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_block1_conv2_biasIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp'assignvariableop_55_block2_conv1_kernelIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_block2_conv1_biasIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp'assignvariableop_57_block2_conv2_kernelIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_block2_conv2_biasIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_block3_conv1_kernelIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_block3_conv1_biasIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp'assignvariableop_61_block3_conv2_kernelIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp%assignvariableop_62_block3_conv2_biasIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp'assignvariableop_63_block3_conv3_kernelIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp%assignvariableop_64_block3_conv3_biasIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp'assignvariableop_65_block4_conv1_kernelIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp%assignvariableop_66_block4_conv1_biasIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp'assignvariableop_67_block4_conv2_kernelIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp%assignvariableop_68_block4_conv2_biasIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp'assignvariableop_69_block4_conv3_kernelIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp%assignvariableop_70_block4_conv3_biasIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp'assignvariableop_71_block5_conv1_kernelIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp%assignvariableop_72_block5_conv1_biasIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp'assignvariableop_73_block5_conv2_kernelIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp%assignvariableop_74_block5_conv2_biasIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp'assignvariableop_75_block5_conv3_kernelIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp%assignvariableop_76_block5_conv3_biasIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOpassignvariableop_77_totalIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOpassignvariableop_78_countIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOpassignvariableop_79_total_1Identity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOpassignvariableop_80_count_1Identity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_81AssignVariableOp8assignvariableop_81_adam_batch_normalization_112_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_batch_normalization_112_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_dense_144_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_dense_144_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_85AssignVariableOp8assignvariableop_85_adam_batch_normalization_113_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_86AssignVariableOp7assignvariableop_86_adam_batch_normalization_113_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_dense_145_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_dense_145_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_89AssignVariableOp8assignvariableop_89_adam_batch_normalization_114_gamma_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_90AssignVariableOp7assignvariableop_90_adam_batch_normalization_114_beta_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_dense_146_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_dense_146_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_93AssignVariableOp8assignvariableop_93_adam_batch_normalization_115_gamma_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_94AssignVariableOp7assignvariableop_94_adam_batch_normalization_115_beta_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_dense_147_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_dense_147_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_97AssignVariableOp8assignvariableop_97_adam_batch_normalization_116_gamma_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_98AssignVariableOp7assignvariableop_98_adam_batch_normalization_116_beta_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_dense_148_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_dense_148_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_101AssignVariableOp9assignvariableop_101_adam_batch_normalization_117_gamma_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_102AssignVariableOp8assignvariableop_102_adam_batch_normalization_117_beta_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_dense_149_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_dense_149_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_105AssignVariableOp9assignvariableop_105_adam_batch_normalization_118_gamma_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_106AssignVariableOp8assignvariableop_106_adam_batch_normalization_118_beta_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_dense_150_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_dense_150_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_dense_151_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_dense_151_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_dense_152_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_dense_152_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_113AssignVariableOp9assignvariableop_113_adam_batch_normalization_112_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_114AssignVariableOp8assignvariableop_114_adam_batch_normalization_112_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_dense_144_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_dense_144_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_117AssignVariableOp9assignvariableop_117_adam_batch_normalization_113_gamma_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_118AssignVariableOp8assignvariableop_118_adam_batch_normalization_113_beta_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_dense_145_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_dense_145_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_121AssignVariableOp9assignvariableop_121_adam_batch_normalization_114_gamma_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_122AssignVariableOp8assignvariableop_122_adam_batch_normalization_114_beta_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_dense_146_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_dense_146_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_125AssignVariableOp9assignvariableop_125_adam_batch_normalization_115_gamma_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_126AssignVariableOp8assignvariableop_126_adam_batch_normalization_115_beta_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_dense_147_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_128AssignVariableOp*assignvariableop_128_adam_dense_147_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_129AssignVariableOp9assignvariableop_129_adam_batch_normalization_116_gamma_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_130AssignVariableOp8assignvariableop_130_adam_batch_normalization_116_beta_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_131AssignVariableOp,assignvariableop_131_adam_dense_148_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_132AssignVariableOp*assignvariableop_132_adam_dense_148_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_133AssignVariableOp9assignvariableop_133_adam_batch_normalization_117_gamma_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_134AssignVariableOp8assignvariableop_134_adam_batch_normalization_117_beta_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_dense_149_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_dense_149_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_137AssignVariableOp9assignvariableop_137_adam_batch_normalization_118_gamma_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_138AssignVariableOp8assignvariableop_138_adam_batch_normalization_118_beta_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_139AssignVariableOp,assignvariableop_139_adam_dense_150_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_140AssignVariableOp*assignvariableop_140_adam_dense_150_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_141AssignVariableOp,assignvariableop_141_adam_dense_151_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_142AssignVariableOp*assignvariableop_142_adam_dense_151_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_143AssignVariableOp,assignvariableop_143_adam_dense_152_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_144AssignVariableOp*assignvariableop_144_adam_dense_152_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ó
Identity_145Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_146IdentityIdentity_145:output:0^NoOp_1*
T0*
_output_shapes
: ß
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_146Identity_146:output:0*¹
_input_shapes§
¤: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ñ
³
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148230

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ö	
g
H__inference_dropout_100_layer_call_and_return_conditional_losses_5149262

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148277

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
±
Ô
9__inference_batch_normalization_113_layer_call_fn_5151976

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148230o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
º

J__inference_sequential_16_layer_call_and_return_conditional_losses_5150200
vgg16_input'
vgg16_5150030:@
vgg16_5150032:@'
vgg16_5150034:@@
vgg16_5150036:@(
vgg16_5150038:@
vgg16_5150040:	)
vgg16_5150042:
vgg16_5150044:	)
vgg16_5150046:
vgg16_5150048:	)
vgg16_5150050:
vgg16_5150052:	)
vgg16_5150054:
vgg16_5150056:	)
vgg16_5150058:
vgg16_5150060:	)
vgg16_5150062:
vgg16_5150064:	)
vgg16_5150066:
vgg16_5150068:	)
vgg16_5150070:
vgg16_5150072:	)
vgg16_5150074:
vgg16_5150076:	)
vgg16_5150078:
vgg16_5150080:	.
batch_normalization_112_5150084:	.
batch_normalization_112_5150086:	.
batch_normalization_112_5150088:	.
batch_normalization_112_5150090:	$
dense_144_5150093:	 
dense_144_5150095: -
batch_normalization_113_5150098: -
batch_normalization_113_5150100: -
batch_normalization_113_5150102: -
batch_normalization_113_5150104: #
dense_145_5150108: @
dense_145_5150110:@-
batch_normalization_114_5150113:@-
batch_normalization_114_5150115:@-
batch_normalization_114_5150117:@-
batch_normalization_114_5150119:@$
dense_146_5150123:	@ 
dense_146_5150125:	.
batch_normalization_115_5150128:	.
batch_normalization_115_5150130:	.
batch_normalization_115_5150132:	.
batch_normalization_115_5150134:	%
dense_147_5150138:
 
dense_147_5150140:	.
batch_normalization_116_5150143:	.
batch_normalization_116_5150145:	.
batch_normalization_116_5150147:	.
batch_normalization_116_5150149:	$
dense_148_5150153:	@
dense_148_5150155:@-
batch_normalization_117_5150158:@-
batch_normalization_117_5150160:@-
batch_normalization_117_5150162:@-
batch_normalization_117_5150164:@#
dense_149_5150168:@ 
dense_149_5150170: -
batch_normalization_118_5150173: -
batch_normalization_118_5150175: -
batch_normalization_118_5150177: -
batch_normalization_118_5150179: #
dense_150_5150184: @
dense_150_5150186:@#
dense_151_5150189:@@
dense_151_5150191:@#
dense_152_5150194:@	
dense_152_5150196:	
identity¢/batch_normalization_112/StatefulPartitionedCall¢/batch_normalization_113/StatefulPartitionedCall¢/batch_normalization_114/StatefulPartitionedCall¢/batch_normalization_115/StatefulPartitionedCall¢/batch_normalization_116/StatefulPartitionedCall¢/batch_normalization_117/StatefulPartitionedCall¢/batch_normalization_118/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢!dense_146/StatefulPartitionedCall¢!dense_147/StatefulPartitionedCall¢!dense_148/StatefulPartitionedCall¢!dense_149/StatefulPartitionedCall¢!dense_150/StatefulPartitionedCall¢!dense_151/StatefulPartitionedCall¢!dense_152/StatefulPartitionedCall¢vgg16/StatefulPartitionedCall
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_5150030vgg16_5150032vgg16_5150034vgg16_5150036vgg16_5150038vgg16_5150040vgg16_5150042vgg16_5150044vgg16_5150046vgg16_5150048vgg16_5150050vgg16_5150052vgg16_5150054vgg16_5150056vgg16_5150058vgg16_5150060vgg16_5150062vgg16_5150064vgg16_5150066vgg16_5150068vgg16_5150070vgg16_5150072vgg16_5150074vgg16_5150076vgg16_5150078vgg16_5150080*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147533
+global_average_pooling2d_16/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121§
/batch_normalization_112/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_16/PartitionedCall:output:0batch_normalization_112_5150084batch_normalization_112_5150086batch_normalization_112_5150088batch_normalization_112_5150090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148148¬
!dense_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_112/StatefulPartitionedCall:output:0dense_144_5150093dense_144_5150095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0batch_normalization_113_5150098batch_normalization_113_5150100batch_normalization_113_5150102batch_normalization_113_5150104*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148230ò
dropout_96/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5148799
!dense_145/StatefulPartitionedCallStatefulPartitionedCall#dropout_96/PartitionedCall:output:0dense_145_5150108dense_145_5150110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall*dense_145/StatefulPartitionedCall:output:0batch_normalization_114_5150113batch_normalization_114_5150115batch_normalization_114_5150117batch_normalization_114_5150119*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148312ò
dropout_97/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5148832
!dense_146/StatefulPartitionedCallStatefulPartitionedCall#dropout_97/PartitionedCall:output:0dense_146_5150123dense_146_5150125*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall*dense_146/StatefulPartitionedCall:output:0batch_normalization_115_5150128batch_normalization_115_5150130batch_normalization_115_5150132batch_normalization_115_5150134*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148394ó
dropout_98/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5148865
!dense_147/StatefulPartitionedCallStatefulPartitionedCall#dropout_98/PartitionedCall:output:0dense_147_5150138dense_147_5150140*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall*dense_147/StatefulPartitionedCall:output:0batch_normalization_116_5150143batch_normalization_116_5150145batch_normalization_116_5150147batch_normalization_116_5150149*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148476ó
dropout_99/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5148898
!dense_148/StatefulPartitionedCallStatefulPartitionedCall#dropout_99/PartitionedCall:output:0dense_148_5150153dense_148_5150155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911
/batch_normalization_117/StatefulPartitionedCallStatefulPartitionedCall*dense_148/StatefulPartitionedCall:output:0batch_normalization_117_5150158batch_normalization_117_5150160batch_normalization_117_5150162batch_normalization_117_5150164*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148558ô
dropout_100/PartitionedCallPartitionedCall8batch_normalization_117/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5148931
!dense_149/StatefulPartitionedCallStatefulPartitionedCall$dropout_100/PartitionedCall:output:0dense_149_5150168dense_149_5150170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944
/batch_normalization_118/StatefulPartitionedCallStatefulPartitionedCall*dense_149/StatefulPartitionedCall:output:0batch_normalization_118_5150173batch_normalization_118_5150175batch_normalization_118_5150177batch_normalization_118_5150179*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148640ô
dropout_101/PartitionedCallPartitionedCall8batch_normalization_118/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5148964Þ
flatten_16/PartitionedCallPartitionedCall$dropout_101/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_150_5150184dense_150_5150186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985
!dense_151/StatefulPartitionedCallStatefulPartitionedCall*dense_150/StatefulPartitionedCall:output:0dense_151_5150189dense_151_5150191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002
!dense_152/StatefulPartitionedCallStatefulPartitionedCall*dense_151/StatefulPartitionedCall:output:0dense_152_5150194dense_152_5150196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019y
IdentityIdentity*dense_152/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
NoOpNoOp0^batch_normalization_112/StatefulPartitionedCall0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall0^batch_normalization_117/StatefulPartitionedCall0^batch_normalization_118/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall"^dense_146/StatefulPartitionedCall"^dense_147/StatefulPartitionedCall"^dense_148/StatefulPartitionedCall"^dense_149/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_112/StatefulPartitionedCall/batch_normalization_112/StatefulPartitionedCall2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2b
/batch_normalization_117/StatefulPartitionedCall/batch_normalization_117/StatefulPartitionedCall2b
/batch_normalization_118/StatefulPartitionedCall/batch_normalization_118/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2F
!dense_149/StatefulPartitionedCall!dense_149/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input
ÿ
£
.__inference_block1_conv2_layer_call_fn_5152805

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
 
_user_specified_nameinputs
µ
I
-__inference_block1_pool_layer_call_fn_5152821

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_block3_pool_layer_call_and_return_conditional_losses_5152946

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_block2_pool_layer_call_and_return_conditional_losses_5152876

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É

+__inference_dense_150_layer_call_fn_5152725

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¹
Ø
9__inference_batch_normalization_115_layer_call_fn_5152230

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148394p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
g
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152705

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

d
H__inference_block1_pool_layer_call_and_return_conditional_losses_5152826

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
f
G__inference_dropout_96_layer_call_and_return_conditional_losses_5149394

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
û
¥
.__inference_block2_conv1_layer_call_fn_5152835

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿpp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152043

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


÷
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
þ
¦
.__inference_block4_conv2_layer_call_fn_5152975

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ô
9__inference_batch_normalization_114_layer_call_fn_5152116

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 
Y
=__inference_global_average_pooling2d_16_layer_call_fn_5151857

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_145_layer_call_and_return_conditional_losses_5152090

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

d
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
g
H__inference_dropout_101_layer_call_and_return_conditional_losses_5149229

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
õ	
f
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152197

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ò
ºG
J__inference_sequential_16_layer_call_and_return_conditional_losses_5151387

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	M
1vgg16_block2_conv2_conv2d_readvariableop_resource:A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv1_conv2d_readvariableop_resource:A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	M
1vgg16_block3_conv2_conv2d_readvariableop_resource:A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv3_conv2d_readvariableop_resource:A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	M
1vgg16_block4_conv1_conv2d_readvariableop_resource:A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	M
1vgg16_block4_conv2_conv2d_readvariableop_resource:A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	M
1vgg16_block4_conv3_conv2d_readvariableop_resource:A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	M
1vgg16_block5_conv1_conv2d_readvariableop_resource:A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	M
1vgg16_block5_conv2_conv2d_readvariableop_resource:A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	M
1vgg16_block5_conv3_conv2d_readvariableop_resource:A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	N
?batch_normalization_112_assignmovingavg_readvariableop_resource:	P
Abatch_normalization_112_assignmovingavg_1_readvariableop_resource:	L
=batch_normalization_112_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_112_batchnorm_readvariableop_resource:	;
(dense_144_matmul_readvariableop_resource:	 7
)dense_144_biasadd_readvariableop_resource: M
?batch_normalization_113_assignmovingavg_readvariableop_resource: O
Abatch_normalization_113_assignmovingavg_1_readvariableop_resource: K
=batch_normalization_113_batchnorm_mul_readvariableop_resource: G
9batch_normalization_113_batchnorm_readvariableop_resource: :
(dense_145_matmul_readvariableop_resource: @7
)dense_145_biasadd_readvariableop_resource:@M
?batch_normalization_114_assignmovingavg_readvariableop_resource:@O
Abatch_normalization_114_assignmovingavg_1_readvariableop_resource:@K
=batch_normalization_114_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_114_batchnorm_readvariableop_resource:@;
(dense_146_matmul_readvariableop_resource:	@8
)dense_146_biasadd_readvariableop_resource:	N
?batch_normalization_115_assignmovingavg_readvariableop_resource:	P
Abatch_normalization_115_assignmovingavg_1_readvariableop_resource:	L
=batch_normalization_115_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_115_batchnorm_readvariableop_resource:	<
(dense_147_matmul_readvariableop_resource:
8
)dense_147_biasadd_readvariableop_resource:	N
?batch_normalization_116_assignmovingavg_readvariableop_resource:	P
Abatch_normalization_116_assignmovingavg_1_readvariableop_resource:	L
=batch_normalization_116_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_116_batchnorm_readvariableop_resource:	;
(dense_148_matmul_readvariableop_resource:	@7
)dense_148_biasadd_readvariableop_resource:@M
?batch_normalization_117_assignmovingavg_readvariableop_resource:@O
Abatch_normalization_117_assignmovingavg_1_readvariableop_resource:@K
=batch_normalization_117_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_117_batchnorm_readvariableop_resource:@:
(dense_149_matmul_readvariableop_resource:@ 7
)dense_149_biasadd_readvariableop_resource: M
?batch_normalization_118_assignmovingavg_readvariableop_resource: O
Abatch_normalization_118_assignmovingavg_1_readvariableop_resource: K
=batch_normalization_118_batchnorm_mul_readvariableop_resource: G
9batch_normalization_118_batchnorm_readvariableop_resource: :
(dense_150_matmul_readvariableop_resource: @7
)dense_150_biasadd_readvariableop_resource:@:
(dense_151_matmul_readvariableop_resource:@@7
)dense_151_biasadd_readvariableop_resource:@:
(dense_152_matmul_readvariableop_resource:@	7
)dense_152_biasadd_readvariableop_resource:	
identity¢'batch_normalization_112/AssignMovingAvg¢6batch_normalization_112/AssignMovingAvg/ReadVariableOp¢)batch_normalization_112/AssignMovingAvg_1¢8batch_normalization_112/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_112/batchnorm/ReadVariableOp¢4batch_normalization_112/batchnorm/mul/ReadVariableOp¢'batch_normalization_113/AssignMovingAvg¢6batch_normalization_113/AssignMovingAvg/ReadVariableOp¢)batch_normalization_113/AssignMovingAvg_1¢8batch_normalization_113/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_113/batchnorm/ReadVariableOp¢4batch_normalization_113/batchnorm/mul/ReadVariableOp¢'batch_normalization_114/AssignMovingAvg¢6batch_normalization_114/AssignMovingAvg/ReadVariableOp¢)batch_normalization_114/AssignMovingAvg_1¢8batch_normalization_114/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_114/batchnorm/ReadVariableOp¢4batch_normalization_114/batchnorm/mul/ReadVariableOp¢'batch_normalization_115/AssignMovingAvg¢6batch_normalization_115/AssignMovingAvg/ReadVariableOp¢)batch_normalization_115/AssignMovingAvg_1¢8batch_normalization_115/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_115/batchnorm/ReadVariableOp¢4batch_normalization_115/batchnorm/mul/ReadVariableOp¢'batch_normalization_116/AssignMovingAvg¢6batch_normalization_116/AssignMovingAvg/ReadVariableOp¢)batch_normalization_116/AssignMovingAvg_1¢8batch_normalization_116/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_116/batchnorm/ReadVariableOp¢4batch_normalization_116/batchnorm/mul/ReadVariableOp¢'batch_normalization_117/AssignMovingAvg¢6batch_normalization_117/AssignMovingAvg/ReadVariableOp¢)batch_normalization_117/AssignMovingAvg_1¢8batch_normalization_117/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_117/batchnorm/ReadVariableOp¢4batch_normalization_117/batchnorm/mul/ReadVariableOp¢'batch_normalization_118/AssignMovingAvg¢6batch_normalization_118/AssignMovingAvg/ReadVariableOp¢)batch_normalization_118/AssignMovingAvg_1¢8batch_normalization_118/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_118/batchnorm/ReadVariableOp¢4batch_normalization_118/batchnorm/mul/ReadVariableOp¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢ dense_145/BiasAdd/ReadVariableOp¢dense_145/MatMul/ReadVariableOp¢ dense_146/BiasAdd/ReadVariableOp¢dense_146/MatMul/ReadVariableOp¢ dense_147/BiasAdd/ReadVariableOp¢dense_147/MatMul/ReadVariableOp¢ dense_148/BiasAdd/ReadVariableOp¢dense_148/MatMul/ReadVariableOp¢ dense_149/BiasAdd/ReadVariableOp¢dense_149/MatMul/ReadVariableOp¢ dense_150/BiasAdd/ReadVariableOp¢dense_150/MatMul/ReadVariableOp¢ dense_151/BiasAdd/ReadVariableOp¢dense_151/MatMul/ReadVariableOp¢ dense_152/BiasAdd/ReadVariableOp¢dense_152/MatMul/ReadVariableOp¢)vgg16/block1_conv1/BiasAdd/ReadVariableOp¢(vgg16/block1_conv1/Conv2D/ReadVariableOp¢)vgg16/block1_conv2/BiasAdd/ReadVariableOp¢(vgg16/block1_conv2/Conv2D/ReadVariableOp¢)vgg16/block2_conv1/BiasAdd/ReadVariableOp¢(vgg16/block2_conv1/Conv2D/ReadVariableOp¢)vgg16/block2_conv2/BiasAdd/ReadVariableOp¢(vgg16/block2_conv2/Conv2D/ReadVariableOp¢)vgg16/block3_conv1/BiasAdd/ReadVariableOp¢(vgg16/block3_conv1/Conv2D/ReadVariableOp¢)vgg16/block3_conv2/BiasAdd/ReadVariableOp¢(vgg16/block3_conv2/Conv2D/ReadVariableOp¢)vgg16/block3_conv3/BiasAdd/ReadVariableOp¢(vgg16/block3_conv3/Conv2D/ReadVariableOp¢)vgg16/block4_conv1/BiasAdd/ReadVariableOp¢(vgg16/block4_conv1/Conv2D/ReadVariableOp¢)vgg16/block4_conv2/BiasAdd/ReadVariableOp¢(vgg16/block4_conv2/Conv2D/ReadVariableOp¢)vgg16/block4_conv3/BiasAdd/ReadVariableOp¢(vgg16/block4_conv3/Conv2D/ReadVariableOp¢)vgg16/block5_conv1/BiasAdd/ReadVariableOp¢(vgg16/block5_conv1/Conv2D/ReadVariableOp¢)vgg16/block5_conv2/BiasAdd/ReadVariableOp¢(vgg16/block5_conv2/Conv2D/ReadVariableOp¢)vgg16/block5_conv3/BiasAdd/ReadVariableOp¢(vgg16/block5_conv3/Conv2D/ReadVariableOp¢
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¢
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0à
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¸
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@*
ksize
*
paddingVALID*
strides
£
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp¤
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp¹
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
ksize
*
paddingVALID*
strides
¤
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¤
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¤
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88¹
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

2global_average_pooling2d_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ¼
 global_average_pooling2d_16/MeanMean"vgg16/block5_pool/MaxPool:output:0;global_average_pooling2d_16/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6batch_normalization_112/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ó
$batch_normalization_112/moments/meanMean)global_average_pooling2d_16/Mean:output:0?batch_normalization_112/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
,batch_normalization_112/moments/StopGradientStopGradient-batch_normalization_112/moments/mean:output:0*
T0*
_output_shapes
:	Û
1batch_normalization_112/moments/SquaredDifferenceSquaredDifference)global_average_pooling2d_16/Mean:output:05batch_normalization_112/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:batch_normalization_112/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ç
(batch_normalization_112/moments/varianceMean5batch_normalization_112/moments/SquaredDifference:z:0Cbatch_normalization_112/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
'batch_normalization_112/moments/SqueezeSqueeze-batch_normalization_112/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¤
)batch_normalization_112/moments/Squeeze_1Squeeze1batch_normalization_112/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 r
-batch_normalization_112/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_112/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_112_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ê
+batch_normalization_112/AssignMovingAvg/subSub>batch_normalization_112/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_112/moments/Squeeze:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_112/AssignMovingAvg/mulMul/batch_normalization_112/AssignMovingAvg/sub:z:06batch_normalization_112/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_112/AssignMovingAvgAssignSubVariableOp?batch_normalization_112_assignmovingavg_readvariableop_resource/batch_normalization_112/AssignMovingAvg/mul:z:07^batch_normalization_112/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_112/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<·
8batch_normalization_112/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_112_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ð
-batch_normalization_112/AssignMovingAvg_1/subSub@batch_normalization_112/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_112/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Ç
-batch_normalization_112/AssignMovingAvg_1/mulMul1batch_normalization_112/AssignMovingAvg_1/sub:z:08batch_normalization_112/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
)batch_normalization_112/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_112_assignmovingavg_1_readvariableop_resource1batch_normalization_112/AssignMovingAvg_1/mul:z:09^batch_normalization_112/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_112/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
%batch_normalization_112/batchnorm/addAddV22batch_normalization_112/moments/Squeeze_1:output:00batch_normalization_112/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_112/batchnorm/RsqrtRsqrt)batch_normalization_112/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_112/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_112_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_112/batchnorm/mulMul+batch_normalization_112/batchnorm/Rsqrt:y:0<batch_normalization_112/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:·
'batch_normalization_112/batchnorm/mul_1Mul)global_average_pooling2d_16/Mean:output:0)batch_normalization_112/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
'batch_normalization_112/batchnorm/mul_2Mul0batch_normalization_112/moments/Squeeze:output:0)batch_normalization_112/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_112/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_112_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0¹
%batch_normalization_112/batchnorm/subSub8batch_normalization_112/batchnorm/ReadVariableOp:value:0+batch_normalization_112/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_112/batchnorm/add_1AddV2+batch_normalization_112/batchnorm/mul_1:z:0)batch_normalization_112/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0¢
dense_144/MatMulMatMul+batch_normalization_112/batchnorm/add_1:z:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_144/ReluReludense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
6batch_normalization_113/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Å
$batch_normalization_113/moments/meanMeandense_144/Relu:activations:0?batch_normalization_113/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
,batch_normalization_113/moments/StopGradientStopGradient-batch_normalization_113/moments/mean:output:0*
T0*
_output_shapes

: Í
1batch_normalization_113/moments/SquaredDifferenceSquaredDifferencedense_144/Relu:activations:05batch_normalization_113/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
:batch_normalization_113/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: æ
(batch_normalization_113/moments/varianceMean5batch_normalization_113/moments/SquaredDifference:z:0Cbatch_normalization_113/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
'batch_normalization_113/moments/SqueezeSqueeze-batch_normalization_113/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 £
)batch_normalization_113/moments/Squeeze_1Squeeze1batch_normalization_113/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 r
-batch_normalization_113/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_113/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_113_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0É
+batch_normalization_113/AssignMovingAvg/subSub>batch_normalization_113/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_113/moments/Squeeze:output:0*
T0*
_output_shapes
: À
+batch_normalization_113/AssignMovingAvg/mulMul/batch_normalization_113/AssignMovingAvg/sub:z:06batch_normalization_113/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 
'batch_normalization_113/AssignMovingAvgAssignSubVariableOp?batch_normalization_113_assignmovingavg_readvariableop_resource/batch_normalization_113/AssignMovingAvg/mul:z:07^batch_normalization_113/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_113/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¶
8batch_normalization_113/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_113_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0Ï
-batch_normalization_113/AssignMovingAvg_1/subSub@batch_normalization_113/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_113/moments/Squeeze_1:output:0*
T0*
_output_shapes
: Æ
-batch_normalization_113/AssignMovingAvg_1/mulMul1batch_normalization_113/AssignMovingAvg_1/sub:z:08batch_normalization_113/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 
)batch_normalization_113/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_113_assignmovingavg_1_readvariableop_resource1batch_normalization_113/AssignMovingAvg_1/mul:z:09^batch_normalization_113/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_113/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
%batch_normalization_113/batchnorm/addAddV22batch_normalization_113/moments/Squeeze_1:output:00batch_normalization_113/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
'batch_normalization_113/batchnorm/RsqrtRsqrt)batch_normalization_113/batchnorm/add:z:0*
T0*
_output_shapes
: ®
4batch_normalization_113/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_113_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0¼
%batch_normalization_113/batchnorm/mulMul+batch_normalization_113/batchnorm/Rsqrt:y:0<batch_normalization_113/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ©
'batch_normalization_113/batchnorm/mul_1Muldense_144/Relu:activations:0)batch_normalization_113/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
'batch_normalization_113/batchnorm/mul_2Mul0batch_normalization_113/moments/Squeeze:output:0)batch_normalization_113/batchnorm/mul:z:0*
T0*
_output_shapes
: ¦
0batch_normalization_113/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_113_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0¸
%batch_normalization_113/batchnorm/subSub8batch_normalization_113/batchnorm/ReadVariableOp:value:0+batch_normalization_113/batchnorm/mul_2:z:0*
T0*
_output_shapes
: º
'batch_normalization_113/batchnorm/add_1AddV2+batch_normalization_113/batchnorm/mul_1:z:0)batch_normalization_113/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
dropout_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_96/dropout/MulMul+batch_normalization_113/batchnorm/add_1:z:0!dropout_96/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
dropout_96/dropout/ShapeShape+batch_normalization_113/batchnorm/add_1:z:0*
T0*
_output_shapes
:¢
/dropout_96/dropout/random_uniform/RandomUniformRandomUniform!dropout_96/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0f
!dropout_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_96/dropout/GreaterEqualGreaterEqual8dropout_96/dropout/random_uniform/RandomUniform:output:0*dropout_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_96/dropout/CastCast#dropout_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_96/dropout/Mul_1Muldropout_96/dropout/Mul:z:0dropout_96/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0
dense_145/MatMulMatMuldropout_96/dropout/Mul_1:z:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_145/ReluReludense_145/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
6batch_normalization_114/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Å
$batch_normalization_114/moments/meanMeandense_145/Relu:activations:0?batch_normalization_114/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(
,batch_normalization_114/moments/StopGradientStopGradient-batch_normalization_114/moments/mean:output:0*
T0*
_output_shapes

:@Í
1batch_normalization_114/moments/SquaredDifferenceSquaredDifferencedense_145/Relu:activations:05batch_normalization_114/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:batch_normalization_114/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: æ
(batch_normalization_114/moments/varianceMean5batch_normalization_114/moments/SquaredDifference:z:0Cbatch_normalization_114/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(
'batch_normalization_114/moments/SqueezeSqueeze-batch_normalization_114/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 £
)batch_normalization_114/moments/Squeeze_1Squeeze1batch_normalization_114/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 r
-batch_normalization_114/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_114/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_114_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0É
+batch_normalization_114/AssignMovingAvg/subSub>batch_normalization_114/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_114/moments/Squeeze:output:0*
T0*
_output_shapes
:@À
+batch_normalization_114/AssignMovingAvg/mulMul/batch_normalization_114/AssignMovingAvg/sub:z:06batch_normalization_114/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@
'batch_normalization_114/AssignMovingAvgAssignSubVariableOp?batch_normalization_114_assignmovingavg_readvariableop_resource/batch_normalization_114/AssignMovingAvg/mul:z:07^batch_normalization_114/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_114/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¶
8batch_normalization_114/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_114_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ï
-batch_normalization_114/AssignMovingAvg_1/subSub@batch_normalization_114/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_114/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@Æ
-batch_normalization_114/AssignMovingAvg_1/mulMul1batch_normalization_114/AssignMovingAvg_1/sub:z:08batch_normalization_114/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@
)batch_normalization_114/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_114_assignmovingavg_1_readvariableop_resource1batch_normalization_114/AssignMovingAvg_1/mul:z:09^batch_normalization_114/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_114/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
%batch_normalization_114/batchnorm/addAddV22batch_normalization_114/moments/Squeeze_1:output:00batch_normalization_114/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
'batch_normalization_114/batchnorm/RsqrtRsqrt)batch_normalization_114/batchnorm/add:z:0*
T0*
_output_shapes
:@®
4batch_normalization_114/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_114_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¼
%batch_normalization_114/batchnorm/mulMul+batch_normalization_114/batchnorm/Rsqrt:y:0<batch_normalization_114/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@©
'batch_normalization_114/batchnorm/mul_1Muldense_145/Relu:activations:0)batch_normalization_114/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
'batch_normalization_114/batchnorm/mul_2Mul0batch_normalization_114/moments/Squeeze:output:0)batch_normalization_114/batchnorm/mul:z:0*
T0*
_output_shapes
:@¦
0batch_normalization_114/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_114_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0¸
%batch_normalization_114/batchnorm/subSub8batch_normalization_114/batchnorm/ReadVariableOp:value:0+batch_normalization_114/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@º
'batch_normalization_114/batchnorm/add_1AddV2+batch_normalization_114/batchnorm/mul_1:z:0)batch_normalization_114/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
dropout_97/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_97/dropout/MulMul+batch_normalization_114/batchnorm/add_1:z:0!dropout_97/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_97/dropout/ShapeShape+batch_normalization_114/batchnorm/add_1:z:0*
T0*
_output_shapes
:¢
/dropout_97/dropout/random_uniform/RandomUniformRandomUniform!dropout_97/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0f
!dropout_97/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_97/dropout/GreaterEqualGreaterEqual8dropout_97/dropout/random_uniform/RandomUniform:output:0*dropout_97/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_97/dropout/CastCast#dropout_97/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_97/dropout/Mul_1Muldropout_97/dropout/Mul:z:0dropout_97/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_146/MatMul/ReadVariableOpReadVariableOp(dense_146_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_146/MatMulMatMuldropout_97/dropout/Mul_1:z:0'dense_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_146/BiasAdd/ReadVariableOpReadVariableOp)dense_146_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_146/BiasAddBiasAdddense_146/MatMul:product:0(dense_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_146/ReluReludense_146/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6batch_normalization_115/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
$batch_normalization_115/moments/meanMeandense_146/Relu:activations:0?batch_normalization_115/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
,batch_normalization_115/moments/StopGradientStopGradient-batch_normalization_115/moments/mean:output:0*
T0*
_output_shapes
:	Î
1batch_normalization_115/moments/SquaredDifferenceSquaredDifferencedense_146/Relu:activations:05batch_normalization_115/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:batch_normalization_115/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ç
(batch_normalization_115/moments/varianceMean5batch_normalization_115/moments/SquaredDifference:z:0Cbatch_normalization_115/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
'batch_normalization_115/moments/SqueezeSqueeze-batch_normalization_115/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¤
)batch_normalization_115/moments/Squeeze_1Squeeze1batch_normalization_115/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 r
-batch_normalization_115/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_115/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_115_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ê
+batch_normalization_115/AssignMovingAvg/subSub>batch_normalization_115/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_115/moments/Squeeze:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_115/AssignMovingAvg/mulMul/batch_normalization_115/AssignMovingAvg/sub:z:06batch_normalization_115/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_115/AssignMovingAvgAssignSubVariableOp?batch_normalization_115_assignmovingavg_readvariableop_resource/batch_normalization_115/AssignMovingAvg/mul:z:07^batch_normalization_115/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_115/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<·
8batch_normalization_115/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_115_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ð
-batch_normalization_115/AssignMovingAvg_1/subSub@batch_normalization_115/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_115/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Ç
-batch_normalization_115/AssignMovingAvg_1/mulMul1batch_normalization_115/AssignMovingAvg_1/sub:z:08batch_normalization_115/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
)batch_normalization_115/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_115_assignmovingavg_1_readvariableop_resource1batch_normalization_115/AssignMovingAvg_1/mul:z:09^batch_normalization_115/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_115/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
%batch_normalization_115/batchnorm/addAddV22batch_normalization_115/moments/Squeeze_1:output:00batch_normalization_115/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_115/batchnorm/RsqrtRsqrt)batch_normalization_115/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_115/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_115_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_115/batchnorm/mulMul+batch_normalization_115/batchnorm/Rsqrt:y:0<batch_normalization_115/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ª
'batch_normalization_115/batchnorm/mul_1Muldense_146/Relu:activations:0)batch_normalization_115/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
'batch_normalization_115/batchnorm/mul_2Mul0batch_normalization_115/moments/Squeeze:output:0)batch_normalization_115/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_115/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_115_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0¹
%batch_normalization_115/batchnorm/subSub8batch_normalization_115/batchnorm/ReadVariableOp:value:0+batch_normalization_115/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_115/batchnorm/add_1AddV2+batch_normalization_115/batchnorm/mul_1:z:0)batch_normalization_115/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_98/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
dropout_98/dropout/MulMul+batch_normalization_115/batchnorm/add_1:z:0!dropout_98/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout_98/dropout/ShapeShape+batch_normalization_115/batchnorm/add_1:z:0*
T0*
_output_shapes
:£
/dropout_98/dropout/random_uniform/RandomUniformRandomUniform!dropout_98/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_98/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>È
dropout_98/dropout/GreaterEqualGreaterEqual8dropout_98/dropout/random_uniform/RandomUniform:output:0*dropout_98/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_98/dropout/CastCast#dropout_98/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_98/dropout/Mul_1Muldropout_98/dropout/Mul:z:0dropout_98/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_147/MatMul/ReadVariableOpReadVariableOp(dense_147_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_147/MatMulMatMuldropout_98/dropout/Mul_1:z:0'dense_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_147/BiasAdd/ReadVariableOpReadVariableOp)dense_147_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_147/BiasAddBiasAdddense_147/MatMul:product:0(dense_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_147/ReluReludense_147/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6batch_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
$batch_normalization_116/moments/meanMeandense_147/Relu:activations:0?batch_normalization_116/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
,batch_normalization_116/moments/StopGradientStopGradient-batch_normalization_116/moments/mean:output:0*
T0*
_output_shapes
:	Î
1batch_normalization_116/moments/SquaredDifferenceSquaredDifferencedense_147/Relu:activations:05batch_normalization_116/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:batch_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ç
(batch_normalization_116/moments/varianceMean5batch_normalization_116/moments/SquaredDifference:z:0Cbatch_normalization_116/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
'batch_normalization_116/moments/SqueezeSqueeze-batch_normalization_116/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¤
)batch_normalization_116/moments/Squeeze_1Squeeze1batch_normalization_116/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 r
-batch_normalization_116/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_116/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_116_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ê
+batch_normalization_116/AssignMovingAvg/subSub>batch_normalization_116/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_116/moments/Squeeze:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_116/AssignMovingAvg/mulMul/batch_normalization_116/AssignMovingAvg/sub:z:06batch_normalization_116/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_116/AssignMovingAvgAssignSubVariableOp?batch_normalization_116_assignmovingavg_readvariableop_resource/batch_normalization_116/AssignMovingAvg/mul:z:07^batch_normalization_116/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_116/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<·
8batch_normalization_116/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_116_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ð
-batch_normalization_116/AssignMovingAvg_1/subSub@batch_normalization_116/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_116/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Ç
-batch_normalization_116/AssignMovingAvg_1/mulMul1batch_normalization_116/AssignMovingAvg_1/sub:z:08batch_normalization_116/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
)batch_normalization_116/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_116_assignmovingavg_1_readvariableop_resource1batch_normalization_116/AssignMovingAvg_1/mul:z:09^batch_normalization_116/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
%batch_normalization_116/batchnorm/addAddV22batch_normalization_116/moments/Squeeze_1:output:00batch_normalization_116/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
'batch_normalization_116/batchnorm/RsqrtRsqrt)batch_normalization_116/batchnorm/add:z:0*
T0*
_output_shapes	
:¯
4batch_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0½
%batch_normalization_116/batchnorm/mulMul+batch_normalization_116/batchnorm/Rsqrt:y:0<batch_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ª
'batch_normalization_116/batchnorm/mul_1Muldense_147/Relu:activations:0)batch_normalization_116/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
'batch_normalization_116/batchnorm/mul_2Mul0batch_normalization_116/moments/Squeeze:output:0)batch_normalization_116/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_116/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_116_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0¹
%batch_normalization_116/batchnorm/subSub8batch_normalization_116/batchnorm/ReadVariableOp:value:0+batch_normalization_116/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:»
'batch_normalization_116/batchnorm/add_1AddV2+batch_normalization_116/batchnorm/mul_1:z:0)batch_normalization_116/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_99/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
dropout_99/dropout/MulMul+batch_normalization_116/batchnorm/add_1:z:0!dropout_99/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout_99/dropout/ShapeShape+batch_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:£
/dropout_99/dropout/random_uniform/RandomUniformRandomUniform!dropout_99/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_99/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>È
dropout_99/dropout/GreaterEqualGreaterEqual8dropout_99/dropout/random_uniform/RandomUniform:output:0*dropout_99/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_99/dropout/CastCast#dropout_99/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_99/dropout/Mul_1Muldropout_99/dropout/Mul:z:0dropout_99/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_148/MatMul/ReadVariableOpReadVariableOp(dense_148_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_148/MatMulMatMuldropout_99/dropout/Mul_1:z:0'dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_148/BiasAdd/ReadVariableOpReadVariableOp)dense_148_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_148/BiasAddBiasAdddense_148/MatMul:product:0(dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_148/ReluReludense_148/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
6batch_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Å
$batch_normalization_117/moments/meanMeandense_148/Relu:activations:0?batch_normalization_117/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(
,batch_normalization_117/moments/StopGradientStopGradient-batch_normalization_117/moments/mean:output:0*
T0*
_output_shapes

:@Í
1batch_normalization_117/moments/SquaredDifferenceSquaredDifferencedense_148/Relu:activations:05batch_normalization_117/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:batch_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: æ
(batch_normalization_117/moments/varianceMean5batch_normalization_117/moments/SquaredDifference:z:0Cbatch_normalization_117/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(
'batch_normalization_117/moments/SqueezeSqueeze-batch_normalization_117/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 £
)batch_normalization_117/moments/Squeeze_1Squeeze1batch_normalization_117/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 r
-batch_normalization_117/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_117/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_117_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0É
+batch_normalization_117/AssignMovingAvg/subSub>batch_normalization_117/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_117/moments/Squeeze:output:0*
T0*
_output_shapes
:@À
+batch_normalization_117/AssignMovingAvg/mulMul/batch_normalization_117/AssignMovingAvg/sub:z:06batch_normalization_117/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@
'batch_normalization_117/AssignMovingAvgAssignSubVariableOp?batch_normalization_117_assignmovingavg_readvariableop_resource/batch_normalization_117/AssignMovingAvg/mul:z:07^batch_normalization_117/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_117/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¶
8batch_normalization_117/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_117_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ï
-batch_normalization_117/AssignMovingAvg_1/subSub@batch_normalization_117/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_117/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@Æ
-batch_normalization_117/AssignMovingAvg_1/mulMul1batch_normalization_117/AssignMovingAvg_1/sub:z:08batch_normalization_117/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@
)batch_normalization_117/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_117_assignmovingavg_1_readvariableop_resource1batch_normalization_117/AssignMovingAvg_1/mul:z:09^batch_normalization_117/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
%batch_normalization_117/batchnorm/addAddV22batch_normalization_117/moments/Squeeze_1:output:00batch_normalization_117/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
'batch_normalization_117/batchnorm/RsqrtRsqrt)batch_normalization_117/batchnorm/add:z:0*
T0*
_output_shapes
:@®
4batch_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¼
%batch_normalization_117/batchnorm/mulMul+batch_normalization_117/batchnorm/Rsqrt:y:0<batch_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@©
'batch_normalization_117/batchnorm/mul_1Muldense_148/Relu:activations:0)batch_normalization_117/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
'batch_normalization_117/batchnorm/mul_2Mul0batch_normalization_117/moments/Squeeze:output:0)batch_normalization_117/batchnorm/mul:z:0*
T0*
_output_shapes
:@¦
0batch_normalization_117/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0¸
%batch_normalization_117/batchnorm/subSub8batch_normalization_117/batchnorm/ReadVariableOp:value:0+batch_normalization_117/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@º
'batch_normalization_117/batchnorm/add_1AddV2+batch_normalization_117/batchnorm/mul_1:z:0)batch_normalization_117/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
dropout_100/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¡
dropout_100/dropout/MulMul+batch_normalization_117/batchnorm/add_1:z:0"dropout_100/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
dropout_100/dropout/ShapeShape+batch_normalization_117/batchnorm/add_1:z:0*
T0*
_output_shapes
:¤
0dropout_100/dropout/random_uniform/RandomUniformRandomUniform"dropout_100/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0g
"dropout_100/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ê
 dropout_100/dropout/GreaterEqualGreaterEqual9dropout_100/dropout/random_uniform/RandomUniform:output:0+dropout_100/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_100/dropout/CastCast$dropout_100/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_100/dropout/Mul_1Muldropout_100/dropout/Mul:z:0dropout_100/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_149/MatMul/ReadVariableOpReadVariableOp(dense_149_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_149/MatMulMatMuldropout_100/dropout/Mul_1:z:0'dense_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_149/BiasAdd/ReadVariableOpReadVariableOp)dense_149_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_149/BiasAddBiasAdddense_149/MatMul:product:0(dense_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_149/ReluReludense_149/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
6batch_normalization_118/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Å
$batch_normalization_118/moments/meanMeandense_149/Relu:activations:0?batch_normalization_118/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
,batch_normalization_118/moments/StopGradientStopGradient-batch_normalization_118/moments/mean:output:0*
T0*
_output_shapes

: Í
1batch_normalization_118/moments/SquaredDifferenceSquaredDifferencedense_149/Relu:activations:05batch_normalization_118/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
:batch_normalization_118/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: æ
(batch_normalization_118/moments/varianceMean5batch_normalization_118/moments/SquaredDifference:z:0Cbatch_normalization_118/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
'batch_normalization_118/moments/SqueezeSqueeze-batch_normalization_118/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 £
)batch_normalization_118/moments/Squeeze_1Squeeze1batch_normalization_118/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 r
-batch_normalization_118/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_118/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_118_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0É
+batch_normalization_118/AssignMovingAvg/subSub>batch_normalization_118/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_118/moments/Squeeze:output:0*
T0*
_output_shapes
: À
+batch_normalization_118/AssignMovingAvg/mulMul/batch_normalization_118/AssignMovingAvg/sub:z:06batch_normalization_118/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 
'batch_normalization_118/AssignMovingAvgAssignSubVariableOp?batch_normalization_118_assignmovingavg_readvariableop_resource/batch_normalization_118/AssignMovingAvg/mul:z:07^batch_normalization_118/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_118/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¶
8batch_normalization_118/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_118_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0Ï
-batch_normalization_118/AssignMovingAvg_1/subSub@batch_normalization_118/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_118/moments/Squeeze_1:output:0*
T0*
_output_shapes
: Æ
-batch_normalization_118/AssignMovingAvg_1/mulMul1batch_normalization_118/AssignMovingAvg_1/sub:z:08batch_normalization_118/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 
)batch_normalization_118/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_118_assignmovingavg_1_readvariableop_resource1batch_normalization_118/AssignMovingAvg_1/mul:z:09^batch_normalization_118/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
'batch_normalization_118/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
%batch_normalization_118/batchnorm/addAddV22batch_normalization_118/moments/Squeeze_1:output:00batch_normalization_118/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
'batch_normalization_118/batchnorm/RsqrtRsqrt)batch_normalization_118/batchnorm/add:z:0*
T0*
_output_shapes
: ®
4batch_normalization_118/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_118_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0¼
%batch_normalization_118/batchnorm/mulMul+batch_normalization_118/batchnorm/Rsqrt:y:0<batch_normalization_118/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ©
'batch_normalization_118/batchnorm/mul_1Muldense_149/Relu:activations:0)batch_normalization_118/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
'batch_normalization_118/batchnorm/mul_2Mul0batch_normalization_118/moments/Squeeze:output:0)batch_normalization_118/batchnorm/mul:z:0*
T0*
_output_shapes
: ¦
0batch_normalization_118/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_118_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0¸
%batch_normalization_118/batchnorm/subSub8batch_normalization_118/batchnorm/ReadVariableOp:value:0+batch_normalization_118/batchnorm/mul_2:z:0*
T0*
_output_shapes
: º
'batch_normalization_118/batchnorm/add_1AddV2+batch_normalization_118/batchnorm/mul_1:z:0)batch_normalization_118/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ^
dropout_101/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¡
dropout_101/dropout/MulMul+batch_normalization_118/batchnorm/add_1:z:0"dropout_101/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
dropout_101/dropout/ShapeShape+batch_normalization_118/batchnorm/add_1:z:0*
T0*
_output_shapes
:¤
0dropout_101/dropout/random_uniform/RandomUniformRandomUniform"dropout_101/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0g
"dropout_101/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ê
 dropout_101/dropout/GreaterEqualGreaterEqual9dropout_101/dropout/random_uniform/RandomUniform:output:0+dropout_101/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_101/dropout/CastCast$dropout_101/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_101/dropout/Mul_1Muldropout_101/dropout/Mul:z:0dropout_101/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_16/ReshapeReshapedropout_101/dropout/Mul_1:z:0flatten_16/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_150/MatMul/ReadVariableOpReadVariableOp(dense_150_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0
dense_150/MatMulMatMulflatten_16/Reshape:output:0'dense_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_150/BiasAdd/ReadVariableOpReadVariableOp)dense_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_150/BiasAddBiasAdddense_150/MatMul:product:0(dense_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_150/ReluReludense_150/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_151/MatMul/ReadVariableOpReadVariableOp(dense_151_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense_151/MatMulMatMuldense_150/Relu:activations:0'dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_151/BiasAdd/ReadVariableOpReadVariableOp)dense_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_151/BiasAddBiasAdddense_151/MatMul:product:0(dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_151/ReluReludense_151/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0
dense_152/MatMulMatMuldense_151/Relu:activations:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	j
dense_152/SoftmaxSoftmaxdense_152/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	j
IdentityIdentitydense_152/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
NoOpNoOp(^batch_normalization_112/AssignMovingAvg7^batch_normalization_112/AssignMovingAvg/ReadVariableOp*^batch_normalization_112/AssignMovingAvg_19^batch_normalization_112/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_112/batchnorm/ReadVariableOp5^batch_normalization_112/batchnorm/mul/ReadVariableOp(^batch_normalization_113/AssignMovingAvg7^batch_normalization_113/AssignMovingAvg/ReadVariableOp*^batch_normalization_113/AssignMovingAvg_19^batch_normalization_113/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_113/batchnorm/ReadVariableOp5^batch_normalization_113/batchnorm/mul/ReadVariableOp(^batch_normalization_114/AssignMovingAvg7^batch_normalization_114/AssignMovingAvg/ReadVariableOp*^batch_normalization_114/AssignMovingAvg_19^batch_normalization_114/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_114/batchnorm/ReadVariableOp5^batch_normalization_114/batchnorm/mul/ReadVariableOp(^batch_normalization_115/AssignMovingAvg7^batch_normalization_115/AssignMovingAvg/ReadVariableOp*^batch_normalization_115/AssignMovingAvg_19^batch_normalization_115/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_115/batchnorm/ReadVariableOp5^batch_normalization_115/batchnorm/mul/ReadVariableOp(^batch_normalization_116/AssignMovingAvg7^batch_normalization_116/AssignMovingAvg/ReadVariableOp*^batch_normalization_116/AssignMovingAvg_19^batch_normalization_116/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_116/batchnorm/ReadVariableOp5^batch_normalization_116/batchnorm/mul/ReadVariableOp(^batch_normalization_117/AssignMovingAvg7^batch_normalization_117/AssignMovingAvg/ReadVariableOp*^batch_normalization_117/AssignMovingAvg_19^batch_normalization_117/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_117/batchnorm/ReadVariableOp5^batch_normalization_117/batchnorm/mul/ReadVariableOp(^batch_normalization_118/AssignMovingAvg7^batch_normalization_118/AssignMovingAvg/ReadVariableOp*^batch_normalization_118/AssignMovingAvg_19^batch_normalization_118/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_118/batchnorm/ReadVariableOp5^batch_normalization_118/batchnorm/mul/ReadVariableOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp!^dense_146/BiasAdd/ReadVariableOp ^dense_146/MatMul/ReadVariableOp!^dense_147/BiasAdd/ReadVariableOp ^dense_147/MatMul/ReadVariableOp!^dense_148/BiasAdd/ReadVariableOp ^dense_148/MatMul/ReadVariableOp!^dense_149/BiasAdd/ReadVariableOp ^dense_149/MatMul/ReadVariableOp!^dense_150/BiasAdd/ReadVariableOp ^dense_150/MatMul/ReadVariableOp!^dense_151/BiasAdd/ReadVariableOp ^dense_151/MatMul/ReadVariableOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_112/AssignMovingAvg'batch_normalization_112/AssignMovingAvg2p
6batch_normalization_112/AssignMovingAvg/ReadVariableOp6batch_normalization_112/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_112/AssignMovingAvg_1)batch_normalization_112/AssignMovingAvg_12t
8batch_normalization_112/AssignMovingAvg_1/ReadVariableOp8batch_normalization_112/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_112/batchnorm/ReadVariableOp0batch_normalization_112/batchnorm/ReadVariableOp2l
4batch_normalization_112/batchnorm/mul/ReadVariableOp4batch_normalization_112/batchnorm/mul/ReadVariableOp2R
'batch_normalization_113/AssignMovingAvg'batch_normalization_113/AssignMovingAvg2p
6batch_normalization_113/AssignMovingAvg/ReadVariableOp6batch_normalization_113/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_113/AssignMovingAvg_1)batch_normalization_113/AssignMovingAvg_12t
8batch_normalization_113/AssignMovingAvg_1/ReadVariableOp8batch_normalization_113/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_113/batchnorm/ReadVariableOp0batch_normalization_113/batchnorm/ReadVariableOp2l
4batch_normalization_113/batchnorm/mul/ReadVariableOp4batch_normalization_113/batchnorm/mul/ReadVariableOp2R
'batch_normalization_114/AssignMovingAvg'batch_normalization_114/AssignMovingAvg2p
6batch_normalization_114/AssignMovingAvg/ReadVariableOp6batch_normalization_114/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_114/AssignMovingAvg_1)batch_normalization_114/AssignMovingAvg_12t
8batch_normalization_114/AssignMovingAvg_1/ReadVariableOp8batch_normalization_114/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_114/batchnorm/ReadVariableOp0batch_normalization_114/batchnorm/ReadVariableOp2l
4batch_normalization_114/batchnorm/mul/ReadVariableOp4batch_normalization_114/batchnorm/mul/ReadVariableOp2R
'batch_normalization_115/AssignMovingAvg'batch_normalization_115/AssignMovingAvg2p
6batch_normalization_115/AssignMovingAvg/ReadVariableOp6batch_normalization_115/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_115/AssignMovingAvg_1)batch_normalization_115/AssignMovingAvg_12t
8batch_normalization_115/AssignMovingAvg_1/ReadVariableOp8batch_normalization_115/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_115/batchnorm/ReadVariableOp0batch_normalization_115/batchnorm/ReadVariableOp2l
4batch_normalization_115/batchnorm/mul/ReadVariableOp4batch_normalization_115/batchnorm/mul/ReadVariableOp2R
'batch_normalization_116/AssignMovingAvg'batch_normalization_116/AssignMovingAvg2p
6batch_normalization_116/AssignMovingAvg/ReadVariableOp6batch_normalization_116/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_116/AssignMovingAvg_1)batch_normalization_116/AssignMovingAvg_12t
8batch_normalization_116/AssignMovingAvg_1/ReadVariableOp8batch_normalization_116/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_116/batchnorm/ReadVariableOp0batch_normalization_116/batchnorm/ReadVariableOp2l
4batch_normalization_116/batchnorm/mul/ReadVariableOp4batch_normalization_116/batchnorm/mul/ReadVariableOp2R
'batch_normalization_117/AssignMovingAvg'batch_normalization_117/AssignMovingAvg2p
6batch_normalization_117/AssignMovingAvg/ReadVariableOp6batch_normalization_117/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_117/AssignMovingAvg_1)batch_normalization_117/AssignMovingAvg_12t
8batch_normalization_117/AssignMovingAvg_1/ReadVariableOp8batch_normalization_117/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_117/batchnorm/ReadVariableOp0batch_normalization_117/batchnorm/ReadVariableOp2l
4batch_normalization_117/batchnorm/mul/ReadVariableOp4batch_normalization_117/batchnorm/mul/ReadVariableOp2R
'batch_normalization_118/AssignMovingAvg'batch_normalization_118/AssignMovingAvg2p
6batch_normalization_118/AssignMovingAvg/ReadVariableOp6batch_normalization_118/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_118/AssignMovingAvg_1)batch_normalization_118/AssignMovingAvg_12t
8batch_normalization_118/AssignMovingAvg_1/ReadVariableOp8batch_normalization_118/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_118/batchnorm/ReadVariableOp0batch_normalization_118/batchnorm/ReadVariableOp2l
4batch_normalization_118/batchnorm/mul/ReadVariableOp4batch_normalization_118/batchnorm/mul/ReadVariableOp2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2D
 dense_146/BiasAdd/ReadVariableOp dense_146/BiasAdd/ReadVariableOp2B
dense_146/MatMul/ReadVariableOpdense_146/MatMul/ReadVariableOp2D
 dense_147/BiasAdd/ReadVariableOp dense_147/BiasAdd/ReadVariableOp2B
dense_147/MatMul/ReadVariableOpdense_147/MatMul/ReadVariableOp2D
 dense_148/BiasAdd/ReadVariableOp dense_148/BiasAdd/ReadVariableOp2B
dense_148/MatMul/ReadVariableOpdense_148/MatMul/ReadVariableOp2D
 dense_149/BiasAdd/ReadVariableOp dense_149/BiasAdd/ReadVariableOp2B
dense_149/MatMul/ReadVariableOpdense_149/MatMul/ReadVariableOp2D
 dense_150/BiasAdd/ReadVariableOp dense_150/BiasAdd/ReadVariableOp2B
dense_150/MatMul/ReadVariableOpdense_150/MatMul/ReadVariableOp2D
 dense_151/BiasAdd/ReadVariableOp dense_151/BiasAdd/ReadVariableOp2B
dense_151/MatMul/ReadVariableOpdense_151/MatMul/ReadVariableOp2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148687

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
Ø
9__inference_batch_normalization_115_layer_call_fn_5152243

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148441p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
£
.__inference_block1_conv1_layer_call_fn_5152785

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs

d
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
 
_user_specified_nameinputs
ø
e
,__inference_dropout_97_layer_call_fn_5152180

inputs
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5149361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±
÷
B__inference_vgg16_layer_call_and_return_conditional_losses_5151752

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	
identity¢#block1_conv1/BiasAdd/ReadVariableOp¢"block1_conv1/Conv2D/ReadVariableOp¢#block1_conv2/BiasAdd/ReadVariableOp¢"block1_conv2/Conv2D/ReadVariableOp¢#block2_conv1/BiasAdd/ReadVariableOp¢"block2_conv1/Conv2D/ReadVariableOp¢#block2_conv2/BiasAdd/ReadVariableOp¢"block2_conv2/Conv2D/ReadVariableOp¢#block3_conv1/BiasAdd/ReadVariableOp¢"block3_conv1/Conv2D/ReadVariableOp¢#block3_conv2/BiasAdd/ReadVariableOp¢"block3_conv2/Conv2D/ReadVariableOp¢#block3_conv3/BiasAdd/ReadVariableOp¢"block3_conv3/Conv2D/ReadVariableOp¢#block4_conv1/BiasAdd/ReadVariableOp¢"block4_conv1/Conv2D/ReadVariableOp¢#block4_conv2/BiasAdd/ReadVariableOp¢"block4_conv2/Conv2D/ReadVariableOp¢#block4_conv3/BiasAdd/ReadVariableOp¢"block4_conv3/Conv2D/ReadVariableOp¢#block5_conv1/BiasAdd/ReadVariableOp¢"block5_conv1/Conv2D/ReadVariableOp¢#block5_conv2/BiasAdd/ReadVariableOp¢"block5_conv2/Conv2D/ReadVariableOp¢#block5_conv3/BiasAdd/ReadVariableOp¢"block5_conv3/Conv2D/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0µ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¦
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Î
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¦
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¬
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ê
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpps
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpps
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ê
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¥
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
É

+__inference_dense_152_layer_call_fn_5152765

inputs
unknown:@	
	unknown_0:	
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³ 

/__inference_sequential_16_layer_call_fn_5150677

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: @

unknown_36:@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@

unknown_41:	@

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:


unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	@

unknown_54:@

unknown_55:@

unknown_56:@

unknown_57:@

unknown_58:@

unknown_59:@ 

unknown_60: 

unknown_61: 

unknown_62: 

unknown_63: 

unknown_64: 

unknown_65: @

unknown_66:@

unknown_67:@@

unknown_68:@

unknown_69:@	

unknown_70:	
identity¢StatefulPartitionedCall

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*\
_read_only_resource_inputs>
<:	
 #$%&)*+,/0125678;<=>ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_5149731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs


I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿpp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
 
_user_specified_nameinputs


÷
F__inference_dense_151_layer_call_and_return_conditional_losses_5152756

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


I__inference_block4_conv3_layer_call_and_return_conditional_losses_5153006

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
¦
.__inference_block5_conv3_layer_call_fn_5153065

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
Ø
9__inference_batch_normalization_116_layer_call_fn_5152357

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148476p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148605

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Þ
e
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152312

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð

+__inference_dense_147_layer_call_fn_5152333

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block4_conv2_layer_call_and_return_conditional_losses_5152986

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
I
-__inference_block2_pool_layer_call_fn_5152871

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
í
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152551

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


÷
F__inference_dense_150_layer_call_and_return_conditional_losses_5152736

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É

+__inference_dense_151_layer_call_fn_5152745

inputs
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
éW
À
B__inference_vgg16_layer_call_and_return_conditional_losses_5147851

inputs.
block1_conv1_5147780:@"
block1_conv1_5147782:@.
block1_conv2_5147785:@@"
block1_conv2_5147787:@/
block2_conv1_5147791:@#
block2_conv1_5147793:	0
block2_conv2_5147796:#
block2_conv2_5147798:	0
block3_conv1_5147802:#
block3_conv1_5147804:	0
block3_conv2_5147807:#
block3_conv2_5147809:	0
block3_conv3_5147812:#
block3_conv3_5147814:	0
block4_conv1_5147818:#
block4_conv1_5147820:	0
block4_conv2_5147823:#
block4_conv2_5147825:	0
block4_conv3_5147828:#
block4_conv3_5147830:	0
block5_conv1_5147834:#
block5_conv1_5147836:	0
block5_conv2_5147839:#
block5_conv2_5147841:	0
block5_conv3_5147844:#
block5_conv3_5147846:	
identity¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_5147780block1_conv1_5147782*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317·
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5147785block1_conv2_5147787*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334ñ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248­
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5147791block2_conv1_5147793*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352¶
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5147796block2_conv2_5147798*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369ò
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260­
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5147802block3_conv1_5147804*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387¶
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5147807block3_conv2_5147809*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404¶
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5147812block3_conv3_5147814*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421ò
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272­
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5147818block4_conv1_5147820*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439¶
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5147823block4_conv2_5147825*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456¶
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5147828block4_conv3_5147830*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473ò
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284­
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5147834block5_conv1_5147836*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491¶
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5147839block5_conv2_5147841*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508¶
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5147844block5_conv3_5147846*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525ò
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
¡

ø
F__inference_dense_148_layer_call_and_return_conditional_losses_5152471

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
¦
.__inference_block3_conv1_layer_call_fn_5152885

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs
±
Ô
9__inference_batch_normalization_117_layer_call_fn_5152484

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148558o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Û
f
H__inference_dropout_101_layer_call_and_return_conditional_losses_5148964

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ì

+__inference_dense_144_layer_call_fn_5151952

inputs
unknown:	 
	unknown_0: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«

J__inference_sequential_16_layer_call_and_return_conditional_losses_5149026

inputs'
vgg16_5148705:@
vgg16_5148707:@'
vgg16_5148709:@@
vgg16_5148711:@(
vgg16_5148713:@
vgg16_5148715:	)
vgg16_5148717:
vgg16_5148719:	)
vgg16_5148721:
vgg16_5148723:	)
vgg16_5148725:
vgg16_5148727:	)
vgg16_5148729:
vgg16_5148731:	)
vgg16_5148733:
vgg16_5148735:	)
vgg16_5148737:
vgg16_5148739:	)
vgg16_5148741:
vgg16_5148743:	)
vgg16_5148745:
vgg16_5148747:	)
vgg16_5148749:
vgg16_5148751:	)
vgg16_5148753:
vgg16_5148755:	.
batch_normalization_112_5148759:	.
batch_normalization_112_5148761:	.
batch_normalization_112_5148763:	.
batch_normalization_112_5148765:	$
dense_144_5148780:	 
dense_144_5148782: -
batch_normalization_113_5148785: -
batch_normalization_113_5148787: -
batch_normalization_113_5148789: -
batch_normalization_113_5148791: #
dense_145_5148813: @
dense_145_5148815:@-
batch_normalization_114_5148818:@-
batch_normalization_114_5148820:@-
batch_normalization_114_5148822:@-
batch_normalization_114_5148824:@$
dense_146_5148846:	@ 
dense_146_5148848:	.
batch_normalization_115_5148851:	.
batch_normalization_115_5148853:	.
batch_normalization_115_5148855:	.
batch_normalization_115_5148857:	%
dense_147_5148879:
 
dense_147_5148881:	.
batch_normalization_116_5148884:	.
batch_normalization_116_5148886:	.
batch_normalization_116_5148888:	.
batch_normalization_116_5148890:	$
dense_148_5148912:	@
dense_148_5148914:@-
batch_normalization_117_5148917:@-
batch_normalization_117_5148919:@-
batch_normalization_117_5148921:@-
batch_normalization_117_5148923:@#
dense_149_5148945:@ 
dense_149_5148947: -
batch_normalization_118_5148950: -
batch_normalization_118_5148952: -
batch_normalization_118_5148954: -
batch_normalization_118_5148956: #
dense_150_5148986: @
dense_150_5148988:@#
dense_151_5149003:@@
dense_151_5149005:@#
dense_152_5149020:@	
dense_152_5149022:	
identity¢/batch_normalization_112/StatefulPartitionedCall¢/batch_normalization_113/StatefulPartitionedCall¢/batch_normalization_114/StatefulPartitionedCall¢/batch_normalization_115/StatefulPartitionedCall¢/batch_normalization_116/StatefulPartitionedCall¢/batch_normalization_117/StatefulPartitionedCall¢/batch_normalization_118/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢!dense_146/StatefulPartitionedCall¢!dense_147/StatefulPartitionedCall¢!dense_148/StatefulPartitionedCall¢!dense_149/StatefulPartitionedCall¢!dense_150/StatefulPartitionedCall¢!dense_151/StatefulPartitionedCall¢!dense_152/StatefulPartitionedCall¢vgg16/StatefulPartitionedCall
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_5148705vgg16_5148707vgg16_5148709vgg16_5148711vgg16_5148713vgg16_5148715vgg16_5148717vgg16_5148719vgg16_5148721vgg16_5148723vgg16_5148725vgg16_5148727vgg16_5148729vgg16_5148731vgg16_5148733vgg16_5148735vgg16_5148737vgg16_5148739vgg16_5148741vgg16_5148743vgg16_5148745vgg16_5148747vgg16_5148749vgg16_5148751vgg16_5148753vgg16_5148755*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147533
+global_average_pooling2d_16/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121§
/batch_normalization_112/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_16/PartitionedCall:output:0batch_normalization_112_5148759batch_normalization_112_5148761batch_normalization_112_5148763batch_normalization_112_5148765*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148148¬
!dense_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_112/StatefulPartitionedCall:output:0dense_144_5148780dense_144_5148782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0batch_normalization_113_5148785batch_normalization_113_5148787batch_normalization_113_5148789batch_normalization_113_5148791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148230ò
dropout_96/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5148799
!dense_145/StatefulPartitionedCallStatefulPartitionedCall#dropout_96/PartitionedCall:output:0dense_145_5148813dense_145_5148815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall*dense_145/StatefulPartitionedCall:output:0batch_normalization_114_5148818batch_normalization_114_5148820batch_normalization_114_5148822batch_normalization_114_5148824*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148312ò
dropout_97/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5148832
!dense_146/StatefulPartitionedCallStatefulPartitionedCall#dropout_97/PartitionedCall:output:0dense_146_5148846dense_146_5148848*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall*dense_146/StatefulPartitionedCall:output:0batch_normalization_115_5148851batch_normalization_115_5148853batch_normalization_115_5148855batch_normalization_115_5148857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148394ó
dropout_98/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5148865
!dense_147/StatefulPartitionedCallStatefulPartitionedCall#dropout_98/PartitionedCall:output:0dense_147_5148879dense_147_5148881*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall*dense_147/StatefulPartitionedCall:output:0batch_normalization_116_5148884batch_normalization_116_5148886batch_normalization_116_5148888batch_normalization_116_5148890*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148476ó
dropout_99/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5148898
!dense_148/StatefulPartitionedCallStatefulPartitionedCall#dropout_99/PartitionedCall:output:0dense_148_5148912dense_148_5148914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911
/batch_normalization_117/StatefulPartitionedCallStatefulPartitionedCall*dense_148/StatefulPartitionedCall:output:0batch_normalization_117_5148917batch_normalization_117_5148919batch_normalization_117_5148921batch_normalization_117_5148923*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148558ô
dropout_100/PartitionedCallPartitionedCall8batch_normalization_117/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5148931
!dense_149/StatefulPartitionedCallStatefulPartitionedCall$dropout_100/PartitionedCall:output:0dense_149_5148945dense_149_5148947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944
/batch_normalization_118/StatefulPartitionedCallStatefulPartitionedCall*dense_149/StatefulPartitionedCall:output:0batch_normalization_118_5148950batch_normalization_118_5148952batch_normalization_118_5148954batch_normalization_118_5148956*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148640ô
dropout_101/PartitionedCallPartitionedCall8batch_normalization_118/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5148964Þ
flatten_16/PartitionedCallPartitionedCall$dropout_101/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_150_5148986dense_150_5148988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985
!dense_151/StatefulPartitionedCallStatefulPartitionedCall*dense_150/StatefulPartitionedCall:output:0dense_151_5149003dense_151_5149005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002
!dense_152/StatefulPartitionedCallStatefulPartitionedCall*dense_151/StatefulPartitionedCall:output:0dense_152_5149020dense_152_5149022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019y
IdentityIdentity*dense_152/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
NoOpNoOp0^batch_normalization_112/StatefulPartitionedCall0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall0^batch_normalization_117/StatefulPartitionedCall0^batch_normalization_118/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall"^dense_146/StatefulPartitionedCall"^dense_147/StatefulPartitionedCall"^dense_148/StatefulPartitionedCall"^dense_149/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_112/StatefulPartitionedCall/batch_normalization_112/StatefulPartitionedCall2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2b
/batch_normalization_117/StatefulPartitionedCall/batch_normalization_117/StatefulPartitionedCall2b
/batch_normalization_118/StatefulPartitionedCall/batch_normalization_118/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2F
!dense_149/StatefulPartitionedCall!dense_149/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152009

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¯
Ô
9__inference_batch_normalization_113_layer_call_fn_5151989

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148277o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¯
Ô
9__inference_batch_normalization_118_layer_call_fn_5152624

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ú
f
-__inference_dropout_101_layer_call_fn_5152688

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5149229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Á 

/__inference_sequential_16_layer_call_fn_5150528

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: @

unknown_36:@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@

unknown_41:	@

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:


unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	@

unknown_54:@

unknown_55:@

unknown_56:@

unknown_57:@

unknown_58:@

unknown_59:@ 

unknown_60: 

unknown_61: 

unknown_62: 

unknown_63: 

unknown_64: 

unknown_65: @

unknown_66:@

unknown_67:@@

unknown_68:@

unknown_69:@	

unknown_70:	
identity¢StatefulPartitionedCall­

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_5149026o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
¹
t
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5151863

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148558

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ïW
Â
B__inference_vgg16_layer_call_and_return_conditional_losses_5148037
input_17.
block1_conv1_5147966:@"
block1_conv1_5147968:@.
block1_conv2_5147971:@@"
block1_conv2_5147973:@/
block2_conv1_5147977:@#
block2_conv1_5147979:	0
block2_conv2_5147982:#
block2_conv2_5147984:	0
block3_conv1_5147988:#
block3_conv1_5147990:	0
block3_conv2_5147993:#
block3_conv2_5147995:	0
block3_conv3_5147998:#
block3_conv3_5148000:	0
block4_conv1_5148004:#
block4_conv1_5148006:	0
block4_conv2_5148009:#
block4_conv2_5148011:	0
block4_conv3_5148014:#
block4_conv3_5148016:	0
block5_conv1_5148020:#
block5_conv1_5148022:	0
block5_conv2_5148025:#
block5_conv2_5148027:	0
block5_conv3_5148030:#
block5_conv3_5148032:	
identity¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_17block1_conv1_5147966block1_conv1_5147968*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5147317·
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5147971block1_conv2_5147973*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5147334ñ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_5147248­
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5147977block2_conv1_5147979*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352¶
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5147982block2_conv2_5147984*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5147369ò
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_5147260­
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5147988block3_conv1_5147990*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5147387¶
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5147993block3_conv2_5147995*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404¶
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5147998block3_conv3_5148000*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5147421ò
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272­
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5148004block4_conv1_5148006*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439¶
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5148009block4_conv2_5148011*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5147456¶
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5148014block4_conv3_5148016*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473ò
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_5147284­
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5148020block5_conv1_5148022*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5147491¶
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5148025block5_conv2_5148027*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5147508¶
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5148030block5_conv3_5148032*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5147525ò
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_5147296|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_17
·
Ø
9__inference_batch_normalization_116_layer_call_fn_5152370

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148523p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
·
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151909

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block3_conv2_layer_call_and_return_conditional_losses_5147404

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs
Ú
e
G__inference_dropout_96_layer_call_and_return_conditional_losses_5148799

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¦
H
,__inference_dropout_97_layer_call_fn_5152175

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5148832`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148640

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


I__inference_block1_conv2_layer_call_and_return_conditional_losses_5152816

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
 
_user_specified_nameinputs
Í

+__inference_dense_146_layer_call_fn_5152206

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ª
H
,__inference_dropout_99_layer_call_fn_5152429

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5148898a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
æ
J__inference_sequential_16_layer_call_and_return_conditional_losses_5149731

inputs'
vgg16_5149561:@
vgg16_5149563:@'
vgg16_5149565:@@
vgg16_5149567:@(
vgg16_5149569:@
vgg16_5149571:	)
vgg16_5149573:
vgg16_5149575:	)
vgg16_5149577:
vgg16_5149579:	)
vgg16_5149581:
vgg16_5149583:	)
vgg16_5149585:
vgg16_5149587:	)
vgg16_5149589:
vgg16_5149591:	)
vgg16_5149593:
vgg16_5149595:	)
vgg16_5149597:
vgg16_5149599:	)
vgg16_5149601:
vgg16_5149603:	)
vgg16_5149605:
vgg16_5149607:	)
vgg16_5149609:
vgg16_5149611:	.
batch_normalization_112_5149615:	.
batch_normalization_112_5149617:	.
batch_normalization_112_5149619:	.
batch_normalization_112_5149621:	$
dense_144_5149624:	 
dense_144_5149626: -
batch_normalization_113_5149629: -
batch_normalization_113_5149631: -
batch_normalization_113_5149633: -
batch_normalization_113_5149635: #
dense_145_5149639: @
dense_145_5149641:@-
batch_normalization_114_5149644:@-
batch_normalization_114_5149646:@-
batch_normalization_114_5149648:@-
batch_normalization_114_5149650:@$
dense_146_5149654:	@ 
dense_146_5149656:	.
batch_normalization_115_5149659:	.
batch_normalization_115_5149661:	.
batch_normalization_115_5149663:	.
batch_normalization_115_5149665:	%
dense_147_5149669:
 
dense_147_5149671:	.
batch_normalization_116_5149674:	.
batch_normalization_116_5149676:	.
batch_normalization_116_5149678:	.
batch_normalization_116_5149680:	$
dense_148_5149684:	@
dense_148_5149686:@-
batch_normalization_117_5149689:@-
batch_normalization_117_5149691:@-
batch_normalization_117_5149693:@-
batch_normalization_117_5149695:@#
dense_149_5149699:@ 
dense_149_5149701: -
batch_normalization_118_5149704: -
batch_normalization_118_5149706: -
batch_normalization_118_5149708: -
batch_normalization_118_5149710: #
dense_150_5149715: @
dense_150_5149717:@#
dense_151_5149720:@@
dense_151_5149722:@#
dense_152_5149725:@	
dense_152_5149727:	
identity¢/batch_normalization_112/StatefulPartitionedCall¢/batch_normalization_113/StatefulPartitionedCall¢/batch_normalization_114/StatefulPartitionedCall¢/batch_normalization_115/StatefulPartitionedCall¢/batch_normalization_116/StatefulPartitionedCall¢/batch_normalization_117/StatefulPartitionedCall¢/batch_normalization_118/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢!dense_146/StatefulPartitionedCall¢!dense_147/StatefulPartitionedCall¢!dense_148/StatefulPartitionedCall¢!dense_149/StatefulPartitionedCall¢!dense_150/StatefulPartitionedCall¢!dense_151/StatefulPartitionedCall¢!dense_152/StatefulPartitionedCall¢#dropout_100/StatefulPartitionedCall¢#dropout_101/StatefulPartitionedCall¢"dropout_96/StatefulPartitionedCall¢"dropout_97/StatefulPartitionedCall¢"dropout_98/StatefulPartitionedCall¢"dropout_99/StatefulPartitionedCall¢vgg16/StatefulPartitionedCall
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_5149561vgg16_5149563vgg16_5149565vgg16_5149567vgg16_5149569vgg16_5149571vgg16_5149573vgg16_5149575vgg16_5149577vgg16_5149579vgg16_5149581vgg16_5149583vgg16_5149585vgg16_5149587vgg16_5149589vgg16_5149591vgg16_5149593vgg16_5149595vgg16_5149597vgg16_5149599vgg16_5149601vgg16_5149603vgg16_5149605vgg16_5149607vgg16_5149609vgg16_5149611*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147851
+global_average_pooling2d_16/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5148121¥
/batch_normalization_112/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_16/PartitionedCall:output:0batch_normalization_112_5149615batch_normalization_112_5149617batch_normalization_112_5149619batch_normalization_112_5149621*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148195¬
!dense_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_112/StatefulPartitionedCall:output:0dense_144_5149624dense_144_5149626*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0batch_normalization_113_5149629batch_normalization_113_5149631batch_normalization_113_5149633batch_normalization_113_5149635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5148277
"dropout_96/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_96_layer_call_and_return_conditional_losses_5149394
!dense_145/StatefulPartitionedCallStatefulPartitionedCall+dropout_96/StatefulPartitionedCall:output:0dense_145_5149639dense_145_5149641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall*dense_145/StatefulPartitionedCall:output:0batch_normalization_114_5149644batch_normalization_114_5149646batch_normalization_114_5149648batch_normalization_114_5149650*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148359§
"dropout_97/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0#^dropout_96/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_97_layer_call_and_return_conditional_losses_5149361 
!dense_146/StatefulPartitionedCallStatefulPartitionedCall+dropout_97/StatefulPartitionedCall:output:0dense_146_5149654dense_146_5149656*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall*dense_146/StatefulPartitionedCall:output:0batch_normalization_115_5149659batch_normalization_115_5149661batch_normalization_115_5149663batch_normalization_115_5149665*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148441¨
"dropout_98/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0#^dropout_97/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_98_layer_call_and_return_conditional_losses_5149328 
!dense_147/StatefulPartitionedCallStatefulPartitionedCall+dropout_98/StatefulPartitionedCall:output:0dense_147_5149669dense_147_5149671*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall*dense_147/StatefulPartitionedCall:output:0batch_normalization_116_5149674batch_normalization_116_5149676batch_normalization_116_5149678batch_normalization_116_5149680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148523¨
"dropout_99/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0#^dropout_98/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5149295
!dense_148/StatefulPartitionedCallStatefulPartitionedCall+dropout_99/StatefulPartitionedCall:output:0dense_148_5149684dense_148_5149686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911
/batch_normalization_117/StatefulPartitionedCallStatefulPartitionedCall*dense_148/StatefulPartitionedCall:output:0batch_normalization_117_5149689batch_normalization_117_5149691batch_normalization_117_5149693batch_normalization_117_5149695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5148605©
#dropout_100/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_117/StatefulPartitionedCall:output:0#^dropout_99/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_100_layer_call_and_return_conditional_losses_5149262 
!dense_149/StatefulPartitionedCallStatefulPartitionedCall,dropout_100/StatefulPartitionedCall:output:0dense_149_5149699dense_149_5149701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944
/batch_normalization_118/StatefulPartitionedCallStatefulPartitionedCall*dense_149/StatefulPartitionedCall:output:0batch_normalization_118_5149704batch_normalization_118_5149706batch_normalization_118_5149708batch_normalization_118_5149710*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148687ª
#dropout_101/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_118/StatefulPartitionedCall:output:0$^dropout_100/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5149229æ
flatten_16/PartitionedCallPartitionedCall,dropout_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972
!dense_150/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_150_5149715dense_150_5149717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985
!dense_151/StatefulPartitionedCallStatefulPartitionedCall*dense_150/StatefulPartitionedCall:output:0dense_151_5149720dense_151_5149722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_151_layer_call_and_return_conditional_losses_5149002
!dense_152/StatefulPartitionedCallStatefulPartitionedCall*dense_151/StatefulPartitionedCall:output:0dense_152_5149725dense_152_5149727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_5149019y
IdentityIdentity*dense_152/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	è
NoOpNoOp0^batch_normalization_112/StatefulPartitionedCall0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall0^batch_normalization_117/StatefulPartitionedCall0^batch_normalization_118/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall"^dense_146/StatefulPartitionedCall"^dense_147/StatefulPartitionedCall"^dense_148/StatefulPartitionedCall"^dense_149/StatefulPartitionedCall"^dense_150/StatefulPartitionedCall"^dense_151/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall$^dropout_100/StatefulPartitionedCall$^dropout_101/StatefulPartitionedCall#^dropout_96/StatefulPartitionedCall#^dropout_97/StatefulPartitionedCall#^dropout_98/StatefulPartitionedCall#^dropout_99/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_112/StatefulPartitionedCall/batch_normalization_112/StatefulPartitionedCall2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2b
/batch_normalization_117/StatefulPartitionedCall/batch_normalization_117/StatefulPartitionedCall2b
/batch_normalization_118/StatefulPartitionedCall/batch_normalization_118/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2F
!dense_146/StatefulPartitionedCall!dense_146/StatefulPartitionedCall2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2F
!dense_149/StatefulPartitionedCall!dense_149/StatefulPartitionedCall2F
!dense_150/StatefulPartitionedCall!dense_150/StatefulPartitionedCall2F
!dense_151/StatefulPartitionedCall!dense_151/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2J
#dropout_100/StatefulPartitionedCall#dropout_100/StatefulPartitionedCall2J
#dropout_101/StatefulPartitionedCall#dropout_101/StatefulPartitionedCall2H
"dropout_96/StatefulPartitionedCall"dropout_96/StatefulPartitionedCall2H
"dropout_97/StatefulPartitionedCall"dropout_97/StatefulPartitionedCall2H
"dropout_98/StatefulPartitionedCall"dropout_98/StatefulPartitionedCall2H
"dropout_99/StatefulPartitionedCall"dropout_99/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
©

ú
F__inference_dense_147_layer_call_and_return_conditional_losses_5152344

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block4_conv1_layer_call_and_return_conditional_losses_5147439

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152451

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block4_conv1_layer_call_and_return_conditional_losses_5152966

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
Ø
9__inference_batch_normalization_112_layer_call_fn_5151876

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5148148p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


I__inference_block4_conv3_layer_call_and_return_conditional_losses_5147473

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
I
-__inference_block3_pool_layer_call_fn_5152941

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_5147272
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_block5_pool_layer_call_and_return_conditional_losses_5153086

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_149_layer_call_and_return_conditional_losses_5152598

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Þ
e
G__inference_dropout_98_layer_call_and_return_conditional_losses_5148865

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

ø
F__inference_dense_144_layer_call_and_return_conditional_losses_5148779

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
I
-__inference_dropout_101_layer_call_fn_5152683

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_101_layer_call_and_return_conditional_losses_5148964`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

µ
'__inference_vgg16_layer_call_fn_5147588
input_17!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147533x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_17
ã
·
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5148476

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

ø
F__inference_dense_148_layer_call_and_return_conditional_losses_5148911

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É

+__inference_dense_145_layer_call_fn_5152079

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_145_layer_call_and_return_conditional_losses_5148812o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ãù
Q
"__inference__wrapped_model_5147239
vgg16_inputY
?sequential_16_vgg16_block1_conv1_conv2d_readvariableop_resource:@N
@sequential_16_vgg16_block1_conv1_biasadd_readvariableop_resource:@Y
?sequential_16_vgg16_block1_conv2_conv2d_readvariableop_resource:@@N
@sequential_16_vgg16_block1_conv2_biasadd_readvariableop_resource:@Z
?sequential_16_vgg16_block2_conv1_conv2d_readvariableop_resource:@O
@sequential_16_vgg16_block2_conv1_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block2_conv2_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block2_conv2_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block3_conv1_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block3_conv1_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block3_conv2_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block3_conv2_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block3_conv3_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block3_conv3_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block4_conv1_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block4_conv1_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block4_conv2_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block4_conv2_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block4_conv3_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block4_conv3_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block5_conv1_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block5_conv1_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block5_conv2_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block5_conv2_biasadd_readvariableop_resource:	[
?sequential_16_vgg16_block5_conv3_conv2d_readvariableop_resource:O
@sequential_16_vgg16_block5_conv3_biasadd_readvariableop_resource:	V
Gsequential_16_batch_normalization_112_batchnorm_readvariableop_resource:	Z
Ksequential_16_batch_normalization_112_batchnorm_mul_readvariableop_resource:	X
Isequential_16_batch_normalization_112_batchnorm_readvariableop_1_resource:	X
Isequential_16_batch_normalization_112_batchnorm_readvariableop_2_resource:	I
6sequential_16_dense_144_matmul_readvariableop_resource:	 E
7sequential_16_dense_144_biasadd_readvariableop_resource: U
Gsequential_16_batch_normalization_113_batchnorm_readvariableop_resource: Y
Ksequential_16_batch_normalization_113_batchnorm_mul_readvariableop_resource: W
Isequential_16_batch_normalization_113_batchnorm_readvariableop_1_resource: W
Isequential_16_batch_normalization_113_batchnorm_readvariableop_2_resource: H
6sequential_16_dense_145_matmul_readvariableop_resource: @E
7sequential_16_dense_145_biasadd_readvariableop_resource:@U
Gsequential_16_batch_normalization_114_batchnorm_readvariableop_resource:@Y
Ksequential_16_batch_normalization_114_batchnorm_mul_readvariableop_resource:@W
Isequential_16_batch_normalization_114_batchnorm_readvariableop_1_resource:@W
Isequential_16_batch_normalization_114_batchnorm_readvariableop_2_resource:@I
6sequential_16_dense_146_matmul_readvariableop_resource:	@F
7sequential_16_dense_146_biasadd_readvariableop_resource:	V
Gsequential_16_batch_normalization_115_batchnorm_readvariableop_resource:	Z
Ksequential_16_batch_normalization_115_batchnorm_mul_readvariableop_resource:	X
Isequential_16_batch_normalization_115_batchnorm_readvariableop_1_resource:	X
Isequential_16_batch_normalization_115_batchnorm_readvariableop_2_resource:	J
6sequential_16_dense_147_matmul_readvariableop_resource:
F
7sequential_16_dense_147_biasadd_readvariableop_resource:	V
Gsequential_16_batch_normalization_116_batchnorm_readvariableop_resource:	Z
Ksequential_16_batch_normalization_116_batchnorm_mul_readvariableop_resource:	X
Isequential_16_batch_normalization_116_batchnorm_readvariableop_1_resource:	X
Isequential_16_batch_normalization_116_batchnorm_readvariableop_2_resource:	I
6sequential_16_dense_148_matmul_readvariableop_resource:	@E
7sequential_16_dense_148_biasadd_readvariableop_resource:@U
Gsequential_16_batch_normalization_117_batchnorm_readvariableop_resource:@Y
Ksequential_16_batch_normalization_117_batchnorm_mul_readvariableop_resource:@W
Isequential_16_batch_normalization_117_batchnorm_readvariableop_1_resource:@W
Isequential_16_batch_normalization_117_batchnorm_readvariableop_2_resource:@H
6sequential_16_dense_149_matmul_readvariableop_resource:@ E
7sequential_16_dense_149_biasadd_readvariableop_resource: U
Gsequential_16_batch_normalization_118_batchnorm_readvariableop_resource: Y
Ksequential_16_batch_normalization_118_batchnorm_mul_readvariableop_resource: W
Isequential_16_batch_normalization_118_batchnorm_readvariableop_1_resource: W
Isequential_16_batch_normalization_118_batchnorm_readvariableop_2_resource: H
6sequential_16_dense_150_matmul_readvariableop_resource: @E
7sequential_16_dense_150_biasadd_readvariableop_resource:@H
6sequential_16_dense_151_matmul_readvariableop_resource:@@E
7sequential_16_dense_151_biasadd_readvariableop_resource:@H
6sequential_16_dense_152_matmul_readvariableop_resource:@	E
7sequential_16_dense_152_biasadd_readvariableop_resource:	
identity¢>sequential_16/batch_normalization_112/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_113/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_114/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_115/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_116/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_117/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOp¢>sequential_16/batch_normalization_118/batchnorm/ReadVariableOp¢@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_1¢@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_2¢Bsequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOp¢.sequential_16/dense_144/BiasAdd/ReadVariableOp¢-sequential_16/dense_144/MatMul/ReadVariableOp¢.sequential_16/dense_145/BiasAdd/ReadVariableOp¢-sequential_16/dense_145/MatMul/ReadVariableOp¢.sequential_16/dense_146/BiasAdd/ReadVariableOp¢-sequential_16/dense_146/MatMul/ReadVariableOp¢.sequential_16/dense_147/BiasAdd/ReadVariableOp¢-sequential_16/dense_147/MatMul/ReadVariableOp¢.sequential_16/dense_148/BiasAdd/ReadVariableOp¢-sequential_16/dense_148/MatMul/ReadVariableOp¢.sequential_16/dense_149/BiasAdd/ReadVariableOp¢-sequential_16/dense_149/MatMul/ReadVariableOp¢.sequential_16/dense_150/BiasAdd/ReadVariableOp¢-sequential_16/dense_150/MatMul/ReadVariableOp¢.sequential_16/dense_151/BiasAdd/ReadVariableOp¢-sequential_16/dense_151/MatMul/ReadVariableOp¢.sequential_16/dense_152/BiasAdd/ReadVariableOp¢-sequential_16/dense_152/MatMul/ReadVariableOp¢7sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOp¢7sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOp¢6sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOp¾
6sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0â
'sequential_16/vgg16/block1_conv1/Conv2DConv2Dvgg16_input>sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
´
7sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0â
(sequential_16/vgg16/block1_conv1/BiasAddBiasAdd0sequential_16/vgg16/block1_conv1/Conv2D:output:0?sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
%sequential_16/vgg16/block1_conv1/ReluRelu1sequential_16/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@¾
6sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
'sequential_16/vgg16/block1_conv2/Conv2DConv2D3sequential_16/vgg16/block1_conv1/Relu:activations:0>sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
´
7sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0â
(sequential_16/vgg16/block1_conv2/BiasAddBiasAdd0sequential_16/vgg16/block1_conv2/Conv2D:output:0?sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@
%sequential_16/vgg16/block1_conv2/ReluRelu1sequential_16/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@Ô
'sequential_16/vgg16/block1_pool/MaxPoolMaxPool3sequential_16/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@*
ksize
*
paddingVALID*
strides
¿
6sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
'sequential_16/vgg16/block2_conv1/Conv2DConv2D0sequential_16/vgg16/block1_pool/MaxPool:output:0>sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
µ
7sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block2_conv1/BiasAddBiasAdd0sequential_16/vgg16/block2_conv1/Conv2D:output:0?sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
%sequential_16/vgg16/block2_conv1/ReluRelu1sequential_16/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppÀ
6sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block2_conv2/Conv2DConv2D3sequential_16/vgg16/block2_conv1/Relu:activations:0>sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
µ
7sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block2_conv2/BiasAddBiasAdd0sequential_16/vgg16/block2_conv2/Conv2D:output:0?sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp
%sequential_16/vgg16/block2_conv2/ReluRelu1sequential_16/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppÕ
'sequential_16/vgg16/block2_pool/MaxPoolMaxPool3sequential_16/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
ksize
*
paddingVALID*
strides
À
6sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block3_conv1/Conv2DConv2D0sequential_16/vgg16/block2_pool/MaxPool:output:0>sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
µ
7sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block3_conv1/BiasAddBiasAdd0sequential_16/vgg16/block3_conv1/Conv2D:output:0?sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
%sequential_16/vgg16/block3_conv1/ReluRelu1sequential_16/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88À
6sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block3_conv2/Conv2DConv2D3sequential_16/vgg16/block3_conv1/Relu:activations:0>sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
µ
7sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block3_conv2/BiasAddBiasAdd0sequential_16/vgg16/block3_conv2/Conv2D:output:0?sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
%sequential_16/vgg16/block3_conv2/ReluRelu1sequential_16/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88À
6sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block3_conv3/Conv2DConv2D3sequential_16/vgg16/block3_conv2/Relu:activations:0>sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
µ
7sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block3_conv3/BiasAddBiasAdd0sequential_16/vgg16/block3_conv3/Conv2D:output:0?sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
%sequential_16/vgg16/block3_conv3/ReluRelu1sequential_16/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Õ
'sequential_16/vgg16/block3_pool/MaxPoolMaxPool3sequential_16/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
À
6sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block4_conv1/Conv2DConv2D0sequential_16/vgg16/block3_pool/MaxPool:output:0>sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block4_conv1/BiasAddBiasAdd0sequential_16/vgg16/block4_conv1/Conv2D:output:0?sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block4_conv1/ReluRelu1sequential_16/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
6sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block4_conv2/Conv2DConv2D3sequential_16/vgg16/block4_conv1/Relu:activations:0>sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block4_conv2/BiasAddBiasAdd0sequential_16/vgg16/block4_conv2/Conv2D:output:0?sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block4_conv2/ReluRelu1sequential_16/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
6sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block4_conv3/Conv2DConv2D3sequential_16/vgg16/block4_conv2/Relu:activations:0>sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block4_conv3/BiasAddBiasAdd0sequential_16/vgg16/block4_conv3/Conv2D:output:0?sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block4_conv3/ReluRelu1sequential_16/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
'sequential_16/vgg16/block4_pool/MaxPoolMaxPool3sequential_16/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
À
6sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block5_conv1/Conv2DConv2D0sequential_16/vgg16/block4_pool/MaxPool:output:0>sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block5_conv1/BiasAddBiasAdd0sequential_16/vgg16/block5_conv1/Conv2D:output:0?sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block5_conv1/ReluRelu1sequential_16/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
6sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block5_conv2/Conv2DConv2D3sequential_16/vgg16/block5_conv1/Relu:activations:0>sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block5_conv2/BiasAddBiasAdd0sequential_16/vgg16/block5_conv2/Conv2D:output:0?sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block5_conv2/ReluRelu1sequential_16/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
6sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_16_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_16/vgg16/block5_conv3/Conv2DConv2D3sequential_16/vgg16/block5_conv2/Relu:activations:0>sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
µ
7sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_16_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_16/vgg16/block5_conv3/BiasAddBiasAdd0sequential_16/vgg16/block5_conv3/Conv2D:output:0?sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_16/vgg16/block5_conv3/ReluRelu1sequential_16/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
'sequential_16/vgg16/block5_pool/MaxPoolMaxPool3sequential_16/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

@sequential_16/global_average_pooling2d_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      æ
.sequential_16/global_average_pooling2d_16/MeanMean0sequential_16/vgg16/block5_pool/MaxPool:output:0Isequential_16/global_average_pooling2d_16/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_16/batch_normalization_112/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_112_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0z
5sequential_16/batch_normalization_112/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ê
3sequential_16/batch_normalization_112/batchnorm/addAddV2Fsequential_16/batch_normalization_112/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_112/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
5sequential_16/batch_normalization_112/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_112/batchnorm/add:z:0*
T0*
_output_shapes	
:Ë
Bsequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_112_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ç
3sequential_16/batch_normalization_112/batchnorm/mulMul9sequential_16/batch_normalization_112/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:á
5sequential_16/batch_normalization_112/batchnorm/mul_1Mul7sequential_16/global_average_pooling2d_16/Mean:output:07sequential_16/batch_normalization_112/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_112_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0å
5sequential_16/batch_normalization_112/batchnorm/mul_2MulHsequential_16/batch_normalization_112/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_112/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ç
@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_112_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0å
3sequential_16/batch_normalization_112/batchnorm/subSubHsequential_16/batch_normalization_112/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_112/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:å
5sequential_16/batch_normalization_112/batchnorm/add_1AddV29sequential_16/batch_normalization_112/batchnorm/mul_1:z:07sequential_16/batch_normalization_112/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-sequential_16/dense_144/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_144_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0Ì
sequential_16/dense_144/MatMulMatMul9sequential_16/batch_normalization_112/batchnorm/add_1:z:05sequential_16/dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
.sequential_16/dense_144/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_16/dense_144/BiasAddBiasAdd(sequential_16/dense_144/MatMul:product:06sequential_16/dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_16/dense_144/ReluRelu(sequential_16/dense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
>sequential_16/batch_normalization_113/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_113_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0z
5sequential_16/batch_normalization_113/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:é
3sequential_16/batch_normalization_113/batchnorm/addAddV2Fsequential_16/batch_normalization_113/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_113/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
5sequential_16/batch_normalization_113/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_113/batchnorm/add:z:0*
T0*
_output_shapes
: Ê
Bsequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_113_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0æ
3sequential_16/batch_normalization_113/batchnorm/mulMul9sequential_16/batch_normalization_113/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: Ó
5sequential_16/batch_normalization_113/batchnorm/mul_1Mul*sequential_16/dense_144/Relu:activations:07sequential_16/batch_normalization_113/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_113_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0ä
5sequential_16/batch_normalization_113/batchnorm/mul_2MulHsequential_16/batch_normalization_113/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_113/batchnorm/mul:z:0*
T0*
_output_shapes
: Æ
@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_113_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0ä
3sequential_16/batch_normalization_113/batchnorm/subSubHsequential_16/batch_normalization_113/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_113/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ä
5sequential_16/batch_normalization_113/batchnorm/add_1AddV29sequential_16/batch_normalization_113/batchnorm/mul_1:z:07sequential_16/batch_normalization_113/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!sequential_16/dropout_96/IdentityIdentity9sequential_16/batch_normalization_113/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
-sequential_16/dense_145/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_145_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0½
sequential_16/dense_145/MatMulMatMul*sequential_16/dropout_96/Identity:output:05sequential_16/dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_16/dense_145/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_145_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_16/dense_145/BiasAddBiasAdd(sequential_16/dense_145/MatMul:product:06sequential_16/dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_16/dense_145/ReluRelu(sequential_16/dense_145/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>sequential_16/batch_normalization_114/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_114_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0z
5sequential_16/batch_normalization_114/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:é
3sequential_16/batch_normalization_114/batchnorm/addAddV2Fsequential_16/batch_normalization_114/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_114/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
5sequential_16/batch_normalization_114/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_114/batchnorm/add:z:0*
T0*
_output_shapes
:@Ê
Bsequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_114_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0æ
3sequential_16/batch_normalization_114/batchnorm/mulMul9sequential_16/batch_normalization_114/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@Ó
5sequential_16/batch_normalization_114/batchnorm/mul_1Mul*sequential_16/dense_145/Relu:activations:07sequential_16/batch_normalization_114/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_114_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0ä
5sequential_16/batch_normalization_114/batchnorm/mul_2MulHsequential_16/batch_normalization_114/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_114/batchnorm/mul:z:0*
T0*
_output_shapes
:@Æ
@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_114_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0ä
3sequential_16/batch_normalization_114/batchnorm/subSubHsequential_16/batch_normalization_114/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_114/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@ä
5sequential_16/batch_normalization_114/batchnorm/add_1AddV29sequential_16/batch_normalization_114/batchnorm/mul_1:z:07sequential_16/batch_normalization_114/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!sequential_16/dropout_97/IdentityIdentity9sequential_16/batch_normalization_114/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
-sequential_16/dense_146/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_146_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0¾
sequential_16/dense_146/MatMulMatMul*sequential_16/dropout_97/Identity:output:05sequential_16/dense_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
.sequential_16/dense_146/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_146_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_16/dense_146/BiasAddBiasAdd(sequential_16/dense_146/MatMul:product:06sequential_16/dense_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_16/dense_146/ReluRelu(sequential_16/dense_146/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_16/batch_normalization_115/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_115_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0z
5sequential_16/batch_normalization_115/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ê
3sequential_16/batch_normalization_115/batchnorm/addAddV2Fsequential_16/batch_normalization_115/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_115/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
5sequential_16/batch_normalization_115/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_115/batchnorm/add:z:0*
T0*
_output_shapes	
:Ë
Bsequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_115_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ç
3sequential_16/batch_normalization_115/batchnorm/mulMul9sequential_16/batch_normalization_115/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ô
5sequential_16/batch_normalization_115/batchnorm/mul_1Mul*sequential_16/dense_146/Relu:activations:07sequential_16/batch_normalization_115/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_115_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0å
5sequential_16/batch_normalization_115/batchnorm/mul_2MulHsequential_16/batch_normalization_115/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_115/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ç
@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_115_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0å
3sequential_16/batch_normalization_115/batchnorm/subSubHsequential_16/batch_normalization_115/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_115/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:å
5sequential_16/batch_normalization_115/batchnorm/add_1AddV29sequential_16/batch_normalization_115/batchnorm/mul_1:z:07sequential_16/batch_normalization_115/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_16/dropout_98/IdentityIdentity9sequential_16/batch_normalization_115/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
-sequential_16/dense_147/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_147_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¾
sequential_16/dense_147/MatMulMatMul*sequential_16/dropout_98/Identity:output:05sequential_16/dense_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
.sequential_16/dense_147/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_147_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_16/dense_147/BiasAddBiasAdd(sequential_16/dense_147/MatMul:product:06sequential_16/dense_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_16/dense_147/ReluRelu(sequential_16/dense_147/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_16/batch_normalization_116/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_116_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0z
5sequential_16/batch_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ê
3sequential_16/batch_normalization_116/batchnorm/addAddV2Fsequential_16/batch_normalization_116/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_116/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
5sequential_16/batch_normalization_116/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_116/batchnorm/add:z:0*
T0*
_output_shapes	
:Ë
Bsequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ç
3sequential_16/batch_normalization_116/batchnorm/mulMul9sequential_16/batch_normalization_116/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ô
5sequential_16/batch_normalization_116/batchnorm/mul_1Mul*sequential_16/dense_147/Relu:activations:07sequential_16/batch_normalization_116/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_116_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0å
5sequential_16/batch_normalization_116/batchnorm/mul_2MulHsequential_16/batch_normalization_116/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_116/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ç
@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_116_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0å
3sequential_16/batch_normalization_116/batchnorm/subSubHsequential_16/batch_normalization_116/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_116/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:å
5sequential_16/batch_normalization_116/batchnorm/add_1AddV29sequential_16/batch_normalization_116/batchnorm/mul_1:z:07sequential_16/batch_normalization_116/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_16/dropout_99/IdentityIdentity9sequential_16/batch_normalization_116/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-sequential_16/dense_148/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_148_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0½
sequential_16/dense_148/MatMulMatMul*sequential_16/dropout_99/Identity:output:05sequential_16/dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_16/dense_148/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_148_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_16/dense_148/BiasAddBiasAdd(sequential_16/dense_148/MatMul:product:06sequential_16/dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_16/dense_148/ReluRelu(sequential_16/dense_148/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>sequential_16/batch_normalization_117/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0z
5sequential_16/batch_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:é
3sequential_16/batch_normalization_117/batchnorm/addAddV2Fsequential_16/batch_normalization_117/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_117/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
5sequential_16/batch_normalization_117/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_117/batchnorm/add:z:0*
T0*
_output_shapes
:@Ê
Bsequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0æ
3sequential_16/batch_normalization_117/batchnorm/mulMul9sequential_16/batch_normalization_117/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@Ó
5sequential_16/batch_normalization_117/batchnorm/mul_1Mul*sequential_16/dense_148/Relu:activations:07sequential_16/batch_normalization_117/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_117_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0ä
5sequential_16/batch_normalization_117/batchnorm/mul_2MulHsequential_16/batch_normalization_117/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_117/batchnorm/mul:z:0*
T0*
_output_shapes
:@Æ
@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_117_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0ä
3sequential_16/batch_normalization_117/batchnorm/subSubHsequential_16/batch_normalization_117/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_117/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@ä
5sequential_16/batch_normalization_117/batchnorm/add_1AddV29sequential_16/batch_normalization_117/batchnorm/mul_1:z:07sequential_16/batch_normalization_117/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"sequential_16/dropout_100/IdentityIdentity9sequential_16/batch_normalization_117/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
-sequential_16/dense_149/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_149_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¾
sequential_16/dense_149/MatMulMatMul+sequential_16/dropout_100/Identity:output:05sequential_16/dense_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
.sequential_16/dense_149/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_149_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_16/dense_149/BiasAddBiasAdd(sequential_16/dense_149/MatMul:product:06sequential_16/dense_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_16/dense_149/ReluRelu(sequential_16/dense_149/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
>sequential_16/batch_normalization_118/batchnorm/ReadVariableOpReadVariableOpGsequential_16_batch_normalization_118_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0z
5sequential_16/batch_normalization_118/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:é
3sequential_16/batch_normalization_118/batchnorm/addAddV2Fsequential_16/batch_normalization_118/batchnorm/ReadVariableOp:value:0>sequential_16/batch_normalization_118/batchnorm/add/y:output:0*
T0*
_output_shapes
: 
5sequential_16/batch_normalization_118/batchnorm/RsqrtRsqrt7sequential_16/batch_normalization_118/batchnorm/add:z:0*
T0*
_output_shapes
: Ê
Bsequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_16_batch_normalization_118_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0æ
3sequential_16/batch_normalization_118/batchnorm/mulMul9sequential_16/batch_normalization_118/batchnorm/Rsqrt:y:0Jsequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: Ó
5sequential_16/batch_normalization_118/batchnorm/mul_1Mul*sequential_16/dense_149/Relu:activations:07sequential_16/batch_normalization_118/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_16_batch_normalization_118_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0ä
5sequential_16/batch_normalization_118/batchnorm/mul_2MulHsequential_16/batch_normalization_118/batchnorm/ReadVariableOp_1:value:07sequential_16/batch_normalization_118/batchnorm/mul:z:0*
T0*
_output_shapes
: Æ
@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_16_batch_normalization_118_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0ä
3sequential_16/batch_normalization_118/batchnorm/subSubHsequential_16/batch_normalization_118/batchnorm/ReadVariableOp_2:value:09sequential_16/batch_normalization_118/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ä
5sequential_16/batch_normalization_118/batchnorm/add_1AddV29sequential_16/batch_normalization_118/batchnorm/mul_1:z:07sequential_16/batch_normalization_118/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"sequential_16/dropout_101/IdentityIdentity9sequential_16/batch_normalization_118/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
sequential_16/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ³
 sequential_16/flatten_16/ReshapeReshape+sequential_16/dropout_101/Identity:output:0'sequential_16/flatten_16/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
-sequential_16/dense_150/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_150_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0¼
sequential_16/dense_150/MatMulMatMul)sequential_16/flatten_16/Reshape:output:05sequential_16/dense_150/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_16/dense_150/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_150_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_16/dense_150/BiasAddBiasAdd(sequential_16/dense_150/MatMul:product:06sequential_16/dense_150/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_16/dense_150/ReluRelu(sequential_16/dense_150/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
-sequential_16/dense_151/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_151_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0½
sequential_16/dense_151/MatMulMatMul*sequential_16/dense_150/Relu:activations:05sequential_16/dense_151/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_16/dense_151/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_151_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_16/dense_151/BiasAddBiasAdd(sequential_16/dense_151/MatMul:product:06sequential_16/dense_151/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_16/dense_151/ReluRelu(sequential_16/dense_151/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
-sequential_16/dense_152/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_152_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0½
sequential_16/dense_152/MatMulMatMul*sequential_16/dense_151/Relu:activations:05sequential_16/dense_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	¢
.sequential_16/dense_152/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_152_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¾
sequential_16/dense_152/BiasAddBiasAdd(sequential_16/dense_152/MatMul:product:06sequential_16/dense_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
sequential_16/dense_152/SoftmaxSoftmax(sequential_16/dense_152/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
IdentityIdentity)sequential_16/dense_152/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	Ú!
NoOpNoOp?^sequential_16/batch_normalization_112/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_113/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_114/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_115/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_116/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_117/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOp?^sequential_16/batch_normalization_118/batchnorm/ReadVariableOpA^sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_1A^sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_2C^sequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOp/^sequential_16/dense_144/BiasAdd/ReadVariableOp.^sequential_16/dense_144/MatMul/ReadVariableOp/^sequential_16/dense_145/BiasAdd/ReadVariableOp.^sequential_16/dense_145/MatMul/ReadVariableOp/^sequential_16/dense_146/BiasAdd/ReadVariableOp.^sequential_16/dense_146/MatMul/ReadVariableOp/^sequential_16/dense_147/BiasAdd/ReadVariableOp.^sequential_16/dense_147/MatMul/ReadVariableOp/^sequential_16/dense_148/BiasAdd/ReadVariableOp.^sequential_16/dense_148/MatMul/ReadVariableOp/^sequential_16/dense_149/BiasAdd/ReadVariableOp.^sequential_16/dense_149/MatMul/ReadVariableOp/^sequential_16/dense_150/BiasAdd/ReadVariableOp.^sequential_16/dense_150/MatMul/ReadVariableOp/^sequential_16/dense_151/BiasAdd/ReadVariableOp.^sequential_16/dense_151/MatMul/ReadVariableOp/^sequential_16/dense_152/BiasAdd/ReadVariableOp.^sequential_16/dense_152/MatMul/ReadVariableOp8^sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOp8^sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOp8^sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOp8^sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOp8^sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOp8^sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOp8^sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOp8^sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOp8^sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOp8^sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOp8^sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOp8^sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOp8^sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOp7^sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
>sequential_16/batch_normalization_112/batchnorm/ReadVariableOp>sequential_16/batch_normalization_112/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_112/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_112/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_113/batchnorm/ReadVariableOp>sequential_16/batch_normalization_113/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_113/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_113/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_114/batchnorm/ReadVariableOp>sequential_16/batch_normalization_114/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_114/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_114/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_115/batchnorm/ReadVariableOp>sequential_16/batch_normalization_115/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_115/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_115/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_116/batchnorm/ReadVariableOp>sequential_16/batch_normalization_116/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_116/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_116/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_117/batchnorm/ReadVariableOp>sequential_16/batch_normalization_117/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_117/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_117/batchnorm/mul/ReadVariableOp2
>sequential_16/batch_normalization_118/batchnorm/ReadVariableOp>sequential_16/batch_normalization_118/batchnorm/ReadVariableOp2
@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_1@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_12
@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_2@sequential_16/batch_normalization_118/batchnorm/ReadVariableOp_22
Bsequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOpBsequential_16/batch_normalization_118/batchnorm/mul/ReadVariableOp2`
.sequential_16/dense_144/BiasAdd/ReadVariableOp.sequential_16/dense_144/BiasAdd/ReadVariableOp2^
-sequential_16/dense_144/MatMul/ReadVariableOp-sequential_16/dense_144/MatMul/ReadVariableOp2`
.sequential_16/dense_145/BiasAdd/ReadVariableOp.sequential_16/dense_145/BiasAdd/ReadVariableOp2^
-sequential_16/dense_145/MatMul/ReadVariableOp-sequential_16/dense_145/MatMul/ReadVariableOp2`
.sequential_16/dense_146/BiasAdd/ReadVariableOp.sequential_16/dense_146/BiasAdd/ReadVariableOp2^
-sequential_16/dense_146/MatMul/ReadVariableOp-sequential_16/dense_146/MatMul/ReadVariableOp2`
.sequential_16/dense_147/BiasAdd/ReadVariableOp.sequential_16/dense_147/BiasAdd/ReadVariableOp2^
-sequential_16/dense_147/MatMul/ReadVariableOp-sequential_16/dense_147/MatMul/ReadVariableOp2`
.sequential_16/dense_148/BiasAdd/ReadVariableOp.sequential_16/dense_148/BiasAdd/ReadVariableOp2^
-sequential_16/dense_148/MatMul/ReadVariableOp-sequential_16/dense_148/MatMul/ReadVariableOp2`
.sequential_16/dense_149/BiasAdd/ReadVariableOp.sequential_16/dense_149/BiasAdd/ReadVariableOp2^
-sequential_16/dense_149/MatMul/ReadVariableOp-sequential_16/dense_149/MatMul/ReadVariableOp2`
.sequential_16/dense_150/BiasAdd/ReadVariableOp.sequential_16/dense_150/BiasAdd/ReadVariableOp2^
-sequential_16/dense_150/MatMul/ReadVariableOp-sequential_16/dense_150/MatMul/ReadVariableOp2`
.sequential_16/dense_151/BiasAdd/ReadVariableOp.sequential_16/dense_151/BiasAdd/ReadVariableOp2^
-sequential_16/dense_151/MatMul/ReadVariableOp-sequential_16/dense_151/MatMul/ReadVariableOp2`
.sequential_16/dense_152/BiasAdd/ReadVariableOp.sequential_16/dense_152/BiasAdd/ReadVariableOp2^
-sequential_16/dense_152/MatMul/ReadVariableOp-sequential_16/dense_152/MatMul/ReadVariableOp2r
7sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOp7sequential_16/vgg16/block1_conv1/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOp6sequential_16/vgg16/block1_conv1/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOp7sequential_16/vgg16/block1_conv2/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOp6sequential_16/vgg16/block1_conv2/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOp7sequential_16/vgg16/block2_conv1/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOp6sequential_16/vgg16/block2_conv1/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOp7sequential_16/vgg16/block2_conv2/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOp6sequential_16/vgg16/block2_conv2/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOp7sequential_16/vgg16/block3_conv1/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOp6sequential_16/vgg16/block3_conv1/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOp7sequential_16/vgg16/block3_conv2/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOp6sequential_16/vgg16/block3_conv2/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOp7sequential_16/vgg16/block3_conv3/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOp6sequential_16/vgg16/block3_conv3/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOp7sequential_16/vgg16/block4_conv1/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOp6sequential_16/vgg16/block4_conv1/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOp7sequential_16/vgg16/block4_conv2/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOp6sequential_16/vgg16/block4_conv2/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOp7sequential_16/vgg16/block4_conv3/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOp6sequential_16/vgg16/block4_conv3/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOp7sequential_16/vgg16/block5_conv1/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOp6sequential_16/vgg16/block5_conv1/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOp7sequential_16/vgg16/block5_conv2/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOp6sequential_16/vgg16/block5_conv2/Conv2D/ReadVariableOp2r
7sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOp7sequential_16/vgg16/block5_conv3/BiasAdd/ReadVariableOp2p
6sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOp6sequential_16/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input


I__inference_block2_conv1_layer_call_and_return_conditional_losses_5147352

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿpp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@
 
_user_specified_nameinputs
©

ú
F__inference_dense_147_layer_call_and_return_conditional_losses_5148878

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
³
'__inference_vgg16_layer_call_fn_5151652

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147851x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
õ	
f
G__inference_dropout_97_layer_call_and_return_conditional_losses_5149361

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¢

÷
F__inference_dense_152_layer_call_and_return_conditional_losses_5152776

inputs0
matmul_readvariableop_resource:@	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
É

+__inference_dense_149_layer_call_fn_5152587

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 

%__inference_signature_wrapper_5151538
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: @

unknown_36:@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@

unknown_41:	@

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:


unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	@

unknown_54:@

unknown_55:@

unknown_56:@

unknown_57:@

unknown_58:@

unknown_59:@ 

unknown_60: 

unknown_61: 

unknown_62: 

unknown_63: 

unknown_64: 

unknown_65: @

unknown_66:@

unknown_67:@@

unknown_68:@

unknown_69:@	

unknown_70:	
identity¢StatefulPartitionedCall

StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_5147239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Â
_input_shapes°
­:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
%
_user_specified_namevgg16_input

µ
'__inference_vgg16_layer_call_fn_5147963
input_17!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_vgg16_layer_call_and_return_conditional_losses_5147851x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_17
²%
ñ
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5148441

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
f
H__inference_dropout_100_layer_call_and_return_conditional_losses_5148931

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


I__inference_block3_conv1_layer_call_and_return_conditional_losses_5152896

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88
 
_user_specified_nameinputs


I__inference_block2_conv1_layer_call_and_return_conditional_losses_5152846

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿpp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿpp@
 
_user_specified_nameinputs
ã
·
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152263

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_150_layer_call_and_return_conditional_losses_5148985

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
²%
ñ
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151943

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ù
F__inference_dense_146_layer_call_and_return_conditional_losses_5148845

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
·
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_5148972

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ñ
³
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5148312

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü
e
,__inference_dropout_99_layer_call_fn_5152434

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_99_layer_call_and_return_conditional_losses_5149295p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_149_layer_call_and_return_conditional_losses_5148944

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±
Ô
9__inference_batch_normalization_118_layer_call_fn_5152611

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5148640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


I__inference_block1_conv1_layer_call_and_return_conditional_losses_5152796

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
M
vgg16_input>
serving_default_vgg16_input:0ÿÿÿÿÿÿÿÿÿàà=
	dense_1520
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ	tensorflow/serving/predict:¦à
û
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
layer-21
layer_with_weights-14
layer-22
layer_with_weights-15
layer-23
layer_with_weights-16
layer-24
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"
signatures"
_tf_keras_sequential
ü
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer-10
.layer_with_weights-7
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer-14
2layer_with_weights-10
2layer-15
3layer_with_weights-11
3layer-16
4layer_with_weights-12
4layer-17
5layer-18
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_network
¥
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d_random_generator
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
»

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
½
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
	axis

gamma
	beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
	£axis

¤gamma
	¥beta
¦moving_mean
§moving_variance
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²_random_generator
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
µkernel
	¶bias
·	variables
¸trainable_variables
¹regularization_losses
º	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
	½axis

¾gamma
	¿beta
Àmoving_mean
Ámoving_variance
Â	variables
Ãtrainable_variables
Äregularization_losses
Å	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
È	variables
Étrainable_variables
Êregularization_losses
Ë	keras_api
Ì_random_generator
Í__call__
+Î&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
Ïkernel
	Ðbias
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
	×axis

Øgamma
	Ùbeta
Úmoving_mean
Ûmoving_variance
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ_random_generator
ç__call__
+è&call_and_return_all_conditional_losses"
_tf_keras_layer
«
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
ïkernel
	ðbias
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
÷kernel
	øbias
ù	variables
útrainable_variables
ûregularization_losses
ü	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
ÿkernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

	iter
beta_1
beta_2

decay
learning_rateCmúDmûMmüNmýVmþWmÿgmhmpmqm	m	m	m	m	m	m	¤m	¥m	µm	¶m	¾m	¿m	Ïm	Ðm	Øm	Ùm	ïm	ðm	÷m	øm	ÿm	mCvDvMvNvVvWvgv hv¡pv¢qv£	v¤	v¥	v¦	v§	v¨	v©	¤vª	¥v«	µv¬	¶v­	¾v®	¿v¯	Ïv°	Ðv±	Øv²	Ùv³	ïv´	ðvµ	÷v¶	øv·	ÿv¸	v¹"
	optimizer

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25
C26
D27
E28
F29
M30
N31
V32
W33
X34
Y35
g36
h37
p38
q39
r40
s41
42
43
44
45
46
47
48
49
¤50
¥51
¦52
§53
µ54
¶55
¾56
¿57
À58
Á59
Ï60
Ð61
Ø62
Ù63
Ú64
Û65
ï66
ð67
÷68
ø69
ÿ70
71"
trackable_list_wrapper
¬
C0
D1
M2
N3
V4
W5
g6
h7
p8
q9
10
11
12
13
14
15
¤16
¥17
µ18
¶19
¾20
¿21
Ï22
Ð23
Ø24
Ù25
ï26
ð27
÷28
ø29
ÿ30
31"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_16_layer_call_fn_5149173
/__inference_sequential_16_layer_call_fn_5150528
/__inference_sequential_16_layer_call_fn_5150677
/__inference_sequential_16_layer_call_fn_5150027À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150962
J__inference_sequential_16_layer_call_and_return_conditional_losses_5151387
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150200
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150373À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÑBÎ
"__inference__wrapped_model_5147239vgg16_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
«serving_default"
signature_map
"
_tf_keras_input_layer
Ã
kernel
	bias
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
²	variables
³trainable_variables
´regularization_losses
µ	keras_api
¶__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
«
¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
Ð	variables
Ñtrainable_variables
Òregularization_losses
Ó	keras_api
Ô__call__
+Õ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses"
_tf_keras_layer
«
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
î	variables
ïtrainable_variables
ðregularization_losses
ñ	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses"
_tf_keras_layer
«
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
 kernel
	¡bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
¢kernel
	£bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
¤kernel
	¥bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ê2ç
'__inference_vgg16_layer_call_fn_5147588
'__inference_vgg16_layer_call_fn_5151595
'__inference_vgg16_layer_call_fn_5151652
'__inference_vgg16_layer_call_fn_5147963À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
B__inference_vgg16_layer_call_and_return_conditional_losses_5151752
B__inference_vgg16_layer_call_and_return_conditional_losses_5151852
B__inference_vgg16_layer_call_and_return_conditional_losses_5148037
B__inference_vgg16_layer_call_and_return_conditional_losses_5148111À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ç2ä
=__inference_global_average_pooling2d_16_layer_call_fn_5151857¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2ÿ
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5151863¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
,:*2batch_normalization_112/gamma
+:)2batch_normalization_112/beta
4:2 (2#batch_normalization_112/moving_mean
8:6 (2'batch_normalization_112/moving_variance
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_112_layer_call_fn_5151876
9__inference_batch_normalization_112_layer_call_fn_5151889´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151909
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151943´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!	 2dense_144/kernel
: 2dense_144/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_144_layer_call_fn_5151952¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_144_layer_call_and_return_conditional_losses_5151963¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
+:) 2batch_normalization_113/gamma
*:( 2batch_normalization_113/beta
3:1  (2#batch_normalization_113/moving_mean
7:5  (2'batch_normalization_113/moving_variance
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_113_layer_call_fn_5151976
9__inference_batch_normalization_113_layer_call_fn_5151989´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152009
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152043´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
`	variables
atrainable_variables
bregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_96_layer_call_fn_5152048
,__inference_dropout_96_layer_call_fn_5152053´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152058
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152070´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
":  @2dense_145/kernel
:@2dense_145/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_145_layer_call_fn_5152079¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_145_layer_call_and_return_conditional_losses_5152090¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
+:)@2batch_normalization_114/gamma
*:(@2batch_normalization_114/beta
3:1@ (2#batch_normalization_114/moving_mean
7:5@ (2'batch_normalization_114/moving_variance
<
p0
q1
r2
s3"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_114_layer_call_fn_5152103
9__inference_batch_normalization_114_layer_call_fn_5152116´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152136
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152170´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
´
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
z	variables
{trainable_variables
|regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_97_layer_call_fn_5152175
,__inference_dropout_97_layer_call_fn_5152180´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152185
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152197´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!	@2dense_146/kernel
:2dense_146/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_146_layer_call_fn_5152206¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_146_layer_call_and_return_conditional_losses_5152217¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
,:*2batch_normalization_115/gamma
+:)2batch_normalization_115/beta
4:2 (2#batch_normalization_115/moving_mean
8:6 (2'batch_normalization_115/moving_variance
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_115_layer_call_fn_5152230
9__inference_batch_normalization_115_layer_call_fn_5152243´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152263
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152297´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_98_layer_call_fn_5152302
,__inference_dropout_98_layer_call_fn_5152307´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152312
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152324´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
$:"
2dense_147/kernel
:2dense_147/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_147_layer_call_fn_5152333¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_147_layer_call_and_return_conditional_losses_5152344¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
,:*2batch_normalization_116/gamma
+:)2batch_normalization_116/beta
4:2 (2#batch_normalization_116/moving_mean
8:6 (2'batch_normalization_116/moving_variance
@
¤0
¥1
¦2
§3"
trackable_list_wrapper
0
¤0
¥1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_116_layer_call_fn_5152357
9__inference_batch_normalization_116_layer_call_fn_5152370´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152390
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152424´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
®	variables
¯trainable_variables
°regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_99_layer_call_fn_5152429
,__inference_dropout_99_layer_call_fn_5152434´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152439
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152451´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!	@2dense_148/kernel
:@2dense_148/bias
0
µ0
¶1"
trackable_list_wrapper
0
µ0
¶1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
·	variables
¸trainable_variables
¹regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_148_layer_call_fn_5152460¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_148_layer_call_and_return_conditional_losses_5152471¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
+:)@2batch_normalization_117/gamma
*:(@2batch_normalization_117/beta
3:1@ (2#batch_normalization_117/moving_mean
7:5@ (2'batch_normalization_117/moving_variance
@
¾0
¿1
À2
Á3"
trackable_list_wrapper
0
¾0
¿1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
Â	variables
Ãtrainable_variables
Äregularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_117_layer_call_fn_5152484
9__inference_batch_normalization_117_layer_call_fn_5152497´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152517
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152551´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
È	variables
Étrainable_variables
Êregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
-__inference_dropout_100_layer_call_fn_5152556
-__inference_dropout_100_layer_call_fn_5152561´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152566
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152578´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": @ 2dense_149/kernel
: 2dense_149/bias
0
Ï0
Ð1"
trackable_list_wrapper
0
Ï0
Ð1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_149_layer_call_fn_5152587¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_149_layer_call_and_return_conditional_losses_5152598¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
+:) 2batch_normalization_118/gamma
*:( 2batch_normalization_118/beta
3:1  (2#batch_normalization_118/moving_mean
7:5  (2'batch_normalization_118/moving_variance
@
Ø0
Ù1
Ú2
Û3"
trackable_list_wrapper
0
Ø0
Ù1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
°2­
9__inference_batch_normalization_118_layer_call_fn_5152611
9__inference_batch_normalization_118_layer_call_fn_5152624´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152644
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152678´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
-__inference_dropout_101_layer_call_fn_5152683
-__inference_dropout_101_layer_call_fn_5152688´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152693
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152705´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_16_layer_call_fn_5152710¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_16_layer_call_and_return_conditional_losses_5152716¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
":  @2dense_150/kernel
:@2dense_150/bias
0
ï0
ð1"
trackable_list_wrapper
0
ï0
ð1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_150_layer_call_fn_5152725¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_150_layer_call_and_return_conditional_losses_5152736¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": @@2dense_151/kernel
:@2dense_151/bias
0
÷0
ø1"
trackable_list_wrapper
0
÷0
ø1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ù	variables
útrainable_variables
ûregularization_losses
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_151_layer_call_fn_5152745¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_151_layer_call_and_return_conditional_losses_5152756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": @	2dense_152/kernel
:	2dense_152/bias
0
ÿ0
1"
trackable_list_wrapper
0
ÿ0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_dense_152_layer_call_fn_5152765¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_152_layer_call_and_return_conditional_losses_5152776¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@2block2_conv1/kernel
 :2block2_conv1/bias
/:-2block2_conv2/kernel
 :2block2_conv2/bias
/:-2block3_conv1/kernel
 :2block3_conv1/bias
/:-2block3_conv2/kernel
 :2block3_conv2/bias
/:-2block3_conv3/kernel
 :2block3_conv3/bias
/:-2block4_conv1/kernel
 :2block4_conv1/bias
/:-2block4_conv2/kernel
 :2block4_conv2/bias
/:-2block4_conv3/kernel
 :2block4_conv3/bias
/:-2block5_conv1/kernel
 :2block5_conv1/bias
/:-2block5_conv2/kernel
 :2block5_conv2/bias
/:-2block5_conv3/kernel
 :2block5_conv3/bias
ø
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25
E26
F27
X28
Y29
r30
s31
32
33
¦34
§35
À36
Á37
Ú38
Û39"
trackable_list_wrapper
Þ
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
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÐBÍ
%__inference_signature_wrapper_5151538vgg16_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block1_conv1_layer_call_fn_5152785¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5152796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
²	variables
³trainable_variables
´regularization_losses
¶__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block1_conv2_layer_call_fn_5152805¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5152816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_block1_pool_layer_call_fn_5152821¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_block1_pool_layer_call_and_return_conditional_losses_5152826¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block2_conv1_layer_call_fn_5152835¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5152846¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block2_conv2_layer_call_fn_5152855¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5152866¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_block2_pool_layer_call_fn_5152871¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_block2_pool_layer_call_and_return_conditional_losses_5152876¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
Ð	variables
Ñtrainable_variables
Òregularization_losses
Ô__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block3_conv1_layer_call_fn_5152885¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5152896¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ö	variables
×trainable_variables
Øregularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block3_conv2_layer_call_fn_5152905¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5152916¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block3_conv3_layer_call_fn_5152925¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5152936¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_block3_pool_layer_call_fn_5152941¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_block3_pool_layer_call_and_return_conditional_losses_5152946¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block4_conv1_layer_call_fn_5152955¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5152966¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
î	variables
ïtrainable_variables
ðregularization_losses
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block4_conv2_layer_call_fn_5152975¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5152986¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block4_conv3_layer_call_fn_5152995¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5153006¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_block4_pool_layer_call_fn_5153011¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_block4_pool_layer_call_and_return_conditional_losses_5153016¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
 0
¡1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block5_conv1_layer_call_fn_5153025¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5153036¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
¢0
£1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block5_conv2_layer_call_fn_5153045¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5153056¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
¤0
¥1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_block5_conv3_layer_call_fn_5153065¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5153076¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_block5_pool_layer_call_fn_5153081¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_block5_pool_layer_call_and_return_conditional_losses_5153086¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
¡21
¢22
£23
¤24
¥25"
trackable_list_wrapper
®
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518"
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
.
E0
F1"
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
.
r0
s1"
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
0
0
1"
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
0
¦0
§1"
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
0
À0
Á1"
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
0
Ú0
Û1"
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
R

ñtotal

òcount
ó	variables
ô	keras_api"
_tf_keras_metric
c

õtotal

öcount
÷
_fn_kwargs
ø	variables
ù	keras_api"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
0
 0
¡1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
¢0
£1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
¤0
¥1"
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
:  (2total
:  (2count
0
ñ0
ò1"
trackable_list_wrapper
.
ó	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
õ0
ö1"
trackable_list_wrapper
.
ø	variables"
_generic_user_object
1:/2$Adam/batch_normalization_112/gamma/m
0:.2#Adam/batch_normalization_112/beta/m
(:&	 2Adam/dense_144/kernel/m
!: 2Adam/dense_144/bias/m
0:. 2$Adam/batch_normalization_113/gamma/m
/:- 2#Adam/batch_normalization_113/beta/m
':% @2Adam/dense_145/kernel/m
!:@2Adam/dense_145/bias/m
0:.@2$Adam/batch_normalization_114/gamma/m
/:-@2#Adam/batch_normalization_114/beta/m
(:&	@2Adam/dense_146/kernel/m
": 2Adam/dense_146/bias/m
1:/2$Adam/batch_normalization_115/gamma/m
0:.2#Adam/batch_normalization_115/beta/m
):'
2Adam/dense_147/kernel/m
": 2Adam/dense_147/bias/m
1:/2$Adam/batch_normalization_116/gamma/m
0:.2#Adam/batch_normalization_116/beta/m
(:&	@2Adam/dense_148/kernel/m
!:@2Adam/dense_148/bias/m
0:.@2$Adam/batch_normalization_117/gamma/m
/:-@2#Adam/batch_normalization_117/beta/m
':%@ 2Adam/dense_149/kernel/m
!: 2Adam/dense_149/bias/m
0:. 2$Adam/batch_normalization_118/gamma/m
/:- 2#Adam/batch_normalization_118/beta/m
':% @2Adam/dense_150/kernel/m
!:@2Adam/dense_150/bias/m
':%@@2Adam/dense_151/kernel/m
!:@2Adam/dense_151/bias/m
':%@	2Adam/dense_152/kernel/m
!:	2Adam/dense_152/bias/m
1:/2$Adam/batch_normalization_112/gamma/v
0:.2#Adam/batch_normalization_112/beta/v
(:&	 2Adam/dense_144/kernel/v
!: 2Adam/dense_144/bias/v
0:. 2$Adam/batch_normalization_113/gamma/v
/:- 2#Adam/batch_normalization_113/beta/v
':% @2Adam/dense_145/kernel/v
!:@2Adam/dense_145/bias/v
0:.@2$Adam/batch_normalization_114/gamma/v
/:-@2#Adam/batch_normalization_114/beta/v
(:&	@2Adam/dense_146/kernel/v
": 2Adam/dense_146/bias/v
1:/2$Adam/batch_normalization_115/gamma/v
0:.2#Adam/batch_normalization_115/beta/v
):'
2Adam/dense_147/kernel/v
": 2Adam/dense_147/bias/v
1:/2$Adam/batch_normalization_116/gamma/v
0:.2#Adam/batch_normalization_116/beta/v
(:&	@2Adam/dense_148/kernel/v
!:@2Adam/dense_148/bias/v
0:.@2$Adam/batch_normalization_117/gamma/v
/:-@2#Adam/batch_normalization_117/beta/v
':%@ 2Adam/dense_149/kernel/v
!: 2Adam/dense_149/bias/v
0:. 2$Adam/batch_normalization_118/gamma/v
/:- 2#Adam/batch_normalization_118/beta/v
':% @2Adam/dense_150/kernel/v
!:@2Adam/dense_150/bias/v
':%@@2Adam/dense_151/kernel/v
!:@2Adam/dense_151/bias/v
':%@	2Adam/dense_152/kernel/v
!:	2Adam/dense_152/bias/v¡
"__inference__wrapped_model_5147239ú ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿ>¢;
4¢1
/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà
ª "5ª2
0
	dense_152# 
	dense_152ÿÿÿÿÿÿÿÿÿ	¼
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151909dFCED4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¼
T__inference_batch_normalization_112_layer_call_and_return_conditional_losses_5151943dEFCD4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_batch_normalization_112_layer_call_fn_5151876WFCED4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_112_layer_call_fn_5151889WEFCD4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿº
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152009bYVXW3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 º
T__inference_batch_normalization_113_layer_call_and_return_conditional_losses_5152043bXYVW3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
9__inference_batch_normalization_113_layer_call_fn_5151976UYVXW3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_batch_normalization_113_layer_call_fn_5151989UXYVW3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ º
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152136bsprq3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 º
T__inference_batch_normalization_114_layer_call_and_return_conditional_losses_5152170brspq3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
9__inference_batch_normalization_114_layer_call_fn_5152103Usprq3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
9__inference_batch_normalization_114_layer_call_fn_5152116Urspq3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@À
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152263h4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 À
T__inference_batch_normalization_115_layer_call_and_return_conditional_losses_5152297h4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_batch_normalization_115_layer_call_fn_5152230[4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_115_layer_call_fn_5152243[4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÀ
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152390h§¤¦¥4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 À
T__inference_batch_normalization_116_layer_call_and_return_conditional_losses_5152424h¦§¤¥4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_batch_normalization_116_layer_call_fn_5152357[§¤¦¥4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
9__inference_batch_normalization_116_layer_call_fn_5152370[¦§¤¥4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152517fÁ¾À¿3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¾
T__inference_batch_normalization_117_layer_call_and_return_conditional_losses_5152551fÀÁ¾¿3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
9__inference_batch_normalization_117_layer_call_fn_5152484YÁ¾À¿3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
9__inference_batch_normalization_117_layer_call_fn_5152497YÀÁ¾¿3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¾
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152644fÛØÚÙ3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¾
T__inference_batch_normalization_118_layer_call_and_return_conditional_losses_5152678fÚÛØÙ3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
9__inference_batch_normalization_118_layer_call_fn_5152611YÛØÚÙ3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_batch_normalization_118_layer_call_fn_5152624YÚÛØÙ3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ ¿
I__inference_block1_conv1_layer_call_and_return_conditional_losses_5152796r9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà@
 
.__inference_block1_conv1_layer_call_fn_5152785e9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª ""ÿÿÿÿÿÿÿÿÿàà@¿
I__inference_block1_conv2_layer_call_and_return_conditional_losses_5152816r9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà@
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà@
 
.__inference_block1_conv2_layer_call_fn_5152805e9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà@
ª ""ÿÿÿÿÿÿÿÿÿàà@ë
H__inference_block1_pool_layer_call_and_return_conditional_losses_5152826R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_block1_pool_layer_call_fn_5152821R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
I__inference_block2_conv1_layer_call_and_return_conditional_losses_5152846o7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿpp@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿpp
 
.__inference_block2_conv1_layer_call_fn_5152835b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿpp@
ª "!ÿÿÿÿÿÿÿÿÿpp½
I__inference_block2_conv2_layer_call_and_return_conditional_losses_5152866p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿpp
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿpp
 
.__inference_block2_conv2_layer_call_fn_5152855c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿpp
ª "!ÿÿÿÿÿÿÿÿÿppë
H__inference_block2_pool_layer_call_and_return_conditional_losses_5152876R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_block2_pool_layer_call_fn_5152871R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
I__inference_block3_conv1_layer_call_and_return_conditional_losses_5152896p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ88
 
.__inference_block3_conv1_layer_call_fn_5152885c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª "!ÿÿÿÿÿÿÿÿÿ88½
I__inference_block3_conv2_layer_call_and_return_conditional_losses_5152916p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ88
 
.__inference_block3_conv2_layer_call_fn_5152905c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª "!ÿÿÿÿÿÿÿÿÿ88½
I__inference_block3_conv3_layer_call_and_return_conditional_losses_5152936p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ88
 
.__inference_block3_conv3_layer_call_fn_5152925c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ88
ª "!ÿÿÿÿÿÿÿÿÿ88ë
H__inference_block3_pool_layer_call_and_return_conditional_losses_5152946R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_block3_pool_layer_call_fn_5152941R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
I__inference_block4_conv1_layer_call_and_return_conditional_losses_5152966p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block4_conv1_layer_call_fn_5152955c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ½
I__inference_block4_conv2_layer_call_and_return_conditional_losses_5152986p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block4_conv2_layer_call_fn_5152975c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ½
I__inference_block4_conv3_layer_call_and_return_conditional_losses_5153006p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block4_conv3_layer_call_fn_5152995c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿë
H__inference_block4_pool_layer_call_and_return_conditional_losses_5153016R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_block4_pool_layer_call_fn_5153011R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
I__inference_block5_conv1_layer_call_and_return_conditional_losses_5153036p ¡8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block5_conv1_layer_call_fn_5153025c ¡8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ½
I__inference_block5_conv2_layer_call_and_return_conditional_losses_5153056p¢£8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block5_conv2_layer_call_fn_5153045c¢£8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ½
I__inference_block5_conv3_layer_call_and_return_conditional_losses_5153076p¤¥8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_block5_conv3_layer_call_fn_5153065c¤¥8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿë
H__inference_block5_pool_layer_call_and_return_conditional_losses_5153086R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_block5_pool_layer_call_fn_5153081R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ§
F__inference_dense_144_layer_call_and_return_conditional_losses_5151963]MN0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
+__inference_dense_144_layer_call_fn_5151952PMN0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¦
F__inference_dense_145_layer_call_and_return_conditional_losses_5152090\gh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
+__inference_dense_145_layer_call_fn_5152079Ogh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@©
F__inference_dense_146_layer_call_and_return_conditional_losses_5152217_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_146_layer_call_fn_5152206R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿª
F__inference_dense_147_layer_call_and_return_conditional_losses_5152344`0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_147_layer_call_fn_5152333S0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
F__inference_dense_148_layer_call_and_return_conditional_losses_5152471_µ¶0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_dense_148_layer_call_fn_5152460Rµ¶0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¨
F__inference_dense_149_layer_call_and_return_conditional_losses_5152598^ÏÐ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
+__inference_dense_149_layer_call_fn_5152587QÏÐ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¨
F__inference_dense_150_layer_call_and_return_conditional_losses_5152736^ïð/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_dense_150_layer_call_fn_5152725Qïð/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@¨
F__inference_dense_151_layer_call_and_return_conditional_losses_5152756^÷ø/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_dense_151_layer_call_fn_5152745Q÷ø/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¨
F__inference_dense_152_layer_call_and_return_conditional_losses_5152776^ÿ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 
+__inference_dense_152_layer_call_fn_5152765Qÿ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ	¨
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152566\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¨
H__inference_dropout_100_layer_call_and_return_conditional_losses_5152578\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_dropout_100_layer_call_fn_5152556O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_dropout_100_layer_call_fn_5152561O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¨
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152693\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¨
H__inference_dropout_101_layer_call_and_return_conditional_losses_5152705\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
-__inference_dropout_101_layer_call_fn_5152683O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_dropout_101_layer_call_fn_5152688O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152058\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 §
G__inference_dropout_96_layer_call_and_return_conditional_losses_5152070\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_dropout_96_layer_call_fn_5152048O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ 
,__inference_dropout_96_layer_call_fn_5152053O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152185\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 §
G__inference_dropout_97_layer_call_and_return_conditional_losses_5152197\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_dropout_97_layer_call_fn_5152175O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
,__inference_dropout_97_layer_call_fn_5152180O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@©
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152312^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ©
G__inference_dropout_98_layer_call_and_return_conditional_losses_5152324^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dropout_98_layer_call_fn_5152302Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_dropout_98_layer_call_fn_5152307Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ©
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152439^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ©
G__inference_dropout_99_layer_call_and_return_conditional_losses_5152451^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dropout_99_layer_call_fn_5152429Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_dropout_99_layer_call_fn_5152434Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ£
G__inference_flatten_16_layer_call_and_return_conditional_losses_5152716X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
,__inference_flatten_16_layer_call_fn_5152710K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ á
X__inference_global_average_pooling2d_16_layer_call_and_return_conditional_losses_5151863R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
=__inference_global_average_pooling2d_16_layer_call_fn_5151857wR¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150200ò ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿF¢C
<¢9
/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 Á
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150373ò ¡¢£¤¥EFCDMNXYVWghrspq¦§¤¥µ¶ÀÁ¾¿ÏÐÚÛØÙïð÷øÿF¢C
<¢9
/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 ¼
J__inference_sequential_16_layer_call_and_return_conditional_losses_5150962í ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 ¼
J__inference_sequential_16_layer_call_and_return_conditional_losses_5151387í ¡¢£¤¥EFCDMNXYVWghrspq¦§¤¥µ¶ÀÁ¾¿ÏÐÚÛØÙïð÷øÿA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 
/__inference_sequential_16_layer_call_fn_5149173å ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿF¢C
<¢9
/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	
/__inference_sequential_16_layer_call_fn_5150027å ¡¢£¤¥EFCDMNXYVWghrspq¦§¤¥µ¶ÀÁ¾¿ÏÐÚÛØÙïð÷øÿF¢C
<¢9
/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿ	
/__inference_sequential_16_layer_call_fn_5150528à ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	
/__inference_sequential_16_layer_call_fn_5150677à ¡¢£¤¥EFCDMNXYVWghrspq¦§¤¥µ¶ÀÁ¾¿ÏÐÚÛØÙïð÷øÿA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿ	³
%__inference_signature_wrapper_5151538 ¡¢£¤¥FCEDMNYVXWghsprq§¤¦¥µ¶Á¾À¿ÏÐÛØÚÙïð÷øÿM¢J
¢ 
Cª@
>
vgg16_input/,
vgg16_inputÿÿÿÿÿÿÿÿÿàà"5ª2
0
	dense_152# 
	dense_152ÿÿÿÿÿÿÿÿÿ	ò
B__inference_vgg16_layer_call_and_return_conditional_losses_5148037«4 ¡¢£¤¥C¢@
9¢6
,)
input_17ÿÿÿÿÿÿÿÿÿàà
p 

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ò
B__inference_vgg16_layer_call_and_return_conditional_losses_5148111«4 ¡¢£¤¥C¢@
9¢6
,)
input_17ÿÿÿÿÿÿÿÿÿàà
p

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ð
B__inference_vgg16_layer_call_and_return_conditional_losses_5151752©4 ¡¢£¤¥A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ð
B__inference_vgg16_layer_call_and_return_conditional_losses_5151852©4 ¡¢£¤¥A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Ê
'__inference_vgg16_layer_call_fn_51475884 ¡¢£¤¥C¢@
9¢6
,)
input_17ÿÿÿÿÿÿÿÿÿàà
p 

 
ª "!ÿÿÿÿÿÿÿÿÿÊ
'__inference_vgg16_layer_call_fn_51479634 ¡¢£¤¥C¢@
9¢6
,)
input_17ÿÿÿÿÿÿÿÿÿàà
p

 
ª "!ÿÿÿÿÿÿÿÿÿÈ
'__inference_vgg16_layer_call_fn_51515954 ¡¢£¤¥A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "!ÿÿÿÿÿÿÿÿÿÈ
'__inference_vgg16_layer_call_fn_51516524 ¡¢£¤¥A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "!ÿÿÿÿÿÿÿÿÿ