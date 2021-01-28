// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module imDiff (
        imINPUT_address0,
        imINPUT_ce0,
        imINPUT_d0,
        imINPUT_q0,
        imINPUT_we0,
        imINPUT_address1,
        imINPUT_ce1,
        imINPUT_d1,
        imINPUT_q1,
        imINPUT_we1,
        imHeight,
        imWidth,
        tplINPUT_address0,
        tplINPUT_ce0,
        tplINPUT_d0,
        tplINPUT_q0,
        tplINPUT_we0,
        tplINPUT_address1,
        tplINPUT_ce1,
        tplINPUT_d1,
        tplINPUT_q1,
        tplINPUT_we1,
        tplHeight,
        tplWidth,
        output_struct_x,
        output_struct_y,
        output_struct_SAD,
        ap_clk,
        ap_rst,
        imHeight_ap_vld,
        tplHeight_ap_vld,
        imWidth_ap_vld,
        tplWidth_ap_vld,
        output_struct_y_ap_vld,
        output_struct_x_ap_vld,
        output_struct_SAD_ap_vld,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle,
        ap_continue
);

parameter    ap_const_lv21_0 = 21'b000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv11_0 = 11'b00000000000;

output  [20:0] imINPUT_address0;
output   imINPUT_ce0;
output  [31:0] imINPUT_d0;
input  [31:0] imINPUT_q0;
output   imINPUT_we0;
output  [20:0] imINPUT_address1;
output   imINPUT_ce1;
output  [31:0] imINPUT_d1;
input  [31:0] imINPUT_q1;
output   imINPUT_we1;
input  [31:0] imHeight;
input  [31:0] imWidth;
output  [20:0] tplINPUT_address0;
output   tplINPUT_ce0;
output  [31:0] tplINPUT_d0;
input  [31:0] tplINPUT_q0;
output   tplINPUT_we0;
output  [20:0] tplINPUT_address1;
output   tplINPUT_ce1;
output  [31:0] tplINPUT_d1;
input  [31:0] tplINPUT_q1;
output   tplINPUT_we1;
input  [31:0] tplHeight;
input  [31:0] tplWidth;
output  [10:0] output_struct_x;
output  [10:0] output_struct_y;
output  [31:0] output_struct_SAD;
input   ap_clk;
input   ap_rst;
input   imHeight_ap_vld;
input   tplHeight_ap_vld;
input   imWidth_ap_vld;
input   tplWidth_ap_vld;
output   output_struct_y_ap_vld;
output   output_struct_x_ap_vld;
output   output_struct_SAD_ap_vld;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    imDiff_Loop_L66_proc_U0_ap_start;
wire    imDiff_Loop_L66_proc_U0_ap_done;
wire    imDiff_Loop_L66_proc_U0_ap_continue;
wire    imDiff_Loop_L66_proc_U0_ap_idle;
wire    imDiff_Loop_L66_proc_U0_ap_ready;
wire   [20:0] imDiff_Loop_L66_proc_U0_imINPUT_address0;
wire    imDiff_Loop_L66_proc_U0_imINPUT_ce0;
wire   [20:0] imDiff_Loop_L66_proc_U0_tplINPUT_address0;
wire    imDiff_Loop_L66_proc_U0_tplINPUT_ce0;
wire   [10:0] imDiff_Loop_L66_proc_U0_output_struct_y;
wire    imDiff_Loop_L66_proc_U0_output_struct_y_ap_vld;
wire   [10:0] imDiff_Loop_L66_proc_U0_output_struct_x;
wire    imDiff_Loop_L66_proc_U0_output_struct_x_ap_vld;
wire   [31:0] imDiff_Loop_L66_proc_U0_output_struct_SAD;
wire    imDiff_Loop_L66_proc_U0_output_struct_SAD_ap_vld;
wire    ap_hs_continue;
wire    ap_hs_done;
wire    ap_hs_ready;

imDiff_Loop_L66_proc imDiff_Loop_L66_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(imDiff_Loop_L66_proc_U0_ap_start),
    .ap_done(imDiff_Loop_L66_proc_U0_ap_done),
    .ap_continue(imDiff_Loop_L66_proc_U0_ap_continue),
    .ap_idle(imDiff_Loop_L66_proc_U0_ap_idle),
    .ap_ready(imDiff_Loop_L66_proc_U0_ap_ready),
    .imHeight(imHeight),
    .tplHeight(tplHeight),
    .imWidth(imWidth),
    .tplWidth(tplWidth),
    .imINPUT_address0(imDiff_Loop_L66_proc_U0_imINPUT_address0),
    .imINPUT_ce0(imDiff_Loop_L66_proc_U0_imINPUT_ce0),
    .imINPUT_q0(imINPUT_q0),
    .tplINPUT_address0(imDiff_Loop_L66_proc_U0_tplINPUT_address0),
    .tplINPUT_ce0(imDiff_Loop_L66_proc_U0_tplINPUT_ce0),
    .tplINPUT_q0(tplINPUT_q0),
    .output_struct_y(imDiff_Loop_L66_proc_U0_output_struct_y),
    .output_struct_y_ap_vld(imDiff_Loop_L66_proc_U0_output_struct_y_ap_vld),
    .output_struct_x(imDiff_Loop_L66_proc_U0_output_struct_x),
    .output_struct_x_ap_vld(imDiff_Loop_L66_proc_U0_output_struct_x_ap_vld),
    .output_struct_SAD(imDiff_Loop_L66_proc_U0_output_struct_SAD),
    .output_struct_SAD_ap_vld(imDiff_Loop_L66_proc_U0_output_struct_SAD_ap_vld)
);

assign ap_done = imDiff_Loop_L66_proc_U0_ap_done;

assign ap_hs_continue = ap_continue;

assign ap_hs_done = imDiff_Loop_L66_proc_U0_ap_done;

assign ap_hs_ready = imDiff_Loop_L66_proc_U0_ap_ready;

assign ap_idle = imDiff_Loop_L66_proc_U0_ap_idle;

assign ap_ready = imDiff_Loop_L66_proc_U0_ap_ready;

assign imDiff_Loop_L66_proc_U0_ap_continue = ap_continue;

assign imDiff_Loop_L66_proc_U0_ap_start = ap_start;

assign imINPUT_address0 = imDiff_Loop_L66_proc_U0_imINPUT_address0;

assign imINPUT_address1 = ap_const_lv21_0;

assign imINPUT_ce0 = imDiff_Loop_L66_proc_U0_imINPUT_ce0;

assign imINPUT_ce1 = 1'b0;

assign imINPUT_d0 = ap_const_lv32_0;

assign imINPUT_d1 = ap_const_lv32_0;

assign imINPUT_we0 = 1'b0;

assign imINPUT_we1 = 1'b0;

assign output_struct_SAD = imDiff_Loop_L66_proc_U0_output_struct_SAD;

assign output_struct_SAD_ap_vld = imDiff_Loop_L66_proc_U0_output_struct_SAD_ap_vld;

assign output_struct_x = imDiff_Loop_L66_proc_U0_output_struct_x;

assign output_struct_x_ap_vld = imDiff_Loop_L66_proc_U0_output_struct_x_ap_vld;

assign output_struct_y = imDiff_Loop_L66_proc_U0_output_struct_y;

assign output_struct_y_ap_vld = imDiff_Loop_L66_proc_U0_output_struct_y_ap_vld;

assign tplINPUT_address0 = imDiff_Loop_L66_proc_U0_tplINPUT_address0;

assign tplINPUT_address1 = ap_const_lv21_0;

assign tplINPUT_ce0 = imDiff_Loop_L66_proc_U0_tplINPUT_ce0;

assign tplINPUT_ce1 = 1'b0;

assign tplINPUT_d0 = ap_const_lv32_0;

assign tplINPUT_d1 = ap_const_lv32_0;

assign tplINPUT_we0 = 1'b0;

assign tplINPUT_we1 = 1'b0;

endmodule //imDiff