module Register (
    input wire enable,
    input wire reset,
    input wire clk,
    input wire reg_in1,
    output reg reg_out1
);
    always @ (posedge clk or negedge reset) begin
        if (!reset)
            reg_out1 <= 1'b0;
        else if (enable)
            reg_out1 <= reg_in1;
    end
endmodule
