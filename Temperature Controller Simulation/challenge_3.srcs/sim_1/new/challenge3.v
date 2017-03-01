`timescale 1ns/ 1ps

module challenge3;

// Inputs
reg [7:0] sw;
// Outputs
wire led;

// Instantiate the Unit Under Test (UUT)
challenge_3 uut (
    .sw(sw),
    .led(led)
);

// Declare loop index variable
integer k;

// Apply input stimulus
initial
begin
    sw = 0;

    for (k=0; k<256; k=k+1) // 2^8
        #2 sw = k;

    #2	$finish;
end

endmodule