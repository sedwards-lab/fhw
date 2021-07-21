/* GHC primitives for System Verilog */

/* Primitive types */

typedef logic signed [31:0] \ghc-prim.GHC.Prim.Int# ;
typedef logic unsigned [31:0] \ghc-prim.GHC.Prim.Word# ;

typedef logic [0:0] \ghc-prim.GHC.Types.Bool ;

function \ghc-prim.GHC.Types.Bool  \dc_ghc-prim.GHC.Types.False ();
   begin
      \dc_ghc-prim.GHC.Types.False = 1'b0;
   end
endfunction

function \ghc-prim.GHC.Types.Bool  \dc_ghc-prim.GHC.Types.True ();
   begin
      \dc_ghc-prim.GHC.Types.True = 1'b1;
   end
endfunction


module \ghc-prim.GHC.Prim.plusWord# (output \ghc-prim.GHC.Prim.Word# y
				     ,input logic clk
				     ,input logic reset
				     ,input \ghc-prim.GHC.Prim.Word# a
				     ,input \ghc-prim.GHC.Prim.Word# b);
   assign y = a + b;  
endmodule  

module \ghc-prim.GHC.Prim.minusWord# (output \ghc-prim.GHC.Prim.Word# y
				     ,input logic clk
				     ,input logic reset
				     ,input \ghc-prim.GHC.Prim.Word# a
				     ,input \ghc-prim.GHC.Prim.Word# b);
   assign y = a - b;  
endmodule  

module \ghc-prim.GHC.Prim.+# (output      \ghc-prim.GHC.Prim.Int# y,
			      input logic clk,
			      input logic reset,
			      input 	  \ghc-prim.GHC.Prim.Int# a,
			      input 	  \ghc-prim.GHC.Prim.Int# b);
   assign y = a + b; 
endmodule

module \ghc-prim.GHC.Prim.times# (output      \ghc-prim.GHC.Prim.Int# y,
			      input logic clk,
			      input logic reset,
			      input 	  \ghc-prim.GHC.Prim.Int# a,
			      input 	  \ghc-prim.GHC.Prim.Int# b);
   assign y = a * b; 
endmodule

module \ghc-prim.GHC.Prim.-# (output      \ghc-prim.GHC.Prim.Int# y,
			      input logic clk,
			      input logic reset,
			      input 	  \ghc-prim.GHC.Prim.Int# a,
			      input 	  \ghc-prim.GHC.Prim.Int# b);
   assign y = a - b; 
endmodule

module \ghc-prim.GHC.Prim.negateInt# (output      \ghc-prim.GHC.Prim.Int# y,
			              input logic clk,
 			              input logic reset,
			              input 	  \ghc-prim.GHC.Prim.Int# a);
   assign y = -a;
endmodule

module \ghc-prim.GHC.Prim.uncheckedIShiftRA# (
    output 	\ghc-prim.GHC.Prim.Int# y,
    input logic clk,
    input logic reset,
    input 	\ghc-prim.GHC.Prim.Int# a,
    input 	\ghc-prim.GHC.Prim.Int# b);
   assign y = a >> b; /* TODO: b is signed, but shouldn't be? */
endmodule


module \ghc-prim.GHC.Prim.int2Word# (output      \ghc-prim.GHC.Prim.Word# y,
				     input logic clk,
				     input logic reset,
				     input 	 \ghc-prim.GHC.Prim.Int# a);
   assign y = a;  
endmodule

module \ghc-prim.GHC.Prim.word2Int# (output \ghc-prim.GHC.Prim.Int# y,
				     input logic clk,
				     input logic reset,
				     input 	 \ghc-prim.GHC.Prim.Word# a);
   assign y = a;
endmodule

module \ghc-prim.GHC.Prim.and# (output \ghc-prim.GHC.Prim.Word# y,
				input logic clk,
				input logic reset,
				input 	    \ghc-prim.GHC.Prim.Word# a,
				input 	    \ghc-prim.GHC.Prim.Word# b);

   assign y = a & b;
endmodule

module \ghc-prim.GHC.Prim.or# (output \ghc-prim.GHC.Prim.Word# y,
				input logic clk,
				input logic reset,
				input 	    \ghc-prim.GHC.Prim.Word# a,
				input 	    \ghc-prim.GHC.Prim.Word# b);

   assign y = a | b;
endmodule

module \ghc-prim.GHC.Prim.<# ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a,
			       input 	   \ghc-prim.GHC.Prim.Int# b);
   assign y = (a < b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.># ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a,
			       input 	   \ghc-prim.GHC.Prim.Int# b);
   assign y = (a > b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.<=# ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a,
			       input 	   \ghc-prim.GHC.Prim.Int# b);
   assign y = (a <= b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.>=# ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a,
			       input 	   \ghc-prim.GHC.Prim.Int# b);
   assign y = (a >= b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.==# ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a,
			       input 	   \ghc-prim.GHC.Prim.Int# b);
   assign y = (a == b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.remInt# ( output \ghc-prim.GHC.Prim.Int# y,
                               input logic clk,
                               input logic reset,
                               input \ghc-prim.GHC.Prim.Int# a,
                               input \ghc-prim.GHC.Prim.Int# b);
  assign y = a % b;
endmodule

module \ghc-prim.GHC.Prim.eqWord# ( output \ghc-prim.GHC.Types.Bool y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Word# a,
			       input 	   \ghc-prim.GHC.Prim.Word# b);
   assign y = (a == b) ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule

module \ghc-prim.GHC.Prim.narrow32Word# ( output \ghc-prim.GHC.Prim.Word# y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Word# a);
   assign y = a; /* TODO: is this right? */
endmodule

module \ghc-prim.GHC.Prim.narrow8Word# ( output \ghc-prim.GHC.Prim.Word# y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Word# a);
   assign y = {24'b0, a[7:0]}; /* TODO: is this right? */
endmodule

module \ghc-prim.GHC.Prim.narrow16Int# ( output \ghc-prim.GHC.Prim.Int# y,
			       input logic clk,
			       input logic reset,
			       input 	   \ghc-prim.GHC.Prim.Int# a);
   assign y = { {17{a[15]}}, a[14:0] }; /* TODO: is this right? */
endmodule

module \ghc-prim.GHC.Prim.remWord# ( output \ghc-prim.GHC.Prim.Word# y,
                   input logic clk,
                   input logic reset,
                   input       \ghc-prim.GHC.Prim.Word# a,
                   input       \ghc-prim.GHC.Prim.Word# b);
    assign y = a % b;
endmodule

module \ghc-prim.GHC.Prim.timesWord# ( output \ghc-prim.GHC.Prim.Word# y,
                   input logic clk,
                   input logic reset,
                   input       \ghc-prim.GHC.Prim.Word# a,
                   input       \ghc-prim.GHC.Prim.Word# b);
    assign y = a * b;
endmodule

module \ghc-prim.GHC.Prim.gtWord# ( output \ghc-prim.GHC.Types.Bool y,
                   input logic clk,
                   input logic reset,
                   input       \ghc-prim.GHC.Prim.Word# a,
                   input       \ghc-prim.GHC.Prim.Word# b);
    assign y = a > b ? \dc_ghc-prim.GHC.Types.True () : \dc_ghc-prim.GHC.Types.False ();
endmodule
