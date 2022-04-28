`timescale 1ns/1ns
import mMaskAdd_package::*;

module mMaskAdd_wrapper(
  input logic clk,
  input logic aresetn,
  input QTree_Int_t i_QTree_Int_tdata,
  input logic i_QTree_Int_tlast,
  input logic i_QTree_Int_tvalid,
  output logic i_QTree_Int_tready,
  input MaskQTree_t i_MaskQTree_tdata,
  input logic i_MaskQTree_tlast,
  input logic i_MaskQTree_tvalid,
  output logic i_MaskQTree_tready,
  input logic result_ready,
  output Int_t result_data
  );
  mMaskAdd DUT(clk, reset, \\QTree_Int_src_d , \\QTree_Int_src_r , dummy_write_QTree_Int_d, dummy_write_QTree_Int_r, \\MaskQTree_src_d , \\MaskQTree_src_r , dummy_write_MaskQTree_d, dummy_write_MaskQTree_r, sourceGo_d, sourceGo_r, m1a92_0_d, m1a92_0_r, m2a93_1_d, m2a93_1_r, m3a94_2_d, m3a94_2_r, forkHP1_QTree_Int_snk_dout, forkHP1_QTree_Int_snk_rout, dummy_write_QTree_Int_sink_dout, dummy_write_QTree_Int_sink_rout, forkHP1_MaskQTree_snk_dout, forkHP1_MaskQTree_snk_rout, dummy_write_MaskQTree_sink_dout, dummy_write_MaskQTree_sink_rout, \es_6_1I#_dout , \es_6_1I#_rout );
  
  logic data_transfered;
  
  assign data_transfered = (data_MaskQTree_transfered && data_QTree_Int_transfered);
  
  logic reset;
  
  Go_t \\QTree_Int_src_d ;
  
  logic \\QTree_Int_src_r ;
  
  QTree_Int_t dummy_write_QTree_Int_d;
  
  logic dummy_write_QTree_Int_r;
  
  Go_t \\MaskQTree_src_d ;
  
  logic \\MaskQTree_src_r ;
  
  MaskQTree_t dummy_write_MaskQTree_d;
  
  logic dummy_write_MaskQTree_r;
  
  Go_t sourceGo_d;
  
  logic sourceGo_r;
  
  Pointer_MaskQTree_t m1a92_0_d;
  
  logic m1a92_0_r;
  
  Pointer_QTree_Int_t m2a93_1_d;
  
  logic m2a93_1_r;
  
  Pointer_QTree_Int_t m3a94_2_d;
  
  logic m3a94_2_r;
  
  \Word16#_t  forkHP1_QTree_Int_snk_dout;
  
  logic forkHP1_QTree_Int_snk_rout;
  
  Pointer_QTree_Int_t dummy_write_QTree_Int_sink_dout;
  
  logic dummy_write_QTree_Int_sink_rout;
  
  \Word16#_t  forkHP1_MaskQTree_snk_dout;
  
  logic forkHP1_MaskQTree_snk_rout;
  
  Pointer_MaskQTree_t dummy_write_MaskQTree_sink_dout;
  
  logic dummy_write_MaskQTree_sink_rout;
  
  Int_t \es_6_1I#_dout ;
  
  logic \es_6_1I#_rout ;
  
  assign reset = (~ aresetn);
  
  logic reseted;
  
  logic \\QTree_Int_src_done ;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        dummy_write_QTree_Int_sink_rout <= 1'd1;
        \\QTree_Int_src_d  <= 1'd0;
        \\QTree_Int_src_done  <= 1'd0;
        forkHP1_QTree_Int_snk_rout <= 1'd1;
      end
    else
      if ((reseted == 1'd1))
        if (((\\QTree_Int_src_done  == 1'd0) && (\\QTree_Int_src_r  == 1'd0)))
          \\QTree_Int_src_d  <= 1'd1;
        else
          if (((\\QTree_Int_src_r  == 1'd1) && (\\QTree_Int_src_done  == 1'd0)))
            begin
              \\QTree_Int_src_done  <= 1'd1;
              \\QTree_Int_src_d  <= 1'd0;
            end
          else \\QTree_Int_src_d  <= 1'd0;
      else ;
  
  assign i_QTree_Int_tready = dummy_write_QTree_Int_r;
  
  logic data_QTree_Int_transfered;
  
  Pointer_QTree_Int_t stack_QTree_Int[255:0];
  
  Pointer_QTree_Int_t inputs_QTree_Int[1:0];
  
  logic [2:0] inputs_QTree_Int_ptr;
  
  logic [7:0] stack_QTree_Int_ptr;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        data_QTree_Int_transfered <= 1'd0;
        dummy_write_QTree_Int_d[0] <= 1'd0;
        stack_QTree_Int_ptr <= 8'd0;
        inputs_QTree_Int_ptr <= 3'd0;
      end
    else
      if ((data_QTree_Int_transfered == 1'd1))
        dummy_write_QTree_Int_d[0] <= 1'd0;
      else
        if ((\\QTree_Int_src_done  == 1'd1))
          if ((forkHP1_QTree_Int_snk_dout[0] == 1'd1))
            begin
              stack_QTree_Int[stack_QTree_Int_ptr] <= forkHP1_QTree_Int_snk_dout;
              stack_QTree_Int_ptr <= (stack_QTree_Int_ptr + 8'd1);
            end
        else
          if (((i_QTree_Int_tvalid == 1'd1) && (i_QTree_Int_tready == 1'd1)))
            begin
              if ((i_QTree_Int_tlast == 1'd1))
                begin
                  if ((inputs_QTree_Int_ptr == 3'd1))
                    data_QTree_Int_transfered <= 1'd1;
                  inputs_QTree_Int_ptr <= (inputs_QTree_Int_ptr + 2'd1);
                  inputs_QTree_Int[inputs_QTree_Int_ptr] <= stack_QTree_Int[(stack_QTree_Int_ptr - 8'd1)];
                end
              unique case (i_QTree_Int_tdata[2:1])
                2'd0: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd0};
                2'd1: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd0};
                2'd2:
                  begin
                    dummy_write_QTree_Int_d <= QNode_Int_dc(1'd0, Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 2)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 3)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 4)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 5)]));
                    stack_QTree_Int_ptr <= (stack_QTree_Int_ptr - 4);
                    stack_QTree_Int[(stack_QTree_Int_ptr - 5)] <= stack_QTree_Int[(stack_QTree_Int_ptr - 1)];
                  end
                2'd3: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd0};
              endcase
            end
          else
            if (((i_QTree_Int_tvalid == 1'd1) && (i_QTree_Int_tready == 1'd0)))
              unique case (i_QTree_Int_tdata[2:1])
                2'd0: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd1};
                2'd1: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd1};
                2'd2:
                  begin
                    dummy_write_QTree_Int_d <= QNode_Int_dc(1'd1, Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 2)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 3)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 4)]), Pointer_QTree_Int_dc(1'd0, stack_QTree_Int[(stack_QTree_Int_ptr - 5)]));
                  end
                2'd3: dummy_write_QTree_Int_d <= {i_QTree_Int_tdata[66:1], 1'd1};
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
  
  logic m2a93_1_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m2a93_1_r == 1'd0) && (m2a93_1_done == 1'd0))))
      m2a93_1_d <= inputs_QTree_Int[0];
    else
      if (((data_transfered == 1'd1) && (m2a93_1_r == 1'd1)))
        begin
          m2a93_1_d[0] <= 1'd0;
          m2a93_1_done <= 1'd1;
        end
      else
        if ((m2a93_1_done == 1'd1))
          begin
            m2a93_1_d[0] <= 1'd0;
            m2a93_1_done <= 1'd1;
          end
        else
          begin
            m2a93_1_d[0] <= 1'd0;
            m2a93_1_done <= 1'd0;
          end
  
  logic m3a94_2_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m3a94_2_r == 1'd0) && (m3a94_2_done == 1'd0))))
      m3a94_2_d <= inputs_QTree_Int[1];
    else
      if (((data_transfered == 1'd1) && (m3a94_2_r == 1'd1)))
        begin
          m3a94_2_d[0] <= 1'd0;
          m3a94_2_done <= 1'd1;
        end
      else
        if ((m3a94_2_done == 1'd1))
          begin
            m3a94_2_d[0] <= 1'd0;
            m3a94_2_done <= 1'd1;
          end
        else
          begin
            m3a94_2_d[0] <= 1'd0;
            m3a94_2_done <= 1'd0;
          end
  
  logic m1a92_0_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m1a92_0_r == 1'd0) && (m1a92_0_done == 1'd0))))
      m1a92_0_d <= inputs_MaskQTree[0];
    else
      if (((data_transfered == 1'd1) && (m1a92_0_r == 1'd1)))
        begin
          m1a92_0_d[0] <= 1'd0;
          m1a92_0_done <= 1'd1;
        end
      else
        if ((m1a92_0_done == 1'd1))
          begin
            m1a92_0_d[0] <= 1'd0;
            m1a92_0_done <= 1'd1;
          end
        else
          begin
            m1a92_0_d[0] <= 1'd0;
            m1a92_0_done <= 1'd0;
          end
  
  assign \es_6_1I#_rout  = result_ready;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0)) result_data <= 32'd0;
    else
      if ((\es_6_1I#_dout [0] == 1'd1)) result_data <= \es_6_1I#_dout ;
endmodule