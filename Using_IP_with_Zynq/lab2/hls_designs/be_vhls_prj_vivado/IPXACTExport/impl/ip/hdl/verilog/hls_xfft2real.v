// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_xfft2real,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.890000,HLS_SYN_LAT=1299,HLS_SYN_TPT=512,HLS_SYN_MEM=8,HLS_SYN_DSP=4,HLS_SYN_FF=2442,HLS_SYN_LUT=1870,HLS_VERSION=2020_1}" *)

module hls_xfft2real (
        ap_clk,
        ap_rst_n,
        din_TDATA,
        din_TLAST,
        dout_TDATA,
        dout_TLAST,
        din_TVALID,
        din_TREADY,
        ap_start,
        dout_TVALID,
        dout_TREADY,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst_n;
input  [31:0] din_TDATA;
input  [0:0] din_TLAST;
output  [31:0] dout_TDATA;
output  [0:0] dout_TLAST;
input   din_TVALID;
output   din_TREADY;
input   ap_start;
output   dout_TVALID;
input   dout_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire   [15:0] descramble_buf_0_M_i_q0;
wire   [15:0] descramble_buf_0_M_t_q0;
wire   [15:0] descramble_buf_1_M_i_q0;
wire   [15:0] descramble_buf_1_M_i_q1;
wire   [15:0] descramble_buf_1_M_t_q0;
wire   [15:0] descramble_buf_1_M_t_q1;
wire   [15:0] descramble_buf_0_M_1_i_q0;
wire   [15:0] descramble_buf_0_M_1_t_q0;
wire   [15:0] descramble_buf_1_M_1_i_q0;
wire   [15:0] descramble_buf_1_M_1_i_q1;
wire   [15:0] descramble_buf_1_M_1_t_q0;
wire   [15:0] descramble_buf_1_M_1_t_q1;
wire   [15:0] real_spectrum_hi_buf_i_q0;
wire   [15:0] real_spectrum_hi_buf_t_q0;
wire   [15:0] real_spectrum_hi_buf_1_i_q0;
wire   [15:0] real_spectrum_hi_buf_1_t_q0;
wire    Loop_realfft_be_buff_U0_ap_start;
wire    Loop_realfft_be_buff_U0_ap_done;
wire    Loop_realfft_be_buff_U0_ap_continue;
wire    Loop_realfft_be_buff_U0_ap_idle;
wire    Loop_realfft_be_buff_U0_ap_ready;
wire   [7:0] Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_address0;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_ce0;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_we0;
wire   [15:0] Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_d0;
wire   [7:0] Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_address0;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_ce0;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_we0;
wire   [15:0] Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_d0;
wire    Loop_realfft_be_buff_U0_din_TREADY;
wire   [7:0] Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_address0;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_ce0;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_we0;
wire   [15:0] Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_d0;
wire   [7:0] Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_address0;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_ce0;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_we0;
wire   [15:0] Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_d0;
wire    ap_channel_done_descramble_buf_1_M;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_full_n;
reg    ap_sync_reg_channel_write_descramble_buf_1_M;
wire    ap_sync_channel_write_descramble_buf_1_M;
wire    ap_channel_done_descramble_buf_0_M;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_full_n;
reg    ap_sync_reg_channel_write_descramble_buf_0_M;
wire    ap_sync_channel_write_descramble_buf_0_M;
wire    ap_channel_done_descramble_buf_1_M_1;
wire    Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_full_n;
reg    ap_sync_reg_channel_write_descramble_buf_1_M_1;
wire    ap_sync_channel_write_descramble_buf_1_M_1;
wire    ap_channel_done_descramble_buf_0_M_1;
wire    Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_full_n;
reg    ap_sync_reg_channel_write_descramble_buf_0_M_1;
wire    ap_sync_channel_write_descramble_buf_0_M_1;
wire    Loop_realfft_be_desc_U0_ap_start;
wire    Loop_realfft_be_desc_U0_ap_done;
wire    Loop_realfft_be_desc_U0_ap_continue;
wire    Loop_realfft_be_desc_U0_ap_idle;
wire    Loop_realfft_be_desc_U0_ap_ready;
wire    Loop_realfft_be_desc_U0_start_out;
wire    Loop_realfft_be_desc_U0_start_write;
wire   [15:0] Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_din;
wire    Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_write;
wire   [15:0] Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_din;
wire    Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_write;
wire   [7:0] Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_address0;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_ce0;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_we0;
wire   [15:0] Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_d0;
wire   [7:0] Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_address0;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_ce0;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_we0;
wire   [15:0] Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_d0;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address0;
wire    Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce0;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address1;
wire    Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce1;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address0;
wire    Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce0;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address1;
wire    Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce1;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_address0;
wire    Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_ce0;
wire   [7:0] Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_address0;
wire    Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_ce0;
wire    ap_channel_done_real_spectrum_hi_buf_1;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_full_n;
reg    ap_sync_reg_channel_write_real_spectrum_hi_buf_1;
wire    ap_sync_channel_write_real_spectrum_hi_buf_1;
wire    ap_channel_done_real_spectrum_hi_buf;
wire    Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_full_n;
reg    ap_sync_reg_channel_write_real_spectrum_hi_buf;
wire    ap_sync_channel_write_real_spectrum_hi_buf;
wire    Loop_realfft_be_rev_U0_ap_start;
wire    Loop_realfft_be_rev_U0_ap_done;
wire    Loop_realfft_be_rev_U0_ap_continue;
wire    Loop_realfft_be_rev_U0_ap_idle;
wire    Loop_realfft_be_rev_U0_ap_ready;
wire   [7:0] Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_address0;
wire    Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_ce0;
wire   [7:0] Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_address0;
wire    Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_ce0;
wire   [15:0] Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_din;
wire    Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_write;
wire   [15:0] Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_din;
wire    Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_write;
wire    Loop_realfft_be_stre_U0_ap_start;
wire    Loop_realfft_be_stre_U0_ap_done;
wire    Loop_realfft_be_stre_U0_ap_continue;
wire    Loop_realfft_be_stre_U0_ap_idle;
wire    Loop_realfft_be_stre_U0_ap_ready;
wire    Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_real_V_read;
wire    Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_imag_V_read;
wire    Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_real_V_read;
wire    Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_imag_V_read;
wire   [31:0] Loop_realfft_be_stre_U0_dout_TDATA;
wire    Loop_realfft_be_stre_U0_dout_TVALID;
wire   [0:0] Loop_realfft_be_stre_U0_dout_TLAST;
wire    ap_sync_continue;
wire    descramble_buf_0_M_1_i_full_n;
wire    descramble_buf_0_M_1_t_empty_n;
wire    descramble_buf_1_M_1_i_full_n;
wire    descramble_buf_1_M_1_t_empty_n;
wire   [15:0] descramble_buf_1_M_1_t_d1;
wire    descramble_buf_1_M_1_t_we1;
wire    descramble_buf_0_M_i_full_n;
wire    descramble_buf_0_M_t_empty_n;
wire    descramble_buf_1_M_i_full_n;
wire    descramble_buf_1_M_t_empty_n;
wire   [15:0] descramble_buf_1_M_t_d1;
wire    descramble_buf_1_M_t_we1;
wire    real_spectrum_hi_buf_i_full_n;
wire    real_spectrum_hi_buf_t_empty_n;
wire    real_spectrum_hi_buf_1_i_full_n;
wire    real_spectrum_hi_buf_1_t_empty_n;
wire    real_spectrum_lo_V_s_full_n;
wire   [15:0] real_spectrum_lo_V_s_dout;
wire    real_spectrum_lo_V_s_empty_n;
wire    real_spectrum_lo_V_1_full_n;
wire   [15:0] real_spectrum_lo_V_1_dout;
wire    real_spectrum_lo_V_1_empty_n;
wire    real_spectrum_hi_V_s_full_n;
wire   [15:0] real_spectrum_hi_V_s_dout;
wire    real_spectrum_hi_V_s_empty_n;
wire    real_spectrum_hi_V_1_full_n;
wire   [15:0] real_spectrum_hi_V_1_dout;
wire    real_spectrum_hi_V_1_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_realfft_be_buff_U0_start_full_n;
wire    Loop_realfft_be_buff_U0_start_write;
wire   [0:0] start_for_Loop_realfft_be_stre_U0_din;
wire    start_for_Loop_realfft_be_stre_U0_full_n;
wire   [0:0] start_for_Loop_realfft_be_stre_U0_dout;
wire    start_for_Loop_realfft_be_stre_U0_empty_n;
wire    Loop_realfft_be_rev_U0_start_full_n;
wire    Loop_realfft_be_rev_U0_start_write;
wire    Loop_realfft_be_stre_U0_start_full_n;
wire    Loop_realfft_be_stre_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_descramble_buf_1_M = 1'b0;
#0 ap_sync_reg_channel_write_descramble_buf_0_M = 1'b0;
#0 ap_sync_reg_channel_write_descramble_buf_1_M_1 = 1'b0;
#0 ap_sync_reg_channel_write_descramble_buf_0_M_1 = 1'b0;
#0 ap_sync_reg_channel_write_real_spectrum_hi_buf_1 = 1'b0;
#0 ap_sync_reg_channel_write_real_spectrum_hi_buf = 1'b0;
end

hls_xfft2real_deshbi #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
descramble_buf_0_M_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_address0),
    .i_ce0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_ce0),
    .i_we0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_we0),
    .i_d0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_d0),
    .i_q0(descramble_buf_0_M_i_q0),
    .t_address0(Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_address0),
    .t_ce0(Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(descramble_buf_0_M_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(descramble_buf_0_M_i_full_n),
    .i_write(ap_channel_done_descramble_buf_0_M),
    .t_empty_n(descramble_buf_0_M_t_empty_n),
    .t_read(Loop_realfft_be_desc_U0_ap_ready)
);

hls_xfft2real_desibs #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
descramble_buf_1_M_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_address0),
    .i_ce0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_ce0),
    .i_we0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_we0),
    .i_d0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_d0),
    .i_q0(descramble_buf_1_M_i_q0),
    .i_address1(8'd0),
    .i_ce1(1'b0),
    .i_q1(descramble_buf_1_M_i_q1),
    .t_address0(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address0),
    .t_ce0(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(descramble_buf_1_M_t_q0),
    .t_address1(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address1),
    .t_ce1(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce1),
    .t_q1(descramble_buf_1_M_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(descramble_buf_1_M_i_full_n),
    .i_write(ap_channel_done_descramble_buf_1_M),
    .t_empty_n(descramble_buf_1_M_t_empty_n),
    .t_read(Loop_realfft_be_desc_U0_ap_ready)
);

hls_xfft2real_deshbi #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
descramble_buf_0_M_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_address0),
    .i_ce0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_ce0),
    .i_we0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_we0),
    .i_d0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_d0),
    .i_q0(descramble_buf_0_M_1_i_q0),
    .t_address0(Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_address0),
    .t_ce0(Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(descramble_buf_0_M_1_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(descramble_buf_0_M_1_i_full_n),
    .i_write(ap_channel_done_descramble_buf_0_M_1),
    .t_empty_n(descramble_buf_0_M_1_t_empty_n),
    .t_read(Loop_realfft_be_desc_U0_ap_ready)
);

hls_xfft2real_desibs #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
descramble_buf_1_M_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_address0),
    .i_ce0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_ce0),
    .i_we0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_we0),
    .i_d0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_d0),
    .i_q0(descramble_buf_1_M_1_i_q0),
    .i_address1(8'd0),
    .i_ce1(1'b0),
    .i_q1(descramble_buf_1_M_1_i_q1),
    .t_address0(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address0),
    .t_ce0(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(descramble_buf_1_M_1_t_q0),
    .t_address1(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address1),
    .t_ce1(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce1),
    .t_q1(descramble_buf_1_M_1_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(descramble_buf_1_M_1_i_full_n),
    .i_write(ap_channel_done_descramble_buf_1_M_1),
    .t_empty_n(descramble_buf_1_M_1_t_empty_n),
    .t_read(Loop_realfft_be_desc_U0_ap_ready)
);

hls_xfft2real_deshbi #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
real_spectrum_hi_buf_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_address0),
    .i_ce0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_ce0),
    .i_we0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_we0),
    .i_d0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_d0),
    .i_q0(real_spectrum_hi_buf_i_q0),
    .t_address0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_address0),
    .t_ce0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(real_spectrum_hi_buf_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(real_spectrum_hi_buf_i_full_n),
    .i_write(ap_channel_done_real_spectrum_hi_buf),
    .t_empty_n(real_spectrum_hi_buf_t_empty_n),
    .t_read(Loop_realfft_be_rev_U0_ap_ready)
);

hls_xfft2real_deshbi #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
real_spectrum_hi_buf_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_address0),
    .i_ce0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_ce0),
    .i_we0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_we0),
    .i_d0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_d0),
    .i_q0(real_spectrum_hi_buf_1_i_q0),
    .t_address0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_address0),
    .t_ce0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(real_spectrum_hi_buf_1_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(real_spectrum_hi_buf_1_i_full_n),
    .i_write(ap_channel_done_real_spectrum_hi_buf_1),
    .t_empty_n(real_spectrum_hi_buf_1_t_empty_n),
    .t_read(Loop_realfft_be_rev_U0_ap_ready)
);

Loop_realfft_be_buff Loop_realfft_be_buff_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_realfft_be_buff_U0_ap_start),
    .ap_done(Loop_realfft_be_buff_U0_ap_done),
    .ap_continue(Loop_realfft_be_buff_U0_ap_continue),
    .ap_idle(Loop_realfft_be_buff_U0_ap_idle),
    .ap_ready(Loop_realfft_be_buff_U0_ap_ready),
    .descramble_buf_0_M_imag_V_address0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_address0),
    .descramble_buf_0_M_imag_V_ce0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_ce0),
    .descramble_buf_0_M_imag_V_we0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_we0),
    .descramble_buf_0_M_imag_V_d0(Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_d0),
    .descramble_buf_1_M_imag_V_address0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_address0),
    .descramble_buf_1_M_imag_V_ce0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_ce0),
    .descramble_buf_1_M_imag_V_we0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_we0),
    .descramble_buf_1_M_imag_V_d0(Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_d0),
    .din_TDATA(din_TDATA),
    .din_TVALID(din_TVALID),
    .din_TREADY(Loop_realfft_be_buff_U0_din_TREADY),
    .din_TLAST(din_TLAST),
    .descramble_buf_0_M_real_V_address0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_address0),
    .descramble_buf_0_M_real_V_ce0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_ce0),
    .descramble_buf_0_M_real_V_we0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_we0),
    .descramble_buf_0_M_real_V_d0(Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_d0),
    .descramble_buf_1_M_real_V_address0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_address0),
    .descramble_buf_1_M_real_V_ce0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_ce0),
    .descramble_buf_1_M_real_V_we0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_we0),
    .descramble_buf_1_M_real_V_d0(Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_d0)
);

Loop_realfft_be_desc Loop_realfft_be_desc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_realfft_be_desc_U0_ap_start),
    .start_full_n(start_for_Loop_realfft_be_stre_U0_full_n),
    .ap_done(Loop_realfft_be_desc_U0_ap_done),
    .ap_continue(Loop_realfft_be_desc_U0_ap_continue),
    .ap_idle(Loop_realfft_be_desc_U0_ap_idle),
    .ap_ready(Loop_realfft_be_desc_U0_ap_ready),
    .start_out(Loop_realfft_be_desc_U0_start_out),
    .start_write(Loop_realfft_be_desc_U0_start_write),
    .real_spectrum_lo_V_M_real_V_din(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_din),
    .real_spectrum_lo_V_M_real_V_full_n(real_spectrum_lo_V_s_full_n),
    .real_spectrum_lo_V_M_real_V_write(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_write),
    .real_spectrum_lo_V_M_imag_V_din(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_din),
    .real_spectrum_lo_V_M_imag_V_full_n(real_spectrum_lo_V_1_full_n),
    .real_spectrum_lo_V_M_imag_V_write(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_write),
    .real_spectrum_hi_buf_i_0_address0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_address0),
    .real_spectrum_hi_buf_i_0_ce0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_ce0),
    .real_spectrum_hi_buf_i_0_we0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_we0),
    .real_spectrum_hi_buf_i_0_d0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_d0),
    .real_spectrum_hi_buf_i_1_address0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_address0),
    .real_spectrum_hi_buf_i_1_ce0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_ce0),
    .real_spectrum_hi_buf_i_1_we0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_we0),
    .real_spectrum_hi_buf_i_1_d0(Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_d0),
    .descramble_buf_1_M_real_V_address0(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address0),
    .descramble_buf_1_M_real_V_ce0(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce0),
    .descramble_buf_1_M_real_V_q0(descramble_buf_1_M_t_q0),
    .descramble_buf_1_M_real_V_address1(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_address1),
    .descramble_buf_1_M_real_V_ce1(Loop_realfft_be_desc_U0_descramble_buf_1_M_real_V_ce1),
    .descramble_buf_1_M_real_V_q1(descramble_buf_1_M_t_q1),
    .descramble_buf_1_M_imag_V_address0(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address0),
    .descramble_buf_1_M_imag_V_ce0(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce0),
    .descramble_buf_1_M_imag_V_q0(descramble_buf_1_M_1_t_q0),
    .descramble_buf_1_M_imag_V_address1(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_address1),
    .descramble_buf_1_M_imag_V_ce1(Loop_realfft_be_desc_U0_descramble_buf_1_M_imag_V_ce1),
    .descramble_buf_1_M_imag_V_q1(descramble_buf_1_M_1_t_q1),
    .descramble_buf_0_M_real_V_address0(Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_address0),
    .descramble_buf_0_M_real_V_ce0(Loop_realfft_be_desc_U0_descramble_buf_0_M_real_V_ce0),
    .descramble_buf_0_M_real_V_q0(descramble_buf_0_M_t_q0),
    .descramble_buf_0_M_imag_V_address0(Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_address0),
    .descramble_buf_0_M_imag_V_ce0(Loop_realfft_be_desc_U0_descramble_buf_0_M_imag_V_ce0),
    .descramble_buf_0_M_imag_V_q0(descramble_buf_0_M_1_t_q0)
);

Loop_realfft_be_rev_s Loop_realfft_be_rev_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_realfft_be_rev_U0_ap_start),
    .ap_done(Loop_realfft_be_rev_U0_ap_done),
    .ap_continue(Loop_realfft_be_rev_U0_ap_continue),
    .ap_idle(Loop_realfft_be_rev_U0_ap_idle),
    .ap_ready(Loop_realfft_be_rev_U0_ap_ready),
    .real_spectrum_hi_buf_i_0_address0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_address0),
    .real_spectrum_hi_buf_i_0_ce0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_0_ce0),
    .real_spectrum_hi_buf_i_0_q0(real_spectrum_hi_buf_t_q0),
    .real_spectrum_hi_buf_i_1_address0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_address0),
    .real_spectrum_hi_buf_i_1_ce0(Loop_realfft_be_rev_U0_real_spectrum_hi_buf_i_1_ce0),
    .real_spectrum_hi_buf_i_1_q0(real_spectrum_hi_buf_1_t_q0),
    .real_spectrum_hi_V_M_real_V_din(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_din),
    .real_spectrum_hi_V_M_real_V_full_n(real_spectrum_hi_V_s_full_n),
    .real_spectrum_hi_V_M_real_V_write(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_write),
    .real_spectrum_hi_V_M_imag_V_din(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_din),
    .real_spectrum_hi_V_M_imag_V_full_n(real_spectrum_hi_V_1_full_n),
    .real_spectrum_hi_V_M_imag_V_write(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_write)
);

Loop_realfft_be_stre Loop_realfft_be_stre_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_realfft_be_stre_U0_ap_start),
    .ap_done(Loop_realfft_be_stre_U0_ap_done),
    .ap_continue(Loop_realfft_be_stre_U0_ap_continue),
    .ap_idle(Loop_realfft_be_stre_U0_ap_idle),
    .ap_ready(Loop_realfft_be_stre_U0_ap_ready),
    .real_spectrum_lo_V_M_real_V_dout(real_spectrum_lo_V_s_dout),
    .real_spectrum_lo_V_M_real_V_empty_n(real_spectrum_lo_V_s_empty_n),
    .real_spectrum_lo_V_M_real_V_read(Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_real_V_read),
    .real_spectrum_lo_V_M_imag_V_dout(real_spectrum_lo_V_1_dout),
    .real_spectrum_lo_V_M_imag_V_empty_n(real_spectrum_lo_V_1_empty_n),
    .real_spectrum_lo_V_M_imag_V_read(Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_imag_V_read),
    .real_spectrum_hi_V_M_real_V_dout(real_spectrum_hi_V_s_dout),
    .real_spectrum_hi_V_M_real_V_empty_n(real_spectrum_hi_V_s_empty_n),
    .real_spectrum_hi_V_M_real_V_read(Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_real_V_read),
    .real_spectrum_hi_V_M_imag_V_dout(real_spectrum_hi_V_1_dout),
    .real_spectrum_hi_V_M_imag_V_empty_n(real_spectrum_hi_V_1_empty_n),
    .real_spectrum_hi_V_M_imag_V_read(Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_imag_V_read),
    .dout_TREADY(dout_TREADY),
    .dout_TDATA(Loop_realfft_be_stre_U0_dout_TDATA),
    .dout_TVALID(Loop_realfft_be_stre_U0_dout_TVALID),
    .dout_TLAST(Loop_realfft_be_stre_U0_dout_TLAST)
);

fifo_w16_d8_A real_spectrum_lo_V_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_din),
    .if_full_n(real_spectrum_lo_V_s_full_n),
    .if_write(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_real_V_write),
    .if_dout(real_spectrum_lo_V_s_dout),
    .if_empty_n(real_spectrum_lo_V_s_empty_n),
    .if_read(Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_real_V_read)
);

fifo_w16_d8_A real_spectrum_lo_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_din),
    .if_full_n(real_spectrum_lo_V_1_full_n),
    .if_write(Loop_realfft_be_desc_U0_real_spectrum_lo_V_M_imag_V_write),
    .if_dout(real_spectrum_lo_V_1_dout),
    .if_empty_n(real_spectrum_lo_V_1_empty_n),
    .if_read(Loop_realfft_be_stre_U0_real_spectrum_lo_V_M_imag_V_read)
);

fifo_w16_d8_A real_spectrum_hi_V_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_din),
    .if_full_n(real_spectrum_hi_V_s_full_n),
    .if_write(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_real_V_write),
    .if_dout(real_spectrum_hi_V_s_dout),
    .if_empty_n(real_spectrum_hi_V_s_empty_n),
    .if_read(Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_real_V_read)
);

fifo_w16_d8_A real_spectrum_hi_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_din),
    .if_full_n(real_spectrum_hi_V_1_full_n),
    .if_write(Loop_realfft_be_rev_U0_real_spectrum_hi_V_M_imag_V_write),
    .if_dout(real_spectrum_hi_V_1_dout),
    .if_empty_n(real_spectrum_hi_V_1_empty_n),
    .if_read(Loop_realfft_be_stre_U0_real_spectrum_hi_V_M_imag_V_read)
);

start_for_Loop_rencg start_for_Loop_rencg_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_realfft_be_stre_U0_din),
    .if_full_n(start_for_Loop_realfft_be_stre_U0_full_n),
    .if_write(Loop_realfft_be_desc_U0_start_write),
    .if_dout(start_for_Loop_realfft_be_stre_U0_dout),
    .if_empty_n(start_for_Loop_realfft_be_stre_U0_empty_n),
    .if_read(Loop_realfft_be_stre_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_descramble_buf_0_M <= 1'b0;
    end else begin
        if (((Loop_realfft_be_buff_U0_ap_done & Loop_realfft_be_buff_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_descramble_buf_0_M <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_descramble_buf_0_M <= ap_sync_channel_write_descramble_buf_0_M;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_descramble_buf_0_M_1 <= 1'b0;
    end else begin
        if (((Loop_realfft_be_buff_U0_ap_done & Loop_realfft_be_buff_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_descramble_buf_0_M_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_descramble_buf_0_M_1 <= ap_sync_channel_write_descramble_buf_0_M_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_descramble_buf_1_M <= 1'b0;
    end else begin
        if (((Loop_realfft_be_buff_U0_ap_done & Loop_realfft_be_buff_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_descramble_buf_1_M <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_descramble_buf_1_M <= ap_sync_channel_write_descramble_buf_1_M;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_descramble_buf_1_M_1 <= 1'b0;
    end else begin
        if (((Loop_realfft_be_buff_U0_ap_done & Loop_realfft_be_buff_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_descramble_buf_1_M_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_descramble_buf_1_M_1 <= ap_sync_channel_write_descramble_buf_1_M_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_real_spectrum_hi_buf <= 1'b0;
    end else begin
        if (((Loop_realfft_be_desc_U0_ap_done & Loop_realfft_be_desc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_real_spectrum_hi_buf <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_real_spectrum_hi_buf <= ap_sync_channel_write_real_spectrum_hi_buf;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_real_spectrum_hi_buf_1 <= 1'b0;
    end else begin
        if (((Loop_realfft_be_desc_U0_ap_done & Loop_realfft_be_desc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_real_spectrum_hi_buf_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_real_spectrum_hi_buf_1 <= ap_sync_channel_write_real_spectrum_hi_buf_1;
        end
    end
end

assign Loop_realfft_be_buff_U0_ap_continue = (ap_sync_channel_write_descramble_buf_1_M_1 & ap_sync_channel_write_descramble_buf_1_M & ap_sync_channel_write_descramble_buf_0_M_1 & ap_sync_channel_write_descramble_buf_0_M);

assign Loop_realfft_be_buff_U0_ap_start = ap_start;

assign Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_full_n = descramble_buf_0_M_1_i_full_n;

assign Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_full_n = descramble_buf_0_M_i_full_n;

assign Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_full_n = descramble_buf_1_M_1_i_full_n;

assign Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_full_n = descramble_buf_1_M_i_full_n;

assign Loop_realfft_be_buff_U0_start_full_n = 1'b1;

assign Loop_realfft_be_buff_U0_start_write = 1'b0;

assign Loop_realfft_be_desc_U0_ap_continue = (ap_sync_channel_write_real_spectrum_hi_buf_1 & ap_sync_channel_write_real_spectrum_hi_buf);

assign Loop_realfft_be_desc_U0_ap_start = (descramble_buf_1_M_t_empty_n & descramble_buf_1_M_1_t_empty_n & descramble_buf_0_M_t_empty_n & descramble_buf_0_M_1_t_empty_n);

assign Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_full_n = real_spectrum_hi_buf_i_full_n;

assign Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_full_n = real_spectrum_hi_buf_1_i_full_n;

assign Loop_realfft_be_rev_U0_ap_continue = 1'b1;

assign Loop_realfft_be_rev_U0_ap_start = (real_spectrum_hi_buf_t_empty_n & real_spectrum_hi_buf_1_t_empty_n);

assign Loop_realfft_be_rev_U0_start_full_n = 1'b1;

assign Loop_realfft_be_rev_U0_start_write = 1'b0;

assign Loop_realfft_be_stre_U0_ap_continue = 1'b1;

assign Loop_realfft_be_stre_U0_ap_start = start_for_Loop_realfft_be_stre_U0_empty_n;

assign Loop_realfft_be_stre_U0_start_full_n = 1'b1;

assign Loop_realfft_be_stre_U0_start_write = 1'b0;

assign ap_channel_done_descramble_buf_0_M = ((ap_sync_reg_channel_write_descramble_buf_0_M ^ 1'b1) & Loop_realfft_be_buff_U0_ap_done);

assign ap_channel_done_descramble_buf_0_M_1 = ((ap_sync_reg_channel_write_descramble_buf_0_M_1 ^ 1'b1) & Loop_realfft_be_buff_U0_ap_done);

assign ap_channel_done_descramble_buf_1_M = ((ap_sync_reg_channel_write_descramble_buf_1_M ^ 1'b1) & Loop_realfft_be_buff_U0_ap_done);

assign ap_channel_done_descramble_buf_1_M_1 = ((ap_sync_reg_channel_write_descramble_buf_1_M_1 ^ 1'b1) & Loop_realfft_be_buff_U0_ap_done);

assign ap_channel_done_real_spectrum_hi_buf = ((ap_sync_reg_channel_write_real_spectrum_hi_buf ^ 1'b1) & Loop_realfft_be_desc_U0_ap_done);

assign ap_channel_done_real_spectrum_hi_buf_1 = ((ap_sync_reg_channel_write_real_spectrum_hi_buf_1 ^ 1'b1) & Loop_realfft_be_desc_U0_ap_done);

assign ap_done = Loop_realfft_be_stre_U0_ap_done;

assign ap_idle = ((real_spectrum_hi_buf_1_t_empty_n ^ 1'b1) & (real_spectrum_hi_buf_t_empty_n ^ 1'b1) & (descramble_buf_1_M_t_empty_n ^ 1'b1) & (descramble_buf_0_M_t_empty_n ^ 1'b1) & (descramble_buf_1_M_1_t_empty_n ^ 1'b1) & (descramble_buf_0_M_1_t_empty_n ^ 1'b1) & Loop_realfft_be_stre_U0_ap_idle & Loop_realfft_be_rev_U0_ap_idle & Loop_realfft_be_desc_U0_ap_idle & Loop_realfft_be_buff_U0_ap_idle);

assign ap_ready = Loop_realfft_be_buff_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_channel_write_descramble_buf_0_M = ((ap_channel_done_descramble_buf_0_M & Loop_realfft_be_buff_U0_descramble_buf_0_M_real_V_full_n) | ap_sync_reg_channel_write_descramble_buf_0_M);

assign ap_sync_channel_write_descramble_buf_0_M_1 = ((ap_channel_done_descramble_buf_0_M_1 & Loop_realfft_be_buff_U0_descramble_buf_0_M_imag_V_full_n) | ap_sync_reg_channel_write_descramble_buf_0_M_1);

assign ap_sync_channel_write_descramble_buf_1_M = ((ap_channel_done_descramble_buf_1_M & Loop_realfft_be_buff_U0_descramble_buf_1_M_real_V_full_n) | ap_sync_reg_channel_write_descramble_buf_1_M);

assign ap_sync_channel_write_descramble_buf_1_M_1 = ((ap_channel_done_descramble_buf_1_M_1 & Loop_realfft_be_buff_U0_descramble_buf_1_M_imag_V_full_n) | ap_sync_reg_channel_write_descramble_buf_1_M_1);

assign ap_sync_channel_write_real_spectrum_hi_buf = ((ap_channel_done_real_spectrum_hi_buf & Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_0_full_n) | ap_sync_reg_channel_write_real_spectrum_hi_buf);

assign ap_sync_channel_write_real_spectrum_hi_buf_1 = ((ap_channel_done_real_spectrum_hi_buf_1 & Loop_realfft_be_desc_U0_real_spectrum_hi_buf_i_1_full_n) | ap_sync_reg_channel_write_real_spectrum_hi_buf_1);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_realfft_be_stre_U0_ap_done;

assign ap_sync_ready = Loop_realfft_be_buff_U0_ap_ready;

assign descramble_buf_1_M_1_t_d1 = 16'd0;

assign descramble_buf_1_M_1_t_we1 = 1'b0;

assign descramble_buf_1_M_t_d1 = 16'd0;

assign descramble_buf_1_M_t_we1 = 1'b0;

assign din_TREADY = Loop_realfft_be_buff_U0_din_TREADY;

assign dout_TDATA = Loop_realfft_be_stre_U0_dout_TDATA;

assign dout_TLAST = Loop_realfft_be_stre_U0_dout_TLAST;

assign dout_TVALID = Loop_realfft_be_stre_U0_dout_TVALID;

assign start_for_Loop_realfft_be_stre_U0_din = 1'b1;

endmodule //hls_xfft2real
