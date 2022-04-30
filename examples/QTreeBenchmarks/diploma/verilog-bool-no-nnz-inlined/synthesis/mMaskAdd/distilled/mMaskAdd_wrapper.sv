`timescale 1ns/1ns
import mMaskAdd_package::*;

module mMaskAdd_wrapper(
  input logic clk,
  input logic aresetn,
  input QTree_Bool_t i_QTree_Bool_tdata,
  input logic i_QTree_Bool_tlast,
  input logic i_QTree_Bool_tvalid,
  output logic i_QTree_Bool_tready,
  input MaskQTree_t i_MaskQTree_tdata,
  input logic i_MaskQTree_tlast,
  input logic i_MaskQTree_tvalid,
  output logic i_MaskQTree_tready,
  input logic result_ready,
  output Pointer_QTree_Bool_t result_data
  );
  mMaskAdd DUT(clk, reset, \\QTree_Bool_src_d , \\QTree_Bool_src_r , dummy_write_QTree_Bool_d, dummy_write_QTree_Bool_r, \\MaskQTree_src_d , \\MaskQTree_src_r , dummy_write_MaskQTree_d, dummy_write_MaskQTree_r, sourceGo_d, sourceGo_r, m1a82_0_d, m1a82_0_r, m2a83_1_d, m2a83_1_r, m3a84_2_d, m3a84_2_r, forkHP1_QTree_Bool_snk_dout, forkHP1_QTree_Bool_snk_rout, dummy_write_QTree_Bool_sink_dout, dummy_write_QTree_Bool_sink_rout, forkHP1_MaskQTree_snk_dout, forkHP1_MaskQTree_snk_rout, dummy_write_MaskQTree_sink_dout, dummy_write_MaskQTree_sink_rout, f_resbuf_dout, f_resbuf_rout);
  
  logic data_transfered;
  
  assign data_transfered = (data_MaskQTree_transfered && data_QTree_Bool_transfered);
  
  logic reset;
  
  Go_t \\QTree_Bool_src_d ;
  
  logic \\QTree_Bool_src_r ;
  
  QTree_Bool_t dummy_write_QTree_Bool_d;
  
  logic dummy_write_QTree_Bool_r;
  
  Go_t \\MaskQTree_src_d ;
  
  logic \\MaskQTree_src_r ;
  
  MaskQTree_t dummy_write_MaskQTree_d;
  
  logic dummy_write_MaskQTree_r;
  
  Go_t sourceGo_d;
  
  logic sourceGo_r;
  
  Pointer_MaskQTree_t m1a82_0_d;
  
  logic m1a82_0_r;
  
  Pointer_QTree_Bool_t m2a83_1_d;
  
  logic m2a83_1_r;
  
  Pointer_QTree_Bool_t m3a84_2_d;
  
  logic m3a84_2_r;
  
  \Word16#_t  forkHP1_QTree_Bool_snk_dout;
  
  logic forkHP1_QTree_Bool_snk_rout;
  
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout;
  
  logic dummy_write_QTree_Bool_sink_rout;
  
  \Word16#_t  forkHP1_MaskQTree_snk_dout;
  
  logic forkHP1_MaskQTree_snk_rout;
  
  Pointer_MaskQTree_t dummy_write_MaskQTree_sink_dout;
  
  logic dummy_write_MaskQTree_sink_rout;
  
  Pointer_QTree_Bool_t f_resbuf_dout;
  
  logic f_resbuf_rout;
  
  assign reset = (~ aresetn);
  
  logic reseted;
  
  logic \\QTree_Bool_src_done ;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        dummy_write_QTree_Bool_sink_rout <= 1'd1;
        \\QTree_Bool_src_d  <= 1'd0;
        \\QTree_Bool_src_done  <= 1'd0;
        forkHP1_QTree_Bool_snk_rout <= 1'd1;
      end
    else
      if ((reseted == 1'd1))
        if (((\\QTree_Bool_src_done  == 1'd0) && (\\QTree_Bool_src_r  == 1'd0)))
          \\QTree_Bool_src_d  <= 1'd1;
        else
          if (((\\QTree_Bool_src_r  == 1'd1) && (\\QTree_Bool_src_done  == 1'd0)))
            begin
              \\QTree_Bool_src_done  <= 1'd1;
              \\QTree_Bool_src_d  <= 1'd0;
            end
          else \\QTree_Bool_src_d  <= 1'd0;
      else ;
  
  assign i_QTree_Bool_tready = dummy_write_QTree_Bool_r;
  
  logic data_QTree_Bool_transfered;
  
  Pointer_QTree_Bool_t stack_QTree_Bool[255:0];
  
  Pointer_QTree_Bool_t inputs_QTree_Bool[1:0];
  
  logic [2:0] inputs_QTree_Bool_ptr;
  
  logic [7:0] stack_QTree_Bool_ptr;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        data_QTree_Bool_transfered <= 1'd0;
        dummy_write_QTree_Bool_d[0] <= 1'd0;
        stack_QTree_Bool_ptr <= 8'd0;
        inputs_QTree_Bool_ptr <= 3'd0;
      end
    else
      if ((data_QTree_Bool_transfered == 1'd1))
        dummy_write_QTree_Bool_d[0] <= 1'd0;
      else
        if ((\\QTree_Bool_src_done  == 1'd1))
          if ((forkHP1_QTree_Bool_snk_dout[0] == 1'd1))
            begin
              stack_QTree_Bool[stack_QTree_Bool_ptr] <= forkHP1_QTree_Bool_snk_dout;
              stack_QTree_Bool_ptr <= (stack_QTree_Bool_ptr + 8'd1);
            end
        else
          if (((i_QTree_Bool_tvalid == 1'd1) && (i_QTree_Bool_tready == 1'd1)))
            begin
              if ((i_QTree_Bool_tlast == 1'd1))
                begin
                  if ((inputs_QTree_Bool_ptr == 3'd1))
                    data_QTree_Bool_transfered <= 1'd1;
                  inputs_QTree_Bool_ptr <= (inputs_QTree_Bool_ptr + 2'd1);
                  inputs_QTree_Bool[inputs_QTree_Bool_ptr] <= stack_QTree_Bool[(stack_QTree_Bool_ptr - 8'd1)];
                end
              unique case (i_QTree_Bool_tdata[2:1])
                2'd0: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd0};
                2'd1: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd0};
                2'd2:
                  begin
                    dummy_write_QTree_Bool_d <= QNode_Bool_dc(1'd0, Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 2)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 3)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 4)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 5)]));
                    stack_QTree_Bool_ptr <= (stack_QTree_Bool_ptr - 4);
                    stack_QTree_Bool[(stack_QTree_Bool_ptr - 5)] <= stack_QTree_Bool[(stack_QTree_Bool_ptr - 1)];
                  end
                2'd3: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd0};
              endcase
            end
          else
            if (((i_QTree_Bool_tvalid == 1'd1) && (i_QTree_Bool_tready == 1'd0)))
              unique case (i_QTree_Bool_tdata[2:1])
                2'd0: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd1};
                2'd1: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd1};
                2'd2:
                  begin
                    dummy_write_QTree_Bool_d <= QNode_Bool_dc(1'd1, Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 2)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 3)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 4)]), Pointer_QTree_Bool_dc(1'd0, stack_QTree_Bool[(stack_QTree_Bool_ptr - 5)]));
                  end
                2'd3: dummy_write_QTree_Bool_d <= {i_QTree_Bool_tdata[66:1], 1'd1};
              endcase
            else ;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0)) reseted <= 1'd1;
    else ;
  
  logic \\MaskQTree_src_done ;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        dummy_write_MaskQTree_sink_rout <= 1'd1;
        \\MaskQTree_src_d  <= 1'd0;
        \\MaskQTree_src_done  <= 1'd0;
        forkHP1_MaskQTree_snk_rout <= 1'd1;
      end
    else
      if ((reseted == 1'd1))
        if (((\\MaskQTree_src_done  == 1'd0) && (\\MaskQTree_src_r  == 1'd0)))
          \\MaskQTree_src_d  <= 1'd1;
        else
          if (((\\MaskQTree_src_r  == 1'd1) && (\\MaskQTree_src_done  == 1'd0)))
            begin
              \\MaskQTree_src_done  <= 1'd1;
              \\MaskQTree_src_d  <= 1'd0;
            end
          else \\MaskQTree_src_d  <= 1'd0;
      else ;
  
  assign i_MaskQTree_tready = dummy_write_MaskQTree_r;
  
  logic data_MaskQTree_transfered;
  
  Pointer_MaskQTree_t stack_MaskQTree[255:0];
  
  Pointer_MaskQTree_t inputs_MaskQTree[0:0];
  
  logic [1:0] inputs_MaskQTree_ptr;
  
  logic [7:0] stack_MaskQTree_ptr;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        data_MaskQTree_transfered <= 1'd0;
        dummy_write_MaskQTree_d[0] <= 1'd0;
        stack_MaskQTree_ptr <= 8'd0;
        inputs_MaskQTree_ptr <= 2'd0;
      end
    else
      if ((data_MaskQTree_transfered == 1'd1))
        dummy_write_MaskQTree_d[0] <= 1'd0;
      else
        if ((\\MaskQTree_src_done  == 1'd1))
          if ((forkHP1_MaskQTree_snk_dout[0] == 1'd1))
            begin
              stack_MaskQTree[stack_MaskQTree_ptr] <= forkHP1_MaskQTree_snk_dout;
              stack_MaskQTree_ptr <= (stack_MaskQTree_ptr + 8'd1);
            end
        else
          if (((i_MaskQTree_tvalid == 1'd1) && (i_MaskQTree_tready == 1'd1)))
            begin
              if ((i_MaskQTree_tlast == 1'd1))
                begin
                  if ((inputs_MaskQTree_ptr == 2'd0))
                    data_MaskQTree_transfered <= 1'd1;
                  inputs_MaskQTree_ptr <= (inputs_MaskQTree_ptr + 1'd1);
                  inputs_MaskQTree[inputs_MaskQTree_ptr] <= stack_MaskQTree[(stack_MaskQTree_ptr - 8'd1)];
                end
              unique case (i_MaskQTree_tdata[2:1])
                2'd0: dummy_write_MaskQTree_d <= {i_MaskQTree_tdata[66:1], 1'd0};
                2'd1: dummy_write_MaskQTree_d <= {i_MaskQTree_tdata[66:1], 1'd0};
                2'd2:
                  begin
                    dummy_write_MaskQTree_d <= MQNode_dc(1'd0, Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 2)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 3)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 4)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 5)]));
                    stack_MaskQTree_ptr <= (stack_MaskQTree_ptr - 4);
                    stack_MaskQTree[(stack_MaskQTree_ptr - 5)] <= stack_MaskQTree[(stack_MaskQTree_ptr - 1)];
                  end
              endcase
            end
          else
            if (((i_MaskQTree_tvalid == 1'd1) && (i_MaskQTree_tready == 1'd0)))
              unique case (i_MaskQTree_tdata[2:1])
                2'd0: dummy_write_MaskQTree_d <= {i_MaskQTree_tdata[66:1], 1'd1};
                2'd1: dummy_write_MaskQTree_d <= {i_MaskQTree_tdata[66:1], 1'd1};
                2'd2:
                  begin
                    dummy_write_MaskQTree_d <= MQNode_dc(1'd1, Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 2)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 3)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 4)]), Pointer_MaskQTree_dc(1'd0, stack_MaskQTree[(stack_MaskQTree_ptr - 5)]));
                  end
              endcase
            else ;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0)) reseted <= 1'd1;
    else ;
  
  logic sourceGo_done;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        sourceGo_done <= 1'd0;
        sourceGo_d <= 1'd0;
      end
    else
      if (((data_transfered == 1'd1) && ((sourceGo_r == 1'd0) && (sourceGo_done == 1'd0))))
        sourceGo_d <= 1'd1;
      else
        if (((data_transfered == 1'd1) && (sourceGo_r == 1'd1)))
          begin
            sourceGo_d <= 1'd0;
            sourceGo_done <= 1'd1;
          end
        else
          if ((sourceGo_done == 1'd1))
            begin
              sourceGo_d <= 1'd0;
              sourceGo_done <= 1'd1;
            end
          else
            begin
              sourceGo_d <= 1'd0;
              sourceGo_done <= 1'd0;
            end
  
  logic m2a83_1_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m2a83_1_r == 1'd0) && (m2a83_1_done == 1'd0))))
      m2a83_1_d <= inputs_QTree_Bool[0];
    else
      if (((data_transfered == 1'd1) && (m2a83_1_r == 1'd1)))
        begin
          m2a83_1_d[0] <= 1'd0;
          m2a83_1_done <= 1'd1;
        end
      else
        if ((m2a83_1_done == 1'd1))
          begin
            m2a83_1_d[0] <= 1'd0;
            m2a83_1_done <= 1'd1;
          end
        else
          begin
            m2a83_1_d[0] <= 1'd0;
            m2a83_1_done <= 1'd0;
          end
  
  logic m3a84_2_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m3a84_2_r == 1'd0) && (m3a84_2_done == 1'd0))))
      m3a84_2_d <= inputs_QTree_Bool[1];
    else
      if (((data_transfered == 1'd1) && (m3a84_2_r == 1'd1)))
        begin
          m3a84_2_d[0] <= 1'd0;
          m3a84_2_done <= 1'd1;
        end
      else
        if ((m3a84_2_done == 1'd1))
          begin
            m3a84_2_d[0] <= 1'd0;
            m3a84_2_done <= 1'd1;
          end
        else
          begin
            m3a84_2_d[0] <= 1'd0;
            m3a84_2_done <= 1'd0;
          end
  
  logic m1a82_0_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m1a82_0_r == 1'd0) && (m1a82_0_done == 1'd0))))
      m1a82_0_d <= inputs_MaskQTree[0];
    else
      if (((data_transfered == 1'd1) && (m1a82_0_r == 1'd1)))
        begin
          m1a82_0_d[0] <= 1'd0;
          m1a82_0_done <= 1'd1;
        end
      else
        if ((m1a82_0_done == 1'd1))
          begin
            m1a82_0_d[0] <= 1'd0;
            m1a82_0_done <= 1'd1;
          end
        else
          begin
            m1a82_0_d[0] <= 1'd0;
            m1a82_0_done <= 1'd0;
          end
  
  assign f_resbuf_rout = result_ready;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0)) result_data <= 16'd0;
    else if ((f_resbuf_dout[0] == 1'd1)) result_data <= f_resbuf_dout;
endmodule