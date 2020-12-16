// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _imGrayScale26_HH_
#define _imGrayScale26_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "imTemplateMatchinbkb.h"
#include "imTemplateMatchincud.h"
#include "imTemplateMatchindEe.h"

namespace ap_rtl {

struct imGrayScale26 : public sc_module {
    // Port declarations 15
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
    sc_in< sc_lv<32> > imHeight;
    sc_in< sc_lv<32> > imWidth;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<64> > ap_var_for_const1;


    // Module declarations
    imGrayScale26(sc_module_name name);
    SC_HAS_PROCESS(imGrayScale26);

    ~imGrayScale26();

    sc_trace_file* mVcdFile;

    imTemplateMatchinbkb<1,5,64,64,64>* imTemplateMatchinbkb_U1;
    imTemplateMatchincud<1,6,64,64,64>* imTemplateMatchincud_U2;
    imTemplateMatchincud<1,6,64,64,64>* imTemplateMatchincud_U3;
    imTemplateMatchindEe<1,6,32,64>* imTemplateMatchindEe_U4;
    imTemplateMatchindEe<1,6,32,64>* imTemplateMatchindEe_U5;
    sc_signal< sc_lv<28> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_logic > imINPUT_blk_n;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_18_fu_217_p2;
    sc_signal< sc_lv<64> > grp_fu_165_p2;
    sc_signal< sc_lv<64> > reg_182;
    sc_signal< sc_lv<1> > ap_CS_fsm_state15;
    sc_signal< sc_lv<1> > ap_CS_fsm_state20;
    sc_signal< sc_lv<22> > tmp_31_fu_188_p1;
    sc_signal< sc_lv<22> > tmp_31_reg_413;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<42> > next_mul_fu_192_p2;
    sc_signal< sc_lv<42> > next_mul_reg_418;
    sc_signal< sc_lv<31> > row_4_fu_207_p2;
    sc_signal< sc_lv<31> > row_4_reg_426;
    sc_signal< sc_lv<31> > col_4_fu_222_p2;
    sc_signal< sc_lv<31> > col_4_reg_434;
    sc_signal< sc_lv<22> > tmp_s_fu_232_p2;
    sc_signal< sc_lv<22> > tmp_s_reg_439;
    sc_signal< sc_lv<8> > tmp_34_fu_237_p1;
    sc_signal< sc_lv<8> > tmp_34_reg_444;
    sc_signal< sc_lv<8> > tmp_23_cast_reg_449;
    sc_signal< sc_lv<8> > tmp_28_cast_reg_454;
    sc_signal< sc_lv<32> > tmp_20_cast_fu_261_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > grp_fu_176_p1;
    sc_signal< sc_lv<64> > tmp_21_reg_469;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > grp_fu_179_p1;
    sc_signal< sc_lv<64> > tmp_24_reg_474;
    sc_signal< sc_lv<32> > tmp_29_cast_fu_269_p1;
    sc_signal< sc_lv<64> > tmp_27_reg_484;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > grp_fu_170_p2;
    sc_signal< sc_lv<64> > tmp_25_reg_489;
    sc_signal< sc_lv<64> > grp_fu_161_p2;
    sc_signal< sc_lv<64> > tmp_26_reg_494;
    sc_signal< sc_lv<11> > loc_V_reg_499;
    sc_signal< sc_lv<1> > ap_CS_fsm_state25;
    sc_signal< sc_lv<52> > loc_V_2_fu_287_p1;
    sc_signal< sc_lv<52> > loc_V_2_reg_505;
    sc_signal< sc_lv<8> > result_V_fu_382_p3;
    sc_signal< sc_lv<8> > result_V_reg_510;
    sc_signal< sc_lv<1> > ap_CS_fsm_state26;
    sc_signal< sc_lv<1> > ap_CS_fsm_state27;
    sc_signal< sc_lv<31> > row_reg_128;
    sc_signal< sc_lv<42> > phi_mul_reg_139;
    sc_signal< sc_lv<31> > col_reg_150;
    sc_signal< sc_lv<1> > tmp_fu_202_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state28;
    sc_signal< sc_lv<64> > tmp_32_cast_fu_390_p1;
    sc_signal< sc_lv<64> > grp_fu_161_p0;
    sc_signal< sc_lv<64> > grp_fu_161_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<1> > ap_CS_fsm_state21;
    sc_signal< sc_lv<64> > grp_fu_165_p0;
    sc_signal< sc_lv<64> > grp_fu_165_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_176_p0;
    sc_signal< sc_lv<32> > grp_fu_179_p0;
    sc_signal< sc_lv<32> > row_cast_fu_198_p1;
    sc_signal< sc_lv<32> > col_cast_fu_213_p1;
    sc_signal< sc_lv<22> > tmp_33_fu_228_p1;
    sc_signal< sc_lv<64> > p_Val2_s_fu_273_p1;
    sc_signal< sc_lv<53> > p_Result_s_fu_291_p3;
    sc_signal< sc_lv<12> > tmp_i_i_i_cast_fu_302_p1;
    sc_signal< sc_lv<12> > sh_assign_fu_305_p2;
    sc_signal< sc_lv<11> > tmp_i_i_17_fu_319_p2;
    sc_signal< sc_lv<1> > isNeg_fu_311_p3;
    sc_signal< sc_lv<12> > tmp_i_i_cast_fu_324_p1;
    sc_signal< sc_lv<12> > sh_assign_2_fu_328_p3;
    sc_signal< sc_lv<32> > sh_assign_1_i_i_cast_fu_336_p1;
    sc_signal< sc_lv<53> > tmp_55_i_i_cast_fu_344_p1;
    sc_signal< sc_lv<112> > tmp_i_i_fu_298_p1;
    sc_signal< sc_lv<112> > tmp_55_i_i_fu_340_p1;
    sc_signal< sc_lv<53> > tmp_56_i_i_fu_348_p2;
    sc_signal< sc_lv<1> > tmp_39_fu_360_p3;
    sc_signal< sc_lv<112> > tmp_57_i_i_fu_354_p2;
    sc_signal< sc_lv<8> > tmp_30_fu_368_p1;
    sc_signal< sc_lv<8> > tmp_32_fu_372_p4;
    sc_signal< sc_lv<28> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<28> ap_ST_fsm_state1;
    static const sc_lv<28> ap_ST_fsm_state2;
    static const sc_lv<28> ap_ST_fsm_state3;
    static const sc_lv<28> ap_ST_fsm_state4;
    static const sc_lv<28> ap_ST_fsm_state5;
    static const sc_lv<28> ap_ST_fsm_state6;
    static const sc_lv<28> ap_ST_fsm_state7;
    static const sc_lv<28> ap_ST_fsm_state8;
    static const sc_lv<28> ap_ST_fsm_state9;
    static const sc_lv<28> ap_ST_fsm_state10;
    static const sc_lv<28> ap_ST_fsm_state11;
    static const sc_lv<28> ap_ST_fsm_state12;
    static const sc_lv<28> ap_ST_fsm_state13;
    static const sc_lv<28> ap_ST_fsm_state14;
    static const sc_lv<28> ap_ST_fsm_state15;
    static const sc_lv<28> ap_ST_fsm_state16;
    static const sc_lv<28> ap_ST_fsm_state17;
    static const sc_lv<28> ap_ST_fsm_state18;
    static const sc_lv<28> ap_ST_fsm_state19;
    static const sc_lv<28> ap_ST_fsm_state20;
    static const sc_lv<28> ap_ST_fsm_state21;
    static const sc_lv<28> ap_ST_fsm_state22;
    static const sc_lv<28> ap_ST_fsm_state23;
    static const sc_lv<28> ap_ST_fsm_state24;
    static const sc_lv<28> ap_ST_fsm_state25;
    static const sc_lv<28> ap_ST_fsm_state26;
    static const sc_lv<28> ap_ST_fsm_state27;
    static const sc_lv<28> ap_ST_fsm_state28;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<42> ap_const_lv42_0;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<64> ap_const_lv64_3FBD2F1A9FBE76C9;
    static const sc_lv<64> ap_const_lv64_3FE2C8B439581062;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_3FD322D0E5604189;
    static const sc_lv<42> ap_const_lv42_4B0;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<12> ap_const_lv12_C01;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<11> ap_const_lv11_3FF;
    static const sc_lv<32> ap_const_lv32_3B;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_col_4_fu_222_p2();
    void thread_col_cast_fu_213_p1();
    void thread_grp_fu_161_p0();
    void thread_grp_fu_161_p1();
    void thread_grp_fu_165_p0();
    void thread_grp_fu_165_p1();
    void thread_grp_fu_176_p0();
    void thread_grp_fu_179_p0();
    void thread_imINPUT_blk_n();
    void thread_imINPUT_read();
    void thread_imOUTPUT_address0();
    void thread_imOUTPUT_ce0();
    void thread_imOUTPUT_d0();
    void thread_imOUTPUT_we0();
    void thread_isNeg_fu_311_p3();
    void thread_loc_V_2_fu_287_p1();
    void thread_next_mul_fu_192_p2();
    void thread_p_Result_s_fu_291_p3();
    void thread_p_Val2_s_fu_273_p1();
    void thread_result_V_fu_382_p3();
    void thread_row_4_fu_207_p2();
    void thread_row_cast_fu_198_p1();
    void thread_sh_assign_1_i_i_cast_fu_336_p1();
    void thread_sh_assign_2_fu_328_p3();
    void thread_sh_assign_fu_305_p2();
    void thread_tmp_18_fu_217_p2();
    void thread_tmp_20_cast_fu_261_p1();
    void thread_tmp_29_cast_fu_269_p1();
    void thread_tmp_30_fu_368_p1();
    void thread_tmp_31_fu_188_p1();
    void thread_tmp_32_cast_fu_390_p1();
    void thread_tmp_32_fu_372_p4();
    void thread_tmp_33_fu_228_p1();
    void thread_tmp_34_fu_237_p1();
    void thread_tmp_39_fu_360_p3();
    void thread_tmp_55_i_i_cast_fu_344_p1();
    void thread_tmp_55_i_i_fu_340_p1();
    void thread_tmp_56_i_i_fu_348_p2();
    void thread_tmp_57_i_i_fu_354_p2();
    void thread_tmp_fu_202_p2();
    void thread_tmp_i_i_17_fu_319_p2();
    void thread_tmp_i_i_cast_fu_324_p1();
    void thread_tmp_i_i_fu_298_p1();
    void thread_tmp_i_i_i_cast_fu_302_p1();
    void thread_tmp_s_fu_232_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif