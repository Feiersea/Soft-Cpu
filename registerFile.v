module registerFile (
    input wire clk,
    input wire rest,
    input wire [7:0] r0_in, r1_in, r2_in, r3_in, r4_in, r5_in, r6_in, r7_in,
    input wire [7:0] r0_en, r1_en, r2_en, r3_en, r4_en, r5_en, r6_en, r7_en,
    output reg [7:0] r0_out, r1_out, r2_out, r3_out, r4_out, r5_out, r6_out, r7_out,
);

Register r0 (.clk(clk), .reset(reset), .enable(r0_en), .reg_in1(r0_in), .reg_out1(r0_out));
Register r1 (.clk(clk), .reset(reset), .enable(r1_en), .reg_in1(r1_in), .reg_out1(r1_out));
Register r2 (.clk(clk), .reset(reset), .enable(r2_en), .reg_in1(r2_in), .reg_out1(r2_out));
Register r3 (.clk(clk), .reset(reset), .enable(r3_en), .reg_in1(r3_in), .reg_out1(r3_out));
Register r4 (.clk(clk), .reset(reset), .enable(r4_en), .reg_in1(r4_in), .reg_out1(r4_out));
Register r5 (.clk(clk), .reset(reset), .enable(r5_en), .reg_in1(r5_in), .reg_out1(r5_out));
Register r6 (.clk(clk), .reset(reset), .enable(r6_en), .reg_in1(r6_in), .reg_out1(r6_out));
Register r7 (.clk(clk), .reset(reset), .enable(r7_en), .reg_in1(r7_in), .reg_out1(r7_out));

endmodule
