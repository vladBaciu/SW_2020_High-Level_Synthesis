; ModuleID = '/home/student/workspace_HLS/template_matching/task/Task_1/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@imTemplateMatching_s = internal unnamed_addr constant [19 x i8] c"imTemplateMatching\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str930 = private unnamed_addr constant [4 x i8] c"L88\00", align 1
@p_str829 = private unnamed_addr constant [4 x i8] c"L77\00", align 1
@p_str728 = private unnamed_addr constant [4 x i8] c"L66\00", align 1
@p_str627 = private unnamed_addr constant [4 x i8] c"L55\00", align 1
@p_str526 = private unnamed_addr constant [4 x i8] c"L44\00", align 1
@p_str425 = private unnamed_addr constant [4 x i8] c"L33\00", align 1
@p_str324 = private unnamed_addr constant [4 x i8] c"L22\00", align 1
@p_str223 = private unnamed_addr constant [4 x i8] c"L11\00", align 1
@p_str21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1233 = private unnamed_addr constant [5 x i8] c"L111\00", align 1
@p_str122 = private unnamed_addr constant [4 x i8] c"L00\00", align 1
@p_str1132 = private unnamed_addr constant [5 x i8] c"L110\00", align 1
@p_str1031 = private unnamed_addr constant [4 x i8] c"L99\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare i112 @llvm.part.select.i112(i112, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @imTemplateMatching(i32* %imINPUT, [1440000 x i32]* %imOUTPUT, i32 %imHeight, i32 %imWidth, [1440000 x i32]* %tplINPUT, [1440000 x i32]* %tplOUTPUT, i32 %tplHeight, i32 %tplWidth) nounwind uwtable {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %imINPUT, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tplWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplWidth) nounwind
  %tplHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplHeight) nounwind
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth) nounwind
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight) nounwind
  %template_match_posit = alloca i96, align 8
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %imINPUT) nounwind, !map !398
  call void (...)* @_ssdm_op_SpecBitsMap([1440000 x i32]* %imOUTPUT) nounwind, !map !404
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %imHeight) nounwind, !map !408
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %imWidth) nounwind, !map !414
  call void (...)* @_ssdm_op_SpecBitsMap([1440000 x i32]* %tplINPUT) nounwind, !map !418
  call void (...)* @_ssdm_op_SpecBitsMap([1440000 x i32]* %tplOUTPUT) nounwind, !map !422
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %tplHeight) nounwind, !map !426
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %tplWidth) nounwind, !map !430
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @imTemplateMatching_s) nounwind
  call fastcc void @imGrayScale26(i32* %imINPUT, [1440000 x i32]* %imOUTPUT, i32 %imHeight_read, i32 %imWidth_read) nounwind
  call fastcc void @imGrayScale([1440000 x i32]* %tplINPUT, [1440000 x i32]* %tplOUTPUT, i32 %tplHeight_read, i32 %tplWidth_read) nounwind
  call fastcc void @imGreyNormalization([1440000 x i32]* %imOUTPUT, i32 %imHeight_read, i32 %imWidth_read) nounwind
  call fastcc void @imGreyNormalization([1440000 x i32]* %tplOUTPUT, i32 %tplWidth_read, i32 %imWidth_read) nounwind
  call fastcc void @imDiff([1440000 x i32]* %imOUTPUT, i32 %imHeight_read, i32 %imWidth_read, [1440000 x i32]* %tplOUTPUT, i32 %tplHeight_read, i32 %tplWidth_read, i96* %template_match_posit) nounwind
  %template_match_posit_1 = load i96* %template_match_posit, align 8
  %tmp = trunc i96 %template_match_posit_1 to i32
  %template_match_posit_3 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %template_match_posit_1, i32 32, i32 63)
  call fastcc void @imConstructOutputIma([1440000 x i32]* %imOUTPUT, [1440000 x i32]* %tplINPUT, i32 %tplHeight_read, i32 %tplWidth_read, i32 %tmp, i32 %template_match_posit_3) nounwind
  ret void
}

define internal fastcc void @imGreyNormalization([1440000 x i32]* nocapture %imINPUT, i32 %imHeight, i32 %imWidth) {
  %min1 = alloca i32
  %max = alloca i32
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth)
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight)
  %imINPUT_addr = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 0
  %imINPUT_load = load i32* %imINPUT_addr, align 4
  %max_3 = trunc i32 %imINPUT_load to i8
  %max_5_cast = zext i8 %max_3 to i32
  store i32 %max_5_cast, i32* %max
  store i32 %max_5_cast, i32* %min1
  br label %1

; <label>:1                                       ; preds = %4, %0
  %row = phi i31 [ 0, %0 ], [ %row_2, %4 ]
  %phi_mul = phi i42 [ 0, %0 ], [ %next_mul, %4 ]
  %tmp_6 = trunc i42 %phi_mul to i22
  %next_mul = add i42 1200, %phi_mul
  %row_cast = zext i31 %row to i32
  %tmp = icmp slt i32 %row_cast, %imHeight_read
  %row_2 = add i31 1, %row
  br i1 %tmp, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %min1_load = load i32* %min1
  %max_load = load i32* %max
  %tmp_2 = sub nsw i32 %max_load, %min1_load
  %tmp_3 = sitofp i32 %tmp_2 to double
  br label %.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str324) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str324)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %col = phi i31 [ 0, %2 ], [ %col_2, %._crit_edge ]
  %col_cast = zext i31 %col to i32
  %tmp_4 = icmp slt i32 %col_cast, %imWidth_read
  %col_2 = add i31 %col, 1
  br i1 %tmp_4, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %3
  %min1_load_1 = load i32* %min1
  %max_load_1 = load i32* %max
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str425) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str425)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  %tmp_11 = trunc i31 %col to i22
  %tmp_16 = add i22 %tmp_11, %tmp_6
  %tmp_21_cast = zext i22 %tmp_16 to i64
  %imOUTPUT_addr = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_21_cast
  %imOUTPUT_load = load i32* %imOUTPUT_addr, align 4
  %max_4 = trunc i32 %imOUTPUT_load to i8
  %max_6_cast = zext i8 %max_4 to i32
  %max_6_cast_cast = zext i8 %max_4 to i31
  %tmp_8 = icmp sgt i32 %max_6_cast, %max_load_1
  %tmp_21 = trunc i32 %max_load_1 to i31
  %max_6_cast_max_1 = select i1 %tmp_8, i31 %max_6_cast_cast, i31 %tmp_21
  %max_6_cast_max_1_cas = zext i31 %max_6_cast_max_1 to i32
  %tmp_7 = icmp slt i32 %max_6_cast, %min1_load_1
  %min_2 = select i1 %tmp_7, i32 %max_6_cast, i32 %min1_load_1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str425, i32 %tmp_1)
  store i32 %max_6_cast_max_1_cas, i32* %max
  store i32 %min_2, i32* %min1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str324, i32 %tmp_s)
  br label %1

.preheader:                                       ; preds = %8, %.preheader.preheader
  %row_1 = phi i31 [ %row_3, %8 ], [ 0, %.preheader.preheader ]
  %phi_mul2 = phi i42 [ %next_mul3, %8 ], [ 0, %.preheader.preheader ]
  %tmp_10 = trunc i42 %phi_mul2 to i22
  %next_mul3 = add i42 1200, %phi_mul2
  %row_1_cast = zext i31 %row_1 to i32
  %tmp_5 = icmp slt i32 %row_1_cast, %imHeight_read
  %row_3 = add i31 1, %row_1
  br i1 %tmp_5, label %5, label %9

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str526) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str526)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  br label %6

; <label>:6                                       ; preds = %7, %5
  %col_1 = phi i31 [ 0, %5 ], [ %col_3, %7 ]
  %col_1_cast = zext i31 %col_1 to i32
  %tmp_9 = icmp slt i32 %col_1_cast, %imWidth_read
  %col_3 = add i31 %col_1, 1
  br i1 %tmp_9, label %7, label %8

; <label>:7                                       ; preds = %6
  %min1_load_2 = load i32* %min1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str627) nounwind
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str627)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  %tmp_22 = trunc i31 %col_1 to i22
  %tmp_20 = add i22 %tmp_22, %tmp_10
  %tmp_23_cast = zext i22 %tmp_20 to i64
  %imOUTPUT_addr_1 = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_23_cast
  %imOUTPUT_load_1 = load i32* %imOUTPUT_addr_1, align 4
  %tmp_23 = trunc i32 %imOUTPUT_load_1 to i8
  %tmp_11_cast = zext i8 %tmp_23 to i32
  %tmp_12 = sub nsw i32 %tmp_11_cast, %min1_load_2
  %tmp_24 = shl i32 %tmp_12, 8
  %tmp_13 = sub i32 %tmp_24, %tmp_12
  %tmp_14 = sitofp i32 %tmp_13 to double
  %tmp_15 = fdiv double %tmp_14, %tmp_3
  %x_assign = fadd double %tmp_15, 0.000000e+00
  %p_Val2_1 = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_1 to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i = zext i53 %p_Result_1 to i136
  %tmp_i_i_i_cast = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_14 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_14 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_2_i_i_cast = sext i12 %sh_assign_1 to i32
  %tmp_61_i_i = zext i32 %sh_assign_2_i_i_cast to i136
  %tmp_61_i_i_cast = zext i32 %sh_assign_2_i_i_cast to i53
  %tmp_62_i_i = lshr i53 %p_Result_1, %tmp_61_i_i_cast
  %tmp_63_i_i = shl i136 %tmp_i_i, %tmp_61_i_i
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_62_i_i, i32 52)
  %tmp_25 = zext i1 %tmp_30 to i32
  %tmp_26 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_63_i_i, i32 52, i32 83)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_25, i32 %tmp_26
  %p_Val2_i_i = sub i32 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_i_i, i32 %p_Val2_4
  %tmp_17 = mul i32 16843009, %p_Val2_s
  store i32 %tmp_17, i32* %imOUTPUT_addr_1, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str627, i32 %tmp_19)
  br label %6

; <label>:8                                       ; preds = %6
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str526, i32 %tmp_18)
  br label %.preheader

; <label>:9                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @imGrayScale26(i32* nocapture %imINPUT, [1440000 x i32]* nocapture %imOUTPUT, i32 %imHeight, i32 %imWidth) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %imINPUT, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth)
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str21) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %row = phi i31 [ 0, %0 ], [ %row_4, %4 ]
  %phi_mul = phi i42 [ 0, %0 ], [ %next_mul, %4 ]
  %tmp_31 = trunc i42 %phi_mul to i22
  %next_mul = add i42 1200, %phi_mul
  %row_cast = zext i31 %row to i32
  %tmp = icmp slt i32 %row_cast, %imHeight_read
  %row_4 = add i31 1, %row
  br i1 %tmp, label %2, label %5

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str122) nounwind
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str122)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %col = phi i31 [ 0, %2 ], [ %col_4, %._crit_edge ]
  %col_cast = zext i31 %col to i32
  %tmp_18 = icmp slt i32 %col_cast, %imWidth_read
  %col_4 = add i31 %col, 1
  br i1 %tmp_18, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str223) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str223)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  %tmp_33 = trunc i31 %col to i22
  %tmp_s = add i22 %tmp_31, %tmp_33
  %tmp_32_cast = zext i22 %tmp_s to i64
  %imOUTPUT_addr = getelementptr [1440000 x i32]* %imOUTPUT, i64 0, i64 %tmp_32_cast
  %imINPUT_read = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %imINPUT)
  %tmp_34 = trunc i32 %imINPUT_read to i8
  %tmp_20_cast = zext i8 %tmp_34 to i32
  %tmp_21 = sitofp i32 %tmp_20_cast to double
  %tmp_22 = fmul double %tmp_21, 1.140000e-01
  %tmp_23_cast = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %imINPUT_read, i32 8, i32 15)
  %tmp_24_cast = zext i8 %tmp_23_cast to i32
  %tmp_24 = sitofp i32 %tmp_24_cast to double
  %tmp_25 = fmul double %tmp_24, 2.990000e-01
  %tmp_26 = fadd double %tmp_22, %tmp_25
  %tmp_28_cast = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %imINPUT_read, i32 16, i32 23)
  %tmp_29_cast = zext i8 %tmp_28_cast to i32
  %tmp_27 = sitofp i32 %tmp_29_cast to double
  %tmp_28 = fmul double %tmp_27, 5.870000e-01
  %x_assign = fadd double %tmp_26, %tmp_28
  %p_Val2_s = bitcast double %x_assign to i64
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_2 = trunc i64 %p_Val2_s to i52
  %p_Result_s = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_2) nounwind
  %tmp_i_i = zext i53 %p_Result_s to i112
  %tmp_i_i_i_cast = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_17 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_17 to i12
  %sh_assign_2 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_i_i_cast = sext i12 %sh_assign_2 to i32
  %tmp_55_i_i = zext i32 %sh_assign_1_i_i_cast to i112
  %tmp_55_i_i_cast = zext i32 %sh_assign_1_i_i_cast to i53
  %tmp_56_i_i = lshr i53 %p_Result_s, %tmp_55_i_i_cast
  %tmp_57_i_i = shl i112 %tmp_i_i, %tmp_55_i_i
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_56_i_i, i32 52)
  %tmp_30 = zext i1 %tmp_39 to i8
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i112.i32.i32(i112 %tmp_57_i_i, i32 52, i32 59)
  %result_V = select i1 %isNeg, i8 %tmp_30, i8 %tmp_32
  %tmp_29 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %result_V, i8 %result_V, i8 %result_V, i8 %result_V)
  store i32 %tmp_29, i32* %imOUTPUT_addr, align 4
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str223, i32 %tmp_23)
  br label %3

; <label>:4                                       ; preds = %3
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str122, i32 %tmp_20)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc void @imGrayScale([1440000 x i32]* nocapture %imINPUT, [1440000 x i32]* nocapture %imOUTPUT, i32 %imHeight, i32 %imWidth) {
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth)
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str21) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %row = phi i31 [ 0, %0 ], [ %row_4, %4 ]
  %phi_mul = phi i42 [ 0, %0 ], [ %next_mul, %4 ]
  %tmp_40 = trunc i42 %phi_mul to i22
  %next_mul = add i42 1200, %phi_mul
  %row_cast = zext i31 %row to i32
  %tmp = icmp slt i32 %row_cast, %imHeight_read
  %row_4 = add i31 1, %row
  br i1 %tmp, label %2, label %5

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str122) nounwind
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str122)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %col = phi i31 [ 0, %2 ], [ %col_4, %._crit_edge ]
  %col_cast = zext i31 %col to i32
  %tmp_18 = icmp slt i32 %col_cast, %imWidth_read
  %col_4 = add i31 %col, 1
  br i1 %tmp_18, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str223) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str223)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1200, i32 600, [1 x i8]* @p_str21) nounwind
  %tmp_43 = trunc i31 %col to i22
  %tmp_33 = add i22 %tmp_40, %tmp_43
  %tmp_39_cast = zext i22 %tmp_33 to i64
  %imINPUT_addr = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_39_cast
  %imOUTPUT_addr = getelementptr [1440000 x i32]* %imOUTPUT, i64 0, i64 %tmp_39_cast
  %imINPUT_load = load volatile i32* %imINPUT_addr, align 4
  %tmp_44 = trunc i32 %imINPUT_load to i8
  %tmp_20_cast = zext i8 %tmp_44 to i32
  %tmp_21 = sitofp i32 %tmp_20_cast to double
  %tmp_22 = fmul double %tmp_21, 1.140000e-01
  %tmp_23_cast = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %imINPUT_load, i32 8, i32 15)
  %tmp_24_cast = zext i8 %tmp_23_cast to i32
  %tmp_25 = sitofp i32 %tmp_24_cast to double
  %tmp_26 = fmul double %tmp_25, 2.990000e-01
  %tmp_27 = fadd double %tmp_22, %tmp_26
  %tmp_28_cast = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %imINPUT_load, i32 16, i32 23)
  %tmp_29_cast = zext i8 %tmp_28_cast to i32
  %tmp_30 = sitofp i32 %tmp_29_cast to double
  %tmp_31 = fmul double %tmp_30, 5.870000e-01
  %x_assign = fadd double %tmp_27, %tmp_31
  %p_Val2_s = bitcast double %x_assign to i64
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_s to i52
  %p_Result_s = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_3) nounwind
  %tmp_i_i = zext i53 %p_Result_s to i112
  %tmp_i_i_i_cast = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_20 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_20 to i12
  %sh_assign_3 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_i_i_cast = sext i12 %sh_assign_3 to i32
  %tmp_55_i_i = zext i32 %sh_assign_1_i_i_cast to i112
  %tmp_55_i_i_cast = zext i32 %sh_assign_1_i_i_cast to i53
  %tmp_56_i_i = lshr i53 %p_Result_s, %tmp_55_i_i_cast
  %tmp_57_i_i = shl i112 %tmp_i_i, %tmp_55_i_i
  %tmp_47 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_56_i_i, i32 52)
  %tmp_35 = zext i1 %tmp_47 to i8
  %tmp_36 = call i8 @_ssdm_op_PartSelect.i8.i112.i32.i32(i112 %tmp_57_i_i, i32 52, i32 59)
  %result_V = select i1 %isNeg, i8 %tmp_35, i8 %tmp_36
  %tmp_34 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %result_V, i8 %result_V, i8 %result_V, i8 %result_V)
  store i32 %tmp_34, i32* %imOUTPUT_addr, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str223, i32 %tmp_s)
  br label %3

; <label>:4                                       ; preds = %3
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str122, i32 %tmp_32)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc void @imDiff_Loop_L66_proc(i32 %imHeight, i32 %tplHeight, i32 %imWidth, i32 %tplWidth, [1440000 x i32]* nocapture %imINPUT, [1440000 x i32]* nocapture %tplINPUT, i96* nocapture %output_struct) {
newFuncRoot:
  %minSAD = alloca i32
  %tplWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplWidth)
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth)
  %tplHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplHeight)
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight)
  %tmp = sub nsw i32 %imHeight_read, %tplHeight_read
  %tmp_s = sub nsw i32 %imWidth_read, %tplWidth_read
  store i32 0, i32* %minSAD
  br label %0

.exitStub:                                        ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %row_img = phi i31 [ 0, %newFuncRoot ], [ %row_img_1, %1 ]
  %row_img_cast = zext i31 %row_img to i32
  %tmp_38 = icmp slt i32 %row_img_cast, %tmp
  %row_img_1 = add i31 %row_img, 1
  br i1 %tmp_38, label %3, label %.exitStub

; <label>:1                                       ; preds = %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str728, i32 %tmp_35)
  br label %0

; <label>:2                                       ; preds = %._crit_edge, %3
  %col_img = phi i31 [ 0, %3 ], [ %col_img_1, %._crit_edge ]
  %col_img_cast = zext i31 %col_img to i32
  %tmp_39 = icmp slt i32 %col_img_cast, %tmp_s
  %col_img_1 = add i31 %col_img, 1
  br i1 %tmp_39, label %6, label %1

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str728) nounwind
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str728)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1000, i32 500, [1 x i8]* @p_str21) nounwind
  br label %2

._crit_edge:                                      ; preds = %14, %4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str829, i32 %tmp_36)
  br label %2

; <label>:4                                       ; preds = %5
  %minSAD_load = load i32* %minSAD
  %tmp_42 = icmp sgt i32 %minSAD_load, %minSAD_1
  %tmp_43 = icmp eq i32 %minSAD_load, 0
  %or_cond = or i1 %tmp_42, %tmp_43
  br i1 %or_cond, label %14, label %._crit_edge

; <label>:5                                       ; preds = %7, %6
  %row_tpl = phi i31 [ 0, %6 ], [ %row_tpl_1, %7 ]
  %minSAD_1 = phi i32 [ 0, %6 ], [ %SAD_1_lcssa, %7 ]
  %phi_mul = phi i42 [ 0, %6 ], [ %next_mul, %7 ]
  %tmp_48 = trunc i42 %phi_mul to i22
  %next_mul = add i42 1200, %phi_mul
  %row_tpl_cast = zext i31 %row_tpl to i32
  %tmp_40 = icmp slt i32 %row_tpl_cast, %tplHeight_read
  %row_tpl_1 = add i31 1, %row_tpl
  br i1 %tmp_40, label %9, label %4

; <label>:6                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str829) nounwind
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str829)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1000, i32 500, [1 x i8]* @p_str21) nounwind
  br label %5

; <label>:7                                       ; preds = %8, %13, %12, %11
  %SAD_1_lcssa = phi i32 [ %SAD_1, %8 ], [ %SAD, %13 ], [ %SAD_s, %12 ], [ %SAD_2, %11 ]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str930, i32 %tmp_37)
  br label %5

; <label>:8                                       ; preds = %10, %9
  %col_tpl = phi i32 [ 0, %9 ], [ %col_tpl_1_3, %10 ]
  %SAD_1 = phi i32 [ %minSAD_1, %9 ], [ %SAD_3, %10 ]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 50, i64 25)
  %tmp_69 = icmp eq i32 %col_tpl, %tmp_66
  br i1 %tmp_69, label %7, label %13

; <label>:9                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str930) nounwind
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str930)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 200, i32 100, [1 x i8]* @p_str21) nounwind
  %tmp_49 = trunc i31 %row_tpl to i22
  %tmp_52 = trunc i31 %row_img to i22
  %tmp_61 = add i22 %tmp_52, %tmp_49
  %tmp_41 = mul i22 1200, %tmp_61
  %tmp_62 = add i32 3, %tplWidth_read
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_62, i32 31)
  %p_neg = sub i32 -3, %tplWidth_read
  %p_lshr = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %p_neg, i32 2, i32 31)
  %p_neg_t = sub i30 0, %p_lshr
  %tmp_64 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %tmp_62, i32 2, i32 31)
  %tmp_65 = select i1 %tmp_63, i30 %p_neg_t, i30 %tmp_64
  %tmp_66 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_65, i2 0)
  %tmp_67 = trunc i31 %col_img to i22
  %tmp_68 = trunc i31 %col_img to i22
  br label %8

; <label>:10                                      ; preds = %11
  %tmp_86 = trunc i31 %col_img to i22
  %tmp_87 = trunc i32 %col_tpl_1_2 to i22
  %tmp_88 = add i22 %tmp_87, %tmp_86
  %tmp_54 = add i22 %tmp_88, %tmp_41
  %tmp_59_cast = sext i22 %tmp_54 to i64
  %imINPUT_addr_3 = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_59_cast
  %imINPUT_load_3 = load i32* %imINPUT_addr_3, align 4
  %tmp_89 = trunc i32 %imINPUT_load_3 to i8
  %search_img_3_cast = zext i8 %tmp_89 to i9
  %tmp_90 = trunc i32 %col_tpl_1_2 to i22
  %tmp_55 = add i22 %tmp_90, %tmp_48
  %tmp_60_cast = zext i22 %tmp_55 to i64
  %tplINPUT_addr_3 = getelementptr [1440000 x i32]* %tplINPUT, i64 0, i64 %tmp_60_cast
  %tplINPUT_load_3 = load i32* %tplINPUT_addr_3, align 4
  %tmp_91 = trunc i32 %tplINPUT_load_3 to i8
  %template_img_3_cast = zext i8 %tmp_91 to i9
  %tmp_81_3 = sub i9 %search_img_3_cast, %template_img_3_cast
  %neg_3 = sub i9 0, %tmp_81_3
  %abscond_3 = icmp sgt i9 %tmp_81_3, 0
  %abs_3 = select i1 %abscond_3, i9 %tmp_81_3, i9 %neg_3
  %abs_3_cast = sext i9 %abs_3 to i32
  %SAD_3 = add nsw i32 %SAD_2, %abs_3_cast
  %col_tpl_1_3 = add nsw i32 4, %col_tpl
  br label %8

; <label>:11                                      ; preds = %12
  %tmp_81 = trunc i32 %col_tpl_1_1 to i22
  %tmp_82 = add i22 %tmp_81, %tmp_67
  %tmp_51 = add i22 %tmp_82, %tmp_41
  %tmp_57_cast = sext i22 %tmp_51 to i64
  %imINPUT_addr_2 = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_57_cast
  %imINPUT_load_2 = load i32* %imINPUT_addr_2, align 4
  %tmp_83 = trunc i32 %imINPUT_load_2 to i8
  %search_img_2_cast = zext i8 %tmp_83 to i9
  %tmp_84 = trunc i32 %col_tpl_1_1 to i22
  %tmp_53 = add i22 %tmp_84, %tmp_48
  %tmp_58_cast = zext i22 %tmp_53 to i64
  %tplINPUT_addr_2 = getelementptr [1440000 x i32]* %tplINPUT, i64 0, i64 %tmp_58_cast
  %tplINPUT_load_2 = load i32* %tplINPUT_addr_2, align 4
  %tmp_85 = trunc i32 %tplINPUT_load_2 to i8
  %template_img_2_cast = zext i8 %tmp_85 to i9
  %tmp_81_2 = sub i9 %search_img_2_cast, %template_img_2_cast
  %neg_2 = sub i9 0, %tmp_81_2
  %abscond_2 = icmp sgt i9 %tmp_81_2, 0
  %abs_2 = select i1 %abscond_2, i9 %tmp_81_2, i9 %neg_2
  %abs_2_cast = sext i9 %abs_2 to i32
  %SAD_2 = add nsw i32 %SAD_s, %abs_2_cast
  %col_tpl_1_2 = or i32 %col_tpl, 3
  %tmp_77_3 = icmp slt i32 %col_tpl_1_2, %tplWidth_read
  br i1 %tmp_77_3, label %10, label %7

; <label>:12                                      ; preds = %13
  %tmp_76 = trunc i32 %col_tpl_1_s to i22
  %tmp_77 = add i22 %tmp_76, %tmp_68
  %tmp_47 = add i22 %tmp_77, %tmp_41
  %tmp_55_cast = sext i22 %tmp_47 to i64
  %imINPUT_addr_1 = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_55_cast
  %imINPUT_load_1 = load i32* %imINPUT_addr_1, align 4
  %tmp_78 = trunc i32 %imINPUT_load_1 to i8
  %search_img_1_cast = zext i8 %tmp_78 to i9
  %tmp_79 = trunc i32 %col_tpl_1_s to i22
  %tmp_50 = add i22 %tmp_79, %tmp_48
  %tmp_56_cast = zext i22 %tmp_50 to i64
  %tplINPUT_addr_1 = getelementptr [1440000 x i32]* %tplINPUT, i64 0, i64 %tmp_56_cast
  %tplINPUT_load_1 = load i32* %tplINPUT_addr_1, align 4
  %tmp_80 = trunc i32 %tplINPUT_load_1 to i8
  %template_img_1_cast = zext i8 %tmp_80 to i9
  %tmp_81_1 = sub i9 %search_img_1_cast, %template_img_1_cast
  %neg_1 = sub i9 0, %tmp_81_1
  %abscond_1 = icmp sgt i9 %tmp_81_1, 0
  %abs_1 = select i1 %abscond_1, i9 %tmp_81_1, i9 %neg_1
  %abs_1_cast = sext i9 %abs_1 to i32
  %SAD_s = add nsw i32 %SAD, %abs_1_cast
  %col_tpl_1_1 = or i32 %col_tpl, 2
  %tmp_77_2 = icmp slt i32 %col_tpl_1_1, %tplWidth_read
  br i1 %tmp_77_2, label %11, label %7

; <label>:13                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1031) nounwind
  %tmp_70 = trunc i31 %col_img to i22
  %tmp_71 = trunc i32 %col_tpl to i22
  %tmp_72 = add i22 %tmp_71, %tmp_70
  %tmp_44 = add i22 %tmp_72, %tmp_41
  %tmp_53_cast = sext i22 %tmp_44 to i64
  %imINPUT_addr = getelementptr [1440000 x i32]* %imINPUT, i64 0, i64 %tmp_53_cast
  %imINPUT_load = load i32* %imINPUT_addr, align 4
  %tmp_73 = trunc i32 %imINPUT_load to i8
  %search_img_cast = zext i8 %tmp_73 to i9
  %tmp_74 = trunc i32 %col_tpl to i22
  %tmp_45 = add i22 %tmp_74, %tmp_48
  %tmp_54_cast = zext i22 %tmp_45 to i64
  %tplINPUT_addr = getelementptr [1440000 x i32]* %tplINPUT, i64 0, i64 %tmp_54_cast
  %tplINPUT_load = load i32* %tplINPUT_addr, align 4
  %tmp_75 = trunc i32 %tplINPUT_load to i8
  %template_img_cast = zext i8 %tmp_75 to i9
  %tmp_46 = sub i9 %search_img_cast, %template_img_cast
  %neg = sub i9 0, %tmp_46
  %abscond = icmp sgt i9 %tmp_46, 0
  %abs = select i1 %abscond, i9 %tmp_46, i9 %neg
  %abs_cast = sext i9 %abs to i32
  %SAD = add nsw i32 %SAD_1, %abs_cast
  %col_tpl_1_s = or i32 %col_tpl, 1
  %tmp_77_1 = icmp slt i32 %col_tpl_1_s, %tplWidth_read
  br i1 %tmp_77_1, label %12, label %7

; <label>:14                                      ; preds = %4
  %template_match_posit = call i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32 %minSAD_1, i32 %row_img_cast, i32 %col_img_cast)
  call void @_ssdm_op_Write.ap_auto.i96P(i96* %output_struct, i96 %template_match_posit)
  store i32 %minSAD_1, i32* %minSAD
  br label %._crit_edge
}

define internal fastcc void @imDiff([1440000 x i32]* nocapture %imINPUT, i32 %imHeight, i32 %imWidth, [1440000 x i32]* nocapture %tplINPUT, i32 %tplHeight, i32 %tplWidth, i96* nocapture %output_struct) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str21) nounwind
  %tplWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplWidth)
  %tplHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplHeight)
  %imWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imWidth)
  %imHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imHeight)
  call fastcc void @imDiff_Loop_L66_proc(i32 %imHeight_read, i32 %tplHeight_read, i32 %imWidth_read, i32 %tplWidth_read, [1440000 x i32]* %imINPUT, [1440000 x i32]* %tplINPUT, i96* %output_struct)
  ret void
}

define internal fastcc void @imConstructOutputIma([1440000 x i32]* nocapture %imOUTPUT, [1440000 x i32]* nocapture %tplINPUT, i32 %tplHeight, i32 %tplWidth, i32 %output_struct_x_read, i32 %output_struct_y_read) {
  %output_struct_y_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_struct_y_read)
  %output_struct_x_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %output_struct_x_read)
  %tplWidth_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplWidth)
  %tplHeight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %tplHeight)
  br label %1

; <label>:1                                       ; preds = %5, %0
  %row = phi i31 [ 0, %0 ], [ %row_5, %5 ]
  %phi_mul = phi i42 [ 0, %0 ], [ %next_mul, %5 ]
  %tmp_92 = trunc i42 %phi_mul to i22
  %next_mul = add i42 1200, %phi_mul
  %row_cast = zext i31 %row to i32
  %tmp = icmp slt i32 %row_cast, %tplHeight_read
  %row_5 = add i31 1, %row
  br i1 %tmp, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1132) nounwind
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str1132)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 200, i32 100, [1 x i8]* @p_str21) nounwind
  %tmp_93 = trunc i31 %row to i22
  %tmp_94 = trunc i32 %output_struct_y_read_1 to i22
  %tmp_95 = add i22 %tmp_94, %tmp_93
  %tmp_s = mul i22 1200, %tmp_95
  br label %3

; <label>:3                                       ; preds = %4, %2
  %col = phi i31 [ 0, %2 ], [ %col_5, %4 ]
  %col_cast = zext i31 %col to i32
  %tmp_51 = icmp slt i32 %col_cast, %tplWidth_read
  %col_5 = add i31 %col, 1
  br i1 %tmp_51, label %4, label %5

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1233) nounwind
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str1233)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 200, i32 100, [1 x i8]* @p_str21) nounwind
  %tmp_96 = trunc i31 %col to i22
  %tmp_56 = add i22 %tmp_92, %tmp_96
  %tmp_63_cast = zext i22 %tmp_56 to i64
  %tplINPUT_addr = getelementptr [1440000 x i32]* %tplINPUT, i64 0, i64 %tmp_63_cast
  %tplINPUT_load = load volatile i32* %tplINPUT_addr, align 4
  %tmp_97 = trunc i31 %col to i22
  %tmp_98 = trunc i32 %output_struct_x_read_1 to i22
  %tmp_99 = add i22 %tmp_98, %tmp_97
  %tmp_57 = add i22 %tmp_s, %tmp_99
  %tmp_64_cast = sext i22 %tmp_57 to i64
  %imOUTPUT_addr = getelementptr [1440000 x i32]* %imOUTPUT, i64 0, i64 %tmp_64_cast
  store i32 %tplINPUT_load, i32* %imOUTPUT_addr, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str1233, i32 %tmp_39)
  br label %3

; <label>:5                                       ; preds = %3
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str1132, i32 %tmp_38)
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i96P(i96*, i96) {
entry:
  store i96 %1, i96* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i8
  ret i8 %empty_25
}

define weak i8 @_ssdm_op_PartSelect.i8.i112.i32.i32(i112, i32, i32) nounwind readnone {
entry:
  %empty = call i112 @llvm.part.select.i112(i112 %0, i32 %1, i32 %2)
  %empty_26 = trunc i112 %empty to i8
  ret i8 %empty_26
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_27 = trunc i96 %empty to i32
  ret i32 %empty_27
}

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_28 = trunc i136 %empty to i32
  ret i32 %empty_28
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_29 = trunc i32 %empty to i30
  ret i30 %empty_29
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i42.i32.i32(i42, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i31.i32.i32(i31, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_30 = trunc i64 %empty to i11
  ret i11 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_31 = shl i64 1, %empty
  %empty_32 = and i64 %0, %empty_31
  %empty_33 = icmp ne i64 %empty_32, 0
  ret i1 %empty_33
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_34 = shl i53 1, %empty
  %empty_35 = and i53 %0, %empty_34
  %empty_36 = icmp ne i53 %empty_35, 0
  ret i1 %empty_36
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_37 = and i32 %0, %empty
  %empty_38 = icmp ne i32 %empty_37, 0
  ret i1 %empty_38
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_39 = shl i12 1, %empty
  %empty_40 = and i12 %0, %empty_39
  %empty_41 = icmp ne i12 %empty_40, 0
  ret i1 %empty_41
}

define weak i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_42 = zext i32 %2 to i64
  %empty_43 = shl i64 %empty, 32
  %empty_44 = or i64 %empty_43, %empty_42
  %empty_45 = zext i32 %0 to i96
  %empty_46 = zext i64 %empty_44 to i96
  %empty_47 = shl i96 %empty_45, 64
  %empty_48 = or i96 %empty_47, %empty_46
  ret i96 %empty_48
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_49 = zext i52 %1 to i53
  %empty_50 = shl i53 %empty, 52
  %empty_51 = or i53 %empty_50, %empty_49
  ret i53 %empty_51
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_52 = zext i8 %3 to i16
  %empty_53 = shl i16 %empty, 8
  %empty_54 = or i16 %empty_53, %empty_52
  %empty_55 = zext i8 %1 to i24
  %empty_56 = zext i16 %empty_54 to i24
  %empty_57 = shl i24 %empty_55, 16
  %empty_58 = or i24 %empty_57, %empty_56
  %empty_59 = zext i8 %0 to i32
  %empty_60 = zext i24 %empty_58 to i32
  %empty_61 = shl i32 %empty_59, 24
  %empty_62 = or i32 %empty_61, %empty_60
  ret i32 %empty_62
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone {
entry:
  %empty = zext i30 %0 to i32
  %empty_63 = zext i2 %1 to i32
  %empty_64 = shl i32 %empty, 2
  %empty_65 = or i32 %empty_64, %empty_63
  ret i32 %empty_65
}

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

declare i32 @_autotb_FifoRead_i32(i32*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !7, !10, !16, !19, !25, !31, !34, !40, !44, !50, !54, !60, !62, !68, !68, !68, !68, !72, !72, !72, !72, !68, !68, !68, !68, !72, !72, !72, !72, !74, !25, !25, !25, !78, !81, !81, !25, !25, !25, !25, !84, !84, !25, !86, !90, !90, !25, !92, !95, !95, !25, !97, !97, !99, !97, !97, !99, !101, !81, !81, !107, !25, !25, !25, !110, !81, !81, !25, !25, !25, !112, !81, !81, !114, !25, !25, !25, !116, !116, !118, !118, !120, !25, !25, !25, !122, !122, !122, !25, !124, !126, !129, !129, !133, !133, !136, !136, !140, !142, !142, !25, !25, !25, !25, !144, !146, !146, !25, !25, !133, !147, !147, !149, !149, !151, !153, !153, !154, !156, !156, !154, !158, !158, !160, !162, !162, !25, !25, !163, !165, !165, !133, !133, !166, !166, !160, !163, !165, !165, !25, !133, !168, !168, !170, !171, !171, !173, !25, !124, !170, !175, !175, !177, !177, !25, !25, !25, !25, !25, !25, !25, !25, !179, !25, !25, !25, !78, !81, !81, !25, !25, !84, !84, !25, !181, !92, !183, !183, !25, !185, !185, !187, !185, !185, !187, !101, !189, !25, !25, !25, !191, !81, !81, !120, !25, !25, !25, !193, !193, !193, !156, !156, !154, !195, !25, !25, !25, !78, !81, !81, !25, !25, !84, !84, !25, !197, !92, !199, !199, !25, !201, !201, !203, !201, !201, !203, !101, !205, !25, !25, !25, !207, !81, !81, !120, !25, !25, !25, !209, !209, !209, !156, !156, !154, !211, !25, !25, !25, !78, !81, !81, !25, !25, !84, !84, !25, !213, !92, !215, !215, !25, !217, !217, !219, !217, !217, !219, !101, !221, !25, !25, !25, !223, !81, !81, !120, !25, !25, !25, !225, !225, !225, !156, !156, !154, !227, !25, !229, !229, !231, !229, !229, !231, !233, !25, !25, !25, !235, !81, !81, !25, !237, !239, !241, !241, !120, !25, !25, !25, !243, !243, !243, !25, !124, !126, !245, !245, !133, !133, !247, !247, !249, !251, !251, !25, !25, !25, !25, !252, !254, !254, !25, !25, !133, !255, !255, !149, !149, !151, !153, !153, !257, !259, !259, !257, !261, !261, !262, !264, !264, !25, !25, !265, !267, !267, !133, !133, !268, !268, !262, !265, !267, !267, !133, !270, !270, !170, !272, !272, !274, !25, !276, !276, !25, !25, !25, !25, !277, !279, !279, !281, !279, !279, !281, !283, !25, !25, !25, !285, !81, !81, !120, !25, !25, !25, !287, !287, !287, !259, !259, !257, !289, !291, !291, !293, !291, !291, !293, !295, !25, !25, !25, !297, !81, !81, !120, !25, !25, !25, !299, !299, !299, !259, !259, !257, !301, !303, !303, !305, !303, !303, !305, !307, !25, !25, !25, !309, !81, !81, !120, !25, !25, !25, !311, !311, !311, !259, !259, !257, !313, !25, !25, !25, !78, !25, !315, !315, !317, !317, !317, !319, !321, !321, !315, !25, !124, !170, !323, !323, !84, !84, !25, !325, !25, !25, !25, !78, !81, !81, !25, !25, !327, !327, !25, !329, !329, !329, !331, !333, !333, !327, !25, !124, !170, !335, !335, !84, !84, !25, !337, !25, !25, !25, !78, !81, !81, !25, !25, !339, !339, !25, !341, !341, !341, !343, !345, !345, !339, !25, !124, !170, !347, !347, !84, !84, !25, !349, !351, !353, !355, !355, !356, !25, !358, !25, !25, !25, !360, !360, !362, !362, !364, !25, !25, !25, !366, !25, !25, !25, !25, !368, !25, !355, !355, !356, !368, !25, !355, !355, !356, !368, !25, !370, !370, !370, !25, !370, !370, !370, !25, !370, !370, !370, !25, !370, !370, !370, !370, !370, !370, !370, !370, !370, !25, !370, !370, !370, !25, !370, !370, !370, !25, !370, !370, !370, !25, !373, !25, !25, !25, !78, !81, !81, !25, !25, !375, !375, !25, !377, !377, !377, !379, !381, !381, !375, !25, !124, !170, !383, !383, !84, !84, !25, !385, !370, !370, !370, !25, !370, !370, !370, !370, !370, !370, !387, !387, !387, !25, !370, !370, !370, !25, !370, !370, !370, !25, !370, !370, !370, !25, !387, !387, !387, !25, !387, !387, !387}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!391}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"FILE*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"bmp_file"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"FILE*", metadata !"BMPHeader*"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"bmp_file", metadata !"file_header"}
!16 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"FILE*", metadata !"BMPImageHeader*"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"bmp_file", metadata !"image_header"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"FILE*", metadata !"uchar*", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"bmp_file", metadata !"data", metadata !"size"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space"}
!27 = metadata !{metadata !"kernel_arg_access_qual"}
!28 = metadata !{metadata !"kernel_arg_type"}
!29 = metadata !{metadata !"kernel_arg_type_qual"}
!30 = metadata !{metadata !"kernel_arg_name"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"BMPImage*"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"bitmap"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"int*", metadata !"int*", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"file", metadata !"rows", metadata !"cols", metadata !"R", metadata !"G", metadata !"B"}
!40 = metadata !{null, metadata !41, metadata !36, metadata !42, metadata !38, metadata !43, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 1, i32 1}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"int", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"file", metadata !"row", metadata !"col", metadata !"R", metadata !"G", metadata !"B"}
!44 = metadata !{null, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !6}
!45 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!46 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"int [1200]*", metadata !"int [1200]*", metadata !"int", metadata !"int", metadata !"int"}
!48 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"imINPUT", metadata !"imOUTPUT", metadata !"imHeight", metadata !"imWidth", metadata !"imVersion"}
!50 = metadata !{null, metadata !51, metadata !36, metadata !52, metadata !38, metadata !53, metadata !6}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"int [1200]*", metadata !"int [1200]*", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"imINPUT", metadata !"imOUTPUT", metadata !"imHeight", metadata !"imWidth", metadata !"newMax", metadata !"newMin"}
!54 = metadata !{null, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !6}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int [1200]*", metadata !"int", metadata !"int", metadata !"int [1200]*", metadata !"int", metadata !"int", metadata !"t_SAD*"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"imINPUT", metadata !"imHeight", metadata !"imWidth", metadata !"tplINPUT", metadata !"tplHeight", metadata !"tplWidth", metadata !"output_struct"}
!60 = metadata !{null, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !6}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"imOUTPUT", metadata !"imHeight", metadata !"imWidth", metadata !"tplINPUT", metadata !"tplHeight", metadata !"tplWidth", metadata !"output_struct"}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"int [1200]*", metadata !"int [1200]*", metadata !"int", metadata !"int", metadata !"int [1200]*", metadata !"int [1200]*", metadata !"int", metadata !"int"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"imINPUT", metadata !"imOUTPUT", metadata !"imHeight", metadata !"imWidth", metadata !"tplINPUT", metadata !"tplOUTPUT", metadata !"tplHeight", metadata !"tplWidth"}
!68 = metadata !{null, metadata !69, metadata !2, metadata !70, metadata !4, metadata !71, metadata !6}
!69 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!72 = metadata !{null, metadata !69, metadata !2, metadata !73, metadata !4, metadata !71, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!74 = metadata !{null, metadata !75, metadata !21, metadata !76, metadata !23, metadata !77, metadata !6}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!78 = metadata !{null, metadata !69, metadata !2, metadata !79, metadata !4, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!81 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !83, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!84 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !85, metadata !6}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!86 = metadata !{null, metadata !87, metadata !12, metadata !88, metadata !14, metadata !89, metadata !6}
!87 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!90 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !91, metadata !6}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!92 = metadata !{null, metadata !69, metadata !2, metadata !93, metadata !4, metadata !94, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!95 = metadata !{null, metadata !69, metadata !2, metadata !96, metadata !4, metadata !83, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!97 = metadata !{null, metadata !69, metadata !2, metadata !98, metadata !4, metadata !83, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!99 = metadata !{null, metadata !69, metadata !2, metadata !100, metadata !4, metadata !83, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!101 = metadata !{null, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !6}
!102 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!103 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!105 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!107 = metadata !{null, metadata !87, metadata !12, metadata !108, metadata !14, metadata !109, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!110 = metadata !{null, metadata !69, metadata !2, metadata !111, metadata !4, metadata !94, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!112 = metadata !{null, metadata !87, metadata !12, metadata !113, metadata !14, metadata !89, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!114 = metadata !{null, metadata !87, metadata !12, metadata !115, metadata !14, metadata !109, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!116 = metadata !{null, metadata !69, metadata !2, metadata !117, metadata !4, metadata !83, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!118 = metadata !{null, metadata !69, metadata !2, metadata !119, metadata !4, metadata !83, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!120 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !121, metadata !6}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!122 = metadata !{null, metadata !69, metadata !2, metadata !123, metadata !4, metadata !83, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!124 = metadata !{null, metadata !69, metadata !2, metadata !125, metadata !4, metadata !85, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!126 = metadata !{null, metadata !69, metadata !2, metadata !127, metadata !4, metadata !128, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!129 = metadata !{null, metadata !130, metadata !12, metadata !131, metadata !14, metadata !132, metadata !6}
!130 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!132 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!133 = metadata !{null, metadata !87, metadata !12, metadata !134, metadata !14, metadata !135, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!136 = metadata !{null, metadata !137, metadata !21, metadata !138, metadata !23, metadata !139, metadata !6}
!137 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!140 = metadata !{null, metadata !69, metadata !2, metadata !141, metadata !4, metadata !85, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!142 = metadata !{null, metadata !69, metadata !2, metadata !141, metadata !4, metadata !143, metadata !6}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!144 = metadata !{null, metadata !69, metadata !2, metadata !145, metadata !4, metadata !85, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!146 = metadata !{null, metadata !69, metadata !2, metadata !145, metadata !4, metadata !83, metadata !6}
!147 = metadata !{null, metadata !137, metadata !21, metadata !148, metadata !23, metadata !139, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!149 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !150, metadata !6}
!150 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!151 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !152, metadata !6}
!152 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!153 = metadata !{null, metadata !69, metadata !2, metadata !93, metadata !4, metadata !83, metadata !6}
!154 = metadata !{null, metadata !69, metadata !2, metadata !155, metadata !4, metadata !83, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!156 = metadata !{null, metadata !69, metadata !2, metadata !157, metadata !4, metadata !83, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!158 = metadata !{null, metadata !69, metadata !2, metadata !73, metadata !4, metadata !159, metadata !6}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!160 = metadata !{null, metadata !69, metadata !2, metadata !161, metadata !4, metadata !85, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!162 = metadata !{null, metadata !69, metadata !2, metadata !161, metadata !4, metadata !143, metadata !6}
!163 = metadata !{null, metadata !69, metadata !2, metadata !164, metadata !4, metadata !85, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!165 = metadata !{null, metadata !69, metadata !2, metadata !164, metadata !4, metadata !83, metadata !6}
!166 = metadata !{null, metadata !137, metadata !21, metadata !167, metadata !23, metadata !139, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!168 = metadata !{null, metadata !137, metadata !21, metadata !169, metadata !23, metadata !139, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!170 = metadata !{null, metadata !69, metadata !2, metadata !82, metadata !4, metadata !128, metadata !6}
!171 = metadata !{null, metadata !130, metadata !12, metadata !172, metadata !14, metadata !132, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!173 = metadata !{null, metadata !69, metadata !2, metadata !174, metadata !4, metadata !85, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!175 = metadata !{null, metadata !130, metadata !12, metadata !176, metadata !14, metadata !132, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!177 = metadata !{null, metadata !69, metadata !2, metadata !178, metadata !4, metadata !85, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!179 = metadata !{null, metadata !75, metadata !21, metadata !180, metadata !23, metadata !77, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!181 = metadata !{null, metadata !87, metadata !12, metadata !182, metadata !14, metadata !89, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!183 = metadata !{null, metadata !69, metadata !2, metadata !184, metadata !4, metadata !83, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!185 = metadata !{null, metadata !69, metadata !2, metadata !186, metadata !4, metadata !83, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!187 = metadata !{null, metadata !69, metadata !2, metadata !188, metadata !4, metadata !83, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!189 = metadata !{null, metadata !87, metadata !12, metadata !190, metadata !14, metadata !109, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!191 = metadata !{null, metadata !69, metadata !2, metadata !192, metadata !4, metadata !94, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!193 = metadata !{null, metadata !69, metadata !2, metadata !194, metadata !4, metadata !83, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!195 = metadata !{null, metadata !75, metadata !21, metadata !196, metadata !23, metadata !77, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!197 = metadata !{null, metadata !87, metadata !12, metadata !198, metadata !14, metadata !89, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!199 = metadata !{null, metadata !69, metadata !2, metadata !200, metadata !4, metadata !83, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!201 = metadata !{null, metadata !69, metadata !2, metadata !202, metadata !4, metadata !83, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!203 = metadata !{null, metadata !69, metadata !2, metadata !204, metadata !4, metadata !83, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!205 = metadata !{null, metadata !87, metadata !12, metadata !206, metadata !14, metadata !109, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!207 = metadata !{null, metadata !69, metadata !2, metadata !208, metadata !4, metadata !94, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!209 = metadata !{null, metadata !69, metadata !2, metadata !210, metadata !4, metadata !83, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!211 = metadata !{null, metadata !75, metadata !21, metadata !212, metadata !23, metadata !77, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!213 = metadata !{null, metadata !87, metadata !12, metadata !214, metadata !14, metadata !89, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!215 = metadata !{null, metadata !69, metadata !2, metadata !216, metadata !4, metadata !83, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!217 = metadata !{null, metadata !69, metadata !2, metadata !218, metadata !4, metadata !83, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!219 = metadata !{null, metadata !69, metadata !2, metadata !220, metadata !4, metadata !83, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!221 = metadata !{null, metadata !87, metadata !12, metadata !222, metadata !14, metadata !109, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!223 = metadata !{null, metadata !69, metadata !2, metadata !224, metadata !4, metadata !94, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!225 = metadata !{null, metadata !69, metadata !2, metadata !226, metadata !4, metadata !83, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!227 = metadata !{null, metadata !75, metadata !21, metadata !228, metadata !23, metadata !77, metadata !6}
!228 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!229 = metadata !{null, metadata !69, metadata !2, metadata !230, metadata !4, metadata !83, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!231 = metadata !{null, metadata !69, metadata !2, metadata !232, metadata !4, metadata !83, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!233 = metadata !{null, metadata !87, metadata !12, metadata !234, metadata !14, metadata !109, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!235 = metadata !{null, metadata !69, metadata !2, metadata !236, metadata !4, metadata !94, metadata !6}
!236 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!237 = metadata !{null, metadata !87, metadata !12, metadata !238, metadata !14, metadata !89, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!239 = metadata !{null, metadata !87, metadata !12, metadata !240, metadata !14, metadata !109, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!241 = metadata !{null, metadata !69, metadata !2, metadata !242, metadata !4, metadata !83, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!243 = metadata !{null, metadata !69, metadata !2, metadata !244, metadata !4, metadata !83, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!245 = metadata !{null, metadata !130, metadata !12, metadata !246, metadata !14, metadata !132, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!247 = metadata !{null, metadata !137, metadata !21, metadata !248, metadata !23, metadata !139, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!249 = metadata !{null, metadata !69, metadata !2, metadata !250, metadata !4, metadata !85, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!251 = metadata !{null, metadata !69, metadata !2, metadata !250, metadata !4, metadata !143, metadata !6}
!252 = metadata !{null, metadata !69, metadata !2, metadata !253, metadata !4, metadata !85, metadata !6}
!253 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!254 = metadata !{null, metadata !69, metadata !2, metadata !253, metadata !4, metadata !83, metadata !6}
!255 = metadata !{null, metadata !137, metadata !21, metadata !256, metadata !23, metadata !139, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!257 = metadata !{null, metadata !69, metadata !2, metadata !258, metadata !4, metadata !83, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!259 = metadata !{null, metadata !69, metadata !2, metadata !260, metadata !4, metadata !83, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!261 = metadata !{null, metadata !69, metadata !2, metadata !70, metadata !4, metadata !159, metadata !6}
!262 = metadata !{null, metadata !69, metadata !2, metadata !263, metadata !4, metadata !85, metadata !6}
!263 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!264 = metadata !{null, metadata !69, metadata !2, metadata !263, metadata !4, metadata !143, metadata !6}
!265 = metadata !{null, metadata !69, metadata !2, metadata !266, metadata !4, metadata !85, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!267 = metadata !{null, metadata !69, metadata !2, metadata !266, metadata !4, metadata !83, metadata !6}
!268 = metadata !{null, metadata !137, metadata !21, metadata !269, metadata !23, metadata !139, metadata !6}
!269 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!270 = metadata !{null, metadata !137, metadata !21, metadata !271, metadata !23, metadata !139, metadata !6}
!271 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!272 = metadata !{null, metadata !130, metadata !12, metadata !273, metadata !14, metadata !132, metadata !6}
!273 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!274 = metadata !{null, metadata !69, metadata !2, metadata !275, metadata !4, metadata !85, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!276 = metadata !{null, metadata !69, metadata !2, metadata !127, metadata !4, metadata !85, metadata !6}
!277 = metadata !{null, metadata !75, metadata !21, metadata !278, metadata !23, metadata !77, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!279 = metadata !{null, metadata !69, metadata !2, metadata !280, metadata !4, metadata !83, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!281 = metadata !{null, metadata !69, metadata !2, metadata !282, metadata !4, metadata !83, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!283 = metadata !{null, metadata !87, metadata !12, metadata !284, metadata !14, metadata !109, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!285 = metadata !{null, metadata !69, metadata !2, metadata !286, metadata !4, metadata !94, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!287 = metadata !{null, metadata !69, metadata !2, metadata !288, metadata !4, metadata !83, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!289 = metadata !{null, metadata !75, metadata !21, metadata !290, metadata !23, metadata !77, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!291 = metadata !{null, metadata !69, metadata !2, metadata !292, metadata !4, metadata !83, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!293 = metadata !{null, metadata !69, metadata !2, metadata !294, metadata !4, metadata !83, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!295 = metadata !{null, metadata !87, metadata !12, metadata !296, metadata !14, metadata !109, metadata !6}
!296 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!297 = metadata !{null, metadata !69, metadata !2, metadata !298, metadata !4, metadata !94, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!299 = metadata !{null, metadata !69, metadata !2, metadata !300, metadata !4, metadata !83, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!301 = metadata !{null, metadata !75, metadata !21, metadata !302, metadata !23, metadata !77, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!303 = metadata !{null, metadata !69, metadata !2, metadata !304, metadata !4, metadata !83, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!305 = metadata !{null, metadata !69, metadata !2, metadata !306, metadata !4, metadata !83, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!307 = metadata !{null, metadata !87, metadata !12, metadata !308, metadata !14, metadata !109, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!309 = metadata !{null, metadata !69, metadata !2, metadata !310, metadata !4, metadata !94, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!311 = metadata !{null, metadata !69, metadata !2, metadata !312, metadata !4, metadata !83, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!313 = metadata !{null, metadata !75, metadata !21, metadata !314, metadata !23, metadata !77, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!315 = metadata !{null, metadata !69, metadata !2, metadata !316, metadata !4, metadata !83, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!317 = metadata !{null, metadata !69, metadata !2, metadata !318, metadata !4, metadata !83, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!319 = metadata !{null, metadata !69, metadata !2, metadata !320, metadata !4, metadata !83, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!321 = metadata !{null, metadata !69, metadata !2, metadata !322, metadata !4, metadata !83, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!323 = metadata !{null, metadata !130, metadata !12, metadata !324, metadata !14, metadata !132, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!325 = metadata !{null, metadata !75, metadata !21, metadata !326, metadata !23, metadata !77, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!327 = metadata !{null, metadata !69, metadata !2, metadata !328, metadata !4, metadata !83, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!329 = metadata !{null, metadata !69, metadata !2, metadata !330, metadata !4, metadata !83, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!331 = metadata !{null, metadata !69, metadata !2, metadata !332, metadata !4, metadata !83, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!333 = metadata !{null, metadata !69, metadata !2, metadata !334, metadata !4, metadata !83, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!335 = metadata !{null, metadata !130, metadata !12, metadata !336, metadata !14, metadata !132, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!337 = metadata !{null, metadata !75, metadata !21, metadata !338, metadata !23, metadata !77, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!339 = metadata !{null, metadata !69, metadata !2, metadata !340, metadata !4, metadata !83, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!341 = metadata !{null, metadata !69, metadata !2, metadata !342, metadata !4, metadata !83, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!343 = metadata !{null, metadata !69, metadata !2, metadata !344, metadata !4, metadata !83, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!345 = metadata !{null, metadata !69, metadata !2, metadata !346, metadata !4, metadata !83, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!347 = metadata !{null, metadata !130, metadata !12, metadata !348, metadata !14, metadata !132, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!349 = metadata !{null, metadata !75, metadata !21, metadata !350, metadata !23, metadata !77, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!351 = metadata !{null, metadata !75, metadata !21, metadata !352, metadata !23, metadata !77, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!353 = metadata !{null, metadata !75, metadata !21, metadata !354, metadata !23, metadata !77, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!355 = metadata !{null, metadata !69, metadata !2, metadata !73, metadata !4, metadata !150, metadata !6}
!356 = metadata !{null, metadata !69, metadata !2, metadata !73, metadata !4, metadata !357, metadata !6}
!357 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!358 = metadata !{null, metadata !87, metadata !12, metadata !359, metadata !14, metadata !109, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!360 = metadata !{null, metadata !69, metadata !2, metadata !361, metadata !4, metadata !83, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!362 = metadata !{null, metadata !69, metadata !2, metadata !363, metadata !4, metadata !83, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!364 = metadata !{null, metadata !69, metadata !2, metadata !365, metadata !4, metadata !94, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!366 = metadata !{null, metadata !69, metadata !2, metadata !367, metadata !4, metadata !94, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!368 = metadata !{null, metadata !69, metadata !2, metadata !73, metadata !4, metadata !369, metadata !6}
!369 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!370 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !371, metadata !372, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!372 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!373 = metadata !{null, metadata !75, metadata !21, metadata !374, metadata !23, metadata !77, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!375 = metadata !{null, metadata !69, metadata !2, metadata !376, metadata !4, metadata !83, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!377 = metadata !{null, metadata !69, metadata !2, metadata !378, metadata !4, metadata !83, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!379 = metadata !{null, metadata !69, metadata !2, metadata !380, metadata !4, metadata !83, metadata !6}
!380 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!381 = metadata !{null, metadata !69, metadata !2, metadata !382, metadata !4, metadata !83, metadata !6}
!382 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!383 = metadata !{null, metadata !130, metadata !12, metadata !384, metadata !14, metadata !132, metadata !6}
!384 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!385 = metadata !{null, metadata !75, metadata !21, metadata !386, metadata !23, metadata !77, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!387 = metadata !{null, metadata !130, metadata !12, metadata !388, metadata !389, metadata !390, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!389 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!390 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!391 = metadata !{metadata !392, [1 x i32]* @llvm_global_ctors_0}
!392 = metadata !{metadata !393}
!393 = metadata !{i32 0, i32 31, metadata !394}
!394 = metadata !{metadata !395}
!395 = metadata !{metadata !"llvm.global_ctors.0", metadata !396, metadata !"", i32 0, i32 31}
!396 = metadata !{metadata !397}
!397 = metadata !{i32 0, i32 0, i32 1}
!398 = metadata !{metadata !399}
!399 = metadata !{i32 0, i32 31, metadata !400}
!400 = metadata !{metadata !401}
!401 = metadata !{metadata !"imINPUT", metadata !402, metadata !"int", i32 0, i32 31}
!402 = metadata !{metadata !403, metadata !403}
!403 = metadata !{i32 0, i32 1199, i32 1}
!404 = metadata !{metadata !405}
!405 = metadata !{i32 0, i32 31, metadata !406}
!406 = metadata !{metadata !407}
!407 = metadata !{metadata !"imOUTPUT", metadata !402, metadata !"int", i32 0, i32 31}
!408 = metadata !{metadata !409}
!409 = metadata !{i32 0, i32 31, metadata !410}
!410 = metadata !{metadata !411}
!411 = metadata !{metadata !"imHeight", metadata !412, metadata !"int", i32 0, i32 31}
!412 = metadata !{metadata !413}
!413 = metadata !{i32 0, i32 0, i32 0}
!414 = metadata !{metadata !415}
!415 = metadata !{i32 0, i32 31, metadata !416}
!416 = metadata !{metadata !417}
!417 = metadata !{metadata !"imWidth", metadata !412, metadata !"int", i32 0, i32 31}
!418 = metadata !{metadata !419}
!419 = metadata !{i32 0, i32 31, metadata !420}
!420 = metadata !{metadata !421}
!421 = metadata !{metadata !"tplINPUT", metadata !402, metadata !"int", i32 0, i32 31}
!422 = metadata !{metadata !423}
!423 = metadata !{i32 0, i32 31, metadata !424}
!424 = metadata !{metadata !425}
!425 = metadata !{metadata !"tplOUTPUT", metadata !402, metadata !"int", i32 0, i32 31}
!426 = metadata !{metadata !427}
!427 = metadata !{i32 0, i32 31, metadata !428}
!428 = metadata !{metadata !429}
!429 = metadata !{metadata !"tplHeight", metadata !412, metadata !"int", i32 0, i32 31}
!430 = metadata !{metadata !431}
!431 = metadata !{i32 0, i32 31, metadata !432}
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !"tplWidth", metadata !412, metadata !"int", i32 0, i32 31}
