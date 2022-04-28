`timescale 1ns/1ns
import mAddAdd_package::*;

module mAddAdd_wrapper(
  input logic clk,
  input logic aresetn,
  input QTree_Bool_t i_QTree_Bool_tdata,
  input logic i_QTree_Bool_tlast,
  input logic i_QTree_Bool_tvalid,
  output logic i_QTree_Bool_tready,
  input logic result_ready,
  output Pointer_QTree_Bool_t result_data
  );
  mAddAdd DUT(clk, reset, \\QTree_Bool_src_d , \\QTree_Bool_src_r , dummy_write_QTree_Bool_d, dummy_write_QTree_Bool_r, sourceGo_d, sourceGo_r, m1aem_0_d, m1aem_0_r, m2aen_1_d, m2aen_1_r, m3aeo_2_d, m3aeo_2_r, forkHP1_QTree_Bool_snk_dout, forkHP1_QTree_Bool_snk_rout, dummy_write_QTree_Bool_sink_dout, dummy_write_QTree_Bool_sink_rout, mAdd_mAdd_Bool_2_argbuf_dout, mAdd_mAdd_Bool_2_argbuf_rout);
  
  logic data_transfered;
  
  assign data_transfered = data_QTree_Bool_transfered;
  
  logic reset;
  
  Go_t \\QTree_Bool_src_d ;
  
  logic \\QTree_Bool_src_r ;
  
  QTree_Bool_t dummy_write_QTree_Bool_d;
  
  logic dummy_write_QTree_Bool_r;
  
  Go_t sourceGo_d;
  
  logic sourceGo_r;
  
  Pointer_QTree_Bool_t m1aem_0_d;
  
  logic m1aem_0_r;
  
  Pointer_QTree_Bool_t m2aen_1_d;
  
  logic m2aen_1_r;
  
  Pointer_QTree_Bool_t m3aeo_2_d;
  
  logic m3aeo_2_r;
  
  \Word16#_t  forkHP1_QTree_Bool_snk_dout;
  
  logic forkHP1_QTree_Bool_snk_rout;
  
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout;
  
  logic dummy_write_QTree_Bool_sink_rout;
  
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_argbuf_dout;
  
  logic mAdd_mAdd_Bool_2_argbuf_rout;
  
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
  
  Pointer_QTree_Bool_t inputs_QTree_Bool[2:0];
  
  logic [3:0] inputs_QTree_Bool_ptr;
  
  logic [7:0] stack_QTree_Bool_ptr;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0))
      begin
        data_QTree_Bool_transfered <= 1'd0;
        dummy_write_QTree_Bool_d[0] <= 1'd0;
        stack_QTree_Bool_ptr <= 8'd0;
        inputs_QTree_Bool_ptr <= 4'd0;
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
                  if ((inputs_QTree_Bool_ptr == 4'd2))
                    data_QTree_Bool_transfered <= 1'd1;
                  inputs_QTree_Bool_ptr <= (inputs_QTree_Bool_ptr + 3'd1);
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
  
  logic m1aem_0_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m1aem_0_r == 1'd0) && (m1aem_0_done == 1'd0))))
      m1aem_0_d <= inputs_QTree_Bool[0];
    else
      if (((data_transfered == 1'd1) && (m1aem_0_r == 1'd1)))
        begin
          m1aem_0_d[0] <= 1'd0;
          m1aem_0_done <= 1'd1;
        end
      else
        if ((m1aem_0_done == 1'd1))
          begin
            m1aem_0_d[0] <= 1'd0;
            m1aem_0_done <= 1'd1;
          end
        else
          begin
            m1aem_0_d[0] <= 1'd0;
            m1aem_0_done <= 1'd0;
          end
  
  logic m2aen_1_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m2aen_1_r == 1'd0) && (m2aen_1_done == 1'd0))))
      m2aen_1_d <= inputs_QTree_Bool[1];
    else
      if (((data_transfered == 1'd1) && (m2aen_1_r == 1'd1)))
        begin
          m2aen_1_d[0] <= 1'd0;
          m2aen_1_done <= 1'd1;
        end
      else
        if ((m2aen_1_done == 1'd1))
          begin
            m2aen_1_d[0] <= 1'd0;
            m2aen_1_done <= 1'd1;
          end
        else
          begin
            m2aen_1_d[0] <= 1'd0;
            m2aen_1_done <= 1'd0;
          end
  
  logic m3aeo_2_done;
  
  always_ff @(posedge clk)
    if (((data_transfered == 1'd1) && ((m3aeo_2_r == 1'd0) && (m3aeo_2_done == 1'd0))))
      m3aeo_2_d <= inputs_QTree_Bool[2];
    else
      if (((data_transfered == 1'd1) && (m3aeo_2_r == 1'd1)))
        begin
          m3aeo_2_d[0] <= 1'd0;
          m3aeo_2_done <= 1'd1;
        end
      else
        if ((m3aeo_2_done == 1'd1))
          begin
            m3aeo_2_d[0] <= 1'd0;
            m3aeo_2_done <= 1'd1;
          end
        else
          begin
            m3aeo_2_d[0] <= 1'd0;
            m3aeo_2_done <= 1'd0;
          end
  
  assign mAdd_mAdd_Bool_2_argbuf_rout = result_ready;
  
  always_ff @(posedge clk)
    if ((aresetn == 1'd0)) result_data <= 16'd0;
    else
      if ((mAdd_mAdd_Bool_2_argbuf_dout[0] == 1'd1))
        result_data <= mAdd_mAdd_Bool_2_argbuf_dout;
endmodule