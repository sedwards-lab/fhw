`timescale 1ns/1ns
package mAddAdd_package ;
    typedef logic [4:0] \Int4#_t ;
    typedef logic [8:0] \Int8#_t ;
    typedef logic [16:0] \Int16#_t ;
    typedef logic [32:0] \Int#_t ;
    typedef logic [4:0] \Word4#_t ;
    typedef logic [8:0] \Word8#_t ;
    typedef logic [16:0] \Word16#_t ;
    typedef logic [32:0] \Word#_t ;
    typedef logic [4:0] C9_t;
    function C9_t C1_9_dc (logic valid);
      begin
        C1_9_dc = 5'bx;
        C1_9_dc[0:0] = valid;
        C1_9_dc[4:1] = 4'd0;
      end
    endfunction
    function C9_t C2_9_dc (logic valid);
      begin
        C2_9_dc = 5'bx;
        C2_9_dc[0:0] = valid;
        C2_9_dc[4:1] = 4'd1;
      end
    endfunction
    function C9_t C3_9_dc (logic valid);
      begin
        C3_9_dc = 5'bx;
        C3_9_dc[0:0] = valid;
        C3_9_dc[4:1] = 4'd2;
      end
    endfunction
    function C9_t C4_9_dc (logic valid);
      begin
        C4_9_dc = 5'bx;
        C4_9_dc[0:0] = valid;
        C4_9_dc[4:1] = 4'd3;
      end
    endfunction
    function C9_t C5_9_dc (logic valid);
      begin
        C5_9_dc = 5'bx;
        C5_9_dc[0:0] = valid;
        C5_9_dc[4:1] = 4'd4;
      end
    endfunction
    function C9_t C6_9_dc (logic valid);
      begin
        C6_9_dc = 5'bx;
        C6_9_dc[0:0] = valid;
        C6_9_dc[4:1] = 4'd5;
      end
    endfunction
    function C9_t C7_9_dc (logic valid);
      begin
        C7_9_dc = 5'bx;
        C7_9_dc[0:0] = valid;
        C7_9_dc[4:1] = 4'd6;
      end
    endfunction
    function C9_t C8_9_dc (logic valid);
      begin
        C8_9_dc = 5'bx;
        C8_9_dc[0:0] = valid;
        C8_9_dc[4:1] = 4'd7;
      end
    endfunction
    function C9_t C9_9_dc (logic valid);
      begin
        C9_9_dc = 5'bx;
        C9_9_dc[0:0] = valid;
        C9_9_dc[4:1] = 4'd8;
      end
    endfunction
    typedef logic [0:0] Go_t;
    function Go_t Go_dc (logic valid);
      begin
        Go_dc = 1'bx;
        Go_dc[0:0] = valid;
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
    typedef logic [16:0] Pointer_CTmAdd_mAdd_Bool_t;
    function Pointer_CTmAdd_mAdd_Bool_t Pointer_CTmAdd_mAdd_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTmAdd_mAdd_Bool_dc = 17'bx;
        Pointer_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        Pointer_CTmAdd_mAdd_Bool_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] MyDTBool_Bool_Bool_t;
    function MyDTBool_Bool_Bool_t \Dcon_||_dc  (logic valid, Go_t z1);
      begin
        \Dcon_||_dc  = 1'bx;
        \Dcon_||_dc [0:0] = valid;
        ;
      end
    endfunction
    typedef logic [0:0] MyDTBool_Bool_t;
    function MyDTBool_Bool_t Dcon_isZ_dc (logic valid, Go_t z1);
      begin
        Dcon_isZ_dc = 1'bx;
        Dcon_isZ_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [115:0] CTmAdd_mAdd_Bool_t;
    function CTmAdd_mAdd_Bool_t LmAdd_mAdd_Boolsbos_dc (logic valid, Go_t z1);
      begin
        LmAdd_mAdd_Boolsbos_dc = 116'bx;
        LmAdd_mAdd_Boolsbos_dc[0:0] = valid;
        LmAdd_mAdd_Boolsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTmAdd_mAdd_Bool_t Lcall_mAdd_mAdd_Bool3_dc (logic valid, Pointer_CTmAdd_mAdd_Bool_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7, Pointer_QTree_Bool_t z8, Pointer_QTree_Bool_t z9);
      begin
        Lcall_mAdd_mAdd_Bool3_dc = 116'bx;
        Lcall_mAdd_mAdd_Bool3_dc[0:0] = valid;
        Lcall_mAdd_mAdd_Bool3_dc[3:1] = 3'd1;
        Lcall_mAdd_mAdd_Bool3_dc[19:4] = z1[16:1];
        ;
        ;
        Lcall_mAdd_mAdd_Bool3_dc[35:20] = z4[16:1];
        Lcall_mAdd_mAdd_Bool3_dc[51:36] = z5[16:1];
        Lcall_mAdd_mAdd_Bool3_dc[67:52] = z6[16:1];
        Lcall_mAdd_mAdd_Bool3_dc[83:68] = z7[16:1];
        Lcall_mAdd_mAdd_Bool3_dc[99:84] = z8[16:1];
        Lcall_mAdd_mAdd_Bool3_dc[115:100] = z9[16:1];
      end
    endfunction
    function CTmAdd_mAdd_Bool_t Lcall_mAdd_mAdd_Bool2_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_CTmAdd_mAdd_Bool_t z2, MyDTBool_Bool_t z3, MyDTBool_Bool_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7, Pointer_QTree_Bool_t z8);
      begin
        Lcall_mAdd_mAdd_Bool2_dc = 116'bx;
        Lcall_mAdd_mAdd_Bool2_dc[0:0] = valid;
        Lcall_mAdd_mAdd_Bool2_dc[3:1] = 3'd2;
        Lcall_mAdd_mAdd_Bool2_dc[19:4] = z1[16:1];
        Lcall_mAdd_mAdd_Bool2_dc[35:20] = z2[16:1];
        ;
        ;
        Lcall_mAdd_mAdd_Bool2_dc[51:36] = z5[16:1];
        Lcall_mAdd_mAdd_Bool2_dc[67:52] = z6[16:1];
        Lcall_mAdd_mAdd_Bool2_dc[83:68] = z7[16:1];
        Lcall_mAdd_mAdd_Bool2_dc[99:84] = z8[16:1];
      end
    endfunction
    function CTmAdd_mAdd_Bool_t Lcall_mAdd_mAdd_Bool1_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_CTmAdd_mAdd_Bool_t z3, MyDTBool_Bool_t z4, MyDTBool_Bool_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        Lcall_mAdd_mAdd_Bool1_dc = 116'bx;
        Lcall_mAdd_mAdd_Bool1_dc[0:0] = valid;
        Lcall_mAdd_mAdd_Bool1_dc[3:1] = 3'd3;
        Lcall_mAdd_mAdd_Bool1_dc[19:4] = z1[16:1];
        Lcall_mAdd_mAdd_Bool1_dc[35:20] = z2[16:1];
        Lcall_mAdd_mAdd_Bool1_dc[51:36] = z3[16:1];
        ;
        ;
        Lcall_mAdd_mAdd_Bool1_dc[67:52] = z6[16:1];
        Lcall_mAdd_mAdd_Bool1_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTmAdd_mAdd_Bool_t Lcall_mAdd_mAdd_Bool0_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_CTmAdd_mAdd_Bool_t z4);
      begin
        Lcall_mAdd_mAdd_Bool0_dc = 116'bx;
        Lcall_mAdd_mAdd_Bool0_dc[0:0] = valid;
        Lcall_mAdd_mAdd_Bool0_dc[3:1] = 3'd4;
        Lcall_mAdd_mAdd_Bool0_dc[19:4] = z1[16:1];
        Lcall_mAdd_mAdd_Bool0_dc[35:20] = z2[16:1];
        Lcall_mAdd_mAdd_Bool0_dc[51:36] = z3[16:1];
        Lcall_mAdd_mAdd_Bool0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CTmAdd_mAdd_Bool_t;
    function MemIn_CTmAdd_mAdd_Bool_t ReadIn_CTmAdd_mAdd_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTmAdd_mAdd_Bool_dc = 133'bx;
        ReadIn_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        ReadIn_CTmAdd_mAdd_Bool_dc[1:1] = 1'd0;
        ReadIn_CTmAdd_mAdd_Bool_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTmAdd_mAdd_Bool_t WriteIn_CTmAdd_mAdd_Bool_dc (logic valid, \Word16#_t  z1, CTmAdd_mAdd_Bool_t z2);
      begin
        WriteIn_CTmAdd_mAdd_Bool_dc = 133'bx;
        WriteIn_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        WriteIn_CTmAdd_mAdd_Bool_dc[1:1] = 1'd1;
        WriteIn_CTmAdd_mAdd_Bool_dc[17:2] = z1[16:1];
        WriteIn_CTmAdd_mAdd_Bool_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CTmAdd_mAdd_Bool_t;
    function MemOut_CTmAdd_mAdd_Bool_t ReadOut_CTmAdd_mAdd_Bool_dc (logic valid, CTmAdd_mAdd_Bool_t z1);
      begin
        ReadOut_CTmAdd_mAdd_Bool_dc = 117'bx;
        ReadOut_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        ReadOut_CTmAdd_mAdd_Bool_dc[1:1] = 1'd0;
        ReadOut_CTmAdd_mAdd_Bool_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CTmAdd_mAdd_Bool_t ACK_CTmAdd_mAdd_Bool_dc (logic valid);
      begin
        ACK_CTmAdd_mAdd_Bool_dc = 117'bx;
        ACK_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        ACK_CTmAdd_mAdd_Bool_dc[1:1] = 1'd1;
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
    typedef logic [4:0] C11_t;
    function C11_t C1_11_dc (logic valid);
      begin
        C1_11_dc = 5'bx;
        C1_11_dc[0:0] = valid;
        C1_11_dc[4:1] = 4'd0;
      end
    endfunction
    function C11_t C2_11_dc (logic valid);
      begin
        C2_11_dc = 5'bx;
        C2_11_dc[0:0] = valid;
        C2_11_dc[4:1] = 4'd1;
      end
    endfunction
    function C11_t C3_11_dc (logic valid);
      begin
        C3_11_dc = 5'bx;
        C3_11_dc[0:0] = valid;
        C3_11_dc[4:1] = 4'd2;
      end
    endfunction
    function C11_t C4_11_dc (logic valid);
      begin
        C4_11_dc = 5'bx;
        C4_11_dc[0:0] = valid;
        C4_11_dc[4:1] = 4'd3;
      end
    endfunction
    function C11_t C5_11_dc (logic valid);
      begin
        C5_11_dc = 5'bx;
        C5_11_dc[0:0] = valid;
        C5_11_dc[4:1] = 4'd4;
      end
    endfunction
    function C11_t C6_11_dc (logic valid);
      begin
        C6_11_dc = 5'bx;
        C6_11_dc[0:0] = valid;
        C6_11_dc[4:1] = 4'd5;
      end
    endfunction
    function C11_t C7_11_dc (logic valid);
      begin
        C7_11_dc = 5'bx;
        C7_11_dc[0:0] = valid;
        C7_11_dc[4:1] = 4'd6;
      end
    endfunction
    function C11_t C8_11_dc (logic valid);
      begin
        C8_11_dc = 5'bx;
        C8_11_dc[0:0] = valid;
        C8_11_dc[4:1] = 4'd7;
      end
    endfunction
    function C11_t C9_11_dc (logic valid);
      begin
        C9_11_dc = 5'bx;
        C9_11_dc[0:0] = valid;
        C9_11_dc[4:1] = 4'd8;
      end
    endfunction
    function C11_t C10_11_dc (logic valid);
      begin
        C10_11_dc = 5'bx;
        C10_11_dc[0:0] = valid;
        C10_11_dc[4:1] = 4'd9;
      end
    endfunction
    function C11_t C11_11_dc (logic valid);
      begin
        C11_11_dc = 5'bx;
        C11_11_dc[0:0] = valid;
        C11_11_dc[4:1] = 4'd10;
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
    typedef logic [1:0] TupGo___MyDTBool_Bool___MyBool_t;
    function TupGo___MyDTBool_Bool___MyBool_t TupGo___MyDTBool_Bool___MyBool_dc (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyBool_t z3);
      begin
        TupGo___MyDTBool_Bool___MyBool_dc = 2'bx;
        TupGo___MyDTBool_Bool___MyBool_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTBool_Bool___MyBool_dc[1:1] = z3[1:1];
      end
    endfunction
    typedef logic [2:0] TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_t;
    function TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_t TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc (logic valid, Go_t z1, MyDTBool_Bool_Bool_t z2, MyBool_t z3, MyBool_t z4);
      begin
        TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc = 3'bx;
        TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc[1:1] = z3[1:1];
        TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc[2:2] = z4[1:1];
      end
    endfunction
    typedef logic [48:0] TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_t;
    function TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_t TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_CTmAdd_mAdd_Bool_t z6);
      begin
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc = 49'bx;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc[16:1] = z4[16:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc[32:17] = z5[16:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc[48:33] = z6[16:1];
      end
    endfunction
    typedef logic [32:0] TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t;
    function TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5);
      begin
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc = 33'bx;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[16:1] = z4[16:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[32:17] = z5[16:1];
      end
    endfunction
endpackage