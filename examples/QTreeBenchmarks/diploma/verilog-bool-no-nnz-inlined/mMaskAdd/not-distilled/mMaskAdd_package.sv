`timescale 1ns/1ns
package mMaskAdd_package ;
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
    typedef logic [4:0] C13_t;
    function C13_t C1_13_dc (logic valid);
      begin
        C1_13_dc = 5'bx;
        C1_13_dc[0:0] = valid;
        C1_13_dc[4:1] = 4'd0;
      end
    endfunction
    function C13_t C2_13_dc (logic valid);
      begin
        C2_13_dc = 5'bx;
        C2_13_dc[0:0] = valid;
        C2_13_dc[4:1] = 4'd1;
      end
    endfunction
    function C13_t C3_13_dc (logic valid);
      begin
        C3_13_dc = 5'bx;
        C3_13_dc[0:0] = valid;
        C3_13_dc[4:1] = 4'd2;
      end
    endfunction
    function C13_t C4_13_dc (logic valid);
      begin
        C4_13_dc = 5'bx;
        C4_13_dc[0:0] = valid;
        C4_13_dc[4:1] = 4'd3;
      end
    endfunction
    function C13_t C5_13_dc (logic valid);
      begin
        C5_13_dc = 5'bx;
        C5_13_dc[0:0] = valid;
        C5_13_dc[4:1] = 4'd4;
      end
    endfunction
    function C13_t C6_13_dc (logic valid);
      begin
        C6_13_dc = 5'bx;
        C6_13_dc[0:0] = valid;
        C6_13_dc[4:1] = 4'd5;
      end
    endfunction
    function C13_t C7_13_dc (logic valid);
      begin
        C7_13_dc = 5'bx;
        C7_13_dc[0:0] = valid;
        C7_13_dc[4:1] = 4'd6;
      end
    endfunction
    function C13_t C8_13_dc (logic valid);
      begin
        C8_13_dc = 5'bx;
        C8_13_dc[0:0] = valid;
        C8_13_dc[4:1] = 4'd7;
      end
    endfunction
    function C13_t C9_13_dc (logic valid);
      begin
        C9_13_dc = 5'bx;
        C9_13_dc[0:0] = valid;
        C9_13_dc[4:1] = 4'd8;
      end
    endfunction
    function C13_t C10_13_dc (logic valid);
      begin
        C10_13_dc = 5'bx;
        C10_13_dc[0:0] = valid;
        C10_13_dc[4:1] = 4'd9;
      end
    endfunction
    function C13_t C11_13_dc (logic valid);
      begin
        C11_13_dc = 5'bx;
        C11_13_dc[0:0] = valid;
        C11_13_dc[4:1] = 4'd10;
      end
    endfunction
    function C13_t C12_13_dc (logic valid);
      begin
        C12_13_dc = 5'bx;
        C12_13_dc[0:0] = valid;
        C12_13_dc[4:1] = 4'd11;
      end
    endfunction
    function C13_t C13_13_dc (logic valid);
      begin
        C13_13_dc = 5'bx;
        C13_13_dc[0:0] = valid;
        C13_13_dc[4:1] = 4'd12;
      end
    endfunction
    typedef logic [16:0] Pointer_CT$wmAdd_Bool_t;
    function Pointer_CT$wmAdd_Bool_t Pointer_CT$wmAdd_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CT$wmAdd_Bool_dc = 17'bx;
        Pointer_CT$wmAdd_Bool_dc[0:0] = valid;
        Pointer_CT$wmAdd_Bool_dc[16:1] = z1[16:1];
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
    typedef logic [0:0] MyDTBool_Bool_Bool_t;
    function MyDTBool_Bool_Bool_t \Dcon_||_dc  (logic valid, Go_t z1);
      begin
        \Dcon_||_dc  = 1'bx;
        \Dcon_||_dc [0:0] = valid;
        ;
      end
    endfunction
    typedef logic [115:0] CT$wmAdd_Bool_t;
    function CT$wmAdd_Bool_t L$wmAdd_Boolsbos_dc (logic valid, Go_t z1);
      begin
        L$wmAdd_Boolsbos_dc = 116'bx;
        L$wmAdd_Boolsbos_dc[0:0] = valid;
        L$wmAdd_Boolsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CT$wmAdd_Bool_t Lcall_$wmAdd_Bool3_dc (logic valid, Pointer_CT$wmAdd_Bool_t z1, MyDTBool_Bool_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7, Pointer_QTree_Bool_t z8);
      begin
        Lcall_$wmAdd_Bool3_dc = 116'bx;
        Lcall_$wmAdd_Bool3_dc[0:0] = valid;
        Lcall_$wmAdd_Bool3_dc[3:1] = 3'd1;
        Lcall_$wmAdd_Bool3_dc[19:4] = z1[16:1];
        ;
        Lcall_$wmAdd_Bool3_dc[35:20] = z3[16:1];
        Lcall_$wmAdd_Bool3_dc[51:36] = z4[16:1];
        Lcall_$wmAdd_Bool3_dc[67:52] = z5[16:1];
        Lcall_$wmAdd_Bool3_dc[83:68] = z6[16:1];
        Lcall_$wmAdd_Bool3_dc[99:84] = z7[16:1];
        Lcall_$wmAdd_Bool3_dc[115:100] = z8[16:1];
      end
    endfunction
    function CT$wmAdd_Bool_t Lcall_$wmAdd_Bool2_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_CT$wmAdd_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        Lcall_$wmAdd_Bool2_dc = 116'bx;
        Lcall_$wmAdd_Bool2_dc[0:0] = valid;
        Lcall_$wmAdd_Bool2_dc[3:1] = 3'd2;
        Lcall_$wmAdd_Bool2_dc[19:4] = z1[16:1];
        Lcall_$wmAdd_Bool2_dc[35:20] = z2[16:1];
        ;
        Lcall_$wmAdd_Bool2_dc[51:36] = z4[16:1];
        Lcall_$wmAdd_Bool2_dc[67:52] = z5[16:1];
        Lcall_$wmAdd_Bool2_dc[83:68] = z6[16:1];
        Lcall_$wmAdd_Bool2_dc[99:84] = z7[16:1];
      end
    endfunction
    function CT$wmAdd_Bool_t Lcall_$wmAdd_Bool1_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_CT$wmAdd_Bool_t z3, MyDTBool_Bool_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6);
      begin
        Lcall_$wmAdd_Bool1_dc = 116'bx;
        Lcall_$wmAdd_Bool1_dc[0:0] = valid;
        Lcall_$wmAdd_Bool1_dc[3:1] = 3'd3;
        Lcall_$wmAdd_Bool1_dc[19:4] = z1[16:1];
        Lcall_$wmAdd_Bool1_dc[35:20] = z2[16:1];
        Lcall_$wmAdd_Bool1_dc[51:36] = z3[16:1];
        ;
        Lcall_$wmAdd_Bool1_dc[67:52] = z5[16:1];
        Lcall_$wmAdd_Bool1_dc[83:68] = z6[16:1];
      end
    endfunction
    function CT$wmAdd_Bool_t Lcall_$wmAdd_Bool0_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_CT$wmAdd_Bool_t z4);
      begin
        Lcall_$wmAdd_Bool0_dc = 116'bx;
        Lcall_$wmAdd_Bool0_dc[0:0] = valid;
        Lcall_$wmAdd_Bool0_dc[3:1] = 3'd4;
        Lcall_$wmAdd_Bool0_dc[19:4] = z1[16:1];
        Lcall_$wmAdd_Bool0_dc[35:20] = z2[16:1];
        Lcall_$wmAdd_Bool0_dc[51:36] = z3[16:1];
        Lcall_$wmAdd_Bool0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CT$wmAdd_Bool_t;
    function MemIn_CT$wmAdd_Bool_t ReadIn_CT$wmAdd_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CT$wmAdd_Bool_dc = 133'bx;
        ReadIn_CT$wmAdd_Bool_dc[0:0] = valid;
        ReadIn_CT$wmAdd_Bool_dc[1:1] = 1'd0;
        ReadIn_CT$wmAdd_Bool_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CT$wmAdd_Bool_t WriteIn_CT$wmAdd_Bool_dc (logic valid, \Word16#_t  z1, CT$wmAdd_Bool_t z2);
      begin
        WriteIn_CT$wmAdd_Bool_dc = 133'bx;
        WriteIn_CT$wmAdd_Bool_dc[0:0] = valid;
        WriteIn_CT$wmAdd_Bool_dc[1:1] = 1'd1;
        WriteIn_CT$wmAdd_Bool_dc[17:2] = z1[16:1];
        WriteIn_CT$wmAdd_Bool_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CT$wmAdd_Bool_t;
    function MemOut_CT$wmAdd_Bool_t ReadOut_CT$wmAdd_Bool_dc (logic valid, CT$wmAdd_Bool_t z1);
      begin
        ReadOut_CT$wmAdd_Bool_dc = 117'bx;
        ReadOut_CT$wmAdd_Bool_dc[0:0] = valid;
        ReadOut_CT$wmAdd_Bool_dc[1:1] = 1'd0;
        ReadOut_CT$wmAdd_Bool_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CT$wmAdd_Bool_t ACK_CT$wmAdd_Bool_dc (logic valid);
      begin
        ACK_CT$wmAdd_Bool_dc = 117'bx;
        ACK_CT$wmAdd_Bool_dc[0:0] = valid;
        ACK_CT$wmAdd_Bool_dc[1:1] = 1'd1;
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
    typedef logic [16:0] Pointer_CTmain_mask_Bool_t;
    function Pointer_CTmain_mask_Bool_t Pointer_CTmain_mask_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTmain_mask_Bool_dc = 17'bx;
        Pointer_CTmain_mask_Bool_dc[0:0] = valid;
        Pointer_CTmain_mask_Bool_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [16:0] Pointer_MaskQTree_t;
    function Pointer_MaskQTree_t Pointer_MaskQTree_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_MaskQTree_dc = 17'bx;
        Pointer_MaskQTree_dc[0:0] = valid;
        Pointer_MaskQTree_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [115:0] CTmain_mask_Bool_t;
    function CTmain_mask_Bool_t Lmain_mask_Boolsbos_dc (logic valid, Go_t z1);
      begin
        Lmain_mask_Boolsbos_dc = 116'bx;
        Lmain_mask_Boolsbos_dc[0:0] = valid;
        Lmain_mask_Boolsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTmain_mask_Bool_t Lcall_main_mask_Bool3_dc (logic valid, Pointer_CTmain_mask_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_MaskQTree_t z3, Pointer_QTree_Bool_t z4, Pointer_MaskQTree_t z5, Pointer_QTree_Bool_t z6, Pointer_MaskQTree_t z7);
      begin
        Lcall_main_mask_Bool3_dc = 116'bx;
        Lcall_main_mask_Bool3_dc[0:0] = valid;
        Lcall_main_mask_Bool3_dc[3:1] = 3'd1;
        Lcall_main_mask_Bool3_dc[19:4] = z1[16:1];
        Lcall_main_mask_Bool3_dc[35:20] = z2[16:1];
        Lcall_main_mask_Bool3_dc[51:36] = z3[16:1];
        Lcall_main_mask_Bool3_dc[67:52] = z4[16:1];
        Lcall_main_mask_Bool3_dc[83:68] = z5[16:1];
        Lcall_main_mask_Bool3_dc[99:84] = z6[16:1];
        Lcall_main_mask_Bool3_dc[115:100] = z7[16:1];
      end
    endfunction
    function CTmain_mask_Bool_t Lcall_main_mask_Bool2_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_CTmain_mask_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_MaskQTree_t z4, Pointer_QTree_Bool_t z5, Pointer_MaskQTree_t z6);
      begin
        Lcall_main_mask_Bool2_dc = 116'bx;
        Lcall_main_mask_Bool2_dc[0:0] = valid;
        Lcall_main_mask_Bool2_dc[3:1] = 3'd2;
        Lcall_main_mask_Bool2_dc[19:4] = z1[16:1];
        Lcall_main_mask_Bool2_dc[35:20] = z2[16:1];
        Lcall_main_mask_Bool2_dc[51:36] = z3[16:1];
        Lcall_main_mask_Bool2_dc[67:52] = z4[16:1];
        Lcall_main_mask_Bool2_dc[83:68] = z5[16:1];
        Lcall_main_mask_Bool2_dc[99:84] = z6[16:1];
      end
    endfunction
    function CTmain_mask_Bool_t Lcall_main_mask_Bool1_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_CTmain_mask_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_MaskQTree_t z5);
      begin
        Lcall_main_mask_Bool1_dc = 116'bx;
        Lcall_main_mask_Bool1_dc[0:0] = valid;
        Lcall_main_mask_Bool1_dc[3:1] = 3'd3;
        Lcall_main_mask_Bool1_dc[19:4] = z1[16:1];
        Lcall_main_mask_Bool1_dc[35:20] = z2[16:1];
        Lcall_main_mask_Bool1_dc[51:36] = z3[16:1];
        Lcall_main_mask_Bool1_dc[67:52] = z4[16:1];
        Lcall_main_mask_Bool1_dc[83:68] = z5[16:1];
      end
    endfunction
    function CTmain_mask_Bool_t Lcall_main_mask_Bool0_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_CTmain_mask_Bool_t z4);
      begin
        Lcall_main_mask_Bool0_dc = 116'bx;
        Lcall_main_mask_Bool0_dc[0:0] = valid;
        Lcall_main_mask_Bool0_dc[3:1] = 3'd4;
        Lcall_main_mask_Bool0_dc[19:4] = z1[16:1];
        Lcall_main_mask_Bool0_dc[35:20] = z2[16:1];
        Lcall_main_mask_Bool0_dc[51:36] = z3[16:1];
        Lcall_main_mask_Bool0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [132:0] MemIn_CTmain_mask_Bool_t;
    function MemIn_CTmain_mask_Bool_t ReadIn_CTmain_mask_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTmain_mask_Bool_dc = 133'bx;
        ReadIn_CTmain_mask_Bool_dc[0:0] = valid;
        ReadIn_CTmain_mask_Bool_dc[1:1] = 1'd0;
        ReadIn_CTmain_mask_Bool_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTmain_mask_Bool_t WriteIn_CTmain_mask_Bool_dc (logic valid, \Word16#_t  z1, CTmain_mask_Bool_t z2);
      begin
        WriteIn_CTmain_mask_Bool_dc = 133'bx;
        WriteIn_CTmain_mask_Bool_dc[0:0] = valid;
        WriteIn_CTmain_mask_Bool_dc[1:1] = 1'd1;
        WriteIn_CTmain_mask_Bool_dc[17:2] = z1[16:1];
        WriteIn_CTmain_mask_Bool_dc[132:18] = z2[115:1];
      end
    endfunction
    typedef logic [116:0] MemOut_CTmain_mask_Bool_t;
    function MemOut_CTmain_mask_Bool_t ReadOut_CTmain_mask_Bool_dc (logic valid, CTmain_mask_Bool_t z1);
      begin
        ReadOut_CTmain_mask_Bool_dc = 117'bx;
        ReadOut_CTmain_mask_Bool_dc[0:0] = valid;
        ReadOut_CTmain_mask_Bool_dc[1:1] = 1'd0;
        ReadOut_CTmain_mask_Bool_dc[116:2] = z1[115:1];
      end
    endfunction
    function MemOut_CTmain_mask_Bool_t ACK_CTmain_mask_Bool_dc (logic valid);
      begin
        ACK_CTmain_mask_Bool_dc = 117'bx;
        ACK_CTmain_mask_Bool_dc[0:0] = valid;
        ACK_CTmain_mask_Bool_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [66:0] MaskQTree_t;
    function MaskQTree_t MQNone_dc (logic valid, Go_t z1);
      begin
        MQNone_dc = 67'bx;
        MQNone_dc[0:0] = valid;
        MQNone_dc[2:1] = 2'd0;
        ;
      end
    endfunction
    function MaskQTree_t MQVal_dc (logic valid, Go_t z1);
      begin
        MQVal_dc = 67'bx;
        MQVal_dc[0:0] = valid;
        MQVal_dc[2:1] = 2'd1;
        ;
      end
    endfunction
    function MaskQTree_t MQNode_dc (logic valid, Pointer_MaskQTree_t z1, Pointer_MaskQTree_t z2, Pointer_MaskQTree_t z3, Pointer_MaskQTree_t z4);
      begin
        MQNode_dc = 67'bx;
        MQNode_dc[0:0] = valid;
        MQNode_dc[2:1] = 2'd2;
        MQNode_dc[18:3] = z1[16:1];
        MQNode_dc[34:19] = z2[16:1];
        MQNode_dc[50:35] = z3[16:1];
        MQNode_dc[66:51] = z4[16:1];
      end
    endfunction
    typedef logic [83:0] MemIn_MaskQTree_t;
    function MemIn_MaskQTree_t ReadIn_MaskQTree_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_MaskQTree_dc = 84'bx;
        ReadIn_MaskQTree_dc[0:0] = valid;
        ReadIn_MaskQTree_dc[1:1] = 1'd0;
        ReadIn_MaskQTree_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_MaskQTree_t WriteIn_MaskQTree_dc (logic valid, \Word16#_t  z1, MaskQTree_t z2);
      begin
        WriteIn_MaskQTree_dc = 84'bx;
        WriteIn_MaskQTree_dc[0:0] = valid;
        WriteIn_MaskQTree_dc[1:1] = 1'd1;
        WriteIn_MaskQTree_dc[17:2] = z1[16:1];
        WriteIn_MaskQTree_dc[83:18] = z2[66:1];
      end
    endfunction
    typedef logic [67:0] MemOut_MaskQTree_t;
    function MemOut_MaskQTree_t ReadOut_MaskQTree_dc (logic valid, MaskQTree_t z1);
      begin
        ReadOut_MaskQTree_dc = 68'bx;
        ReadOut_MaskQTree_dc[0:0] = valid;
        ReadOut_MaskQTree_dc[1:1] = 1'd0;
        ReadOut_MaskQTree_dc[67:2] = z1[66:1];
      end
    endfunction
    function MemOut_MaskQTree_t ACK_MaskQTree_dc (logic valid);
      begin
        ACK_MaskQTree_dc = 68'bx;
        ACK_MaskQTree_dc[0:0] = valid;
        ACK_MaskQTree_dc[1:1] = 1'd1;
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
    typedef logic [4:0] C10_t;
    function C10_t C1_10_dc (logic valid);
      begin
        C1_10_dc = 5'bx;
        C1_10_dc[0:0] = valid;
        C1_10_dc[4:1] = 4'd0;
      end
    endfunction
    function C10_t C2_10_dc (logic valid);
      begin
        C2_10_dc = 5'bx;
        C2_10_dc[0:0] = valid;
        C2_10_dc[4:1] = 4'd1;
      end
    endfunction
    function C10_t C3_10_dc (logic valid);
      begin
        C3_10_dc = 5'bx;
        C3_10_dc[0:0] = valid;
        C3_10_dc[4:1] = 4'd2;
      end
    endfunction
    function C10_t C4_10_dc (logic valid);
      begin
        C4_10_dc = 5'bx;
        C4_10_dc[0:0] = valid;
        C4_10_dc[4:1] = 4'd3;
      end
    endfunction
    function C10_t C5_10_dc (logic valid);
      begin
        C5_10_dc = 5'bx;
        C5_10_dc[0:0] = valid;
        C5_10_dc[4:1] = 4'd4;
      end
    endfunction
    function C10_t C6_10_dc (logic valid);
      begin
        C6_10_dc = 5'bx;
        C6_10_dc[0:0] = valid;
        C6_10_dc[4:1] = 4'd5;
      end
    endfunction
    function C10_t C7_10_dc (logic valid);
      begin
        C7_10_dc = 5'bx;
        C7_10_dc[0:0] = valid;
        C7_10_dc[4:1] = 4'd6;
      end
    endfunction
    function C10_t C8_10_dc (logic valid);
      begin
        C8_10_dc = 5'bx;
        C8_10_dc[0:0] = valid;
        C8_10_dc[4:1] = 4'd7;
      end
    endfunction
    function C10_t C9_10_dc (logic valid);
      begin
        C9_10_dc = 5'bx;
        C9_10_dc[0:0] = valid;
        C9_10_dc[4:1] = 4'd8;
      end
    endfunction
    function C10_t C10_10_dc (logic valid);
      begin
        C10_10_dc = 5'bx;
        C10_10_dc[0:0] = valid;
        C10_10_dc[4:1] = 4'd9;
      end
    endfunction
    typedef logic [3:0] C6_t;
    function C6_t C1_6_dc (logic valid);
      begin
        C1_6_dc = 4'bx;
        C1_6_dc[0:0] = valid;
        C1_6_dc[3:1] = 3'd0;
      end
    endfunction
    function C6_t C2_6_dc (logic valid);
      begin
        C2_6_dc = 4'bx;
        C2_6_dc[0:0] = valid;
        C2_6_dc[3:1] = 3'd1;
      end
    endfunction
    function C6_t C3_6_dc (logic valid);
      begin
        C3_6_dc = 4'bx;
        C3_6_dc[0:0] = valid;
        C3_6_dc[3:1] = 3'd2;
      end
    endfunction
    function C6_t C4_6_dc (logic valid);
      begin
        C4_6_dc = 4'bx;
        C4_6_dc[0:0] = valid;
        C4_6_dc[3:1] = 3'd3;
      end
    endfunction
    function C6_t C5_6_dc (logic valid);
      begin
        C5_6_dc = 4'bx;
        C5_6_dc[0:0] = valid;
        C5_6_dc[3:1] = 3'd4;
      end
    endfunction
    function C6_t C6_6_dc (logic valid);
      begin
        C6_6_dc = 4'bx;
        C6_6_dc[0:0] = valid;
        C6_6_dc[3:1] = 3'd5;
      end
    endfunction
    typedef logic [32:0] TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t;
    function TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4);
      begin
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc = 33'bx;
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[16:1] = z3[16:1];
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc[32:17] = z4[16:1];
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
    typedef logic [48:0] TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_t;
    function TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_t TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_CT$wmAdd_Bool_t z5);
      begin
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc = 49'bx;
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc[16:1] = z3[16:1];
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc[32:17] = z4[16:1];
        TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc[48:33] = z5[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_t;
    function TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_t TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc (logic valid, Go_t z1, Pointer_QTree_Bool_t z2, Pointer_MaskQTree_t z3, Pointer_CTmain_mask_Bool_t z4);
      begin
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc = 49'bx;
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc[32:17] = z3[16:1];
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree___Pointer_CTmain_mask_Bool_dc[48:33] = z4[16:1];
      end
    endfunction
    typedef logic [32:0] TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_t;
    function TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_t TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_dc (logic valid, Go_t z1, Pointer_QTree_Bool_t z2, Pointer_MaskQTree_t z3);
      begin
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_dc = 33'bx;
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_dc[0:0] = valid;
        ;
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_dc[16:1] = z2[16:1];
        TupGo___Pointer_QTree_Bool___Pointer_MaskQTree_dc[32:17] = z3[16:1];
      end
    endfunction
endpackage