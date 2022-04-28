`timescale 1ns / 1ps
import mMaskAdd_package::*;


module mMaskAdd_testbench(

    );
    
  logic aclk;
  logic aresetn;
  
  logic reseted = 0;
  
  QTree_Int_t i_tdata;          
  logic i_tready;             
  logic i_tvalid;              
  logic i_tlast;

  MaskQTree_t i_MaskQTree_tdata;
  logic i_MaskQTree_tlast;
  logic i_MaskQTree_tvalid;
  logic i_MaskQTree_tready;
  
  int i = 0;
  int i_mask = 0;               
                                   
                                   
  logic o_tvalid;             
  logic o_tready = 1'd1;              
  Int_t o_tdata;
  
  
  QTree_Int_t new_array [];
  int new_array_ptr = 0;

  MaskQTree_t new_array_mask [];
  int new_array_mask_ptr = 0;
  
  mMaskAdd_wrapper DUT(aclk, aresetn, i_tdata, i_tlast, i_tvalid, i_tready, i_MaskQTree_tdata, i_MaskQTree_tlast, i_MaskQTree_tvalid, i_MaskQTree_tready, o_tready, o_tdata);
  
  int fd;
  int fd_mask;
  
  int number_of_inputs = 2;
  int inputs [2] = {1,1};
  int sizes [2];

  int number_of_inputs_mask = 1;
  int inputs_mask [1] = {1};
  int sizes_mask [1];

  string path = "C:/Users/noize/haskell2hardware/fhw/examples/QTreeBenchmarks/diploma/verilog-int/mMaskAdd/test_";
  string path_mask = "C:/Users/noize/haskell2hardware/fhw/examples/QTreeBenchmarks/diploma/verilog-int/mMaskAdd/mask_";
  
  
  
  string line;
  string j_string;
  logic [0:66] l_test;
    
  initial begin
  
  new_array = new[4];
  new_array_mask = new[4];
    
  
  for (int in = 0; in < number_of_inputs; in++) begin
  
          j_string.itoa(inputs[in]);
          $display({path,j_string,".mtx"});
          fd = $fopen({path,j_string,".mtx"}, "r");
          
          if(fd) begin
              while(!$feof(fd)) begin
                $fgets(line, fd);
                if (line != "") begin
                    
                    if (new_array_ptr == new_array.size() - 1) begin
                        new_array = new [new_array.size() * 2](new_array);
                    end
                    
                    for(int k = 0; k < line.len(); k++) begin
                        l_test[k] = line[k];
                    end
                    
                    new_array[new_array_ptr] = l_test;
                    new_array_ptr = new_array_ptr + 1;
                 end
              end
              
              sizes[in] = new_array_ptr;
          end
          else
            $display("Cannot open file, %0d", fd);
          $fclose(fd);
        
  end


  for (int in = 0; in < number_of_inputs_mask; in++) begin
  
          j_string.itoa(inputs_mask[in]);
          $display({path_mask,j_string,".mtx"});
          fd_mask = $fopen({path_mask,j_string,".mtx"}, "r");
          
          if(fd_mask) begin
              while(!$feof(fd_mask)) begin
                $fgets(line, fd_mask);
                if (line != "") begin
                    
                    if (new_array_mask_ptr == new_array_mask.size() - 1) begin
                        new_array_mask = new [new_array_mask.size() * 2](new_array_mask);
                    end
                    
                    for(int k = 0; k < line.len(); k++) begin
                        l_test[k] = line[k];
                    end
                    
                    new_array_mask[new_array_mask_ptr] = l_test;
                    new_array_mask_ptr = new_array_mask_ptr + 1;
                 end
              end
              
              sizes_mask[in] = new_array_mask_ptr;
          end
          else
            $display("Cannot open file, %0d", fd_mask);
          $fclose(fd);
        
  end
  
  $display("Inputs: %d", new_array_ptr);
  $display("Masks: %d", new_array_mask_ptr);
  
  end;
  
  always begin 
     aclk = 1'b1; 
     #8; 
     aclk = 1'b0;
     #8;  
  end 

  always@(posedge aclk) begin 
    if (aresetn == 1 && reseted == 0) begin
        aresetn <= 0;
    end
    else if (aresetn == 0 && reseted == 0) begin
        reseted <= 1;
        aresetn <= 1;
    end
    else aresetn <= 1;
  end
    
    
always@(posedge aclk) begin 
    if (reseted == 1'd1) begin
    
        if(i < new_array_ptr) begin
            i_tvalid <= 1'd1;
            i_tdata <= new_array[i];
            
            if (i == sizes[0] - 1 || i == sizes[1] - 1) begin
                i_tlast <= 1'd1;
            end
            else begin
                i_tlast <= 1'd0;
            end
            
            if (i_tready) begin
                i <= i + 1;
            end
        end
        else begin
            i_tvalid <= 1'd0;
            i_tdata <= 0;
        end
    end
    
    else begin
        i_tvalid <= 1'd0;
        i_tlast <= 1'd0;
    end
end

always@(posedge aclk) begin 
    if (reseted == 1'd1) begin
    
        if(i_mask < new_array_mask_ptr) begin
            i_MaskQTree_tvalid <= 1'd1;
            i_MaskQTree_tdata <= new_array_mask[i_mask];
            
            if (i_mask == sizes_mask[0] - 1) begin
                i_MaskQTree_tlast <= 1'd1;
            end
            else begin
                i_MaskQTree_tlast <= 1'd0;
            end
            
            if (i_MaskQTree_tready) begin
                i_mask <= i_mask + 1;
            end
        end
        else begin
            i_MaskQTree_tvalid <= 1'd0;
            i_MaskQTree_tdata <= 0;
        end
    end
    
    else begin
        i_MaskQTree_tvalid <= 1'd0;
        i_MaskQTree_tlast <= 1'd0;
    end
end



always@(posedge aclk) begin

    if(o_tdata[0]) begin
        $display(o_tdata);
        $finish();
    end
end
endmodule
