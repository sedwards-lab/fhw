`timescale 1ns / 1ps
import mMapKron_package::*;


module mMapKron_testbench(

    );
    
  logic aclk;
  logic aresetn;
  
  logic reseted = 0;
  
  QTree_Int_t i_tdata;          
  logic i_tready;             
  logic i_tvalid;              
  logic i_tlast;
  
  int i = 0;               
                                   
                                   
  logic o_tvalid;             
  logic o_tready = 1'd1;              
  Int_t o_tdata;
  
  
  QTree_Int_t new_array [];
  int new_array_ptr = 0;
  
  mMapKron_wrapper DUT(aclk, aresetn, i_tdata, i_tlast, i_tvalid, i_tready, o_tready, o_tdata);
  
  int fd;
  
  int number_of_inputs = 2;
  int inputs [2] = {1,1};
  int sizes [2];
  string path = "C:/Users/noize/haskell2hardware/fhw/examples/QTreeBenchmarks/diploma/verilog-int/mMapKron/test_";
  
  
  
  string line;
  string j_string;
  logic [0:66] l_test;
    
  initial begin
  
  new_array = new[4];
    
  
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
  
  $display("Inputs: %d", new_array_ptr);
  
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
            
            if (i == sizes[0] - 1 || i == sizes[1] - 1 || i == sizes[2] - 1) begin
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

    if(o_tdata[0]) begin
        $display(o_tdata);
        $finish();
    end
end
endmodule
