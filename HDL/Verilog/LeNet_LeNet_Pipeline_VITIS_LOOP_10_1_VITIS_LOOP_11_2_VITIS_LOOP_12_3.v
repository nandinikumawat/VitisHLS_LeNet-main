// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module LeNet_LeNet_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_11_2_VITIS_LOOP_12_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        layer4_output_V_address0,
        layer4_output_V_ce0,
        layer4_output_V_q0,
        layer4_flatten_V_address0,
        layer4_flatten_V_ce0,
        layer4_flatten_V_we0,
        layer4_flatten_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] layer4_output_V_address0;
output   layer4_output_V_ce0;
input  [15:0] layer4_output_V_q0;
output  [7:0] layer4_flatten_V_address0;
output   layer4_flatten_V_ce0;
output   layer4_flatten_V_we0;
output  [15:0] layer4_flatten_V_d0;

reg ap_idle;
reg layer4_output_V_ce0;
reg layer4_flatten_V_ce0;
reg layer4_flatten_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln10_fu_164_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln11_fu_194_p2;
reg   [0:0] icmp_ln11_reg_489;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] and_ln10_fu_232_p2;
reg   [0:0] and_ln10_reg_496;
wire   [63:0] zext_ln13_1_fu_298_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] offset_1_cast_fu_404_p1;
reg   [3:0] k_in_fu_62;
wire   [3:0] add_ln12_4_fu_303_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_in_load;
reg   [7:0] offset_1_fu_66;
wire   [7:0] add_ln13_1_fu_409_p2;
reg   [2:0] c_fu_70;
wire   [2:0] select_ln11_6_fu_258_p3;
reg   [2:0] ap_sig_allocacmp_c_load;
reg   [7:0] offset_fu_74;
wire   [7:0] select_ln11_7_fu_397_p3;
reg   [6:0] indvar_flatten708_fu_78;
wire   [6:0] select_ln11_8_fu_315_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten708_load;
reg   [2:0] r_fu_82;
wire   [2:0] select_ln10_3_fu_208_p3;
reg   [2:0] ap_sig_allocacmp_r_load;
reg   [7:0] indvars_iv560_fu_86;
wire   [7:0] select_ln10_4_fu_377_p3;
reg   [7:0] indvar_flatten724_fu_90;
wire   [7:0] add_ln10_3_fu_170_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten724_load;
wire   [2:0] add_ln10_fu_188_p2;
wire   [0:0] icmp_ln12_fu_226_p2;
wire   [0:0] xor_ln10_fu_220_p2;
wire   [2:0] select_ln10_1_fu_200_p3;
wire   [0:0] or_ln11_fu_244_p2;
wire   [2:0] add_ln11_fu_238_p2;
wire   [3:0] select_ln11_5_fu_250_p3;
wire   [5:0] tmp_s_fu_270_p3;
wire   [5:0] zext_ln13_fu_216_p1;
wire   [5:0] add_ln13_fu_278_p2;
wire   [7:0] tmp_78_cast_fu_284_p3;
wire   [7:0] select_ln11_8_cast_fu_266_p1;
wire   [7:0] add_ln13_2_fu_292_p2;
wire   [6:0] add_ln11_4_fu_309_p2;
wire   [7:0] add_ln10_1_fu_357_p2;
wire   [7:0] select_ln10_fu_363_p3;
wire   [7:0] add_ln11_3_fu_384_p2;
wire   [7:0] select_ln10_2_fu_370_p3;
wire   [7:0] select_ln11_fu_390_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

LeNet_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln10_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            c_fu_70 <= select_ln11_6_fu_258_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            c_fu_70 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln10_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten708_fu_78 <= select_ln11_8_fu_315_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten708_fu_78 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln10_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten724_fu_90 <= add_ln10_3_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten724_fu_90 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv560_fu_86 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv560_fu_86 <= select_ln10_4_fu_377_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln10_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_in_fu_62 <= add_ln12_4_fu_303_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_in_fu_62 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            offset_1_fu_66 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            offset_1_fu_66 <= add_ln13_1_fu_409_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            offset_fu_74 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            offset_fu_74 <= select_ln11_7_fu_397_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln10_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            r_fu_82 <= select_ln10_3_fu_208_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            r_fu_82 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_fu_164_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln10_reg_496 <= and_ln10_fu_232_p2;
        icmp_ln11_reg_489 <= icmp_ln11_fu_194_p2;
    end
end

always @ (*) begin
    if (((icmp_ln10_fu_164_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_load = 3'd0;
    end else begin
        ap_sig_allocacmp_c_load = c_fu_70;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten708_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten708_load = indvar_flatten708_fu_78;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten724_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten724_load = indvar_flatten724_fu_90;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_in_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_in_load = k_in_fu_62;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r_load = 3'd0;
    end else begin
        ap_sig_allocacmp_r_load = r_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer4_flatten_V_ce0 = 1'b1;
    end else begin
        layer4_flatten_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer4_flatten_V_we0 = 1'b1;
    end else begin
        layer4_flatten_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        layer4_output_V_ce0 = 1'b1;
    end else begin
        layer4_output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln10_1_fu_357_p2 = (indvars_iv560_fu_86 + 8'd48);

assign add_ln10_3_fu_170_p2 = (ap_sig_allocacmp_indvar_flatten724_load + 8'd1);

assign add_ln10_fu_188_p2 = (ap_sig_allocacmp_r_load + 3'd1);

assign add_ln11_3_fu_384_p2 = (select_ln10_fu_363_p3 + 8'd12);

assign add_ln11_4_fu_309_p2 = (ap_sig_allocacmp_indvar_flatten708_load + 7'd1);

assign add_ln11_fu_238_p2 = (select_ln10_1_fu_200_p3 + 3'd1);

assign add_ln12_4_fu_303_p2 = (select_ln11_5_fu_250_p3 + 4'd1);

assign add_ln13_1_fu_409_p2 = (select_ln11_fu_390_p3 + 8'd1);

assign add_ln13_2_fu_292_p2 = (tmp_78_cast_fu_284_p3 + select_ln11_8_cast_fu_266_p1);

assign add_ln13_fu_278_p2 = (tmp_s_fu_270_p3 + zext_ln13_fu_216_p1);

assign and_ln10_fu_232_p2 = (xor_ln10_fu_220_p2 & icmp_ln12_fu_226_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln10_fu_164_p2 = ((ap_sig_allocacmp_indvar_flatten724_load == 8'd192) ? 1'b1 : 1'b0);

assign icmp_ln11_fu_194_p2 = ((ap_sig_allocacmp_indvar_flatten708_load == 7'd48) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_226_p2 = ((ap_sig_allocacmp_k_in_load == 4'd12) ? 1'b1 : 1'b0);

assign layer4_flatten_V_address0 = offset_1_cast_fu_404_p1;

assign layer4_flatten_V_d0 = layer4_output_V_q0;

assign layer4_output_V_address0 = zext_ln13_1_fu_298_p1;

assign offset_1_cast_fu_404_p1 = select_ln11_fu_390_p3;

assign or_ln11_fu_244_p2 = (icmp_ln11_fu_194_p2 | and_ln10_fu_232_p2);

assign select_ln10_1_fu_200_p3 = ((icmp_ln11_fu_194_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_c_load);

assign select_ln10_2_fu_370_p3 = ((icmp_ln11_reg_489[0:0] == 1'b1) ? add_ln10_1_fu_357_p2 : offset_1_fu_66);

assign select_ln10_3_fu_208_p3 = ((icmp_ln11_fu_194_p2[0:0] == 1'b1) ? add_ln10_fu_188_p2 : ap_sig_allocacmp_r_load);

assign select_ln10_4_fu_377_p3 = ((icmp_ln11_reg_489[0:0] == 1'b1) ? add_ln10_1_fu_357_p2 : indvars_iv560_fu_86);

assign select_ln10_fu_363_p3 = ((icmp_ln11_reg_489[0:0] == 1'b1) ? add_ln10_1_fu_357_p2 : offset_fu_74);

assign select_ln11_5_fu_250_p3 = ((or_ln11_fu_244_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_in_load);

assign select_ln11_6_fu_258_p3 = ((and_ln10_fu_232_p2[0:0] == 1'b1) ? add_ln11_fu_238_p2 : select_ln10_1_fu_200_p3);

assign select_ln11_7_fu_397_p3 = ((and_ln10_reg_496[0:0] == 1'b1) ? add_ln11_3_fu_384_p2 : select_ln10_fu_363_p3);

assign select_ln11_8_cast_fu_266_p1 = select_ln11_6_fu_258_p3;

assign select_ln11_8_fu_315_p3 = ((icmp_ln11_fu_194_p2[0:0] == 1'b1) ? 7'd1 : add_ln11_4_fu_309_p2);

assign select_ln11_fu_390_p3 = ((and_ln10_reg_496[0:0] == 1'b1) ? add_ln11_3_fu_384_p2 : select_ln10_2_fu_370_p3);

assign tmp_78_cast_fu_284_p3 = {{add_ln13_fu_278_p2}, {2'd0}};

assign tmp_s_fu_270_p3 = {{select_ln11_5_fu_250_p3}, {2'd0}};

assign xor_ln10_fu_220_p2 = (icmp_ln11_fu_194_p2 ^ 1'd1);

assign zext_ln13_1_fu_298_p1 = add_ln13_2_fu_292_p2;

assign zext_ln13_fu_216_p1 = select_ln10_3_fu_208_p3;

endmodule //LeNet_LeNet_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_11_2_VITIS_LOOP_12_3
