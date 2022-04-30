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
    typedef logic [16:0] Pointer_Nat_t;
    function Pointer_Nat_t Pointer_Nat_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_Nat_dc = 17'bx;
        Pointer_Nat_dc[0:0] = valid;
        Pointer_Nat_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] Go_t;
    function Go_t Go_dc (logic valid);
      begin
        Go_dc = 1'bx;
        Go_dc[0:0] = valid;
      end
    endfunction
    typedef logic [17:0] Nat_t;
    function Nat_t Zero_dc (logic valid, Go_t z1);
      begin
        Zero_dc = 18'bx;
        Zero_dc[0:0] = valid;
        Zero_dc[1:1] = 1'd0;
        ;
      end
    endfunction
    function Nat_t Succ_dc (logic valid, Pointer_Nat_t z1);
      begin
        Succ_dc = 18'bx;
        Succ_dc[0:0] = valid;
        Succ_dc[1:1] = 1'd1;
        Succ_dc[17:2] = z1[16:1];
      end
    endfunction
    typedef logic [34:0] MemIn_Nat_t;
    function MemIn_Nat_t ReadIn_Nat_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_Nat_dc = 35'bx;
        ReadIn_Nat_dc[0:0] = valid;
        ReadIn_Nat_dc[1:1] = 1'd0;
        ReadIn_Nat_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_Nat_t WriteIn_Nat_dc (logic valid, \Word16#_t  z1, Nat_t z2);
      begin
        WriteIn_Nat_dc = 35'bx;
        WriteIn_Nat_dc[0:0] = valid;
        WriteIn_Nat_dc[1:1] = 1'd1;
        WriteIn_Nat_dc[17:2] = z1[16:1];
        WriteIn_Nat_dc[34:18] = z2[17:1];
      end
    endfunction
    typedef logic [18:0] MemOut_Nat_t;
    function MemOut_Nat_t ReadOut_Nat_dc (logic valid, Nat_t z1);
      begin
        ReadOut_Nat_dc = 19'bx;
        ReadOut_Nat_dc[0:0] = valid;
        ReadOut_Nat_dc[1:1] = 1'd0;
        ReadOut_Nat_dc[18:2] = z1[17:1];
      end
    endfunction
    function MemOut_Nat_t ACK_Nat_dc (logic valid);
      begin
        ACK_Nat_dc = 19'bx;
        ACK_Nat_dc[0:0] = valid;
        ACK_Nat_dc[1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] \Pointer_CTmain_map'_Bool_Nat_t ;
    function \Pointer_CTmain_map'_Bool_Nat_t  \Pointer_CTmain_map'_Bool_Nat_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTmain_map'_Bool_Nat_dc  = 17'bx;
        \Pointer_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        \Pointer_CTmain_map'_Bool_Nat_dc [16:1] = z1[16:1];
      end
    endfunction
    typedef logic [16:0] Pointer_QTree_Nat_t;
    function Pointer_QTree_Nat_t Pointer_QTree_Nat_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_QTree_Nat_dc = 17'bx;
        Pointer_QTree_Nat_dc[0:0] = valid;
        Pointer_QTree_Nat_dc[16:1] = z1[16:1];
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
    typedef logic [0:0] MyDTBool_Nat_t;
    function MyDTBool_Nat_t Dcon_to_nat_dc (logic valid, Go_t z1);
      begin
        Dcon_to_nat_dc = 1'bx;
        Dcon_to_nat_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [0:0] MyDTNat_Bool_t;
    function MyDTNat_Bool_t Dcon_is_z_nut_dc (logic valid, Go_t z1);
      begin
        Dcon_is_z_nut_dc = 1'bx;
        Dcon_is_z_nut_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [67:0] \CTmain_map'_Bool_Nat_t ;
    function \CTmain_map'_Bool_Nat_t  \Lmain_map'_Bool_Natsbos_dc  (logic valid, Go_t z1);
      begin
        \Lmain_map'_Bool_Natsbos_dc  = 68'bx;
        \Lmain_map'_Bool_Natsbos_dc [0:0] = valid;
        \Lmain_map'_Bool_Natsbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTmain_map'_Bool_Nat_t  \Lcall_main_map'_Bool_Nat3_dc  (logic valid, \Pointer_CTmain_map'_Bool_Nat_t  z1, MyDTNat_Bool_t z2, MyDTBool_Nat_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6);
      begin
        \Lcall_main_map'_Bool_Nat3_dc  = 68'bx;
        \Lcall_main_map'_Bool_Nat3_dc [0:0] = valid;
        \Lcall_main_map'_Bool_Nat3_dc [3:1] = 3'd1;
        \Lcall_main_map'_Bool_Nat3_dc [19:4] = z1[16:1];
        ;
        ;
        \Lcall_main_map'_Bool_Nat3_dc [35:20] = z4[16:1];
        \Lcall_main_map'_Bool_Nat3_dc [51:36] = z5[16:1];
        \Lcall_main_map'_Bool_Nat3_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Bool_Nat_t  \Lcall_main_map'_Bool_Nat2_dc  (logic valid, Pointer_QTree_Nat_t z1, \Pointer_CTmain_map'_Bool_Nat_t  z2, MyDTNat_Bool_t z3, MyDTBool_Nat_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6);
      begin
        \Lcall_main_map'_Bool_Nat2_dc  = 68'bx;
        \Lcall_main_map'_Bool_Nat2_dc [0:0] = valid;
        \Lcall_main_map'_Bool_Nat2_dc [3:1] = 3'd2;
        \Lcall_main_map'_Bool_Nat2_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Bool_Nat2_dc [35:20] = z2[16:1];
        ;
        ;
        \Lcall_main_map'_Bool_Nat2_dc [51:36] = z5[16:1];
        \Lcall_main_map'_Bool_Nat2_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Bool_Nat_t  \Lcall_main_map'_Bool_Nat1_dc  (logic valid, Pointer_QTree_Nat_t z1, Pointer_QTree_Nat_t z2, \Pointer_CTmain_map'_Bool_Nat_t  z3, MyDTNat_Bool_t z4, MyDTBool_Nat_t z5, Pointer_QTree_Bool_t z6);
      begin
        \Lcall_main_map'_Bool_Nat1_dc  = 68'bx;
        \Lcall_main_map'_Bool_Nat1_dc [0:0] = valid;
        \Lcall_main_map'_Bool_Nat1_dc [3:1] = 3'd3;
        \Lcall_main_map'_Bool_Nat1_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Bool_Nat1_dc [35:20] = z2[16:1];
        \Lcall_main_map'_Bool_Nat1_dc [51:36] = z3[16:1];
        ;
        ;
        \Lcall_main_map'_Bool_Nat1_dc [67:52] = z6[16:1];
      end
    endfunction
    function \CTmain_map'_Bool_Nat_t  \Lcall_main_map'_Bool_Nat0_dc  (logic valid, Pointer_QTree_Nat_t z1, Pointer_QTree_Nat_t z2, Pointer_QTree_Nat_t z3, \Pointer_CTmain_map'_Bool_Nat_t  z4);
      begin
        \Lcall_main_map'_Bool_Nat0_dc  = 68'bx;
        \Lcall_main_map'_Bool_Nat0_dc [0:0] = valid;
        \Lcall_main_map'_Bool_Nat0_dc [3:1] = 3'd4;
        \Lcall_main_map'_Bool_Nat0_dc [19:4] = z1[16:1];
        \Lcall_main_map'_Bool_Nat0_dc [35:20] = z2[16:1];
        \Lcall_main_map'_Bool_Nat0_dc [51:36] = z3[16:1];
        \Lcall_main_map'_Bool_Nat0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [84:0] \MemIn_CTmain_map'_Bool_Nat_t ;
    function \MemIn_CTmain_map'_Bool_Nat_t  \ReadIn_CTmain_map'_Bool_Nat_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTmain_map'_Bool_Nat_dc  = 85'bx;
        \ReadIn_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        \ReadIn_CTmain_map'_Bool_Nat_dc [1:1] = 1'd0;
        \ReadIn_CTmain_map'_Bool_Nat_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTmain_map'_Bool_Nat_t  \WriteIn_CTmain_map'_Bool_Nat_dc  (logic valid, \Word16#_t  z1, \CTmain_map'_Bool_Nat_t  z2);
      begin
        \WriteIn_CTmain_map'_Bool_Nat_dc  = 85'bx;
        \WriteIn_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        \WriteIn_CTmain_map'_Bool_Nat_dc [1:1] = 1'd1;
        \WriteIn_CTmain_map'_Bool_Nat_dc [17:2] = z1[16:1];
        \WriteIn_CTmain_map'_Bool_Nat_dc [84:18] = z2[67:1];
      end
    endfunction
    typedef logic [68:0] \MemOut_CTmain_map'_Bool_Nat_t ;
    function \MemOut_CTmain_map'_Bool_Nat_t  \ReadOut_CTmain_map'_Bool_Nat_dc  (logic valid, \CTmain_map'_Bool_Nat_t  z1);
      begin
        \ReadOut_CTmain_map'_Bool_Nat_dc  = 69'bx;
        \ReadOut_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        \ReadOut_CTmain_map'_Bool_Nat_dc [1:1] = 1'd0;
        \ReadOut_CTmain_map'_Bool_Nat_dc [68:2] = z1[67:1];
      end
    endfunction
    function \MemOut_CTmain_map'_Bool_Nat_t  \ACK_CTmain_map'_Bool_Nat_dc  (logic valid);
      begin
        \ACK_CTmain_map'_Bool_Nat_dc  = 69'bx;
        \ACK_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        \ACK_CTmain_map'_Bool_Nat_dc [1:1] = 1'd1;
      end
    endfunction
    typedef logic [66:0] QTree_Nat_t;
    function QTree_Nat_t QNone_Nat_dc (logic valid, Go_t z1);
      begin
        QNone_Nat_dc = 67'bx;
        QNone_Nat_dc[0:0] = valid;
        QNone_Nat_dc[2:1] = 2'd0;
        ;
      end
    endfunction
    function QTree_Nat_t QVal_Nat_dc (logic valid, Pointer_Nat_t z1);
      begin
        QVal_Nat_dc = 67'bx;
        QVal_Nat_dc[0:0] = valid;
        QVal_Nat_dc[2:1] = 2'd1;
        QVal_Nat_dc[18:3] = z1[16:1];
      end
    endfunction
    function QTree_Nat_t QNode_Nat_dc (logic valid, Pointer_QTree_Nat_t z1, Pointer_QTree_Nat_t z2, Pointer_QTree_Nat_t z3, Pointer_QTree_Nat_t z4);
      begin
        QNode_Nat_dc = 67'bx;
        QNode_Nat_dc[0:0] = valid;
        QNode_Nat_dc[2:1] = 2'd2;
        QNode_Nat_dc[18:3] = z1[16:1];
        QNode_Nat_dc[34:19] = z2[16:1];
        QNode_Nat_dc[50:35] = z3[16:1];
        QNode_Nat_dc[66:51] = z4[16:1];
      end
    endfunction
    function QTree_Nat_t QError_Nat_dc (logic valid, Go_t z1);
      begin
        QError_Nat_dc = 67'bx;
        QError_Nat_dc[0:0] = valid;
        QError_Nat_dc[2:1] = 2'd3;
        ;
      end
    endfunction
    typedef logic [83:0] MemIn_QTree_Nat_t;
    function MemIn_QTree_Nat_t ReadIn_QTree_Nat_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_QTree_Nat_dc = 84'bx;
        ReadIn_QTree_Nat_dc[0:0] = valid;
        ReadIn_QTree_Nat_dc[1:1] = 1'd0;
        ReadIn_QTree_Nat_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_QTree_Nat_t WriteIn_QTree_Nat_dc (logic valid, \Word16#_t  z1, QTree_Nat_t z2);
      begin
        WriteIn_QTree_Nat_dc = 84'bx;
        WriteIn_QTree_Nat_dc[0:0] = valid;
        WriteIn_QTree_Nat_dc[1:1] = 1'd1;
        WriteIn_QTree_Nat_dc[17:2] = z1[16:1];
        WriteIn_QTree_Nat_dc[83:18] = z2[66:1];
      end
    endfunction
    typedef logic [67:0] MemOut_QTree_Nat_t;
    function MemOut_QTree_Nat_t ReadOut_QTree_Nat_dc (logic valid, QTree_Nat_t z1);
      begin
        ReadOut_QTree_Nat_dc = 68'bx;
        ReadOut_QTree_Nat_dc[0:0] = valid;
        ReadOut_QTree_Nat_dc[1:1] = 1'd0;
        ReadOut_QTree_Nat_dc[67:2] = z1[66:1];
      end
    endfunction
    function MemOut_QTree_Nat_t ACK_QTree_Nat_dc (logic valid);
      begin
        ACK_QTree_Nat_dc = 68'bx;
        ACK_QTree_Nat_dc[0:0] = valid;
        ACK_QTree_Nat_dc[1:1] = 1'd1;
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
    typedef logic [16:0] \Pointer_CTmap''_map''_Bool_Bool_Bool_t ;
    function \Pointer_CTmap''_map''_Bool_Bool_Bool_t  \Pointer_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid, \Word16#_t  z1);
      begin
        \Pointer_CTmap''_map''_Bool_Bool_Bool_dc  = 17'bx;
        \Pointer_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        \Pointer_CTmap''_map''_Bool_Bool_Bool_dc [16:1] = z1[16:1];
      end
    endfunction
    typedef logic [0:0] MyDTBool_Bool_Bool_t;
    function MyDTBool_Bool_Bool_t \Dcon_&&_dc  (logic valid, Go_t z1);
      begin
        \Dcon_&&_dc  = 1'bx;
        \Dcon_&&_dc [0:0] = valid;
        ;
      end
    endfunction
    typedef logic [0:0] MyDTBool_Bool_t;
    function MyDTBool_Bool_t Dcon_main1_dc (logic valid, Go_t z1);
      begin
        Dcon_main1_dc = 1'bx;
        Dcon_main1_dc[0:0] = valid;
        ;
      end
    endfunction
    typedef logic [68:0] \CTmap''_map''_Bool_Bool_Bool_t ;
    function \CTmap''_map''_Bool_Bool_Bool_t  \Lmap''_map''_Bool_Bool_Boolsbos_dc  (logic valid, Go_t z1);
      begin
        \Lmap''_map''_Bool_Bool_Boolsbos_dc  = 69'bx;
        \Lmap''_map''_Bool_Bool_Boolsbos_dc [0:0] = valid;
        \Lmap''_map''_Bool_Bool_Boolsbos_dc [3:1] = 3'd0;
        ;
      end
    endfunction
    function \CTmap''_map''_Bool_Bool_Bool_t  \Lcall_map''_map''_Bool_Bool_Bool3_dc  (logic valid, \Pointer_CTmap''_map''_Bool_Bool_Bool_t  z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, MyBool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        \Lcall_map''_map''_Bool_Bool_Bool3_dc  = 69'bx;
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [0:0] = valid;
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [3:1] = 3'd1;
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [19:4] = z1[16:1];
        ;
        ;
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [20:20] = z4[1:1];
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [36:21] = z5[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [52:37] = z6[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool3_dc [68:53] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Bool_Bool_Bool_t  \Lcall_map''_map''_Bool_Bool_Bool2_dc  (logic valid, Pointer_QTree_Bool_t z1, \Pointer_CTmap''_map''_Bool_Bool_Bool_t  z2, MyDTBool_Bool_t z3, MyDTBool_Bool_Bool_t z4, MyBool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        \Lcall_map''_map''_Bool_Bool_Bool2_dc  = 69'bx;
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [0:0] = valid;
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [3:1] = 3'd2;
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [35:20] = z2[16:1];
        ;
        ;
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [36:36] = z5[1:1];
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [52:37] = z6[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool2_dc [68:53] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Bool_Bool_Bool_t  \Lcall_map''_map''_Bool_Bool_Bool1_dc  (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, \Pointer_CTmap''_map''_Bool_Bool_Bool_t  z3, MyDTBool_Bool_t z4, MyDTBool_Bool_Bool_t z5, MyBool_t z6, Pointer_QTree_Bool_t z7);
      begin
        \Lcall_map''_map''_Bool_Bool_Bool1_dc  = 69'bx;
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [0:0] = valid;
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [3:1] = 3'd3;
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [35:20] = z2[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [51:36] = z3[16:1];
        ;
        ;
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [52:52] = z6[1:1];
        \Lcall_map''_map''_Bool_Bool_Bool1_dc [68:53] = z7[16:1];
      end
    endfunction
    function \CTmap''_map''_Bool_Bool_Bool_t  \Lcall_map''_map''_Bool_Bool_Bool0_dc  (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, \Pointer_CTmap''_map''_Bool_Bool_Bool_t  z4);
      begin
        \Lcall_map''_map''_Bool_Bool_Bool0_dc  = 69'bx;
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [0:0] = valid;
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [3:1] = 3'd4;
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [19:4] = z1[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [35:20] = z2[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [51:36] = z3[16:1];
        \Lcall_map''_map''_Bool_Bool_Bool0_dc [67:52] = z4[16:1];
      end
    endfunction
    typedef logic [85:0] \MemIn_CTmap''_map''_Bool_Bool_Bool_t ;
    function \MemIn_CTmap''_map''_Bool_Bool_Bool_t  \ReadIn_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid, \Word16#_t  z1);
      begin
        \ReadIn_CTmap''_map''_Bool_Bool_Bool_dc  = 86'bx;
        \ReadIn_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        \ReadIn_CTmap''_map''_Bool_Bool_Bool_dc [1:1] = 1'd0;
        \ReadIn_CTmap''_map''_Bool_Bool_Bool_dc [17:2] = z1[16:1];
      end
    endfunction
    function \MemIn_CTmap''_map''_Bool_Bool_Bool_t  \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid, \Word16#_t  z1, \CTmap''_map''_Bool_Bool_Bool_t  z2);
      begin
        \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc  = 86'bx;
        \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc [1:1] = 1'd1;
        \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc [17:2] = z1[16:1];
        \WriteIn_CTmap''_map''_Bool_Bool_Bool_dc [85:18] = z2[68:1];
      end
    endfunction
    typedef logic [69:0] \MemOut_CTmap''_map''_Bool_Bool_Bool_t ;
    function \MemOut_CTmap''_map''_Bool_Bool_Bool_t  \ReadOut_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid, \CTmap''_map''_Bool_Bool_Bool_t  z1);
      begin
        \ReadOut_CTmap''_map''_Bool_Bool_Bool_dc  = 70'bx;
        \ReadOut_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        \ReadOut_CTmap''_map''_Bool_Bool_Bool_dc [1:1] = 1'd0;
        \ReadOut_CTmap''_map''_Bool_Bool_Bool_dc [69:2] = z1[68:1];
      end
    endfunction
    function \MemOut_CTmap''_map''_Bool_Bool_Bool_t  \ACK_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid);
      begin
        \ACK_CTmap''_map''_Bool_Bool_Bool_dc  = 70'bx;
        \ACK_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        \ACK_CTmap''_map''_Bool_Bool_Bool_dc [1:1] = 1'd1;
      end
    endfunction
    typedef logic [16:0] Pointer_CTkron_kron_Bool_Bool_Bool_t;
    function Pointer_CTkron_kron_Bool_Bool_Bool_t Pointer_CTkron_kron_Bool_Bool_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        Pointer_CTkron_kron_Bool_Bool_Bool_dc = 17'bx;
        Pointer_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        Pointer_CTkron_kron_Bool_Bool_Bool_dc[16:1] = z1[16:1];
      end
    endfunction
    typedef logic [83:0] CTkron_kron_Bool_Bool_Bool_t;
    function CTkron_kron_Bool_Bool_Bool_t Lkron_kron_Bool_Bool_Boolsbos_dc (logic valid, Go_t z1);
      begin
        Lkron_kron_Bool_Bool_Boolsbos_dc = 84'bx;
        Lkron_kron_Bool_Bool_Boolsbos_dc[0:0] = valid;
        Lkron_kron_Bool_Bool_Boolsbos_dc[3:1] = 3'd0;
        ;
      end
    endfunction
    function CTkron_kron_Bool_Bool_Bool_t Lcall_kron_kron_Bool_Bool_Bool3_dc (logic valid, Pointer_CTkron_kron_Bool_Bool_Bool_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        Lcall_kron_kron_Bool_Bool_Bool3_dc = 84'bx;
        Lcall_kron_kron_Bool_Bool_Bool3_dc[0:0] = valid;
        Lcall_kron_kron_Bool_Bool_Bool3_dc[3:1] = 3'd1;
        Lcall_kron_kron_Bool_Bool_Bool3_dc[19:4] = z1[16:1];
        ;
        ;
        Lcall_kron_kron_Bool_Bool_Bool3_dc[35:20] = z4[16:1];
        Lcall_kron_kron_Bool_Bool_Bool3_dc[51:36] = z5[16:1];
        Lcall_kron_kron_Bool_Bool_Bool3_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Bool_Bool_Bool3_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Bool_Bool_Bool_t Lcall_kron_kron_Bool_Bool_Bool2_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_CTkron_kron_Bool_Bool_Bool_t z2, MyDTBool_Bool_t z3, MyDTBool_Bool_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        Lcall_kron_kron_Bool_Bool_Bool2_dc = 84'bx;
        Lcall_kron_kron_Bool_Bool_Bool2_dc[0:0] = valid;
        Lcall_kron_kron_Bool_Bool_Bool2_dc[3:1] = 3'd2;
        Lcall_kron_kron_Bool_Bool_Bool2_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Bool_Bool_Bool2_dc[35:20] = z2[16:1];
        ;
        ;
        Lcall_kron_kron_Bool_Bool_Bool2_dc[51:36] = z5[16:1];
        Lcall_kron_kron_Bool_Bool_Bool2_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Bool_Bool_Bool2_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Bool_Bool_Bool_t Lcall_kron_kron_Bool_Bool_Bool1_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_CTkron_kron_Bool_Bool_Bool_t z3, MyDTBool_Bool_t z4, MyDTBool_Bool_Bool_t z5, Pointer_QTree_Bool_t z6, Pointer_QTree_Bool_t z7);
      begin
        Lcall_kron_kron_Bool_Bool_Bool1_dc = 84'bx;
        Lcall_kron_kron_Bool_Bool_Bool1_dc[0:0] = valid;
        Lcall_kron_kron_Bool_Bool_Bool1_dc[3:1] = 3'd3;
        Lcall_kron_kron_Bool_Bool_Bool1_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Bool_Bool_Bool1_dc[35:20] = z2[16:1];
        Lcall_kron_kron_Bool_Bool_Bool1_dc[51:36] = z3[16:1];
        ;
        ;
        Lcall_kron_kron_Bool_Bool_Bool1_dc[67:52] = z6[16:1];
        Lcall_kron_kron_Bool_Bool_Bool1_dc[83:68] = z7[16:1];
      end
    endfunction
    function CTkron_kron_Bool_Bool_Bool_t Lcall_kron_kron_Bool_Bool_Bool0_dc (logic valid, Pointer_QTree_Bool_t z1, Pointer_QTree_Bool_t z2, Pointer_QTree_Bool_t z3, Pointer_CTkron_kron_Bool_Bool_Bool_t z4);
      begin
        Lcall_kron_kron_Bool_Bool_Bool0_dc = 84'bx;
        Lcall_kron_kron_Bool_Bool_Bool0_dc[0:0] = valid;
        Lcall_kron_kron_Bool_Bool_Bool0_dc[3:1] = 3'd4;
        Lcall_kron_kron_Bool_Bool_Bool0_dc[19:4] = z1[16:1];
        Lcall_kron_kron_Bool_Bool_Bool0_dc[35:20] = z2[16:1];
        Lcall_kron_kron_Bool_Bool_Bool0_dc[51:36] = z3[16:1];
        Lcall_kron_kron_Bool_Bool_Bool0_dc[67:52] = z4[16:1];
      end
    endfunction
    typedef logic [100:0] MemIn_CTkron_kron_Bool_Bool_Bool_t;
    function MemIn_CTkron_kron_Bool_Bool_Bool_t ReadIn_CTkron_kron_Bool_Bool_Bool_dc (logic valid, \Word16#_t  z1);
      begin
        ReadIn_CTkron_kron_Bool_Bool_Bool_dc = 101'bx;
        ReadIn_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        ReadIn_CTkron_kron_Bool_Bool_Bool_dc[1:1] = 1'd0;
        ReadIn_CTkron_kron_Bool_Bool_Bool_dc[17:2] = z1[16:1];
      end
    endfunction
    function MemIn_CTkron_kron_Bool_Bool_Bool_t WriteIn_CTkron_kron_Bool_Bool_Bool_dc (logic valid, \Word16#_t  z1, CTkron_kron_Bool_Bool_Bool_t z2);
      begin
        WriteIn_CTkron_kron_Bool_Bool_Bool_dc = 101'bx;
        WriteIn_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        WriteIn_CTkron_kron_Bool_Bool_Bool_dc[1:1] = 1'd1;
        WriteIn_CTkron_kron_Bool_Bool_Bool_dc[17:2] = z1[16:1];
        WriteIn_CTkron_kron_Bool_Bool_Bool_dc[100:18] = z2[83:1];
      end
    endfunction
    typedef logic [84:0] MemOut_CTkron_kron_Bool_Bool_Bool_t;
    function MemOut_CTkron_kron_Bool_Bool_Bool_t ReadOut_CTkron_kron_Bool_Bool_Bool_dc (logic valid, CTkron_kron_Bool_Bool_Bool_t z1);
      begin
        ReadOut_CTkron_kron_Bool_Bool_Bool_dc = 85'bx;
        ReadOut_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        ReadOut_CTkron_kron_Bool_Bool_Bool_dc[1:1] = 1'd0;
        ReadOut_CTkron_kron_Bool_Bool_Bool_dc[84:2] = z1[83:1];
      end
    endfunction
    function MemOut_CTkron_kron_Bool_Bool_Bool_t ACK_CTkron_kron_Bool_Bool_Bool_dc (logic valid);
      begin
        ACK_CTkron_kron_Bool_Bool_Bool_dc = 85'bx;
        ACK_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        ACK_CTkron_kron_Bool_Bool_Bool_dc[1:1] = 1'd1;
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
    typedef logic [1:0] TupGo___MyDTBool_Nat___MyBool_t;
    function TupGo___MyDTBool_Nat___MyBool_t TupGo___MyDTBool_Nat___MyBool_dc (logic valid, Go_t z1, MyDTBool_Nat_t z2, MyBool_t z3);
      begin
        TupGo___MyDTBool_Nat___MyBool_dc = 2'bx;
        TupGo___MyDTBool_Nat___MyBool_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTBool_Nat___MyBool_dc[1:1] = z3[1:1];
      end
    endfunction
    typedef logic [16:0] TupGo___MyDTNat_Bool___Pointer_Nat_t;
    function TupGo___MyDTNat_Bool___Pointer_Nat_t TupGo___MyDTNat_Bool___Pointer_Nat_dc (logic valid, Go_t z1, MyDTNat_Bool_t z2, Pointer_Nat_t z3);
      begin
        TupGo___MyDTNat_Bool___Pointer_Nat_dc = 17'bx;
        TupGo___MyDTNat_Bool___Pointer_Nat_dc[0:0] = valid;
        ;
        ;
        TupGo___MyDTNat_Bool___Pointer_Nat_dc[16:1] = z3[16:1];
      end
    endfunction
    typedef logic [48:0] TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_t;
    function TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_t TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, Pointer_QTree_Bool_t z4, Pointer_QTree_Bool_t z5, Pointer_CTkron_kron_Bool_Bool_Bool_t z6);
      begin
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc = 49'bx;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc[16:1] = z4[16:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc[32:17] = z5[16:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTkron_kron_Bool_Bool_Bool_dc[48:33] = z6[16:1];
      end
    endfunction
    typedef logic [32:0] \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_t ;
    function \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_t  \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc  (logic valid, Go_t z1, MyDTNat_Bool_t z2, MyDTBool_Nat_t z3, Pointer_QTree_Bool_t z4, \Pointer_CTmain_map'_Bool_Nat_t  z5);
      begin
        \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc  = 33'bx;
        \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc [0:0] = valid;
        ;
        ;
        ;
        \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc [16:1] = z4[16:1];
        \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc [32:17] = z5[16:1];
      end
    endfunction
    typedef logic [33:0] \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_t ;
    function \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_t  \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc  (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, MyBool_t z4, Pointer_QTree_Bool_t z5, \Pointer_CTmap''_map''_Bool_Bool_Bool_t  z6);
      begin
        \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc  = 34'bx;
        \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc [0:0] = valid;
        ;
        ;
        ;
        \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc [1:1] = z4[1:1];
        \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc [17:2] = z5[16:1];
        \TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool___Pointer_CTmap''_map''_Bool_Bool_Bool_dc [33:18] = z6[16:1];
      end
    endfunction
    typedef logic [32:0] TupGo___Pointer_Nat___Pointer_Nat_t;
    function TupGo___Pointer_Nat___Pointer_Nat_t TupGo___Pointer_Nat___Pointer_Nat_dc (logic valid, Go_t z1, Pointer_Nat_t z2, Pointer_Nat_t z3);
      begin
        TupGo___Pointer_Nat___Pointer_Nat_dc = 33'bx;
        TupGo___Pointer_Nat___Pointer_Nat_dc[0:0] = valid;
        ;
        TupGo___Pointer_Nat___Pointer_Nat_dc[16:1] = z2[16:1];
        TupGo___Pointer_Nat___Pointer_Nat_dc[32:17] = z3[16:1];
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
    typedef logic [16:0] TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_t;
    function TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_t TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_dc (logic valid, Go_t z1, MyDTNat_Bool_t z2, MyDTBool_Nat_t z3, Pointer_QTree_Bool_t z4);
      begin
        TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_dc = 17'bx;
        TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_dc[16:1] = z4[16:1];
      end
    endfunction
    typedef logic [17:0] TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_t;
    function TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_t TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_dc (logic valid, Go_t z1, MyDTBool_Bool_t z2, MyDTBool_Bool_Bool_t z3, MyBool_t z4, Pointer_QTree_Bool_t z5);
      begin
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_dc = 18'bx;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_dc[0:0] = valid;
        ;
        ;
        ;
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_dc[1:1] = z4[1:1];
        TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___MyBool___Pointer_QTree_Bool_dc[17:2] = z5[16:1];
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
endpackage