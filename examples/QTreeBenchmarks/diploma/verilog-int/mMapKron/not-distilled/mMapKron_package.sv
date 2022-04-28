`timescale 1ns/1ns
package mMapKron_package ;
    typedef logic [4:0] \Int4#_t ;
    typedef logic [8:0] \Int8#_t ;
    typedef logic [16:0] \Int16#_t ;
    typedef logic [32:0] \Int#_t ;
    typedef logic [4:0] \Word4#_t ;
    typedef logic [8:0] \Word8#_t ;
    typedef logic [16:0] \Word16#_t ;
    typedef logic [32:0] \Word#_t ;
    typedef logic [4:0] C14_t;
    function C14_t C1_14_dc (logic valid);
      begin
        C1_14_dc = 5'bx;
        C1_14_dc[0:0] = valid;
        C1_14_dc[4:1] = 4'd0;
      end
    endfunction
    function C14_t C2_14_dc (logic valid);
      begin
        C2_14_dc = 5'bx;
        C2_14_dc[0:0] = valid;
        C2_14_dc[4:1] = 4'd1;
      end
    endfunction
    function C14_t C3_14_dc (logic valid);
      begin
        C3_14_dc = 5'bx;
        C3_14_dc[0:0] = valid;
        C3_14_dc[4:1] = 4'd2;
      end
    endfunction
    function C14_t C4_14_dc (logic valid);
      begin
        C4_14_dc = 5'bx;
        C4_14_dc[0:0] = valid;
        C4_14_dc[4:1] = 4'd3;
      end
    endfunction
    function C14_t C5_14_dc (logic valid);
      begin
        C5_14_dc = 5'bx;
        C5_14_dc[0:0] = valid;
        C5_14_dc[4:1] = 4'd4;
      end
    endfunction
    function C14_t C6_14_dc (logic valid);
      begin
        C6_14_dc = 5'bx;
        C6_14_dc[0:0] = valid;
        C6_14_dc[4:1] = 4'd5;
      end
    endfunction
    function C14_t C7_14_dc (logic valid);
      begin
        C7_14_dc = 5'bx;
        C7_14_dc[0:0] = valid;
        C7_14_dc[4:1] = 4'd6;
      end
    endfunction
    function C14_t C8_14_dc (logic valid);
      begin
        C8_14_dc = 5'bx;
        C8_14_dc[0:0] = valid;
        C8_14_dc[4:1] = 4'd7;
      end
    endfunction
    function C14_t C9_14_dc (logic valid);
      begin
        C9_14_dc = 5'bx;
        C9_14_dc[0:0] = valid;
        C9_14_dc[4:1] = 4'd8;
      end
    endfunction
    function C14_t C10_14_dc (logic valid);
      begin
        C10_14_dc = 5'bx;
        C10_14_dc[0:0] = valid;
        C10_14_dc[4:1] = 4'd9;
      end
    endfunction
    function C14_t C11_14_dc (logic valid);
      begin
        C11_14_dc = 5'bx;
        C11_14_dc[0:0] = valid;
        C11_14_dc[4:1] = 4'd10;
      end
    endfunction
    function C14_t C12_14_dc (logic valid);
      begin
        C12_14_dc = 5'bx;
        C12_14_dc[0:0] = valid;
        C12_14_dc[4:1] = 4'd11;
      end
    endfunction
    function C14_t C13_14_dc (logic valid);
      begin
        C13_14_dc = 5'bx;
        C13_14_dc[0:0] = valid;
        C13_14_dc[4:1] = 4'd12;
      end
    endfunction
    function C14_t C14_14_dc (logic valid);
      begin
        C14_14_dc = 5'bx;
        C14_14_dc[0:0] = valid;
        C14_14_dc[4:1] = 4'd13;
      end
    endfunction
    typedef logic [16:0] Pointer_CT$wnnz_Int_t;
    function Pointer_CT$wnnz_Int_t Pointer_CT$wnnz_Int_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CT$wnnz_Int_dc = 17'bx;
        Pointer_CT$wnnz_Int_dc[0:0] = valid;
        Pointer_CT$wnnz_Int_dc[16:1] = z1[16:1];
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
    typedef logic [115:0] CT$wnnz_Int_t;
    function CT$wnnz_Int_t L$wnnz_Intsbos_dc (logic valid, Go_t z1);
      begin
        L$wnnz_Intsbos_dc = 116'bx;
        L$wnnz_Intsbos_dc[0:0] = valid;
        L$wnnz_Intsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CT$wnnz_Int_t Lcall_$wnnz_Int3_dc (logic valid, Pointer_CT$wnnz_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz_Int3_dc = 116'bx;
        Lcall_$wnnz_Int3_dc[0:0] = valid;
        Lcall_$wnnz_Int3_dc[3:1] = 3'd1;
        Lcall_$wnnz_Int3_dc[19:4] = z1[16:1];
        Lcall_$wnnz_Int3_dc[35:20] = z2[16:1];
        Lcall_$wnnz_Int3_dc[51:36] = z3[16:1];
        Lcall_$wnnz_Int3_dc[67:52] = z4[16:1];
      end
    endfunction
    function CT$wnnz_Int_t Lcall_$wnnz_Int2_dc (logic valid, \Int#_t  z1, Pointer_CT$wnnz_Int_t z2, Pointer_QTree_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz_Int2_dc = 116'bx;
        Lcall_$wnnz_Int2_dc[0:0] = valid;
        Lcall_$wnnz_Int2_dc[3:1] = 3'd2;
        Lcall_$wnnz_Int2_dc[35:4] = z1[32:1];
        Lcall_$wnnz_Int2_dc[51:36] = z2[16:1];
        Lcall_$wnnz_Int2_dc[67:52] = z3[16:1];
        Lcall_$wnnz_Int2_dc[83:68] = z4[16:1];
      end
    endfunction
    function CT$wnnz_Int_t Lcall_$wnnz_Int1_dc (logic valid, \Int#_t  z1, \Int#_t  z2, Pointer_CT$wnnz_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        Lcall_$wnnz_Int1_dc = 116'bx;
        Lcall_$wnnz_Int1_dc[0:0] = valid;
        Lcall_$wnnz_Int1_dc[3:1] = 3'd3;
        Lcall_$wnnz_Int1_dc[35:4] = z1[32:1];
        Lcall_$wnnz_Int1_dc[67:36] = z2[32:1];
        Lcall_$wnnz_Int1_dc[83:68] = z3[16:1];
        Lcall_$wnnz_Int1_dc[99:84] = z4[16:1];
      end
    endfunction
    function CT$wnnz_Int_t Lcall_$wnnz_Int0_dc (logic valid, \Int#_t  z1, \Int#_t  z2, \Int#_t  z3, Pointer_CT$wnnz_Int_t z4);
      begin
        Lcall_$wnnz_Int0_dc = 116'bx;
        Lcall_$wnnz_Int0_dc[0:0] = valid;
        Lcall_$wnnz_Int0_dc[3:1] = 3'd4;
        Lcall_$wnnz_Int0_dc[35:4] = z1[32:1];
        Lcall_$wnnz_Int0_dc[67:36] = z2[32:1];
        Lcall_$wnnz_Int0_dc[99:68] = z3[32:1];
        Lcall_$wnnz_Int0_dc[115:100] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CT$wnnz_Int_t;
    function MemIn_CT$wnnz_Int_t ReadIn_CT$wnnz_Int_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CT$wnnz_Int_dc = 133'bx;
        ReadIn_CT$wnnz_Int_dc[0:0] = valid;
        ReadIn_CT$wnnz_Int_dc[1:1] = 1'd0;
        ReadIn_CT$wnnz_Int_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CT$wnnz_Int_t WriteIn_CT$wnnz_Int_dc (logic valid, \Word16#_t  z1, CT$wnnz_Int_t z2);
      begin
        WriteIn_CT$wnnz_Int_dc = 133'bx;
        WriteIn_CT$wnnz_Int_dc[0:0] = valid;
        WriteIn_CT$wnnz_Int_dc[1:1] = 1'd1;
        WriteIn_CT$wnnz_Int_dc[17:2] = z1[16:1];
        WriteIn_CT$wnnz_Int_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CT$wnnz_Int_t;
    function MemOut_CT$wnnz_Int_t ReadOut_CT$wnnz_Int_dc (logic valid, CT$wnnz_Int_t z1);
      begin
        ReadOut_CT$wnnz_Int_dc = 117'bx;
        ReadOut_CT$wnnz_Int_dc[0:0] = valid;
        ReadOut_CT$wnnz_Int_dc[1:1] = 1'd0;
        ReadOut_CT$wnnz_Int_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CT$wnnz_Int_t ACK_CT$wnnz_Int_dc (logic valid);
      begin
        ACK_CT$wnnz_Int_dc = 117'bx;
        ACK_CT$wnnz_Int_dc[0:0] = valid;
        ACK_CT$wnnz_Int_dc[1:1] = 1'd1;
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
    typedef logic [16:0] \Pointer_CTmain_map'_Int_Int_t ;
    function \Pointer_CTmain_map'_Int_Int_t  \Pointer_CTmain_map'_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTmain_map'_Int_Int_dc  = 17'bx;
        \Pointer_CTmain_map'_Int_Int_dc [0:0] = valid;
        \Pointer_CTmain_map'_Int_Int_dc [16:1] = z1[16:1];
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
    function MyDTInt_Bool_t Dcon_eqZero_dc (logic valid, Go_t z1);
      begin
        Dcon_eqZero_dc = 1'bx;
        Dcon_eqZero_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [67:0] \CTmain_map'_Int_Int_t ;
    function \CTmain_map'_Int_Int_t  \Lmain_map'_Int_Intsbos_dc  (logic valid, Go_t z1);
      begin
        \Lmain_map'_Int_Intsbos_dc  = 68'bx;
        \Lmain_map'_Int_Intsbos_dc [0:0] = valid;
        \Lmain_map'_Int_Intsbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTmain_map'_Int_Int_t  \Lcall_main_map'_Int_Int3_dc  (logic valid, \Pointer_CTmain_map'_Int_Int_t  z1, MyDTInt_Bool_t z2, MyDTInt_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        \Lcall_main_map'_Int_Int3_dc  = 68'bx;
        \Lcall_main_map'_Int_Int3_dc [0:0] = valid;
        \Lcall_main_map'_Int_Int3_dc [3:1] = 3'd1;
        \Lcall_main_map'_Int_Int3_dc [19:4] = z1[16:1];
        ;
        ;
        \Lcall_main_map'_Int_Int3_dc [35:20] = z4[16:1];
        \Lcall_main_map'_Int_Int3_dc [51:36] = z5[16:1];
        \Lcall_main_map'_Int_Int3_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Int_Int_t  \Lcall_main_map'_Int_Int2_dc  (logic valid, Pointer_QTree_Int_t z1, \Pointer_CTmain_map'_Int_Int_t  z2, MyDTInt_Bool_t z3, MyDTInt_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        \Lcall_main_map'_Int_Int2_dc  = 68'bx;
        \Lcall_main_map'_Int_Int2_dc [0:0] = valid;
        \Lcall_main_map'_Int_Int2_dc [3:1] = 3'd2;
        \Lcall_main_map'_Int_Int2_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Int_Int2_dc [35:20] = z2[16:1];
        ;
        ;
        \Lcall_main_map'_Int_Int2_dc [51:36] = z5[16:1];
        \Lcall_main_map'_Int_Int2_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Int_Int_t  \Lcall_main_map'_Int_Int1_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, \Pointer_CTmain_map'_Int_Int_t  z3, MyDTInt_Bool_t z4, MyDTInt_Int_t z5, Pointer_QTree_Int_t z6);
      begin
        \Lcall_main_map'_Int_Int1_dc  = 68'bx;
        \Lcall_main_map'_Int_Int1_dc [0:0] = valid;
        \Lcall_main_map'_Int_Int1_dc [3:1] = 3'd3;
        \Lcall_main_map'_Int_Int1_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Int_Int1_dc [35:20] = z2[16:1];
        \Lcall_main_map'_Int_Int1_dc [51:36] = z3[16:1];
        ;
        ;
        \Lcall_main_map'_Int_Int1_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Int_Int_t  \Lcall_main_map'_Int_Int0_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, \Pointer_CTmain_map'_Int_Int_t  z4);
      begin
        \Lcall_main_map'_Int_Int0_dc  = 68'bx;
        \Lcall_main_map'_Int_Int0_dc [0:0] = valid;
        \Lcall_main_map'_Int_Int0_dc [3:1] = 3'd4;
        \Lcall_main_map'_Int_Int0_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Int_Int0_dc [35:20] = z2[16:1];
        \Lcall_main_map'_Int_Int0_dc [51:36] = z3[16:1];
        \Lcall_main_map'_Int_Int0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [84:0] \MemIn_CTmain_map'_Int_Int_t ;
    function \MemIn_CTmain_map'_Int_Int_t  \ReadIn_CTmain_map'_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTmain_map'_Int_Int_dc  = 85'bx;
        \ReadIn_CTmain_map'_Int_Int_dc [0:0] = valid;
        \ReadIn_CTmain_map'_Int_Int_dc [1:1] = 1'd0;
        \ReadIn_CTmain_map'_Int_Int_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTmain_map'_Int_Int_t  \WriteIn_CTmain_map'_Int_Int_dc  (logic valid, \Word16#_t  z1, \CTmain_map'_Int_Int_t  z2);
      begin
        \WriteIn_CTmain_map'_Int_Int_dc  = 85'bx;
        \WriteIn_CTmain_map'_Int_Int_dc [0:0] = valid;
        \WriteIn_CTmain_map'_Int_Int_dc [1:1] = 1'd1;
        \WriteIn_CTmain_map'_Int_Int_dc [17:2] = z1[16:1];
        \WriteIn_CTmain_map'_Int_Int_dc [84:18] = z2[67:1];
      end
    endfunction
    typedef logic [68:0] \MemOut_CTmain_map'_Int_Int_t ;
    function \MemOut_CTmain_map'_Int_Int_t  \ReadOut_CTmain_map'_Int_Int_dc  (logic valid, \CTmain_map'_Int_Int_t  z1);
      begin
        \ReadOut_CTmain_map'_Int_Int_dc  = 69'bx;
        \ReadOut_CTmain_map'_Int_Int_dc [0:0] = valid;
        \ReadOut_CTmain_map'_Int_Int_dc [1:1] = 1'd0;
        \ReadOut_CTmain_map'_Int_Int_dc [68:2] = z1[67:1];
      end
    endfunction
    function \MemOut_CTmain_map'_Int_Int_t  \ACK_CTmain_map'_Int_Int_dc  (logic valid);
      begin
        \ACK_CTmain_map'_Int_Int_dc  = 69'bx;
        \ACK_CTmain_map'_Int_Int_dc [0:0] = valid;
        \ACK_CTmain_map'_Int_Int_dc [1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] \Pointer_CTmap''_map''_Int_Int_Int_t ;
    function \Pointer_CTmap''_map''_Int_Int_Int_t  \Pointer_CTmap''_map''_Int_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTmap''_map''_Int_Int_Int_dc  = 17'bx;
        \Pointer_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        \Pointer_CTmap''_map''_Int_Int_Int_dc [16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] MyDTInt_Int_Int_t;
    function MyDTInt_Int_Int_t \Dcon_$fNumInt_$ctimes_dc  (logic valid, Go_t z1);
      begin
        \Dcon_$fNumInt_$ctimes_dc  = 1'bx;
        \Dcon_$fNumInt_$ctimes_dc [0:0] = valid;
        ;
      end
    endfunction
    typedef logic [99:0] \CTmap''_map''_Int_Int_Int_t ;
    function \CTmap''_map''_Int_Int_Int_t  \Lmap''_map''_Int_Int_Intsbos_dc  (logic valid, Go_t z1);
      begin
        \Lmap''_map''_Int_Int_Intsbos_dc  = 100'bx;
        \Lmap''_map''_Int_Int_Intsbos_dc [0:0] = valid;
        \Lmap''_map''_Int_Int_Intsbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTmap''_map''_Int_Int_Int_t  \Lcall_map''_map''_Int_Int_Int3_dc  (logic valid, \Pointer_CTmap''_map''_Int_Int_Int_t  z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        \Lcall_map''_map''_Int_Int_Int3_dc  = 100'bx;
        \Lcall_map''_map''_Int_Int_Int3_dc [0:0] = valid;
        \Lcall_map''_map''_Int_Int_Int3_dc [3:1] = 3'd1;
        \Lcall_map''_map''_Int_Int_Int3_dc [19:4] = z1[16:1];
        ;
        ;
        \Lcall_map''_map''_Int_Int_Int3_dc [51:20] = z4[32:1];
        \Lcall_map''_map''_Int_Int_Int3_dc [67:52] = z5[16:1];
        \Lcall_map''_map''_Int_Int_Int3_dc [83:68] = z6[16:1];
        \Lcall_map''_map''_Int_Int_Int3_dc [99:84] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Int_Int_Int_t  \Lcall_map''_map''_Int_Int_Int2_dc  (logic valid, Pointer_QTree_Int_t z1, \Pointer_CTmap''_map''_Int_Int_Int_t  z2, MyDTInt_Bool_t z3, MyDTInt_Int_Int_t z4, Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        \Lcall_map''_map''_Int_Int_Int2_dc  = 100'bx;
        \Lcall_map''_map''_Int_Int_Int2_dc [0:0] = valid;
        \Lcall_map''_map''_Int_Int_Int2_dc [3:1] = 3'd2;
        \Lcall_map''_map''_Int_Int_Int2_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Int_Int_Int2_dc [35:20] = z2[16:1];
        ;
        ;
        \Lcall_map''_map''_Int_Int_Int2_dc [67:36] = z5[32:1];
        \Lcall_map''_map''_Int_Int_Int2_dc [83:68] = z6[16:1];
        \Lcall_map''_map''_Int_Int_Int2_dc [99:84] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Int_Int_Int_t  \Lcall_map''_map''_Int_Int_Int1_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, \Pointer_CTmap''_map''_Int_Int_Int_t  z3, MyDTInt_Bool_t z4, MyDTInt_Int_Int_t z5, Int_t z6, Pointer_QTree_Int_t z7);
      begin
        \Lcall_map''_map''_Int_Int_Int1_dc  = 100'bx;
        \Lcall_map''_map''_Int_Int_Int1_dc [0:0] = valid;
        \Lcall_map''_map''_Int_Int_Int1_dc [3:1] = 3'd3;
        \Lcall_map''_map''_Int_Int_Int1_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Int_Int_Int1_dc [35:20] = z2[16:1];
        \Lcall_map''_map''_Int_Int_Int1_dc [51:36] = z3[16:1];
        ;
        ;
        \Lcall_map''_map''_Int_Int_Int1_dc [83:52] = z6[32:1];
        \Lcall_map''_map''_Int_Int_Int1_dc [99:84] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Int_Int_Int_t  \Lcall_map''_map''_Int_Int_Int0_dc  (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, \Pointer_CTmap''_map''_Int_Int_Int_t  z4);
      begin
        \Lcall_map''_map''_Int_Int_Int0_dc  = 100'bx;
        \Lcall_map''_map''_Int_Int_Int0_dc [0:0] = valid;
        \Lcall_map''_map''_Int_Int_Int0_dc [3:1] = 3'd4;
        \Lcall_map''_map''_Int_Int_Int0_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Int_Int_Int0_dc [35:20] = z2[16:1];
        \Lcall_map''_map''_Int_Int_Int0_dc [51:36] = z3[16:1];
        \Lcall_map''_map''_Int_Int_Int0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [116:0] \MemIn_CTmap''_map''_Int_Int_Int_t ;
    function \MemIn_CTmap''_map''_Int_Int_Int_t  \ReadIn_CTmap''_map''_Int_Int_Int_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTmap''_map''_Int_Int_Int_dc  = 117'bx;
        \ReadIn_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        \ReadIn_CTmap''_map''_Int_Int_Int_dc [1:1] = 1'd0;
        \ReadIn_CTmap''_map''_Int_Int_Int_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTmap''_map''_Int_Int_Int_t  \WriteIn_CTmap''_map''_Int_Int_Int_dc  (logic valid, \Word16#_t  z1, \CTmap''_map''_Int_Int_Int_t  z2);
      begin
        \WriteIn_CTmap''_map''_Int_Int_Int_dc  = 117'bx;
        \WriteIn_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        \WriteIn_CTmap''_map''_Int_Int_Int_dc [1:1] = 1'd1;
        \WriteIn_CTmap''_map''_Int_Int_Int_dc [17:2] = z1[16:1];
        \WriteIn_CTmap''_map''_Int_Int_Int_dc [116:18] = z2[99:1];
      end
    endfunction
    typedef logic [100:0] \MemOut_CTmap''_map''_Int_Int_Int_t ;
    function \MemOut_CTmap''_map''_Int_Int_Int_t  \ReadOut_CTmap''_map''_Int_Int_Int_dc  (logic valid, \CTmap''_map''_Int_Int_Int_t  z1);
      begin
        \ReadOut_CTmap''_map''_Int_Int_Int_dc  = 101'bx;
        \ReadOut_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        \ReadOut_CTmap''_map''_Int_Int_Int_dc [1:1] = 1'd0;
        \ReadOut_CTmap''_map''_Int_Int_Int_dc [100:2] = z1[99:1];
      end
    endfunction
    function \MemOut_CTmap''_map''_Int_Int_Int_t  \ACK_CTmap''_map''_Int_Int_Int_dc  (logic valid);
      begin
        \ACK_CTmap''_map''_Int_Int_Int_dc  = 101'bx;
        \ACK_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        \ACK_CTmap''_map''_Int_Int_Int_dc [1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] Pointer_CTkron_kron_Int_Int_Int_t;
    function Pointer_CTkron_kron_Int_Int_Int_t Pointer_CTkron_kron_Int_Int_Int_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTkron_kron_Int_Int_Int_dc = 17'bx;
        Pointer_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        Pointer_CTkron_kron_Int_Int_Int_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [83:0] CTkron_kron_Int_Int_Int_t;
    function CTkron_kron_Int_Int_Int_t Lkron_kron_Int_Int_Intsbos_dc (logic valid, Go_t z1);
      begin
        Lkron_kron_Int_Int_Intsbos_dc = 84'bx;
        Lkron_kron_Int_Int_Intsbos_dc[0:0] = valid;
        Lkron_kron_Int_Int_Intsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTkron_kron_Int_Int_Int_t Lcall_kron_kron_Int_Int_Int3_dc (logic valid, Pointer_CTkron_kron_Int_Int_Int_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        Lcall_kron_kron_Int_Int_Int3_dc = 84'bx;
        Lcall_kron_kron_Int_Int_Int3_dc[0:0] = valid;
        Lcall_kron_kron_Int_Int_Int3_dc[3:1] = 3'd1;
        Lcall_kron_kron_Int_Int_Int3_dc[19:4] = z1[16:1];
        ;
        ;
        Lcall_kron_kron_Int_Int_Int3_dc[35:20] = z4[16:1];
        Lcall_kron_kron_Int_Int_Int3_dc[51:36] = z5[16:1];
        Lcall_kron_kron_Int_Int_Int3_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Int_Int_Int3_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Int_Int_Int_t Lcall_kron_kron_Int_Int_Int2_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_CTkron_kron_Int_Int_Int_t z2, MyDTInt_Bool_t z3, MyDTInt_Int_Int_t z4, Pointer_QTree_Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        Lcall_kron_kron_Int_Int_Int2_dc = 84'bx;
        Lcall_kron_kron_Int_Int_Int2_dc[0:0] = valid;
        Lcall_kron_kron_Int_Int_Int2_dc[3:1] = 3'd2;
        Lcall_kron_kron_Int_Int_Int2_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Int_Int_Int2_dc[35:20] = z2[16:1];
        ;
        ;
        Lcall_kron_kron_Int_Int_Int2_dc[51:36] = z5[16:1];
        Lcall_kron_kron_Int_Int_Int2_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Int_Int_Int2_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Int_Int_Int_t Lcall_kron_kron_Int_Int_Int1_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_CTkron_kron_Int_Int_Int_t z3, MyDTInt_Bool_t z4, MyDTInt_Int_Int_t z5, Pointer_QTree_Int_t z6, Pointer_QTree_Int_t z7);
      begin
        Lcall_kron_kron_Int_Int_Int1_dc = 84'bx;
        Lcall_kron_kron_Int_Int_Int1_dc[0:0] = valid;
        Lcall_kron_kron_Int_Int_Int1_dc[3:1] = 3'd3;
        Lcall_kron_kron_Int_Int_Int1_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Int_Int_Int1_dc[35:20] = z2[16:1];
        Lcall_kron_kron_Int_Int_Int1_dc[51:36] = z3[16:1];
        ;
        ;
        Lcall_kron_kron_Int_Int_Int1_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Int_Int_Int1_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Int_Int_Int_t Lcall_kron_kron_Int_Int_Int0_dc (logic valid, Pointer_QTree_Int_t z1, Pointer_QTree_Int_t z2, Pointer_QTree_Int_t z3, Pointer_CTkron_kron_Int_Int_Int_t z4);
      begin
        Lcall_kron_kron_Int_Int_Int0_dc = 84'bx;
        Lcall_kron_kron_Int_Int_Int0_dc[0:0] = valid;
        Lcall_kron_kron_Int_Int_Int0_dc[3:1] = 3'd4;
        Lcall_kron_kron_Int_Int_Int0_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Int_Int_Int0_dc[35:20] = z2[16:1];
        Lcall_kron_kron_Int_Int_Int0_dc[51:36] = z3[16:1];
        Lcall_kron_kron_Int_Int_Int0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [100:0] MemIn_CTkron_kron_Int_Int_Int_t;
    function MemIn_CTkron_kron_Int_Int_Int_t ReadIn_CTkron_kron_Int_Int_Int_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTkron_kron_Int_Int_Int_dc = 101'bx;
        ReadIn_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        ReadIn_CTkron_kron_Int_Int_Int_dc[1:1] = 1'd0;
        ReadIn_CTkron_kron_Int_Int_Int_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTkron_kron_Int_Int_Int_t WriteIn_CTkron_kron_Int_Int_Int_dc (logic valid, \Word16#_t  z1, CTkron_kron_Int_Int_Int_t z2);
      begin
        WriteIn_CTkron_kron_Int_Int_Int_dc = 101'bx;
        WriteIn_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        WriteIn_CTkron_kron_Int_Int_Int_dc[1:1] = 1'd1;
        WriteIn_CTkron_kron_Int_Int_Int_dc[17:2] = z1[16:1];
        WriteIn_CTkron_kron_Int_Int_Int_dc[100:18] = z2[83:1];
      end
    endfunction
    typedef logic [84:0] MemOut_CTkron_kron_Int_Int_Int_t;
    function MemOut_CTkron_kron_Int_Int_Int_t ReadOut_CTkron_kron_Int_Int_Int_dc (logic valid, CTkron_kron_Int_Int_Int_t z1);
      begin
        ReadOut_CTkron_kron_Int_Int_Int_dc = 85'bx;
        ReadOut_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        ReadOut_CTkron_kron_Int_Int_Int_dc[1:1] = 1'd0;
        ReadOut_CTkron_kron_Int_Int_Int_dc[84:2] = z1[83:1];
      end
    endfunction
    function MemOut_CTkron_kron_Int_Int_Int_t ACK_CTkron_kron_Int_Int_Int_dc (logic valid);
      begin
        ACK_CTkron_kron_Int_Int_Int_dc = 85'bx;
        ACK_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        ACK_CTkron_kron_Int_Int_Int_dc[1:1] = 1'd1;
      end
    endfunction
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
    typedef logic [32:0] TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_t;
    function TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_t TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_dc (logic valid, Go_t z1, Pointer_QTree_Int_t z2, Pointer_CT$wnnz_Int_t z3);
      begin
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_dc = 33'bx;
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_Int_dc[32:17] = z3[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_t;
    function TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_t TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5, Pointer_CTkron_kron_Int_Int_Int_t z6);
      begin
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc = 49'bx;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc[16:1] = z4[16:1];
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc[32:17] = z5[16:1];
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTkron_kron_Int_Int_Int_dc[48:33] = z6[16:1];
      end
    endfunction
    typedef logic [32:0] \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_t ;
    function \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_t  \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_dc  (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_t z3, Pointer_QTree_Int_t z4, \Pointer_CTmain_map'_Int_Int_t  z5);
      begin
        \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_dc  = 33'bx;
        \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_dc [0:0] = valid;
        ;
        ;
        ;
        \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_dc [16:1] = z4[16:1];
        \TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int___Pointer_CTmain_map'_Int_Int_dc [32:17] = z5[16:1];
      end
    endfunction
    typedef logic [64:0] \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_t ;
    function \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_t  \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc  (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Int_t z4, Pointer_QTree_Int_t z5, \Pointer_CTmap''_map''_Int_Int_Int_t  z6);
      begin
        \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc  = 65'bx;
        \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc [0:0] = valid;
        ;
        ;
        ;
        \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc [32:1] = z4[32:1];
        \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc [48:33] = z5[16:1];
        \TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int___Pointer_CTmap''_map''_Int_Int_Int_dc [64:49] = z6[16:1];
      end
    endfunction
    typedef logic [32:0] TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_t;
    function TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_t TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Pointer_QTree_Int_t z4, Pointer_QTree_Int_t z5);
      begin
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc = 33'bx;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc[16:1] = z4[16:1];
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc[32:17] = z5[16:1];
      end
    endfunction
    typedef logic [16:0] TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_t;
    function TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_t TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_dc (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_t z3, Pointer_QTree_Int_t z4);
      begin
        TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_dc = 17'bx;
        TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTInt_Bool___MyDTInt_Int___Pointer_QTree_Int_dc[16:1] = z4[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_t;
    function TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_t TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_dc (logic valid, Go_t z1, MyDTInt_Bool_t z2, MyDTInt_Int_Int_t z3, Int_t z4, Pointer_QTree_Int_t z5);
      begin
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_dc = 49'bx;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_dc[32:1] = z4[32:1];
        TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Int___Pointer_QTree_Int_dc[48:33] = z5[16:1];
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