// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module LeNet_sigmoid (
        ap_clk,
        ap_rst,
        x,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [15:0] x;
output  [15:0] ap_return;

wire   [0:0] icmp_ln988_fu_132_p2;
reg   [0:0] icmp_ln988_reg_727;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
wire    ap_block_state21_pp0_stage0_iter20;
wire    ap_block_state22_pp0_stage0_iter21;
wire    ap_block_state23_pp0_stage0_iter22;
wire    ap_block_state24_pp0_stage0_iter23;
wire    ap_block_state25_pp0_stage0_iter24;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] p_Result_10_fu_138_p3;
reg   [0:0] p_Result_10_reg_732;
reg   [62:0] m_4_reg_737;
reg   [0:0] p_Result_5_reg_742;
wire   [7:0] trunc_ln996_fu_368_p1;
reg   [7:0] trunc_ln996_reg_747;
wire   [31:0] grp_fu_121_p2;
reg   [31:0] tmp_reg_757;
wire   [31:0] grp_fu_108_p2;
reg   [31:0] add_reg_762;
wire   [31:0] grp_fu_113_p2;
reg   [31:0] v_assign_reg_767;
reg   [31:0] v_assign_reg_767_pp0_iter22_reg;
reg   [31:0] v_assign_reg_767_pp0_iter23_reg;
reg   [0:0] p_Result_13_reg_773;
reg   [10:0] exp_tmp_reg_779;
wire   [51:0] trunc_ln574_fu_454_p1;
reg   [51:0] trunc_ln574_reg_784;
wire   [0:0] icmp_ln580_fu_458_p2;
reg   [0:0] icmp_ln580_reg_789;
wire    ap_block_pp0_stage0;
wire   [31:0] grp_fu_121_p1;
wire   [15:0] neg_x_fu_126_p2;
wire   [15:0] tmp_V_fu_146_p3;
reg   [15:0] p_Result_s_fu_154_p4;
wire   [31:0] p_Result_11_fu_164_p3;
reg   [31:0] l_fu_172_p3;
wire   [31:0] sub_ln997_fu_180_p2;
wire   [31:0] lsb_index_fu_190_p2;
wire   [30:0] tmp_3_fu_196_p4;
wire   [4:0] trunc_ln1000_fu_212_p1;
wire   [4:0] sub_ln1000_fu_216_p2;
wire   [15:0] zext_ln1000_fu_222_p1;
wire   [15:0] lshr_ln1000_fu_226_p2;
wire   [15:0] p_Result_4_fu_232_p2;
wire   [0:0] tmp_4_fu_244_p3;
wire   [0:0] icmp_ln999_fu_206_p2;
wire   [0:0] icmp_ln1000_fu_238_p2;
wire   [15:0] trunc_ln997_fu_186_p1;
wire   [15:0] add_ln1002_fu_264_p2;
wire   [0:0] p_Result_3_fu_270_p3;
wire   [0:0] and_ln999_fu_258_p2;
wire   [31:0] add_ln1011_fu_294_p2;
wire   [63:0] zext_ln1010_fu_284_p1;
wire   [63:0] zext_ln1011_fu_300_p1;
wire   [31:0] sub_ln1012_fu_310_p2;
wire   [63:0] zext_ln1012_fu_316_p1;
wire   [0:0] a_fu_278_p2;
wire   [0:0] xor_ln1002_fu_252_p2;
wire   [0:0] icmp_ln1011_fu_288_p2;
wire   [63:0] lshr_ln1011_fu_304_p2;
wire   [63:0] shl_ln1012_fu_320_p2;
wire   [0:0] and_ln1002_fu_326_p2;
wire   [63:0] m_2_fu_332_p3;
wire   [63:0] zext_ln1014_fu_340_p1;
wire   [63:0] m_3_fu_344_p2;
wire   [7:0] sub_ln1017_fu_382_p2;
wire   [7:0] select_ln996_fu_375_p3;
wire   [7:0] add_ln1017_fu_387_p2;
wire   [63:0] zext_ln1015_fu_372_p1;
wire   [8:0] tmp_1_fu_393_p3;
wire   [63:0] p_Result_12_fu_400_p5;
wire   [31:0] LD_fu_412_p1;
wire   [31:0] bitcast_ln756_fu_416_p1;
wire   [63:0] grp_fu_118_p1;
wire   [63:0] ireg_fu_428_p1;
wire   [62:0] trunc_ln564_fu_432_p1;
wire   [52:0] p_Result_14_fu_467_p3;
wire   [53:0] zext_ln578_fu_474_p1;
wire   [53:0] man_V_2_fu_478_p2;
wire   [11:0] zext_ln501_fu_464_p1;
wire   [11:0] F2_fu_491_p2;
wire   [0:0] icmp_ln590_fu_497_p2;
wire   [11:0] add_ln590_fu_503_p2;
wire   [11:0] sub_ln590_fu_509_p2;
wire  signed [11:0] sh_amt_fu_515_p3;
wire   [53:0] man_V_fu_484_p3;
wire   [31:0] bitcast_ln714_fu_543_p1;
wire   [0:0] tmp_7_fu_546_p3;
wire  signed [31:0] sext_ln590_fu_523_p1;
wire   [53:0] zext_ln595_fu_562_p1;
wire   [53:0] ashr_ln595_fu_566_p2;
wire   [0:0] icmp_ln594_fu_537_p2;
wire   [15:0] trunc_ln595_fu_572_p1;
wire   [15:0] select_ln597_fu_554_p3;
wire   [7:0] tmp_8_fu_590_p4;
wire   [15:0] trunc_ln592_fu_533_p1;
wire   [15:0] sext_ln590cast_fu_606_p1;
wire   [11:0] add_ln600_fu_616_p2;
wire  signed [31:0] sext_ln600_fu_622_p1;
wire   [0:0] icmp_ln600_fu_584_p2;
wire   [0:0] p_Result_9_fu_626_p3;
wire   [0:0] qb_fu_634_p3;
wire   [15:0] select_ln594_fu_576_p3;
wire   [15:0] zext_ln415_fu_641_p1;
wire   [0:0] icmp_ln591_fu_527_p2;
wire   [0:0] xor_ln580_fu_651_p2;
wire   [0:0] or_ln591_fu_662_p2;
wire   [0:0] xor_ln591_fu_667_p2;
wire   [15:0] add_ln415_fu_645_p2;
wire   [0:0] and_ln590_fu_673_p2;
wire   [0:0] and_ln591_fu_656_p2;
wire   [15:0] shl_ln613_fu_610_p2;
wire   [0:0] icmp_ln612_fu_600_p2;
wire   [0:0] or_ln580_fu_686_p2;
wire   [15:0] select_ln580_fu_679_p3;
wire   [15:0] select_ln580_1_fu_691_p3;
wire   [0:0] or_ln580_1_fu_699_p2;
wire   [0:0] or_ln580_2_fu_713_p2;
wire   [15:0] select_ln580_2_fu_705_p3;
reg   [15:0] x_int_reg;
wire    ap_ce_reg;

LeNet_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_reg_757),
    .din1(32'd1065353216),
    .ce(1'b1),
    .dout(grp_fu_108_p2)
);

LeNet_fdiv_32ns_32ns_32_9_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 9 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_9_no_dsp_1_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(32'd1065353216),
    .din1(add_reg_762),
    .ce(1'b1),
    .dout(grp_fu_113_p2)
);

LeNet_fpext_32ns_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fpext_32ns_64_2_no_dsp_1_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(v_assign_reg_767),
    .ce(1'b1),
    .dout(grp_fu_118_p1)
);

LeNet_fexp_32ns_32ns_32_8_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fexp_32ns_32ns_32_8_full_dsp_1_U28(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(32'd0),
    .din1(grp_fu_121_p1),
    .ce(1'b1),
    .dout(grp_fu_121_p2)
);

always @ (posedge ap_clk) begin
    x_int_reg <= x;
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_reg_762 <= grp_fu_108_p2;
        exp_tmp_reg_779 <= {{ireg_fu_428_p1[62:52]}};
        icmp_ln580_reg_789 <= icmp_ln580_fu_458_p2;
        icmp_ln988_reg_727 <= icmp_ln988_fu_132_p2;
        m_4_reg_737 <= {{m_3_fu_344_p2[63:1]}};
        p_Result_10_reg_732 <= neg_x_fu_126_p2[32'd15];
        p_Result_13_reg_773 <= ireg_fu_428_p1[32'd63];
        p_Result_5_reg_742 <= m_3_fu_344_p2[32'd25];
        tmp_reg_757 <= grp_fu_121_p2;
        trunc_ln574_reg_784 <= trunc_ln574_fu_454_p1;
        trunc_ln996_reg_747 <= trunc_ln996_fu_368_p1;
        v_assign_reg_767 <= grp_fu_113_p2;
        v_assign_reg_767_pp0_iter22_reg <= v_assign_reg_767;
        v_assign_reg_767_pp0_iter23_reg <= v_assign_reg_767_pp0_iter22_reg;
    end
end

assign F2_fu_491_p2 = (12'd1075 - zext_ln501_fu_464_p1);

assign LD_fu_412_p1 = p_Result_12_fu_400_p5[31:0];

assign a_fu_278_p2 = (p_Result_3_fu_270_p3 | and_ln999_fu_258_p2);

assign add_ln1002_fu_264_p2 = ($signed(trunc_ln997_fu_186_p1) + $signed(16'd65512));

assign add_ln1011_fu_294_p2 = ($signed(sub_ln997_fu_180_p2) + $signed(32'd4294967271));

assign add_ln1017_fu_387_p2 = (sub_ln1017_fu_382_p2 + select_ln996_fu_375_p3);

assign add_ln415_fu_645_p2 = (select_ln594_fu_576_p3 + zext_ln415_fu_641_p1);

assign add_ln590_fu_503_p2 = ($signed(F2_fu_491_p2) + $signed(12'd4086));

assign add_ln600_fu_616_p2 = ($signed(F2_fu_491_p2) + $signed(12'd4085));

assign and_ln1002_fu_326_p2 = (xor_ln1002_fu_252_p2 & a_fu_278_p2);

assign and_ln590_fu_673_p2 = (xor_ln591_fu_667_p2 & icmp_ln590_fu_497_p2);

assign and_ln591_fu_656_p2 = (xor_ln580_fu_651_p2 & icmp_ln591_fu_527_p2);

assign and_ln999_fu_258_p2 = (icmp_ln999_fu_206_p2 & icmp_ln1000_fu_238_p2);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_return = ((or_ln580_2_fu_713_p2[0:0] == 1'b1) ? select_ln580_2_fu_705_p3 : 16'd0);

assign ashr_ln595_fu_566_p2 = $signed(man_V_fu_484_p3) >>> zext_ln595_fu_562_p1;

assign bitcast_ln714_fu_543_p1 = v_assign_reg_767_pp0_iter23_reg;

assign bitcast_ln756_fu_416_p1 = LD_fu_412_p1;

assign grp_fu_121_p1 = ((icmp_ln988_reg_727[0:0] == 1'b1) ? 32'd0 : bitcast_ln756_fu_416_p1);

assign icmp_ln1000_fu_238_p2 = ((p_Result_4_fu_232_p2 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1011_fu_288_p2 = (($signed(lsb_index_fu_190_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln580_fu_458_p2 = ((trunc_ln564_fu_432_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln590_fu_497_p2 = (($signed(F2_fu_491_p2) > $signed(12'd10)) ? 1'b1 : 1'b0);

assign icmp_ln591_fu_527_p2 = ((F2_fu_491_p2 == 12'd10) ? 1'b1 : 1'b0);

assign icmp_ln594_fu_537_p2 = ((sh_amt_fu_515_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln600_fu_584_p2 = (($signed(add_ln590_fu_503_p2) > $signed(12'd54)) ? 1'b1 : 1'b0);

assign icmp_ln612_fu_600_p2 = ((tmp_8_fu_590_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln988_fu_132_p2 = ((x_int_reg == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln999_fu_206_p2 = (($signed(tmp_3_fu_196_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign ireg_fu_428_p1 = grp_fu_118_p1;


always @ (p_Result_11_fu_164_p3) begin
    if (p_Result_11_fu_164_p3[0] == 1'b1) begin
        l_fu_172_p3 = 32'd0;
    end else if (p_Result_11_fu_164_p3[1] == 1'b1) begin
        l_fu_172_p3 = 32'd1;
    end else if (p_Result_11_fu_164_p3[2] == 1'b1) begin
        l_fu_172_p3 = 32'd2;
    end else if (p_Result_11_fu_164_p3[3] == 1'b1) begin
        l_fu_172_p3 = 32'd3;
    end else if (p_Result_11_fu_164_p3[4] == 1'b1) begin
        l_fu_172_p3 = 32'd4;
    end else if (p_Result_11_fu_164_p3[5] == 1'b1) begin
        l_fu_172_p3 = 32'd5;
    end else if (p_Result_11_fu_164_p3[6] == 1'b1) begin
        l_fu_172_p3 = 32'd6;
    end else if (p_Result_11_fu_164_p3[7] == 1'b1) begin
        l_fu_172_p3 = 32'd7;
    end else if (p_Result_11_fu_164_p3[8] == 1'b1) begin
        l_fu_172_p3 = 32'd8;
    end else if (p_Result_11_fu_164_p3[9] == 1'b1) begin
        l_fu_172_p3 = 32'd9;
    end else if (p_Result_11_fu_164_p3[10] == 1'b1) begin
        l_fu_172_p3 = 32'd10;
    end else if (p_Result_11_fu_164_p3[11] == 1'b1) begin
        l_fu_172_p3 = 32'd11;
    end else if (p_Result_11_fu_164_p3[12] == 1'b1) begin
        l_fu_172_p3 = 32'd12;
    end else if (p_Result_11_fu_164_p3[13] == 1'b1) begin
        l_fu_172_p3 = 32'd13;
    end else if (p_Result_11_fu_164_p3[14] == 1'b1) begin
        l_fu_172_p3 = 32'd14;
    end else if (p_Result_11_fu_164_p3[15] == 1'b1) begin
        l_fu_172_p3 = 32'd15;
    end else if (p_Result_11_fu_164_p3[16] == 1'b1) begin
        l_fu_172_p3 = 32'd16;
    end else if (p_Result_11_fu_164_p3[17] == 1'b1) begin
        l_fu_172_p3 = 32'd17;
    end else if (p_Result_11_fu_164_p3[18] == 1'b1) begin
        l_fu_172_p3 = 32'd18;
    end else if (p_Result_11_fu_164_p3[19] == 1'b1) begin
        l_fu_172_p3 = 32'd19;
    end else if (p_Result_11_fu_164_p3[20] == 1'b1) begin
        l_fu_172_p3 = 32'd20;
    end else if (p_Result_11_fu_164_p3[21] == 1'b1) begin
        l_fu_172_p3 = 32'd21;
    end else if (p_Result_11_fu_164_p3[22] == 1'b1) begin
        l_fu_172_p3 = 32'd22;
    end else if (p_Result_11_fu_164_p3[23] == 1'b1) begin
        l_fu_172_p3 = 32'd23;
    end else if (p_Result_11_fu_164_p3[24] == 1'b1) begin
        l_fu_172_p3 = 32'd24;
    end else if (p_Result_11_fu_164_p3[25] == 1'b1) begin
        l_fu_172_p3 = 32'd25;
    end else if (p_Result_11_fu_164_p3[26] == 1'b1) begin
        l_fu_172_p3 = 32'd26;
    end else if (p_Result_11_fu_164_p3[27] == 1'b1) begin
        l_fu_172_p3 = 32'd27;
    end else if (p_Result_11_fu_164_p3[28] == 1'b1) begin
        l_fu_172_p3 = 32'd28;
    end else if (p_Result_11_fu_164_p3[29] == 1'b1) begin
        l_fu_172_p3 = 32'd29;
    end else if (p_Result_11_fu_164_p3[30] == 1'b1) begin
        l_fu_172_p3 = 32'd30;
    end else if (p_Result_11_fu_164_p3[31] == 1'b1) begin
        l_fu_172_p3 = 32'd31;
    end else begin
        l_fu_172_p3 = 32'd32;
    end
end

assign lsb_index_fu_190_p2 = ($signed(sub_ln997_fu_180_p2) + $signed(32'd4294967272));

assign lshr_ln1000_fu_226_p2 = 16'd65535 >> zext_ln1000_fu_222_p1;

assign lshr_ln1011_fu_304_p2 = zext_ln1010_fu_284_p1 >> zext_ln1011_fu_300_p1;

assign m_2_fu_332_p3 = ((icmp_ln1011_fu_288_p2[0:0] == 1'b1) ? lshr_ln1011_fu_304_p2 : shl_ln1012_fu_320_p2);

assign m_3_fu_344_p2 = (m_2_fu_332_p3 + zext_ln1014_fu_340_p1);

assign man_V_2_fu_478_p2 = (54'd0 - zext_ln578_fu_474_p1);

assign man_V_fu_484_p3 = ((p_Result_13_reg_773[0:0] == 1'b1) ? man_V_2_fu_478_p2 : zext_ln578_fu_474_p1);

assign neg_x_fu_126_p2 = (16'd0 - x_int_reg);

assign or_ln580_1_fu_699_p2 = (icmp_ln612_fu_600_p2 | and_ln591_fu_656_p2);

assign or_ln580_2_fu_713_p2 = (or_ln580_fu_686_p2 | or_ln580_1_fu_699_p2);

assign or_ln580_fu_686_p2 = (icmp_ln580_reg_789 | and_ln590_fu_673_p2);

assign or_ln591_fu_662_p2 = (icmp_ln591_fu_527_p2 | icmp_ln580_reg_789);

assign p_Result_10_fu_138_p3 = neg_x_fu_126_p2[32'd15];

assign p_Result_11_fu_164_p3 = {{16'd65535}, {p_Result_s_fu_154_p4}};

assign p_Result_12_fu_400_p5 = {{zext_ln1015_fu_372_p1[63:32]}, {tmp_1_fu_393_p3}, {zext_ln1015_fu_372_p1[22:0]}};

assign p_Result_14_fu_467_p3 = {{1'd1}, {trunc_ln574_reg_784}};

assign p_Result_3_fu_270_p3 = tmp_V_fu_146_p3[add_ln1002_fu_264_p2];

assign p_Result_4_fu_232_p2 = (tmp_V_fu_146_p3 & lshr_ln1000_fu_226_p2);

assign p_Result_9_fu_626_p3 = man_V_fu_484_p3[sext_ln600_fu_622_p1];

integer ap_tvar_int_0;

always @ (tmp_V_fu_146_p3) begin
    for (ap_tvar_int_0 = 16 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 15 - 0) begin
            p_Result_s_fu_154_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_154_p4[ap_tvar_int_0] = tmp_V_fu_146_p3[15 - ap_tvar_int_0];
        end
    end
end

assign qb_fu_634_p3 = ((icmp_ln600_fu_584_p2[0:0] == 1'b1) ? p_Result_13_reg_773 : p_Result_9_fu_626_p3);

assign select_ln580_1_fu_691_p3 = ((and_ln591_fu_656_p2[0:0] == 1'b1) ? trunc_ln592_fu_533_p1 : shl_ln613_fu_610_p2);

assign select_ln580_2_fu_705_p3 = ((or_ln580_fu_686_p2[0:0] == 1'b1) ? select_ln580_fu_679_p3 : select_ln580_1_fu_691_p3);

assign select_ln580_fu_679_p3 = ((icmp_ln580_reg_789[0:0] == 1'b1) ? 16'd0 : add_ln415_fu_645_p2);

assign select_ln594_fu_576_p3 = ((icmp_ln594_fu_537_p2[0:0] == 1'b1) ? trunc_ln595_fu_572_p1 : select_ln597_fu_554_p3);

assign select_ln597_fu_554_p3 = ((tmp_7_fu_546_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln996_fu_375_p3 = ((p_Result_5_reg_742[0:0] == 1'b1) ? 8'd127 : 8'd126);

assign sext_ln590_fu_523_p1 = sh_amt_fu_515_p3;

assign sext_ln590cast_fu_606_p1 = sext_ln590_fu_523_p1[15:0];

assign sext_ln600_fu_622_p1 = $signed(add_ln600_fu_616_p2);

assign sh_amt_fu_515_p3 = ((icmp_ln590_fu_497_p2[0:0] == 1'b1) ? add_ln590_fu_503_p2 : sub_ln590_fu_509_p2);

assign shl_ln1012_fu_320_p2 = zext_ln1010_fu_284_p1 << zext_ln1012_fu_316_p1;

assign shl_ln613_fu_610_p2 = trunc_ln592_fu_533_p1 << sext_ln590cast_fu_606_p1;

assign sub_ln1000_fu_216_p2 = (5'd9 - trunc_ln1000_fu_212_p1);

assign sub_ln1012_fu_310_p2 = (32'd25 - sub_ln997_fu_180_p2);

assign sub_ln1017_fu_382_p2 = (8'd6 - trunc_ln996_reg_747);

assign sub_ln590_fu_509_p2 = (12'd10 - F2_fu_491_p2);

assign sub_ln997_fu_180_p2 = (32'd16 - l_fu_172_p3);

assign tmp_1_fu_393_p3 = {{p_Result_10_reg_732}, {add_ln1017_fu_387_p2}};

assign tmp_3_fu_196_p4 = {{lsb_index_fu_190_p2[31:1]}};

assign tmp_4_fu_244_p3 = lsb_index_fu_190_p2[32'd31];

assign tmp_7_fu_546_p3 = bitcast_ln714_fu_543_p1[32'd31];

assign tmp_8_fu_590_p4 = {{sh_amt_fu_515_p3[11:4]}};

assign tmp_V_fu_146_p3 = ((p_Result_10_fu_138_p3[0:0] == 1'b1) ? x_int_reg : neg_x_fu_126_p2);

assign trunc_ln1000_fu_212_p1 = sub_ln997_fu_180_p2[4:0];

assign trunc_ln564_fu_432_p1 = ireg_fu_428_p1[62:0];

assign trunc_ln574_fu_454_p1 = ireg_fu_428_p1[51:0];

assign trunc_ln592_fu_533_p1 = man_V_fu_484_p3[15:0];

assign trunc_ln595_fu_572_p1 = ashr_ln595_fu_566_p2[15:0];

assign trunc_ln996_fu_368_p1 = l_fu_172_p3[7:0];

assign trunc_ln997_fu_186_p1 = sub_ln997_fu_180_p2[15:0];

assign xor_ln1002_fu_252_p2 = (tmp_4_fu_244_p3 ^ 1'd1);

assign xor_ln580_fu_651_p2 = (icmp_ln580_reg_789 ^ 1'd1);

assign xor_ln591_fu_667_p2 = (or_ln591_fu_662_p2 ^ 1'd1);

assign zext_ln1000_fu_222_p1 = sub_ln1000_fu_216_p2;

assign zext_ln1010_fu_284_p1 = tmp_V_fu_146_p3;

assign zext_ln1011_fu_300_p1 = add_ln1011_fu_294_p2;

assign zext_ln1012_fu_316_p1 = sub_ln1012_fu_310_p2;

assign zext_ln1014_fu_340_p1 = and_ln1002_fu_326_p2;

assign zext_ln1015_fu_372_p1 = m_4_reg_737;

assign zext_ln415_fu_641_p1 = qb_fu_634_p3;

assign zext_ln501_fu_464_p1 = exp_tmp_reg_779;

assign zext_ln578_fu_474_p1 = p_Result_14_fu_467_p3;

assign zext_ln595_fu_562_p1 = $unsigned(sext_ln590_fu_523_p1);

endmodule //LeNet_sigmoid
