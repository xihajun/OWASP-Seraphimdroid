
C
inputPlaceholder*
dtype0* 
shape:���������
�
lstm_10/kernelConst*�
value�B�"��⸾e"?M_V>�	?6�>nyL�*w:>��~��
ǽ�-��V�����o��8s>��>��>������>0ӄ>PQ��e��oQ>'�>��>�8����Žп���>�:>��= ��> T�=v{�>��ƽa#W���w>�`�>l�����r>pH�=��o>#$=K�>�앾�� �/����m�F�����F����>;*>�Ƅ>�-���Ի�Y���g>4�Y=�&=�X�����L>S�s>���� ,����qsվ�>�K�����\���>��q�L>�Bu��w+=�ع�c)�v�e�� ���E�>��¾��d>��|=5i>!i=�A�:]>��<�vؾa�늫�)Ԭ<��g�����w����u�{ݥ=*
dtype0
[
lstm_10/kernel/readIdentitylstm_10/kernel*
T0*!
_class
loc:@lstm_10/kernel
�
lstm_10/recurrent_kernelConst*�
value�B�"��vf�������>�MR���:>K#�>N���R_T�f���������=㴐=*EW=1K�?ڤ:�T	7?K=vř�*�?S{Q<���>��;�� ?.�\>���>�����?6�D��~���1ξ:+(?ڹ���?�!�cr1���e>�1	? �X��޽tĐ�Z�g>����V����;BW?	����0�����p>�Ɠ>P4��'���n�?ս/=㕵<m�?2������*���-���QV?}>���;�#N��*
dtype0
y
lstm_10/recurrent_kernel/readIdentitylstm_10/recurrent_kernel*
T0*+
_class!
loc:@lstm_10/recurrent_kernel
y
lstm_10/biasConst*
dtype0*U
valueLBJ"@�ǅ>��?��>��}>�$�?���?қ�?o�?~�w>{�=�?�15���?_�?m�=4?m?
U
lstm_10/bias/readIdentitylstm_10/bias*
T0*
_class
loc:@lstm_10/bias
P
lstm_10/strided_slice/stackConst*
valueB"        *
dtype0
R
lstm_10/strided_slice/stack_1Const*
valueB"       *
dtype0
R
lstm_10/strided_slice/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_sliceStridedSlicelstm_10/kernel/readlstm_10/strided_slice/stacklstm_10/strided_slice/stack_1lstm_10/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
lstm_10/strided_slice_1/stackConst*
valueB"       *
dtype0
T
lstm_10/strided_slice_1/stack_1Const*
dtype0*
valueB"       
T
lstm_10/strided_slice_1/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_1StridedSlicelstm_10/kernel/readlstm_10/strided_slice_1/stacklstm_10/strided_slice_1/stack_1lstm_10/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
R
lstm_10/strided_slice_2/stackConst*
valueB"       *
dtype0
T
lstm_10/strided_slice_2/stack_1Const*
valueB"       *
dtype0
T
lstm_10/strided_slice_2/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_2StridedSlicelstm_10/kernel/readlstm_10/strided_slice_2/stacklstm_10/strided_slice_2/stack_1lstm_10/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
R
lstm_10/strided_slice_3/stackConst*
valueB"       *
dtype0
T
lstm_10/strided_slice_3/stack_1Const*
valueB"        *
dtype0
T
lstm_10/strided_slice_3/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_3StridedSlicelstm_10/kernel/readlstm_10/strided_slice_3/stacklstm_10/strided_slice_3/stack_1lstm_10/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
R
lstm_10/strided_slice_4/stackConst*
valueB"        *
dtype0
T
lstm_10/strided_slice_4/stack_1Const*
valueB"       *
dtype0
T
lstm_10/strided_slice_4/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_4StridedSlicelstm_10/recurrent_kernel/readlstm_10/strided_slice_4/stacklstm_10/strided_slice_4/stack_1lstm_10/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
lstm_10/strided_slice_5/stackConst*
dtype0*
valueB"       
T
lstm_10/strided_slice_5/stack_1Const*
valueB"       *
dtype0
T
lstm_10/strided_slice_5/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_5StridedSlicelstm_10/recurrent_kernel/readlstm_10/strided_slice_5/stacklstm_10/strided_slice_5/stack_1lstm_10/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
R
lstm_10/strided_slice_6/stackConst*
valueB"       *
dtype0
T
lstm_10/strided_slice_6/stack_1Const*
valueB"       *
dtype0
T
lstm_10/strided_slice_6/stack_2Const*
dtype0*
valueB"      
�
lstm_10/strided_slice_6StridedSlicelstm_10/recurrent_kernel/readlstm_10/strided_slice_6/stacklstm_10/strided_slice_6/stack_1lstm_10/strided_slice_6/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0
R
lstm_10/strided_slice_7/stackConst*
dtype0*
valueB"       
T
lstm_10/strided_slice_7/stack_1Const*
valueB"        *
dtype0
T
lstm_10/strided_slice_7/stack_2Const*
valueB"      *
dtype0
�
lstm_10/strided_slice_7StridedSlicelstm_10/recurrent_kernel/readlstm_10/strided_slice_7/stacklstm_10/strided_slice_7/stack_1lstm_10/strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0
K
lstm_10/strided_slice_8/stackConst*
dtype0*
valueB: 
M
lstm_10/strided_slice_8/stack_1Const*
valueB:*
dtype0
M
lstm_10/strided_slice_8/stack_2Const*
dtype0*
valueB:
�
lstm_10/strided_slice_8StridedSlicelstm_10/bias/readlstm_10/strided_slice_8/stacklstm_10/strided_slice_8/stack_1lstm_10/strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask 
K
lstm_10/strided_slice_9/stackConst*
valueB:*
dtype0
M
lstm_10/strided_slice_9/stack_1Const*
valueB:*
dtype0
M
lstm_10/strided_slice_9/stack_2Const*
valueB:*
dtype0
�
lstm_10/strided_slice_9StridedSlicelstm_10/bias/readlstm_10/strided_slice_9/stacklstm_10/strided_slice_9/stack_1lstm_10/strided_slice_9/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
L
lstm_10/strided_slice_10/stackConst*
valueB:*
dtype0
N
 lstm_10/strided_slice_10/stack_1Const*
dtype0*
valueB:
N
 lstm_10/strided_slice_10/stack_2Const*
valueB:*
dtype0
�
lstm_10/strided_slice_10StridedSlicelstm_10/bias/readlstm_10/strided_slice_10/stack lstm_10/strided_slice_10/stack_1 lstm_10/strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
L
lstm_10/strided_slice_11/stackConst*
valueB:*
dtype0
N
 lstm_10/strided_slice_11/stack_1Const*
valueB: *
dtype0
N
 lstm_10/strided_slice_11/stack_2Const*
valueB:*
dtype0
�
lstm_10/strided_slice_11StridedSlicelstm_10/bias/readlstm_10/strided_slice_11/stack lstm_10/strided_slice_11/stack_1 lstm_10/strided_slice_11/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
/
lstm_10/zeros_like	ZerosLikeinput*
T0
R
lstm_10/Sum/reduction_indicesConst*
valueB"      *
dtype0
k
lstm_10/SumSumlstm_10/zeros_likelstm_10/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0
I
lstm_10/ExpandDims/dimConst*
valueB :
���������*
dtype0
Z
lstm_10/ExpandDims
ExpandDimslstm_10/Sumlstm_10/ExpandDims/dim*

Tdim0*
T0
K
lstm_10/Tile/multiplesConst*
dtype0*
valueB"      
[
lstm_10/TileTilelstm_10/ExpandDimslstm_10/Tile/multiples*

Tmultiples0*
T0
M
lstm_10/Tile_1/multiplesConst*
dtype0*
valueB"      
_
lstm_10/Tile_1Tilelstm_10/ExpandDimslstm_10/Tile_1/multiples*

Tmultiples0*
T0
O
lstm_10/transpose/permConst*!
valueB"          *
dtype0
S
lstm_10/transpose	Transposeinputlstm_10/transpose/perm*
T0*
Tperm0
B
lstm_10/ShapeShapelstm_10/transpose*
T0*
out_type0
L
lstm_10/strided_slice_12/stackConst*
dtype0*
valueB: 
N
 lstm_10/strided_slice_12/stack_1Const*
valueB:*
dtype0
N
 lstm_10/strided_slice_12/stack_2Const*
valueB:*
dtype0
�
lstm_10/strided_slice_12StridedSlicelstm_10/Shapelstm_10/strided_slice_12/stack lstm_10/strided_slice_12/stack_1 lstm_10/strided_slice_12/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
�
lstm_10/TensorArrayTensorArrayV3lstm_10/strided_slice_12* 
tensor_array_name	output_ta*
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
�
lstm_10/TensorArray_1TensorArrayV3lstm_10/strided_slice_12*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name
input_ta*
dtype0
U
 lstm_10/TensorArrayUnstack/ShapeShapelstm_10/transpose*
T0*
out_type0
\
.lstm_10/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
^
0lstm_10/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
^
0lstm_10/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
valueB:
�
(lstm_10/TensorArrayUnstack/strided_sliceStridedSlice lstm_10/TensorArrayUnstack/Shape.lstm_10/TensorArrayUnstack/strided_slice/stack0lstm_10/TensorArrayUnstack/strided_slice/stack_10lstm_10/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
P
&lstm_10/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
P
&lstm_10/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
 lstm_10/TensorArrayUnstack/rangeRange&lstm_10/TensorArrayUnstack/range/start(lstm_10/TensorArrayUnstack/strided_slice&lstm_10/TensorArrayUnstack/range/delta*

Tidx0
�
Blstm_10/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_10/TensorArray_1 lstm_10/TensorArrayUnstack/rangelstm_10/transposelstm_10/TensorArray_1:1*
T0*$
_class
loc:@lstm_10/transpose
6
lstm_10/timeConst*
value	B : *
dtype0
J
 lstm_10/while/maximum_iterationsConst*
value	B :*
dtype0
I
lstm_10/while/iteration_counterConst*
value	B : *
dtype0
�
lstm_10/while/EnterEnterlstm_10/while/iteration_counter*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant( 
�
lstm_10/while/Enter_1Enterlstm_10/time*
T0*
is_constant( *
parallel_iterations *+

frame_namelstm_10/while/while_context
�
lstm_10/while/Enter_2Enterlstm_10/TensorArray:1*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant( 
�
lstm_10/while/Enter_3Enterlstm_10/Tile*
T0*
is_constant( *
parallel_iterations *+

frame_namelstm_10/while/while_context
�
lstm_10/while/Enter_4Enterlstm_10/Tile_1*
T0*
is_constant( *
parallel_iterations *+

frame_namelstm_10/while/while_context
`
lstm_10/while/MergeMergelstm_10/while/Enterlstm_10/while/NextIteration*
T0*
N
f
lstm_10/while/Merge_1Mergelstm_10/while/Enter_1lstm_10/while/NextIteration_1*
T0*
N
f
lstm_10/while/Merge_2Mergelstm_10/while/Enter_2lstm_10/while/NextIteration_2*
T0*
N
f
lstm_10/while/Merge_3Mergelstm_10/while/Enter_3lstm_10/while/NextIteration_3*
T0*
N
f
lstm_10/while/Merge_4Mergelstm_10/while/Enter_4lstm_10/while/NextIteration_4*
N*
T0
R
lstm_10/while/LessLesslstm_10/while/Mergelstm_10/while/Less/Enter*
T0
�
lstm_10/while/Less/EnterEnter lstm_10/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
X
lstm_10/while/Less_1Lesslstm_10/while/Merge_1lstm_10/while/Less_1/Enter*
T0
�
lstm_10/while/Less_1/EnterEnterlstm_10/strided_slice_12*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
P
lstm_10/while/LogicalAnd
LogicalAndlstm_10/while/Lesslstm_10/while/Less_1
<
lstm_10/while/LoopCondLoopCondlstm_10/while/LogicalAnd
|
lstm_10/while/SwitchSwitchlstm_10/while/Mergelstm_10/while/LoopCond*
T0*&
_class
loc:@lstm_10/while/Merge
�
lstm_10/while/Switch_1Switchlstm_10/while/Merge_1lstm_10/while/LoopCond*
T0*(
_class
loc:@lstm_10/while/Merge_1
�
lstm_10/while/Switch_2Switchlstm_10/while/Merge_2lstm_10/while/LoopCond*
T0*(
_class
loc:@lstm_10/while/Merge_2
�
lstm_10/while/Switch_3Switchlstm_10/while/Merge_3lstm_10/while/LoopCond*
T0*(
_class
loc:@lstm_10/while/Merge_3
�
lstm_10/while/Switch_4Switchlstm_10/while/Merge_4lstm_10/while/LoopCond*
T0*(
_class
loc:@lstm_10/while/Merge_4
C
lstm_10/while/IdentityIdentitylstm_10/while/Switch:1*
T0
G
lstm_10/while/Identity_1Identitylstm_10/while/Switch_1:1*
T0
G
lstm_10/while/Identity_2Identitylstm_10/while/Switch_2:1*
T0
G
lstm_10/while/Identity_3Identitylstm_10/while/Switch_3:1*
T0
G
lstm_10/while/Identity_4Identitylstm_10/while/Switch_4:1*
T0
V
lstm_10/while/add/yConst^lstm_10/while/Identity*
value	B :*
dtype0
N
lstm_10/while/addAddlstm_10/while/Identitylstm_10/while/add/y*
T0
�
lstm_10/while/TensorArrayReadV3TensorArrayReadV3%lstm_10/while/TensorArrayReadV3/Enterlstm_10/while/Identity_1'lstm_10/while/TensorArrayReadV3/Enter_1*
dtype0
�
%lstm_10/while/TensorArrayReadV3/EnterEnterlstm_10/TensorArray_1*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
�
'lstm_10/while/TensorArrayReadV3/Enter_1EnterBlstm_10/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
�
lstm_10/while/MatMulMatMullstm_10/while/TensorArrayReadV3lstm_10/while/MatMul/Enter*
T0*
transpose_a( *
transpose_b( 
�
lstm_10/while/MatMul/EnterEnterlstm_10/strided_slice*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
�
lstm_10/while/MatMul_1MatMullstm_10/while/TensorArrayReadV3lstm_10/while/MatMul_1/Enter*
T0*
transpose_a( *
transpose_b( 
�
lstm_10/while/MatMul_1/EnterEnterlstm_10/strided_slice_1*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
�
lstm_10/while/MatMul_2MatMullstm_10/while/TensorArrayReadV3lstm_10/while/MatMul_2/Enter*
transpose_a( *
transpose_b( *
T0
�
lstm_10/while/MatMul_2/EnterEnterlstm_10/strided_slice_2*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
�
lstm_10/while/MatMul_3MatMullstm_10/while/TensorArrayReadV3lstm_10/while/MatMul_3/Enter*
transpose_b( *
T0*
transpose_a( 
�
lstm_10/while/MatMul_3/EnterEnterlstm_10/strided_slice_3*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
s
lstm_10/while/BiasAddBiasAddlstm_10/while/MatMullstm_10/while/BiasAdd/Enter*
data_formatNHWC*
T0
�
lstm_10/while/BiasAdd/EnterEnterlstm_10/strided_slice_8*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
y
lstm_10/while/BiasAdd_1BiasAddlstm_10/while/MatMul_1lstm_10/while/BiasAdd_1/Enter*
T0*
data_formatNHWC
�
lstm_10/while/BiasAdd_1/EnterEnterlstm_10/strided_slice_9*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
y
lstm_10/while/BiasAdd_2BiasAddlstm_10/while/MatMul_2lstm_10/while/BiasAdd_2/Enter*
T0*
data_formatNHWC
�
lstm_10/while/BiasAdd_2/EnterEnterlstm_10/strided_slice_10*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
y
lstm_10/while/BiasAdd_3BiasAddlstm_10/while/MatMul_3lstm_10/while/BiasAdd_3/Enter*
T0*
data_formatNHWC
�
lstm_10/while/BiasAdd_3/EnterEnterlstm_10/strided_slice_11*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
�
lstm_10/while/MatMul_4MatMullstm_10/while/Identity_3lstm_10/while/MatMul_4/Enter*
T0*
transpose_a( *
transpose_b( 
�
lstm_10/while/MatMul_4/EnterEnterlstm_10/strided_slice_4*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
R
lstm_10/while/add_1Addlstm_10/while/BiasAddlstm_10/while/MatMul_4*
T0
Y
lstm_10/while/mul/xConst^lstm_10/while/Identity*
dtype0*
valueB
 *��L>
K
lstm_10/while/mulMullstm_10/while/mul/xlstm_10/while/add_1*
T0
[
lstm_10/while/add_2/yConst^lstm_10/while/Identity*
valueB
 *   ?*
dtype0
M
lstm_10/while/add_2Addlstm_10/while/mullstm_10/while/add_2/y*
T0
Y
lstm_10/while/ConstConst^lstm_10/while/Identity*
valueB
 *    *
dtype0
[
lstm_10/while/Const_1Const^lstm_10/while/Identity*
valueB
 *  �?*
dtype0
c
#lstm_10/while/clip_by_value/MinimumMinimumlstm_10/while/add_2lstm_10/while/Const_1*
T0
i
lstm_10/while/clip_by_valueMaximum#lstm_10/while/clip_by_value/Minimumlstm_10/while/Const*
T0
�
lstm_10/while/MatMul_5MatMullstm_10/while/Identity_3lstm_10/while/MatMul_5/Enter*
transpose_a( *
transpose_b( *
T0
�
lstm_10/while/MatMul_5/EnterEnterlstm_10/strided_slice_5*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
T
lstm_10/while/add_3Addlstm_10/while/BiasAdd_1lstm_10/while/MatMul_5*
T0
[
lstm_10/while/mul_1/xConst^lstm_10/while/Identity*
valueB
 *��L>*
dtype0
O
lstm_10/while/mul_1Mullstm_10/while/mul_1/xlstm_10/while/add_3*
T0
[
lstm_10/while/add_4/yConst^lstm_10/while/Identity*
valueB
 *   ?*
dtype0
O
lstm_10/while/add_4Addlstm_10/while/mul_1lstm_10/while/add_4/y*
T0
[
lstm_10/while/Const_2Const^lstm_10/while/Identity*
valueB
 *    *
dtype0
[
lstm_10/while/Const_3Const^lstm_10/while/Identity*
dtype0*
valueB
 *  �?
e
%lstm_10/while/clip_by_value_1/MinimumMinimumlstm_10/while/add_4lstm_10/while/Const_3*
T0
o
lstm_10/while/clip_by_value_1Maximum%lstm_10/while/clip_by_value_1/Minimumlstm_10/while/Const_2*
T0
\
lstm_10/while/mul_2Mullstm_10/while/clip_by_value_1lstm_10/while/Identity_4*
T0
�
lstm_10/while/MatMul_6MatMullstm_10/while/Identity_3lstm_10/while/MatMul_6/Enter*
T0*
transpose_a( *
transpose_b( 
�
lstm_10/while/MatMul_6/EnterEnterlstm_10/strided_slice_6*
T0*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
T
lstm_10/while/add_5Addlstm_10/while/BiasAdd_2lstm_10/while/MatMul_6*
T0
8
lstm_10/while/TanhTanhlstm_10/while/add_5*
T0
T
lstm_10/while/mul_3Mullstm_10/while/clip_by_valuelstm_10/while/Tanh*
T0
M
lstm_10/while/add_6Addlstm_10/while/mul_2lstm_10/while/mul_3*
T0
�
lstm_10/while/MatMul_7MatMullstm_10/while/Identity_3lstm_10/while/MatMul_7/Enter*
transpose_a( *
transpose_b( *
T0
�
lstm_10/while/MatMul_7/EnterEnterlstm_10/strided_slice_7*
parallel_iterations *+

frame_namelstm_10/while/while_context*
T0*
is_constant(
T
lstm_10/while/add_7Addlstm_10/while/BiasAdd_3lstm_10/while/MatMul_7*
T0
[
lstm_10/while/mul_4/xConst^lstm_10/while/Identity*
valueB
 *��L>*
dtype0
O
lstm_10/while/mul_4Mullstm_10/while/mul_4/xlstm_10/while/add_7*
T0
[
lstm_10/while/add_8/yConst^lstm_10/while/Identity*
valueB
 *   ?*
dtype0
O
lstm_10/while/add_8Addlstm_10/while/mul_4lstm_10/while/add_8/y*
T0
[
lstm_10/while/Const_4Const^lstm_10/while/Identity*
dtype0*
valueB
 *    
[
lstm_10/while/Const_5Const^lstm_10/while/Identity*
valueB
 *  �?*
dtype0
e
%lstm_10/while/clip_by_value_2/MinimumMinimumlstm_10/while/add_8lstm_10/while/Const_5*
T0
o
lstm_10/while/clip_by_value_2Maximum%lstm_10/while/clip_by_value_2/Minimumlstm_10/while/Const_4*
T0
:
lstm_10/while/Tanh_1Tanhlstm_10/while/add_6*
T0
X
lstm_10/while/mul_5Mullstm_10/while/clip_by_value_2lstm_10/while/Tanh_1*
T0
�
1lstm_10/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV37lstm_10/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_10/while/Identity_1lstm_10/while/mul_5lstm_10/while/Identity_2*
T0*&
_class
loc:@lstm_10/while/mul_5
�
7lstm_10/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_10/TensorArray*
T0*&
_class
loc:@lstm_10/while/mul_5*
is_constant(*
parallel_iterations *+

frame_namelstm_10/while/while_context
X
lstm_10/while/add_9/yConst^lstm_10/while/Identity*
value	B :*
dtype0
T
lstm_10/while/add_9Addlstm_10/while/Identity_1lstm_10/while/add_9/y*
T0
H
lstm_10/while/NextIterationNextIterationlstm_10/while/add*
T0
L
lstm_10/while/NextIteration_1NextIterationlstm_10/while/add_9*
T0
j
lstm_10/while/NextIteration_2NextIteration1lstm_10/while/TensorArrayWrite/TensorArrayWriteV3*
T0
L
lstm_10/while/NextIteration_3NextIterationlstm_10/while/mul_5*
T0
L
lstm_10/while/NextIteration_4NextIterationlstm_10/while/add_6*
T0
=
lstm_10/while/Exit_1Exitlstm_10/while/Switch_1*
T0
=
lstm_10/while/Exit_2Exitlstm_10/while/Switch_2*
T0
7
lstm_10/sub/yConst*
value	B :*
dtype0
@
lstm_10/subSublstm_10/while/Exit_1lstm_10/sub/y*
T0
s
lstm_10/TensorArrayReadV3TensorArrayReadV3lstm_10/TensorArraylstm_10/sublstm_10/while/Exit_2*
dtype0
�
output/kernelConst*y
valuepBn"`�d��P����?#�E?�#�?iA�%B�? b�?����=����>�p����d��`�?���>��r?� �?���>Q��?�>˿�����޿ð¿*
dtype0
X
output/kernel/readIdentityoutput/kernel*
T0* 
_class
loc:@output/kernel
P
output/biasConst*-
value$B""�Ks?z<L?�?I��9־��s�E�*
dtype0
R
output/bias/readIdentityoutput/bias*
T0*
_class
loc:@output/bias
u
output/MatMulMatMullstm_10/TensorArrayReadV3output/kernel/read*
transpose_a( *
transpose_b( *
T0
Z
output/BiasAddBiasAddoutput/MatMuloutput/bias/read*
data_formatNHWC*
T0 