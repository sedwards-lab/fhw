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
    typedef logic [5:0] C18_t;
    function C18_t C1_18_dc (logic valid);
      begin
        C1_18_dc = 6'bx;
        C1_18_dc[0:0] = valid;
        C1_18_dc[5:1] = 5'd0;
      end
    endfunction
    function C18_t C2_18_dc (logic valid);
      begin
        C2_18_dc = 6'bx;
        C2_18_dc[0:0] = valid;
        C2_18_dc[5:1] = 5'd1;
      end
    endfunction
    function C18_t C3_18_dc (logic valid);
      begin
        C3_18_dc = 6'bx;
        C3_18_dc[0:0] = valid;
        C3_18_dc[5:1] = 5'd2;
      end
    endfunction
    function C18_t C4_18_dc (logic valid);
      begin
        C4_18_dc = 6'bx;
        C4_18_dc[0:0] = valid;
        C4_18_dc[5:1] = 5'd3;
      end
    endfunction
    function C18_t C5_18_dc (logic valid);
      begin
        C5_18_dc = 6'bx;
        C5_18_dc[0:0] = valid;
        C5_18_dc[5:1] = 5'd4;
      end
    endfunction
    function C18_t C6_18_dc (logic valid);
      begin
        C6_18_dc = 6'bx;
        C6_18_dc[0:0] = valid;
        C6_18_dc[5:1] = 5'd5;
      end
    endfunction
    function C18_t C7_18_dc (logic valid);
      begin
        C7_18_dc = 6'bx;
        C7_18_dc[0:0] = valid;
        C7_18_dc[5:1] = 5'd6;
      end
    endfunction
    function C18_t C8_18_dc (logic valid);
      begin
        C8_18_dc = 6'bx;
        C8_18_dc[0:0] = valid;
        C8_18_dc[5:1] = 5'd7;
      end
    endfunction
    function C18_t C9_18_dc (logic valid);
      begin
        C9_18_dc = 6'bx;
        C9_18_dc[0:0] = valid;
        C9_18_dc[5:1] = 5'd8;
      end
    endfunction
    function C18_t C10_18_dc (logic valid);
      begin
        C10_18_dc = 6'bx;
        C10_18_dc[0:0] = valid;
        C10_18_dc[5:1] = 5'd9;
      end
    endfunction
    function C18_t C11_18_dc (logic valid);
      begin
        C11_18_dc = 6'bx;
        C11_18_dc[0:0] = valid;
        C11_18_dc[5:1] = 5'd10;
      end
    endfunction
    function C18_t C12_18_dc (logic valid);
      begin
        C12_18_dc = 6'bx;
        C12_18_dc[0:0] = valid;
        C12_18_dc[5:1] = 5'd11;
      end
    endfunction
    function C18_t C13_18_dc (logic valid);
      begin
        C13_18_dc = 6'bx;
        C13_18_dc[0:0] = valid;
        C13_18_dc[5:1] = 5'd12;
      end
    endfunction
    function C18_t C14_18_dc (logic valid);
      begin
        C14_18_dc = 6'bx;
        C14_18_dc[0:0] = valid;
        C14_18_dc[5:1] = 5'd13;
      end
    endfunction
    function C18_t C15_18_dc (logic valid);
      begin
        C15_18_dc = 6'bx;
        C15_18_dc[0:0] = valid;
        C15_18_dc[5:1] = 5'd14;
      end
    endfunction
    function C18_t C16_18_dc (logic valid);
      begin
        C16_18_dc = 6'bx;
        C16_18_dc[0:0] = valid;
        C16_18_dc[5:1] = 5'd15;
      end
    endfunction
    function C18_t C17_18_dc (logic valid);
      begin
        C17_18_dc = 6'bx;
        C17_18_dc[0:0] = valid;
        C17_18_dc[5:1] = 5'd16;
      end
    endfunction
    function C18_t C18_18_dc (logic valid);
      begin
        C18_18_dc = 6'bx;
        C18_18_dc[0:0] = valid;
        C18_18_dc[5:1] = 5'd17;
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
    typedef logic [16:0] Pointer_CT$wnnz_t;
    function Pointer_CT$wnnz_t Pointer_CT$wnnz_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CT$wnnz_dc = 17'bx;
        Pointer_CT$wnnz_dc[0:0] = valid;
        Pointer_CT$wnnz_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [16:0] Pointer_QTree_Bool_t;
    function Pointer_QTree_Bool_t Pointer_QTree_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_QTree_Bool_dc = 17'bx;
        Pointer_QTree_Bool_dc[0:0] = valid;
        Pointer_QTree_Bool_dc[16:1] = z1[16:1];
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
    function CT$wnnz_t Lcall_$wnnz3_dc (logic valid, Pointer_CT$wnnz_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4);
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
    function CT$wnnz_t Lcall_$wnnz2_dc (logic valid, \Int#_t  z1, Pointer_CT$wnnz_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4);
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
    function CT$wnnz_t Lcall_$wnnz1_dc (logic valid, \Int#_t  z1, \Int#_t  z2, Pointer_CT$wnnz_t z3, Pointer_QTree_Bool_t z4);
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
    typedef logic [16:0] \Pointer_CTf''''''''_f''''''''_t ;
    function \Pointer_CTf''''''''_f''''''''_t  \Pointer_CTf''''''''_f''''''''_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTf''''''''_f''''''''_dc  = 17'bx;
        \Pointer_CTf''''''''_f''''''''_dc [0:0] = valid;
        \Pointer_CTf''''''''_f''''''''_dc [16:1] = z1[16:1];
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
    typedef logic [67:0] \CTf''''''''_f''''''''_t ;
    function \CTf''''''''_f''''''''_t  \Lf''''''''_f''''''''sbos_dc  (logic valid, Go_t z1);
      begin
        \Lf''''''''_f''''''''sbos_dc  = 68'bx;
        \Lf''''''''_f''''''''sbos_dc [0:0] = valid;
        \Lf''''''''_f''''''''sbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTf''''''''_f''''''''_t  \Lcall_f''''''''_f''''''''3_dc  (logic valid, \Pointer_CTf''''''''_f''''''''_t  z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        \Lcall_f''''''''_f''''''''3_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''3_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''3_dc [3:1] = 3'd1;
        \Lcall_f''''''''_f''''''''3_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''3_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''3_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''3_dc [67:52] = z4[16:1];
      end
    endfunction
    function \CTf''''''''_f''''''''_t  \Lcall_f''''''''_f''''''''2_dc  (logic valid, Pointer_QTree_Bool_t z1, \Pointer_CTf''''''''_f''''''''_t  z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        \Lcall_f''''''''_f''''''''2_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''2_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''2_dc [3:1] = 3'd2;
        \Lcall_f''''''''_f''''''''2_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''2_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''2_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''2_dc [67:52] = z4[16:1];
      end
    endfunction
    function \CTf''''''''_f''''''''_t  \Lcall_f''''''''_f''''''''1_dc  (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, \Pointer_CTf''''''''_f''''''''_t  z3, Pointer_QTree_Int_t z4);
      begin
        \Lcall_f''''''''_f''''''''1_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''1_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''1_dc [3:1] = 3'd3;
        \Lcall_f''''''''_f''''''''1_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''1_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''1_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''1_dc [67:52] = z4[16:1];
      end
    endfunction
    function \CTf''''''''_f''''''''_t  \Lcall_f''''''''_f''''''''0_dc  (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, \Pointer_CTf''''''''_f''''''''_t  z4);
      begin
        \Lcall_f''''''''_f''''''''0_dc  = 68'bx;
        \Lcall_f''''''''_f''''''''0_dc [0:0] = valid;
        \Lcall_f''''''''_f''''''''0_dc [3:1] = 3'd4;
        \Lcall_f''''''''_f''''''''0_dc [19:4] = z1[16:1];
        \Lcall_f''''''''_f''''''''0_dc [35:20] = z2[16:1];
        \Lcall_f''''''''_f''''''''0_dc [51:36] = z3[16:1];
        \Lcall_f''''''''_f''''''''0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [84:0] \MemIn_CTf''''''''_f''''''''_t ;
    function \MemIn_CTf''''''''_f''''''''_t  \ReadIn_CTf''''''''_f''''''''_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTf''''''''_f''''''''_dc  = 85'bx;
        \ReadIn_CTf''''''''_f''''''''_dc [0:0] = valid;
        \ReadIn_CTf''''''''_f''''''''_dc [1:1] = 1'd0;
        \ReadIn_CTf''''''''_f''''''''_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTf''''''''_f''''''''_t  \WriteIn_CTf''''''''_f''''''''_dc  (logic valid, \Word16#_t  z1, \CTf''''''''_f''''''''_t  z2);
      begin
        \WriteIn_CTf''''''''_f''''''''_dc  = 85'bx;
        \WriteIn_CTf''''''''_f''''''''_dc [0:0] = valid;
        \WriteIn_CTf''''''''_f''''''''_dc [1:1] = 1'd1;
        \WriteIn_CTf''''''''_f''''''''_dc [17:2] = z1[16:1];
        \WriteIn_CTf''''''''_f''''''''_dc [84:18] = z2[67:1];
      end
    endfunction
    typedef logic [68:0] \MemOut_CTf''''''''_f''''''''_t ;
    function \MemOut_CTf''''''''_f''''''''_t  \ReadOut_CTf''''''''_f''''''''_dc  (logic valid, \CTf''''''''_f''''''''_t  z1);
      begin
        \ReadOut_CTf''''''''_f''''''''_dc  = 69'bx;
        \ReadOut_CTf''''''''_f''''''''_dc [0:0] = valid;
        \ReadOut_CTf''''''''_f''''''''_dc [1:1] = 1'd0;
        \ReadOut_CTf''''''''_f''''''''_dc [68:2] = z1[67:1];
      end
    endfunction
    function \MemOut_CTf''''''''_f''''''''_t  \ACK_CTf''''''''_f''''''''_dc  (logic valid);
      begin
        \ACK_CTf''''''''_f''''''''_dc  = 69'bx;
        \ACK_CTf''''''''_f''''''''_dc [0:0] = valid;
        \ACK_CTf''''''''_f''''''''_dc [1:1] = 1'd1;
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
    typedef logic [66:0] QTree_Bool_t;
    function QTree_Bool_t QNone_Bool_dc (logic valid, Go_t z1);
      begin
        QNone_Bool_dc = 67'bx;
        QNone_Bool_dc[0:0] = valid;
        QNone_Bool_dc[2:1] = 2'd0;
        ;
      end
    endfunction
    function QTree_Bool_t QVal_Bool_dc (logic valid, MyBool_t z1);
      begin
        QVal_Bool_dc = 67'bx;
        QVal_Bool_dc[0:0] = valid;
        QVal_Bool_dc[2:1] = 2'd1;
        QVal_Bool_dc[3:3] = z1[1:1];
      end
    endfunction
    function QTree_Bool_t QNode_Bool_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4);
      begin
        QNode_Bool_dc = 67'bx;
        QNode_Bool_dc[0:0] = valid;
        QNode_Bool_dc[2:1] = 2'd2;
        QNode_Bool_dc[18:3] = z1[16:1];
        QNode_Bool_dc[34:19] = z2[16:1];
        QNode_Bool_dc[50:35] = z3[16:1];
        QNode_Bool_dc[66:51] = z4[16:1];
      end
    endfunction
    function QTree_Bool_t QError_Bool_dc (logic valid, Go_t z1);
      begin
        QError_Bool_dc = 67'bx;
        QError_Bool_dc[0:0] = valid;
        QError_Bool_dc[2:1] = 2'd3;
        ;
      end
    endfunction
    typedef logic [83:0] MemIn_QTree_Bool_t;
    function MemIn_QTree_Bool_t ReadIn_QTree_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_QTree_Bool_dc = 84'bx;
        ReadIn_QTree_Bool_dc[0:0] = valid;
        ReadIn_QTree_Bool_dc[1:1] = 1'd0;
        ReadIn_QTree_Bool_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_QTree_Bool_t WriteIn_QTree_Bool_dc (logic valid, \Word16#_t  z1, QTree_Bool_t z2);
      begin
        WriteIn_QTree_Bool_dc = 84'bx;
        WriteIn_QTree_Bool_dc[0:0] = valid;
        WriteIn_QTree_Bool_dc[1:1] = 1'd1;
        WriteIn_QTree_Bool_dc[17:2] = z1[16:1];
        WriteIn_QTree_Bool_dc[83:18] = z2[66:1];
      end
    endfunction
    typedef logic [67:0] MemOut_QTree_Bool_t;
    function MemOut_QTree_Bool_t ReadOut_QTree_Bool_dc (logic valid, QTree_Bool_t z1);
      begin
        ReadOut_QTree_Bool_dc = 68'bx;
        ReadOut_QTree_Bool_dc[0:0] = valid;
        ReadOut_QTree_Bool_dc[1:1] = 1'd0;
        ReadOut_QTree_Bool_dc[67:2] = z1[66:1];
      end
    endfunction
    function MemOut_QTree_Bool_t ACK_QTree_Bool_dc (logic valid);
      begin
        ACK_QTree_Bool_dc = 68'bx;
        ACK_QTree_Bool_dc[0:0] = valid;
        ACK_QTree_Bool_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] Pointer_CTf_f_t;
    function Pointer_CTf_f_t Pointer_CTf_f_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTf_f_dc = 17'bx;
        Pointer_CTf_f_dc[0:0] = valid;
        Pointer_CTf_f_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [115:0] CTf_f_t;
    function CTf_f_t Lf_fsbos_dc (logic valid, Go_t z1);
      begin
        Lf_fsbos_dc = 116'bx;
        Lf_fsbos_dc[0:0] = valid;
        Lf_fsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTf_f_t Lcall_f_f3_dc (logic valid, Pointer_CTf_f_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        Lcall_f_f3_dc = 116'bx;
        Lcall_f_f3_dc[0:0] = valid;
        Lcall_f_f3_dc[3:1] = 3'd1;
        Lcall_f_f3_dc[19:4] = z1[16:1];
        Lcall_f_f3_dc[35:20] = z2[16:1];
        Lcall_f_f3_dc[51:36] = z3[16:1];
        Lcall_f_f3_dc[67:52] = z4[16:1];
        Lcall_f_f3_dc[83:68] = z5[16:1];
        Lcall_f_f3_dc[99:84] = z6[16:1];
        Lcall_f_f3_dc[115:100] = z7[16:1];
      end
    endfunction
    function CTf_f_t Lcall_f_f2_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_CTf_f_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        Lcall_f_f2_dc = 116'bx;
        Lcall_f_f2_dc[0:0] = valid;
        Lcall_f_f2_dc[3:1] = 3'd2;
        Lcall_f_f2_dc[19:4] = z1[16:1];
        Lcall_f_f2_dc[35:20] = z2[16:1];
        Lcall_f_f2_dc[51:36] = z3[16:1];
        Lcall_f_f2_dc[67:52] = z4[16:1];
        Lcall_f_f2_dc[83:68] = z5[16:1];
        Lcall_f_f2_dc[99:84] = z6[16:1];
      end
    endfunction
    function CTf_f_t Lcall_f_f1_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_CTf_f_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5);
      begin
        Lcall_f_f1_dc = 116'bx;
        Lcall_f_f1_dc[0:0] = valid;
        Lcall_f_f1_dc[3:1] = 3'd3;
        Lcall_f_f1_dc[19:4] = z1[16:1];
        Lcall_f_f1_dc[35:20] = z2[16:1];
        Lcall_f_f1_dc[51:36] = z3[16:1];
        Lcall_f_f1_dc[67:52] = z4[16:1];
        Lcall_f_f1_dc[83:68] = z5[16:1];
      end
    endfunction
    function CTf_f_t Lcall_f_f0_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_CTf_f_t z4);
      begin
        Lcall_f_f0_dc = 116'bx;
        Lcall_f_f0_dc[0:0] = valid;
        Lcall_f_f0_dc[3:1] = 3'd4;
        Lcall_f_f0_dc[19:4] = z1[16:1];
        Lcall_f_f0_dc[35:20] = z2[16:1];
        Lcall_f_f0_dc[51:36] = z3[16:1];
        Lcall_f_f0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CTf_f_t;
    function MemIn_CTf_f_t ReadIn_CTf_f_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTf_f_dc = 133'bx;
        ReadIn_CTf_f_dc[0:0] = valid;
        ReadIn_CTf_f_dc[1:1] = 1'd0;
        ReadIn_CTf_f_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTf_f_t WriteIn_CTf_f_dc (logic valid, \Word16#_t  z1, CTf_f_t z2);
      begin
        WriteIn_CTf_f_dc = 133'bx;
        WriteIn_CTf_f_dc[0:0] = valid;
        WriteIn_CTf_f_dc[1:1] = 1'd1;
        WriteIn_CTf_f_dc[17:2] = z1[16:1];
        WriteIn_CTf_f_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CTf_f_t;
    function MemOut_CTf_f_t ReadOut_CTf_f_dc (logic valid, CTf_f_t z1);
      begin
        ReadOut_CTf_f_dc = 117'bx;
        ReadOut_CTf_f_dc[0:0] = valid;
        ReadOut_CTf_f_dc[1:1] = 1'd0;
        ReadOut_CTf_f_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CTf_f_t ACK_CTf_f_dc (logic valid);
      begin
        ACK_CTf_f_dc = 117'bx;
        ACK_CTf_f_dc[0:0] = valid;
        ACK_CTf_f_dc[1:1] = 1'd1;
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
    typedef logic [4:0] C16_t;
    function C16_t C1_16_dc (logic valid);
      begin
        C1_16_dc = 5'bx;
        C1_16_dc[0:0] = valid;
        C1_16_dc[4:1] = 4'd0;
      end
    endfunction
    function C16_t C2_16_dc (logic valid);
      begin
        C2_16_dc = 5'bx;
        C2_16_dc[0:0] = valid;
        C2_16_dc[4:1] = 4'd1;
      end
    endfunction
    function C16_t C3_16_dc (logic valid);
      begin
        C3_16_dc = 5'bx;
        C3_16_dc[0:0] = valid;
        C3_16_dc[4:1] = 4'd2;
      end
    endfunction
    function C16_t C4_16_dc (logic valid);
      begin
        C4_16_dc = 5'bx;
        C4_16_dc[0:0] = valid;
        C4_16_dc[4:1] = 4'd3;
      end
    endfunction
    function C16_t C5_16_dc (logic valid);
      begin
        C5_16_dc = 5'bx;
        C5_16_dc[0:0] = valid;
        C5_16_dc[4:1] = 4'd4;
      end
    endfunction
    function C16_t C6_16_dc (logic valid);
      begin
        C6_16_dc = 5'bx;
        C6_16_dc[0:0] = valid;
        C6_16_dc[4:1] = 4'd5;
      end
    endfunction
    function C16_t C7_16_dc (logic valid);
      begin
        C7_16_dc = 5'bx;
        C7_16_dc[0:0] = valid;
        C7_16_dc[4:1] = 4'd6;
      end
    endfunction
    function C16_t C8_16_dc (logic valid);
      begin
        C8_16_dc = 5'bx;
        C8_16_dc[0:0] = valid;
        C8_16_dc[4:1] = 4'd7;
      end
    endfunction
    function C16_t C9_16_dc (logic valid);
      begin
        C9_16_dc = 5'bx;
        C9_16_dc[0:0] = valid;
        C9_16_dc[4:1] = 4'd8;
      end
    endfunction
    function C16_t C10_16_dc (logic valid);
      begin
        C10_16_dc = 5'bx;
        C10_16_dc[0:0] = valid;
        C10_16_dc[4:1] = 4'd9;
      end
    endfunction
    function C16_t C11_16_dc (logic valid);
      begin
        C11_16_dc = 5'bx;
        C11_16_dc[0:0] = valid;
        C11_16_dc[4:1] = 4'd10;
      end
    endfunction
    function C16_t C12_16_dc (logic valid);
      begin
        C12_16_dc = 5'bx;
        C12_16_dc[0:0] = valid;
        C12_16_dc[4:1] = 4'd11;
      end
    endfunction
    function C16_t C13_16_dc (logic valid);
      begin
        C13_16_dc = 5'bx;
        C13_16_dc[0:0] = valid;
        C13_16_dc[4:1] = 4'd12;
      end
    endfunction
    function C16_t C14_16_dc (logic valid);
      begin
        C14_16_dc = 5'bx;
        C14_16_dc[0:0] = valid;
        C14_16_dc[4:1] = 4'd13;
      end
    endfunction
    function C16_t C15_16_dc (logic valid);
      begin
        C15_16_dc = 5'bx;
        C15_16_dc[0:0] = valid;
        C15_16_dc[4:1] = 4'd14;
      end
    endfunction
    function C16_t C16_16_dc (logic valid);
      begin
        C16_16_dc = 5'bx;
        C16_16_dc[0:0] = valid;
        C16_16_dc[4:1] = 4'd15;
      end
    endfunction
    typedef logic [16:0] TupGo___Pointer_QTree_Bool_t;
    function TupGo___Pointer_QTree_Bool_t TupGo___Pointer_QTree_Bool_dc (logic valid, Go_t z1, Pointer_QTree_Bool_t z2);
      begin
        TupGo___Pointer_QTree_Bool_dc = 17'bx;
        TupGo___Pointer_QTree_Bool_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Bool_dc[16:1] = z2[16:1];
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
    typedef logic [32:0] TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_t;
    function TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_t TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_dc (logic valid, Go_t z1, Pointer_QTree_Bool_t z2, Pointer_CT$wnnz_t z3);
      begin
        TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_dc = 33'bx;
        TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Bool___Pointer_CT$wnnz_dc[32:17] = z3[16:1];
      end
    endfunction
    typedef logic [32:0] \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_t ;
    function \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_t  \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_dc  (logic valid, Go_t z1, Pointer_QTree_Int_t z2, \Pointer_CTf''''''''_f''''''''_t  z3);
      begin
        \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_dc  = 33'bx;
        \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_dc [0:0] = valid;
        ;
        \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_dc [16:1] = z2[16:1];
        \TupGo___Pointer_QTree_Int___Pointer_CTf''''''''_f''''''''_dc [32:17] = z3[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_t;
    function TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_t TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_CTf_f_t z4);
      begin
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc = 49'bx;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc[32:17] = z3[16:1];
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTf_f_dc[48:33] = z4[16:1];
      end
    endfunction
    typedef logic [0:0] TupGo_t;
    function TupGo_t TupGo_dc (logic valid, Go_t z1);
      begin
        TupGo_dc = 1'bx;
        TupGo_dc[0:0] = valid;
        ;
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
    typedef logic [32:0] TupGo___Pointer_QTree_Int___Pointer_QTree_Int_t;
    function TupGo___Pointer_QTree_Int___Pointer_QTree_Int_t TupGo___Pointer_QTree_Int___Pointer_QTree_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3);
      begin
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int_dc = 33'bx;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_QTree_Int_dc[32:17] = z3[16:1];
      end
    endfunction
endpackage