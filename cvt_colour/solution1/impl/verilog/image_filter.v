// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4_AR70530_AR70530
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="image_filter,hls_ip_2017_4_AR70530_AR70530,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=9.400000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=932,HLS_SYN_LUT=2323}" *)

module image_filter (
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST,
        rows,
        cols,
        ap_clk,
        ap_rst_n,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input  [31:0] INPUT_STREAM_TDATA;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [31:0] OUTPUT_STREAM_TDATA;
output  [3:0] OUTPUT_STREAM_TKEEP;
output  [3:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;
input  [31:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst_n;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

reg    ap_rst_n_inv;
wire    Block_Mat_exit47_pro_U0_ap_start;
wire    Block_Mat_exit47_pro_U0_start_full_n;
wire    Block_Mat_exit47_pro_U0_ap_done;
wire    Block_Mat_exit47_pro_U0_ap_continue;
wire    Block_Mat_exit47_pro_U0_ap_idle;
wire    Block_Mat_exit47_pro_U0_ap_ready;
wire    Block_Mat_exit47_pro_U0_start_out;
wire    Block_Mat_exit47_pro_U0_start_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_0_rows_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_0_rows_V_out_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_0_cols_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_0_cols_V_out_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_1_rows_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_1_rows_V_out_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_1_cols_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_1_cols_V_out_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_2_rows_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_2_rows_V_out_write;
wire   [31:0] Block_Mat_exit47_pro_U0_img_2_cols_V_out_din;
wire    Block_Mat_exit47_pro_U0_img_2_cols_V_out_write;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_start_out;
wire    AXIvideo2Mat_U0_start_write;
wire    AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
wire    AXIvideo2Mat_U0_img_rows_V_read;
wire    AXIvideo2Mat_U0_img_cols_V_read;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire   [31:0] AXIvideo2Mat_U0_img_rows_V_out_din;
wire    AXIvideo2Mat_U0_img_rows_V_out_write;
wire   [31:0] AXIvideo2Mat_U0_img_cols_V_out_din;
wire    AXIvideo2Mat_U0_img_cols_V_out_write;
wire    CvtColor_1_U0_ap_start;
wire    CvtColor_1_U0_ap_done;
wire    CvtColor_1_U0_ap_continue;
wire    CvtColor_1_U0_ap_idle;
wire    CvtColor_1_U0_ap_ready;
wire    CvtColor_1_U0_p_src_rows_V_read;
wire    CvtColor_1_U0_p_src_cols_V_read;
wire    CvtColor_1_U0_p_src_data_stream_0_V_read;
wire    CvtColor_1_U0_p_src_data_stream_1_V_read;
wire    CvtColor_1_U0_p_src_data_stream_2_V_read;
wire   [7:0] CvtColor_1_U0_p_dst_data_stream_V_din;
wire    CvtColor_1_U0_p_dst_data_stream_V_write;
wire    CvtColor_U0_ap_start;
wire    CvtColor_U0_ap_done;
wire    CvtColor_U0_ap_continue;
wire    CvtColor_U0_ap_idle;
wire    CvtColor_U0_ap_ready;
wire    CvtColor_U0_p_src_rows_V_read;
wire    CvtColor_U0_p_src_cols_V_read;
wire    CvtColor_U0_p_src_data_stream_V_read;
wire   [7:0] CvtColor_U0_p_dst_data_stream_0_V_din;
wire    CvtColor_U0_p_dst_data_stream_0_V_write;
wire   [7:0] CvtColor_U0_p_dst_data_stream_1_V_din;
wire    CvtColor_U0_p_dst_data_stream_1_V_write;
wire   [7:0] CvtColor_U0_p_dst_data_stream_2_V_din;
wire    CvtColor_U0_p_dst_data_stream_2_V_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_rows_V_read;
wire    Mat2AXIvideo_U0_img_cols_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [31:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
wire    Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
wire    ap_sync_continue;
wire    img_0_rows_V_c_full_n;
wire   [31:0] img_0_rows_V_c_dout;
wire    img_0_rows_V_c_empty_n;
wire    img_0_cols_V_c_full_n;
wire   [31:0] img_0_cols_V_c_dout;
wire    img_0_cols_V_c_empty_n;
wire    img_1_rows_V_c_full_n;
wire   [31:0] img_1_rows_V_c_dout;
wire    img_1_rows_V_c_empty_n;
wire    img_1_cols_V_c_full_n;
wire   [31:0] img_1_cols_V_c_dout;
wire    img_1_cols_V_c_empty_n;
wire    img_2_rows_V_c_full_n;
wire   [31:0] img_2_rows_V_c_dout;
wire    img_2_rows_V_c_empty_n;
wire    img_2_cols_V_c_full_n;
wire   [31:0] img_2_cols_V_c_dout;
wire    img_2_cols_V_c_empty_n;
wire    img_0_data_stream_0_full_n;
wire   [7:0] img_0_data_stream_0_dout;
wire    img_0_data_stream_0_empty_n;
wire    img_0_data_stream_1_full_n;
wire   [7:0] img_0_data_stream_1_dout;
wire    img_0_data_stream_1_empty_n;
wire    img_0_data_stream_2_full_n;
wire   [7:0] img_0_data_stream_2_dout;
wire    img_0_data_stream_2_empty_n;
wire    img_0_rows_V_c17_full_n;
wire   [31:0] img_0_rows_V_c17_dout;
wire    img_0_rows_V_c17_empty_n;
wire    img_0_cols_V_c18_full_n;
wire   [31:0] img_0_cols_V_c18_dout;
wire    img_0_cols_V_c18_empty_n;
wire    img_1_data_stream_0_full_n;
wire   [7:0] img_1_data_stream_0_dout;
wire    img_1_data_stream_0_empty_n;
wire    img_2_data_stream_0_full_n;
wire   [7:0] img_2_data_stream_0_dout;
wire    img_2_data_stream_0_empty_n;
wire    img_2_data_stream_1_full_n;
wire   [7:0] img_2_data_stream_1_dout;
wire    img_2_data_stream_1_empty_n;
wire    img_2_data_stream_2_full_n;
wire   [7:0] img_2_data_stream_2_dout;
wire    img_2_data_stream_2_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_AXIvideo2Mat_U0_ap_ready;
wire    ap_sync_AXIvideo2Mat_U0_ap_ready;
reg   [1:0] AXIvideo2Mat_U0_ap_ready_count;
reg    ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready;
wire    ap_sync_Block_Mat_exit47_pro_U0_ap_ready;
reg   [1:0] Block_Mat_exit47_pro_U0_ap_ready_count;
wire   [0:0] start_for_CvtColor_U0_din;
wire    start_for_CvtColor_U0_full_n;
wire   [0:0] start_for_CvtColor_U0_dout;
wire    start_for_CvtColor_U0_empty_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire   [0:0] start_for_CvtColor_1_U0_din;
wire    start_for_CvtColor_1_U0_full_n;
wire   [0:0] start_for_CvtColor_1_U0_dout;
wire    start_for_CvtColor_1_U0_empty_n;
wire    CvtColor_1_U0_start_full_n;
wire    CvtColor_1_U0_start_write;
wire    CvtColor_U0_start_full_n;
wire    CvtColor_U0_start_write;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_AXIvideo2Mat_U0_ap_ready = 1'b0;
#0 AXIvideo2Mat_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready = 1'b0;
#0 Block_Mat_exit47_pro_U0_ap_ready_count = 2'd0;
end

Block_Mat_exit47_pro Block_Mat_exit47_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Mat_exit47_pro_U0_ap_start),
    .start_full_n(Block_Mat_exit47_pro_U0_start_full_n),
    .ap_done(Block_Mat_exit47_pro_U0_ap_done),
    .ap_continue(Block_Mat_exit47_pro_U0_ap_continue),
    .ap_idle(Block_Mat_exit47_pro_U0_ap_idle),
    .ap_ready(Block_Mat_exit47_pro_U0_ap_ready),
    .start_out(Block_Mat_exit47_pro_U0_start_out),
    .start_write(Block_Mat_exit47_pro_U0_start_write),
    .rows(rows),
    .cols(cols),
    .img_0_rows_V_out_din(Block_Mat_exit47_pro_U0_img_0_rows_V_out_din),
    .img_0_rows_V_out_full_n(img_0_rows_V_c_full_n),
    .img_0_rows_V_out_write(Block_Mat_exit47_pro_U0_img_0_rows_V_out_write),
    .img_0_cols_V_out_din(Block_Mat_exit47_pro_U0_img_0_cols_V_out_din),
    .img_0_cols_V_out_full_n(img_0_cols_V_c_full_n),
    .img_0_cols_V_out_write(Block_Mat_exit47_pro_U0_img_0_cols_V_out_write),
    .img_1_rows_V_out_din(Block_Mat_exit47_pro_U0_img_1_rows_V_out_din),
    .img_1_rows_V_out_full_n(img_1_rows_V_c_full_n),
    .img_1_rows_V_out_write(Block_Mat_exit47_pro_U0_img_1_rows_V_out_write),
    .img_1_cols_V_out_din(Block_Mat_exit47_pro_U0_img_1_cols_V_out_din),
    .img_1_cols_V_out_full_n(img_1_cols_V_c_full_n),
    .img_1_cols_V_out_write(Block_Mat_exit47_pro_U0_img_1_cols_V_out_write),
    .img_2_rows_V_out_din(Block_Mat_exit47_pro_U0_img_2_rows_V_out_din),
    .img_2_rows_V_out_full_n(img_2_rows_V_c_full_n),
    .img_2_rows_V_out_write(Block_Mat_exit47_pro_U0_img_2_rows_V_out_write),
    .img_2_cols_V_out_din(Block_Mat_exit47_pro_U0_img_2_cols_V_out_din),
    .img_2_cols_V_out_full_n(img_2_cols_V_c_full_n),
    .img_2_cols_V_out_write(Block_Mat_exit47_pro_U0_img_2_cols_V_out_write)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .start_full_n(start_for_CvtColor_1_U0_full_n),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .start_out(AXIvideo2Mat_U0_start_out),
    .start_write(AXIvideo2Mat_U0_start_write),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(AXIvideo2Mat_U0_INPUT_STREAM_TREADY),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .img_rows_V_dout(img_0_rows_V_c_dout),
    .img_rows_V_empty_n(img_0_rows_V_c_empty_n),
    .img_rows_V_read(AXIvideo2Mat_U0_img_rows_V_read),
    .img_cols_V_dout(img_0_cols_V_c_dout),
    .img_cols_V_empty_n(img_0_cols_V_c_empty_n),
    .img_cols_V_read(AXIvideo2Mat_U0_img_cols_V_read),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_0_data_stream_0_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_0_data_stream_1_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_0_data_stream_2_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .img_rows_V_out_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_0_rows_V_c17_full_n),
    .img_rows_V_out_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_0_cols_V_c18_full_n),
    .img_cols_V_out_write(AXIvideo2Mat_U0_img_cols_V_out_write)
);

CvtColor_1 CvtColor_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(CvtColor_1_U0_ap_start),
    .ap_done(CvtColor_1_U0_ap_done),
    .ap_continue(CvtColor_1_U0_ap_continue),
    .ap_idle(CvtColor_1_U0_ap_idle),
    .ap_ready(CvtColor_1_U0_ap_ready),
    .p_src_rows_V_dout(img_0_rows_V_c17_dout),
    .p_src_rows_V_empty_n(img_0_rows_V_c17_empty_n),
    .p_src_rows_V_read(CvtColor_1_U0_p_src_rows_V_read),
    .p_src_cols_V_dout(img_0_cols_V_c18_dout),
    .p_src_cols_V_empty_n(img_0_cols_V_c18_empty_n),
    .p_src_cols_V_read(CvtColor_1_U0_p_src_cols_V_read),
    .p_src_data_stream_0_V_dout(img_0_data_stream_0_dout),
    .p_src_data_stream_0_V_empty_n(img_0_data_stream_0_empty_n),
    .p_src_data_stream_0_V_read(CvtColor_1_U0_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(img_0_data_stream_1_dout),
    .p_src_data_stream_1_V_empty_n(img_0_data_stream_1_empty_n),
    .p_src_data_stream_1_V_read(CvtColor_1_U0_p_src_data_stream_1_V_read),
    .p_src_data_stream_2_V_dout(img_0_data_stream_2_dout),
    .p_src_data_stream_2_V_empty_n(img_0_data_stream_2_empty_n),
    .p_src_data_stream_2_V_read(CvtColor_1_U0_p_src_data_stream_2_V_read),
    .p_dst_data_stream_V_din(CvtColor_1_U0_p_dst_data_stream_V_din),
    .p_dst_data_stream_V_full_n(img_1_data_stream_0_full_n),
    .p_dst_data_stream_V_write(CvtColor_1_U0_p_dst_data_stream_V_write)
);

CvtColor CvtColor_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(CvtColor_U0_ap_start),
    .ap_done(CvtColor_U0_ap_done),
    .ap_continue(CvtColor_U0_ap_continue),
    .ap_idle(CvtColor_U0_ap_idle),
    .ap_ready(CvtColor_U0_ap_ready),
    .p_src_rows_V_dout(img_1_rows_V_c_dout),
    .p_src_rows_V_empty_n(img_1_rows_V_c_empty_n),
    .p_src_rows_V_read(CvtColor_U0_p_src_rows_V_read),
    .p_src_cols_V_dout(img_1_cols_V_c_dout),
    .p_src_cols_V_empty_n(img_1_cols_V_c_empty_n),
    .p_src_cols_V_read(CvtColor_U0_p_src_cols_V_read),
    .p_src_data_stream_V_dout(img_1_data_stream_0_dout),
    .p_src_data_stream_V_empty_n(img_1_data_stream_0_empty_n),
    .p_src_data_stream_V_read(CvtColor_U0_p_src_data_stream_V_read),
    .p_dst_data_stream_0_V_din(CvtColor_U0_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(img_2_data_stream_0_full_n),
    .p_dst_data_stream_0_V_write(CvtColor_U0_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(CvtColor_U0_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(img_2_data_stream_1_full_n),
    .p_dst_data_stream_1_V_write(CvtColor_U0_p_dst_data_stream_1_V_write),
    .p_dst_data_stream_2_V_din(CvtColor_U0_p_dst_data_stream_2_V_din),
    .p_dst_data_stream_2_V_full_n(img_2_data_stream_2_full_n),
    .p_dst_data_stream_2_V_write(CvtColor_U0_p_dst_data_stream_2_V_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_rows_V_dout(img_2_rows_V_c_dout),
    .img_rows_V_empty_n(img_2_rows_V_c_empty_n),
    .img_rows_V_read(Mat2AXIvideo_U0_img_rows_V_read),
    .img_cols_V_dout(img_2_cols_V_c_dout),
    .img_cols_V_empty_n(img_2_cols_V_c_empty_n),
    .img_cols_V_read(Mat2AXIvideo_U0_img_cols_V_read),
    .img_data_stream_0_V_dout(img_2_data_stream_0_dout),
    .img_data_stream_0_V_empty_n(img_2_data_stream_0_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_2_data_stream_1_dout),
    .img_data_stream_1_V_empty_n(img_2_data_stream_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_2_data_stream_2_dout),
    .img_data_stream_2_V_empty_n(img_2_data_stream_2_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .OUTPUT_STREAM_TDATA(Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TVALID(Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TKEEP(Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(Mat2AXIvideo_U0_OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST)
);

fifo_w32_d1_A img_0_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_0_rows_V_out_din),
    .if_full_n(img_0_rows_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_0_rows_V_out_write),
    .if_dout(img_0_rows_V_c_dout),
    .if_empty_n(img_0_rows_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_rows_V_read)
);

fifo_w32_d1_A img_0_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_0_cols_V_out_din),
    .if_full_n(img_0_cols_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_0_cols_V_out_write),
    .if_dout(img_0_cols_V_c_dout),
    .if_empty_n(img_0_cols_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_cols_V_read)
);

fifo_w32_d3_A img_1_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_1_rows_V_out_din),
    .if_full_n(img_1_rows_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_1_rows_V_out_write),
    .if_dout(img_1_rows_V_c_dout),
    .if_empty_n(img_1_rows_V_c_empty_n),
    .if_read(CvtColor_U0_p_src_rows_V_read)
);

fifo_w32_d3_A img_1_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_1_cols_V_out_din),
    .if_full_n(img_1_cols_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_1_cols_V_out_write),
    .if_dout(img_1_cols_V_c_dout),
    .if_empty_n(img_1_cols_V_c_empty_n),
    .if_read(CvtColor_U0_p_src_cols_V_read)
);

fifo_w32_d4_A img_2_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_2_rows_V_out_din),
    .if_full_n(img_2_rows_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_2_rows_V_out_write),
    .if_dout(img_2_rows_V_c_dout),
    .if_empty_n(img_2_rows_V_c_empty_n),
    .if_read(Mat2AXIvideo_U0_img_rows_V_read)
);

fifo_w32_d4_A img_2_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit47_pro_U0_img_2_cols_V_out_din),
    .if_full_n(img_2_cols_V_c_full_n),
    .if_write(Block_Mat_exit47_pro_U0_img_2_cols_V_out_write),
    .if_dout(img_2_cols_V_c_dout),
    .if_empty_n(img_2_cols_V_c_empty_n),
    .if_read(Mat2AXIvideo_U0_img_cols_V_read)
);

fifo_w8_d1_A img_0_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_0_data_stream_0_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_0_data_stream_0_dout),
    .if_empty_n(img_0_data_stream_0_empty_n),
    .if_read(CvtColor_1_U0_p_src_data_stream_0_V_read)
);

fifo_w8_d1_A img_0_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_0_data_stream_1_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_0_data_stream_1_dout),
    .if_empty_n(img_0_data_stream_1_empty_n),
    .if_read(CvtColor_1_U0_p_src_data_stream_1_V_read)
);

fifo_w8_d1_A img_0_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_0_data_stream_2_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(img_0_data_stream_2_dout),
    .if_empty_n(img_0_data_stream_2_empty_n),
    .if_read(CvtColor_1_U0_p_src_data_stream_2_V_read)
);

fifo_w32_d1_A img_0_rows_V_c17_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .if_full_n(img_0_rows_V_c17_full_n),
    .if_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .if_dout(img_0_rows_V_c17_dout),
    .if_empty_n(img_0_rows_V_c17_empty_n),
    .if_read(CvtColor_1_U0_p_src_rows_V_read)
);

fifo_w32_d1_A img_0_cols_V_c18_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .if_full_n(img_0_cols_V_c18_full_n),
    .if_write(AXIvideo2Mat_U0_img_cols_V_out_write),
    .if_dout(img_0_cols_V_c18_dout),
    .if_empty_n(img_0_cols_V_c18_empty_n),
    .if_read(CvtColor_1_U0_p_src_cols_V_read)
);

fifo_w8_d1_A img_1_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_1_U0_p_dst_data_stream_V_din),
    .if_full_n(img_1_data_stream_0_full_n),
    .if_write(CvtColor_1_U0_p_dst_data_stream_V_write),
    .if_dout(img_1_data_stream_0_dout),
    .if_empty_n(img_1_data_stream_0_empty_n),
    .if_read(CvtColor_U0_p_src_data_stream_V_read)
);

fifo_w8_d1_A img_2_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_U0_p_dst_data_stream_0_V_din),
    .if_full_n(img_2_data_stream_0_full_n),
    .if_write(CvtColor_U0_p_dst_data_stream_0_V_write),
    .if_dout(img_2_data_stream_0_dout),
    .if_empty_n(img_2_data_stream_0_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d1_A img_2_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_U0_p_dst_data_stream_1_V_din),
    .if_full_n(img_2_data_stream_1_full_n),
    .if_write(CvtColor_U0_p_dst_data_stream_1_V_write),
    .if_dout(img_2_data_stream_1_dout),
    .if_empty_n(img_2_data_stream_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d1_A img_2_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_U0_p_dst_data_stream_2_V_din),
    .if_full_n(img_2_data_stream_2_full_n),
    .if_write(CvtColor_U0_p_dst_data_stream_2_V_write),
    .if_dout(img_2_data_stream_2_dout),
    .if_empty_n(img_2_data_stream_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

start_for_CvtColoeOg start_for_CvtColoeOg_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_CvtColor_U0_din),
    .if_full_n(start_for_CvtColor_U0_full_n),
    .if_write(Block_Mat_exit47_pro_U0_start_write),
    .if_dout(start_for_CvtColor_U0_dout),
    .if_empty_n(start_for_CvtColor_U0_empty_n),
    .if_read(CvtColor_U0_ap_ready)
);

start_for_Mat2AXIfYi start_for_Mat2AXIfYi_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(Block_Mat_exit47_pro_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

start_for_CvtColog8j start_for_CvtColog8j_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_CvtColor_1_U0_din),
    .if_full_n(start_for_CvtColor_1_U0_full_n),
    .if_write(AXIvideo2Mat_U0_start_write),
    .if_dout(start_for_CvtColor_1_U0_dout),
    .if_empty_n(start_for_CvtColor_1_U0_empty_n),
    .if_read(CvtColor_1_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_sync_AXIvideo2Mat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready <= ap_sync_Block_Mat_exit47_pro_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == AXIvideo2Mat_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == AXIvideo2Mat_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == Block_Mat_exit47_pro_U0_ap_ready))) begin
        Block_Mat_exit47_pro_U0_ap_ready_count <= (Block_Mat_exit47_pro_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == Block_Mat_exit47_pro_U0_ap_ready))) begin
        Block_Mat_exit47_pro_U0_ap_ready_count <= (Block_Mat_exit47_pro_U0_ap_ready_count + 2'd1);
    end
end

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = ((ap_sync_reg_AXIvideo2Mat_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_Mat_exit47_pro_U0_ap_continue = 1'b1;

assign Block_Mat_exit47_pro_U0_ap_start = ((ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_Mat_exit47_pro_U0_start_full_n = (start_for_Mat2AXIvideo_U0_full_n & start_for_CvtColor_U0_full_n);

assign CvtColor_1_U0_ap_continue = 1'b1;

assign CvtColor_1_U0_ap_start = start_for_CvtColor_1_U0_empty_n;

assign CvtColor_1_U0_start_full_n = 1'b1;

assign CvtColor_1_U0_start_write = 1'b0;

assign CvtColor_U0_ap_continue = 1'b1;

assign CvtColor_U0_ap_start = start_for_CvtColor_U0_empty_n;

assign CvtColor_U0_start_full_n = 1'b1;

assign CvtColor_U0_start_write = 1'b0;

assign INPUT_STREAM_TREADY = AXIvideo2Mat_U0_INPUT_STREAM_TREADY;

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign OUTPUT_STREAM_TDATA = Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;

assign OUTPUT_STREAM_TDEST = Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;

assign OUTPUT_STREAM_TID = Mat2AXIvideo_U0_OUTPUT_STREAM_TID;

assign OUTPUT_STREAM_TKEEP = Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;

assign OUTPUT_STREAM_TLAST = Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;

assign OUTPUT_STREAM_TSTRB = Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;

assign OUTPUT_STREAM_TUSER = Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;

assign OUTPUT_STREAM_TVALID = Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (Mat2AXIvideo_U0_ap_idle & CvtColor_U0_ap_idle & CvtColor_1_U0_ap_idle & Block_Mat_exit47_pro_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_AXIvideo2Mat_U0_ap_ready = (ap_sync_reg_AXIvideo2Mat_U0_ap_ready | AXIvideo2Mat_U0_ap_ready);

assign ap_sync_Block_Mat_exit47_pro_U0_ap_ready = (ap_sync_reg_Block_Mat_exit47_pro_U0_ap_ready | Block_Mat_exit47_pro_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = (ap_sync_Block_Mat_exit47_pro_U0_ap_ready & ap_sync_AXIvideo2Mat_U0_ap_ready);

assign start_for_CvtColor_1_U0_din = 1'b1;

assign start_for_CvtColor_U0_din = 1'b1;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

endmodule //image_filter
