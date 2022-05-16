`timescale 1ns/1ns
package mMapAdd_package ;
    typedef logic [4:0] \Int4#_t ;
    typedef logic [8:0] \Int8#_t ;
    typedef logic [16:0] \Int16#_t ;
    typedef logic [32:0] \Int#_t ;
    typedef logic [4:0] \Word4#_t ;
    typedef logic [8:0] \Word8#_t ;
    typedef logic [16:0] \Word16#_t ;
    typedef logic [32:0] \Word#_t ;
    typedef logic [1:0] C2_t;
    function C2_t C1_2_dc (logic valid);
      begin
        C1_2_dc = 2'bx;
        C1_2_dc[0:0] = valid;
        C1_2_dc[1:1] = 1'd0;
      end
    endfunction
    function C2_t C2_2_dc (logic valid);
      begin
        C2_2_dc = 2'bx;
        C2_2_dc[0:0] = valid;
        C2_2_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [5:0] C23_t;
    function C23_t C1_23_dc (logic valid);
      begin
        C1_23_dc = 6'bx;
        C1_23_dc[0:0] = valid;
        C1_23_dc[5:1] = 5'd0;
      end
    endfunction
    function C23_t C2_23_dc (logic valid);
      begin
        C2_23_dc = 6'bx;
        C2_23_dc[0:0] = valid;
        C2_23_dc[5:1] = 5'd1;
      end
    endfunction
    function C23_t C3_23_dc (logic valid);
      begin
        C3_23_dc = 6'bx;
        C3_23_dc[0:0] = valid;
        C3_23_dc[5:1] = 5'd2;
      end
    endfunction
    function C23_t C4_23_dc (logic valid);
      begin
        C4_23_dc = 6'bx;
        C4_23_dc[0:0] = valid;
        C4_23_dc[5:1] = 5'd3;
      end
    endfunction
    function C23_t C5_23_dc (logic valid);
      begin
        C5_23_dc = 6'bx;
        C5_23_dc[0:0] = valid;
        C5_23_dc[5:1] = 5'd4;
      end
    endfunction
    function C23_t C6_23_dc (logic valid);
      begin
        C6_23_dc = 6'bx;
        C6_23_dc[0:0] = valid;
        C6_23_dc[5:1] = 5'd5;
      end
    endfunction
    function C23_t C7_23_dc (logic valid);
      begin
        C7_23_dc = 6'bx;
        C7_23_dc[0:0] = valid;
        C7_23_dc[5:1] = 5'd6;
      end
    endfunction
    function C23_t C8_23_dc (logic valid);
      begin
        C8_23_dc = 6'bx;
        C8_23_dc[0:0] = valid;
        C8_23_dc[5:1] = 5'd7;
      end
    endfunction
    function C23_t C9_23_dc (logic valid);
      begin
        C9_23_dc = 6'bx;
        C9_23_dc[0:0] = valid;
        C9_23_dc[5:1] = 5'd8;
      end
    endfunction
    function C23_t C10_23_dc (logic valid);
      begin
        C10_23_dc = 6'bx;
        C10_23_dc[0:0] = valid;
        C10_23_dc[5:1] = 5'd9;
      end
    endfunction
    function C23_t C11_23_dc (logic valid);
      begin
        C11_23_dc = 6'bx;
        C11_23_dc[0:0] = valid;
        C11_23_dc[5:1] = 5'd10;
      end
    endfunction
    function C23_t C12_23_dc (logic valid);
      begin
        C12_23_dc = 6'bx;
        C12_23_dc[0:0] = valid;
        C12_23_dc[5:1] = 5'd11;
      end
    endfunction
    function C23_t C13_23_dc (logic valid);
      begin
        C13_23_dc = 6'bx;
        C13_23_dc[0:0] = valid;
        C13_23_dc[5:1] = 5'd12;
      end
    endfunction
    function C23_t C14_23_dc (logic valid);
      begin
        C14_23_dc = 6'bx;
        C14_23_dc[0:0] = valid;
        C14_23_dc[5:1] = 5'd13;
      end
    endfunction
    function C23_t C15_23_dc (logic valid);
      begin
        C15_23_dc = 6'bx;
        C15_23_dc[0:0] = valid;
        C15_23_dc[5:1] = 5'd14;
      end
    endfunction
    function C23_t C16_23_dc (logic valid);
      begin
        C16_23_dc = 6'bx;
        C16_23_dc[0:0] = valid;
        C16_23_dc[5:1] = 5'd15;
      end
    endfunction
    function C23_t C17_23_dc (logic valid);
      begin
        C17_23_dc = 6'bx;
        C17_23_dc[0:0] = valid;
        C17_23_dc[5:1] = 5'd16;
      end
    endfunction
    function C23_t C18_23_dc (logic valid);
      begin
        C18_23_dc = 6'bx;
        C18_23_dc[0:0] = valid;
        C18_23_dc[5:1] = 5'd17;
      end
    endfunction
    function C23_t C19_23_dc (logic valid);
      begin
        C19_23_dc = 6'bx;
        C19_23_dc[0:0] = valid;
        C19_23_dc[5:1] = 5'd18;
      end
    endfunction
    function C23_t C20_23_dc (logic valid);
      begin
        C20_23_dc = 6'bx;
        C20_23_dc[0:0] = valid;
        C20_23_dc[5:1] = 5'd19;
      end
    endfunction
    function C23_t C21_23_dc (logic valid);
      begin
        C21_23_dc = 6'bx;
        C21_23_dc[0:0] = valid;
        C21_23_dc[5:1] = 5'd20;
      end
    endfunction
    function C23_t C22_23_dc (logic valid);
      begin
        C22_23_dc = 6'bx;
        C22_23_dc[0:0] = valid;
        C22_23_dc[5:1] = 5'd21;
      end
    endfunction
    function C23_t C23_23_dc (logic valid);
      begin
        C23_23_dc = 6'bx;
        C23_23_dc[0:0] = valid;
        C23_23_dc[5:1] = 5'd22;
      end
    endfunction
    typedef logic [16:0] Pointer_CT$wnnz_t;
    function Pointer_CT$wnnz_t Pointer_CT$wnnz_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CT$wnnz_dc = 17'bx;
        Pointer_CT$wnnz_dc[0:0] = valid;
        Pointer_CT$wnnz_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [16:0] Pointer_QTree_Int_t;
    function Pointer_QTree_Int_t Pointer_QTree_Int_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_QTree_Int_dc = 17'bx;
        Pointer_QTree_Int_dc[0:0] = valid;
        Pointer_QTree_Int_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] Go_t;
    function Go_t Go_dc (logic valid);
      begin
        Go_dc = 1'bx;
        Go_dc[0:0] = valid;
      end
    endfunction
    typedef logic [115:0] CT$wnnz_t;
    function CT$wnnz_t L$wnnzsbos_dc (logic valid, Go_t z1);
      begin
        L$wnnzsbos_dc = 116'bx;
        L$wnnzsbos_dc[0:0] = valid;
        L$wnnzsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CT$wnnz_t Lcall_$wnnz3_dc (logic valid, Pointer_CT$wnnz_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz3_dc = 116'bx;
        Lcall_$wnnz3_dc[0:0] = valid;
        Lcall_$wnnz3_dc[3:1] = 3'd1;
        Lcall_$wnnz3_dc[19:4] = z1[16:1];
        Lcall_$wnnz3_dc[35:20] = z2[16:1];
        Lcall_$wnnz3_dc[51:36] = z3[16:1];
        Lcall_$wnnz3_dc[67:52] = z4[16:1];
      end
    endfunction
    function CT$wnnz_t Lcall_$wnnz2_dc (logic valid, \Int#_t  z1, Pointer_CT$wnnz_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz2_dc = 116'bx;
        Lcall_$wnnz2_dc[0:0] = valid;
        Lcall_$wnnz2_dc[3:1] = 3'd2;
        Lcall_$wnnz2_dc[35:4] = z1[32:1];
        Lcall_$wnnz2_dc[51:36] = z2[16:1];
        Lcall_$wnnz2_dc[67:52] = z3[16:1];
        Lcall_$wnnz2_dc[83:68] = z4[16:1];
      end
    endfunction
    function CT$wnnz_t Lcall_$wnnz1_dc (logic valid, \Int#_t  z1, \Int#_t  z2, Pointer_CT$wnnz_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz1_dc = 116'bx;
        Lcall_$wnnz1_dc[0:0] = valid;
        Lcall_$wnnz1_dc[3:1] = 3'd3;
        Lcall_$wnnz1_dc[35:4] = z1[32:1];
        Lcall_$wnnz1_dc[67:36] = z2[32:1];
        Lcall_$wnnz1_dc[83:68] = z3[16:1];
        Lcall_$wnnz1_dc[99:84] = z4[16:1];
      end
    endfunction
    function CT$wnnz_t Lcall_$wnnz0_dc (logic valid, \Int#_t  z1, \Int#_t  z2, \Int#_t  z3, Pointer_CT$wnnz_t z4);
      begin
        Lcall_$wnnz0_dc = 116'bx;
        Lcall_$wnnz0_dc[0:0] = valid;
        Lcall_$wnnz0_dc[3:1] = 3'd4;
        Lcall_$wnnz0_dc[35:4] = z1[32:1];
        Lcall_$wnnz0_dc[67:36] = z2[32:1];
        Lcall_$wnnz0_dc[99:68] = z3[32:1];
        Lcall_$wnnz0_dc[115:100] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CT$wnnz_t;
    function MemIn_CT$wnnz_t ReadIn_CT$wnnz_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CT$wnnz_dc = 133'bx;
        ReadIn_CT$wnnz_dc[0:0] = valid;
        ReadIn_CT$wnnz_dc[1:1] = 1'd0;
        ReadIn_CT$wnnz_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CT$wnnz_t WriteIn_CT$wnnz_dc (logic valid, \Word16#_t  z1, CT$wnnz_t z2);
      begin
        WriteIn_CT$wnnz_dc = 133'bx;
        WriteIn_CT$wnnz_dc[0:0] = valid;
        WriteIn_CT$wnnz_dc[1:1] = 1'd1;
        WriteIn_CT$wnnz_dc[17:2] = z1[16:1];
        WriteIn_CT$wnnz_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CT$wnnz_t;
    function MemOut_CT$wnnz_t ReadOut_CT$wnnz_dc (logic valid, CT$wnnz_t z1);
      begin
        ReadOut_CT$wnnz_dc = 117'bx;
        ReadOut_CT$wnnz_dc[0:0] = valid;
        ReadOut_CT$wnnz_dc[1:1] = 1'd0;
        ReadOut_CT$wnnz_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CT$wnnz_t ACK_CT$wnnz_dc (logic valid);
      begin
        ACK_CT$wnnz_dc = 117'bx;
        ACK_CT$wnnz_dc[0:0] = valid;
        ACK_CT$wnnz_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] \Pointer_CTf''''''''_f''''''''_Int_Int_t ;
    function \Pointer_CTf''''''''_f''''''''_Int_Int_t  \Pointer_CTf''''''''_f''''''''_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTf''''''''_f''''''''_Int_Int_dc  = 17'bx;
        \Pointer_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        \Pointer_CTf''''''''_f''''''''_Int_Int_dc [16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] MyDTInt_Int_t;
    function MyDTInt_Int_t Dcon_main1_dc (logic valid, Go_t z1);
      begin
        Dcon_main1_dc = 1'bx;
        Dcon_main1_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [0:0] MyDTInt_Bool_t;
    function MyDTInt_Bool_t Dcon_is_z_1_dc (logic valid, Go_t z1);
      begin
        Dcon_is_z_1_dc = 1'bx;
        Dcon_is_z_1_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [67:0] \CTf''''''''_f''''''''_Int_Int_t ;
    function \CTf''''''''_f''''''''_Int_Int_t  \Lf''''''''_f''''''''_Int_Intsbos_dc  (logic valid, Go_t z1);
      begin
        \Lf''''''''_f''''''''_Int_Intsbos_dc  = 68'bx;
        \Lf''''''''_f''''''''_Int_Intsbos_dc [0:0] = valid;
        \Lf''''''''_f''''''''_Int_Intsbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTf''''''''_f''''''''_Int_Int_t  \Lcall_f''''''''_f''''''''_Int_Int3_dc  (logic valid, \Pointer_CTf''''''''_f''''''''_Int_Int_t  z1, Pointer_QTree_Int_t z2, MyDTInt_Bool_t z3, MyDTInt_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        \Lcall_f''''''''_f''''''''_Int_Int3_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [3:1] = 3'd1;
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [35:20] = z2[16:1];
        ;
        ;
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [51:36] = z5[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int3_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTf''''''''_f''''''''_Int_Int_t  \Lcall_f''''''''_f''''''''_Int_Int2_dc  (logic valid, Pointer_QTree_Int_t z1, \Pointer_CTf''''''''_f''''''''_Int_Int_t  z2, Pointer_QTree_Int_t z3, MyDTInt_Bool_t z4, MyDTInt_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        \Lcall_f''''''''_f''''''''_Int_Int2_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [3:1] = 3'd2;
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [51:36] = z3[16:1];
        ;
        ;
        \Lcall_f''''''''_f''''''''_Int_Int2_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTf''''''''_f''''''''_Int_Int_t  \Lcall_f''''''''_f''''''''_Int_Int1_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, \Pointer_CTf''''''''_f''''''''_Int_Int_t  z3, Pointer_QTree_Int_t z4, MyDTInt_Bool_t z5, MyDTInt_Int_t z6);
      begin
        \Lcall_f''''''''_f''''''''_Int_Int1_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [3:1] = 3'd3;
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int1_dc [67:52] = z4[16:1];
        ;
        ;
      end
    endfunction
    function \CTf''''''''_f''''''''_Int_Int_t  \Lcall_f''''''''_f''''''''_Int_Int0_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, \Pointer_CTf''''''''_f''''''''_Int_Int_t  z4);
      begin
        \Lcall_f''''''''_f''''''''_Int_Int0_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [3:1] = 3'd4;
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''_Int_Int0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [84:0] \MemIn_CTf''''''''_f''''''''_Int_Int_t ;
    function \MemIn_CTf''''''''_f''''''''_Int_Int_t  \ReadIn_CTf''''''''_f''''''''_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTf''''''''_f''''''''_Int_Int_dc  = 85'bx;
        \ReadIn_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        \ReadIn_CTf''''''''_f''''''''_Int_Int_dc [1:1] = 1'd0;
        \ReadIn_CTf''''''''_f''''''''_Int_Int_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTf''''''''_f''''''''_Int_Int_t  \WriteIn_CTf''''''''_f''''''''_Int_Int_dc  (logic valid, \Word16#_t  z1, \CTf''''''''_f''''''''_Int_Int_t  z2);
      begin
        \WriteIn_CTf''''''''_f''''''''_Int_Int_dc  = 85'bx;
        \WriteIn_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        \WriteIn_CTf''''''''_f''''''''_Int_Int_dc [1:1] = 1'd1;
        \WriteIn_CTf''''''''_f''''''''_Int_Int_dc [17:2] = z1[16:1];
        \WriteIn_CTf''''''''_f''''''''_Int_Int_dc [84:18] = z2[67:1];
      end
    endfunction
    typedef logic [68:0] \MemOut_CTf''''''''_f''''''''_Int_Int_t ;
    function \MemOut_CTf''''''''_f''''''''_Int_Int_t  \ReadOut_CTf''''''''_f''''''''_Int_Int_dc  (logic valid, \CTf''''''''_f''''''''_Int_Int_t  z1);
      begin
        \ReadOut_CTf''''''''_f''''''''_Int_Int_dc  = 69'bx;
        \ReadOut_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        \ReadOut_CTf''''''''_f''''''''_Int_Int_dc [1:1] = 1'd0;
        \ReadOut_CTf''''''''_f''''''''_Int_Int_dc [68:2] = z1[67:1];
      end
    endfunction
    function \MemOut_CTf''''''''_f''''''''_Int_Int_t  \ACK_CTf''''''''_f''''''''_Int_Int_dc  (logic valid);
      begin
        \ACK_CTf''''''''_f''''''''_Int_Int_dc  = 69'bx;
        \ACK_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        \ACK_CTf''''''''_f''''''''_Int_Int_dc [1:1] = 1'd1;
      end
    endfunction
    typedef logic [32:0] Int_t;
    function Int_t \I#_dc  (logic valid, \Int#_t  z1);
      begin
        \I#_dc  = 33'bx;
        \I#_dc [0:0] = valid;
        \I#_dc [32:1] = z1[32:1];
      end
    endfunction
    typedef logic [66:0] QTree_Int_t;
    function QTree_Int_t QNone_Int_dc (logic valid, Go_t z1);
      begin
        QNone_Int_dc = 67'bx;
        QNone_Int_dc[0:0] = valid;
        QNone_Int_dc[2:1] = 2'd0;
        ;
      end
    endfunction
    function QTree_Int_t QVal_Int_dc (logic valid, Int_t z1);
      begin
        QVal_Int_dc = 67'bx;
        QVal_Int_dc[0:0] = valid;
        QVal_Int_dc[2:1] = 2'd1;
        QVal_Int_dc[34:3] = z1[32:1];
      end
    endfunction
    function QTree_Int_t QNode_Int_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        QNode_Int_dc = 67'bx;
        QNode_Int_dc[0:0] = valid;
        QNode_Int_dc[2:1] = 2'd2;
        QNode_Int_dc[18:3] = z1[16:1];
        QNode_Int_dc[34:19] = z2[16:1];
        QNode_Int_dc[50:35] = z3[16:1];
        QNode_Int_dc[66:51] = z4[16:1];
      end
    endfunction
    function QTree_Int_t QError_Int_dc (logic valid, Go_t z1);
      begin
        QError_Int_dc = 67'bx;
        QError_Int_dc[0:0] = valid;
        QError_Int_dc[2:1] = 2'd3;
        ;
      end
    endfunction
    typedef logic [83:0] MemIn_QTree_Int_t;
    function MemIn_QTree_Int_t ReadIn_QTree_Int_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_QTree_Int_dc = 84'bx;
        ReadIn_QTree_Int_dc[0:0] = valid;
        ReadIn_QTree_Int_dc[1:1] = 1'd0;
        ReadIn_QTree_Int_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_QTree_Int_t WriteIn_QTree_Int_dc (logic valid, \Word16#_t  z1, QTree_Int_t z2);
      begin
        WriteIn_QTree_Int_dc = 84'bx;
        WriteIn_QTree_Int_dc[0:0] = valid;
        WriteIn_QTree_Int_dc[1:1] = 1'd1;
        WriteIn_QTree_Int_dc[17:2] = z1[16:1];
        WriteIn_QTree_Int_dc[83:18] = z2[66:1];
      end
    endfunction
    typedef logic [67:0] MemOut_QTree_Int_t;
    function MemOut_QTree_Int_t ReadOut_QTree_Int_dc (logic valid, QTree_Int_t z1);
      begin
        ReadOut_QTree_Int_dc = 68'bx;
        ReadOut_QTree_Int_dc[0:0] = valid;
        ReadOut_QTree_Int_dc[1:1] = 1'd0;
        ReadOut_QTree_Int_dc[67:2] = z1[66:1];
      end
    endfunction
    function MemOut_QTree_Int_t ACK_QTree_Int_dc (logic valid);
      begin
        ACK_QTree_Int_dc = 68'bx;
        ACK_QTree_Int_dc[0:0] = valid;
        ACK_QTree_Int_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] Pointer_CTf_f_Int_Int_t;
    function Pointer_CTf_f_Int_Int_t Pointer_CTf_f_Int_Int_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTf_f_Int_Int_dc = 17'bx;
        Pointer_CTf_f_Int_Int_dc[0:0] = valid;
        Pointer_CTf_f_Int_Int_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] MyDTInt_Int_Int_t;
    function MyDTInt_Int_Int_t \Dcon_$fNumInt_$c+_dc  (logic valid, Go_t z1);
      begin
        \Dcon_$fNumInt_$c+_dc  = 1'bx;
        \Dcon_$fNumInt_$c+_dc [0:0] = valid;
        ;
      end
    endfunction
    typedef logic [115:0] CTf_f_Int_Int_t;
    function CTf_f_Int_Int_t Lf_f_Int_Intsbos_dc (logic valid, Go_t z1);
      begin
        Lf_f_Int_Intsbos_dc = 116'bx;
        Lf_f_Int_Intsbos_dc[0:0] = valid;
        Lf_f_Int_Intsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTf_f_Int_Int_t Lcall_f_f_Int_Int3_dc (logic valid, Pointer_CTf_f_Int_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, MyDTInt_Bool_t z4, MyDTInt_Int_t z5, MyDTInt_Bool_t z6, MyDTInt_Int_Int_t z7, Pointer_QTree_Int_t z8, Pointer_QTree_Int_t z9, Pointer_QTree_Int_t z10, Pointer_QTree_Int_t z11);
      begin
        Lcall_f_f_Int_Int3_dc = 116'bx;
        Lcall_f_f_Int_Int3_dc[0:0] = valid;
        Lcall_f_f_Int_Int3_dc[3:1] = 3'd1;
        Lcall_f_f_Int_Int3_dc[19:4] = z1[16:1];
        Lcall_f_f_Int_Int3_dc[35:20] = z2[16:1];
        Lcall_f_f_Int_Int3_dc[51:36] = z3[16:1];
        ;
        ;
        ;
        ;
        Lcall_f_f_Int_Int3_dc[67:52] = z8[16:1];
        Lcall_f_f_Int_Int3_dc[83:68] = z9[16:1];
        Lcall_f_f_Int_Int3_dc[99:84] = z10[16:1];
        Lcall_f_f_Int_Int3_dc[115:100] = z11[16:1];
      end
    endfunction
    function CTf_f_Int_Int_t Lcall_f_f_Int_Int2_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_CTf_f_Int_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4, MyDTInt_Bool_t z5, MyDTInt_Int_t z6, MyDTInt_Bool_t z7, MyDTInt_Int_Int_t z8, Pointer_QTree_Int_t z9, Pointer_QTree_Int_t z10);
      begin
        Lcall_f_f_Int_Int2_dc = 116'bx;
        Lcall_f_f_Int_Int2_dc[0:0] = valid;
        Lcall_f_f_Int_Int2_dc[3:1] = 3'd2;
        Lcall_f_f_Int_Int2_dc[19:4] = z1[16:1];
        Lcall_f_f_Int_Int2_dc[35:20] = z2[16:1];
        Lcall_f_f_Int_Int2_dc[51:36] = z3[16:1];
        Lcall_f_f_Int_Int2_dc[67:52] = z4[16:1];
        ;
        ;
        ;
        ;
        Lcall_f_f_Int_Int2_dc[83:68] = z9[16:1];
        Lcall_f_f_Int_Int2_dc[99:84] = z10[16:1];
      end
    endfunction
    function CTf_f_Int_Int_t Lcall_f_f_Int_Int1_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_CTf_f_Int_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, MyDTInt_Bool_t z6, MyDTInt_Int_t z7, MyDTInt_Bool_t z8, MyDTInt_Int_Int_t z9);
      begin
        Lcall_f_f_Int_Int1_dc = 116'bx;
        Lcall_f_f_Int_Int1_dc[0:0] = valid;
        Lcall_f_f_Int_Int1_dc[3:1] = 3'd3;
        Lcall_f_f_Int_Int1_dc[19:4] = z1[16:1];
        Lcall_f_f_Int_Int1_dc[35:20] = z2[16:1];
        Lcall_f_f_Int_Int1_dc[51:36] = z3[16:1];
        Lcall_f_f_Int_Int1_dc[67:52] = z4[16:1];
        Lcall_f_f_Int_Int1_dc[83:68] = z5[16:1];
        ;
        ;
        ;
        ;
      end
    endfunction
    function CTf_f_Int_Int_t Lcall_f_f_Int_Int0_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_CTf_f_Int_Int_t z4);
      begin
        Lcall_f_f_Int_Int0_dc = 116'bx;
        Lcall_f_f_Int_Int0_dc[0:0] = valid;
        Lcall_f_f_Int_Int0_dc[3:1] = 3'd4;
        Lcall_f_f_Int_Int0_dc[19:4] = z1[16:1];
        Lcall_f_f_Int_Int0_dc[35:20] = z2[16:1];
        Lcall_f_f_Int_Int0_dc[51:36] = z3[16:1];
        Lcall_f_f_Int_Int0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CTf_f_Int_Int_t;
    function MemIn_CTf_f_Int_Int_t ReadIn_CTf_f_Int_Int_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTf_f_Int_Int_dc = 133'bx;
        ReadIn_CTf_f_Int_Int_dc[0:0] = valid;
        ReadIn_CTf_f_Int_Int_dc[1:1] = 1'd0;
        ReadIn_CTf_f_Int_Int_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTf_f_Int_Int_t WriteIn_CTf_f_Int_Int_dc (logic valid, \Word16#_t  z1, CTf_f_Int_Int_t z2);
      begin
        WriteIn_CTf_f_Int_Int_dc = 133'bx;
        WriteIn_CTf_f_Int_Int_dc[0:0] = valid;
        WriteIn_CTf_f_Int_Int_dc[1:1] = 1'd1;
        WriteIn_CTf_f_Int_Int_dc[17:2] = z1[16:1];
        WriteIn_CTf_f_Int_Int_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CTf_f_Int_Int_t;
    function MemOut_CTf_f_Int_Int_t ReadOut_CTf_f_Int_Int_dc (logic valid, CTf_f_Int_Int_t z1);
      begin
        ReadOut_CTf_f_Int_Int_dc = 117'bx;
        ReadOut_CTf_f_Int_Int_dc[0:0] = valid;
        ReadOut_CTf_f_Int_Int_dc[1:1] = 1'd0;
        ReadOut_CTf_f_Int_Int_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CTf_f_Int_Int_t ACK_CTf_f_Int_Int_dc (logic valid);
      begin
        ACK_CTf_f_Int_Int_dc = 117'bx;
        ACK_CTf_f_Int_Int_dc[0:0] = valid;
        ACK_CTf_f_Int_Int_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [3:0] C5_t;
    function C5_t C1_5_dc (logic valid);
      begin
        C1_5_dc = 4'bx;
        C1_5_dc[0:0] = valid;
        C1_5_dc[3:1] = 3'd0;
      end
    endfunction
    function C5_t C2_5_dc (logic valid);
      begin
        C2_5_dc = 4'bx;
        C2_5_dc[0:0] = valid;
        C2_5_dc[3:1] = 3'd1;
      end
    endfunction
    function C5_t C3_5_dc (logic valid);
      begin
        C3_5_dc = 4'bx;
        C3_5_dc[0:0] = valid;
        C3_5_dc[3:1] = 3'd2;
      end
    endfunction
    function C5_t C4_5_dc (logic valid);
      begin
        C4_5_dc = 4'bx;
        C4_5_dc[0:0] = valid;
        C4_5_dc[3:1] = 3'd3;
      end
    endfunction
    function C5_t C5_5_dc (logic valid);
      begin
        C5_5_dc = 4'bx;
        C5_5_dc[0:0] = valid;
        C5_5_dc[3:1] = 3'd4;
      end
    endfunction
    typedef logic [3:0] C8_t;
    function C8_t C1_8_dc (logic valid);
      begin
        C1_8_dc = 4'bx;
        C1_8_dc[0:0] = valid;
        C1_8_dc[3:1] = 3'd0;
      end
    endfunction
    function C8_t C2_8_dc (logic valid);
      begin
        C2_8_dc = 4'bx;
        C2_8_dc[0:0] = valid;
        C2_8_dc[3:1] = 3'd1;
      end
    endfunction
    function C8_t C3_8_dc (logic valid);
      begin
        C3_8_dc = 4'bx;
        C3_8_dc[0:0] = valid;
        C3_8_dc[3:1] = 3'd2;
      end
    endfunction
    function C8_t C4_8_dc (logic valid);
      begin
        C4_8_dc = 4'bx;
        C4_8_dc[0:0] = valid;
        C4_8_dc[3:1] = 3'd3;
      end
    endfunction
    function C8_t C5_8_dc (logic valid);
      begin
        C5_8_dc = 4'bx;
        C5_8_dc[0:0] = valid;
        C5_8_dc[3:1] = 3'd4;
      end
    endfunction
    function C8_t C6_8_dc (logic valid);
      begin
        C6_8_dc = 4'bx;
        C6_8_dc[0:0] = valid;
        C6_8_dc[3:1] = 3'd5;
      end
    endfunction
    function C8_t C7_8_dc (logic valid);
      begin
        C7_8_dc = 4'bx;
        C7_8_dc[0:0] = valid;
        C7_8_dc[3:1] = 3'd6;
      end
    endfunction
    function C8_t C8_8_dc (logic valid);
      begin
        C8_8_dc = 4'bx;
        C8_8_dc[0:0] = valid;
        C8_8_dc[3:1] = 3'd7;
      end
    endfunction
    typedef logic [2:0] C3_t;
    function C3_t C1_3_dc (logic valid);
      begin
        C1_3_dc = 3'bx;
        C1_3_dc[0:0] = valid;
        C1_3_dc[2:1] = 2'd0;
      end
    endfunction
    function C3_t C2_3_dc (logic valid);
      begin
        C2_3_dc = 3'bx;
        C2_3_dc[0:0] = valid;
        C2_3_dc[2:1] = 2'd1;
      end
    endfunction
    function C3_t C3_3_dc (logic valid);
      begin
        C3_3_dc = 3'bx;
        C3_3_dc[0:0] = valid;
        C3_3_dc[2:1] = 2'd2;
      end
    endfunction
    typedef logic [2:0] C4_t;
    function C4_t C1_4_dc (logic valid);
      begin
        C1_4_dc = 3'bx;
        C1_4_dc[0:0] = valid;
        C1_4_dc[2:1] = 2'd0;
      end
    endfunction
    function C4_t C2_4_dc (logic valid);
      begin
        C2_4_dc = 3'bx;
        C2_4_dc[0:0] = valid;
        C2_4_dc[2:1] = 2'd1;
      end
    endfunction
    function C4_t C3_4_dc (logic valid);
      begin
        C3_4_dc = 3'bx;
        C3_4_dc[0:0] = valid;
        C3_4_dc[2:1] = 2'd2;
      end
    endfunction
    function C4_t C4_4_dc (logic valid);
      begin
        C4_4_dc = 3'bx;
        C4_4_dc[0:0] = valid;
        C4_4_dc[2:1] = 2'd3;
      end
    endfunction
    typedef logic [5:0] C17_t;
    function C17_t C1_17_dc (logic valid);
      begin
        C1_17_dc = 6'bx;
        C1_17_dc[0:0] = valid;
        C1_17_dc[5:1] = 5'd0;
      end
    endfunction
    function C17_t C2_17_dc (logic valid);
      begin
        C2_17_dc = 6'bx;
        C2_17_dc[0:0] = valid;
        C2_17_dc[5:1] = 5'd1;
      end
    endfunction
    function C17_t C3_17_dc (logic valid);
      begin
        C3_17_dc = 6'bx;
        C3_17_dc[0:0] = valid;
        C3_17_dc[5:1] = 5'd2;
      end
    endfunction
    function C17_t C4_17_dc (logic valid);
      begin
        C4_17_dc = 6'bx;
        C4_17_dc[0:0] = valid;
        C4_17_dc[5:1] = 5'd3;
      end
    endfunction
    function C17_t C5_17_dc (logic valid);
      begin
        C5_17_dc = 6'bx;
        C5_17_dc[0:0] = valid;
        C5_17_dc[5:1] = 5'd4;
      end
    endfunction
    function C17_t C6_17_dc (logic valid);
      begin
        C6_17_dc = 6'bx;
        C6_17_dc[0:0] = valid;
        C6_17_dc[5:1] = 5'd5;
      end
    endfunction
    function C17_t C7_17_dc (logic valid);
      begin
        C7_17_dc = 6'bx;
        C7_17_dc[0:0] = valid;
        C7_17_dc[5:1] = 5'd6;
      end
    endfunction
    function C17_t C8_17_dc (logic valid);
      begin
        C8_17_dc = 6'bx;
        C8_17_dc[0:0] = valid;
        C8_17_dc[5:1] = 5'd7;
      end
    endfunction
    function C17_t C9_17_dc (logic valid);
      begin
        C9_17_dc = 6'bx;
        C9_17_dc[0:0] = valid;
        C9_17_dc[5:1] = 5'd8;
      end
    endfunction
    function C17_t C10_17_dc (logic valid);
      begin
        C10_17_dc = 6'bx;
        C10_17_dc[0:0] = valid;
        C10_17_dc[5:1] = 5'd9;
      end
    endfunction
    function C17_t C11_17_dc (logic valid);
      begin
        C11_17_dc = 6'bx;
        C11_17_dc[0:0] = valid;
        C11_17_dc[5:1] = 5'd10;
      end
    endfunction
    function C17_t C12_17_dc (logic valid);
      begin
        C12_17_dc = 6'bx;
        C12_17_dc[0:0] = valid;
        C12_17_dc[5:1] = 5'd11;
      end
    endfunction
    function C17_t C13_17_dc (logic valid);
      begin
        C13_17_dc = 6'bx;
        C13_17_dc[0:0] = valid;
        C13_17_dc[5:1] = 5'd12;
      end
    endfunction
    function C17_t C14_17_dc (logic valid);
      begin
        C14_17_dc = 6'bx;
        C14_17_dc[0:0] = valid;
        C14_17_dc[5:1] = 5'd13;
      end
    endfunction
    function C17_t C15_17_dc (logic valid);
      begin
        C15_17_dc = 6'bx;
        C15_17_dc[0:0] = valid;
        C15_17_dc[5:1] = 5'd14;
      end
    endfunction
    function C17_t C16_17_dc (logic valid);
      begin
        C16_17_dc = 6'bx;
        C16_17_dc[0:0] = valid;
        C16_17_dc[5:1] = 5'd15;
      end
    endfunction
    function C17_t C17_17_dc (logic valid);
      begin
        C17_17_dc = 6'bx;
        C17_17_dc[0:0] = valid;
        C17_17_dc[5:1] = 5'd16;
      end
    endfunction
    typedef logic [16:0] TupGo___Pointer_QTree_Int_t;
    function TupGo___Pointer_QTree_Int_t TupGo___Pointer_QTree_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2);
      begin
        TupGo___Pointer_QTree_Int_dc = 17'bx;
        TupGo___Pointer_QTree_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int_dc[16:1] = z2[16:1];
      end
    endfunction
    typedef logic [32:0] TupGo___MyDTInt_Bool___Int_t;
    function TupGo___MyDTInt_Bool___Int_t TupGo___MyDTInt_Bool___Int_dc (logic valid, Go_t z1, MyDTInt_Bool_t z2, Int_t z3);
      begin
        TupGo___MyDTInt_Bool___Int_dc = 33'bx;
        TupGo___MyDTInt_Bool___Int_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTInt_Bool___Int_dc[32:1] = z3[32:1];
      end
    endfunction
    typedef logic [32:0] TupGo___MyDTInt_Int___Int_t;
    function TupGo___MyDTInt_Int___Int_t TupGo___MyDTInt_Int___Int_dc (logic valid, Go_t z1, MyDTInt_Int_t z2, Int_t z3);
      begin
        TupGo___MyDTInt_Int___Int_dc = 33'bx;
        TupGo___MyDTInt_Int___Int_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTInt_Int___Int_dc[32:1] = z3[32:1];
      end
    endfunction
    typedef logic [64:0] TupMyDTInt_Int_Int___Int___Int_t;
    function TupMyDTInt_Int_Int___Int___Int_t TupMyDTInt_Int_Int___Int___Int_dc (logic valid, MyDTInt_Int_Int_t z1, Int_t z2, Int_t z3);
      begin
        TupMyDTInt_Int_Int___Int___Int_dc = 65'bx;
        TupMyDTInt_Int_Int___Int___Int_dc[0:0] = valid;
        ;
        TupMyDTInt_Int_Int___Int___Int_dc[32:1] = z2[32:1];
        TupMyDTInt_Int_Int___Int___Int_dc[64:33] = z3[32:1];
      end
    endfunction
    typedef logic [1:0] Bool_t;
    function Bool_t False_dc (logic valid, Go_t z1);
      begin
        False_dc = 2'bx;
        False_dc[0:0] = valid;
        False_dc[1:1] = 1'd0;
        ;
      end
    endfunction
    function Bool_t True_dc (logic valid, Go_t z1);
      begin
        True_dc = 2'bx;
        True_dc[0:0] = valid;
        True_dc[1:1] = 1'd1;
        ;
      end
    endfunction
    typedef logic [1:0] TupGo___Bool_t;
    function TupGo___Bool_t TupGo___Bool_dc (logic valid, Go_t z1, Bool_t z2);
      begin
        TupGo___Bool_dc = 2'bx;
        TupGo___Bool_dc[0:0] = valid;
        ;
        TupGo___Bool_dc[1:1] = z2[1:1];
      end
    endfunction
    typedef logic [32:0] TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_t;
    function TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_t TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_CT$wnnz_t z3);
      begin
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc = 33'bx;
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc[32:17] = z3[16:1];
      end
    endfunction
    typedef logic [32:0] \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_t ;
    function \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_t  \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_dc  (logic valid, Go_t z1, Pointer_QTree_Int_t z2, MyDTInt_Bool_t z3, MyDTInt_Int_t z4, \Pointer_CTf''''''''_f''''''''_Int_Int_t  z5);
      begin
        \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_dc  = 33'bx;
        \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_dc [0:0] = valid;
        ;
        \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_dc [16:1] = z2[16:1];
        ;
        ;
        \TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___Pointer_CTf''''''''_f''''''''_Int_Int_dc [32:17] = z5[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_t;
    function TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_t TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, MyDTInt_Bool_t z4, MyDTInt_Int_t z5, MyDTInt_Bool_t z6, MyDTInt_Int_Int_t z7, Pointer_CTf_f_Int_Int_t z8);
      begin
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc = 49'bx;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc[32:17] = z3[16:1];
        ;
        ;
        ;
        ;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_CTf_f_Int_Int_dc[48:33] = z8[16:1];
      end
    endfunction
    typedef logic [16:0] TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_t;
    function TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_t TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, MyDTInt_Bool_t z3, MyDTInt_Int_t z4);
      begin
        TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_dc = 17'bx;
        TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int_dc[16:1] = z2[16:1];
        ;
        ;
      end
    endfunction
    typedef logic [32:0] TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_t;
    function TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_t TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, MyDTInt_Bool_t z4, MyDTInt_Int_t z5, MyDTInt_Bool_t z6, MyDTInt_Int_Int_t z7);
      begin
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_dc = 33'bx;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___MyDTInt_Bool___MyDTInt_Int___MyDTInt_Bool___MyDTInt_Int_Int_dc[32:17] = z3[16:1];
        ;
        ;
        ;
        ;
      end
    endfunction
    typedef logic [1:0] MyBool_t;
    function MyBool_t MyFalse_dc (logic valid, Go_t z1);
      begin
        MyFalse_dc = 2'bx;
        MyFalse_dc[0:0] = valid;
        MyFalse_dc[1:1] = 1'd0;
        ;
      end
    endfunction
    function MyBool_t MyTrue_dc (logic valid, Go_t z1);
      begin
        MyTrue_dc = 2'bx;
        MyTrue_dc[0:0] = valid;
        MyTrue_dc[1:1] = 1'd1;
        ;
      end
    endfunction
endpackage