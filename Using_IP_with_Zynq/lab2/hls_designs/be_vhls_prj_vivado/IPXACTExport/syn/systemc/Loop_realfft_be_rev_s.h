// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_realfft_be_rev_s_HH_
#define _Loop_realfft_be_rev_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_realfft_be_rev_s : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > real_spectrum_hi_buf_i_0_address0;
    sc_out< sc_logic > real_spectrum_hi_buf_i_0_ce0;
    sc_in< sc_lv<16> > real_spectrum_hi_buf_i_0_q0;
    sc_out< sc_lv<8> > real_spectrum_hi_buf_i_1_address0;
    sc_out< sc_logic > real_spectrum_hi_buf_i_1_ce0;
    sc_in< sc_lv<16> > real_spectrum_hi_buf_i_1_q0;
    sc_out< sc_lv<16> > real_spectrum_hi_V_M_real_V_din;
    sc_in< sc_logic > real_spectrum_hi_V_M_real_V_full_n;
    sc_out< sc_logic > real_spectrum_hi_V_M_real_V_write;
    sc_out< sc_lv<16> > real_spectrum_hi_V_M_imag_V_din;
    sc_in< sc_logic > real_spectrum_hi_V_M_imag_V_full_n;
    sc_out< sc_logic > real_spectrum_hi_V_M_imag_V_write;


    // Module declarations
    Loop_realfft_be_rev_s(sc_module_name name);
    SC_HAS_PROCESS(Loop_realfft_be_rev_s);

    ~Loop_realfft_be_rev_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > real_spectrum_hi_V_M_real_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln115_reg_137;
    sc_signal< sc_lv<1> > icmp_ln115_reg_137_pp0_iter1_reg;
    sc_signal< sc_logic > real_spectrum_hi_V_M_imag_V_blk_n;
    sc_signal< sc_lv<9> > i3_0_i_reg_108;
    sc_signal< sc_lv<1> > icmp_ln115_fu_119_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< sc_logic > io_acc_block_signal_op24;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > i_fu_125_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > tmp_M_real_V_reg_156;
    sc_signal< sc_lv<16> > tmp_M_imag_V_reg_161;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<64> > zext_ln117_fu_131_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_i_fu_125_p2();
    void thread_icmp_ln115_fu_119_p2();
    void thread_io_acc_block_signal_op24();
    void thread_real_spectrum_hi_V_M_imag_V_blk_n();
    void thread_real_spectrum_hi_V_M_imag_V_din();
    void thread_real_spectrum_hi_V_M_imag_V_write();
    void thread_real_spectrum_hi_V_M_real_V_blk_n();
    void thread_real_spectrum_hi_V_M_real_V_din();
    void thread_real_spectrum_hi_V_M_real_V_write();
    void thread_real_spectrum_hi_buf_i_0_address0();
    void thread_real_spectrum_hi_buf_i_0_ce0();
    void thread_real_spectrum_hi_buf_i_1_address0();
    void thread_real_spectrum_hi_buf_i_1_ce0();
    void thread_zext_ln117_fu_131_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
