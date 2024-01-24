`timescale 1ns / 1ps
module top 
(
    output[1:0]   tx_disable,        
    input         Q0_CLK0_GTREFCLK_PAD_N_IN,
    input         Q0_CLK0_GTREFCLK_PAD_P_IN,
    input         SYS_CLK_IN_P,
    input         SYS_CLK_IN_N,
    input [3:0]   RXN_IN,
    input [3:0]   RXP_IN,
    output[3:0]   TXN_OUT,
    output[3:0]   TXP_OUT
);
assign tx_disable = 2'd0;
wire tx0_clk;
wire gt0_txfsmresetdone;
wire[31:0] tx0_data;
wire[3:0] tx0_kchar;
wire tx1_clk;
wire[31:0] tx1_data;
wire[3:0] tx1_kchar; 
wire tx2_clk;
wire[31:0] tx2_data;
wire[3:0] tx2_kchar;
wire tx3_clk;
wire[31:0] tx3_data;
wire[3:0] tx3_kchar;

wire rx0_clk;
wire[31:0] rx0_data;
wire[3:0] rx0_kchar;
wire rx1_clk;
wire[31:0] rx1_data;
wire[3:0] rx1_kchar; 
wire rx2_clk;
wire[31:0] rx2_data;
wire[3:0] rx2_kchar;
wire rx3_clk;
wire[31:0] rx3_data;
wire[3:0] rx3_kchar;

wire[31:0] data_tx;
wire[3:0] data_ctrl;
reg[7:0] cnt;
wire tx_packet_data_rd;
wire rx_clk;
assign rx_clk = rx0_clk;
assign tx0_data = data_tx;
assign tx0_kchar = data_ctrl;
assign tx1_data = data_tx;
assign tx1_kchar = data_ctrl;
assign tx2_data = data_tx;
assign tx2_kchar = data_ctrl;
assign tx3_data = data_tx;
assign tx3_kchar = data_ctrl;	
always @ (posedge tx0_clk)
begin
    if(tx_packet_data_rd)
        cnt <= cnt + 8'd1;
    else
        cnt <= 8'd0;
end
 
wire ibuf_sys_clk;
wire bufg_sys_clk;
IBUFDS IBUFDS_m0
(
	.I  (SYS_CLK_IN_P),
	.IB (SYS_CLK_IN_N),
	.O  (ibuf_sys_clk)
);

BUFG BUFG_m0
(
	.I (ibuf_sys_clk),
	.O (bufg_sys_clk) 
);
wire clk_100Mhz;
sys_clock sys_clock_m0
 (
	.clk_in1(bufg_sys_clk),
	.clk_out1(clk_100Mhz),
	.reset(1'b0),
	.locked()
 );
 
packet_send packet_send_m0(
    .rst(~gt0_txfsmresetdone),
    .tx_clk(tx0_clk),
    .tx_packet_req(1'b1),
    .tx_packet_len(256),
    .tx_packet_done(),
    .tx_packet_type(8),
    .tx_packet_data({cnt,cnt,cnt,cnt}),
    .tx_packet_data_rd(tx_packet_data_rd),
    
    .gt_tx_data(data_tx),
    .gt_tx_ctrl(data_ctrl)
);
wire[31:0] rx_data_align;
wire[3:0] rx_ctrl_align;
wire[31:0] error_packet_cnt_o;
wire[31:0] packet_cnt_o;
packet_rec packet_rec_m0(
    .rst(1'b0),
    .rx_clk(rx_clk), 
    .gt_rx_data(rx_data_align),
    .gt_rx_ctrl(rx_ctrl_align),
    .packet_cnt_o(packet_cnt_o),
    .error_packet_cnt_o(error_packet_cnt_o)
);
word_align word_align_m0(
    .rst(1'b0),
    .rx_clk(rx_clk),
    .gt_rx_data(rx0_data),
    .gt_rx_ctrl(rx0_kchar),
    .rx_data_align(rx_data_align),
    .rx_ctrl_align(rx_ctrl_align)
);
wire[127:0] probe0;
ila_0 u0(
    .clk(rx_clk),
    .probe0(probe0)
);   
assign probe0[31:0] = rx_data_align;
assign probe0[35:32] = rx_ctrl_align;
assign probe0[67:36] = packet_cnt_o;
assign probe0[71:68] = rx0_kchar;
assign probe0[103:72] = error_packet_cnt_o;
assign probe0[111:104] = cnt;
assign probe0[127:112] = 0;
gtp_exdes gtp_exdes_m0
    (
	
    .tx0_clk(tx0_clk),
    .gt0_txfsmresetdone(gt0_txfsmresetdone),
    .tx0_data(tx0_data),
    .tx0_kchar(tx0_kchar),   
    .rx0_clk(rx0_clk),
    .rx0_data(rx0_data),
    .rx0_kchar(rx0_kchar),

    .gt1_txfsmresetdone(),
    .tx1_data(tx1_data),
    .tx1_kchar(tx1_kchar),   
    .rx1_clk(rx1_clk),
    .rx1_data(rx1_data),
    .rx1_kchar(rx1_kchar),
    
    .gt2_txfsmresetdone(),
    .tx2_data(tx2_data),
    .tx2_kchar(tx2_kchar),   
    .rx2_clk(rx2_clk),
    .rx2_data(rx2_data),
    .rx2_kchar(rx2_kchar),
    
    .gt3_txfsmresetdone(),
    .tx3_data(tx3_data),
    .tx3_kchar(tx3_kchar),   
    .rx3_clk(rx3_clk),
    .rx3_data(rx3_data),
    .rx3_kchar(rx3_kchar),
                         
    .Q0_CLK0_GTREFCLK_PAD_N_IN(Q0_CLK0_GTREFCLK_PAD_N_IN),
    .Q0_CLK0_GTREFCLK_PAD_P_IN(Q0_CLK0_GTREFCLK_PAD_P_IN),
	.drp_clk(clk_100Mhz),
    .RXN_IN(RXN_IN),
    .RXP_IN(RXP_IN),
    .TXN_OUT(TXN_OUT),
    .TXP_OUT(TXP_OUT)
);
    
    
    
endmodule
