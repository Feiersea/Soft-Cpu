module Register (
    input wire enable, //must be high for dff to work
    input wire reset,  //reset value 
    input wire clk,    //clock in
    input wire [7:0] reg_in1,   //input 
    output reg [7:0] reg_out1   //output
);
    always @ (posedge clk or negedge reset) begin  
        if (!reset)
            reg_out1 <= 1'b0;
        else if (enable)
            reg_out1 <= reg_in1;
    end
endmodule
