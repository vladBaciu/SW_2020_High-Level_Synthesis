// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _imTemplateMatching_HH_
#define _imTemplateMatching_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "imGreyNormalization.h"
#include "imGrayScale.h"
#include "imGrayScale26.h"
#include "imDiff.h"
#include "imTemplateMatching8j.h"

namespace ap_rtl {

struct imTemplateMatching : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > imINPUT_dout;
    sc_in< sc_logic > imINPUT_empty_n;
    sc_out< sc_logic > imINPUT_read;
    sc_out< sc_lv<21> > imOUTPUT_address0;
    sc_out< sc_logic > imOUTPUT_ce0;
    sc_out< sc_logic > imOUTPUT_we0;
    sc_out< sc_lv<32> > imOUTPUT_d0;
    sc_in< sc_lv<32> > imOUTPUT_q0;
    sc_in< sc_lv<32> > imHeight;
    sc_in< sc_lv<32> > imWidth;
    sc_out< sc_lv<21> > tplINPUT_address0;
    sc_out< sc_logic > tplINPUT_ce0;
    sc_in< sc_lv<32> > tplINPUT_q0;
    sc_out< sc_lv<21> > tplOUTPUT_address0;
    sc_out< sc_logic > tplOUTPUT_ce0;
    sc_out< sc_logic > tplOUTPUT_we0;
    sc_out< sc_lv<32> > tplOUTPUT_d0;
    sc_in< sc_lv<32> > tplOUTPUT_q0;
    sc_in< sc_lv<32> > tplHeight;
    sc_in< sc_lv<32> > tplWidth;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    imTemplateMatching(sc_module_name name);
    SC_HAS_PROCESS(imTemplateMatching);

    ~imTemplateMatching();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    imGreyNormalization* grp_imGreyNormalization_fu_168;
    imGreyNormalization* grp_imGreyNormalization_fu_176;
    imGrayScale* grp_imGrayScale_fu_184;
    imGrayScale26* grp_imGrayScale26_fu_196;
    imDiff* grp_imDiff_fu_208;
    imTemplateMatching8j<1,1,11,11,12,22>* imTemplateMatching8j_x_U44;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > tmp_i_cast_fu_229_p1;
    sc_signal< sc_lv<12> > tmp_i_cast_reg_371;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<12> > tmp_i_cast_9_fu_233_p1;
    sc_signal< sc_lv<12> > tmp_i_cast_9_reg_376;
    sc_signal< sc_lv<22> > tmp_fu_237_p1;
    sc_signal< sc_lv<22> > tmp_reg_381;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > next_mul_fu_241_p2;
    sc_signal< sc_lv<64> > next_mul_reg_386;
    sc_signal< sc_lv<11> > row_fu_260_p2;
    sc_signal< sc_lv<11> > row_reg_394;
    sc_signal< sc_lv<22> > grp_fu_317_p3;
    sc_signal< sc_lv<22> > tmp_1_reg_399;
    sc_signal< sc_lv<1> > tmp_52_i_fu_255_p2;
    sc_signal< sc_lv<11> > col_fu_279_p2;
    sc_signal< sc_lv<11> > col_reg_407;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_57_i_fu_274_p2;
    sc_signal< sc_lv<22> > tmp_3_fu_308_p2;
    sc_signal< sc_lv<22> > tmp_3_reg_417;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_ap_start;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_ap_done;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_ap_idle;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_ap_ready;
    sc_signal< sc_lv<21> > grp_imGreyNormalization_fu_168_imINPUT_address0;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_imINPUT_ce0;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_168_imINPUT_we0;
    sc_signal< sc_lv<32> > grp_imGreyNormalization_fu_168_imINPUT_d0;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_ap_start;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_ap_done;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_ap_idle;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_ap_ready;
    sc_signal< sc_lv<21> > grp_imGreyNormalization_fu_176_imINPUT_address0;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_imINPUT_ce0;
    sc_signal< sc_logic > grp_imGreyNormalization_fu_176_imINPUT_we0;
    sc_signal< sc_lv<32> > grp_imGreyNormalization_fu_176_imINPUT_d0;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_ap_start;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_ap_done;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_ap_idle;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_ap_ready;
    sc_signal< sc_lv<21> > grp_imGrayScale_fu_184_imINPUT_address0;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_imINPUT_ce0;
    sc_signal< sc_lv<21> > grp_imGrayScale_fu_184_imOUTPUT_address0;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_imOUTPUT_ce0;
    sc_signal< sc_logic > grp_imGrayScale_fu_184_imOUTPUT_we0;
    sc_signal< sc_lv<32> > grp_imGrayScale_fu_184_imOUTPUT_d0;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_ap_start;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_ap_done;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_ap_idle;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_ap_ready;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_imINPUT_read;
    sc_signal< sc_lv<21> > grp_imGrayScale26_fu_196_imOUTPUT_address0;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_imOUTPUT_ce0;
    sc_signal< sc_logic > grp_imGrayScale26_fu_196_imOUTPUT_we0;
    sc_signal< sc_lv<32> > grp_imGrayScale26_fu_196_imOUTPUT_d0;
    sc_signal< sc_lv<21> > grp_imDiff_fu_208_imINPUT_address0;
    sc_signal< sc_logic > grp_imDiff_fu_208_imINPUT_ce0;
    sc_signal< sc_lv<32> > grp_imDiff_fu_208_imINPUT_d0;
    sc_signal< sc_logic > grp_imDiff_fu_208_imINPUT_we0;
    sc_signal< sc_lv<21> > grp_imDiff_fu_208_imINPUT_address1;
    sc_signal< sc_logic > grp_imDiff_fu_208_imINPUT_ce1;
    sc_signal< sc_lv<32> > grp_imDiff_fu_208_imINPUT_d1;
    sc_signal< sc_logic > grp_imDiff_fu_208_imINPUT_we1;
    sc_signal< sc_lv<21> > grp_imDiff_fu_208_tplINPUT_address0;
    sc_signal< sc_logic > grp_imDiff_fu_208_tplINPUT_ce0;
    sc_signal< sc_lv<32> > grp_imDiff_fu_208_tplINPUT_d0;
    sc_signal< sc_logic > grp_imDiff_fu_208_tplINPUT_we0;
    sc_signal< sc_lv<21> > grp_imDiff_fu_208_tplINPUT_address1;
    sc_signal< sc_logic > grp_imDiff_fu_208_tplINPUT_ce1;
    sc_signal< sc_lv<32> > grp_imDiff_fu_208_tplINPUT_d1;
    sc_signal< sc_logic > grp_imDiff_fu_208_tplINPUT_we1;
    sc_signal< sc_lv<11> > grp_imDiff_fu_208_output_struct_x;
    sc_signal< sc_lv<11> > grp_imDiff_fu_208_output_struct_y;
    sc_signal< sc_lv<32> > grp_imDiff_fu_208_output_struct_SAD;
    sc_signal< sc_logic > grp_imDiff_fu_208_output_struct_y_ap_vld;
    sc_signal< sc_logic > grp_imDiff_fu_208_output_struct_x_ap_vld;
    sc_signal< sc_logic > grp_imDiff_fu_208_output_struct_SAD_ap_vld;
    sc_signal< sc_logic > grp_imDiff_fu_208_ap_done;
    sc_signal< sc_logic > grp_imDiff_fu_208_ap_start;
    sc_signal< sc_logic > grp_imDiff_fu_208_ap_ready;
    sc_signal< sc_logic > grp_imDiff_fu_208_ap_idle;
    sc_signal< sc_logic > grp_imDiff_fu_208_ap_continue;
    sc_signal< sc_lv<11> > row_i_reg_135;
    sc_signal< sc_lv<64> > phi_mul_reg_146;
    sc_signal< sc_lv<11> > col_i_reg_157;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_reg_grp_imGreyNormalization_fu_168_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_reg_grp_imGreyNormalization_fu_176_ap_start;
    sc_signal< sc_logic > ap_reg_grp_imGrayScale_fu_184_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_reg_grp_imGrayScale26_fu_196_ap_start;
    sc_signal< sc_logic > ap_reg_grp_imDiff_fu_208_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_sync_reg_grp_imDiff_fu_208_ap_ready;
    sc_signal< sc_logic > ap_sync_grp_imDiff_fu_208_ap_ready;
    sc_signal< sc_lv<11> > template_match_posit_fu_74;
    sc_signal< sc_lv<11> > template_match_posit_1_fu_78;
    sc_signal< sc_lv<64> > tmp_2_cast_fu_294_p1;
    sc_signal< sc_lv<64> > tmp_3_cast_fu_313_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > tmp_51_i_fu_247_p1;
    sc_signal< sc_lv<32> > tmp_56_i_fu_266_p1;
    sc_signal< sc_lv<22> > tmp_58_i_cast_fu_285_p1;
    sc_signal< sc_lv<22> > tmp_2_fu_289_p2;
    sc_signal< sc_lv<12> > tmp_56_i_cast_fu_270_p1;
    sc_signal< sc_lv<12> > tmp_59_i_fu_299_p2;
    sc_signal< sc_lv<22> > tmp_60_i_cast_fu_304_p1;
    sc_signal< sc_lv<11> > grp_fu_317_p0;
    sc_signal< sc_lv<12> > grp_fu_317_p2;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_4B0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<22> ap_const_lv22_4B0;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_grp_imDiff_fu_208_ap_ready();
    void thread_col_fu_279_p2();
    void thread_grp_fu_317_p0();
    void thread_grp_fu_317_p2();
    void thread_grp_imDiff_fu_208_ap_continue();
    void thread_grp_imDiff_fu_208_ap_start();
    void thread_grp_imGrayScale26_fu_196_ap_start();
    void thread_grp_imGrayScale_fu_184_ap_start();
    void thread_grp_imGreyNormalization_fu_168_ap_start();
    void thread_grp_imGreyNormalization_fu_176_ap_start();
    void thread_imINPUT_read();
    void thread_imOUTPUT_address0();
    void thread_imOUTPUT_ce0();
    void thread_imOUTPUT_d0();
    void thread_imOUTPUT_we0();
    void thread_next_mul_fu_241_p2();
    void thread_row_fu_260_p2();
    void thread_tmp_2_cast_fu_294_p1();
    void thread_tmp_2_fu_289_p2();
    void thread_tmp_3_cast_fu_313_p1();
    void thread_tmp_3_fu_308_p2();
    void thread_tmp_51_i_fu_247_p1();
    void thread_tmp_52_i_fu_255_p2();
    void thread_tmp_56_i_cast_fu_270_p1();
    void thread_tmp_56_i_fu_266_p1();
    void thread_tmp_57_i_fu_274_p2();
    void thread_tmp_58_i_cast_fu_285_p1();
    void thread_tmp_59_i_fu_299_p2();
    void thread_tmp_60_i_cast_fu_304_p1();
    void thread_tmp_fu_237_p1();
    void thread_tmp_i_cast_9_fu_233_p1();
    void thread_tmp_i_cast_fu_229_p1();
    void thread_tplINPUT_address0();
    void thread_tplINPUT_ce0();
    void thread_tplOUTPUT_address0();
    void thread_tplOUTPUT_ce0();
    void thread_tplOUTPUT_d0();
    void thread_tplOUTPUT_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
