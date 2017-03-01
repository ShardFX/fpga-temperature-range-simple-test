`timescale 1ns/ 1ps

module challenge3;

// Inputs
reg [7:0] sw;
// Outputs
wire led;

// Instantiate the Unit Under Test (UUT)
test2 uut (
    .sw(sw),
    .led(led)
);

// Declare loop index variable
integer i;

// Apply input stimulus
initial
begin
    sw = 0;

    for (i=0; i<256; i=i+1) // 2^8
        #20 sw = i;

    #20	$finish;
end

endmodule