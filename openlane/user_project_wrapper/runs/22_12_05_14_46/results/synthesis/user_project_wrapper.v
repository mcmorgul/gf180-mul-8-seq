/* Generated by Yosys 0.22 (git sha1 f109fa3d4c5, gcc 8.3.1 -fPIC -Os) */

module user_project_wrapper(wb_clk_i, wb_rst_i, wbs_stb_i, wbs_cyc_i, wbs_we_i, wbs_sel_i, wbs_dat_i, wbs_adr_i, wbs_ack_o, wbs_dat_o, la_data_in, la_data_out, la_oenb, io_in, io_out, io_oeb, user_clock2, user_irq);
  input [37:0] io_in;
  wire [37:0] io_in;
  output [37:0] io_oeb;
  wire [37:0] io_oeb;
  output [37:0] io_out;
  wire [37:0] io_out;
  input [63:0] la_data_in;
  wire [63:0] la_data_in;
  output [63:0] la_data_out;
  wire [63:0] la_data_out;
  input [63:0] la_oenb;
  wire [63:0] la_oenb;
  input user_clock2;
  wire user_clock2;
  output [2:0] user_irq;
  wire [2:0] user_irq;
  input wb_clk_i;
  wire wb_clk_i;
  input wb_rst_i;
  wire wb_rst_i;
  output wbs_ack_o;
  wire wbs_ack_o;
  input [31:0] wbs_adr_i;
  wire [31:0] wbs_adr_i;
  input wbs_cyc_i;
  wire wbs_cyc_i;
  input [31:0] wbs_dat_i;
  wire [31:0] wbs_dat_i;
  output [31:0] wbs_dat_o;
  wire [31:0] wbs_dat_o;
  input [3:0] wbs_sel_i;
  wire [3:0] wbs_sel_i;
  input wbs_stb_i;
  wire wbs_stb_i;
  input wbs_we_i;
  wire wbs_we_i;
  wrapped_multiplier_8 wrapped_multiplier_8_1 (
    .io_in(io_in),
    .io_oeb(io_oeb),
    .io_out(io_out),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i)
  );
endmodule
