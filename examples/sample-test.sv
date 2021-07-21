`timescale 1ns/1ps

module test;

logic clk; //innput
logic reset; // input

//input
Go_t sourceGo_d;


logic sourceGo_r;

SomeType DUT(...);

initial begin
  
 sourceGo_d = Go_dc(1'd0);
    
 //initialize other inputs if needed
 
end


always begin
    clk = 1'b1;
    #8;
    clk = 1'b0;
    #8;
    
end

always begin
    reset = 1'b1;
    #16;
    reset = 1'b0;
    sourceGo_d = Go_dc(1'd1);
    wait(sourceGo_r == 1);
    #16;
    sourceGo_d = Go_dc(1'd0);
    
    wait(1 == 2); //wait till the end

end


endmodule