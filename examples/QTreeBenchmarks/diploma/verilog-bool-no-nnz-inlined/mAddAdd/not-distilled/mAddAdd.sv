`timescale 1ns/1ns
import mAddAdd_package::*;

module mAddAdd(
  input logic clk,
  input logic reset,
  input Go_t \\QTree_Bool_src_d ,
  output logic \\QTree_Bool_src_r ,
  input QTree_Bool_t dummy_write_QTree_Bool_d,
  output logic dummy_write_QTree_Bool_r,
  input Go_t sourceGo_d,
  output logic sourceGo_r,
  input Pointer_QTree_Bool_t m1aem_0_d,
  output logic m1aem_0_r,
  input Pointer_QTree_Bool_t m2aen_1_d,
  output logic m2aen_1_r,
  input Pointer_QTree_Bool_t m3aeo_2_d,
  output logic m3aeo_2_r,
  output \Word16#_t  forkHP1_QTree_Bool_snk_dout,
  input logic forkHP1_QTree_Bool_snk_rout,
  output Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout,
  input logic dummy_write_QTree_Bool_sink_rout,
  output Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_argbuf_dout,
  input logic mAdd_mAdd_Bool_2_argbuf_rout
  );
  /* --define=INPUTS=((__05CQTree_Bool_src, 0, 1, Go), (dummy_write_QTree_Bool, 66, 73786976294838206464, QTree_Bool), (sourceGo, 0, 1, Go), (m1aem_0, 16, 65536, Pointer_QTree_Bool), (m2aen_1, 16, 65536, Pointer_QTree_Bool), (m3aeo_2, 16, 65536, Pointer_QTree_Bool)) */
  /* --define=TAPS=() */
  /* --define=OUTPUTS=((forkHP1_QTree_Bool_snk, 16, 65536, Word16__023), (dummy_write_QTree_Bool_sink, 16, 65536, Pointer_QTree_Bool), (mAdd_mAdd_Bool_2_argbuf, 16, 65536, Pointer_QTree_Bool)) */
  /* TYPE_START
QTree_Bool 16 2 (0,[0]) (1,[1]) (2,[16p,16p,16p,16p]) (3,[0])
CTmAdd_mAdd_Bool 16 3 (0,[0]) (1,[16p,0,0,16p,16p,16p,16p,16p,16p]) (2,[16p,16p,0,0,16p,16p,16p,16p]) (3,[16p,16p,16p,0,0,16p,16p]) (4,[16p,16p,16p,16p])
TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool 16 0 (0,[0,0,0,16p,16p,16p])
TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool 16 0 (0,[0,0,0,16p,16p])
TYPE_END */
  /*  */
  /*  */
  Go_t go_1_d;
  logic go_1_r;
  Go_t go_2_d;
  logic go_2_r;
  Go_t go_3_d;
  logic go_3_r;
  Go_t go_4_d;
  logic go_4_r;
  Go_t go_5_d;
  logic go_5_r;
  Go_t go_6_d;
  logic go_6_r;
  Go_t go__7_d;
  logic go__7_r;
  Go_t go__8_d;
  logic go__8_r;
  \Word16#_t  initHP_QTree_Bool_d;
  logic initHP_QTree_Bool_r;
  \Word16#_t  incrHP_QTree_Bool_d;
  logic incrHP_QTree_Bool_r;
  Go_t incrHP_mergeQTree_Bool_d;
  logic incrHP_mergeQTree_Bool_r;
  Go_t incrHP_QTree_Bool1_d;
  logic incrHP_QTree_Bool1_r;
  Go_t incrHP_QTree_Bool2_d;
  logic incrHP_QTree_Bool2_r;
  \Word16#_t  addHP_QTree_Bool_d;
  logic addHP_QTree_Bool_r;
  \Word16#_t  mergeHP_QTree_Bool_d;
  logic mergeHP_QTree_Bool_r;
  Go_t incrHP_mergeQTree_Bool_buf_d;
  logic incrHP_mergeQTree_Bool_buf_r;
  \Word16#_t  mergeHP_QTree_Bool_buf_d;
  logic mergeHP_QTree_Bool_buf_r;
  Go_t go_1_dummy_write_QTree_Bool_d;
  logic go_1_dummy_write_QTree_Bool_r;
  Go_t go_2_dummy_write_QTree_Bool_d;
  logic go_2_dummy_write_QTree_Bool_r;
  \Word16#_t  forkHP1_QTree_Bool_d;
  logic forkHP1_QTree_Bool_r;
  \Word16#_t  forkHP1_QTree_Bool_snk_d;
  logic forkHP1_QTree_Bool_snk_r;
  \Word16#_t  forkHP1_QTree_Boo3_d;
  logic forkHP1_QTree_Boo3_r;
  \Word16#_t  forkHP1_QTree_Boo4_d;
  logic forkHP1_QTree_Boo4_r;
  C2_t memMergeChoice_QTree_Bool_d;
  logic memMergeChoice_QTree_Bool_r;
  MemIn_QTree_Bool_t memMergeIn_QTree_Bool_d;
  logic memMergeIn_QTree_Bool_r;
  MemOut_QTree_Bool_t memOut_QTree_Bool_d;
  logic memOut_QTree_Bool_r;
  MemOut_QTree_Bool_t memReadOut_QTree_Bool_d;
  logic memReadOut_QTree_Bool_r;
  MemOut_QTree_Bool_t memWriteOut_QTree_Bool_d;
  logic memWriteOut_QTree_Bool_r;
  MemIn_QTree_Bool_t memMergeIn_QTree_Bool_dbuf_d;
  logic memMergeIn_QTree_Bool_dbuf_r;
  MemIn_QTree_Bool_t memMergeIn_QTree_Bool_rbuf_d;
  logic memMergeIn_QTree_Bool_rbuf_r;
  MemOut_QTree_Bool_t memOut_QTree_Bool_dbuf_d;
  logic memOut_QTree_Bool_dbuf_r;
  MemOut_QTree_Bool_t memOut_QTree_Bool_rbuf_d;
  logic memOut_QTree_Bool_rbuf_r;
  C2_t readMerge_choice_QTree_Bool_d;
  logic readMerge_choice_QTree_Bool_r;
  Pointer_QTree_Bool_t readMerge_data_QTree_Bool_d;
  logic readMerge_data_QTree_Bool_r;
  QTree_Bool_t readPointer_QTree_Boolm1a88_1_argbuf_d;
  logic readPointer_QTree_Boolm1a88_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolm2a89_1_argbuf_d;
  logic readPointer_QTree_Boolm2a89_1_argbuf_r;
  \Word16#_t  destructReadIn_QTree_Bool_d;
  logic destructReadIn_QTree_Bool_r;
  MemIn_QTree_Bool_t dconReadIn_QTree_Bool_d;
  logic dconReadIn_QTree_Bool_r;
  QTree_Bool_t destructReadOut_QTree_Bool_d;
  logic destructReadOut_QTree_Bool_r;
  C9_t writeMerge_choice_QTree_Bool_d;
  logic writeMerge_choice_QTree_Bool_r;
  QTree_Bool_t writeMerge_data_QTree_Bool_d;
  logic writeMerge_data_QTree_Bool_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_d;
  logic writeQTree_BoollizzieLet10_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_d;
  logic writeQTree_BoollizzieLet16_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_d;
  logic writeQTree_BoollizzieLet2_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_d;
  logic writeQTree_BoollizzieLet3_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_d;
  logic writeQTree_BoollizzieLet4_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_d;
  logic writeQTree_BoollizzieLet7_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_d;
  logic writeQTree_BoollizzieLet9_1_argbuf_r;
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_d;
  logic dummy_write_QTree_Bool_sink_r;
  MemIn_QTree_Bool_t dconWriteIn_QTree_Bool_d;
  logic dconWriteIn_QTree_Bool_r;
  Pointer_QTree_Bool_t dconPtr_QTree_Bool_d;
  logic dconPtr_QTree_Bool_r;
  Pointer_QTree_Bool_t _58_d;
  logic _58_r;
  assign _58_r = 1'd1;
  Pointer_QTree_Bool_t demuxWriteResult_QTree_Bool_d;
  logic demuxWriteResult_QTree_Bool_r;
  \Word16#_t  initHP_CTmAdd_mAdd_Bool_d;
  logic initHP_CTmAdd_mAdd_Bool_r;
  \Word16#_t  incrHP_CTmAdd_mAdd_Bool_d;
  logic incrHP_CTmAdd_mAdd_Bool_r;
  Go_t incrHP_mergeCTmAdd_mAdd_Bool_d;
  logic incrHP_mergeCTmAdd_mAdd_Bool_r;
  Go_t incrHP_CTmAdd_mAdd_Bool1_d;
  logic incrHP_CTmAdd_mAdd_Bool1_r;
  Go_t incrHP_CTmAdd_mAdd_Bool2_d;
  logic incrHP_CTmAdd_mAdd_Bool2_r;
  \Word16#_t  addHP_CTmAdd_mAdd_Bool_d;
  logic addHP_CTmAdd_mAdd_Bool_r;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Bool_d;
  logic mergeHP_CTmAdd_mAdd_Bool_r;
  Go_t incrHP_mergeCTmAdd_mAdd_Bool_buf_d;
  logic incrHP_mergeCTmAdd_mAdd_Bool_buf_r;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Bool_buf_d;
  logic mergeHP_CTmAdd_mAdd_Bool_buf_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_Bool_d;
  logic forkHP1_CTmAdd_mAdd_Bool_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_Boo2_d;
  logic forkHP1_CTmAdd_mAdd_Boo2_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_Boo3_d;
  logic forkHP1_CTmAdd_mAdd_Boo3_r;
  C2_t memMergeChoice_CTmAdd_mAdd_Bool_d;
  logic memMergeChoice_CTmAdd_mAdd_Bool_r;
  MemIn_CTmAdd_mAdd_Bool_t memMergeIn_CTmAdd_mAdd_Bool_d;
  logic memMergeIn_CTmAdd_mAdd_Bool_r;
  MemOut_CTmAdd_mAdd_Bool_t memOut_CTmAdd_mAdd_Bool_d;
  logic memOut_CTmAdd_mAdd_Bool_r;
  MemOut_CTmAdd_mAdd_Bool_t memReadOut_CTmAdd_mAdd_Bool_d;
  logic memReadOut_CTmAdd_mAdd_Bool_r;
  MemOut_CTmAdd_mAdd_Bool_t memWriteOut_CTmAdd_mAdd_Bool_d;
  logic memWriteOut_CTmAdd_mAdd_Bool_r;
  MemIn_CTmAdd_mAdd_Bool_t memMergeIn_CTmAdd_mAdd_Bool_dbuf_d;
  logic memMergeIn_CTmAdd_mAdd_Bool_dbuf_r;
  MemIn_CTmAdd_mAdd_Bool_t memMergeIn_CTmAdd_mAdd_Bool_rbuf_d;
  logic memMergeIn_CTmAdd_mAdd_Bool_rbuf_r;
  MemOut_CTmAdd_mAdd_Bool_t memOut_CTmAdd_mAdd_Bool_dbuf_d;
  logic memOut_CTmAdd_mAdd_Bool_dbuf_r;
  MemOut_CTmAdd_mAdd_Bool_t memOut_CTmAdd_mAdd_Bool_rbuf_d;
  logic memOut_CTmAdd_mAdd_Bool_rbuf_r;
  \Word16#_t  destructReadIn_CTmAdd_mAdd_Bool_d;
  logic destructReadIn_CTmAdd_mAdd_Bool_r;
  MemIn_CTmAdd_mAdd_Bool_t dconReadIn_CTmAdd_mAdd_Bool_d;
  logic dconReadIn_CTmAdd_mAdd_Bool_r;
  CTmAdd_mAdd_Bool_t readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_d;
  logic readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_r;
  C5_t writeMerge_choice_CTmAdd_mAdd_Bool_d;
  logic writeMerge_choice_CTmAdd_mAdd_Bool_r;
  CTmAdd_mAdd_Bool_t writeMerge_data_CTmAdd_mAdd_Bool_d;
  logic writeMerge_data_CTmAdd_mAdd_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_d;
  logic writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_d;
  logic writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_d;
  logic writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_d;
  logic writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_d;
  logic writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_r;
  MemIn_CTmAdd_mAdd_Bool_t dconWriteIn_CTmAdd_mAdd_Bool_d;
  logic dconWriteIn_CTmAdd_mAdd_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t dconPtr_CTmAdd_mAdd_Bool_d;
  logic dconPtr_CTmAdd_mAdd_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t _57_d;
  logic _57_r;
  assign _57_r = 1'd1;
  Pointer_CTmAdd_mAdd_Bool_t demuxWriteResult_CTmAdd_mAdd_Bool_d;
  logic demuxWriteResult_CTmAdd_mAdd_Bool_r;
  Go_t applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d;
  logic applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_r;
  MyDTBool_Bool_t applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d;
  logic applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_r;
  MyBool_t applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d;
  logic applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_r;
  MyDTBool_Bool_t arg0_1_d;
  logic arg0_1_r;
  MyDTBool_Bool_t arg0_2_d;
  logic arg0_2_r;
  MyDTBool_Bool_t arg0_3_d;
  logic arg0_3_r;
  MyBool_t es_0_1_1_d;
  logic es_0_1_1_r;
  MyBool_t es_0_1_2_d;
  logic es_0_1_2_r;
  MyBool_t es_0_1_3_d;
  logic es_0_1_3_r;
  Go_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_r;
  MyDTBool_Bool_Bool_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_r;
  MyBool_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_r;
  MyBool_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_r;
  MyDTBool_Bool_Bool_t arg0_2_1_d;
  logic arg0_2_1_r;
  MyDTBool_Bool_Bool_t arg0_2_2_d;
  logic arg0_2_2_r;
  MyDTBool_Bool_Bool_t arg0_2_3_d;
  logic arg0_2_3_r;
  MyDTBool_Bool_Bool_t arg0_2_4_d;
  logic arg0_2_4_r;
  MyBool_t xa85_1_d;
  logic xa85_1_r;
  MyBool_t xa85_2_d;
  logic xa85_2_r;
  MyBool_t arg0_1Dcon_isZ_d;
  logic arg0_1Dcon_isZ_r;
  MyBool_t arg0_1Dcon_isZ_1_d;
  logic arg0_1Dcon_isZ_1_r;
  MyBool_t arg0_1Dcon_isZ_2_d;
  logic arg0_1Dcon_isZ_2_r;
  Go_t arg0_1Dcon_isZ_1MyFalse_d;
  logic arg0_1Dcon_isZ_1MyFalse_r;
  Go_t arg0_1Dcon_isZ_1MyTrue_d;
  logic arg0_1Dcon_isZ_1MyTrue_r;
  MyBool_t arg0_1Dcon_isZ_1MyFalse_1MyTrue_d;
  logic arg0_1Dcon_isZ_1MyFalse_1MyTrue_r;
  MyBool_t applyfnBool_Bool_5_resbuf_d;
  logic applyfnBool_Bool_5_resbuf_r;
  MyBool_t arg0_1Dcon_isZ_1MyTrue_1MyFalse_d;
  logic arg0_1Dcon_isZ_1MyTrue_1MyFalse_r;
  MyBool_t arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d;
  logic arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_r;
  Go_t arg0_2Dcon_isZ_d;
  logic arg0_2Dcon_isZ_r;
  MyBool_t \arg0_2_1Dcon_||_d ;
  logic \arg0_2_1Dcon_||_r ;
  MyBool_t \arg0_2_2Dcon_||_d ;
  logic \arg0_2_2Dcon_||_r ;
  MyBool_t \arg0_2_2Dcon_||_1_d ;
  logic \arg0_2_2Dcon_||_1_r ;
  MyBool_t \arg0_2_2Dcon_||_2_d ;
  logic \arg0_2_2Dcon_||_2_r ;
  MyBool_t \arg0_2_2Dcon_||_3_d ;
  logic \arg0_2_2Dcon_||_3_r ;
  MyBool_t \arg0_2_2Dcon_||_1MyFalse_d ;
  logic \arg0_2_2Dcon_||_1MyFalse_r ;
  MyBool_t _56_d;
  logic _56_r;
  assign _56_r = 1'd1;
  MyBool_t applyfnBool_Bool_Bool_5_resbuf_d;
  logic applyfnBool_Bool_Bool_5_resbuf_r;
  Go_t _55_d;
  logic _55_r;
  assign _55_r = 1'd1;
  Go_t \arg0_2_2Dcon_||_2MyTrue_d ;
  logic \arg0_2_2Dcon_||_2MyTrue_r ;
  MyBool_t \arg0_2_2Dcon_||_2MyTrue_1MyTrue_d ;
  logic \arg0_2_2Dcon_||_2MyTrue_1MyTrue_r ;
  MyBool_t \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d ;
  logic \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_r ;
  Go_t \arg0_2_3Dcon_||_d ;
  logic \arg0_2_3Dcon_||_r ;
  MyBool_t \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_d ;
  logic \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_r ;
  MyBool_t arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_d;
  logic arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_r;
  Go_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_r;
  MyDTBool_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_r;
  MyDTBool_Bool_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_r;
  Pointer_QTree_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_r;
  Pointer_QTree_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_r;
  Pointer_CTmAdd_mAdd_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_r;
  Go_t call_mAdd_mAdd_Bool_initBufi_d;
  logic call_mAdd_mAdd_Bool_initBufi_r;
  C5_t go_4_goMux_choice_d;
  logic go_4_goMux_choice_r;
  Go_t go_4_goMux_data_d;
  logic go_4_goMux_data_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork1_d;
  logic call_mAdd_mAdd_Bool_unlockFork1_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork2_d;
  logic call_mAdd_mAdd_Bool_unlockFork2_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork3_d;
  logic call_mAdd_mAdd_Bool_unlockFork3_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork4_d;
  logic call_mAdd_mAdd_Bool_unlockFork4_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork5_d;
  logic call_mAdd_mAdd_Bool_unlockFork5_r;
  Go_t call_mAdd_mAdd_Bool_unlockFork6_d;
  logic call_mAdd_mAdd_Bool_unlockFork6_r;
  Go_t call_mAdd_mAdd_Bool_initBuf_d;
  logic call_mAdd_mAdd_Bool_initBuf_r;
  Go_t call_mAdd_mAdd_Bool_goMux1_d;
  logic call_mAdd_mAdd_Bool_goMux1_r;
  MyDTBool_Bool_t call_mAdd_mAdd_Bool_goMux2_d;
  logic call_mAdd_mAdd_Bool_goMux2_r;
  MyDTBool_Bool_Bool_t call_mAdd_mAdd_Bool_goMux3_d;
  logic call_mAdd_mAdd_Bool_goMux3_r;
  Pointer_QTree_Bool_t call_mAdd_mAdd_Bool_goMux4_d;
  logic call_mAdd_mAdd_Bool_goMux4_r;
  Pointer_QTree_Bool_t call_mAdd_mAdd_Bool_goMux5_d;
  logic call_mAdd_mAdd_Bool_goMux5_r;
  Pointer_CTmAdd_mAdd_Bool_t call_mAdd_mAdd_Bool_goMux6_d;
  logic call_mAdd_mAdd_Bool_goMux6_r;
  Go_t es_0_1_1MyFalse_d;
  logic es_0_1_1MyFalse_r;
  Go_t es_0_1_1MyTrue_d;
  logic es_0_1_1MyTrue_r;
  Go_t es_0_1_1MyFalse_1_argbuf_d;
  logic es_0_1_1MyFalse_1_argbuf_r;
  Go_t es_0_1_1MyTrue_1_d;
  logic es_0_1_1MyTrue_1_r;
  Go_t es_0_1_1MyTrue_2_d;
  logic es_0_1_1MyTrue_2_r;
  QTree_Bool_t es_0_1_1MyTrue_1QNone_Bool_d;
  logic es_0_1_1MyTrue_1QNone_Bool_r;
  QTree_Bool_t lizzieLet3_1_argbuf_d;
  logic lizzieLet3_1_argbuf_r;
  Go_t es_0_1_1MyTrue_2_argbuf_d;
  logic es_0_1_1MyTrue_2_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyFalse_d;
  logic es_0_1_2MyFalse_r;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyTrue_d;
  logic es_0_1_2MyTrue_r;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyFalse_1_argbuf_d;
  logic es_0_1_2MyFalse_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyTrue_1_argbuf_d;
  logic es_0_1_2MyTrue_1_argbuf_r;
  MyBool_t es_0_1_3MyFalse_d;
  logic es_0_1_3MyFalse_r;
  MyBool_t _54_d;
  logic _54_r;
  assign _54_r = 1'd1;
  QTree_Bool_t es_0_1_3MyFalse_1QVal_Bool_d;
  logic es_0_1_3MyFalse_1QVal_Bool_r;
  QTree_Bool_t lizzieLet2_1_argbuf_d;
  logic lizzieLet2_1_argbuf_r;
  MyDTBool_Bool_Bool_t ga87_2_2_argbuf_d;
  logic ga87_2_2_argbuf_r;
  MyDTBool_Bool_Bool_t ga87_2_1_d;
  logic ga87_2_1_r;
  MyDTBool_Bool_Bool_t ga87_2_2_d;
  logic ga87_2_2_r;
  MyDTBool_Bool_Bool_t ga87_3_2_argbuf_d;
  logic ga87_3_2_argbuf_r;
  MyDTBool_Bool_Bool_t ga87_3_1_d;
  logic ga87_3_1_r;
  MyDTBool_Bool_Bool_t ga87_3_2_d;
  logic ga87_3_2_r;
  MyDTBool_Bool_Bool_t ga87_4_1_argbuf_d;
  logic ga87_4_1_argbuf_r;
  MyDTBool_Bool_Bool_t \go_1Dcon_||_d ;
  logic \go_1Dcon_||_r ;
  MyDTBool_Bool_Bool_t es_1_1_argbuf_d;
  logic es_1_1_argbuf_r;
  MyDTBool_Bool_t go_2Dcon_isZ_d;
  logic go_2Dcon_isZ_r;
  MyDTBool_Bool_t es_0_1_argbuf_d;
  logic es_0_1_argbuf_r;
  MyDTBool_Bool_Bool_t \go_3Dcon_||_d ;
  logic \go_3Dcon_||_r ;
  MyDTBool_Bool_Bool_t es_5_1_argbuf_d;
  logic es_5_1_argbuf_r;
  MyDTBool_Bool_t go_4Dcon_isZ_d;
  logic go_4Dcon_isZ_r;
  MyDTBool_Bool_t es_4_1_argbuf_d;
  logic es_4_1_argbuf_r;
  C5_t go_4_goMux_choice_1_d;
  logic go_4_goMux_choice_1_r;
  C5_t go_4_goMux_choice_2_d;
  logic go_4_goMux_choice_2_r;
  C5_t go_4_goMux_choice_3_d;
  logic go_4_goMux_choice_3_r;
  C5_t go_4_goMux_choice_4_d;
  logic go_4_goMux_choice_4_r;
  C5_t go_4_goMux_choice_5_d;
  logic go_4_goMux_choice_5_r;
  MyDTBool_Bool_t isZ1a86_goMux_mux_d;
  logic isZ1a86_goMux_mux_r;
  MyDTBool_Bool_Bool_t ga87_goMux_mux_d;
  logic ga87_goMux_mux_r;
  Pointer_QTree_Bool_t m1a88_goMux_mux_d;
  logic m1a88_goMux_mux_r;
  Pointer_QTree_Bool_t m2a89_goMux_mux_d;
  logic m2a89_goMux_mux_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_goMux_mux_d;
  logic sc_0_goMux_mux_r;
  Go_t go_5_argbuf_d;
  logic go_5_argbuf_r;
  CTmAdd_mAdd_Bool_t go_5_1LmAdd_mAdd_Boolsbos_d;
  logic go_5_1LmAdd_mAdd_Boolsbos_r;
  CTmAdd_mAdd_Bool_t lizzieLet11_1_argbuf_d;
  logic lizzieLet11_1_argbuf_r;
  Go_t go_5_2_argbuf_d;
  logic go_5_2_argbuf_r;
  TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_t call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d;
  logic call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_r;
  TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r;
  Go_t go_6_argbuf_d;
  logic go_6_argbuf_r;
  TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_r;
  C11_t go_6_goMux_choice_1_d;
  logic go_6_goMux_choice_1_r;
  C11_t go_6_goMux_choice_2_d;
  logic go_6_goMux_choice_2_r;
  Pointer_QTree_Bool_t srtarg_0_goMux_mux_d;
  logic srtarg_0_goMux_mux_r;
  Pointer_CTmAdd_mAdd_Bool_t scfarg_0_goMux_mux_d;
  logic scfarg_0_goMux_mux_r;
  MyDTBool_Bool_t isZ1a86_2_2_argbuf_d;
  logic isZ1a86_2_2_argbuf_r;
  MyDTBool_Bool_t isZ1a86_2_1_d;
  logic isZ1a86_2_1_r;
  MyDTBool_Bool_t isZ1a86_2_2_d;
  logic isZ1a86_2_2_r;
  MyDTBool_Bool_t isZ1a86_3_2_argbuf_d;
  logic isZ1a86_3_2_argbuf_r;
  MyDTBool_Bool_t isZ1a86_3_1_d;
  logic isZ1a86_3_1_r;
  MyDTBool_Bool_t isZ1a86_3_2_d;
  logic isZ1a86_3_2_r;
  MyDTBool_Bool_t isZ1a86_4_1_argbuf_d;
  logic isZ1a86_4_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8g_destruct_d;
  logic q1a8g_destruct_r;
  Pointer_QTree_Bool_t q2a8h_destruct_d;
  logic q2a8h_destruct_r;
  Pointer_QTree_Bool_t q3a8i_destruct_d;
  logic q3a8i_destruct_r;
  Pointer_QTree_Bool_t q4a8j_destruct_d;
  logic q4a8j_destruct_r;
  MyBool_t v1a8a_destruct_d;
  logic v1a8a_destruct_r;
  QTree_Bool_t _53_d;
  logic _53_r;
  assign _53_r = 1'd1;
  QTree_Bool_t lizzieLet0_1QVal_Bool_d;
  logic lizzieLet0_1QVal_Bool_r;
  QTree_Bool_t lizzieLet0_1QNode_Bool_d;
  logic lizzieLet0_1QNode_Bool_r;
  QTree_Bool_t _52_d;
  logic _52_r;
  assign _52_r = 1'd1;
  MyDTBool_Bool_Bool_t _51_d;
  logic _51_r;
  assign _51_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet0_3QVal_Bool_d;
  logic lizzieLet0_3QVal_Bool_r;
  MyDTBool_Bool_Bool_t lizzieLet0_3QNode_Bool_d;
  logic lizzieLet0_3QNode_Bool_r;
  MyDTBool_Bool_Bool_t _50_d;
  logic _50_r;
  assign _50_r = 1'd1;
  Go_t lizzieLet0_4QNone_Bool_d;
  logic lizzieLet0_4QNone_Bool_r;
  Go_t lizzieLet0_4QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_r;
  Go_t lizzieLet0_4QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_r;
  Go_t lizzieLet0_4QError_Bool_d;
  logic lizzieLet0_4QError_Bool_r;
  Go_t lizzieLet0_4QError_Bool_1_d;
  logic lizzieLet0_4QError_Bool_1_r;
  Go_t lizzieLet0_4QError_Bool_2_d;
  logic lizzieLet0_4QError_Bool_2_r;
  QTree_Bool_t lizzieLet0_4QError_Bool_1QError_Bool_d;
  logic lizzieLet0_4QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet10_1_argbuf_d;
  logic lizzieLet10_1_argbuf_r;
  Go_t lizzieLet0_4QError_Bool_2_argbuf_d;
  logic lizzieLet0_4QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_1_argbuf_r;
  C11_t go_6_goMux_choice_d;
  logic go_6_goMux_choice_r;
  Go_t go_6_goMux_data_d;
  logic go_6_goMux_data_r;
  MyDTBool_Bool_t _49_d;
  logic _49_r;
  assign _49_r = 1'd1;
  MyDTBool_Bool_t lizzieLet0_5QVal_Bool_d;
  logic lizzieLet0_5QVal_Bool_r;
  MyDTBool_Bool_t lizzieLet0_5QNode_Bool_d;
  logic lizzieLet0_5QNode_Bool_r;
  MyDTBool_Bool_t _48_d;
  logic _48_r;
  assign _48_r = 1'd1;
  QTree_Bool_t _47_d;
  logic _47_r;
  assign _47_r = 1'd1;
  QTree_Bool_t lizzieLet0_6QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_r;
  QTree_Bool_t _46_d;
  logic _46_r;
  assign _46_r = 1'd1;
  QTree_Bool_t lizzieLet0_6QNode_Bool_1_d;
  logic lizzieLet0_6QNode_Bool_1_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_2_d;
  logic lizzieLet0_6QNode_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_3_d;
  logic lizzieLet0_6QNode_Bool_3_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_4_d;
  logic lizzieLet0_6QNode_Bool_4_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_5_d;
  logic lizzieLet0_6QNode_Bool_5_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_6_d;
  logic lizzieLet0_6QNode_Bool_6_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_7_d;
  logic lizzieLet0_6QNode_Bool_7_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_8_d;
  logic lizzieLet0_6QNode_Bool_8_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_9_d;
  logic lizzieLet0_6QNode_Bool_9_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_10_d;
  logic lizzieLet0_6QNode_Bool_10_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_11_d;
  logic lizzieLet0_6QNode_Bool_11_r;
  Pointer_QTree_Bool_t _45_d;
  logic _45_r;
  assign _45_r = 1'd1;
  Pointer_QTree_Bool_t _44_d;
  logic _44_r;
  assign _44_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_10QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_10QNode_Bool_r;
  Pointer_QTree_Bool_t _43_d;
  logic _43_r;
  assign _43_r = 1'd1;
  Pointer_QTree_Bool_t _42_d;
  logic _42_r;
  assign _42_r = 1'd1;
  Pointer_QTree_Bool_t _41_d;
  logic _41_r;
  assign _41_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_11QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_11QNode_Bool_r;
  Pointer_QTree_Bool_t _40_d;
  logic _40_r;
  assign _40_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t t1a8l_destruct_d;
  logic t1a8l_destruct_r;
  Pointer_QTree_Bool_t t2a8m_destruct_d;
  logic t2a8m_destruct_r;
  Pointer_QTree_Bool_t t3a8n_destruct_d;
  logic t3a8n_destruct_r;
  Pointer_QTree_Bool_t t4a8o_destruct_d;
  logic t4a8o_destruct_r;
  QTree_Bool_t _39_d;
  logic _39_r;
  assign _39_r = 1'd1;
  QTree_Bool_t _38_d;
  logic _38_r;
  assign _38_r = 1'd1;
  QTree_Bool_t lizzieLet0_6QNode_Bool_1QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_1QNode_Bool_r;
  QTree_Bool_t _37_d;
  logic _37_r;
  assign _37_r = 1'd1;
  MyDTBool_Bool_Bool_t _36_d;
  logic _36_r;
  assign _36_r = 1'd1;
  MyDTBool_Bool_Bool_t _35_d;
  logic _35_r;
  assign _35_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_3QNode_Bool_r;
  MyDTBool_Bool_Bool_t _34_d;
  logic _34_r;
  assign _34_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_1_d;
  logic lizzieLet0_6QNode_Bool_3QNode_Bool_1_r;
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_2_d;
  logic lizzieLet0_6QNode_Bool_3QNode_Bool_2_r;
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_d;
  logic lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QNone_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QNone_Bool_r;
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_r;
  Go_t lizzieLet0_6QNode_Bool_4QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QNode_Bool_r;
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_r;
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_1_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_1_r;
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_2_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet9_1_argbuf_d;
  logic lizzieLet9_1_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_1_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_1_r;
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_2_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet7_1_argbuf_d;
  logic lizzieLet7_1_argbuf_r;
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_r;
  MyDTBool_Bool_t _33_d;
  logic _33_r;
  assign _33_r = 1'd1;
  MyDTBool_Bool_t _32_d;
  logic _32_r;
  assign _32_r = 1'd1;
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_5QNode_Bool_r;
  MyDTBool_Bool_t _31_d;
  logic _31_r;
  assign _31_r = 1'd1;
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_1_d;
  logic lizzieLet0_6QNode_Bool_5QNode_Bool_1_r;
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_2_d;
  logic lizzieLet0_6QNode_Bool_5QNode_Bool_2_r;
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_d;
  logic lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_6QNone_Bool_d;
  logic lizzieLet0_6QNode_Bool_6QNone_Bool_r;
  Pointer_QTree_Bool_t _30_d;
  logic _30_r;
  assign _30_r = 1'd1;
  Pointer_QTree_Bool_t _29_d;
  logic _29_r;
  assign _29_r = 1'd1;
  Pointer_QTree_Bool_t _28_d;
  logic _28_r;
  assign _28_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNone_Bool_d;
  logic lizzieLet0_6QNode_Bool_7QNone_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QVal_Bool_d;
  logic lizzieLet0_6QNode_Bool_7QVal_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_7QNode_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QError_Bool_d;
  logic lizzieLet0_6QNode_Bool_7QError_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_r;
  CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_d;
  logic lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_r;
  CTmAdd_mAdd_Bool_t lizzieLet8_1_argbuf_d;
  logic lizzieLet8_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_d;
  logic lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t _27_d;
  logic _27_r;
  assign _27_r = 1'd1;
  Pointer_QTree_Bool_t _26_d;
  logic _26_r;
  assign _26_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_8QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_8QNode_Bool_r;
  Pointer_QTree_Bool_t _25_d;
  logic _25_r;
  assign _25_r = 1'd1;
  Pointer_QTree_Bool_t _24_d;
  logic _24_r;
  assign _24_r = 1'd1;
  Pointer_QTree_Bool_t _23_d;
  logic _23_r;
  assign _23_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_9QNode_Bool_d;
  logic lizzieLet0_6QNode_Bool_9QNode_Bool_r;
  Pointer_QTree_Bool_t _22_d;
  logic _22_r;
  assign _22_r = 1'd1;
  QTree_Bool_t lizzieLet0_6QVal_Bool_1_d;
  logic lizzieLet0_6QVal_Bool_1_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_2_d;
  logic lizzieLet0_6QVal_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_3_d;
  logic lizzieLet0_6QVal_Bool_3_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_4_d;
  logic lizzieLet0_6QVal_Bool_4_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_5_d;
  logic lizzieLet0_6QVal_Bool_5_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_6_d;
  logic lizzieLet0_6QVal_Bool_6_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_7_d;
  logic lizzieLet0_6QVal_Bool_7_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_8_d;
  logic lizzieLet0_6QVal_Bool_8_r;
  MyBool_t va8b_destruct_d;
  logic va8b_destruct_r;
  QTree_Bool_t _21_d;
  logic _21_r;
  assign _21_r = 1'd1;
  QTree_Bool_t lizzieLet0_6QVal_Bool_1QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_1QVal_Bool_r;
  QTree_Bool_t _20_d;
  logic _20_r;
  assign _20_r = 1'd1;
  QTree_Bool_t _19_d;
  logic _19_r;
  assign _19_r = 1'd1;
  MyDTBool_Bool_Bool_t _18_d;
  logic _18_r;
  assign _18_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet0_6QVal_Bool_3QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_3QVal_Bool_r;
  MyDTBool_Bool_Bool_t _17_d;
  logic _17_r;
  assign _17_r = 1'd1;
  MyDTBool_Bool_Bool_t _16_d;
  logic _16_r;
  assign _16_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QNone_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QNone_Bool_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_r;
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_r;
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_r;
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_1_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_1_r;
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_2_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet5_1_argbuf_d;
  logic lizzieLet5_1_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_1_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_1_r;
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_2_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_2_r;
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet4_1_argbuf_d;
  logic lizzieLet4_1_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_1_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_1_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_2_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_2_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_3_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_3_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_r;
  TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_r;
  TupGo___MyDTBool_Bool___MyBool_t applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d;
  logic applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_r;
  MyDTBool_Bool_t _15_d;
  logic _15_r;
  assign _15_r = 1'd1;
  MyDTBool_Bool_t lizzieLet0_6QVal_Bool_5QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_5QVal_Bool_r;
  MyDTBool_Bool_t _14_d;
  logic _14_r;
  assign _14_r = 1'd1;
  MyDTBool_Bool_t _13_d;
  logic _13_r;
  assign _13_r = 1'd1;
  MyDTBool_Bool_t lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_6QVal_Bool_6QNone_Bool_d;
  logic lizzieLet0_6QVal_Bool_6QNone_Bool_r;
  Pointer_QTree_Bool_t _12_d;
  logic _12_r;
  assign _12_r = 1'd1;
  Pointer_QTree_Bool_t _11_d;
  logic _11_r;
  assign _11_r = 1'd1;
  Pointer_QTree_Bool_t _10_d;
  logic _10_r;
  assign _10_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNone_Bool_d;
  logic lizzieLet0_6QVal_Bool_7QNone_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_7QVal_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNode_Bool_d;
  logic lizzieLet0_6QVal_Bool_7QNode_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QError_Bool_d;
  logic lizzieLet0_6QVal_Bool_7QError_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_r;
  MyBool_t _9_d;
  logic _9_r;
  assign _9_r = 1'd1;
  MyBool_t lizzieLet0_6QVal_Bool_8QVal_Bool_d;
  logic lizzieLet0_6QVal_Bool_8QVal_Bool_r;
  MyBool_t _8_d;
  logic _8_r;
  assign _8_r = 1'd1;
  MyBool_t _7_d;
  logic _7_r;
  assign _7_r = 1'd1;
  MyBool_t lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_d;
  logic lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t _6_d;
  logic _6_r;
  assign _6_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_7QVal_Bool_d;
  logic lizzieLet0_7QVal_Bool_r;
  Pointer_QTree_Bool_t lizzieLet0_7QNode_Bool_d;
  logic lizzieLet0_7QNode_Bool_r;
  Pointer_QTree_Bool_t _5_d;
  logic _5_r;
  assign _5_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_8QNone_Bool_d;
  logic lizzieLet0_8QNone_Bool_r;
  Pointer_QTree_Bool_t _4_d;
  logic _4_r;
  assign _4_r = 1'd1;
  Pointer_QTree_Bool_t _3_d;
  logic _3_r;
  assign _3_r = 1'd1;
  Pointer_QTree_Bool_t _2_d;
  logic _2_r;
  assign _2_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_8QNone_Bool_1_argbuf_d;
  logic lizzieLet0_8QNone_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QNone_Bool_d;
  logic lizzieLet0_9QNone_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QVal_Bool_d;
  logic lizzieLet0_9QVal_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QNode_Bool_d;
  logic lizzieLet0_9QNode_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QError_Bool_d;
  logic lizzieLet0_9QError_Bool_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QError_Bool_1_argbuf_d;
  logic lizzieLet0_9QError_Bool_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QNone_Bool_1_argbuf_d;
  logic lizzieLet0_9QNone_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t es_2_1_destruct_d;
  logic es_2_1_destruct_r;
  Pointer_QTree_Bool_t es_3_1_destruct_d;
  logic es_3_1_destruct_r;
  Pointer_QTree_Bool_t es_4_3_destruct_d;
  logic es_4_3_destruct_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_4_destruct_d;
  logic sc_0_4_destruct_r;
  Pointer_QTree_Bool_t es_3_destruct_d;
  logic es_3_destruct_r;
  Pointer_QTree_Bool_t es_4_2_destruct_d;
  logic es_4_2_destruct_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_3_destruct_d;
  logic sc_0_3_destruct_r;
  MyDTBool_Bool_t isZ1a86_4_destruct_d;
  logic isZ1a86_4_destruct_r;
  MyDTBool_Bool_Bool_t ga87_4_destruct_d;
  logic ga87_4_destruct_r;
  Pointer_QTree_Bool_t q1a8g_3_destruct_d;
  logic q1a8g_3_destruct_r;
  Pointer_QTree_Bool_t t1a8l_3_destruct_d;
  logic t1a8l_3_destruct_r;
  Pointer_QTree_Bool_t es_4_1_destruct_d;
  logic es_4_1_destruct_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_2_destruct_d;
  logic sc_0_2_destruct_r;
  MyDTBool_Bool_t isZ1a86_3_destruct_d;
  logic isZ1a86_3_destruct_r;
  MyDTBool_Bool_Bool_t ga87_3_destruct_d;
  logic ga87_3_destruct_r;
  Pointer_QTree_Bool_t q1a8g_2_destruct_d;
  logic q1a8g_2_destruct_r;
  Pointer_QTree_Bool_t t1a8l_2_destruct_d;
  logic t1a8l_2_destruct_r;
  Pointer_QTree_Bool_t q2a8h_2_destruct_d;
  logic q2a8h_2_destruct_r;
  Pointer_QTree_Bool_t t2a8m_2_destruct_d;
  logic t2a8m_2_destruct_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_1_destruct_d;
  logic sc_0_1_destruct_r;
  MyDTBool_Bool_t isZ1a86_2_destruct_d;
  logic isZ1a86_2_destruct_r;
  MyDTBool_Bool_Bool_t ga87_2_destruct_d;
  logic ga87_2_destruct_r;
  Pointer_QTree_Bool_t q1a8g_1_destruct_d;
  logic q1a8g_1_destruct_r;
  Pointer_QTree_Bool_t t1a8l_1_destruct_d;
  logic t1a8l_1_destruct_r;
  Pointer_QTree_Bool_t q2a8h_1_destruct_d;
  logic q2a8h_1_destruct_r;
  Pointer_QTree_Bool_t t2a8m_1_destruct_d;
  logic t2a8m_1_destruct_r;
  Pointer_QTree_Bool_t q3a8i_1_destruct_d;
  logic q3a8i_1_destruct_r;
  Pointer_QTree_Bool_t t3a8n_1_destruct_d;
  logic t3a8n_1_destruct_r;
  CTmAdd_mAdd_Bool_t _1_d;
  logic _1_r;
  assign _1_r = 1'd1;
  CTmAdd_mAdd_Bool_t lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d;
  logic lizzieLet12_1Lcall_mAdd_mAdd_Bool3_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d;
  logic lizzieLet12_1Lcall_mAdd_mAdd_Bool2_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d;
  logic lizzieLet12_1Lcall_mAdd_mAdd_Bool1_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d;
  logic lizzieLet12_1Lcall_mAdd_mAdd_Bool0_r;
  Go_t _0_d;
  logic _0_r;
  assign _0_r = 1'd1;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool3_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool3_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool2_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool2_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool1_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool1_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool0_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool0_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_r;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet12_4LmAdd_mAdd_Boolsbos_d;
  logic lizzieLet12_4LmAdd_mAdd_Boolsbos_r;
  Pointer_QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool3_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool3_r;
  Pointer_QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool2_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool2_r;
  Pointer_QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool1_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool1_r;
  Pointer_QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool0_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool0_r;
  QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_r;
  QTree_Bool_t lizzieLet16_1_argbuf_d;
  logic lizzieLet16_1_argbuf_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_r;
  CTmAdd_mAdd_Bool_t lizzieLet15_1_argbuf_d;
  logic lizzieLet15_1_argbuf_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_r;
  CTmAdd_mAdd_Bool_t lizzieLet14_1_argbuf_d;
  logic lizzieLet14_1_argbuf_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_r;
  CTmAdd_mAdd_Bool_t lizzieLet13_1_argbuf_d;
  logic lizzieLet13_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_d;
  logic lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_r;
  Pointer_QTree_Bool_t lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d;
  logic lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_r;
  Go_t call_mAdd_mAdd_Bool_goConst_d;
  logic call_mAdd_mAdd_Bool_goConst_r;
  Pointer_QTree_Bool_t m1a88_1_argbuf_d;
  logic m1a88_1_argbuf_r;
  Pointer_QTree_Bool_t m1a88_1_d;
  logic m1a88_1_r;
  Pointer_QTree_Bool_t m1a88_2_d;
  logic m1a88_2_r;
  Pointer_QTree_Bool_t m2a89_1_argbuf_d;
  logic m2a89_1_argbuf_r;
  Pointer_QTree_Bool_t m2a89_1_d;
  logic m2a89_1_r;
  Pointer_QTree_Bool_t m2a89_2_d;
  logic m2a89_2_r;
  C2_t mAdd_mAdd_Bool_choice_d;
  logic mAdd_mAdd_Bool_choice_r;
  TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t mAdd_mAdd_Bool_data_d;
  logic mAdd_mAdd_Bool_data_r;
  MyDTBool_Bool_Bool_t ga87_1_1_argbuf_d;
  logic ga87_1_1_argbuf_r;
  Go_t go_5_1_d;
  logic go_5_1_r;
  Go_t go_5_2_d;
  logic go_5_2_r;
  MyDTBool_Bool_t isZ1a86_1_1_argbuf_d;
  logic isZ1a86_1_1_argbuf_r;
  Pointer_QTree_Bool_t m1a88_1_1_argbuf_d;
  logic m1a88_1_1_argbuf_r;
  Pointer_QTree_Bool_t m2a89_1_1_argbuf_d;
  logic m2a89_1_1_argbuf_r;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_resbuf_d;
  logic mAdd_mAdd_Bool_resbuf_r;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_argbuf_d;
  logic mAdd_mAdd_Bool_2_argbuf_r;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_1_d;
  logic mAdd_mAdd_Bool_1_r;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_d;
  logic mAdd_mAdd_Bool_2_r;
  Go_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_r;
  MyDTBool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_r;
  MyDTBool_Bool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_r;
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_r;
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_r;
  Pointer_QTree_Bool_t es_2_1_argbuf_d;
  logic es_2_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8g_3_1_argbuf_d;
  logic q1a8g_3_1_argbuf_r;
  Pointer_QTree_Bool_t q2a8h_2_1_argbuf_d;
  logic q2a8h_2_1_argbuf_r;
  Pointer_QTree_Bool_t q3a8i_1_1_argbuf_d;
  logic q3a8i_1_1_argbuf_r;
  CTmAdd_mAdd_Bool_t readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d;
  logic readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_1_d;
  logic lizzieLet12_1_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_2_d;
  logic lizzieLet12_2_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_3_d;
  logic lizzieLet12_3_r;
  CTmAdd_mAdd_Bool_t lizzieLet12_4_d;
  logic lizzieLet12_4_r;
  QTree_Bool_t readPointer_QTree_Boolm1a88_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm1a88_1_argbuf_rwb_r;
  QTree_Bool_t lizzieLet0_1_d;
  logic lizzieLet0_1_r;
  QTree_Bool_t lizzieLet0_2_d;
  logic lizzieLet0_2_r;
  QTree_Bool_t lizzieLet0_3_d;
  logic lizzieLet0_3_r;
  QTree_Bool_t lizzieLet0_4_d;
  logic lizzieLet0_4_r;
  QTree_Bool_t lizzieLet0_5_d;
  logic lizzieLet0_5_r;
  QTree_Bool_t lizzieLet0_6_d;
  logic lizzieLet0_6_r;
  QTree_Bool_t lizzieLet0_7_d;
  logic lizzieLet0_7_r;
  QTree_Bool_t lizzieLet0_8_d;
  logic lizzieLet0_8_r;
  QTree_Bool_t lizzieLet0_9_d;
  logic lizzieLet0_9_r;
  QTree_Bool_t readPointer_QTree_Boolm2a89_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm2a89_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_4_1_argbuf_d;
  logic sc_0_4_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t scfarg_0_1_argbuf_d;
  logic scfarg_0_1_argbuf_r;
  Pointer_QTree_Bool_t t1a8l_3_1_argbuf_d;
  logic t1a8l_3_1_argbuf_r;
  Pointer_QTree_Bool_t t2a8m_2_1_argbuf_d;
  logic t2a8m_2_1_argbuf_r;
  Pointer_QTree_Bool_t t3a8n_1_1_argbuf_d;
  logic t3a8n_1_1_argbuf_r;
  Pointer_QTree_Bool_t t4a8o_1_argbuf_d;
  logic t4a8o_1_argbuf_r;
  MyBool_t va8b_1_argbuf_d;
  logic va8b_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet7_1_1_argbuf_d;
  logic lizzieLet7_1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t sca2_1_argbuf_d;
  logic sca2_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t sca1_1_argbuf_d;
  logic sca1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t sca0_1_argbuf_d;
  logic sca0_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Bool_t sca3_1_argbuf_d;
  logic sca3_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet10_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet6_1_argbuf_d;
  logic lizzieLet6_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet16_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t contRet_0_1_argbuf_d;
  logic contRet_0_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet2_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet0_1_1_argbuf_d;
  logic lizzieLet0_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet3_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet1_1_1_argbuf_d;
  logic lizzieLet1_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet4_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet2_1_1_argbuf_d;
  logic lizzieLet2_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet3_1_1_argbuf_d;
  logic lizzieLet3_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet7_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet4_1_1_argbuf_d;
  logic lizzieLet4_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet9_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet5_1_1_argbuf_d;
  logic lizzieLet5_1_1_argbuf_r;
  MyBool_t xa85_1_argbuf_d;
  logic xa85_1_argbuf_r;
  
  /* fork (Ty Go) : (sourceGo,Go) > [(go_1,Go),
                                (go_2,Go),
                                (go_3,Go),
                                (go_4,Go),
                                (go_5,Go),
                                (go_6,Go),
                                (go__7,Go),
                                (go__8,Go)] */
  logic [7:0] sourceGo_emitted;
  logic [7:0] sourceGo_done;
  assign go_1_d = (sourceGo_d[0] && (! sourceGo_emitted[0]));
  assign go_2_d = (sourceGo_d[0] && (! sourceGo_emitted[1]));
  assign go_3_d = (sourceGo_d[0] && (! sourceGo_emitted[2]));
  assign go_4_d = (sourceGo_d[0] && (! sourceGo_emitted[3]));
  assign go_5_d = (sourceGo_d[0] && (! sourceGo_emitted[4]));
  assign go_6_d = (sourceGo_d[0] && (! sourceGo_emitted[5]));
  assign go__7_d = (sourceGo_d[0] && (! sourceGo_emitted[6]));
  assign go__8_d = (sourceGo_d[0] && (! sourceGo_emitted[7]));
  assign sourceGo_done = (sourceGo_emitted | ({go__8_d[0],
                                               go__7_d[0],
                                               go_6_d[0],
                                               go_5_d[0],
                                               go_4_d[0],
                                               go_3_d[0],
                                               go_2_d[0],
                                               go_1_d[0]} & {go__8_r,
                                                             go__7_r,
                                                             go_6_r,
                                                             go_5_r,
                                                             go_4_r,
                                                             go_3_r,
                                                             go_2_r,
                                                             go_1_r}));
  assign sourceGo_r = (& sourceGo_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sourceGo_emitted <= 8'd0;
    else
      sourceGo_emitted <= (sourceGo_r ? 8'd0 :
                           sourceGo_done);
  
  /* const (Ty Word16#,
       Lit 0) : (go_1_dummy_write_QTree_Bool,Go) > (initHP_QTree_Bool,Word16#) */
  assign initHP_QTree_Bool_d = {16'd0,
                                go_1_dummy_write_QTree_Bool_d[0]};
  assign go_1_dummy_write_QTree_Bool_r = initHP_QTree_Bool_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_QTree_Bool1,Go) > (incrHP_QTree_Bool,Word16#) */
  assign incrHP_QTree_Bool_d = {16'd1, incrHP_QTree_Bool1_d[0]};
  assign incrHP_QTree_Bool1_r = incrHP_QTree_Bool_r;
  
  /* merge (Ty Go) : [(go_2_dummy_write_QTree_Bool,Go),
                 (incrHP_QTree_Bool2,Go)] > (incrHP_mergeQTree_Bool,Go) */
  logic [1:0] incrHP_mergeQTree_Bool_selected;
  logic [1:0] incrHP_mergeQTree_Bool_select;
  always_comb
    begin
      incrHP_mergeQTree_Bool_selected = 2'd0;
      if ((| incrHP_mergeQTree_Bool_select))
        incrHP_mergeQTree_Bool_selected = incrHP_mergeQTree_Bool_select;
      else
        if (go_2_dummy_write_QTree_Bool_d[0])
          incrHP_mergeQTree_Bool_selected[0] = 1'd1;
        else if (incrHP_QTree_Bool2_d[0])
          incrHP_mergeQTree_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Bool_select <= 2'd0;
    else
      incrHP_mergeQTree_Bool_select <= (incrHP_mergeQTree_Bool_r ? 2'd0 :
                                        incrHP_mergeQTree_Bool_selected);
  always_comb
    if (incrHP_mergeQTree_Bool_selected[0])
      incrHP_mergeQTree_Bool_d = go_2_dummy_write_QTree_Bool_d;
    else if (incrHP_mergeQTree_Bool_selected[1])
      incrHP_mergeQTree_Bool_d = incrHP_QTree_Bool2_d;
    else incrHP_mergeQTree_Bool_d = 1'd0;
  assign {incrHP_QTree_Bool2_r,
          go_2_dummy_write_QTree_Bool_r} = (incrHP_mergeQTree_Bool_r ? incrHP_mergeQTree_Bool_selected :
                                            2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeQTree_Bool_buf,Go) > [(incrHP_QTree_Bool1,Go),
                                                  (incrHP_QTree_Bool2,Go)] */
  logic [1:0] incrHP_mergeQTree_Bool_buf_emitted;
  logic [1:0] incrHP_mergeQTree_Bool_buf_done;
  assign incrHP_QTree_Bool1_d = (incrHP_mergeQTree_Bool_buf_d[0] && (! incrHP_mergeQTree_Bool_buf_emitted[0]));
  assign incrHP_QTree_Bool2_d = (incrHP_mergeQTree_Bool_buf_d[0] && (! incrHP_mergeQTree_Bool_buf_emitted[1]));
  assign incrHP_mergeQTree_Bool_buf_done = (incrHP_mergeQTree_Bool_buf_emitted | ({incrHP_QTree_Bool2_d[0],
                                                                                   incrHP_QTree_Bool1_d[0]} & {incrHP_QTree_Bool2_r,
                                                                                                               incrHP_QTree_Bool1_r}));
  assign incrHP_mergeQTree_Bool_buf_r = (& incrHP_mergeQTree_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Bool_buf_emitted <= 2'd0;
    else
      incrHP_mergeQTree_Bool_buf_emitted <= (incrHP_mergeQTree_Bool_buf_r ? 2'd0 :
                                             incrHP_mergeQTree_Bool_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_QTree_Bool,Word16#) (forkHP1_QTree_Bool,Word16#) > (addHP_QTree_Bool,Word16#) */
  assign addHP_QTree_Bool_d = {(incrHP_QTree_Bool_d[16:1] + forkHP1_QTree_Bool_d[16:1]),
                               (incrHP_QTree_Bool_d[0] && forkHP1_QTree_Bool_d[0])};
  assign {incrHP_QTree_Bool_r,
          forkHP1_QTree_Bool_r} = {2 {(addHP_QTree_Bool_r && addHP_QTree_Bool_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_QTree_Bool,Word16#),
                      (addHP_QTree_Bool,Word16#)] > (mergeHP_QTree_Bool,Word16#) */
  logic [1:0] mergeHP_QTree_Bool_selected;
  logic [1:0] mergeHP_QTree_Bool_select;
  always_comb
    begin
      mergeHP_QTree_Bool_selected = 2'd0;
      if ((| mergeHP_QTree_Bool_select))
        mergeHP_QTree_Bool_selected = mergeHP_QTree_Bool_select;
      else
        if (initHP_QTree_Bool_d[0]) mergeHP_QTree_Bool_selected[0] = 1'd1;
        else if (addHP_QTree_Bool_d[0])
          mergeHP_QTree_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Bool_select <= 2'd0;
    else
      mergeHP_QTree_Bool_select <= (mergeHP_QTree_Bool_r ? 2'd0 :
                                    mergeHP_QTree_Bool_selected);
  always_comb
    if (mergeHP_QTree_Bool_selected[0])
      mergeHP_QTree_Bool_d = initHP_QTree_Bool_d;
    else if (mergeHP_QTree_Bool_selected[1])
      mergeHP_QTree_Bool_d = addHP_QTree_Bool_d;
    else mergeHP_QTree_Bool_d = {16'd0, 1'd0};
  assign {addHP_QTree_Bool_r,
          initHP_QTree_Bool_r} = (mergeHP_QTree_Bool_r ? mergeHP_QTree_Bool_selected :
                                  2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeQTree_Bool,Go) > (incrHP_mergeQTree_Bool_buf,Go) */
  Go_t incrHP_mergeQTree_Bool_bufchan_d;
  logic incrHP_mergeQTree_Bool_bufchan_r;
  assign incrHP_mergeQTree_Bool_r = ((! incrHP_mergeQTree_Bool_bufchan_d[0]) || incrHP_mergeQTree_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Bool_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeQTree_Bool_r)
        incrHP_mergeQTree_Bool_bufchan_d <= incrHP_mergeQTree_Bool_d;
  Go_t incrHP_mergeQTree_Bool_bufchan_buf;
  assign incrHP_mergeQTree_Bool_bufchan_r = (! incrHP_mergeQTree_Bool_bufchan_buf[0]);
  assign incrHP_mergeQTree_Bool_buf_d = (incrHP_mergeQTree_Bool_bufchan_buf[0] ? incrHP_mergeQTree_Bool_bufchan_buf :
                                         incrHP_mergeQTree_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Bool_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeQTree_Bool_buf_r && incrHP_mergeQTree_Bool_bufchan_buf[0]))
        incrHP_mergeQTree_Bool_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeQTree_Bool_buf_r) && (! incrHP_mergeQTree_Bool_bufchan_buf[0])))
        incrHP_mergeQTree_Bool_bufchan_buf <= incrHP_mergeQTree_Bool_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_QTree_Bool,Word16#) > (mergeHP_QTree_Bool_buf,Word16#) */
  \Word16#_t  mergeHP_QTree_Bool_bufchan_d;
  logic mergeHP_QTree_Bool_bufchan_r;
  assign mergeHP_QTree_Bool_r = ((! mergeHP_QTree_Bool_bufchan_d[0]) || mergeHP_QTree_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_QTree_Bool_r)
        mergeHP_QTree_Bool_bufchan_d <= mergeHP_QTree_Bool_d;
  \Word16#_t  mergeHP_QTree_Bool_bufchan_buf;
  assign mergeHP_QTree_Bool_bufchan_r = (! mergeHP_QTree_Bool_bufchan_buf[0]);
  assign mergeHP_QTree_Bool_buf_d = (mergeHP_QTree_Bool_bufchan_buf[0] ? mergeHP_QTree_Bool_bufchan_buf :
                                     mergeHP_QTree_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_QTree_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_QTree_Bool_buf_r && mergeHP_QTree_Bool_bufchan_buf[0]))
        mergeHP_QTree_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_QTree_Bool_buf_r) && (! mergeHP_QTree_Bool_bufchan_buf[0])))
        mergeHP_QTree_Bool_bufchan_buf <= mergeHP_QTree_Bool_bufchan_d;
  
  /* sink (Ty Word16#) : (forkHP1_QTree_Bool_snk,Word16#) > */
  assign {forkHP1_QTree_Bool_snk_r,
          forkHP1_QTree_Bool_snk_dout} = {forkHP1_QTree_Bool_snk_rout,
                                          forkHP1_QTree_Bool_snk_d};
  
  /* source (Ty Go) : > (\QTree_Bool_src,Go) */
  
  /* fork (Ty Go) : (\QTree_Bool_src,Go) > [(go_1_dummy_write_QTree_Bool,Go),
                                       (go_2_dummy_write_QTree_Bool,Go)] */
  logic [1:0] \\QTree_Bool_src_emitted ;
  logic [1:0] \\QTree_Bool_src_done ;
  assign go_1_dummy_write_QTree_Bool_d = (\\QTree_Bool_src_d [0] && (! \\QTree_Bool_src_emitted [0]));
  assign go_2_dummy_write_QTree_Bool_d = (\\QTree_Bool_src_d [0] && (! \\QTree_Bool_src_emitted [1]));
  assign \\QTree_Bool_src_done  = (\\QTree_Bool_src_emitted  | ({go_2_dummy_write_QTree_Bool_d[0],
                                                                 go_1_dummy_write_QTree_Bool_d[0]} & {go_2_dummy_write_QTree_Bool_r,
                                                                                                      go_1_dummy_write_QTree_Bool_r}));
  assign \\QTree_Bool_src_r  = (& \\QTree_Bool_src_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \\QTree_Bool_src_emitted  <= 2'd0;
    else
      \\QTree_Bool_src_emitted  <= (\\QTree_Bool_src_r  ? 2'd0 :
                                    \\QTree_Bool_src_done );
  
  /* source (Ty QTree_Bool) : > (dummy_write_QTree_Bool,QTree_Bool) */
  
  /* sink (Ty Pointer_QTree_Bool) : (dummy_write_QTree_Bool_sink,Pointer_QTree_Bool) > */
  assign {dummy_write_QTree_Bool_sink_r,
          dummy_write_QTree_Bool_sink_dout} = {dummy_write_QTree_Bool_sink_rout,
                                               dummy_write_QTree_Bool_sink_d};
  
  /* fork (Ty Word16#) : (mergeHP_QTree_Bool_buf,Word16#) > [(forkHP1_QTree_Bool,Word16#),
                                                        (forkHP1_QTree_Bool_snk,Word16#),
                                                        (forkHP1_QTree_Boo3,Word16#),
                                                        (forkHP1_QTree_Boo4,Word16#)] */
  logic [3:0] mergeHP_QTree_Bool_buf_emitted;
  logic [3:0] mergeHP_QTree_Bool_buf_done;
  assign forkHP1_QTree_Bool_d = {mergeHP_QTree_Bool_buf_d[16:1],
                                 (mergeHP_QTree_Bool_buf_d[0] && (! mergeHP_QTree_Bool_buf_emitted[0]))};
  assign forkHP1_QTree_Bool_snk_d = {mergeHP_QTree_Bool_buf_d[16:1],
                                     (mergeHP_QTree_Bool_buf_d[0] && (! mergeHP_QTree_Bool_buf_emitted[1]))};
  assign forkHP1_QTree_Boo3_d = {mergeHP_QTree_Bool_buf_d[16:1],
                                 (mergeHP_QTree_Bool_buf_d[0] && (! mergeHP_QTree_Bool_buf_emitted[2]))};
  assign forkHP1_QTree_Boo4_d = {mergeHP_QTree_Bool_buf_d[16:1],
                                 (mergeHP_QTree_Bool_buf_d[0] && (! mergeHP_QTree_Bool_buf_emitted[3]))};
  assign mergeHP_QTree_Bool_buf_done = (mergeHP_QTree_Bool_buf_emitted | ({forkHP1_QTree_Boo4_d[0],
                                                                           forkHP1_QTree_Boo3_d[0],
                                                                           forkHP1_QTree_Bool_snk_d[0],
                                                                           forkHP1_QTree_Bool_d[0]} & {forkHP1_QTree_Boo4_r,
                                                                                                       forkHP1_QTree_Boo3_r,
                                                                                                       forkHP1_QTree_Bool_snk_r,
                                                                                                       forkHP1_QTree_Bool_r}));
  assign mergeHP_QTree_Bool_buf_r = (& mergeHP_QTree_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Bool_buf_emitted <= 4'd0;
    else
      mergeHP_QTree_Bool_buf_emitted <= (mergeHP_QTree_Bool_buf_r ? 4'd0 :
                                         mergeHP_QTree_Bool_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_QTree_Bool) : [(dconReadIn_QTree_Bool,MemIn_QTree_Bool),
                                   (dconWriteIn_QTree_Bool,MemIn_QTree_Bool)] > (memMergeChoice_QTree_Bool,C2) (memMergeIn_QTree_Bool,MemIn_QTree_Bool) */
  logic [1:0] dconReadIn_QTree_Bool_select_d;
  assign dconReadIn_QTree_Bool_select_d = ((| dconReadIn_QTree_Bool_select_q) ? dconReadIn_QTree_Bool_select_q :
                                           (dconReadIn_QTree_Bool_d[0] ? 2'd1 :
                                            (dconWriteIn_QTree_Bool_d[0] ? 2'd2 :
                                             2'd0)));
  logic [1:0] dconReadIn_QTree_Bool_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_QTree_Bool_select_q <= 2'd0;
    else
      dconReadIn_QTree_Bool_select_q <= (dconReadIn_QTree_Bool_done ? 2'd0 :
                                         dconReadIn_QTree_Bool_select_d);
  logic [1:0] dconReadIn_QTree_Bool_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_QTree_Bool_emit_q <= 2'd0;
    else
      dconReadIn_QTree_Bool_emit_q <= (dconReadIn_QTree_Bool_done ? 2'd0 :
                                       dconReadIn_QTree_Bool_emit_d);
  logic [1:0] dconReadIn_QTree_Bool_emit_d;
  assign dconReadIn_QTree_Bool_emit_d = (dconReadIn_QTree_Bool_emit_q | ({memMergeChoice_QTree_Bool_d[0],
                                                                          memMergeIn_QTree_Bool_d[0]} & {memMergeChoice_QTree_Bool_r,
                                                                                                         memMergeIn_QTree_Bool_r}));
  logic dconReadIn_QTree_Bool_done;
  assign dconReadIn_QTree_Bool_done = (& dconReadIn_QTree_Bool_emit_d);
  assign {dconWriteIn_QTree_Bool_r,
          dconReadIn_QTree_Bool_r} = (dconReadIn_QTree_Bool_done ? dconReadIn_QTree_Bool_select_d :
                                      2'd0);
  assign memMergeIn_QTree_Bool_d = ((dconReadIn_QTree_Bool_select_d[0] && (! dconReadIn_QTree_Bool_emit_q[0])) ? dconReadIn_QTree_Bool_d :
                                    ((dconReadIn_QTree_Bool_select_d[1] && (! dconReadIn_QTree_Bool_emit_q[0])) ? dconWriteIn_QTree_Bool_d :
                                     {83'd0, 1'd0}));
  assign memMergeChoice_QTree_Bool_d = ((dconReadIn_QTree_Bool_select_d[0] && (! dconReadIn_QTree_Bool_emit_q[1])) ? C1_2_dc(1'd1) :
                                        ((dconReadIn_QTree_Bool_select_d[1] && (! dconReadIn_QTree_Bool_emit_q[1])) ? C2_2_dc(1'd1) :
                                         {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_QTree_Bool,
      Ty MemOut_QTree_Bool) : (memMergeIn_QTree_Bool_dbuf,MemIn_QTree_Bool) > (memOut_QTree_Bool,MemOut_QTree_Bool) */
  logic [65:0] memMergeIn_QTree_Bool_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_QTree_Bool_dbuf_address;
  logic [65:0] memMergeIn_QTree_Bool_dbuf_din;
  logic [65:0] memOut_QTree_Bool_q;
  logic memOut_QTree_Bool_valid;
  logic memMergeIn_QTree_Bool_dbuf_we;
  logic memOut_QTree_Bool_we;
  assign memMergeIn_QTree_Bool_dbuf_din = memMergeIn_QTree_Bool_dbuf_d[83:18];
  assign memMergeIn_QTree_Bool_dbuf_address = memMergeIn_QTree_Bool_dbuf_d[17:2];
  assign memMergeIn_QTree_Bool_dbuf_we = (memMergeIn_QTree_Bool_dbuf_d[1:1] && memMergeIn_QTree_Bool_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_QTree_Bool_we <= 1'd0;
        memOut_QTree_Bool_valid <= 1'd0;
      end
    else
      begin
        memOut_QTree_Bool_we <= memMergeIn_QTree_Bool_dbuf_we;
        memOut_QTree_Bool_valid <= memMergeIn_QTree_Bool_dbuf_d[0];
        if (memMergeIn_QTree_Bool_dbuf_we)
          begin
            memMergeIn_QTree_Bool_dbuf_mem[memMergeIn_QTree_Bool_dbuf_address] <= memMergeIn_QTree_Bool_dbuf_din;
            memOut_QTree_Bool_q <= memMergeIn_QTree_Bool_dbuf_din;
          end
        else
          memOut_QTree_Bool_q <= memMergeIn_QTree_Bool_dbuf_mem[memMergeIn_QTree_Bool_dbuf_address];
      end
  assign memOut_QTree_Bool_d = {memOut_QTree_Bool_q,
                                memOut_QTree_Bool_we,
                                memOut_QTree_Bool_valid};
  assign memMergeIn_QTree_Bool_dbuf_r = ((! memOut_QTree_Bool_valid) || memOut_QTree_Bool_r);
  logic [31:0] profiling_MemIn_QTree_Bool_read;
  logic [31:0] profiling_MemIn_QTree_Bool_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_QTree_Bool_write <= 0;
        profiling_MemIn_QTree_Bool_read <= 0;
      end
    else
      if ((memMergeIn_QTree_Bool_dbuf_we == 1'd1))
        profiling_MemIn_QTree_Bool_write <= (profiling_MemIn_QTree_Bool_write + 1);
      else
        if ((memOut_QTree_Bool_valid == 1'd1))
          profiling_MemIn_QTree_Bool_read <= (profiling_MemIn_QTree_Bool_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_QTree_Bool) : (memMergeChoice_QTree_Bool,C2) (memOut_QTree_Bool_dbuf,MemOut_QTree_Bool) > [(memReadOut_QTree_Bool,MemOut_QTree_Bool),
                                                                                                            (memWriteOut_QTree_Bool,MemOut_QTree_Bool)] */
  logic [1:0] memOut_QTree_Bool_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_QTree_Bool_d[0] && memOut_QTree_Bool_dbuf_d[0]))
      unique case (memMergeChoice_QTree_Bool_d[1:1])
        1'd0: memOut_QTree_Bool_dbuf_onehotd = 2'd1;
        1'd1: memOut_QTree_Bool_dbuf_onehotd = 2'd2;
        default: memOut_QTree_Bool_dbuf_onehotd = 2'd0;
      endcase
    else memOut_QTree_Bool_dbuf_onehotd = 2'd0;
  assign memReadOut_QTree_Bool_d = {memOut_QTree_Bool_dbuf_d[67:1],
                                    memOut_QTree_Bool_dbuf_onehotd[0]};
  assign memWriteOut_QTree_Bool_d = {memOut_QTree_Bool_dbuf_d[67:1],
                                     memOut_QTree_Bool_dbuf_onehotd[1]};
  assign memOut_QTree_Bool_dbuf_r = (| (memOut_QTree_Bool_dbuf_onehotd & {memWriteOut_QTree_Bool_r,
                                                                          memReadOut_QTree_Bool_r}));
  assign memMergeChoice_QTree_Bool_r = memOut_QTree_Bool_dbuf_r;
  
  /* dbuf (Ty MemIn_QTree_Bool) : (memMergeIn_QTree_Bool_rbuf,MemIn_QTree_Bool) > (memMergeIn_QTree_Bool_dbuf,MemIn_QTree_Bool) */
  assign memMergeIn_QTree_Bool_rbuf_r = ((! memMergeIn_QTree_Bool_dbuf_d[0]) || memMergeIn_QTree_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_QTree_Bool_dbuf_d <= {83'd0, 1'd0};
    else
      if (memMergeIn_QTree_Bool_rbuf_r)
        memMergeIn_QTree_Bool_dbuf_d <= memMergeIn_QTree_Bool_rbuf_d;
  
  /* rbuf (Ty MemIn_QTree_Bool) : (memMergeIn_QTree_Bool,MemIn_QTree_Bool) > (memMergeIn_QTree_Bool_rbuf,MemIn_QTree_Bool) */
  MemIn_QTree_Bool_t memMergeIn_QTree_Bool_buf;
  assign memMergeIn_QTree_Bool_r = (! memMergeIn_QTree_Bool_buf[0]);
  assign memMergeIn_QTree_Bool_rbuf_d = (memMergeIn_QTree_Bool_buf[0] ? memMergeIn_QTree_Bool_buf :
                                         memMergeIn_QTree_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_QTree_Bool_buf <= {83'd0, 1'd0};
    else
      if ((memMergeIn_QTree_Bool_rbuf_r && memMergeIn_QTree_Bool_buf[0]))
        memMergeIn_QTree_Bool_buf <= {83'd0, 1'd0};
      else if (((! memMergeIn_QTree_Bool_rbuf_r) && (! memMergeIn_QTree_Bool_buf[0])))
        memMergeIn_QTree_Bool_buf <= memMergeIn_QTree_Bool_d;
  
  /* dbuf (Ty MemOut_QTree_Bool) : (memOut_QTree_Bool_rbuf,MemOut_QTree_Bool) > (memOut_QTree_Bool_dbuf,MemOut_QTree_Bool) */
  assign memOut_QTree_Bool_rbuf_r = ((! memOut_QTree_Bool_dbuf_d[0]) || memOut_QTree_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_QTree_Bool_dbuf_d <= {67'd0, 1'd0};
    else
      if (memOut_QTree_Bool_rbuf_r)
        memOut_QTree_Bool_dbuf_d <= memOut_QTree_Bool_rbuf_d;
  
  /* rbuf (Ty MemOut_QTree_Bool) : (memOut_QTree_Bool,MemOut_QTree_Bool) > (memOut_QTree_Bool_rbuf,MemOut_QTree_Bool) */
  MemOut_QTree_Bool_t memOut_QTree_Bool_buf;
  assign memOut_QTree_Bool_r = (! memOut_QTree_Bool_buf[0]);
  assign memOut_QTree_Bool_rbuf_d = (memOut_QTree_Bool_buf[0] ? memOut_QTree_Bool_buf :
                                     memOut_QTree_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_QTree_Bool_buf <= {67'd0, 1'd0};
    else
      if ((memOut_QTree_Bool_rbuf_r && memOut_QTree_Bool_buf[0]))
        memOut_QTree_Bool_buf <= {67'd0, 1'd0};
      else if (((! memOut_QTree_Bool_rbuf_r) && (! memOut_QTree_Bool_buf[0])))
        memOut_QTree_Bool_buf <= memOut_QTree_Bool_d;
  
  /* mergectrl (Ty C2,
           Ty Pointer_QTree_Bool) : [(m1a88_1_argbuf,Pointer_QTree_Bool),
                                     (m2a89_1_argbuf,Pointer_QTree_Bool)] > (readMerge_choice_QTree_Bool,C2) (readMerge_data_QTree_Bool,Pointer_QTree_Bool) */
  logic [1:0] m1a88_1_argbuf_select_d;
  assign m1a88_1_argbuf_select_d = ((| m1a88_1_argbuf_select_q) ? m1a88_1_argbuf_select_q :
                                    (m1a88_1_argbuf_d[0] ? 2'd1 :
                                     (m2a89_1_argbuf_d[0] ? 2'd2 :
                                      2'd0)));
  logic [1:0] m1a88_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a88_1_argbuf_select_q <= 2'd0;
    else
      m1a88_1_argbuf_select_q <= (m1a88_1_argbuf_done ? 2'd0 :
                                  m1a88_1_argbuf_select_d);
  logic [1:0] m1a88_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a88_1_argbuf_emit_q <= 2'd0;
    else
      m1a88_1_argbuf_emit_q <= (m1a88_1_argbuf_done ? 2'd0 :
                                m1a88_1_argbuf_emit_d);
  logic [1:0] m1a88_1_argbuf_emit_d;
  assign m1a88_1_argbuf_emit_d = (m1a88_1_argbuf_emit_q | ({readMerge_choice_QTree_Bool_d[0],
                                                            readMerge_data_QTree_Bool_d[0]} & {readMerge_choice_QTree_Bool_r,
                                                                                               readMerge_data_QTree_Bool_r}));
  logic m1a88_1_argbuf_done;
  assign m1a88_1_argbuf_done = (& m1a88_1_argbuf_emit_d);
  assign {m2a89_1_argbuf_r,
          m1a88_1_argbuf_r} = (m1a88_1_argbuf_done ? m1a88_1_argbuf_select_d :
                               2'd0);
  assign readMerge_data_QTree_Bool_d = ((m1a88_1_argbuf_select_d[0] && (! m1a88_1_argbuf_emit_q[0])) ? m1a88_1_argbuf_d :
                                        ((m1a88_1_argbuf_select_d[1] && (! m1a88_1_argbuf_emit_q[0])) ? m2a89_1_argbuf_d :
                                         {16'd0, 1'd0}));
  assign readMerge_choice_QTree_Bool_d = ((m1a88_1_argbuf_select_d[0] && (! m1a88_1_argbuf_emit_q[1])) ? C1_2_dc(1'd1) :
                                          ((m1a88_1_argbuf_select_d[1] && (! m1a88_1_argbuf_emit_q[1])) ? C2_2_dc(1'd1) :
                                           {1'd0, 1'd0}));
  
  /* demux (Ty C2,
       Ty QTree_Bool) : (readMerge_choice_QTree_Bool,C2) (destructReadOut_QTree_Bool,QTree_Bool) > [(readPointer_QTree_Boolm1a88_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolm2a89_1_argbuf,QTree_Bool)] */
  logic [1:0] destructReadOut_QTree_Bool_onehotd;
  always_comb
    if ((readMerge_choice_QTree_Bool_d[0] && destructReadOut_QTree_Bool_d[0]))
      unique case (readMerge_choice_QTree_Bool_d[1:1])
        1'd0: destructReadOut_QTree_Bool_onehotd = 2'd1;
        1'd1: destructReadOut_QTree_Bool_onehotd = 2'd2;
        default: destructReadOut_QTree_Bool_onehotd = 2'd0;
      endcase
    else destructReadOut_QTree_Bool_onehotd = 2'd0;
  assign readPointer_QTree_Boolm1a88_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[0]};
  assign readPointer_QTree_Boolm2a89_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[1]};
  assign destructReadOut_QTree_Bool_r = (| (destructReadOut_QTree_Bool_onehotd & {readPointer_QTree_Boolm2a89_1_argbuf_r,
                                                                                  readPointer_QTree_Boolm1a88_1_argbuf_r}));
  assign readMerge_choice_QTree_Bool_r = destructReadOut_QTree_Bool_r;
  
  /* destruct (Ty Pointer_QTree_Bool,
          Dcon Pointer_QTree_Bool) : (readMerge_data_QTree_Bool,Pointer_QTree_Bool) > [(destructReadIn_QTree_Bool,Word16#)] */
  assign destructReadIn_QTree_Bool_d = {readMerge_data_QTree_Bool_d[16:1],
                                        readMerge_data_QTree_Bool_d[0]};
  assign readMerge_data_QTree_Bool_r = destructReadIn_QTree_Bool_r;
  
  /* dcon (Ty MemIn_QTree_Bool,
      Dcon ReadIn_QTree_Bool) : [(destructReadIn_QTree_Bool,Word16#)] > (dconReadIn_QTree_Bool,MemIn_QTree_Bool) */
  assign dconReadIn_QTree_Bool_d = ReadIn_QTree_Bool_dc((& {destructReadIn_QTree_Bool_d[0]}), destructReadIn_QTree_Bool_d);
  assign {destructReadIn_QTree_Bool_r} = {1 {(dconReadIn_QTree_Bool_r && dconReadIn_QTree_Bool_d[0])}};
  
  /* destruct (Ty MemOut_QTree_Bool,
          Dcon ReadOut_QTree_Bool) : (memReadOut_QTree_Bool,MemOut_QTree_Bool) > [(destructReadOut_QTree_Bool,QTree_Bool)] */
  assign destructReadOut_QTree_Bool_d = {memReadOut_QTree_Bool_d[67:2],
                                         memReadOut_QTree_Bool_d[0]};
  assign memReadOut_QTree_Bool_r = destructReadOut_QTree_Bool_r;
  
  /* mergectrl (Ty C9,
           Ty QTree_Bool) : [(lizzieLet10_1_argbuf,QTree_Bool),
                             (lizzieLet16_1_argbuf,QTree_Bool),
                             (lizzieLet2_1_argbuf,QTree_Bool),
                             (lizzieLet3_1_argbuf,QTree_Bool),
                             (lizzieLet4_1_argbuf,QTree_Bool),
                             (lizzieLet5_1_argbuf,QTree_Bool),
                             (lizzieLet7_1_argbuf,QTree_Bool),
                             (lizzieLet9_1_argbuf,QTree_Bool),
                             (dummy_write_QTree_Bool,QTree_Bool)] > (writeMerge_choice_QTree_Bool,C9) (writeMerge_data_QTree_Bool,QTree_Bool) */
  logic [8:0] lizzieLet10_1_argbuf_select_d;
  assign lizzieLet10_1_argbuf_select_d = ((| lizzieLet10_1_argbuf_select_q) ? lizzieLet10_1_argbuf_select_q :
                                          (lizzieLet10_1_argbuf_d[0] ? 9'd1 :
                                           (lizzieLet16_1_argbuf_d[0] ? 9'd2 :
                                            (lizzieLet2_1_argbuf_d[0] ? 9'd4 :
                                             (lizzieLet3_1_argbuf_d[0] ? 9'd8 :
                                              (lizzieLet4_1_argbuf_d[0] ? 9'd16 :
                                               (lizzieLet5_1_argbuf_d[0] ? 9'd32 :
                                                (lizzieLet7_1_argbuf_d[0] ? 9'd64 :
                                                 (lizzieLet9_1_argbuf_d[0] ? 9'd128 :
                                                  (dummy_write_QTree_Bool_d[0] ? 9'd256 :
                                                   9'd0))))))))));
  logic [8:0] lizzieLet10_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet10_1_argbuf_select_q <= 9'd0;
    else
      lizzieLet10_1_argbuf_select_q <= (lizzieLet10_1_argbuf_done ? 9'd0 :
                                        lizzieLet10_1_argbuf_select_d);
  logic [1:0] lizzieLet10_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet10_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet10_1_argbuf_emit_q <= (lizzieLet10_1_argbuf_done ? 2'd0 :
                                      lizzieLet10_1_argbuf_emit_d);
  logic [1:0] lizzieLet10_1_argbuf_emit_d;
  assign lizzieLet10_1_argbuf_emit_d = (lizzieLet10_1_argbuf_emit_q | ({writeMerge_choice_QTree_Bool_d[0],
                                                                        writeMerge_data_QTree_Bool_d[0]} & {writeMerge_choice_QTree_Bool_r,
                                                                                                            writeMerge_data_QTree_Bool_r}));
  logic lizzieLet10_1_argbuf_done;
  assign lizzieLet10_1_argbuf_done = (& lizzieLet10_1_argbuf_emit_d);
  assign {dummy_write_QTree_Bool_r,
          lizzieLet9_1_argbuf_r,
          lizzieLet7_1_argbuf_r,
          lizzieLet5_1_argbuf_r,
          lizzieLet4_1_argbuf_r,
          lizzieLet3_1_argbuf_r,
          lizzieLet2_1_argbuf_r,
          lizzieLet16_1_argbuf_r,
          lizzieLet10_1_argbuf_r} = (lizzieLet10_1_argbuf_done ? lizzieLet10_1_argbuf_select_d :
                                     9'd0);
  assign writeMerge_data_QTree_Bool_d = ((lizzieLet10_1_argbuf_select_d[0] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet10_1_argbuf_d :
                                         ((lizzieLet10_1_argbuf_select_d[1] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet16_1_argbuf_d :
                                          ((lizzieLet10_1_argbuf_select_d[2] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet2_1_argbuf_d :
                                           ((lizzieLet10_1_argbuf_select_d[3] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet3_1_argbuf_d :
                                            ((lizzieLet10_1_argbuf_select_d[4] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet4_1_argbuf_d :
                                             ((lizzieLet10_1_argbuf_select_d[5] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet5_1_argbuf_d :
                                              ((lizzieLet10_1_argbuf_select_d[6] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet7_1_argbuf_d :
                                               ((lizzieLet10_1_argbuf_select_d[7] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet9_1_argbuf_d :
                                                ((lizzieLet10_1_argbuf_select_d[8] && (! lizzieLet10_1_argbuf_emit_q[0])) ? dummy_write_QTree_Bool_d :
                                                 {66'd0, 1'd0})))))))));
  assign writeMerge_choice_QTree_Bool_d = ((lizzieLet10_1_argbuf_select_d[0] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C1_9_dc(1'd1) :
                                           ((lizzieLet10_1_argbuf_select_d[1] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C2_9_dc(1'd1) :
                                            ((lizzieLet10_1_argbuf_select_d[2] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C3_9_dc(1'd1) :
                                             ((lizzieLet10_1_argbuf_select_d[3] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C4_9_dc(1'd1) :
                                              ((lizzieLet10_1_argbuf_select_d[4] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C5_9_dc(1'd1) :
                                               ((lizzieLet10_1_argbuf_select_d[5] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C6_9_dc(1'd1) :
                                                ((lizzieLet10_1_argbuf_select_d[6] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C7_9_dc(1'd1) :
                                                 ((lizzieLet10_1_argbuf_select_d[7] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C8_9_dc(1'd1) :
                                                  ((lizzieLet10_1_argbuf_select_d[8] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C9_9_dc(1'd1) :
                                                   {4'd0, 1'd0})))))))));
  
  /* demux (Ty C9,
       Ty Pointer_QTree_Bool) : (writeMerge_choice_QTree_Bool,C9) (demuxWriteResult_QTree_Bool,Pointer_QTree_Bool) > [(writeQTree_BoollizzieLet10_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet16_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet2_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet3_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet4_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet5_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet7_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet9_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (dummy_write_QTree_Bool_sink,Pointer_QTree_Bool)] */
  logic [8:0] demuxWriteResult_QTree_Bool_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Bool_d[0] && demuxWriteResult_QTree_Bool_d[0]))
      unique case (writeMerge_choice_QTree_Bool_d[4:1])
        4'd0: demuxWriteResult_QTree_Bool_onehotd = 9'd1;
        4'd1: demuxWriteResult_QTree_Bool_onehotd = 9'd2;
        4'd2: demuxWriteResult_QTree_Bool_onehotd = 9'd4;
        4'd3: demuxWriteResult_QTree_Bool_onehotd = 9'd8;
        4'd4: demuxWriteResult_QTree_Bool_onehotd = 9'd16;
        4'd5: demuxWriteResult_QTree_Bool_onehotd = 9'd32;
        4'd6: demuxWriteResult_QTree_Bool_onehotd = 9'd64;
        4'd7: demuxWriteResult_QTree_Bool_onehotd = 9'd128;
        4'd8: demuxWriteResult_QTree_Bool_onehotd = 9'd256;
        default: demuxWriteResult_QTree_Bool_onehotd = 9'd0;
      endcase
    else demuxWriteResult_QTree_Bool_onehotd = 9'd0;
  assign writeQTree_BoollizzieLet10_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                  demuxWriteResult_QTree_Bool_onehotd[0]};
  assign writeQTree_BoollizzieLet16_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                  demuxWriteResult_QTree_Bool_onehotd[1]};
  assign writeQTree_BoollizzieLet2_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[2]};
  assign writeQTree_BoollizzieLet3_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[3]};
  assign writeQTree_BoollizzieLet4_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[4]};
  assign writeQTree_BoollizzieLet5_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[5]};
  assign writeQTree_BoollizzieLet7_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[6]};
  assign writeQTree_BoollizzieLet9_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[7]};
  assign dummy_write_QTree_Bool_sink_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                          demuxWriteResult_QTree_Bool_onehotd[8]};
  assign demuxWriteResult_QTree_Bool_r = (| (demuxWriteResult_QTree_Bool_onehotd & {dummy_write_QTree_Bool_sink_r,
                                                                                    writeQTree_BoollizzieLet9_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet7_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet5_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet4_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet3_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet2_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet16_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet10_1_argbuf_r}));
  assign writeMerge_choice_QTree_Bool_r = demuxWriteResult_QTree_Bool_r;
  
  /* dcon (Ty MemIn_QTree_Bool,
      Dcon WriteIn_QTree_Bool) : [(forkHP1_QTree_Boo3,Word16#),
                                  (writeMerge_data_QTree_Bool,QTree_Bool)] > (dconWriteIn_QTree_Bool,MemIn_QTree_Bool) */
  assign dconWriteIn_QTree_Bool_d = WriteIn_QTree_Bool_dc((& {forkHP1_QTree_Boo3_d[0],
                                                              writeMerge_data_QTree_Bool_d[0]}), forkHP1_QTree_Boo3_d, writeMerge_data_QTree_Bool_d);
  assign {forkHP1_QTree_Boo3_r,
          writeMerge_data_QTree_Bool_r} = {2 {(dconWriteIn_QTree_Bool_r && dconWriteIn_QTree_Bool_d[0])}};
  
  /* dcon (Ty Pointer_QTree_Bool,
      Dcon Pointer_QTree_Bool) : [(forkHP1_QTree_Boo4,Word16#)] > (dconPtr_QTree_Bool,Pointer_QTree_Bool) */
  assign dconPtr_QTree_Bool_d = Pointer_QTree_Bool_dc((& {forkHP1_QTree_Boo4_d[0]}), forkHP1_QTree_Boo4_d);
  assign {forkHP1_QTree_Boo4_r} = {1 {(dconPtr_QTree_Bool_r && dconPtr_QTree_Bool_d[0])}};
  
  /* demux (Ty MemOut_QTree_Bool,
       Ty Pointer_QTree_Bool) : (memWriteOut_QTree_Bool,MemOut_QTree_Bool) (dconPtr_QTree_Bool,Pointer_QTree_Bool) > [(_58,Pointer_QTree_Bool),
                                                                                                                      (demuxWriteResult_QTree_Bool,Pointer_QTree_Bool)] */
  logic [1:0] dconPtr_QTree_Bool_onehotd;
  always_comb
    if ((memWriteOut_QTree_Bool_d[0] && dconPtr_QTree_Bool_d[0]))
      unique case (memWriteOut_QTree_Bool_d[1:1])
        1'd0: dconPtr_QTree_Bool_onehotd = 2'd1;
        1'd1: dconPtr_QTree_Bool_onehotd = 2'd2;
        default: dconPtr_QTree_Bool_onehotd = 2'd0;
      endcase
    else dconPtr_QTree_Bool_onehotd = 2'd0;
  assign _58_d = {dconPtr_QTree_Bool_d[16:1],
                  dconPtr_QTree_Bool_onehotd[0]};
  assign demuxWriteResult_QTree_Bool_d = {dconPtr_QTree_Bool_d[16:1],
                                          dconPtr_QTree_Bool_onehotd[1]};
  assign dconPtr_QTree_Bool_r = (| (dconPtr_QTree_Bool_onehotd & {demuxWriteResult_QTree_Bool_r,
                                                                  _58_r}));
  assign memWriteOut_QTree_Bool_r = dconPtr_QTree_Bool_r;
  
  /* const (Ty Word16#,
       Lit 0) : (go__7,Go) > (initHP_CTmAdd_mAdd_Bool,Word16#) */
  assign initHP_CTmAdd_mAdd_Bool_d = {16'd0, go__7_d[0]};
  assign go__7_r = initHP_CTmAdd_mAdd_Bool_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CTmAdd_mAdd_Bool1,Go) > (incrHP_CTmAdd_mAdd_Bool,Word16#) */
  assign incrHP_CTmAdd_mAdd_Bool_d = {16'd1,
                                      incrHP_CTmAdd_mAdd_Bool1_d[0]};
  assign incrHP_CTmAdd_mAdd_Bool1_r = incrHP_CTmAdd_mAdd_Bool_r;
  
  /* merge (Ty Go) : [(go__8,Go),
                 (incrHP_CTmAdd_mAdd_Bool2,Go)] > (incrHP_mergeCTmAdd_mAdd_Bool,Go) */
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Bool_selected;
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Bool_select;
  always_comb
    begin
      incrHP_mergeCTmAdd_mAdd_Bool_selected = 2'd0;
      if ((| incrHP_mergeCTmAdd_mAdd_Bool_select))
        incrHP_mergeCTmAdd_mAdd_Bool_selected = incrHP_mergeCTmAdd_mAdd_Bool_select;
      else
        if (go__8_d[0]) incrHP_mergeCTmAdd_mAdd_Bool_selected[0] = 1'd1;
        else if (incrHP_CTmAdd_mAdd_Bool2_d[0])
          incrHP_mergeCTmAdd_mAdd_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTmAdd_mAdd_Bool_select <= 2'd0;
    else
      incrHP_mergeCTmAdd_mAdd_Bool_select <= (incrHP_mergeCTmAdd_mAdd_Bool_r ? 2'd0 :
                                              incrHP_mergeCTmAdd_mAdd_Bool_selected);
  always_comb
    if (incrHP_mergeCTmAdd_mAdd_Bool_selected[0])
      incrHP_mergeCTmAdd_mAdd_Bool_d = go__8_d;
    else if (incrHP_mergeCTmAdd_mAdd_Bool_selected[1])
      incrHP_mergeCTmAdd_mAdd_Bool_d = incrHP_CTmAdd_mAdd_Bool2_d;
    else incrHP_mergeCTmAdd_mAdd_Bool_d = 1'd0;
  assign {incrHP_CTmAdd_mAdd_Bool2_r,
          go__8_r} = (incrHP_mergeCTmAdd_mAdd_Bool_r ? incrHP_mergeCTmAdd_mAdd_Bool_selected :
                      2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTmAdd_mAdd_Bool_buf,Go) > [(incrHP_CTmAdd_mAdd_Bool1,Go),
                                                        (incrHP_CTmAdd_mAdd_Bool2,Go)] */
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted;
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Bool_buf_done;
  assign incrHP_CTmAdd_mAdd_Bool1_d = (incrHP_mergeCTmAdd_mAdd_Bool_buf_d[0] && (! incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted[0]));
  assign incrHP_CTmAdd_mAdd_Bool2_d = (incrHP_mergeCTmAdd_mAdd_Bool_buf_d[0] && (! incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted[1]));
  assign incrHP_mergeCTmAdd_mAdd_Bool_buf_done = (incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted | ({incrHP_CTmAdd_mAdd_Bool2_d[0],
                                                                                               incrHP_CTmAdd_mAdd_Bool1_d[0]} & {incrHP_CTmAdd_mAdd_Bool2_r,
                                                                                                                                 incrHP_CTmAdd_mAdd_Bool1_r}));
  assign incrHP_mergeCTmAdd_mAdd_Bool_buf_r = (& incrHP_mergeCTmAdd_mAdd_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted <= 2'd0;
    else
      incrHP_mergeCTmAdd_mAdd_Bool_buf_emitted <= (incrHP_mergeCTmAdd_mAdd_Bool_buf_r ? 2'd0 :
                                                   incrHP_mergeCTmAdd_mAdd_Bool_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_CTmAdd_mAdd_Bool,Word16#) (forkHP1_CTmAdd_mAdd_Bool,Word16#) > (addHP_CTmAdd_mAdd_Bool,Word16#) */
  assign addHP_CTmAdd_mAdd_Bool_d = {(incrHP_CTmAdd_mAdd_Bool_d[16:1] + forkHP1_CTmAdd_mAdd_Bool_d[16:1]),
                                     (incrHP_CTmAdd_mAdd_Bool_d[0] && forkHP1_CTmAdd_mAdd_Bool_d[0])};
  assign {incrHP_CTmAdd_mAdd_Bool_r,
          forkHP1_CTmAdd_mAdd_Bool_r} = {2 {(addHP_CTmAdd_mAdd_Bool_r && addHP_CTmAdd_mAdd_Bool_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTmAdd_mAdd_Bool,Word16#),
                      (addHP_CTmAdd_mAdd_Bool,Word16#)] > (mergeHP_CTmAdd_mAdd_Bool,Word16#) */
  logic [1:0] mergeHP_CTmAdd_mAdd_Bool_selected;
  logic [1:0] mergeHP_CTmAdd_mAdd_Bool_select;
  always_comb
    begin
      mergeHP_CTmAdd_mAdd_Bool_selected = 2'd0;
      if ((| mergeHP_CTmAdd_mAdd_Bool_select))
        mergeHP_CTmAdd_mAdd_Bool_selected = mergeHP_CTmAdd_mAdd_Bool_select;
      else
        if (initHP_CTmAdd_mAdd_Bool_d[0])
          mergeHP_CTmAdd_mAdd_Bool_selected[0] = 1'd1;
        else if (addHP_CTmAdd_mAdd_Bool_d[0])
          mergeHP_CTmAdd_mAdd_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTmAdd_mAdd_Bool_select <= 2'd0;
    else
      mergeHP_CTmAdd_mAdd_Bool_select <= (mergeHP_CTmAdd_mAdd_Bool_r ? 2'd0 :
                                          mergeHP_CTmAdd_mAdd_Bool_selected);
  always_comb
    if (mergeHP_CTmAdd_mAdd_Bool_selected[0])
      mergeHP_CTmAdd_mAdd_Bool_d = initHP_CTmAdd_mAdd_Bool_d;
    else if (mergeHP_CTmAdd_mAdd_Bool_selected[1])
      mergeHP_CTmAdd_mAdd_Bool_d = addHP_CTmAdd_mAdd_Bool_d;
    else mergeHP_CTmAdd_mAdd_Bool_d = {16'd0, 1'd0};
  assign {addHP_CTmAdd_mAdd_Bool_r,
          initHP_CTmAdd_mAdd_Bool_r} = (mergeHP_CTmAdd_mAdd_Bool_r ? mergeHP_CTmAdd_mAdd_Bool_selected :
                                        2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTmAdd_mAdd_Bool,Go) > (incrHP_mergeCTmAdd_mAdd_Bool_buf,Go) */
  Go_t incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d;
  logic incrHP_mergeCTmAdd_mAdd_Bool_bufchan_r;
  assign incrHP_mergeCTmAdd_mAdd_Bool_r = ((! incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d[0]) || incrHP_mergeCTmAdd_mAdd_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeCTmAdd_mAdd_Bool_r)
        incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d <= incrHP_mergeCTmAdd_mAdd_Bool_d;
  Go_t incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf;
  assign incrHP_mergeCTmAdd_mAdd_Bool_bufchan_r = (! incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf[0]);
  assign incrHP_mergeCTmAdd_mAdd_Bool_buf_d = (incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf[0] ? incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf :
                                               incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeCTmAdd_mAdd_Bool_buf_r && incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf[0]))
        incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeCTmAdd_mAdd_Bool_buf_r) && (! incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf[0])))
        incrHP_mergeCTmAdd_mAdd_Bool_bufchan_buf <= incrHP_mergeCTmAdd_mAdd_Bool_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_CTmAdd_mAdd_Bool,Word16#) > (mergeHP_CTmAdd_mAdd_Bool_buf,Word16#) */
  \Word16#_t  mergeHP_CTmAdd_mAdd_Bool_bufchan_d;
  logic mergeHP_CTmAdd_mAdd_Bool_bufchan_r;
  assign mergeHP_CTmAdd_mAdd_Bool_r = ((! mergeHP_CTmAdd_mAdd_Bool_bufchan_d[0]) || mergeHP_CTmAdd_mAdd_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CTmAdd_mAdd_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_CTmAdd_mAdd_Bool_r)
        mergeHP_CTmAdd_mAdd_Bool_bufchan_d <= mergeHP_CTmAdd_mAdd_Bool_d;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Bool_bufchan_buf;
  assign mergeHP_CTmAdd_mAdd_Bool_bufchan_r = (! mergeHP_CTmAdd_mAdd_Bool_bufchan_buf[0]);
  assign mergeHP_CTmAdd_mAdd_Bool_buf_d = (mergeHP_CTmAdd_mAdd_Bool_bufchan_buf[0] ? mergeHP_CTmAdd_mAdd_Bool_bufchan_buf :
                                           mergeHP_CTmAdd_mAdd_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CTmAdd_mAdd_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_CTmAdd_mAdd_Bool_buf_r && mergeHP_CTmAdd_mAdd_Bool_bufchan_buf[0]))
        mergeHP_CTmAdd_mAdd_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_CTmAdd_mAdd_Bool_buf_r) && (! mergeHP_CTmAdd_mAdd_Bool_bufchan_buf[0])))
        mergeHP_CTmAdd_mAdd_Bool_bufchan_buf <= mergeHP_CTmAdd_mAdd_Bool_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_CTmAdd_mAdd_Bool_buf,Word16#) > [(forkHP1_CTmAdd_mAdd_Bool,Word16#),
                                                              (forkHP1_CTmAdd_mAdd_Boo2,Word16#),
                                                              (forkHP1_CTmAdd_mAdd_Boo3,Word16#)] */
  logic [2:0] mergeHP_CTmAdd_mAdd_Bool_buf_emitted;
  logic [2:0] mergeHP_CTmAdd_mAdd_Bool_buf_done;
  assign forkHP1_CTmAdd_mAdd_Bool_d = {mergeHP_CTmAdd_mAdd_Bool_buf_d[16:1],
                                       (mergeHP_CTmAdd_mAdd_Bool_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Bool_buf_emitted[0]))};
  assign forkHP1_CTmAdd_mAdd_Boo2_d = {mergeHP_CTmAdd_mAdd_Bool_buf_d[16:1],
                                       (mergeHP_CTmAdd_mAdd_Bool_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Bool_buf_emitted[1]))};
  assign forkHP1_CTmAdd_mAdd_Boo3_d = {mergeHP_CTmAdd_mAdd_Bool_buf_d[16:1],
                                       (mergeHP_CTmAdd_mAdd_Bool_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Bool_buf_emitted[2]))};
  assign mergeHP_CTmAdd_mAdd_Bool_buf_done = (mergeHP_CTmAdd_mAdd_Bool_buf_emitted | ({forkHP1_CTmAdd_mAdd_Boo3_d[0],
                                                                                       forkHP1_CTmAdd_mAdd_Boo2_d[0],
                                                                                       forkHP1_CTmAdd_mAdd_Bool_d[0]} & {forkHP1_CTmAdd_mAdd_Boo3_r,
                                                                                                                         forkHP1_CTmAdd_mAdd_Boo2_r,
                                                                                                                         forkHP1_CTmAdd_mAdd_Bool_r}));
  assign mergeHP_CTmAdd_mAdd_Bool_buf_r = (& mergeHP_CTmAdd_mAdd_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTmAdd_mAdd_Bool_buf_emitted <= 3'd0;
    else
      mergeHP_CTmAdd_mAdd_Bool_buf_emitted <= (mergeHP_CTmAdd_mAdd_Bool_buf_r ? 3'd0 :
                                               mergeHP_CTmAdd_mAdd_Bool_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_CTmAdd_mAdd_Bool) : [(dconReadIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool),
                                         (dconWriteIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool)] > (memMergeChoice_CTmAdd_mAdd_Bool,C2) (memMergeIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool) */
  logic [1:0] dconReadIn_CTmAdd_mAdd_Bool_select_d;
  assign dconReadIn_CTmAdd_mAdd_Bool_select_d = ((| dconReadIn_CTmAdd_mAdd_Bool_select_q) ? dconReadIn_CTmAdd_mAdd_Bool_select_q :
                                                 (dconReadIn_CTmAdd_mAdd_Bool_d[0] ? 2'd1 :
                                                  (dconWriteIn_CTmAdd_mAdd_Bool_d[0] ? 2'd2 :
                                                   2'd0)));
  logic [1:0] dconReadIn_CTmAdd_mAdd_Bool_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTmAdd_mAdd_Bool_select_q <= 2'd0;
    else
      dconReadIn_CTmAdd_mAdd_Bool_select_q <= (dconReadIn_CTmAdd_mAdd_Bool_done ? 2'd0 :
                                               dconReadIn_CTmAdd_mAdd_Bool_select_d);
  logic [1:0] dconReadIn_CTmAdd_mAdd_Bool_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTmAdd_mAdd_Bool_emit_q <= 2'd0;
    else
      dconReadIn_CTmAdd_mAdd_Bool_emit_q <= (dconReadIn_CTmAdd_mAdd_Bool_done ? 2'd0 :
                                             dconReadIn_CTmAdd_mAdd_Bool_emit_d);
  logic [1:0] dconReadIn_CTmAdd_mAdd_Bool_emit_d;
  assign dconReadIn_CTmAdd_mAdd_Bool_emit_d = (dconReadIn_CTmAdd_mAdd_Bool_emit_q | ({memMergeChoice_CTmAdd_mAdd_Bool_d[0],
                                                                                      memMergeIn_CTmAdd_mAdd_Bool_d[0]} & {memMergeChoice_CTmAdd_mAdd_Bool_r,
                                                                                                                           memMergeIn_CTmAdd_mAdd_Bool_r}));
  logic dconReadIn_CTmAdd_mAdd_Bool_done;
  assign dconReadIn_CTmAdd_mAdd_Bool_done = (& dconReadIn_CTmAdd_mAdd_Bool_emit_d);
  assign {dconWriteIn_CTmAdd_mAdd_Bool_r,
          dconReadIn_CTmAdd_mAdd_Bool_r} = (dconReadIn_CTmAdd_mAdd_Bool_done ? dconReadIn_CTmAdd_mAdd_Bool_select_d :
                                            2'd0);
  assign memMergeIn_CTmAdd_mAdd_Bool_d = ((dconReadIn_CTmAdd_mAdd_Bool_select_d[0] && (! dconReadIn_CTmAdd_mAdd_Bool_emit_q[0])) ? dconReadIn_CTmAdd_mAdd_Bool_d :
                                          ((dconReadIn_CTmAdd_mAdd_Bool_select_d[1] && (! dconReadIn_CTmAdd_mAdd_Bool_emit_q[0])) ? dconWriteIn_CTmAdd_mAdd_Bool_d :
                                           {132'd0, 1'd0}));
  assign memMergeChoice_CTmAdd_mAdd_Bool_d = ((dconReadIn_CTmAdd_mAdd_Bool_select_d[0] && (! dconReadIn_CTmAdd_mAdd_Bool_emit_q[1])) ? C1_2_dc(1'd1) :
                                              ((dconReadIn_CTmAdd_mAdd_Bool_select_d[1] && (! dconReadIn_CTmAdd_mAdd_Bool_emit_q[1])) ? C2_2_dc(1'd1) :
                                               {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTmAdd_mAdd_Bool,
      Ty MemOut_CTmAdd_mAdd_Bool) : (memMergeIn_CTmAdd_mAdd_Bool_dbuf,MemIn_CTmAdd_mAdd_Bool) > (memOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool) */
  logic [114:0] memMergeIn_CTmAdd_mAdd_Bool_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CTmAdd_mAdd_Bool_dbuf_address;
  logic [114:0] memMergeIn_CTmAdd_mAdd_Bool_dbuf_din;
  logic [114:0] memOut_CTmAdd_mAdd_Bool_q;
  logic memOut_CTmAdd_mAdd_Bool_valid;
  logic memMergeIn_CTmAdd_mAdd_Bool_dbuf_we;
  logic memOut_CTmAdd_mAdd_Bool_we;
  assign memMergeIn_CTmAdd_mAdd_Bool_dbuf_din = memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[132:18];
  assign memMergeIn_CTmAdd_mAdd_Bool_dbuf_address = memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[17:2];
  assign memMergeIn_CTmAdd_mAdd_Bool_dbuf_we = (memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[1:1] && memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_CTmAdd_mAdd_Bool_we <= 1'd0;
        memOut_CTmAdd_mAdd_Bool_valid <= 1'd0;
      end
    else
      begin
        memOut_CTmAdd_mAdd_Bool_we <= memMergeIn_CTmAdd_mAdd_Bool_dbuf_we;
        memOut_CTmAdd_mAdd_Bool_valid <= memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[0];
        if (memMergeIn_CTmAdd_mAdd_Bool_dbuf_we)
          begin
            memMergeIn_CTmAdd_mAdd_Bool_dbuf_mem[memMergeIn_CTmAdd_mAdd_Bool_dbuf_address] <= memMergeIn_CTmAdd_mAdd_Bool_dbuf_din;
            memOut_CTmAdd_mAdd_Bool_q <= memMergeIn_CTmAdd_mAdd_Bool_dbuf_din;
          end
        else
          memOut_CTmAdd_mAdd_Bool_q <= memMergeIn_CTmAdd_mAdd_Bool_dbuf_mem[memMergeIn_CTmAdd_mAdd_Bool_dbuf_address];
      end
  assign memOut_CTmAdd_mAdd_Bool_d = {memOut_CTmAdd_mAdd_Bool_q,
                                      memOut_CTmAdd_mAdd_Bool_we,
                                      memOut_CTmAdd_mAdd_Bool_valid};
  assign memMergeIn_CTmAdd_mAdd_Bool_dbuf_r = ((! memOut_CTmAdd_mAdd_Bool_valid) || memOut_CTmAdd_mAdd_Bool_r);
  logic [31:0] profiling_MemIn_CTmAdd_mAdd_Bool_read;
  logic [31:0] profiling_MemIn_CTmAdd_mAdd_Bool_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_CTmAdd_mAdd_Bool_write <= 0;
        profiling_MemIn_CTmAdd_mAdd_Bool_read <= 0;
      end
    else
      if ((memMergeIn_CTmAdd_mAdd_Bool_dbuf_we == 1'd1))
        profiling_MemIn_CTmAdd_mAdd_Bool_write <= (profiling_MemIn_CTmAdd_mAdd_Bool_write + 1);
      else
        if ((memOut_CTmAdd_mAdd_Bool_valid == 1'd1))
          profiling_MemIn_CTmAdd_mAdd_Bool_read <= (profiling_MemIn_CTmAdd_mAdd_Bool_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CTmAdd_mAdd_Bool) : (memMergeChoice_CTmAdd_mAdd_Bool,C2) (memOut_CTmAdd_mAdd_Bool_dbuf,MemOut_CTmAdd_mAdd_Bool) > [(memReadOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool),
                                                                                                                                    (memWriteOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool)] */
  logic [1:0] memOut_CTmAdd_mAdd_Bool_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_CTmAdd_mAdd_Bool_d[0] && memOut_CTmAdd_mAdd_Bool_dbuf_d[0]))
      unique case (memMergeChoice_CTmAdd_mAdd_Bool_d[1:1])
        1'd0: memOut_CTmAdd_mAdd_Bool_dbuf_onehotd = 2'd1;
        1'd1: memOut_CTmAdd_mAdd_Bool_dbuf_onehotd = 2'd2;
        default: memOut_CTmAdd_mAdd_Bool_dbuf_onehotd = 2'd0;
      endcase
    else memOut_CTmAdd_mAdd_Bool_dbuf_onehotd = 2'd0;
  assign memReadOut_CTmAdd_mAdd_Bool_d = {memOut_CTmAdd_mAdd_Bool_dbuf_d[116:1],
                                          memOut_CTmAdd_mAdd_Bool_dbuf_onehotd[0]};
  assign memWriteOut_CTmAdd_mAdd_Bool_d = {memOut_CTmAdd_mAdd_Bool_dbuf_d[116:1],
                                           memOut_CTmAdd_mAdd_Bool_dbuf_onehotd[1]};
  assign memOut_CTmAdd_mAdd_Bool_dbuf_r = (| (memOut_CTmAdd_mAdd_Bool_dbuf_onehotd & {memWriteOut_CTmAdd_mAdd_Bool_r,
                                                                                      memReadOut_CTmAdd_mAdd_Bool_r}));
  assign memMergeChoice_CTmAdd_mAdd_Bool_r = memOut_CTmAdd_mAdd_Bool_dbuf_r;
  
  /* dbuf (Ty MemIn_CTmAdd_mAdd_Bool) : (memMergeIn_CTmAdd_mAdd_Bool_rbuf,MemIn_CTmAdd_mAdd_Bool) > (memMergeIn_CTmAdd_mAdd_Bool_dbuf,MemIn_CTmAdd_mAdd_Bool) */
  assign memMergeIn_CTmAdd_mAdd_Bool_rbuf_r = ((! memMergeIn_CTmAdd_mAdd_Bool_dbuf_d[0]) || memMergeIn_CTmAdd_mAdd_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CTmAdd_mAdd_Bool_dbuf_d <= {132'd0, 1'd0};
    else
      if (memMergeIn_CTmAdd_mAdd_Bool_rbuf_r)
        memMergeIn_CTmAdd_mAdd_Bool_dbuf_d <= memMergeIn_CTmAdd_mAdd_Bool_rbuf_d;
  
  /* rbuf (Ty MemIn_CTmAdd_mAdd_Bool) : (memMergeIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool) > (memMergeIn_CTmAdd_mAdd_Bool_rbuf,MemIn_CTmAdd_mAdd_Bool) */
  MemIn_CTmAdd_mAdd_Bool_t memMergeIn_CTmAdd_mAdd_Bool_buf;
  assign memMergeIn_CTmAdd_mAdd_Bool_r = (! memMergeIn_CTmAdd_mAdd_Bool_buf[0]);
  assign memMergeIn_CTmAdd_mAdd_Bool_rbuf_d = (memMergeIn_CTmAdd_mAdd_Bool_buf[0] ? memMergeIn_CTmAdd_mAdd_Bool_buf :
                                               memMergeIn_CTmAdd_mAdd_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CTmAdd_mAdd_Bool_buf <= {132'd0, 1'd0};
    else
      if ((memMergeIn_CTmAdd_mAdd_Bool_rbuf_r && memMergeIn_CTmAdd_mAdd_Bool_buf[0]))
        memMergeIn_CTmAdd_mAdd_Bool_buf <= {132'd0, 1'd0};
      else if (((! memMergeIn_CTmAdd_mAdd_Bool_rbuf_r) && (! memMergeIn_CTmAdd_mAdd_Bool_buf[0])))
        memMergeIn_CTmAdd_mAdd_Bool_buf <= memMergeIn_CTmAdd_mAdd_Bool_d;
  
  /* dbuf (Ty MemOut_CTmAdd_mAdd_Bool) : (memOut_CTmAdd_mAdd_Bool_rbuf,MemOut_CTmAdd_mAdd_Bool) > (memOut_CTmAdd_mAdd_Bool_dbuf,MemOut_CTmAdd_mAdd_Bool) */
  assign memOut_CTmAdd_mAdd_Bool_rbuf_r = ((! memOut_CTmAdd_mAdd_Bool_dbuf_d[0]) || memOut_CTmAdd_mAdd_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memOut_CTmAdd_mAdd_Bool_dbuf_d <= {116'd0, 1'd0};
    else
      if (memOut_CTmAdd_mAdd_Bool_rbuf_r)
        memOut_CTmAdd_mAdd_Bool_dbuf_d <= memOut_CTmAdd_mAdd_Bool_rbuf_d;
  
  /* rbuf (Ty MemOut_CTmAdd_mAdd_Bool) : (memOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool) > (memOut_CTmAdd_mAdd_Bool_rbuf,MemOut_CTmAdd_mAdd_Bool) */
  MemOut_CTmAdd_mAdd_Bool_t memOut_CTmAdd_mAdd_Bool_buf;
  assign memOut_CTmAdd_mAdd_Bool_r = (! memOut_CTmAdd_mAdd_Bool_buf[0]);
  assign memOut_CTmAdd_mAdd_Bool_rbuf_d = (memOut_CTmAdd_mAdd_Bool_buf[0] ? memOut_CTmAdd_mAdd_Bool_buf :
                                           memOut_CTmAdd_mAdd_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTmAdd_mAdd_Bool_buf <= {116'd0, 1'd0};
    else
      if ((memOut_CTmAdd_mAdd_Bool_rbuf_r && memOut_CTmAdd_mAdd_Bool_buf[0]))
        memOut_CTmAdd_mAdd_Bool_buf <= {116'd0, 1'd0};
      else if (((! memOut_CTmAdd_mAdd_Bool_rbuf_r) && (! memOut_CTmAdd_mAdd_Bool_buf[0])))
        memOut_CTmAdd_mAdd_Bool_buf <= memOut_CTmAdd_mAdd_Bool_d;
  
  /* destruct (Ty Pointer_CTmAdd_mAdd_Bool,
          Dcon Pointer_CTmAdd_mAdd_Bool) : (scfarg_0_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > [(destructReadIn_CTmAdd_mAdd_Bool,Word16#)] */
  assign destructReadIn_CTmAdd_mAdd_Bool_d = {scfarg_0_1_argbuf_d[16:1],
                                              scfarg_0_1_argbuf_d[0]};
  assign scfarg_0_1_argbuf_r = destructReadIn_CTmAdd_mAdd_Bool_r;
  
  /* dcon (Ty MemIn_CTmAdd_mAdd_Bool,
      Dcon ReadIn_CTmAdd_mAdd_Bool) : [(destructReadIn_CTmAdd_mAdd_Bool,Word16#)] > (dconReadIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool) */
  assign dconReadIn_CTmAdd_mAdd_Bool_d = ReadIn_CTmAdd_mAdd_Bool_dc((& {destructReadIn_CTmAdd_mAdd_Bool_d[0]}), destructReadIn_CTmAdd_mAdd_Bool_d);
  assign {destructReadIn_CTmAdd_mAdd_Bool_r} = {1 {(dconReadIn_CTmAdd_mAdd_Bool_r && dconReadIn_CTmAdd_mAdd_Bool_d[0])}};
  
  /* destruct (Ty MemOut_CTmAdd_mAdd_Bool,
          Dcon ReadOut_CTmAdd_mAdd_Bool) : (memReadOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool) > [(readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf,CTmAdd_mAdd_Bool)] */
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_d = {memReadOut_CTmAdd_mAdd_Bool_d[116:2],
                                                            memReadOut_CTmAdd_mAdd_Bool_d[0]};
  assign memReadOut_CTmAdd_mAdd_Bool_r = readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_r;
  
  /* mergectrl (Ty C5,
           Ty CTmAdd_mAdd_Bool) : [(lizzieLet11_1_argbuf,CTmAdd_mAdd_Bool),
                                   (lizzieLet13_1_argbuf,CTmAdd_mAdd_Bool),
                                   (lizzieLet14_1_argbuf,CTmAdd_mAdd_Bool),
                                   (lizzieLet15_1_argbuf,CTmAdd_mAdd_Bool),
                                   (lizzieLet8_1_argbuf,CTmAdd_mAdd_Bool)] > (writeMerge_choice_CTmAdd_mAdd_Bool,C5) (writeMerge_data_CTmAdd_mAdd_Bool,CTmAdd_mAdd_Bool) */
  logic [4:0] lizzieLet11_1_argbuf_select_d;
  assign lizzieLet11_1_argbuf_select_d = ((| lizzieLet11_1_argbuf_select_q) ? lizzieLet11_1_argbuf_select_q :
                                          (lizzieLet11_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet13_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet14_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet15_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet8_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet11_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet11_1_argbuf_select_q <= (lizzieLet11_1_argbuf_done ? 5'd0 :
                                        lizzieLet11_1_argbuf_select_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet11_1_argbuf_emit_q <= (lizzieLet11_1_argbuf_done ? 2'd0 :
                                      lizzieLet11_1_argbuf_emit_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_d;
  assign lizzieLet11_1_argbuf_emit_d = (lizzieLet11_1_argbuf_emit_q | ({writeMerge_choice_CTmAdd_mAdd_Bool_d[0],
                                                                        writeMerge_data_CTmAdd_mAdd_Bool_d[0]} & {writeMerge_choice_CTmAdd_mAdd_Bool_r,
                                                                                                                  writeMerge_data_CTmAdd_mAdd_Bool_r}));
  logic lizzieLet11_1_argbuf_done;
  assign lizzieLet11_1_argbuf_done = (& lizzieLet11_1_argbuf_emit_d);
  assign {lizzieLet8_1_argbuf_r,
          lizzieLet15_1_argbuf_r,
          lizzieLet14_1_argbuf_r,
          lizzieLet13_1_argbuf_r,
          lizzieLet11_1_argbuf_r} = (lizzieLet11_1_argbuf_done ? lizzieLet11_1_argbuf_select_d :
                                     5'd0);
  assign writeMerge_data_CTmAdd_mAdd_Bool_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet11_1_argbuf_d :
                                               ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet13_1_argbuf_d :
                                                ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet14_1_argbuf_d :
                                                 ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet15_1_argbuf_d :
                                                  ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet8_1_argbuf_d :
                                                   {115'd0, 1'd0})))));
  assign writeMerge_choice_CTmAdd_mAdd_Bool_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                                 ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                                  ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                                   ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                                    ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                                     {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTmAdd_mAdd_Bool) : (writeMerge_choice_CTmAdd_mAdd_Bool,C5) (demuxWriteResult_CTmAdd_mAdd_Bool,Pointer_CTmAdd_mAdd_Bool) > [(writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                              (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                              (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                              (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                              (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf,Pointer_CTmAdd_mAdd_Bool)] */
  logic [4:0] demuxWriteResult_CTmAdd_mAdd_Bool_onehotd;
  always_comb
    if ((writeMerge_choice_CTmAdd_mAdd_Bool_d[0] && demuxWriteResult_CTmAdd_mAdd_Bool_d[0]))
      unique case (writeMerge_choice_CTmAdd_mAdd_Bool_d[3:1])
        3'd0: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd1;
        3'd1: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd2;
        3'd2: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd4;
        3'd3: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd8;
        3'd4: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd16;
        default: demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd0;
      endcase
    else demuxWriteResult_CTmAdd_mAdd_Bool_onehotd = 5'd0;
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Bool_d[16:1],
                                                        demuxWriteResult_CTmAdd_mAdd_Bool_onehotd[0]};
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Bool_d[16:1],
                                                        demuxWriteResult_CTmAdd_mAdd_Bool_onehotd[1]};
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Bool_d[16:1],
                                                        demuxWriteResult_CTmAdd_mAdd_Bool_onehotd[2]};
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Bool_d[16:1],
                                                        demuxWriteResult_CTmAdd_mAdd_Bool_onehotd[3]};
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Bool_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Bool_onehotd[4]};
  assign demuxWriteResult_CTmAdd_mAdd_Bool_r = (| (demuxWriteResult_CTmAdd_mAdd_Bool_onehotd & {writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_r,
                                                                                                writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_r,
                                                                                                writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_r,
                                                                                                writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_r,
                                                                                                writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_r}));
  assign writeMerge_choice_CTmAdd_mAdd_Bool_r = demuxWriteResult_CTmAdd_mAdd_Bool_r;
  
  /* dcon (Ty MemIn_CTmAdd_mAdd_Bool,
      Dcon WriteIn_CTmAdd_mAdd_Bool) : [(forkHP1_CTmAdd_mAdd_Boo2,Word16#),
                                        (writeMerge_data_CTmAdd_mAdd_Bool,CTmAdd_mAdd_Bool)] > (dconWriteIn_CTmAdd_mAdd_Bool,MemIn_CTmAdd_mAdd_Bool) */
  assign dconWriteIn_CTmAdd_mAdd_Bool_d = WriteIn_CTmAdd_mAdd_Bool_dc((& {forkHP1_CTmAdd_mAdd_Boo2_d[0],
                                                                          writeMerge_data_CTmAdd_mAdd_Bool_d[0]}), forkHP1_CTmAdd_mAdd_Boo2_d, writeMerge_data_CTmAdd_mAdd_Bool_d);
  assign {forkHP1_CTmAdd_mAdd_Boo2_r,
          writeMerge_data_CTmAdd_mAdd_Bool_r} = {2 {(dconWriteIn_CTmAdd_mAdd_Bool_r && dconWriteIn_CTmAdd_mAdd_Bool_d[0])}};
  
  /* dcon (Ty Pointer_CTmAdd_mAdd_Bool,
      Dcon Pointer_CTmAdd_mAdd_Bool) : [(forkHP1_CTmAdd_mAdd_Boo3,Word16#)] > (dconPtr_CTmAdd_mAdd_Bool,Pointer_CTmAdd_mAdd_Bool) */
  assign dconPtr_CTmAdd_mAdd_Bool_d = Pointer_CTmAdd_mAdd_Bool_dc((& {forkHP1_CTmAdd_mAdd_Boo3_d[0]}), forkHP1_CTmAdd_mAdd_Boo3_d);
  assign {forkHP1_CTmAdd_mAdd_Boo3_r} = {1 {(dconPtr_CTmAdd_mAdd_Bool_r && dconPtr_CTmAdd_mAdd_Bool_d[0])}};
  
  /* demux (Ty MemOut_CTmAdd_mAdd_Bool,
       Ty Pointer_CTmAdd_mAdd_Bool) : (memWriteOut_CTmAdd_mAdd_Bool,MemOut_CTmAdd_mAdd_Bool) (dconPtr_CTmAdd_mAdd_Bool,Pointer_CTmAdd_mAdd_Bool) > [(_57,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                                    (demuxWriteResult_CTmAdd_mAdd_Bool,Pointer_CTmAdd_mAdd_Bool)] */
  logic [1:0] dconPtr_CTmAdd_mAdd_Bool_onehotd;
  always_comb
    if ((memWriteOut_CTmAdd_mAdd_Bool_d[0] && dconPtr_CTmAdd_mAdd_Bool_d[0]))
      unique case (memWriteOut_CTmAdd_mAdd_Bool_d[1:1])
        1'd0: dconPtr_CTmAdd_mAdd_Bool_onehotd = 2'd1;
        1'd1: dconPtr_CTmAdd_mAdd_Bool_onehotd = 2'd2;
        default: dconPtr_CTmAdd_mAdd_Bool_onehotd = 2'd0;
      endcase
    else dconPtr_CTmAdd_mAdd_Bool_onehotd = 2'd0;
  assign _57_d = {dconPtr_CTmAdd_mAdd_Bool_d[16:1],
                  dconPtr_CTmAdd_mAdd_Bool_onehotd[0]};
  assign demuxWriteResult_CTmAdd_mAdd_Bool_d = {dconPtr_CTmAdd_mAdd_Bool_d[16:1],
                                                dconPtr_CTmAdd_mAdd_Bool_onehotd[1]};
  assign dconPtr_CTmAdd_mAdd_Bool_r = (| (dconPtr_CTmAdd_mAdd_Bool_onehotd & {demuxWriteResult_CTmAdd_mAdd_Bool_r,
                                                                              _57_r}));
  assign memWriteOut_CTmAdd_mAdd_Bool_r = dconPtr_CTmAdd_mAdd_Bool_r;
  
  /* source (Ty Go) : > (sourceGo,Go) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m1aem_0,Pointer_QTree_Bool) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m2aen_1,Pointer_QTree_Bool) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m3aeo_2,Pointer_QTree_Bool) */
  
  /* destruct (Ty TupGo___MyDTBool_Bool___MyBool,
          Dcon TupGo___MyDTBool_Bool___MyBool) : (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1,TupGo___MyDTBool_Bool___MyBool) > [(applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2,Go),
                                                                                                                                        (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0,MyDTBool_Bool),
                                                                                                                                        (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1,MyBool)] */
  logic [2:0] applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted;
  logic [2:0] applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_done;
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted[0]));
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted[1]));
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d = {applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d[1:1],
                                                                   (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted[2]))};
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_done = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted | ({applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d[0],
                                                                                                                                   applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d[0],
                                                                                                                                   applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d[0]} & {applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_r,
                                                                                                                                                                                                 applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_r,
                                                                                                                                                                                                 applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_r}));
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_r = (& applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted <= 3'd0;
    else
      applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_emitted <= (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_r ? 3'd0 :
                                                                     applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_done);
  
  /* fork (Ty MyDTBool_Bool) : (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0,MyDTBool_Bool) > [(arg0_1,MyDTBool_Bool),
                                                                                                  (arg0_2,MyDTBool_Bool),
                                                                                                  (arg0_3,MyDTBool_Bool)] */
  logic [2:0] applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted;
  logic [2:0] applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_done;
  assign arg0_1_d = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted[0]));
  assign arg0_2_d = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted[1]));
  assign arg0_3_d = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_d[0] && (! applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted[2]));
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_done = (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted | ({arg0_3_d[0],
                                                                                                                                       arg0_2_d[0],
                                                                                                                                       arg0_1_d[0]} & {arg0_3_r,
                                                                                                                                                       arg0_2_r,
                                                                                                                                                       arg0_1_r}));
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_r = (& applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted <= 3'd0;
    else
      applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_emitted <= (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_r ? 3'd0 :
                                                                       applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg0_done);
  
  /* fork (Ty MyBool) : (applyfnBool_Bool_5_resbuf,MyBool) > [(es_0_1_1,MyBool),
                                                         (es_0_1_2,MyBool),
                                                         (es_0_1_3,MyBool)] */
  logic [2:0] applyfnBool_Bool_5_resbuf_emitted;
  logic [2:0] applyfnBool_Bool_5_resbuf_done;
  assign es_0_1_1_d = {applyfnBool_Bool_5_resbuf_d[1:1],
                       (applyfnBool_Bool_5_resbuf_d[0] && (! applyfnBool_Bool_5_resbuf_emitted[0]))};
  assign es_0_1_2_d = {applyfnBool_Bool_5_resbuf_d[1:1],
                       (applyfnBool_Bool_5_resbuf_d[0] && (! applyfnBool_Bool_5_resbuf_emitted[1]))};
  assign es_0_1_3_d = {applyfnBool_Bool_5_resbuf_d[1:1],
                       (applyfnBool_Bool_5_resbuf_d[0] && (! applyfnBool_Bool_5_resbuf_emitted[2]))};
  assign applyfnBool_Bool_5_resbuf_done = (applyfnBool_Bool_5_resbuf_emitted | ({es_0_1_3_d[0],
                                                                                 es_0_1_2_d[0],
                                                                                 es_0_1_1_d[0]} & {es_0_1_3_r,
                                                                                                   es_0_1_2_r,
                                                                                                   es_0_1_1_r}));
  assign applyfnBool_Bool_5_resbuf_r = (& applyfnBool_Bool_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) applyfnBool_Bool_5_resbuf_emitted <= 3'd0;
    else
      applyfnBool_Bool_5_resbuf_emitted <= (applyfnBool_Bool_5_resbuf_r ? 3'd0 :
                                            applyfnBool_Bool_5_resbuf_done);
  
  /* destruct (Ty TupGo___MyDTBool_Bool_Bool___MyBool___MyBool,
          Dcon TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) : (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1,TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) > [(applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3,Go),
                                                                                                                                                                                       (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2,MyDTBool_Bool_Bool),
                                                                                                                                                                                       (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2,MyBool),
                                                                                                                                                                                       (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1,MyBool)] */
  logic [3:0] applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted;
  logic [3:0] applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_done;
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted[0]));
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted[1]));
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d = {applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[1:1],
                                                                                      (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted[2]))};
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d = {applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[2:2],
                                                                                        (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted[3]))};
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_done = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted | ({applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d[0],
                                                                                                                                                                         applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d[0],
                                                                                                                                                                         applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d[0],
                                                                                                                                                                         applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d[0]} & {applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_r,
                                                                                                                                                                                                                                                          applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_r,
                                                                                                                                                                                                                                                          applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_r,
                                                                                                                                                                                                                                                          applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_r}));
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r = (& applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted <= 4'd0;
    else
      applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_emitted <= (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r ? 4'd0 :
                                                                                        applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_done);
  
  /* fork (Ty MyDTBool_Bool_Bool) : (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2,MyDTBool_Bool_Bool) > [(arg0_2_1,MyDTBool_Bool_Bool),
                                                                                                                                 (arg0_2_2,MyDTBool_Bool_Bool),
                                                                                                                                 (arg0_2_3,MyDTBool_Bool_Bool),
                                                                                                                                 (arg0_2_4,MyDTBool_Bool_Bool)] */
  logic [3:0] applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted;
  logic [3:0] applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_done;
  assign arg0_2_1_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted[0]));
  assign arg0_2_2_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted[1]));
  assign arg0_2_3_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted[2]));
  assign arg0_2_4_d = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_d[0] && (! applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted[3]));
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_done = (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted | ({arg0_2_4_d[0],
                                                                                                                                                                                 arg0_2_3_d[0],
                                                                                                                                                                                 arg0_2_2_d[0],
                                                                                                                                                                                 arg0_2_1_d[0]} & {arg0_2_4_r,
                                                                                                                                                                                                   arg0_2_3_r,
                                                                                                                                                                                                   arg0_2_2_r,
                                                                                                                                                                                                   arg0_2_1_r}));
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_r = (& applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted <= 4'd0;
    else
      applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_emitted <= (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_r ? 4'd0 :
                                                                                            applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg0_2_done);
  
  /* fork (Ty MyBool) : (applyfnBool_Bool_Bool_5_resbuf,MyBool) > [(xa85_1,MyBool),
                                                              (xa85_2,MyBool)] */
  logic [1:0] applyfnBool_Bool_Bool_5_resbuf_emitted;
  logic [1:0] applyfnBool_Bool_Bool_5_resbuf_done;
  assign xa85_1_d = {applyfnBool_Bool_Bool_5_resbuf_d[1:1],
                     (applyfnBool_Bool_Bool_5_resbuf_d[0] && (! applyfnBool_Bool_Bool_5_resbuf_emitted[0]))};
  assign xa85_2_d = {applyfnBool_Bool_Bool_5_resbuf_d[1:1],
                     (applyfnBool_Bool_Bool_5_resbuf_d[0] && (! applyfnBool_Bool_Bool_5_resbuf_emitted[1]))};
  assign applyfnBool_Bool_Bool_5_resbuf_done = (applyfnBool_Bool_Bool_5_resbuf_emitted | ({xa85_2_d[0],
                                                                                           xa85_1_d[0]} & {xa85_2_r,
                                                                                                           xa85_1_r}));
  assign applyfnBool_Bool_Bool_5_resbuf_r = (& applyfnBool_Bool_Bool_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Bool_Bool_5_resbuf_emitted <= 2'd0;
    else
      applyfnBool_Bool_Bool_5_resbuf_emitted <= (applyfnBool_Bool_Bool_5_resbuf_r ? 2'd0 :
                                                 applyfnBool_Bool_Bool_5_resbuf_done);
  
  /* demux (Ty MyDTBool_Bool,
       Ty MyBool) : (arg0_1,MyDTBool_Bool) (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1,MyBool) > [(arg0_1Dcon_isZ,MyBool)] */
  assign arg0_1Dcon_isZ_d = {applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d[1:1],
                             (arg0_1_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d[0])};
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_r = (arg0_1Dcon_isZ_r && (arg0_1_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d[0]));
  assign arg0_1_r = (arg0_1Dcon_isZ_r && (arg0_1_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolarg1_d[0]));
  
  /* fork (Ty MyBool) : (arg0_1Dcon_isZ,MyBool) > [(arg0_1Dcon_isZ_1,MyBool),
                                              (arg0_1Dcon_isZ_2,MyBool)] */
  logic [1:0] arg0_1Dcon_isZ_emitted;
  logic [1:0] arg0_1Dcon_isZ_done;
  assign arg0_1Dcon_isZ_1_d = {arg0_1Dcon_isZ_d[1:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[0]))};
  assign arg0_1Dcon_isZ_2_d = {arg0_1Dcon_isZ_d[1:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[1]))};
  assign arg0_1Dcon_isZ_done = (arg0_1Dcon_isZ_emitted | ({arg0_1Dcon_isZ_2_d[0],
                                                           arg0_1Dcon_isZ_1_d[0]} & {arg0_1Dcon_isZ_2_r,
                                                                                     arg0_1Dcon_isZ_1_r}));
  assign arg0_1Dcon_isZ_r = (& arg0_1Dcon_isZ_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_1Dcon_isZ_emitted <= 2'd0;
    else
      arg0_1Dcon_isZ_emitted <= (arg0_1Dcon_isZ_r ? 2'd0 :
                                 arg0_1Dcon_isZ_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (arg0_1Dcon_isZ_1,MyBool) (arg0_2Dcon_isZ,Go) > [(arg0_1Dcon_isZ_1MyFalse,Go),
                                                                 (arg0_1Dcon_isZ_1MyTrue,Go)] */
  logic [1:0] arg0_2Dcon_isZ_onehotd;
  always_comb
    if ((arg0_1Dcon_isZ_1_d[0] && arg0_2Dcon_isZ_d[0]))
      unique case (arg0_1Dcon_isZ_1_d[1:1])
        1'd0: arg0_2Dcon_isZ_onehotd = 2'd1;
        1'd1: arg0_2Dcon_isZ_onehotd = 2'd2;
        default: arg0_2Dcon_isZ_onehotd = 2'd0;
      endcase
    else arg0_2Dcon_isZ_onehotd = 2'd0;
  assign arg0_1Dcon_isZ_1MyFalse_d = arg0_2Dcon_isZ_onehotd[0];
  assign arg0_1Dcon_isZ_1MyTrue_d = arg0_2Dcon_isZ_onehotd[1];
  assign arg0_2Dcon_isZ_r = (| (arg0_2Dcon_isZ_onehotd & {arg0_1Dcon_isZ_1MyTrue_r,
                                                          arg0_1Dcon_isZ_1MyFalse_r}));
  assign arg0_1Dcon_isZ_1_r = arg0_2Dcon_isZ_r;
  
  /* dcon (Ty MyBool,
      Dcon MyTrue) : [(arg0_1Dcon_isZ_1MyFalse,Go)] > (arg0_1Dcon_isZ_1MyFalse_1MyTrue,MyBool) */
  assign arg0_1Dcon_isZ_1MyFalse_1MyTrue_d = MyTrue_dc((& {arg0_1Dcon_isZ_1MyFalse_d[0]}), arg0_1Dcon_isZ_1MyFalse_d);
  assign {arg0_1Dcon_isZ_1MyFalse_r} = {1 {(arg0_1Dcon_isZ_1MyFalse_1MyTrue_r && arg0_1Dcon_isZ_1MyFalse_1MyTrue_d[0])}};
  
  /* buf (Ty MyBool) : (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux,MyBool) > (applyfnBool_Bool_5_resbuf,MyBool) */
  MyBool_t arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d;
  logic arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_r;
  assign arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_r = ((! arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d[0]) || arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d <= {1'd0,
                                                                                           1'd0};
    else
      if (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_r)
        arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d <= arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_d;
  MyBool_t arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf;
  assign arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_r = (! arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf[0]);
  assign applyfnBool_Bool_5_resbuf_d = (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf[0] ? arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf :
                                        arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf <= {1'd0,
                                                                                             1'd0};
    else
      if ((applyfnBool_Bool_5_resbuf_r && arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf[0]))
        arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf <= {1'd0,
                                                                                               1'd0};
      else if (((! applyfnBool_Bool_5_resbuf_r) && (! arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf[0])))
        arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_buf <= arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_bufchan_d;
  
  /* dcon (Ty MyBool,
      Dcon MyFalse) : [(arg0_1Dcon_isZ_1MyTrue,Go)] > (arg0_1Dcon_isZ_1MyTrue_1MyFalse,MyBool) */
  assign arg0_1Dcon_isZ_1MyTrue_1MyFalse_d = MyFalse_dc((& {arg0_1Dcon_isZ_1MyTrue_d[0]}), arg0_1Dcon_isZ_1MyTrue_d);
  assign {arg0_1Dcon_isZ_1MyTrue_r} = {1 {(arg0_1Dcon_isZ_1MyTrue_1MyFalse_r && arg0_1Dcon_isZ_1MyTrue_1MyFalse_d[0])}};
  
  /* mux (Ty MyBool,
     Ty MyBool) : (arg0_1Dcon_isZ_2,MyBool) [(arg0_1Dcon_isZ_1MyFalse_1MyTrue,MyBool),
                                             (arg0_1Dcon_isZ_1MyTrue_1MyFalse,MyBool)] > (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux,MyBool) */
  logic [1:0] arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux;
  logic [1:0] arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_onehot;
  always_comb
    unique case (arg0_1Dcon_isZ_2_d[1:1])
      1'd0:
        {arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_onehot,
         arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux} = {2'd1,
                                                                                    arg0_1Dcon_isZ_1MyFalse_1MyTrue_d};
      1'd1:
        {arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_onehot,
         arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux} = {2'd2,
                                                                                    arg0_1Dcon_isZ_1MyTrue_1MyFalse_d};
      default:
        {arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_onehot,
         arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux} = {2'd0,
                                                                                    {1'd0, 1'd0}};
    endcase
  assign arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d = {arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux[1:1],
                                                                                 (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux[0] && arg0_1Dcon_isZ_2_d[0])};
  assign arg0_1Dcon_isZ_2_r = (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d[0] && arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_r);
  assign {arg0_1Dcon_isZ_1MyTrue_1MyFalse_r,
          arg0_1Dcon_isZ_1MyFalse_1MyTrue_r} = (arg0_1Dcon_isZ_2_r ? arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_onehot :
                                                2'd0);
  
  /* demux (Ty MyDTBool_Bool,
       Ty Go) : (arg0_2,MyDTBool_Bool) (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2,Go) > [(arg0_2Dcon_isZ,Go)] */
  assign arg0_2Dcon_isZ_d = (arg0_2_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d[0]);
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_r = (arg0_2Dcon_isZ_r && (arg0_2_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d[0]));
  assign arg0_2_r = (arg0_2Dcon_isZ_r && (arg0_2_d[0] && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBoolgo_2_d[0]));
  
  /* demux (Ty MyDTBool_Bool_Bool,
       Ty MyBool) : (arg0_2_1,MyDTBool_Bool_Bool) (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1,MyBool) > [(arg0_2_1Dcon_||,MyBool)] */
  assign \arg0_2_1Dcon_||_d  = {applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d[1:1],
                                (arg0_2_1_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d[0])};
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_r = (\arg0_2_1Dcon_||_r  && (arg0_2_1_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d[0]));
  assign arg0_2_1_r = (\arg0_2_1Dcon_||_r  && (arg0_2_1_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg1_1_d[0]));
  
  /* demux (Ty MyDTBool_Bool_Bool,
       Ty MyBool) : (arg0_2_2,MyDTBool_Bool_Bool) (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2,MyBool) > [(arg0_2_2Dcon_||,MyBool)] */
  assign \arg0_2_2Dcon_||_d  = {applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d[1:1],
                                (arg0_2_2_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d[0])};
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_r = (\arg0_2_2Dcon_||_r  && (arg0_2_2_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d[0]));
  assign arg0_2_2_r = (\arg0_2_2Dcon_||_r  && (arg0_2_2_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolarg2_d[0]));
  
  /* fork (Ty MyBool) : (arg0_2_2Dcon_||,MyBool) > [(arg0_2_2Dcon_||_1,MyBool),
                                               (arg0_2_2Dcon_||_2,MyBool),
                                               (arg0_2_2Dcon_||_3,MyBool)] */
  logic [2:0] \arg0_2_2Dcon_||_emitted ;
  logic [2:0] \arg0_2_2Dcon_||_done ;
  assign \arg0_2_2Dcon_||_1_d  = {\arg0_2_2Dcon_||_d [1:1],
                                  (\arg0_2_2Dcon_||_d [0] && (! \arg0_2_2Dcon_||_emitted [0]))};
  assign \arg0_2_2Dcon_||_2_d  = {\arg0_2_2Dcon_||_d [1:1],
                                  (\arg0_2_2Dcon_||_d [0] && (! \arg0_2_2Dcon_||_emitted [1]))};
  assign \arg0_2_2Dcon_||_3_d  = {\arg0_2_2Dcon_||_d [1:1],
                                  (\arg0_2_2Dcon_||_d [0] && (! \arg0_2_2Dcon_||_emitted [2]))};
  assign \arg0_2_2Dcon_||_done  = (\arg0_2_2Dcon_||_emitted  | ({\arg0_2_2Dcon_||_3_d [0],
                                                                 \arg0_2_2Dcon_||_2_d [0],
                                                                 \arg0_2_2Dcon_||_1_d [0]} & {\arg0_2_2Dcon_||_3_r ,
                                                                                              \arg0_2_2Dcon_||_2_r ,
                                                                                              \arg0_2_2Dcon_||_1_r }));
  assign \arg0_2_2Dcon_||_r  = (& \arg0_2_2Dcon_||_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_2_2Dcon_||_emitted  <= 3'd0;
    else
      \arg0_2_2Dcon_||_emitted  <= (\arg0_2_2Dcon_||_r  ? 3'd0 :
                                    \arg0_2_2Dcon_||_done );
  
  /* demux (Ty MyBool,
       Ty MyBool) : (arg0_2_2Dcon_||_1,MyBool) (arg0_2_1Dcon_||,MyBool) > [(arg0_2_2Dcon_||_1MyFalse,MyBool),
                                                                           (_56,MyBool)] */
  logic [1:0] \arg0_2_1Dcon_||_onehotd ;
  always_comb
    if ((\arg0_2_2Dcon_||_1_d [0] && \arg0_2_1Dcon_||_d [0]))
      unique case (\arg0_2_2Dcon_||_1_d [1:1])
        1'd0: \arg0_2_1Dcon_||_onehotd  = 2'd1;
        1'd1: \arg0_2_1Dcon_||_onehotd  = 2'd2;
        default: \arg0_2_1Dcon_||_onehotd  = 2'd0;
      endcase
    else \arg0_2_1Dcon_||_onehotd  = 2'd0;
  assign \arg0_2_2Dcon_||_1MyFalse_d  = {\arg0_2_1Dcon_||_d [1:1],
                                         \arg0_2_1Dcon_||_onehotd [0]};
  assign _56_d = {\arg0_2_1Dcon_||_d [1:1],
                  \arg0_2_1Dcon_||_onehotd [1]};
  assign \arg0_2_1Dcon_||_r  = (| (\arg0_2_1Dcon_||_onehotd  & {_56_r,
                                                                \arg0_2_2Dcon_||_1MyFalse_r }));
  assign \arg0_2_2Dcon_||_1_r  = \arg0_2_1Dcon_||_r ;
  
  /* buf (Ty MyBool) : (arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux,MyBool) > (applyfnBool_Bool_Bool_5_resbuf,MyBool) */
  MyBool_t \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d ;
  logic \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_r ;
  assign \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_r  = ((! \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d [0]) || \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d  <= {1'd0,
                                                                                        1'd0};
    else
      if (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_r )
        \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d  <= \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_d ;
  MyBool_t \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf ;
  assign \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_r  = (! \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf [0]);
  assign applyfnBool_Bool_Bool_5_resbuf_d = (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf [0] ? \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf  :
                                             \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf  <= {1'd0,
                                                                                          1'd0};
    else
      if ((applyfnBool_Bool_Bool_5_resbuf_r && \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf [0]))
        \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf  <= {1'd0,
                                                                                            1'd0};
      else if (((! applyfnBool_Bool_Bool_5_resbuf_r) && (! \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf [0])))
        \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_buf  <= \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_bufchan_d ;
  
  /* demux (Ty MyBool,
       Ty Go) : (arg0_2_2Dcon_||_2,MyBool) (arg0_2_3Dcon_||,Go) > [(_55,Go),
                                                                   (arg0_2_2Dcon_||_2MyTrue,Go)] */
  logic [1:0] \arg0_2_3Dcon_||_onehotd ;
  always_comb
    if ((\arg0_2_2Dcon_||_2_d [0] && \arg0_2_3Dcon_||_d [0]))
      unique case (\arg0_2_2Dcon_||_2_d [1:1])
        1'd0: \arg0_2_3Dcon_||_onehotd  = 2'd1;
        1'd1: \arg0_2_3Dcon_||_onehotd  = 2'd2;
        default: \arg0_2_3Dcon_||_onehotd  = 2'd0;
      endcase
    else \arg0_2_3Dcon_||_onehotd  = 2'd0;
  assign _55_d = \arg0_2_3Dcon_||_onehotd [0];
  assign \arg0_2_2Dcon_||_2MyTrue_d  = \arg0_2_3Dcon_||_onehotd [1];
  assign \arg0_2_3Dcon_||_r  = (| (\arg0_2_3Dcon_||_onehotd  & {\arg0_2_2Dcon_||_2MyTrue_r ,
                                                                _55_r}));
  assign \arg0_2_2Dcon_||_2_r  = \arg0_2_3Dcon_||_r ;
  
  /* dcon (Ty MyBool,
      Dcon MyTrue) : [(arg0_2_2Dcon_||_2MyTrue,Go)] > (arg0_2_2Dcon_||_2MyTrue_1MyTrue,MyBool) */
  assign \arg0_2_2Dcon_||_2MyTrue_1MyTrue_d  = MyTrue_dc((& {\arg0_2_2Dcon_||_2MyTrue_d [0]}), \arg0_2_2Dcon_||_2MyTrue_d );
  assign {\arg0_2_2Dcon_||_2MyTrue_r } = {1 {(\arg0_2_2Dcon_||_2MyTrue_1MyTrue_r  && \arg0_2_2Dcon_||_2MyTrue_1MyTrue_d [0])}};
  
  /* mux (Ty MyBool,
     Ty MyBool) : (arg0_2_2Dcon_||_3,MyBool) [(arg0_2_2Dcon_||_1MyFalse,MyBool),
                                              (arg0_2_2Dcon_||_2MyTrue_1MyTrue,MyBool)] > (arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux,MyBool) */
  logic [1:0] \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux ;
  logic [1:0] \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_onehot ;
  always_comb
    unique case (\arg0_2_2Dcon_||_3_d [1:1])
      1'd0:
        {\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_onehot ,
         \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux } = {2'd1,
                                                                                 \arg0_2_2Dcon_||_1MyFalse_d };
      1'd1:
        {\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_onehot ,
         \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux } = {2'd2,
                                                                                 \arg0_2_2Dcon_||_2MyTrue_1MyTrue_d };
      default:
        {\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_onehot ,
         \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux } = {2'd0,
                                                                                 {1'd0, 1'd0}};
    endcase
  assign \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d  = {\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux [1:1],
                                                                              (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux [0] && \arg0_2_2Dcon_||_3_d [0])};
  assign \arg0_2_2Dcon_||_3_r  = (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d [0] && \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_r );
  assign {\arg0_2_2Dcon_||_2MyTrue_1MyTrue_r ,
          \arg0_2_2Dcon_||_1MyFalse_r } = (\arg0_2_2Dcon_||_3_r  ? \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_onehot  :
                                           2'd0);
  
  /* demux (Ty MyDTBool_Bool_Bool,
       Ty Go) : (arg0_2_3,MyDTBool_Bool_Bool) (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3,Go) > [(arg0_2_3Dcon_||,Go)] */
  assign \arg0_2_3Dcon_||_d  = (arg0_2_3_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d[0]);
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_r = (\arg0_2_3Dcon_||_r  && (arg0_2_3_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d[0]));
  assign arg0_2_3_r = (\arg0_2_3Dcon_||_r  && (arg0_2_3_d[0] && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBoolgo_3_d[0]));
  
  /* mux (Ty MyDTBool_Bool_Bool,
     Ty MyBool) : (arg0_2_4,MyDTBool_Bool_Bool) [(arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux,MyBool)] > (arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux,MyBool) */
  assign \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_d  = {\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d [1:1],
                                                                                  (arg0_2_4_d[0] && \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d [0])};
  assign \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_r  = (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_r  && (arg0_2_4_d[0] && \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d [0]));
  assign arg0_2_4_r = (\arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_mux_r  && (arg0_2_4_d[0] && \arg0_2_2Dcon_||_1MyFalse_1arg0_2_2Dcon_||_2MyTrue_1MyTrue_mux_d [0]));
  
  /* mux (Ty MyDTBool_Bool,
     Ty MyBool) : (arg0_3,MyDTBool_Bool) [(arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux,MyBool)] > (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux,MyBool) */
  assign arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_d = {arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d[1:1],
                                                                                     (arg0_3_d[0] && arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d[0])};
  assign arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_r = (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_r && (arg0_3_d[0] && arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d[0]));
  assign arg0_3_r = (arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_mux_r && (arg0_3_d[0] && arg0_1Dcon_isZ_1MyFalse_1MyTruearg0_1Dcon_isZ_1MyTrue_1MyFalse_mux_d[0]));
  
  /* destruct (Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool,
          Dcon TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool) : (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool) > [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4,Go),
                                                                                                                                                                                                                                                                                                                                                                                            (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86,MyDTBool_Bool),
                                                                                                                                                                                                                                                                                                                                                                                            (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87,MyDTBool_Bool_Bool),
                                                                                                                                                                                                                                                                                                                                                                                            (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                                                                                                                                                            (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                                                                                                                                                            (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0,Pointer_CTmAdd_mAdd_Bool)] */
  logic [5:0] call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted;
  logic [5:0] call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_done;
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d = (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[0]));
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d = (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[1]));
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d = (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[2]));
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[16:1],
                                                                                                                                                      (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[3]))};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[32:17],
                                                                                                                                                      (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[4]))};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[48:33],
                                                                                                                                                     (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0] && (! call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted[5]))};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_done = (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted | ({call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d[0],
                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d[0],
                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d[0],
                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d[0],
                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d[0],
                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d[0]} & {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_r}));
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_r = (& call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted <= 6'd0;
    else
      call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_emitted <= (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_r ? 6'd0 :
                                                                                                                                                       call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_done);
  
  /* rbuf (Ty Go) : (call_mAdd_mAdd_Bool_goConst,Go) > (call_mAdd_mAdd_Bool_initBufi,Go) */
  Go_t call_mAdd_mAdd_Bool_goConst_buf;
  assign call_mAdd_mAdd_Bool_goConst_r = (! call_mAdd_mAdd_Bool_goConst_buf[0]);
  assign call_mAdd_mAdd_Bool_initBufi_d = (call_mAdd_mAdd_Bool_goConst_buf[0] ? call_mAdd_mAdd_Bool_goConst_buf :
                                           call_mAdd_mAdd_Bool_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Bool_goConst_buf <= 1'd0;
    else
      if ((call_mAdd_mAdd_Bool_initBufi_r && call_mAdd_mAdd_Bool_goConst_buf[0]))
        call_mAdd_mAdd_Bool_goConst_buf <= 1'd0;
      else if (((! call_mAdd_mAdd_Bool_initBufi_r) && (! call_mAdd_mAdd_Bool_goConst_buf[0])))
        call_mAdd_mAdd_Bool_goConst_buf <= call_mAdd_mAdd_Bool_goConst_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_mAdd_mAdd_Bool_goMux1,Go),
                           (lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf,Go),
                           (lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf,Go),
                           (lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf,Go),
                           (lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf,Go)] > (go_4_goMux_choice,C5) (go_4_goMux_data,Go) */
  logic [4:0] call_mAdd_mAdd_Bool_goMux1_select_d;
  assign call_mAdd_mAdd_Bool_goMux1_select_d = ((| call_mAdd_mAdd_Bool_goMux1_select_q) ? call_mAdd_mAdd_Bool_goMux1_select_q :
                                                (call_mAdd_mAdd_Bool_goMux1_d[0] ? 5'd1 :
                                                 (lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_d[0] ? 5'd2 :
                                                  (lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_d[0] ? 5'd4 :
                                                   (lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_d[0] ? 5'd8 :
                                                    (lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                                     5'd0))))));
  logic [4:0] call_mAdd_mAdd_Bool_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Bool_goMux1_select_q <= 5'd0;
    else
      call_mAdd_mAdd_Bool_goMux1_select_q <= (call_mAdd_mAdd_Bool_goMux1_done ? 5'd0 :
                                              call_mAdd_mAdd_Bool_goMux1_select_d);
  logic [1:0] call_mAdd_mAdd_Bool_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Bool_goMux1_emit_q <= 2'd0;
    else
      call_mAdd_mAdd_Bool_goMux1_emit_q <= (call_mAdd_mAdd_Bool_goMux1_done ? 2'd0 :
                                            call_mAdd_mAdd_Bool_goMux1_emit_d);
  logic [1:0] call_mAdd_mAdd_Bool_goMux1_emit_d;
  assign call_mAdd_mAdd_Bool_goMux1_emit_d = (call_mAdd_mAdd_Bool_goMux1_emit_q | ({go_4_goMux_choice_d[0],
                                                                                    go_4_goMux_data_d[0]} & {go_4_goMux_choice_r,
                                                                                                             go_4_goMux_data_r}));
  logic call_mAdd_mAdd_Bool_goMux1_done;
  assign call_mAdd_mAdd_Bool_goMux1_done = (& call_mAdd_mAdd_Bool_goMux1_emit_d);
  assign {lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_r,
          lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_r,
          lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_r,
          lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_r,
          call_mAdd_mAdd_Bool_goMux1_r} = (call_mAdd_mAdd_Bool_goMux1_done ? call_mAdd_mAdd_Bool_goMux1_select_d :
                                           5'd0);
  assign go_4_goMux_data_d = ((call_mAdd_mAdd_Bool_goMux1_select_d[0] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[0])) ? call_mAdd_mAdd_Bool_goMux1_d :
                              ((call_mAdd_mAdd_Bool_goMux1_select_d[1] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[0])) ? lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_d :
                               ((call_mAdd_mAdd_Bool_goMux1_select_d[2] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[0])) ? lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_d :
                                ((call_mAdd_mAdd_Bool_goMux1_select_d[3] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[0])) ? lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_d :
                                 ((call_mAdd_mAdd_Bool_goMux1_select_d[4] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[0])) ? lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_4_goMux_choice_d = ((call_mAdd_mAdd_Bool_goMux1_select_d[0] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[1])) ? C1_5_dc(1'd1) :
                                ((call_mAdd_mAdd_Bool_goMux1_select_d[1] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[1])) ? C2_5_dc(1'd1) :
                                 ((call_mAdd_mAdd_Bool_goMux1_select_d[2] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[1])) ? C3_5_dc(1'd1) :
                                  ((call_mAdd_mAdd_Bool_goMux1_select_d[3] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[1])) ? C4_5_dc(1'd1) :
                                   ((call_mAdd_mAdd_Bool_goMux1_select_d[4] && (! call_mAdd_mAdd_Bool_goMux1_emit_q[1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_mAdd_mAdd_Bool_initBuf,Go) > [(call_mAdd_mAdd_Bool_unlockFork1,Go),
                                                   (call_mAdd_mAdd_Bool_unlockFork2,Go),
                                                   (call_mAdd_mAdd_Bool_unlockFork3,Go),
                                                   (call_mAdd_mAdd_Bool_unlockFork4,Go),
                                                   (call_mAdd_mAdd_Bool_unlockFork5,Go),
                                                   (call_mAdd_mAdd_Bool_unlockFork6,Go)] */
  logic [5:0] call_mAdd_mAdd_Bool_initBuf_emitted;
  logic [5:0] call_mAdd_mAdd_Bool_initBuf_done;
  assign call_mAdd_mAdd_Bool_unlockFork1_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[0]));
  assign call_mAdd_mAdd_Bool_unlockFork2_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[1]));
  assign call_mAdd_mAdd_Bool_unlockFork3_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[2]));
  assign call_mAdd_mAdd_Bool_unlockFork4_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[3]));
  assign call_mAdd_mAdd_Bool_unlockFork5_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[4]));
  assign call_mAdd_mAdd_Bool_unlockFork6_d = (call_mAdd_mAdd_Bool_initBuf_d[0] && (! call_mAdd_mAdd_Bool_initBuf_emitted[5]));
  assign call_mAdd_mAdd_Bool_initBuf_done = (call_mAdd_mAdd_Bool_initBuf_emitted | ({call_mAdd_mAdd_Bool_unlockFork6_d[0],
                                                                                     call_mAdd_mAdd_Bool_unlockFork5_d[0],
                                                                                     call_mAdd_mAdd_Bool_unlockFork4_d[0],
                                                                                     call_mAdd_mAdd_Bool_unlockFork3_d[0],
                                                                                     call_mAdd_mAdd_Bool_unlockFork2_d[0],
                                                                                     call_mAdd_mAdd_Bool_unlockFork1_d[0]} & {call_mAdd_mAdd_Bool_unlockFork6_r,
                                                                                                                              call_mAdd_mAdd_Bool_unlockFork5_r,
                                                                                                                              call_mAdd_mAdd_Bool_unlockFork4_r,
                                                                                                                              call_mAdd_mAdd_Bool_unlockFork3_r,
                                                                                                                              call_mAdd_mAdd_Bool_unlockFork2_r,
                                                                                                                              call_mAdd_mAdd_Bool_unlockFork1_r}));
  assign call_mAdd_mAdd_Bool_initBuf_r = (& call_mAdd_mAdd_Bool_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Bool_initBuf_emitted <= 6'd0;
    else
      call_mAdd_mAdd_Bool_initBuf_emitted <= (call_mAdd_mAdd_Bool_initBuf_r ? 6'd0 :
                                              call_mAdd_mAdd_Bool_initBuf_done);
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_mAdd_mAdd_Bool_initBufi,Go) > (call_mAdd_mAdd_Bool_initBuf,Go) */
  assign call_mAdd_mAdd_Bool_initBufi_r = ((! call_mAdd_mAdd_Bool_initBuf_d[0]) || call_mAdd_mAdd_Bool_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Bool_initBuf_d <= Go_dc(1'd1);
    else
      if (call_mAdd_mAdd_Bool_initBufi_r)
        call_mAdd_mAdd_Bool_initBuf_d <= call_mAdd_mAdd_Bool_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (call_mAdd_mAdd_Bool_unlockFork1,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4,Go)] > (call_mAdd_mAdd_Bool_goMux1,Go) */
  assign call_mAdd_mAdd_Bool_goMux1_d = (call_mAdd_mAdd_Bool_unlockFork1_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d[0]);
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_r = (call_mAdd_mAdd_Bool_goMux1_r && (call_mAdd_mAdd_Bool_unlockFork1_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork1_r = (call_mAdd_mAdd_Bool_goMux1_r && (call_mAdd_mAdd_Bool_unlockFork1_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolgo_4_d[0]));
  
  /* mux (Ty Go,
     Ty MyDTBool_Bool) : (call_mAdd_mAdd_Bool_unlockFork2,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86,MyDTBool_Bool)] > (call_mAdd_mAdd_Bool_goMux2,MyDTBool_Bool) */
  assign call_mAdd_mAdd_Bool_goMux2_d = (call_mAdd_mAdd_Bool_unlockFork2_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d[0]);
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_r = (call_mAdd_mAdd_Bool_goMux2_r && (call_mAdd_mAdd_Bool_unlockFork2_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork2_r = (call_mAdd_mAdd_Bool_goMux2_r && (call_mAdd_mAdd_Bool_unlockFork2_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_BoolisZ1a86_d[0]));
  
  /* mux (Ty Go,
     Ty MyDTBool_Bool_Bool) : (call_mAdd_mAdd_Bool_unlockFork3,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87,MyDTBool_Bool_Bool)] > (call_mAdd_mAdd_Bool_goMux3,MyDTBool_Bool_Bool) */
  assign call_mAdd_mAdd_Bool_goMux3_d = (call_mAdd_mAdd_Bool_unlockFork3_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d[0]);
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_r = (call_mAdd_mAdd_Bool_goMux3_r && (call_mAdd_mAdd_Bool_unlockFork3_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork3_r = (call_mAdd_mAdd_Bool_goMux3_r && (call_mAdd_mAdd_Bool_unlockFork3_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolga87_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_mAdd_mAdd_Bool_unlockFork4,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88,Pointer_QTree_Bool)] > (call_mAdd_mAdd_Bool_goMux4,Pointer_QTree_Bool) */
  assign call_mAdd_mAdd_Bool_goMux4_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d[16:1],
                                         (call_mAdd_mAdd_Bool_unlockFork4_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d[0])};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_r = (call_mAdd_mAdd_Bool_goMux4_r && (call_mAdd_mAdd_Bool_unlockFork4_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork4_r = (call_mAdd_mAdd_Bool_goMux4_r && (call_mAdd_mAdd_Bool_unlockFork4_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm1a88_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_mAdd_mAdd_Bool_unlockFork5,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89,Pointer_QTree_Bool)] > (call_mAdd_mAdd_Bool_goMux5,Pointer_QTree_Bool) */
  assign call_mAdd_mAdd_Bool_goMux5_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d[16:1],
                                         (call_mAdd_mAdd_Bool_unlockFork5_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d[0])};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_r = (call_mAdd_mAdd_Bool_goMux5_r && (call_mAdd_mAdd_Bool_unlockFork5_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork5_r = (call_mAdd_mAdd_Bool_goMux5_r && (call_mAdd_mAdd_Bool_unlockFork5_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolm2a89_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTmAdd_mAdd_Bool) : (call_mAdd_mAdd_Bool_unlockFork6,Go) [(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0,Pointer_CTmAdd_mAdd_Bool)] > (call_mAdd_mAdd_Bool_goMux6,Pointer_CTmAdd_mAdd_Bool) */
  assign call_mAdd_mAdd_Bool_goMux6_d = {call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d[16:1],
                                         (call_mAdd_mAdd_Bool_unlockFork6_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d[0])};
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_r = (call_mAdd_mAdd_Bool_goMux6_r && (call_mAdd_mAdd_Bool_unlockFork6_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d[0]));
  assign call_mAdd_mAdd_Bool_unlockFork6_r = (call_mAdd_mAdd_Bool_goMux6_r && (call_mAdd_mAdd_Bool_unlockFork6_d[0] && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Boolsc_0_d[0]));
  
  /* demux (Ty MyBool,
       Ty Go) : (es_0_1_1,MyBool) (lizzieLet0_6QVal_Bool_4QVal_Bool_3,Go) > [(es_0_1_1MyFalse,Go),
                                                                             (es_0_1_1MyTrue,Go)] */
  logic [1:0] lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd;
  always_comb
    if ((es_0_1_1_d[0] && lizzieLet0_6QVal_Bool_4QVal_Bool_3_d[0]))
      unique case (es_0_1_1_d[1:1])
        1'd0: lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd = 2'd1;
        1'd1: lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd = 2'd2;
        default: lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd = 2'd0;
      endcase
    else lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd = 2'd0;
  assign es_0_1_1MyFalse_d = lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd[0];
  assign es_0_1_1MyTrue_d = lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd[1];
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_3_r = (| (lizzieLet0_6QVal_Bool_4QVal_Bool_3_onehotd & {es_0_1_1MyTrue_r,
                                                                                                  es_0_1_1MyFalse_r}));
  assign es_0_1_1_r = lizzieLet0_6QVal_Bool_4QVal_Bool_3_r;
  
  /* buf (Ty Go) : (es_0_1_1MyFalse,Go) > (es_0_1_1MyFalse_1_argbuf,Go) */
  Go_t es_0_1_1MyFalse_bufchan_d;
  logic es_0_1_1MyFalse_bufchan_r;
  assign es_0_1_1MyFalse_r = ((! es_0_1_1MyFalse_bufchan_d[0]) || es_0_1_1MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1MyFalse_bufchan_d <= 1'd0;
    else
      if (es_0_1_1MyFalse_r)
        es_0_1_1MyFalse_bufchan_d <= es_0_1_1MyFalse_d;
  Go_t es_0_1_1MyFalse_bufchan_buf;
  assign es_0_1_1MyFalse_bufchan_r = (! es_0_1_1MyFalse_bufchan_buf[0]);
  assign es_0_1_1MyFalse_1_argbuf_d = (es_0_1_1MyFalse_bufchan_buf[0] ? es_0_1_1MyFalse_bufchan_buf :
                                       es_0_1_1MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1MyFalse_bufchan_buf <= 1'd0;
    else
      if ((es_0_1_1MyFalse_1_argbuf_r && es_0_1_1MyFalse_bufchan_buf[0]))
        es_0_1_1MyFalse_bufchan_buf <= 1'd0;
      else if (((! es_0_1_1MyFalse_1_argbuf_r) && (! es_0_1_1MyFalse_bufchan_buf[0])))
        es_0_1_1MyFalse_bufchan_buf <= es_0_1_1MyFalse_bufchan_d;
  
  /* fork (Ty Go) : (es_0_1_1MyTrue,Go) > [(es_0_1_1MyTrue_1,Go),
                                      (es_0_1_1MyTrue_2,Go)] */
  logic [1:0] es_0_1_1MyTrue_emitted;
  logic [1:0] es_0_1_1MyTrue_done;
  assign es_0_1_1MyTrue_1_d = (es_0_1_1MyTrue_d[0] && (! es_0_1_1MyTrue_emitted[0]));
  assign es_0_1_1MyTrue_2_d = (es_0_1_1MyTrue_d[0] && (! es_0_1_1MyTrue_emitted[1]));
  assign es_0_1_1MyTrue_done = (es_0_1_1MyTrue_emitted | ({es_0_1_1MyTrue_2_d[0],
                                                           es_0_1_1MyTrue_1_d[0]} & {es_0_1_1MyTrue_2_r,
                                                                                     es_0_1_1MyTrue_1_r}));
  assign es_0_1_1MyTrue_r = (& es_0_1_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1MyTrue_emitted <= 2'd0;
    else
      es_0_1_1MyTrue_emitted <= (es_0_1_1MyTrue_r ? 2'd0 :
                                 es_0_1_1MyTrue_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QNone_Bool) : [(es_0_1_1MyTrue_1,Go)] > (es_0_1_1MyTrue_1QNone_Bool,QTree_Bool) */
  assign es_0_1_1MyTrue_1QNone_Bool_d = QNone_Bool_dc((& {es_0_1_1MyTrue_1_d[0]}), es_0_1_1MyTrue_1_d);
  assign {es_0_1_1MyTrue_1_r} = {1 {(es_0_1_1MyTrue_1QNone_Bool_r && es_0_1_1MyTrue_1QNone_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (es_0_1_1MyTrue_1QNone_Bool,QTree_Bool) > (lizzieLet3_1_argbuf,QTree_Bool) */
  QTree_Bool_t es_0_1_1MyTrue_1QNone_Bool_bufchan_d;
  logic es_0_1_1MyTrue_1QNone_Bool_bufchan_r;
  assign es_0_1_1MyTrue_1QNone_Bool_r = ((! es_0_1_1MyTrue_1QNone_Bool_bufchan_d[0]) || es_0_1_1MyTrue_1QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1_1MyTrue_1QNone_Bool_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_1_1MyTrue_1QNone_Bool_r)
        es_0_1_1MyTrue_1QNone_Bool_bufchan_d <= es_0_1_1MyTrue_1QNone_Bool_d;
  QTree_Bool_t es_0_1_1MyTrue_1QNone_Bool_bufchan_buf;
  assign es_0_1_1MyTrue_1QNone_Bool_bufchan_r = (! es_0_1_1MyTrue_1QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_1_argbuf_d = (es_0_1_1MyTrue_1QNone_Bool_bufchan_buf[0] ? es_0_1_1MyTrue_1QNone_Bool_bufchan_buf :
                                  es_0_1_1MyTrue_1QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1_1MyTrue_1QNone_Bool_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet3_1_argbuf_r && es_0_1_1MyTrue_1QNone_Bool_bufchan_buf[0]))
        es_0_1_1MyTrue_1QNone_Bool_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet3_1_argbuf_r) && (! es_0_1_1MyTrue_1QNone_Bool_bufchan_buf[0])))
        es_0_1_1MyTrue_1QNone_Bool_bufchan_buf <= es_0_1_1MyTrue_1QNone_Bool_bufchan_d;
  
  /* buf (Ty Go) : (es_0_1_1MyTrue_2,Go) > (es_0_1_1MyTrue_2_argbuf,Go) */
  Go_t es_0_1_1MyTrue_2_bufchan_d;
  logic es_0_1_1MyTrue_2_bufchan_r;
  assign es_0_1_1MyTrue_2_r = ((! es_0_1_1MyTrue_2_bufchan_d[0]) || es_0_1_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (es_0_1_1MyTrue_2_r)
        es_0_1_1MyTrue_2_bufchan_d <= es_0_1_1MyTrue_2_d;
  Go_t es_0_1_1MyTrue_2_bufchan_buf;
  assign es_0_1_1MyTrue_2_bufchan_r = (! es_0_1_1MyTrue_2_bufchan_buf[0]);
  assign es_0_1_1MyTrue_2_argbuf_d = (es_0_1_1MyTrue_2_bufchan_buf[0] ? es_0_1_1MyTrue_2_bufchan_buf :
                                      es_0_1_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((es_0_1_1MyTrue_2_argbuf_r && es_0_1_1MyTrue_2_bufchan_buf[0]))
        es_0_1_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! es_0_1_1MyTrue_2_argbuf_r) && (! es_0_1_1MyTrue_2_bufchan_buf[0])))
        es_0_1_1MyTrue_2_bufchan_buf <= es_0_1_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTmAdd_mAdd_Bool) : (es_0_1_2,MyBool) (lizzieLet0_6QVal_Bool_7QVal_Bool,Pointer_CTmAdd_mAdd_Bool) > [(es_0_1_2MyFalse,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                       (es_0_1_2MyTrue,Pointer_CTmAdd_mAdd_Bool)] */
  logic [1:0] lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd;
  always_comb
    if ((es_0_1_2_d[0] && lizzieLet0_6QVal_Bool_7QVal_Bool_d[0]))
      unique case (es_0_1_2_d[1:1])
        1'd0: lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd = 2'd2;
        default: lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd = 2'd0;
  assign es_0_1_2MyFalse_d = {lizzieLet0_6QVal_Bool_7QVal_Bool_d[16:1],
                              lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd[0]};
  assign es_0_1_2MyTrue_d = {lizzieLet0_6QVal_Bool_7QVal_Bool_d[16:1],
                             lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd[1]};
  assign lizzieLet0_6QVal_Bool_7QVal_Bool_r = (| (lizzieLet0_6QVal_Bool_7QVal_Bool_onehotd & {es_0_1_2MyTrue_r,
                                                                                              es_0_1_2MyFalse_r}));
  assign es_0_1_2_r = lizzieLet0_6QVal_Bool_7QVal_Bool_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (es_0_1_2MyFalse,Pointer_CTmAdd_mAdd_Bool) > (es_0_1_2MyFalse_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyFalse_bufchan_d;
  logic es_0_1_2MyFalse_bufchan_r;
  assign es_0_1_2MyFalse_r = ((! es_0_1_2MyFalse_bufchan_d[0]) || es_0_1_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_2MyFalse_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_1_2MyFalse_r)
        es_0_1_2MyFalse_bufchan_d <= es_0_1_2MyFalse_d;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyFalse_bufchan_buf;
  assign es_0_1_2MyFalse_bufchan_r = (! es_0_1_2MyFalse_bufchan_buf[0]);
  assign es_0_1_2MyFalse_1_argbuf_d = (es_0_1_2MyFalse_bufchan_buf[0] ? es_0_1_2MyFalse_bufchan_buf :
                                       es_0_1_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_1_2MyFalse_1_argbuf_r && es_0_1_2MyFalse_bufchan_buf[0]))
        es_0_1_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_1_2MyFalse_1_argbuf_r) && (! es_0_1_2MyFalse_bufchan_buf[0])))
        es_0_1_2MyFalse_bufchan_buf <= es_0_1_2MyFalse_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (es_0_1_2MyTrue,Pointer_CTmAdd_mAdd_Bool) > (es_0_1_2MyTrue_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyTrue_bufchan_d;
  logic es_0_1_2MyTrue_bufchan_r;
  assign es_0_1_2MyTrue_r = ((! es_0_1_2MyTrue_bufchan_d[0]) || es_0_1_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_2MyTrue_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_1_2MyTrue_r) es_0_1_2MyTrue_bufchan_d <= es_0_1_2MyTrue_d;
  Pointer_CTmAdd_mAdd_Bool_t es_0_1_2MyTrue_bufchan_buf;
  assign es_0_1_2MyTrue_bufchan_r = (! es_0_1_2MyTrue_bufchan_buf[0]);
  assign es_0_1_2MyTrue_1_argbuf_d = (es_0_1_2MyTrue_bufchan_buf[0] ? es_0_1_2MyTrue_bufchan_buf :
                                      es_0_1_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_1_2MyTrue_1_argbuf_r && es_0_1_2MyTrue_bufchan_buf[0]))
        es_0_1_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_1_2MyTrue_1_argbuf_r) && (! es_0_1_2MyTrue_bufchan_buf[0])))
        es_0_1_2MyTrue_bufchan_buf <= es_0_1_2MyTrue_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty MyBool) : (es_0_1_3,MyBool) (xa85_2,MyBool) > [(es_0_1_3MyFalse,MyBool),
                                                         (_54,MyBool)] */
  logic [1:0] xa85_2_onehotd;
  always_comb
    if ((es_0_1_3_d[0] && xa85_2_d[0]))
      unique case (es_0_1_3_d[1:1])
        1'd0: xa85_2_onehotd = 2'd1;
        1'd1: xa85_2_onehotd = 2'd2;
        default: xa85_2_onehotd = 2'd0;
      endcase
    else xa85_2_onehotd = 2'd0;
  assign es_0_1_3MyFalse_d = {xa85_2_d[1:1], xa85_2_onehotd[0]};
  assign _54_d = {xa85_2_d[1:1], xa85_2_onehotd[1]};
  assign xa85_2_r = (| (xa85_2_onehotd & {_54_r,
                                          es_0_1_3MyFalse_r}));
  assign es_0_1_3_r = xa85_2_r;
  
  /* dcon (Ty QTree_Bool,
      Dcon QVal_Bool) : [(es_0_1_3MyFalse,MyBool)] > (es_0_1_3MyFalse_1QVal_Bool,QTree_Bool) */
  assign es_0_1_3MyFalse_1QVal_Bool_d = QVal_Bool_dc((& {es_0_1_3MyFalse_d[0]}), es_0_1_3MyFalse_d);
  assign {es_0_1_3MyFalse_r} = {1 {(es_0_1_3MyFalse_1QVal_Bool_r && es_0_1_3MyFalse_1QVal_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (es_0_1_3MyFalse_1QVal_Bool,QTree_Bool) > (lizzieLet2_1_argbuf,QTree_Bool) */
  QTree_Bool_t es_0_1_3MyFalse_1QVal_Bool_bufchan_d;
  logic es_0_1_3MyFalse_1QVal_Bool_bufchan_r;
  assign es_0_1_3MyFalse_1QVal_Bool_r = ((! es_0_1_3MyFalse_1QVal_Bool_bufchan_d[0]) || es_0_1_3MyFalse_1QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1_3MyFalse_1QVal_Bool_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_1_3MyFalse_1QVal_Bool_r)
        es_0_1_3MyFalse_1QVal_Bool_bufchan_d <= es_0_1_3MyFalse_1QVal_Bool_d;
  QTree_Bool_t es_0_1_3MyFalse_1QVal_Bool_bufchan_buf;
  assign es_0_1_3MyFalse_1QVal_Bool_bufchan_r = (! es_0_1_3MyFalse_1QVal_Bool_bufchan_buf[0]);
  assign lizzieLet2_1_argbuf_d = (es_0_1_3MyFalse_1QVal_Bool_bufchan_buf[0] ? es_0_1_3MyFalse_1QVal_Bool_bufchan_buf :
                                  es_0_1_3MyFalse_1QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1_3MyFalse_1QVal_Bool_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet2_1_argbuf_r && es_0_1_3MyFalse_1QVal_Bool_bufchan_buf[0]))
        es_0_1_3MyFalse_1QVal_Bool_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet2_1_argbuf_r) && (! es_0_1_3MyFalse_1QVal_Bool_bufchan_buf[0])))
        es_0_1_3MyFalse_1QVal_Bool_bufchan_buf <= es_0_1_3MyFalse_1QVal_Bool_bufchan_d;
  
  /* buf (Ty MyDTBool_Bool_Bool) : (ga87_2_2,MyDTBool_Bool_Bool) > (ga87_2_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t ga87_2_2_bufchan_d;
  logic ga87_2_2_bufchan_r;
  assign ga87_2_2_r = ((! ga87_2_2_bufchan_d[0]) || ga87_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_2_2_bufchan_d <= 1'd0;
    else if (ga87_2_2_r) ga87_2_2_bufchan_d <= ga87_2_2_d;
  MyDTBool_Bool_Bool_t ga87_2_2_bufchan_buf;
  assign ga87_2_2_bufchan_r = (! ga87_2_2_bufchan_buf[0]);
  assign ga87_2_2_argbuf_d = (ga87_2_2_bufchan_buf[0] ? ga87_2_2_bufchan_buf :
                              ga87_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_2_2_bufchan_buf <= 1'd0;
    else
      if ((ga87_2_2_argbuf_r && ga87_2_2_bufchan_buf[0]))
        ga87_2_2_bufchan_buf <= 1'd0;
      else if (((! ga87_2_2_argbuf_r) && (! ga87_2_2_bufchan_buf[0])))
        ga87_2_2_bufchan_buf <= ga87_2_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (ga87_2_destruct,MyDTBool_Bool_Bool) > [(ga87_2_1,MyDTBool_Bool_Bool),
                                                                       (ga87_2_2,MyDTBool_Bool_Bool)] */
  logic [1:0] ga87_2_destruct_emitted;
  logic [1:0] ga87_2_destruct_done;
  assign ga87_2_1_d = (ga87_2_destruct_d[0] && (! ga87_2_destruct_emitted[0]));
  assign ga87_2_2_d = (ga87_2_destruct_d[0] && (! ga87_2_destruct_emitted[1]));
  assign ga87_2_destruct_done = (ga87_2_destruct_emitted | ({ga87_2_2_d[0],
                                                             ga87_2_1_d[0]} & {ga87_2_2_r,
                                                                               ga87_2_1_r}));
  assign ga87_2_destruct_r = (& ga87_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_2_destruct_emitted <= 2'd0;
    else
      ga87_2_destruct_emitted <= (ga87_2_destruct_r ? 2'd0 :
                                  ga87_2_destruct_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (ga87_3_2,MyDTBool_Bool_Bool) > (ga87_3_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t ga87_3_2_bufchan_d;
  logic ga87_3_2_bufchan_r;
  assign ga87_3_2_r = ((! ga87_3_2_bufchan_d[0]) || ga87_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_3_2_bufchan_d <= 1'd0;
    else if (ga87_3_2_r) ga87_3_2_bufchan_d <= ga87_3_2_d;
  MyDTBool_Bool_Bool_t ga87_3_2_bufchan_buf;
  assign ga87_3_2_bufchan_r = (! ga87_3_2_bufchan_buf[0]);
  assign ga87_3_2_argbuf_d = (ga87_3_2_bufchan_buf[0] ? ga87_3_2_bufchan_buf :
                              ga87_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_3_2_bufchan_buf <= 1'd0;
    else
      if ((ga87_3_2_argbuf_r && ga87_3_2_bufchan_buf[0]))
        ga87_3_2_bufchan_buf <= 1'd0;
      else if (((! ga87_3_2_argbuf_r) && (! ga87_3_2_bufchan_buf[0])))
        ga87_3_2_bufchan_buf <= ga87_3_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (ga87_3_destruct,MyDTBool_Bool_Bool) > [(ga87_3_1,MyDTBool_Bool_Bool),
                                                                       (ga87_3_2,MyDTBool_Bool_Bool)] */
  logic [1:0] ga87_3_destruct_emitted;
  logic [1:0] ga87_3_destruct_done;
  assign ga87_3_1_d = (ga87_3_destruct_d[0] && (! ga87_3_destruct_emitted[0]));
  assign ga87_3_2_d = (ga87_3_destruct_d[0] && (! ga87_3_destruct_emitted[1]));
  assign ga87_3_destruct_done = (ga87_3_destruct_emitted | ({ga87_3_2_d[0],
                                                             ga87_3_1_d[0]} & {ga87_3_2_r,
                                                                               ga87_3_1_r}));
  assign ga87_3_destruct_r = (& ga87_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_3_destruct_emitted <= 2'd0;
    else
      ga87_3_destruct_emitted <= (ga87_3_destruct_r ? 2'd0 :
                                  ga87_3_destruct_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (ga87_4_destruct,MyDTBool_Bool_Bool) > (ga87_4_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t ga87_4_destruct_bufchan_d;
  logic ga87_4_destruct_bufchan_r;
  assign ga87_4_destruct_r = ((! ga87_4_destruct_bufchan_d[0]) || ga87_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_4_destruct_bufchan_d <= 1'd0;
    else
      if (ga87_4_destruct_r)
        ga87_4_destruct_bufchan_d <= ga87_4_destruct_d;
  MyDTBool_Bool_Bool_t ga87_4_destruct_bufchan_buf;
  assign ga87_4_destruct_bufchan_r = (! ga87_4_destruct_bufchan_buf[0]);
  assign ga87_4_1_argbuf_d = (ga87_4_destruct_bufchan_buf[0] ? ga87_4_destruct_bufchan_buf :
                              ga87_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga87_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((ga87_4_1_argbuf_r && ga87_4_destruct_bufchan_buf[0]))
        ga87_4_destruct_bufchan_buf <= 1'd0;
      else if (((! ga87_4_1_argbuf_r) && (! ga87_4_destruct_bufchan_buf[0])))
        ga87_4_destruct_bufchan_buf <= ga87_4_destruct_bufchan_d;
  
  /* dcon (Ty MyDTBool_Bool_Bool,
      Dcon Dcon_||) : [(go_1,Go)] > (go_1Dcon_||,MyDTBool_Bool_Bool) */
  assign \go_1Dcon_||_d  = \Dcon_||_dc ((& {go_1_d[0]}), go_1_d);
  assign {go_1_r} = {1 {(\go_1Dcon_||_r  && \go_1Dcon_||_d [0])}};
  
  /* buf (Ty MyDTBool_Bool_Bool) : (go_1Dcon_||,MyDTBool_Bool_Bool) > (es_1_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t \go_1Dcon_||_bufchan_d ;
  logic \go_1Dcon_||_bufchan_r ;
  assign \go_1Dcon_||_r  = ((! \go_1Dcon_||_bufchan_d [0]) || \go_1Dcon_||_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_1Dcon_||_bufchan_d  <= 1'd0;
    else
      if (\go_1Dcon_||_r ) \go_1Dcon_||_bufchan_d  <= \go_1Dcon_||_d ;
  MyDTBool_Bool_Bool_t \go_1Dcon_||_bufchan_buf ;
  assign \go_1Dcon_||_bufchan_r  = (! \go_1Dcon_||_bufchan_buf [0]);
  assign es_1_1_argbuf_d = (\go_1Dcon_||_bufchan_buf [0] ? \go_1Dcon_||_bufchan_buf  :
                            \go_1Dcon_||_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_1Dcon_||_bufchan_buf  <= 1'd0;
    else
      if ((es_1_1_argbuf_r && \go_1Dcon_||_bufchan_buf [0]))
        \go_1Dcon_||_bufchan_buf  <= 1'd0;
      else if (((! es_1_1_argbuf_r) && (! \go_1Dcon_||_bufchan_buf [0])))
        \go_1Dcon_||_bufchan_buf  <= \go_1Dcon_||_bufchan_d ;
  
  /* dcon (Ty MyDTBool_Bool,
      Dcon Dcon_isZ) : [(go_2,Go)] > (go_2Dcon_isZ,MyDTBool_Bool) */
  assign go_2Dcon_isZ_d = Dcon_isZ_dc((& {go_2_d[0]}), go_2_d);
  assign {go_2_r} = {1 {(go_2Dcon_isZ_r && go_2Dcon_isZ_d[0])}};
  
  /* buf (Ty MyDTBool_Bool) : (go_2Dcon_isZ,MyDTBool_Bool) > (es_0_1_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t go_2Dcon_isZ_bufchan_d;
  logic go_2Dcon_isZ_bufchan_r;
  assign go_2Dcon_isZ_r = ((! go_2Dcon_isZ_bufchan_d[0]) || go_2Dcon_isZ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2Dcon_isZ_bufchan_d <= 1'd0;
    else if (go_2Dcon_isZ_r) go_2Dcon_isZ_bufchan_d <= go_2Dcon_isZ_d;
  MyDTBool_Bool_t go_2Dcon_isZ_bufchan_buf;
  assign go_2Dcon_isZ_bufchan_r = (! go_2Dcon_isZ_bufchan_buf[0]);
  assign es_0_1_argbuf_d = (go_2Dcon_isZ_bufchan_buf[0] ? go_2Dcon_isZ_bufchan_buf :
                            go_2Dcon_isZ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2Dcon_isZ_bufchan_buf <= 1'd0;
    else
      if ((es_0_1_argbuf_r && go_2Dcon_isZ_bufchan_buf[0]))
        go_2Dcon_isZ_bufchan_buf <= 1'd0;
      else if (((! es_0_1_argbuf_r) && (! go_2Dcon_isZ_bufchan_buf[0])))
        go_2Dcon_isZ_bufchan_buf <= go_2Dcon_isZ_bufchan_d;
  
  /* dcon (Ty MyDTBool_Bool_Bool,
      Dcon Dcon_||) : [(go_3,Go)] > (go_3Dcon_||,MyDTBool_Bool_Bool) */
  assign \go_3Dcon_||_d  = \Dcon_||_dc ((& {go_3_d[0]}), go_3_d);
  assign {go_3_r} = {1 {(\go_3Dcon_||_r  && \go_3Dcon_||_d [0])}};
  
  /* buf (Ty MyDTBool_Bool_Bool) : (go_3Dcon_||,MyDTBool_Bool_Bool) > (es_5_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t \go_3Dcon_||_bufchan_d ;
  logic \go_3Dcon_||_bufchan_r ;
  assign \go_3Dcon_||_r  = ((! \go_3Dcon_||_bufchan_d [0]) || \go_3Dcon_||_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_3Dcon_||_bufchan_d  <= 1'd0;
    else
      if (\go_3Dcon_||_r ) \go_3Dcon_||_bufchan_d  <= \go_3Dcon_||_d ;
  MyDTBool_Bool_Bool_t \go_3Dcon_||_bufchan_buf ;
  assign \go_3Dcon_||_bufchan_r  = (! \go_3Dcon_||_bufchan_buf [0]);
  assign es_5_1_argbuf_d = (\go_3Dcon_||_bufchan_buf [0] ? \go_3Dcon_||_bufchan_buf  :
                            \go_3Dcon_||_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_3Dcon_||_bufchan_buf  <= 1'd0;
    else
      if ((es_5_1_argbuf_r && \go_3Dcon_||_bufchan_buf [0]))
        \go_3Dcon_||_bufchan_buf  <= 1'd0;
      else if (((! es_5_1_argbuf_r) && (! \go_3Dcon_||_bufchan_buf [0])))
        \go_3Dcon_||_bufchan_buf  <= \go_3Dcon_||_bufchan_d ;
  
  /* dcon (Ty MyDTBool_Bool,
      Dcon Dcon_isZ) : [(go_4,Go)] > (go_4Dcon_isZ,MyDTBool_Bool) */
  assign go_4Dcon_isZ_d = Dcon_isZ_dc((& {go_4_d[0]}), go_4_d);
  assign {go_4_r} = {1 {(go_4Dcon_isZ_r && go_4Dcon_isZ_d[0])}};
  
  /* buf (Ty MyDTBool_Bool) : (go_4Dcon_isZ,MyDTBool_Bool) > (es_4_1_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t go_4Dcon_isZ_bufchan_d;
  logic go_4Dcon_isZ_bufchan_r;
  assign go_4Dcon_isZ_r = ((! go_4Dcon_isZ_bufchan_d[0]) || go_4Dcon_isZ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4Dcon_isZ_bufchan_d <= 1'd0;
    else if (go_4Dcon_isZ_r) go_4Dcon_isZ_bufchan_d <= go_4Dcon_isZ_d;
  MyDTBool_Bool_t go_4Dcon_isZ_bufchan_buf;
  assign go_4Dcon_isZ_bufchan_r = (! go_4Dcon_isZ_bufchan_buf[0]);
  assign es_4_1_argbuf_d = (go_4Dcon_isZ_bufchan_buf[0] ? go_4Dcon_isZ_bufchan_buf :
                            go_4Dcon_isZ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4Dcon_isZ_bufchan_buf <= 1'd0;
    else
      if ((es_4_1_argbuf_r && go_4Dcon_isZ_bufchan_buf[0]))
        go_4Dcon_isZ_bufchan_buf <= 1'd0;
      else if (((! es_4_1_argbuf_r) && (! go_4Dcon_isZ_bufchan_buf[0])))
        go_4Dcon_isZ_bufchan_buf <= go_4Dcon_isZ_bufchan_d;
  
  /* fork (Ty C5) : (go_4_goMux_choice,C5) > [(go_4_goMux_choice_1,C5),
                                         (go_4_goMux_choice_2,C5),
                                         (go_4_goMux_choice_3,C5),
                                         (go_4_goMux_choice_4,C5),
                                         (go_4_goMux_choice_5,C5)] */
  logic [4:0] go_4_goMux_choice_emitted;
  logic [4:0] go_4_goMux_choice_done;
  assign go_4_goMux_choice_1_d = {go_4_goMux_choice_d[3:1],
                                  (go_4_goMux_choice_d[0] && (! go_4_goMux_choice_emitted[0]))};
  assign go_4_goMux_choice_2_d = {go_4_goMux_choice_d[3:1],
                                  (go_4_goMux_choice_d[0] && (! go_4_goMux_choice_emitted[1]))};
  assign go_4_goMux_choice_3_d = {go_4_goMux_choice_d[3:1],
                                  (go_4_goMux_choice_d[0] && (! go_4_goMux_choice_emitted[2]))};
  assign go_4_goMux_choice_4_d = {go_4_goMux_choice_d[3:1],
                                  (go_4_goMux_choice_d[0] && (! go_4_goMux_choice_emitted[3]))};
  assign go_4_goMux_choice_5_d = {go_4_goMux_choice_d[3:1],
                                  (go_4_goMux_choice_d[0] && (! go_4_goMux_choice_emitted[4]))};
  assign go_4_goMux_choice_done = (go_4_goMux_choice_emitted | ({go_4_goMux_choice_5_d[0],
                                                                 go_4_goMux_choice_4_d[0],
                                                                 go_4_goMux_choice_3_d[0],
                                                                 go_4_goMux_choice_2_d[0],
                                                                 go_4_goMux_choice_1_d[0]} & {go_4_goMux_choice_5_r,
                                                                                              go_4_goMux_choice_4_r,
                                                                                              go_4_goMux_choice_3_r,
                                                                                              go_4_goMux_choice_2_r,
                                                                                              go_4_goMux_choice_1_r}));
  assign go_4_goMux_choice_r = (& go_4_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_goMux_choice_emitted <= 5'd0;
    else
      go_4_goMux_choice_emitted <= (go_4_goMux_choice_r ? 5'd0 :
                                    go_4_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty MyDTBool_Bool) : (go_4_goMux_choice_1,C5) [(call_mAdd_mAdd_Bool_goMux2,MyDTBool_Bool),
                                                   (isZ1a86_2_2_argbuf,MyDTBool_Bool),
                                                   (isZ1a86_3_2_argbuf,MyDTBool_Bool),
                                                   (isZ1a86_4_1_argbuf,MyDTBool_Bool),
                                                   (lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf,MyDTBool_Bool)] > (isZ1a86_goMux_mux,MyDTBool_Bool) */
  logic [0:0] isZ1a86_goMux_mux_mux;
  logic [4:0] isZ1a86_goMux_mux_onehot;
  always_comb
    unique case (go_4_goMux_choice_1_d[3:1])
      3'd0:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd1,
                                                             call_mAdd_mAdd_Bool_goMux2_d};
      3'd1:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd2,
                                                             isZ1a86_2_2_argbuf_d};
      3'd2:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd4,
                                                             isZ1a86_3_2_argbuf_d};
      3'd3:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd8,
                                                             isZ1a86_4_1_argbuf_d};
      3'd4:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd16,
                                                             lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_d};
      default:
        {isZ1a86_goMux_mux_onehot, isZ1a86_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign isZ1a86_goMux_mux_d = (isZ1a86_goMux_mux_mux[0] && go_4_goMux_choice_1_d[0]);
  assign go_4_goMux_choice_1_r = (isZ1a86_goMux_mux_d[0] && isZ1a86_goMux_mux_r);
  assign {lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_r,
          isZ1a86_4_1_argbuf_r,
          isZ1a86_3_2_argbuf_r,
          isZ1a86_2_2_argbuf_r,
          call_mAdd_mAdd_Bool_goMux2_r} = (go_4_goMux_choice_1_r ? isZ1a86_goMux_mux_onehot :
                                           5'd0);
  
  /* mux (Ty C5,
     Ty MyDTBool_Bool_Bool) : (go_4_goMux_choice_2,C5) [(call_mAdd_mAdd_Bool_goMux3,MyDTBool_Bool_Bool),
                                                        (ga87_2_2_argbuf,MyDTBool_Bool_Bool),
                                                        (ga87_3_2_argbuf,MyDTBool_Bool_Bool),
                                                        (ga87_4_1_argbuf,MyDTBool_Bool_Bool),
                                                        (lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf,MyDTBool_Bool_Bool)] > (ga87_goMux_mux,MyDTBool_Bool_Bool) */
  logic [0:0] ga87_goMux_mux_mux;
  logic [4:0] ga87_goMux_mux_onehot;
  always_comb
    unique case (go_4_goMux_choice_2_d[3:1])
      3'd0:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd1,
                                                       call_mAdd_mAdd_Bool_goMux3_d};
      3'd1:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd2,
                                                       ga87_2_2_argbuf_d};
      3'd2:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd4,
                                                       ga87_3_2_argbuf_d};
      3'd3:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd8,
                                                       ga87_4_1_argbuf_d};
      3'd4:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd16,
                                                       lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_d};
      default:
        {ga87_goMux_mux_onehot, ga87_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign ga87_goMux_mux_d = (ga87_goMux_mux_mux[0] && go_4_goMux_choice_2_d[0]);
  assign go_4_goMux_choice_2_r = (ga87_goMux_mux_d[0] && ga87_goMux_mux_r);
  assign {lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_r,
          ga87_4_1_argbuf_r,
          ga87_3_2_argbuf_r,
          ga87_2_2_argbuf_r,
          call_mAdd_mAdd_Bool_goMux3_r} = (go_4_goMux_choice_2_r ? ga87_goMux_mux_onehot :
                                           5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_4_goMux_choice_3,C5) [(call_mAdd_mAdd_Bool_goMux4,Pointer_QTree_Bool),
                                                        (q3a8i_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2a8h_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1a8g_3_1_argbuf,Pointer_QTree_Bool),
                                                        (lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf,Pointer_QTree_Bool)] > (m1a88_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m1a88_goMux_mux_mux;
  logic [4:0] m1a88_goMux_mux_onehot;
  always_comb
    unique case (go_4_goMux_choice_3_d[3:1])
      3'd0:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd1,
                                                         call_mAdd_mAdd_Bool_goMux4_d};
      3'd1:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd2,
                                                         q3a8i_1_1_argbuf_d};
      3'd2:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd4,
                                                         q2a8h_2_1_argbuf_d};
      3'd3:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd8,
                                                         q1a8g_3_1_argbuf_d};
      3'd4:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd16,
                                                         lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_d};
      default:
        {m1a88_goMux_mux_onehot, m1a88_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m1a88_goMux_mux_d = {m1a88_goMux_mux_mux[16:1],
                              (m1a88_goMux_mux_mux[0] && go_4_goMux_choice_3_d[0])};
  assign go_4_goMux_choice_3_r = (m1a88_goMux_mux_d[0] && m1a88_goMux_mux_r);
  assign {lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_r,
          q1a8g_3_1_argbuf_r,
          q2a8h_2_1_argbuf_r,
          q3a8i_1_1_argbuf_r,
          call_mAdd_mAdd_Bool_goMux4_r} = (go_4_goMux_choice_3_r ? m1a88_goMux_mux_onehot :
                                           5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_4_goMux_choice_4,C5) [(call_mAdd_mAdd_Bool_goMux5,Pointer_QTree_Bool),
                                                        (t3a8n_1_1_argbuf,Pointer_QTree_Bool),
                                                        (t2a8m_2_1_argbuf,Pointer_QTree_Bool),
                                                        (t1a8l_3_1_argbuf,Pointer_QTree_Bool),
                                                        (t4a8o_1_argbuf,Pointer_QTree_Bool)] > (m2a89_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m2a89_goMux_mux_mux;
  logic [4:0] m2a89_goMux_mux_onehot;
  always_comb
    unique case (go_4_goMux_choice_4_d[3:1])
      3'd0:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd1,
                                                         call_mAdd_mAdd_Bool_goMux5_d};
      3'd1:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd2,
                                                         t3a8n_1_1_argbuf_d};
      3'd2:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd4,
                                                         t2a8m_2_1_argbuf_d};
      3'd3:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd8,
                                                         t1a8l_3_1_argbuf_d};
      3'd4:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd16,
                                                         t4a8o_1_argbuf_d};
      default:
        {m2a89_goMux_mux_onehot, m2a89_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m2a89_goMux_mux_d = {m2a89_goMux_mux_mux[16:1],
                              (m2a89_goMux_mux_mux[0] && go_4_goMux_choice_4_d[0])};
  assign go_4_goMux_choice_4_r = (m2a89_goMux_mux_d[0] && m2a89_goMux_mux_r);
  assign {t4a8o_1_argbuf_r,
          t1a8l_3_1_argbuf_r,
          t2a8m_2_1_argbuf_r,
          t3a8n_1_1_argbuf_r,
          call_mAdd_mAdd_Bool_goMux5_r} = (go_4_goMux_choice_4_r ? m2a89_goMux_mux_onehot :
                                           5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTmAdd_mAdd_Bool) : (go_4_goMux_choice_5,C5) [(call_mAdd_mAdd_Bool_goMux6,Pointer_CTmAdd_mAdd_Bool),
                                                              (sca2_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                              (sca1_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                              (sca0_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                              (sca3_1_argbuf,Pointer_CTmAdd_mAdd_Bool)] > (sc_0_goMux_mux,Pointer_CTmAdd_mAdd_Bool) */
  logic [16:0] sc_0_goMux_mux_mux;
  logic [4:0] sc_0_goMux_mux_onehot;
  always_comb
    unique case (go_4_goMux_choice_5_d[3:1])
      3'd0:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd1,
                                                       call_mAdd_mAdd_Bool_goMux6_d};
      3'd1:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd2,
                                                       sca2_1_argbuf_d};
      3'd2:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd4,
                                                       sca1_1_argbuf_d};
      3'd3:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd8,
                                                       sca0_1_argbuf_d};
      3'd4:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd16,
                                                       sca3_1_argbuf_d};
      default:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd0,
                                                       {16'd0, 1'd0}};
    endcase
  assign sc_0_goMux_mux_d = {sc_0_goMux_mux_mux[16:1],
                             (sc_0_goMux_mux_mux[0] && go_4_goMux_choice_5_d[0])};
  assign go_4_goMux_choice_5_r = (sc_0_goMux_mux_d[0] && sc_0_goMux_mux_r);
  assign {sca3_1_argbuf_r,
          sca0_1_argbuf_r,
          sca1_1_argbuf_r,
          sca2_1_argbuf_r,
          call_mAdd_mAdd_Bool_goMux6_r} = (go_4_goMux_choice_5_r ? sc_0_goMux_mux_onehot :
                                           5'd0);
  
  /* buf (Ty Go) : (go_5,Go) > (go_5_argbuf,Go) */
  Go_t go_5_bufchan_d;
  logic go_5_bufchan_r;
  assign go_5_r = ((! go_5_bufchan_d[0]) || go_5_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_5_bufchan_d <= 1'd0;
    else if (go_5_r) go_5_bufchan_d <= go_5_d;
  Go_t go_5_bufchan_buf;
  assign go_5_bufchan_r = (! go_5_bufchan_buf[0]);
  assign go_5_argbuf_d = (go_5_bufchan_buf[0] ? go_5_bufchan_buf :
                          go_5_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_5_bufchan_buf <= 1'd0;
    else
      if ((go_5_argbuf_r && go_5_bufchan_buf[0]))
        go_5_bufchan_buf <= 1'd0;
      else if (((! go_5_argbuf_r) && (! go_5_bufchan_buf[0])))
        go_5_bufchan_buf <= go_5_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Bool,
      Dcon LmAdd_mAdd_Boolsbos) : [(go_5_1,Go)] > (go_5_1LmAdd_mAdd_Boolsbos,CTmAdd_mAdd_Bool) */
  assign go_5_1LmAdd_mAdd_Boolsbos_d = LmAdd_mAdd_Boolsbos_dc((& {go_5_1_d[0]}), go_5_1_d);
  assign {go_5_1_r} = {1 {(go_5_1LmAdd_mAdd_Boolsbos_r && go_5_1LmAdd_mAdd_Boolsbos_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (go_5_1LmAdd_mAdd_Boolsbos,CTmAdd_mAdd_Bool) > (lizzieLet11_1_argbuf,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t go_5_1LmAdd_mAdd_Boolsbos_bufchan_d;
  logic go_5_1LmAdd_mAdd_Boolsbos_bufchan_r;
  assign go_5_1LmAdd_mAdd_Boolsbos_r = ((! go_5_1LmAdd_mAdd_Boolsbos_bufchan_d[0]) || go_5_1LmAdd_mAdd_Boolsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_5_1LmAdd_mAdd_Boolsbos_bufchan_d <= {115'd0, 1'd0};
    else
      if (go_5_1LmAdd_mAdd_Boolsbos_r)
        go_5_1LmAdd_mAdd_Boolsbos_bufchan_d <= go_5_1LmAdd_mAdd_Boolsbos_d;
  CTmAdd_mAdd_Bool_t go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf;
  assign go_5_1LmAdd_mAdd_Boolsbos_bufchan_r = (! go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf[0]);
  assign lizzieLet11_1_argbuf_d = (go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf[0] ? go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf :
                                   go_5_1LmAdd_mAdd_Boolsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((lizzieLet11_1_argbuf_r && go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf[0]))
        go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf <= {115'd0, 1'd0};
      else if (((! lizzieLet11_1_argbuf_r) && (! go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf[0])))
        go_5_1LmAdd_mAdd_Boolsbos_bufchan_buf <= go_5_1LmAdd_mAdd_Boolsbos_bufchan_d;
  
  /* buf (Ty Go) : (go_5_2,Go) > (go_5_2_argbuf,Go) */
  Go_t go_5_2_bufchan_d;
  logic go_5_2_bufchan_r;
  assign go_5_2_r = ((! go_5_2_bufchan_d[0]) || go_5_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_5_2_bufchan_d <= 1'd0;
    else if (go_5_2_r) go_5_2_bufchan_d <= go_5_2_d;
  Go_t go_5_2_bufchan_buf;
  assign go_5_2_bufchan_r = (! go_5_2_bufchan_buf[0]);
  assign go_5_2_argbuf_d = (go_5_2_bufchan_buf[0] ? go_5_2_bufchan_buf :
                            go_5_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_5_2_bufchan_buf <= 1'd0;
    else
      if ((go_5_2_argbuf_r && go_5_2_bufchan_buf[0]))
        go_5_2_bufchan_buf <= 1'd0;
      else if (((! go_5_2_argbuf_r) && (! go_5_2_bufchan_buf[0])))
        go_5_2_bufchan_buf <= go_5_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool,
      Dcon TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool) : [(go_5_2_argbuf,Go),
                                                                                                                               (isZ1a86_1_1_argbuf,MyDTBool_Bool),
                                                                                                                               (ga87_1_1_argbuf,MyDTBool_Bool_Bool),
                                                                                                                               (m1a88_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                               (m2a89_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                               (lizzieLet7_1_1_argbuf,Pointer_CTmAdd_mAdd_Bool)] > (call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool) */
  assign call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d = TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_dc((& {go_5_2_argbuf_d[0],
                                                                                                                                                                                                                                                                         isZ1a86_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                                         ga87_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                                         m1a88_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                                         m2a89_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                                         lizzieLet7_1_1_argbuf_d[0]}), go_5_2_argbuf_d, isZ1a86_1_1_argbuf_d, ga87_1_1_argbuf_d, m1a88_1_1_argbuf_d, m2a89_1_1_argbuf_d, lizzieLet7_1_1_argbuf_d);
  assign {go_5_2_argbuf_r,
          isZ1a86_1_1_argbuf_r,
          ga87_1_1_argbuf_r,
          m1a88_1_1_argbuf_r,
          m2a89_1_1_argbuf_r,
          lizzieLet7_1_1_argbuf_r} = {6 {(call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_r && call_mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTmAdd_mAdd_Bool_1_d[0])}};
  
  /* dcon (Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool,
      Dcon TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(go_5_argbuf,Go),
                                                                                                    (es_4_1_argbuf,MyDTBool_Bool),
                                                                                                    (es_5_1_argbuf,MyDTBool_Bool_Bool),
                                                                                                    (m1aem_0,Pointer_QTree_Bool),
                                                                                                    (m2aen_1,Pointer_QTree_Bool)] > (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d = TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc((& {go_5_argbuf_d[0],
                                                                                                                                                                                                              es_4_1_argbuf_d[0],
                                                                                                                                                                                                              es_5_1_argbuf_d[0],
                                                                                                                                                                                                              m1aem_0_d[0],
                                                                                                                                                                                                              m2aen_1_d[0]}), go_5_argbuf_d, es_4_1_argbuf_d, es_5_1_argbuf_d, m1aem_0_d, m2aen_1_d);
  assign {go_5_argbuf_r,
          es_4_1_argbuf_r,
          es_5_1_argbuf_r,
          m1aem_0_r,
          m2aen_1_r} = {5 {(mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0])}};
  
  /* buf (Ty Go) : (go_6,Go) > (go_6_argbuf,Go) */
  Go_t go_6_bufchan_d;
  logic go_6_bufchan_r;
  assign go_6_r = ((! go_6_bufchan_d[0]) || go_6_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_bufchan_d <= 1'd0;
    else if (go_6_r) go_6_bufchan_d <= go_6_d;
  Go_t go_6_bufchan_buf;
  assign go_6_bufchan_r = (! go_6_bufchan_buf[0]);
  assign go_6_argbuf_d = (go_6_bufchan_buf[0] ? go_6_bufchan_buf :
                          go_6_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_bufchan_buf <= 1'd0;
    else
      if ((go_6_argbuf_r && go_6_bufchan_buf[0]))
        go_6_bufchan_buf <= 1'd0;
      else if (((! go_6_argbuf_r) && (! go_6_bufchan_buf[0])))
        go_6_bufchan_buf <= go_6_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool,
      Dcon TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(go_6_argbuf,Go),
                                                                                                    (es_0_1_argbuf,MyDTBool_Bool),
                                                                                                    (es_1_1_argbuf,MyDTBool_Bool_Bool),
                                                                                                    (es_2_1_argbuf,Pointer_QTree_Bool),
                                                                                                    (m3aeo_2,Pointer_QTree_Bool)] > (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_d = TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc((& {go_6_argbuf_d[0],
                                                                                                                                                                                                             es_0_1_argbuf_d[0],
                                                                                                                                                                                                             es_1_1_argbuf_d[0],
                                                                                                                                                                                                             es_2_1_argbuf_d[0],
                                                                                                                                                                                                             m3aeo_2_d[0]}), go_6_argbuf_d, es_0_1_argbuf_d, es_1_1_argbuf_d, es_2_1_argbuf_d, m3aeo_2_d);
  assign {go_6_argbuf_r,
          es_0_1_argbuf_r,
          es_1_1_argbuf_r,
          es_2_1_argbuf_r,
          m3aeo_2_r} = {5 {(mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_d[0])}};
  
  /* fork (Ty C11) : (go_6_goMux_choice,C11) > [(go_6_goMux_choice_1,C11),
                                           (go_6_goMux_choice_2,C11)] */
  logic [1:0] go_6_goMux_choice_emitted;
  logic [1:0] go_6_goMux_choice_done;
  assign go_6_goMux_choice_1_d = {go_6_goMux_choice_d[4:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[0]))};
  assign go_6_goMux_choice_2_d = {go_6_goMux_choice_d[4:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[1]))};
  assign go_6_goMux_choice_done = (go_6_goMux_choice_emitted | ({go_6_goMux_choice_2_d[0],
                                                                 go_6_goMux_choice_1_d[0]} & {go_6_goMux_choice_2_r,
                                                                                              go_6_goMux_choice_1_r}));
  assign go_6_goMux_choice_r = (& go_6_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_goMux_choice_emitted <= 2'd0;
    else
      go_6_goMux_choice_emitted <= (go_6_goMux_choice_r ? 2'd0 :
                                    go_6_goMux_choice_done);
  
  /* mux (Ty C11,
     Ty Pointer_QTree_Bool) : (go_6_goMux_choice_1,C11) [(lizzieLet0_8QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                         (contRet_0_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet0_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet1_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet2_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet3_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet4_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet5_1_1_argbuf,Pointer_QTree_Bool),
                                                         (lizzieLet6_1_argbuf,Pointer_QTree_Bool)] > (srtarg_0_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] srtarg_0_goMux_mux_mux;
  logic [10:0] srtarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_1_d[4:1])
      4'd0:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd1,
                                                               lizzieLet0_8QNone_Bool_1_argbuf_d};
      4'd1:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd2,
                                                               contRet_0_1_argbuf_d};
      4'd2:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd4,
                                                               lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_d};
      4'd3:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd8,
                                                               lizzieLet0_1_1_argbuf_d};
      4'd4:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd16,
                                                               lizzieLet1_1_1_argbuf_d};
      4'd5:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd32,
                                                               lizzieLet2_1_1_argbuf_d};
      4'd6:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd64,
                                                               lizzieLet3_1_1_argbuf_d};
      4'd7:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd128,
                                                               lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_d};
      4'd8:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd256,
                                                               lizzieLet4_1_1_argbuf_d};
      4'd9:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd512,
                                                               lizzieLet5_1_1_argbuf_d};
      4'd10:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd1024,
                                                               lizzieLet6_1_argbuf_d};
      default:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {11'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign srtarg_0_goMux_mux_d = {srtarg_0_goMux_mux_mux[16:1],
                                 (srtarg_0_goMux_mux_mux[0] && go_6_goMux_choice_1_d[0])};
  assign go_6_goMux_choice_1_r = (srtarg_0_goMux_mux_d[0] && srtarg_0_goMux_mux_r);
  assign {lizzieLet6_1_argbuf_r,
          lizzieLet5_1_1_argbuf_r,
          lizzieLet4_1_1_argbuf_r,
          lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_r,
          lizzieLet3_1_1_argbuf_r,
          lizzieLet2_1_1_argbuf_r,
          lizzieLet1_1_1_argbuf_r,
          lizzieLet0_1_1_argbuf_r,
          lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_r,
          contRet_0_1_argbuf_r,
          lizzieLet0_8QNone_Bool_1_argbuf_r} = (go_6_goMux_choice_1_r ? srtarg_0_goMux_mux_onehot :
                                                11'd0);
  
  /* mux (Ty C11,
     Ty Pointer_CTmAdd_mAdd_Bool) : (go_6_goMux_choice_2,C11) [(lizzieLet0_9QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (sc_0_4_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (es_0_1_2MyFalse_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (es_0_1_2MyTrue_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool),
                                                               (lizzieLet0_9QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool)] > (scfarg_0_goMux_mux,Pointer_CTmAdd_mAdd_Bool) */
  logic [16:0] scfarg_0_goMux_mux_mux;
  logic [10:0] scfarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_2_d[4:1])
      4'd0:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd1,
                                                               lizzieLet0_9QNone_Bool_1_argbuf_d};
      4'd1:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd2,
                                                               sc_0_4_1_argbuf_d};
      4'd2:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd4,
                                                               lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_d};
      4'd3:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd8,
                                                               es_0_1_2MyFalse_1_argbuf_d};
      4'd4:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd16,
                                                               es_0_1_2MyTrue_1_argbuf_d};
      4'd5:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd32,
                                                               lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_d};
      4'd6:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd64,
                                                               lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_d};
      4'd7:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd128,
                                                               lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_d};
      4'd8:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd256,
                                                               lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_d};
      4'd9:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd512,
                                                               lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_d};
      4'd10:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd1024,
                                                               lizzieLet0_9QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {11'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign scfarg_0_goMux_mux_d = {scfarg_0_goMux_mux_mux[16:1],
                                 (scfarg_0_goMux_mux_mux[0] && go_6_goMux_choice_2_d[0])};
  assign go_6_goMux_choice_2_r = (scfarg_0_goMux_mux_d[0] && scfarg_0_goMux_mux_r);
  assign {lizzieLet0_9QError_Bool_1_argbuf_r,
          lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_r,
          lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_r,
          lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_r,
          lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_r,
          lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_r,
          es_0_1_2MyTrue_1_argbuf_r,
          es_0_1_2MyFalse_1_argbuf_r,
          lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_r,
          sc_0_4_1_argbuf_r,
          lizzieLet0_9QNone_Bool_1_argbuf_r} = (go_6_goMux_choice_2_r ? scfarg_0_goMux_mux_onehot :
                                                11'd0);
  
  /* buf (Ty MyDTBool_Bool) : (isZ1a86_2_2,MyDTBool_Bool) > (isZ1a86_2_2_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t isZ1a86_2_2_bufchan_d;
  logic isZ1a86_2_2_bufchan_r;
  assign isZ1a86_2_2_r = ((! isZ1a86_2_2_bufchan_d[0]) || isZ1a86_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_2_2_bufchan_d <= 1'd0;
    else if (isZ1a86_2_2_r) isZ1a86_2_2_bufchan_d <= isZ1a86_2_2_d;
  MyDTBool_Bool_t isZ1a86_2_2_bufchan_buf;
  assign isZ1a86_2_2_bufchan_r = (! isZ1a86_2_2_bufchan_buf[0]);
  assign isZ1a86_2_2_argbuf_d = (isZ1a86_2_2_bufchan_buf[0] ? isZ1a86_2_2_bufchan_buf :
                                 isZ1a86_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_2_2_bufchan_buf <= 1'd0;
    else
      if ((isZ1a86_2_2_argbuf_r && isZ1a86_2_2_bufchan_buf[0]))
        isZ1a86_2_2_bufchan_buf <= 1'd0;
      else if (((! isZ1a86_2_2_argbuf_r) && (! isZ1a86_2_2_bufchan_buf[0])))
        isZ1a86_2_2_bufchan_buf <= isZ1a86_2_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool) : (isZ1a86_2_destruct,MyDTBool_Bool) > [(isZ1a86_2_1,MyDTBool_Bool),
                                                                (isZ1a86_2_2,MyDTBool_Bool)] */
  logic [1:0] isZ1a86_2_destruct_emitted;
  logic [1:0] isZ1a86_2_destruct_done;
  assign isZ1a86_2_1_d = (isZ1a86_2_destruct_d[0] && (! isZ1a86_2_destruct_emitted[0]));
  assign isZ1a86_2_2_d = (isZ1a86_2_destruct_d[0] && (! isZ1a86_2_destruct_emitted[1]));
  assign isZ1a86_2_destruct_done = (isZ1a86_2_destruct_emitted | ({isZ1a86_2_2_d[0],
                                                                   isZ1a86_2_1_d[0]} & {isZ1a86_2_2_r,
                                                                                        isZ1a86_2_1_r}));
  assign isZ1a86_2_destruct_r = (& isZ1a86_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_2_destruct_emitted <= 2'd0;
    else
      isZ1a86_2_destruct_emitted <= (isZ1a86_2_destruct_r ? 2'd0 :
                                     isZ1a86_2_destruct_done);
  
  /* buf (Ty MyDTBool_Bool) : (isZ1a86_3_2,MyDTBool_Bool) > (isZ1a86_3_2_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t isZ1a86_3_2_bufchan_d;
  logic isZ1a86_3_2_bufchan_r;
  assign isZ1a86_3_2_r = ((! isZ1a86_3_2_bufchan_d[0]) || isZ1a86_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_3_2_bufchan_d <= 1'd0;
    else if (isZ1a86_3_2_r) isZ1a86_3_2_bufchan_d <= isZ1a86_3_2_d;
  MyDTBool_Bool_t isZ1a86_3_2_bufchan_buf;
  assign isZ1a86_3_2_bufchan_r = (! isZ1a86_3_2_bufchan_buf[0]);
  assign isZ1a86_3_2_argbuf_d = (isZ1a86_3_2_bufchan_buf[0] ? isZ1a86_3_2_bufchan_buf :
                                 isZ1a86_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_3_2_bufchan_buf <= 1'd0;
    else
      if ((isZ1a86_3_2_argbuf_r && isZ1a86_3_2_bufchan_buf[0]))
        isZ1a86_3_2_bufchan_buf <= 1'd0;
      else if (((! isZ1a86_3_2_argbuf_r) && (! isZ1a86_3_2_bufchan_buf[0])))
        isZ1a86_3_2_bufchan_buf <= isZ1a86_3_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool) : (isZ1a86_3_destruct,MyDTBool_Bool) > [(isZ1a86_3_1,MyDTBool_Bool),
                                                                (isZ1a86_3_2,MyDTBool_Bool)] */
  logic [1:0] isZ1a86_3_destruct_emitted;
  logic [1:0] isZ1a86_3_destruct_done;
  assign isZ1a86_3_1_d = (isZ1a86_3_destruct_d[0] && (! isZ1a86_3_destruct_emitted[0]));
  assign isZ1a86_3_2_d = (isZ1a86_3_destruct_d[0] && (! isZ1a86_3_destruct_emitted[1]));
  assign isZ1a86_3_destruct_done = (isZ1a86_3_destruct_emitted | ({isZ1a86_3_2_d[0],
                                                                   isZ1a86_3_1_d[0]} & {isZ1a86_3_2_r,
                                                                                        isZ1a86_3_1_r}));
  assign isZ1a86_3_destruct_r = (& isZ1a86_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_3_destruct_emitted <= 2'd0;
    else
      isZ1a86_3_destruct_emitted <= (isZ1a86_3_destruct_r ? 2'd0 :
                                     isZ1a86_3_destruct_done);
  
  /* buf (Ty MyDTBool_Bool) : (isZ1a86_4_destruct,MyDTBool_Bool) > (isZ1a86_4_1_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t isZ1a86_4_destruct_bufchan_d;
  logic isZ1a86_4_destruct_bufchan_r;
  assign isZ1a86_4_destruct_r = ((! isZ1a86_4_destruct_bufchan_d[0]) || isZ1a86_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_4_destruct_bufchan_d <= 1'd0;
    else
      if (isZ1a86_4_destruct_r)
        isZ1a86_4_destruct_bufchan_d <= isZ1a86_4_destruct_d;
  MyDTBool_Bool_t isZ1a86_4_destruct_bufchan_buf;
  assign isZ1a86_4_destruct_bufchan_r = (! isZ1a86_4_destruct_bufchan_buf[0]);
  assign isZ1a86_4_1_argbuf_d = (isZ1a86_4_destruct_bufchan_buf[0] ? isZ1a86_4_destruct_bufchan_buf :
                                 isZ1a86_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a86_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((isZ1a86_4_1_argbuf_r && isZ1a86_4_destruct_bufchan_buf[0]))
        isZ1a86_4_destruct_bufchan_buf <= 1'd0;
      else if (((! isZ1a86_4_1_argbuf_r) && (! isZ1a86_4_destruct_bufchan_buf[0])))
        isZ1a86_4_destruct_bufchan_buf <= isZ1a86_4_destruct_bufchan_d;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_1QNode_Bool,QTree_Bool) > [(q1a8g_destruct,Pointer_QTree_Bool),
                                                                    (q2a8h_destruct,Pointer_QTree_Bool),
                                                                    (q3a8i_destruct,Pointer_QTree_Bool),
                                                                    (q4a8j_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_1QNode_Bool_done;
  assign q1a8g_destruct_d = {lizzieLet0_1QNode_Bool_d[18:3],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[0]))};
  assign q2a8h_destruct_d = {lizzieLet0_1QNode_Bool_d[34:19],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[1]))};
  assign q3a8i_destruct_d = {lizzieLet0_1QNode_Bool_d[50:35],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[2]))};
  assign q4a8j_destruct_d = {lizzieLet0_1QNode_Bool_d[66:51],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_1QNode_Bool_done = (lizzieLet0_1QNode_Bool_emitted | ({q4a8j_destruct_d[0],
                                                                           q3a8i_destruct_d[0],
                                                                           q2a8h_destruct_d[0],
                                                                           q1a8g_destruct_d[0]} & {q4a8j_destruct_r,
                                                                                                   q3a8i_destruct_r,
                                                                                                   q2a8h_destruct_r,
                                                                                                   q1a8g_destruct_r}));
  assign lizzieLet0_1QNode_Bool_r = (& lizzieLet0_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_1QNode_Bool_emitted <= (lizzieLet0_1QNode_Bool_r ? 4'd0 :
                                         lizzieLet0_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet0_1QVal_Bool,QTree_Bool) > [(v1a8a_destruct,MyBool)] */
  assign v1a8a_destruct_d = {lizzieLet0_1QVal_Bool_d[3:3],
                             lizzieLet0_1QVal_Bool_d[0]};
  assign lizzieLet0_1QVal_Bool_r = v1a8a_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_2,QTree_Bool) (lizzieLet0_1,QTree_Bool) > [(_53,QTree_Bool),
                                                                               (lizzieLet0_1QVal_Bool,QTree_Bool),
                                                                               (lizzieLet0_1QNode_Bool,QTree_Bool),
                                                                               (_52,QTree_Bool)] */
  logic [3:0] lizzieLet0_1_onehotd;
  always_comb
    if ((lizzieLet0_2_d[0] && lizzieLet0_1_d[0]))
      unique case (lizzieLet0_2_d[2:1])
        2'd0: lizzieLet0_1_onehotd = 4'd1;
        2'd1: lizzieLet0_1_onehotd = 4'd2;
        2'd2: lizzieLet0_1_onehotd = 4'd4;
        2'd3: lizzieLet0_1_onehotd = 4'd8;
        default: lizzieLet0_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_1_onehotd = 4'd0;
  assign _53_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[0]};
  assign lizzieLet0_1QVal_Bool_d = {lizzieLet0_1_d[66:1],
                                    lizzieLet0_1_onehotd[1]};
  assign lizzieLet0_1QNode_Bool_d = {lizzieLet0_1_d[66:1],
                                     lizzieLet0_1_onehotd[2]};
  assign _52_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[3]};
  assign lizzieLet0_1_r = (| (lizzieLet0_1_onehotd & {_52_r,
                                                      lizzieLet0_1QNode_Bool_r,
                                                      lizzieLet0_1QVal_Bool_r,
                                                      _53_r}));
  assign lizzieLet0_2_r = lizzieLet0_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet0_3,QTree_Bool) (ga87_goMux_mux,MyDTBool_Bool_Bool) > [(_51,MyDTBool_Bool_Bool),
                                                                                                 (lizzieLet0_3QVal_Bool,MyDTBool_Bool_Bool),
                                                                                                 (lizzieLet0_3QNode_Bool,MyDTBool_Bool_Bool),
                                                                                                 (_50,MyDTBool_Bool_Bool)] */
  logic [3:0] ga87_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet0_3_d[0] && ga87_goMux_mux_d[0]))
      unique case (lizzieLet0_3_d[2:1])
        2'd0: ga87_goMux_mux_onehotd = 4'd1;
        2'd1: ga87_goMux_mux_onehotd = 4'd2;
        2'd2: ga87_goMux_mux_onehotd = 4'd4;
        2'd3: ga87_goMux_mux_onehotd = 4'd8;
        default: ga87_goMux_mux_onehotd = 4'd0;
      endcase
    else ga87_goMux_mux_onehotd = 4'd0;
  assign _51_d = ga87_goMux_mux_onehotd[0];
  assign lizzieLet0_3QVal_Bool_d = ga87_goMux_mux_onehotd[1];
  assign lizzieLet0_3QNode_Bool_d = ga87_goMux_mux_onehotd[2];
  assign _50_d = ga87_goMux_mux_onehotd[3];
  assign ga87_goMux_mux_r = (| (ga87_goMux_mux_onehotd & {_50_r,
                                                          lizzieLet0_3QNode_Bool_r,
                                                          lizzieLet0_3QVal_Bool_r,
                                                          _51_r}));
  assign lizzieLet0_3_r = ga87_goMux_mux_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_4,QTree_Bool) (go_4_goMux_data,Go) > [(lizzieLet0_4QNone_Bool,Go),
                                                                  (lizzieLet0_4QVal_Bool,Go),
                                                                  (lizzieLet0_4QNode_Bool,Go),
                                                                  (lizzieLet0_4QError_Bool,Go)] */
  logic [3:0] go_4_goMux_data_onehotd;
  always_comb
    if ((lizzieLet0_4_d[0] && go_4_goMux_data_d[0]))
      unique case (lizzieLet0_4_d[2:1])
        2'd0: go_4_goMux_data_onehotd = 4'd1;
        2'd1: go_4_goMux_data_onehotd = 4'd2;
        2'd2: go_4_goMux_data_onehotd = 4'd4;
        2'd3: go_4_goMux_data_onehotd = 4'd8;
        default: go_4_goMux_data_onehotd = 4'd0;
      endcase
    else go_4_goMux_data_onehotd = 4'd0;
  assign lizzieLet0_4QNone_Bool_d = go_4_goMux_data_onehotd[0];
  assign lizzieLet0_4QVal_Bool_d = go_4_goMux_data_onehotd[1];
  assign lizzieLet0_4QNode_Bool_d = go_4_goMux_data_onehotd[2];
  assign lizzieLet0_4QError_Bool_d = go_4_goMux_data_onehotd[3];
  assign go_4_goMux_data_r = (| (go_4_goMux_data_onehotd & {lizzieLet0_4QError_Bool_r,
                                                            lizzieLet0_4QNode_Bool_r,
                                                            lizzieLet0_4QVal_Bool_r,
                                                            lizzieLet0_4QNone_Bool_r}));
  assign lizzieLet0_4_r = go_4_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QError_Bool,Go) > [(lizzieLet0_4QError_Bool_1,Go),
                                               (lizzieLet0_4QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QError_Bool_emitted;
  logic [1:0] lizzieLet0_4QError_Bool_done;
  assign lizzieLet0_4QError_Bool_1_d = (lizzieLet0_4QError_Bool_d[0] && (! lizzieLet0_4QError_Bool_emitted[0]));
  assign lizzieLet0_4QError_Bool_2_d = (lizzieLet0_4QError_Bool_d[0] && (! lizzieLet0_4QError_Bool_emitted[1]));
  assign lizzieLet0_4QError_Bool_done = (lizzieLet0_4QError_Bool_emitted | ({lizzieLet0_4QError_Bool_2_d[0],
                                                                             lizzieLet0_4QError_Bool_1_d[0]} & {lizzieLet0_4QError_Bool_2_r,
                                                                                                                lizzieLet0_4QError_Bool_1_r}));
  assign lizzieLet0_4QError_Bool_r = (& lizzieLet0_4QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QError_Bool_emitted <= (lizzieLet0_4QError_Bool_r ? 2'd0 :
                                          lizzieLet0_4QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet0_4QError_Bool_1,Go)] > (lizzieLet0_4QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet0_4QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet0_4QError_Bool_1_d[0]}), lizzieLet0_4QError_Bool_1_d);
  assign {lizzieLet0_4QError_Bool_1_r} = {1 {(lizzieLet0_4QError_Bool_1QError_Bool_r && lizzieLet0_4QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet0_4QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet10_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet0_4QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet0_4QError_Bool_1QError_Bool_r = ((! lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet0_4QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet0_4QError_Bool_1QError_Bool_r)
        lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d <= lizzieLet0_4QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet0_4QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet10_1_argbuf_d = (lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf :
                                   lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet10_1_argbuf_r && lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet10_1_argbuf_r) && (! lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet0_4QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet0_4QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QError_Bool_2,Go) > (lizzieLet0_4QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QError_Bool_2_bufchan_d;
  logic lizzieLet0_4QError_Bool_2_bufchan_r;
  assign lizzieLet0_4QError_Bool_2_r = ((! lizzieLet0_4QError_Bool_2_bufchan_d[0]) || lizzieLet0_4QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QError_Bool_2_r)
        lizzieLet0_4QError_Bool_2_bufchan_d <= lizzieLet0_4QError_Bool_2_d;
  Go_t lizzieLet0_4QError_Bool_2_bufchan_buf;
  assign lizzieLet0_4QError_Bool_2_bufchan_r = (! lizzieLet0_4QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QError_Bool_2_argbuf_d = (lizzieLet0_4QError_Bool_2_bufchan_buf[0] ? lizzieLet0_4QError_Bool_2_bufchan_buf :
                                               lizzieLet0_4QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QError_Bool_2_argbuf_r && lizzieLet0_4QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QError_Bool_2_argbuf_r) && (! lizzieLet0_4QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QError_Bool_2_bufchan_buf <= lizzieLet0_4QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool,Go) > (lizzieLet0_4QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNone_Bool_r = ((! lizzieLet0_4QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_r)
        lizzieLet0_4QNone_Bool_bufchan_d <= lizzieLet0_4QNone_Bool_d;
  Go_t lizzieLet0_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_bufchan_r = (! lizzieLet0_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_bufchan_buf :
                                              lizzieLet0_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_bufchan_buf <= lizzieLet0_4QNone_Bool_bufchan_d;
  
  /* mergectrl (Ty C11,Ty Go) : [(lizzieLet0_4QNone_Bool_1_argbuf,Go),
                            (lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf,Go),
                            (lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf,Go),
                            (es_0_1_1MyFalse_1_argbuf,Go),
                            (es_0_1_1MyTrue_2_argbuf,Go),
                            (lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf,Go),
                            (lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf,Go),
                            (lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf,Go),
                            (lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf,Go),
                            (lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf,Go),
                            (lizzieLet0_4QError_Bool_2_argbuf,Go)] > (go_6_goMux_choice,C11) (go_6_goMux_data,Go) */
  logic [10:0] lizzieLet0_4QNone_Bool_1_argbuf_select_d;
  assign lizzieLet0_4QNone_Bool_1_argbuf_select_d = ((| lizzieLet0_4QNone_Bool_1_argbuf_select_q) ? lizzieLet0_4QNone_Bool_1_argbuf_select_q :
                                                     (lizzieLet0_4QNone_Bool_1_argbuf_d[0] ? 11'd1 :
                                                      (lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_d[0] ? 11'd2 :
                                                       (lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_d[0] ? 11'd4 :
                                                        (es_0_1_1MyFalse_1_argbuf_d[0] ? 11'd8 :
                                                         (es_0_1_1MyTrue_2_argbuf_d[0] ? 11'd16 :
                                                          (lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_d[0] ? 11'd32 :
                                                           (lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_d[0] ? 11'd64 :
                                                            (lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_d[0] ? 11'd128 :
                                                             (lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_d[0] ? 11'd256 :
                                                              (lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_d[0] ? 11'd512 :
                                                               (lizzieLet0_4QError_Bool_2_argbuf_d[0] ? 11'd1024 :
                                                                11'd0))))))))))));
  logic [10:0] lizzieLet0_4QNone_Bool_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_1_argbuf_select_q <= 11'd0;
    else
      lizzieLet0_4QNone_Bool_1_argbuf_select_q <= (lizzieLet0_4QNone_Bool_1_argbuf_done ? 11'd0 :
                                                   lizzieLet0_4QNone_Bool_1_argbuf_select_d);
  logic [1:0] lizzieLet0_4QNone_Bool_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet0_4QNone_Bool_1_argbuf_emit_q <= (lizzieLet0_4QNone_Bool_1_argbuf_done ? 2'd0 :
                                                 lizzieLet0_4QNone_Bool_1_argbuf_emit_d);
  logic [1:0] lizzieLet0_4QNone_Bool_1_argbuf_emit_d;
  assign lizzieLet0_4QNone_Bool_1_argbuf_emit_d = (lizzieLet0_4QNone_Bool_1_argbuf_emit_q | ({go_6_goMux_choice_d[0],
                                                                                              go_6_goMux_data_d[0]} & {go_6_goMux_choice_r,
                                                                                                                       go_6_goMux_data_r}));
  logic lizzieLet0_4QNone_Bool_1_argbuf_done;
  assign lizzieLet0_4QNone_Bool_1_argbuf_done = (& lizzieLet0_4QNone_Bool_1_argbuf_emit_d);
  assign {lizzieLet0_4QError_Bool_2_argbuf_r,
          lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_r,
          lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_r,
          lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_r,
          lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_r,
          lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_r,
          es_0_1_1MyTrue_2_argbuf_r,
          es_0_1_1MyFalse_1_argbuf_r,
          lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_r,
          lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_r,
          lizzieLet0_4QNone_Bool_1_argbuf_r} = (lizzieLet0_4QNone_Bool_1_argbuf_done ? lizzieLet0_4QNone_Bool_1_argbuf_select_d :
                                                11'd0);
  assign go_6_goMux_data_d = ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[0] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_4QNone_Bool_1_argbuf_d :
                              ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[1] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_d :
                               ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[2] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_d :
                                ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[3] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? es_0_1_1MyFalse_1_argbuf_d :
                                 ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[4] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? es_0_1_1MyTrue_2_argbuf_d :
                                  ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[5] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_d :
                                   ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[6] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_d :
                                    ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[7] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_d :
                                     ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[8] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_d :
                                      ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[9] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_d :
                                       ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[10] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet0_4QError_Bool_2_argbuf_d :
                                        1'd0)))))))))));
  assign go_6_goMux_choice_d = ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[0] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C1_11_dc(1'd1) :
                                ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[1] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C2_11_dc(1'd1) :
                                 ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[2] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C3_11_dc(1'd1) :
                                  ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[3] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C4_11_dc(1'd1) :
                                   ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[4] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C5_11_dc(1'd1) :
                                    ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[5] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C6_11_dc(1'd1) :
                                     ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[6] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C7_11_dc(1'd1) :
                                      ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[7] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C8_11_dc(1'd1) :
                                       ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[8] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C9_11_dc(1'd1) :
                                        ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[9] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C10_11_dc(1'd1) :
                                         ((lizzieLet0_4QNone_Bool_1_argbuf_select_d[10] && (! lizzieLet0_4QNone_Bool_1_argbuf_emit_q[1])) ? C11_11_dc(1'd1) :
                                          {4'd0, 1'd0})))))))))));
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool) : (lizzieLet0_5,QTree_Bool) (isZ1a86_goMux_mux,MyDTBool_Bool) > [(_49,MyDTBool_Bool),
                                                                                          (lizzieLet0_5QVal_Bool,MyDTBool_Bool),
                                                                                          (lizzieLet0_5QNode_Bool,MyDTBool_Bool),
                                                                                          (_48,MyDTBool_Bool)] */
  logic [3:0] isZ1a86_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet0_5_d[0] && isZ1a86_goMux_mux_d[0]))
      unique case (lizzieLet0_5_d[2:1])
        2'd0: isZ1a86_goMux_mux_onehotd = 4'd1;
        2'd1: isZ1a86_goMux_mux_onehotd = 4'd2;
        2'd2: isZ1a86_goMux_mux_onehotd = 4'd4;
        2'd3: isZ1a86_goMux_mux_onehotd = 4'd8;
        default: isZ1a86_goMux_mux_onehotd = 4'd0;
      endcase
    else isZ1a86_goMux_mux_onehotd = 4'd0;
  assign _49_d = isZ1a86_goMux_mux_onehotd[0];
  assign lizzieLet0_5QVal_Bool_d = isZ1a86_goMux_mux_onehotd[1];
  assign lizzieLet0_5QNode_Bool_d = isZ1a86_goMux_mux_onehotd[2];
  assign _48_d = isZ1a86_goMux_mux_onehotd[3];
  assign isZ1a86_goMux_mux_r = (| (isZ1a86_goMux_mux_onehotd & {_48_r,
                                                                lizzieLet0_5QNode_Bool_r,
                                                                lizzieLet0_5QVal_Bool_r,
                                                                _49_r}));
  assign lizzieLet0_5_r = isZ1a86_goMux_mux_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_6,QTree_Bool) (readPointer_QTree_Boolm2a89_1_argbuf_rwb,QTree_Bool) > [(_47,QTree_Bool),
                                                                                                           (lizzieLet0_6QVal_Bool,QTree_Bool),
                                                                                                           (lizzieLet0_6QNode_Bool,QTree_Bool),
                                                                                                           (_46,QTree_Bool)] */
  logic [3:0] readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd;
  always_comb
    if ((lizzieLet0_6_d[0] && readPointer_QTree_Boolm2a89_1_argbuf_rwb_d[0]))
      unique case (lizzieLet0_6_d[2:1])
        2'd0: readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd1;
        2'd1: readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd2;
        2'd2: readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd4;
        2'd3: readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd8;
        default: readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd0;
      endcase
    else readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd = 4'd0;
  assign _47_d = {readPointer_QTree_Boolm2a89_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd[0]};
  assign lizzieLet0_6QVal_Bool_d = {readPointer_QTree_Boolm2a89_1_argbuf_rwb_d[66:1],
                                    readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_d = {readPointer_QTree_Boolm2a89_1_argbuf_rwb_d[66:1],
                                     readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd[2]};
  assign _46_d = {readPointer_QTree_Boolm2a89_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd[3]};
  assign readPointer_QTree_Boolm2a89_1_argbuf_rwb_r = (| (readPointer_QTree_Boolm2a89_1_argbuf_rwb_onehotd & {_46_r,
                                                                                                              lizzieLet0_6QNode_Bool_r,
                                                                                                              lizzieLet0_6QVal_Bool_r,
                                                                                                              _47_r}));
  assign lizzieLet0_6_r = readPointer_QTree_Boolm2a89_1_argbuf_rwb_r;
  
  /* fork (Ty QTree_Bool) : (lizzieLet0_6QNode_Bool,QTree_Bool) > [(lizzieLet0_6QNode_Bool_1,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_2,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_3,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_4,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_5,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_6,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_7,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_8,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_9,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_10,QTree_Bool),
                                                              (lizzieLet0_6QNode_Bool_11,QTree_Bool)] */
  logic [10:0] lizzieLet0_6QNode_Bool_emitted;
  logic [10:0] lizzieLet0_6QNode_Bool_done;
  assign lizzieLet0_6QNode_Bool_1_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[0]))};
  assign lizzieLet0_6QNode_Bool_2_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[1]))};
  assign lizzieLet0_6QNode_Bool_3_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[2]))};
  assign lizzieLet0_6QNode_Bool_4_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[3]))};
  assign lizzieLet0_6QNode_Bool_5_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[4]))};
  assign lizzieLet0_6QNode_Bool_6_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[5]))};
  assign lizzieLet0_6QNode_Bool_7_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[6]))};
  assign lizzieLet0_6QNode_Bool_8_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[7]))};
  assign lizzieLet0_6QNode_Bool_9_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                       (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[8]))};
  assign lizzieLet0_6QNode_Bool_10_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                        (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[9]))};
  assign lizzieLet0_6QNode_Bool_11_d = {lizzieLet0_6QNode_Bool_d[66:1],
                                        (lizzieLet0_6QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_emitted[10]))};
  assign lizzieLet0_6QNode_Bool_done = (lizzieLet0_6QNode_Bool_emitted | ({lizzieLet0_6QNode_Bool_11_d[0],
                                                                           lizzieLet0_6QNode_Bool_10_d[0],
                                                                           lizzieLet0_6QNode_Bool_9_d[0],
                                                                           lizzieLet0_6QNode_Bool_8_d[0],
                                                                           lizzieLet0_6QNode_Bool_7_d[0],
                                                                           lizzieLet0_6QNode_Bool_6_d[0],
                                                                           lizzieLet0_6QNode_Bool_5_d[0],
                                                                           lizzieLet0_6QNode_Bool_4_d[0],
                                                                           lizzieLet0_6QNode_Bool_3_d[0],
                                                                           lizzieLet0_6QNode_Bool_2_d[0],
                                                                           lizzieLet0_6QNode_Bool_1_d[0]} & {lizzieLet0_6QNode_Bool_11_r,
                                                                                                             lizzieLet0_6QNode_Bool_10_r,
                                                                                                             lizzieLet0_6QNode_Bool_9_r,
                                                                                                             lizzieLet0_6QNode_Bool_8_r,
                                                                                                             lizzieLet0_6QNode_Bool_7_r,
                                                                                                             lizzieLet0_6QNode_Bool_6_r,
                                                                                                             lizzieLet0_6QNode_Bool_5_r,
                                                                                                             lizzieLet0_6QNode_Bool_4_r,
                                                                                                             lizzieLet0_6QNode_Bool_3_r,
                                                                                                             lizzieLet0_6QNode_Bool_2_r,
                                                                                                             lizzieLet0_6QNode_Bool_1_r}));
  assign lizzieLet0_6QNode_Bool_r = (& lizzieLet0_6QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_6QNode_Bool_emitted <= 11'd0;
    else
      lizzieLet0_6QNode_Bool_emitted <= (lizzieLet0_6QNode_Bool_r ? 11'd0 :
                                         lizzieLet0_6QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_10,QTree_Bool) (q3a8i_destruct,Pointer_QTree_Bool) > [(_45,Pointer_QTree_Bool),
                                                                                                              (_44,Pointer_QTree_Bool),
                                                                                                              (lizzieLet0_6QNode_Bool_10QNode_Bool,Pointer_QTree_Bool),
                                                                                                              (_43,Pointer_QTree_Bool)] */
  logic [3:0] q3a8i_destruct_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_10_d[0] && q3a8i_destruct_d[0]))
      unique case (lizzieLet0_6QNode_Bool_10_d[2:1])
        2'd0: q3a8i_destruct_onehotd = 4'd1;
        2'd1: q3a8i_destruct_onehotd = 4'd2;
        2'd2: q3a8i_destruct_onehotd = 4'd4;
        2'd3: q3a8i_destruct_onehotd = 4'd8;
        default: q3a8i_destruct_onehotd = 4'd0;
      endcase
    else q3a8i_destruct_onehotd = 4'd0;
  assign _45_d = {q3a8i_destruct_d[16:1], q3a8i_destruct_onehotd[0]};
  assign _44_d = {q3a8i_destruct_d[16:1], q3a8i_destruct_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_10QNode_Bool_d = {q3a8i_destruct_d[16:1],
                                                  q3a8i_destruct_onehotd[2]};
  assign _43_d = {q3a8i_destruct_d[16:1], q3a8i_destruct_onehotd[3]};
  assign q3a8i_destruct_r = (| (q3a8i_destruct_onehotd & {_43_r,
                                                          lizzieLet0_6QNode_Bool_10QNode_Bool_r,
                                                          _44_r,
                                                          _45_r}));
  assign lizzieLet0_6QNode_Bool_10_r = q3a8i_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_11,QTree_Bool) (q4a8j_destruct,Pointer_QTree_Bool) > [(_42,Pointer_QTree_Bool),
                                                                                                              (_41,Pointer_QTree_Bool),
                                                                                                              (lizzieLet0_6QNode_Bool_11QNode_Bool,Pointer_QTree_Bool),
                                                                                                              (_40,Pointer_QTree_Bool)] */
  logic [3:0] q4a8j_destruct_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_11_d[0] && q4a8j_destruct_d[0]))
      unique case (lizzieLet0_6QNode_Bool_11_d[2:1])
        2'd0: q4a8j_destruct_onehotd = 4'd1;
        2'd1: q4a8j_destruct_onehotd = 4'd2;
        2'd2: q4a8j_destruct_onehotd = 4'd4;
        2'd3: q4a8j_destruct_onehotd = 4'd8;
        default: q4a8j_destruct_onehotd = 4'd0;
      endcase
    else q4a8j_destruct_onehotd = 4'd0;
  assign _42_d = {q4a8j_destruct_d[16:1], q4a8j_destruct_onehotd[0]};
  assign _41_d = {q4a8j_destruct_d[16:1], q4a8j_destruct_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_11QNode_Bool_d = {q4a8j_destruct_d[16:1],
                                                  q4a8j_destruct_onehotd[2]};
  assign _40_d = {q4a8j_destruct_d[16:1], q4a8j_destruct_onehotd[3]};
  assign q4a8j_destruct_r = (| (q4a8j_destruct_onehotd & {_40_r,
                                                          lizzieLet0_6QNode_Bool_11QNode_Bool_r,
                                                          _41_r,
                                                          _42_r}));
  assign lizzieLet0_6QNode_Bool_11_r = q4a8j_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_11QNode_Bool,Pointer_QTree_Bool) > (lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_11QNode_Bool_r = ((! lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QNode_Bool_11QNode_Bool_r)
        lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_11QNode_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf :
                                                           lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QNode_Bool_11QNode_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_11QNode_Bool_bufchan_d;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_6QNode_Bool_1QNode_Bool,QTree_Bool) > [(t1a8l_destruct,Pointer_QTree_Bool),
                                                                                (t2a8m_destruct,Pointer_QTree_Bool),
                                                                                (t3a8n_destruct,Pointer_QTree_Bool),
                                                                                (t4a8o_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_6QNode_Bool_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_6QNode_Bool_1QNode_Bool_done;
  assign t1a8l_destruct_d = {lizzieLet0_6QNode_Bool_1QNode_Bool_d[18:3],
                             (lizzieLet0_6QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_1QNode_Bool_emitted[0]))};
  assign t2a8m_destruct_d = {lizzieLet0_6QNode_Bool_1QNode_Bool_d[34:19],
                             (lizzieLet0_6QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_1QNode_Bool_emitted[1]))};
  assign t3a8n_destruct_d = {lizzieLet0_6QNode_Bool_1QNode_Bool_d[50:35],
                             (lizzieLet0_6QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_1QNode_Bool_emitted[2]))};
  assign t4a8o_destruct_d = {lizzieLet0_6QNode_Bool_1QNode_Bool_d[66:51],
                             (lizzieLet0_6QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_6QNode_Bool_1QNode_Bool_done = (lizzieLet0_6QNode_Bool_1QNode_Bool_emitted | ({t4a8o_destruct_d[0],
                                                                                                   t3a8n_destruct_d[0],
                                                                                                   t2a8m_destruct_d[0],
                                                                                                   t1a8l_destruct_d[0]} & {t4a8o_destruct_r,
                                                                                                                           t3a8n_destruct_r,
                                                                                                                           t2a8m_destruct_r,
                                                                                                                           t1a8l_destruct_r}));
  assign lizzieLet0_6QNode_Bool_1QNode_Bool_r = (& lizzieLet0_6QNode_Bool_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_6QNode_Bool_1QNode_Bool_emitted <= (lizzieLet0_6QNode_Bool_1QNode_Bool_r ? 4'd0 :
                                                     lizzieLet0_6QNode_Bool_1QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_6QNode_Bool_2,QTree_Bool) (lizzieLet0_6QNode_Bool_1,QTree_Bool) > [(_39,QTree_Bool),
                                                                                                       (_38,QTree_Bool),
                                                                                                       (lizzieLet0_6QNode_Bool_1QNode_Bool,QTree_Bool),
                                                                                                       (_37,QTree_Bool)] */
  logic [3:0] lizzieLet0_6QNode_Bool_1_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_2_d[0] && lizzieLet0_6QNode_Bool_1_d[0]))
      unique case (lizzieLet0_6QNode_Bool_2_d[2:1])
        2'd0: lizzieLet0_6QNode_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet0_6QNode_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet0_6QNode_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet0_6QNode_Bool_1_onehotd = 4'd8;
        default: lizzieLet0_6QNode_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_6QNode_Bool_1_onehotd = 4'd0;
  assign _39_d = {lizzieLet0_6QNode_Bool_1_d[66:1],
                  lizzieLet0_6QNode_Bool_1_onehotd[0]};
  assign _38_d = {lizzieLet0_6QNode_Bool_1_d[66:1],
                  lizzieLet0_6QNode_Bool_1_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_1QNode_Bool_d = {lizzieLet0_6QNode_Bool_1_d[66:1],
                                                 lizzieLet0_6QNode_Bool_1_onehotd[2]};
  assign _37_d = {lizzieLet0_6QNode_Bool_1_d[66:1],
                  lizzieLet0_6QNode_Bool_1_onehotd[3]};
  assign lizzieLet0_6QNode_Bool_1_r = (| (lizzieLet0_6QNode_Bool_1_onehotd & {_37_r,
                                                                              lizzieLet0_6QNode_Bool_1QNode_Bool_r,
                                                                              _38_r,
                                                                              _39_r}));
  assign lizzieLet0_6QNode_Bool_2_r = lizzieLet0_6QNode_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet0_6QNode_Bool_3,QTree_Bool) (lizzieLet0_3QNode_Bool,MyDTBool_Bool_Bool) > [(_36,MyDTBool_Bool_Bool),
                                                                                                                     (_35,MyDTBool_Bool_Bool),
                                                                                                                     (lizzieLet0_6QNode_Bool_3QNode_Bool,MyDTBool_Bool_Bool),
                                                                                                                     (_34,MyDTBool_Bool_Bool)] */
  logic [3:0] lizzieLet0_3QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_3_d[0] && lizzieLet0_3QNode_Bool_d[0]))
      unique case (lizzieLet0_6QNode_Bool_3_d[2:1])
        2'd0: lizzieLet0_3QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_3QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_3QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_3QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_3QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_3QNode_Bool_onehotd = 4'd0;
  assign _36_d = lizzieLet0_3QNode_Bool_onehotd[0];
  assign _35_d = lizzieLet0_3QNode_Bool_onehotd[1];
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_d = lizzieLet0_3QNode_Bool_onehotd[2];
  assign _34_d = lizzieLet0_3QNode_Bool_onehotd[3];
  assign lizzieLet0_3QNode_Bool_r = (| (lizzieLet0_3QNode_Bool_onehotd & {_34_r,
                                                                          lizzieLet0_6QNode_Bool_3QNode_Bool_r,
                                                                          _35_r,
                                                                          _36_r}));
  assign lizzieLet0_6QNode_Bool_3_r = lizzieLet0_3QNode_Bool_r;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (lizzieLet0_6QNode_Bool_3QNode_Bool,MyDTBool_Bool_Bool) > [(lizzieLet0_6QNode_Bool_3QNode_Bool_1,MyDTBool_Bool_Bool),
                                                                                          (lizzieLet0_6QNode_Bool_3QNode_Bool_2,MyDTBool_Bool_Bool)] */
  logic [1:0] lizzieLet0_6QNode_Bool_3QNode_Bool_emitted;
  logic [1:0] lizzieLet0_6QNode_Bool_3QNode_Bool_done;
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_1_d = (lizzieLet0_6QNode_Bool_3QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_3QNode_Bool_emitted[0]));
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_2_d = (lizzieLet0_6QNode_Bool_3QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_3QNode_Bool_emitted[1]));
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_done = (lizzieLet0_6QNode_Bool_3QNode_Bool_emitted | ({lizzieLet0_6QNode_Bool_3QNode_Bool_2_d[0],
                                                                                                   lizzieLet0_6QNode_Bool_3QNode_Bool_1_d[0]} & {lizzieLet0_6QNode_Bool_3QNode_Bool_2_r,
                                                                                                                                                 lizzieLet0_6QNode_Bool_3QNode_Bool_1_r}));
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_r = (& lizzieLet0_6QNode_Bool_3QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_3QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QNode_Bool_3QNode_Bool_emitted <= (lizzieLet0_6QNode_Bool_3QNode_Bool_r ? 2'd0 :
                                                     lizzieLet0_6QNode_Bool_3QNode_Bool_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (lizzieLet0_6QNode_Bool_3QNode_Bool_2,MyDTBool_Bool_Bool) > (lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d;
  logic lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_r;
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_2_r = ((! lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d[0]) || lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_3QNode_Bool_2_r)
        lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d <= lizzieLet0_6QNode_Bool_3QNode_Bool_2_d;
  MyDTBool_Bool_Bool_t lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_r = (! lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_d = (lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_r && lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_3QNode_Bool_2_argbuf_r) && (! lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_buf <= lizzieLet0_6QNode_Bool_3QNode_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_6QNode_Bool_4,QTree_Bool) (lizzieLet0_4QNode_Bool,Go) > [(lizzieLet0_6QNode_Bool_4QNone_Bool,Go),
                                                                                     (lizzieLet0_6QNode_Bool_4QVal_Bool,Go),
                                                                                     (lizzieLet0_6QNode_Bool_4QNode_Bool,Go),
                                                                                     (lizzieLet0_6QNode_Bool_4QError_Bool,Go)] */
  logic [3:0] lizzieLet0_4QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_4_d[0] && lizzieLet0_4QNode_Bool_d[0]))
      unique case (lizzieLet0_6QNode_Bool_4_d[2:1])
        2'd0: lizzieLet0_4QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_4QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_4QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_4QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_4QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_4QNode_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QNode_Bool_4QNone_Bool_d = lizzieLet0_4QNode_Bool_onehotd[0];
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_d = lizzieLet0_4QNode_Bool_onehotd[1];
  assign lizzieLet0_6QNode_Bool_4QNode_Bool_d = lizzieLet0_4QNode_Bool_onehotd[2];
  assign lizzieLet0_6QNode_Bool_4QError_Bool_d = lizzieLet0_4QNode_Bool_onehotd[3];
  assign lizzieLet0_4QNode_Bool_r = (| (lizzieLet0_4QNode_Bool_onehotd & {lizzieLet0_6QNode_Bool_4QError_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_4QNode_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_4QVal_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_4QNone_Bool_r}));
  assign lizzieLet0_6QNode_Bool_4_r = lizzieLet0_4QNode_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_6QNode_Bool_4QError_Bool,Go) > [(lizzieLet0_6QNode_Bool_4QError_Bool_1,Go),
                                                           (lizzieLet0_6QNode_Bool_4QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_6QNode_Bool_4QError_Bool_emitted;
  logic [1:0] lizzieLet0_6QNode_Bool_4QError_Bool_done;
  assign lizzieLet0_6QNode_Bool_4QError_Bool_1_d = (lizzieLet0_6QNode_Bool_4QError_Bool_d[0] && (! lizzieLet0_6QNode_Bool_4QError_Bool_emitted[0]));
  assign lizzieLet0_6QNode_Bool_4QError_Bool_2_d = (lizzieLet0_6QNode_Bool_4QError_Bool_d[0] && (! lizzieLet0_6QNode_Bool_4QError_Bool_emitted[1]));
  assign lizzieLet0_6QNode_Bool_4QError_Bool_done = (lizzieLet0_6QNode_Bool_4QError_Bool_emitted | ({lizzieLet0_6QNode_Bool_4QError_Bool_2_d[0],
                                                                                                     lizzieLet0_6QNode_Bool_4QError_Bool_1_d[0]} & {lizzieLet0_6QNode_Bool_4QError_Bool_2_r,
                                                                                                                                                    lizzieLet0_6QNode_Bool_4QError_Bool_1_r}));
  assign lizzieLet0_6QNode_Bool_4QError_Bool_r = (& lizzieLet0_6QNode_Bool_4QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QNode_Bool_4QError_Bool_emitted <= (lizzieLet0_6QNode_Bool_4QError_Bool_r ? 2'd0 :
                                                      lizzieLet0_6QNode_Bool_4QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet0_6QNode_Bool_4QError_Bool_1,Go)] > (lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet0_6QNode_Bool_4QError_Bool_1_d[0]}), lizzieLet0_6QNode_Bool_4QError_Bool_1_d);
  assign {lizzieLet0_6QNode_Bool_4QError_Bool_1_r} = {1 {(lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_r && lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet9_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_r = ((! lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                     1'd0};
    else
      if (lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_r)
        lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet9_1_argbuf_d = (lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf :
                                  lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
    else
      if ((lizzieLet9_1_argbuf_r && lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                         1'd0};
      else if (((! lizzieLet9_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_4QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QNode_Bool_4QError_Bool_2,Go) > (lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QError_Bool_2_r = ((! lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_4QError_Bool_2_r)
        lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d <= lizzieLet0_6QNode_Bool_4QError_Bool_2_d;
  Go_t lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_r = (! lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_d = (lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf :
                                                           lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_r && lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_4QError_Bool_2_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_buf <= lizzieLet0_6QNode_Bool_4QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QNode_Bool_4QNode_Bool,Go) > (lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QNode_Bool_r = ((! lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_4QNode_Bool_r)
        lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_4QNode_Bool_d;
  Go_t lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_4QNode_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_4QNode_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QNode_Bool_4QNone_Bool,Go) > (lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QNone_Bool_r = ((! lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_4QNone_Bool_r)
        lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_4QNone_Bool_d;
  Go_t lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_4QNone_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_6QNode_Bool_4QVal_Bool,Go) > [(lizzieLet0_6QNode_Bool_4QVal_Bool_1,Go),
                                                         (lizzieLet0_6QNode_Bool_4QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet0_6QNode_Bool_4QVal_Bool_emitted;
  logic [1:0] lizzieLet0_6QNode_Bool_4QVal_Bool_done;
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_1_d = (lizzieLet0_6QNode_Bool_4QVal_Bool_d[0] && (! lizzieLet0_6QNode_Bool_4QVal_Bool_emitted[0]));
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_2_d = (lizzieLet0_6QNode_Bool_4QVal_Bool_d[0] && (! lizzieLet0_6QNode_Bool_4QVal_Bool_emitted[1]));
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_done = (lizzieLet0_6QNode_Bool_4QVal_Bool_emitted | ({lizzieLet0_6QNode_Bool_4QVal_Bool_2_d[0],
                                                                                                 lizzieLet0_6QNode_Bool_4QVal_Bool_1_d[0]} & {lizzieLet0_6QNode_Bool_4QVal_Bool_2_r,
                                                                                                                                              lizzieLet0_6QNode_Bool_4QVal_Bool_1_r}));
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_r = (& lizzieLet0_6QNode_Bool_4QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QNode_Bool_4QVal_Bool_emitted <= (lizzieLet0_6QNode_Bool_4QVal_Bool_r ? 2'd0 :
                                                    lizzieLet0_6QNode_Bool_4QVal_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet0_6QNode_Bool_4QVal_Bool_1,Go)] > (lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet0_6QNode_Bool_4QVal_Bool_1_d[0]}), lizzieLet0_6QNode_Bool_4QVal_Bool_1_d);
  assign {lizzieLet0_6QNode_Bool_4QVal_Bool_1_r} = {1 {(lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_r && lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool,QTree_Bool) > (lizzieLet7_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_r = ((! lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                   1'd0};
    else
      if (lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_r)
        lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet7_1_argbuf_d = (lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf :
                                  lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                     1'd0};
    else
      if ((lizzieLet7_1_argbuf_r && lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
      else if (((! lizzieLet7_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_4QVal_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QNode_Bool_4QVal_Bool_2,Go) > (lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d;
  logic lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_r;
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_2_r = ((! lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d[0]) || lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_4QVal_Bool_2_r)
        lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d <= lizzieLet0_6QNode_Bool_4QVal_Bool_2_d;
  Go_t lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_r = (! lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_d = (lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf :
                                                         lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_r && lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_4QVal_Bool_2_argbuf_r) && (! lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_buf <= lizzieLet0_6QNode_Bool_4QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool) : (lizzieLet0_6QNode_Bool_5,QTree_Bool) (lizzieLet0_5QNode_Bool,MyDTBool_Bool) > [(_33,MyDTBool_Bool),
                                                                                                           (_32,MyDTBool_Bool),
                                                                                                           (lizzieLet0_6QNode_Bool_5QNode_Bool,MyDTBool_Bool),
                                                                                                           (_31,MyDTBool_Bool)] */
  logic [3:0] lizzieLet0_5QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_5_d[0] && lizzieLet0_5QNode_Bool_d[0]))
      unique case (lizzieLet0_6QNode_Bool_5_d[2:1])
        2'd0: lizzieLet0_5QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_5QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_5QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_5QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_5QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_5QNode_Bool_onehotd = 4'd0;
  assign _33_d = lizzieLet0_5QNode_Bool_onehotd[0];
  assign _32_d = lizzieLet0_5QNode_Bool_onehotd[1];
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_d = lizzieLet0_5QNode_Bool_onehotd[2];
  assign _31_d = lizzieLet0_5QNode_Bool_onehotd[3];
  assign lizzieLet0_5QNode_Bool_r = (| (lizzieLet0_5QNode_Bool_onehotd & {_31_r,
                                                                          lizzieLet0_6QNode_Bool_5QNode_Bool_r,
                                                                          _32_r,
                                                                          _33_r}));
  assign lizzieLet0_6QNode_Bool_5_r = lizzieLet0_5QNode_Bool_r;
  
  /* fork (Ty MyDTBool_Bool) : (lizzieLet0_6QNode_Bool_5QNode_Bool,MyDTBool_Bool) > [(lizzieLet0_6QNode_Bool_5QNode_Bool_1,MyDTBool_Bool),
                                                                                (lizzieLet0_6QNode_Bool_5QNode_Bool_2,MyDTBool_Bool)] */
  logic [1:0] lizzieLet0_6QNode_Bool_5QNode_Bool_emitted;
  logic [1:0] lizzieLet0_6QNode_Bool_5QNode_Bool_done;
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_1_d = (lizzieLet0_6QNode_Bool_5QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_5QNode_Bool_emitted[0]));
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_2_d = (lizzieLet0_6QNode_Bool_5QNode_Bool_d[0] && (! lizzieLet0_6QNode_Bool_5QNode_Bool_emitted[1]));
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_done = (lizzieLet0_6QNode_Bool_5QNode_Bool_emitted | ({lizzieLet0_6QNode_Bool_5QNode_Bool_2_d[0],
                                                                                                   lizzieLet0_6QNode_Bool_5QNode_Bool_1_d[0]} & {lizzieLet0_6QNode_Bool_5QNode_Bool_2_r,
                                                                                                                                                 lizzieLet0_6QNode_Bool_5QNode_Bool_1_r}));
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_r = (& lizzieLet0_6QNode_Bool_5QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_5QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QNode_Bool_5QNode_Bool_emitted <= (lizzieLet0_6QNode_Bool_5QNode_Bool_r ? 2'd0 :
                                                     lizzieLet0_6QNode_Bool_5QNode_Bool_done);
  
  /* buf (Ty MyDTBool_Bool) : (lizzieLet0_6QNode_Bool_5QNode_Bool_2,MyDTBool_Bool) > (lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d;
  logic lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_r;
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_2_r = ((! lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d[0]) || lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QNode_Bool_5QNode_Bool_2_r)
        lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d <= lizzieLet0_6QNode_Bool_5QNode_Bool_2_d;
  MyDTBool_Bool_t lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_r = (! lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_d = (lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_r && lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QNode_Bool_5QNode_Bool_2_argbuf_r) && (! lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_buf <= lizzieLet0_6QNode_Bool_5QNode_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_6,QTree_Bool) (lizzieLet0_7QNode_Bool,Pointer_QTree_Bool) > [(lizzieLet0_6QNode_Bool_6QNone_Bool,Pointer_QTree_Bool),
                                                                                                                     (_30,Pointer_QTree_Bool),
                                                                                                                     (_29,Pointer_QTree_Bool),
                                                                                                                     (_28,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_7QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_6_d[0] && lizzieLet0_7QNode_Bool_d[0]))
      unique case (lizzieLet0_6QNode_Bool_6_d[2:1])
        2'd0: lizzieLet0_7QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_7QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_7QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_7QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_7QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_7QNode_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QNode_Bool_6QNone_Bool_d = {lizzieLet0_7QNode_Bool_d[16:1],
                                                 lizzieLet0_7QNode_Bool_onehotd[0]};
  assign _30_d = {lizzieLet0_7QNode_Bool_d[16:1],
                  lizzieLet0_7QNode_Bool_onehotd[1]};
  assign _29_d = {lizzieLet0_7QNode_Bool_d[16:1],
                  lizzieLet0_7QNode_Bool_onehotd[2]};
  assign _28_d = {lizzieLet0_7QNode_Bool_d[16:1],
                  lizzieLet0_7QNode_Bool_onehotd[3]};
  assign lizzieLet0_7QNode_Bool_r = (| (lizzieLet0_7QNode_Bool_onehotd & {_28_r,
                                                                          _29_r,
                                                                          _30_r,
                                                                          lizzieLet0_6QNode_Bool_6QNone_Bool_r}));
  assign lizzieLet0_6QNode_Bool_6_r = lizzieLet0_7QNode_Bool_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_6QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_6QNone_Bool_r = ((! lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QNode_Bool_6QNone_Bool_r)
        lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_6QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QNode_Bool_6QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_6QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QNode_Bool_7,QTree_Bool) (lizzieLet0_9QNode_Bool,Pointer_CTmAdd_mAdd_Bool) > [(lizzieLet0_6QNode_Bool_7QNone_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                 (lizzieLet0_6QNode_Bool_7QVal_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                 (lizzieLet0_6QNode_Bool_7QNode_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                                 (lizzieLet0_6QNode_Bool_7QError_Bool,Pointer_CTmAdd_mAdd_Bool)] */
  logic [3:0] lizzieLet0_9QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_7_d[0] && lizzieLet0_9QNode_Bool_d[0]))
      unique case (lizzieLet0_6QNode_Bool_7_d[2:1])
        2'd0: lizzieLet0_9QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_9QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_9QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_9QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_9QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_9QNode_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QNode_Bool_7QNone_Bool_d = {lizzieLet0_9QNode_Bool_d[16:1],
                                                 lizzieLet0_9QNode_Bool_onehotd[0]};
  assign lizzieLet0_6QNode_Bool_7QVal_Bool_d = {lizzieLet0_9QNode_Bool_d[16:1],
                                                lizzieLet0_9QNode_Bool_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_7QNode_Bool_d = {lizzieLet0_9QNode_Bool_d[16:1],
                                                 lizzieLet0_9QNode_Bool_onehotd[2]};
  assign lizzieLet0_6QNode_Bool_7QError_Bool_d = {lizzieLet0_9QNode_Bool_d[16:1],
                                                  lizzieLet0_9QNode_Bool_onehotd[3]};
  assign lizzieLet0_9QNode_Bool_r = (| (lizzieLet0_9QNode_Bool_onehotd & {lizzieLet0_6QNode_Bool_7QError_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_7QNode_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_7QVal_Bool_r,
                                                                          lizzieLet0_6QNode_Bool_7QNone_Bool_r}));
  assign lizzieLet0_6QNode_Bool_7_r = lizzieLet0_9QNode_Bool_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QNode_Bool_7QError_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_7QError_Bool_r = ((! lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QNode_Bool_7QError_Bool_r)
        lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_7QError_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf :
                                                           lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QNode_Bool_7QError_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_7QError_Bool_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Bool,
      Dcon Lcall_mAdd_mAdd_Bool3) : [(lizzieLet0_6QNode_Bool_7QNode_Bool,Pointer_CTmAdd_mAdd_Bool),
                                     (lizzieLet0_6QNode_Bool_5QNode_Bool_1,MyDTBool_Bool),
                                     (lizzieLet0_6QNode_Bool_3QNode_Bool_1,MyDTBool_Bool_Bool),
                                     (lizzieLet0_6QNode_Bool_8QNode_Bool,Pointer_QTree_Bool),
                                     (t1a8l_destruct,Pointer_QTree_Bool),
                                     (lizzieLet0_6QNode_Bool_9QNode_Bool,Pointer_QTree_Bool),
                                     (t2a8m_destruct,Pointer_QTree_Bool),
                                     (lizzieLet0_6QNode_Bool_10QNode_Bool,Pointer_QTree_Bool),
                                     (t3a8n_destruct,Pointer_QTree_Bool)] > (lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3,CTmAdd_mAdd_Bool) */
  assign lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_d = Lcall_mAdd_mAdd_Bool3_dc((& {lizzieLet0_6QNode_Bool_7QNode_Bool_d[0],
                                                                                                                                                                                                                                                                                                              lizzieLet0_6QNode_Bool_5QNode_Bool_1_d[0],
                                                                                                                                                                                                                                                                                                              lizzieLet0_6QNode_Bool_3QNode_Bool_1_d[0],
                                                                                                                                                                                                                                                                                                              lizzieLet0_6QNode_Bool_8QNode_Bool_d[0],
                                                                                                                                                                                                                                                                                                              t1a8l_destruct_d[0],
                                                                                                                                                                                                                                                                                                              lizzieLet0_6QNode_Bool_9QNode_Bool_d[0],
                                                                                                                                                                                                                                                                                                              t2a8m_destruct_d[0],
                                                                                                                                                                                                                                                                                                              lizzieLet0_6QNode_Bool_10QNode_Bool_d[0],
                                                                                                                                                                                                                                                                                                              t3a8n_destruct_d[0]}), lizzieLet0_6QNode_Bool_7QNode_Bool_d, lizzieLet0_6QNode_Bool_5QNode_Bool_1_d, lizzieLet0_6QNode_Bool_3QNode_Bool_1_d, lizzieLet0_6QNode_Bool_8QNode_Bool_d, t1a8l_destruct_d, lizzieLet0_6QNode_Bool_9QNode_Bool_d, t2a8m_destruct_d, lizzieLet0_6QNode_Bool_10QNode_Bool_d, t3a8n_destruct_d);
  assign {lizzieLet0_6QNode_Bool_7QNode_Bool_r,
          lizzieLet0_6QNode_Bool_5QNode_Bool_1_r,
          lizzieLet0_6QNode_Bool_3QNode_Bool_1_r,
          lizzieLet0_6QNode_Bool_8QNode_Bool_r,
          t1a8l_destruct_r,
          lizzieLet0_6QNode_Bool_9QNode_Bool_r,
          t2a8m_destruct_r,
          lizzieLet0_6QNode_Bool_10QNode_Bool_r,
          t3a8n_destruct_r} = {9 {(lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_r && lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3,CTmAdd_mAdd_Bool) > (lizzieLet8_1_argbuf,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d;
  logic lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_r;
  assign lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_r = ((! lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d[0]) || lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d <= {115'd0,
                                                                                                                                                                                                                                                                                        1'd0};
    else
      if (lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_r)
        lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d <= lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_d;
  CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_r = (! lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf[0]);
  assign lizzieLet8_1_argbuf_d = (lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf :
                                  lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                                                          1'd0};
    else
      if ((lizzieLet8_1_argbuf_r && lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                                                            1'd0};
      else if (((! lizzieLet8_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_buf <= lizzieLet0_6QNode_Bool_7QNode_Bool_1lizzieLet0_6QNode_Bool_5QNode_Bool_1lizzieLet0_6QNode_Bool_3QNode_Bool_1lizzieLet0_6QNode_Bool_8QNode_Bool_1t1a8l_1lizzieLet0_6QNode_Bool_9QNode_Bool_1t2a8m_1lizzieLet0_6QNode_Bool_10QNode_Bool_1t3a8n_1Lcall_mAdd_mAdd_Bool3_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QNode_Bool_7QNone_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_7QNone_Bool_r = ((! lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QNode_Bool_7QNone_Bool_r)
        lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_7QNone_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf :
                                                          lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QNode_Bool_7QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_7QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QNode_Bool_7QVal_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d;
  logic lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_r;
  assign lizzieLet0_6QNode_Bool_7QVal_Bool_r = ((! lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d[0]) || lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QNode_Bool_7QVal_Bool_r)
        lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d <= lizzieLet0_6QNode_Bool_7QVal_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf;
  assign lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_r = (! lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_d = (lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf[0] ? lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf :
                                                         lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_r && lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf[0]))
        lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QNode_Bool_7QVal_Bool_1_argbuf_r) && (! lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf[0])))
        lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_buf <= lizzieLet0_6QNode_Bool_7QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_8,QTree_Bool) (q1a8g_destruct,Pointer_QTree_Bool) > [(_27,Pointer_QTree_Bool),
                                                                                                             (_26,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_6QNode_Bool_8QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_25,Pointer_QTree_Bool)] */
  logic [3:0] q1a8g_destruct_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_8_d[0] && q1a8g_destruct_d[0]))
      unique case (lizzieLet0_6QNode_Bool_8_d[2:1])
        2'd0: q1a8g_destruct_onehotd = 4'd1;
        2'd1: q1a8g_destruct_onehotd = 4'd2;
        2'd2: q1a8g_destruct_onehotd = 4'd4;
        2'd3: q1a8g_destruct_onehotd = 4'd8;
        default: q1a8g_destruct_onehotd = 4'd0;
      endcase
    else q1a8g_destruct_onehotd = 4'd0;
  assign _27_d = {q1a8g_destruct_d[16:1], q1a8g_destruct_onehotd[0]};
  assign _26_d = {q1a8g_destruct_d[16:1], q1a8g_destruct_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_8QNode_Bool_d = {q1a8g_destruct_d[16:1],
                                                 q1a8g_destruct_onehotd[2]};
  assign _25_d = {q1a8g_destruct_d[16:1], q1a8g_destruct_onehotd[3]};
  assign q1a8g_destruct_r = (| (q1a8g_destruct_onehotd & {_25_r,
                                                          lizzieLet0_6QNode_Bool_8QNode_Bool_r,
                                                          _26_r,
                                                          _27_r}));
  assign lizzieLet0_6QNode_Bool_8_r = q1a8g_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QNode_Bool_9,QTree_Bool) (q2a8h_destruct,Pointer_QTree_Bool) > [(_24,Pointer_QTree_Bool),
                                                                                                             (_23,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_6QNode_Bool_9QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_22,Pointer_QTree_Bool)] */
  logic [3:0] q2a8h_destruct_onehotd;
  always_comb
    if ((lizzieLet0_6QNode_Bool_9_d[0] && q2a8h_destruct_d[0]))
      unique case (lizzieLet0_6QNode_Bool_9_d[2:1])
        2'd0: q2a8h_destruct_onehotd = 4'd1;
        2'd1: q2a8h_destruct_onehotd = 4'd2;
        2'd2: q2a8h_destruct_onehotd = 4'd4;
        2'd3: q2a8h_destruct_onehotd = 4'd8;
        default: q2a8h_destruct_onehotd = 4'd0;
      endcase
    else q2a8h_destruct_onehotd = 4'd0;
  assign _24_d = {q2a8h_destruct_d[16:1], q2a8h_destruct_onehotd[0]};
  assign _23_d = {q2a8h_destruct_d[16:1], q2a8h_destruct_onehotd[1]};
  assign lizzieLet0_6QNode_Bool_9QNode_Bool_d = {q2a8h_destruct_d[16:1],
                                                 q2a8h_destruct_onehotd[2]};
  assign _22_d = {q2a8h_destruct_d[16:1], q2a8h_destruct_onehotd[3]};
  assign q2a8h_destruct_r = (| (q2a8h_destruct_onehotd & {_22_r,
                                                          lizzieLet0_6QNode_Bool_9QNode_Bool_r,
                                                          _23_r,
                                                          _24_r}));
  assign lizzieLet0_6QNode_Bool_9_r = q2a8h_destruct_r;
  
  /* fork (Ty QTree_Bool) : (lizzieLet0_6QVal_Bool,QTree_Bool) > [(lizzieLet0_6QVal_Bool_1,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_2,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_3,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_4,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_5,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_6,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_7,QTree_Bool),
                                                             (lizzieLet0_6QVal_Bool_8,QTree_Bool)] */
  logic [7:0] lizzieLet0_6QVal_Bool_emitted;
  logic [7:0] lizzieLet0_6QVal_Bool_done;
  assign lizzieLet0_6QVal_Bool_1_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[0]))};
  assign lizzieLet0_6QVal_Bool_2_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[1]))};
  assign lizzieLet0_6QVal_Bool_3_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[2]))};
  assign lizzieLet0_6QVal_Bool_4_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[3]))};
  assign lizzieLet0_6QVal_Bool_5_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[4]))};
  assign lizzieLet0_6QVal_Bool_6_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[5]))};
  assign lizzieLet0_6QVal_Bool_7_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[6]))};
  assign lizzieLet0_6QVal_Bool_8_d = {lizzieLet0_6QVal_Bool_d[66:1],
                                      (lizzieLet0_6QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_emitted[7]))};
  assign lizzieLet0_6QVal_Bool_done = (lizzieLet0_6QVal_Bool_emitted | ({lizzieLet0_6QVal_Bool_8_d[0],
                                                                         lizzieLet0_6QVal_Bool_7_d[0],
                                                                         lizzieLet0_6QVal_Bool_6_d[0],
                                                                         lizzieLet0_6QVal_Bool_5_d[0],
                                                                         lizzieLet0_6QVal_Bool_4_d[0],
                                                                         lizzieLet0_6QVal_Bool_3_d[0],
                                                                         lizzieLet0_6QVal_Bool_2_d[0],
                                                                         lizzieLet0_6QVal_Bool_1_d[0]} & {lizzieLet0_6QVal_Bool_8_r,
                                                                                                          lizzieLet0_6QVal_Bool_7_r,
                                                                                                          lizzieLet0_6QVal_Bool_6_r,
                                                                                                          lizzieLet0_6QVal_Bool_5_r,
                                                                                                          lizzieLet0_6QVal_Bool_4_r,
                                                                                                          lizzieLet0_6QVal_Bool_3_r,
                                                                                                          lizzieLet0_6QVal_Bool_2_r,
                                                                                                          lizzieLet0_6QVal_Bool_1_r}));
  assign lizzieLet0_6QVal_Bool_r = (& lizzieLet0_6QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_6QVal_Bool_emitted <= 8'd0;
    else
      lizzieLet0_6QVal_Bool_emitted <= (lizzieLet0_6QVal_Bool_r ? 8'd0 :
                                        lizzieLet0_6QVal_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet0_6QVal_Bool_1QVal_Bool,QTree_Bool) > [(va8b_destruct,MyBool)] */
  assign va8b_destruct_d = {lizzieLet0_6QVal_Bool_1QVal_Bool_d[3:3],
                            lizzieLet0_6QVal_Bool_1QVal_Bool_d[0]};
  assign lizzieLet0_6QVal_Bool_1QVal_Bool_r = va8b_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_6QVal_Bool_2,QTree_Bool) (lizzieLet0_6QVal_Bool_1,QTree_Bool) > [(_21,QTree_Bool),
                                                                                                     (lizzieLet0_6QVal_Bool_1QVal_Bool,QTree_Bool),
                                                                                                     (_20,QTree_Bool),
                                                                                                     (_19,QTree_Bool)] */
  logic [3:0] lizzieLet0_6QVal_Bool_1_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_2_d[0] && lizzieLet0_6QVal_Bool_1_d[0]))
      unique case (lizzieLet0_6QVal_Bool_2_d[2:1])
        2'd0: lizzieLet0_6QVal_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet0_6QVal_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet0_6QVal_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet0_6QVal_Bool_1_onehotd = 4'd8;
        default: lizzieLet0_6QVal_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_6QVal_Bool_1_onehotd = 4'd0;
  assign _21_d = {lizzieLet0_6QVal_Bool_1_d[66:1],
                  lizzieLet0_6QVal_Bool_1_onehotd[0]};
  assign lizzieLet0_6QVal_Bool_1QVal_Bool_d = {lizzieLet0_6QVal_Bool_1_d[66:1],
                                               lizzieLet0_6QVal_Bool_1_onehotd[1]};
  assign _20_d = {lizzieLet0_6QVal_Bool_1_d[66:1],
                  lizzieLet0_6QVal_Bool_1_onehotd[2]};
  assign _19_d = {lizzieLet0_6QVal_Bool_1_d[66:1],
                  lizzieLet0_6QVal_Bool_1_onehotd[3]};
  assign lizzieLet0_6QVal_Bool_1_r = (| (lizzieLet0_6QVal_Bool_1_onehotd & {_19_r,
                                                                            _20_r,
                                                                            lizzieLet0_6QVal_Bool_1QVal_Bool_r,
                                                                            _21_r}));
  assign lizzieLet0_6QVal_Bool_2_r = lizzieLet0_6QVal_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet0_6QVal_Bool_3,QTree_Bool) (lizzieLet0_3QVal_Bool,MyDTBool_Bool_Bool) > [(_18,MyDTBool_Bool_Bool),
                                                                                                                   (lizzieLet0_6QVal_Bool_3QVal_Bool,MyDTBool_Bool_Bool),
                                                                                                                   (_17,MyDTBool_Bool_Bool),
                                                                                                                   (_16,MyDTBool_Bool_Bool)] */
  logic [3:0] lizzieLet0_3QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_3_d[0] && lizzieLet0_3QVal_Bool_d[0]))
      unique case (lizzieLet0_6QVal_Bool_3_d[2:1])
        2'd0: lizzieLet0_3QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_3QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_3QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_3QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_3QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_3QVal_Bool_onehotd = 4'd0;
  assign _18_d = lizzieLet0_3QVal_Bool_onehotd[0];
  assign lizzieLet0_6QVal_Bool_3QVal_Bool_d = lizzieLet0_3QVal_Bool_onehotd[1];
  assign _17_d = lizzieLet0_3QVal_Bool_onehotd[2];
  assign _16_d = lizzieLet0_3QVal_Bool_onehotd[3];
  assign lizzieLet0_3QVal_Bool_r = (| (lizzieLet0_3QVal_Bool_onehotd & {_16_r,
                                                                        _17_r,
                                                                        lizzieLet0_6QVal_Bool_3QVal_Bool_r,
                                                                        _18_r}));
  assign lizzieLet0_6QVal_Bool_3_r = lizzieLet0_3QVal_Bool_r;
  
  /* buf (Ty MyDTBool_Bool_Bool) : (lizzieLet0_6QVal_Bool_3QVal_Bool,MyDTBool_Bool_Bool) > (lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_3QVal_Bool_r = ((! lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_3QVal_Bool_r)
        lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_3QVal_Bool_d;
  MyDTBool_Bool_Bool_t lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf :
                                                        lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_3QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_6QVal_Bool_4,QTree_Bool) (lizzieLet0_4QVal_Bool,Go) > [(lizzieLet0_6QVal_Bool_4QNone_Bool,Go),
                                                                                   (lizzieLet0_6QVal_Bool_4QVal_Bool,Go),
                                                                                   (lizzieLet0_6QVal_Bool_4QNode_Bool,Go),
                                                                                   (lizzieLet0_6QVal_Bool_4QError_Bool,Go)] */
  logic [3:0] lizzieLet0_4QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_4_d[0] && lizzieLet0_4QVal_Bool_d[0]))
      unique case (lizzieLet0_6QVal_Bool_4_d[2:1])
        2'd0: lizzieLet0_4QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_4QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_4QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_4QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_4QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_4QVal_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QVal_Bool_4QNone_Bool_d = lizzieLet0_4QVal_Bool_onehotd[0];
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_d = lizzieLet0_4QVal_Bool_onehotd[1];
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_d = lizzieLet0_4QVal_Bool_onehotd[2];
  assign lizzieLet0_6QVal_Bool_4QError_Bool_d = lizzieLet0_4QVal_Bool_onehotd[3];
  assign lizzieLet0_4QVal_Bool_r = (| (lizzieLet0_4QVal_Bool_onehotd & {lizzieLet0_6QVal_Bool_4QError_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_4QNode_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_4QVal_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_4QNone_Bool_r}));
  assign lizzieLet0_6QVal_Bool_4_r = lizzieLet0_4QVal_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_6QVal_Bool_4QError_Bool,Go) > [(lizzieLet0_6QVal_Bool_4QError_Bool_1,Go),
                                                          (lizzieLet0_6QVal_Bool_4QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_6QVal_Bool_4QError_Bool_emitted;
  logic [1:0] lizzieLet0_6QVal_Bool_4QError_Bool_done;
  assign lizzieLet0_6QVal_Bool_4QError_Bool_1_d = (lizzieLet0_6QVal_Bool_4QError_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QError_Bool_emitted[0]));
  assign lizzieLet0_6QVal_Bool_4QError_Bool_2_d = (lizzieLet0_6QVal_Bool_4QError_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QError_Bool_emitted[1]));
  assign lizzieLet0_6QVal_Bool_4QError_Bool_done = (lizzieLet0_6QVal_Bool_4QError_Bool_emitted | ({lizzieLet0_6QVal_Bool_4QError_Bool_2_d[0],
                                                                                                   lizzieLet0_6QVal_Bool_4QError_Bool_1_d[0]} & {lizzieLet0_6QVal_Bool_4QError_Bool_2_r,
                                                                                                                                                 lizzieLet0_6QVal_Bool_4QError_Bool_1_r}));
  assign lizzieLet0_6QVal_Bool_4QError_Bool_r = (& lizzieLet0_6QVal_Bool_4QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QVal_Bool_4QError_Bool_emitted <= (lizzieLet0_6QVal_Bool_4QError_Bool_r ? 2'd0 :
                                                     lizzieLet0_6QVal_Bool_4QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet0_6QVal_Bool_4QError_Bool_1,Go)] > (lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet0_6QVal_Bool_4QError_Bool_1_d[0]}), lizzieLet0_6QVal_Bool_4QError_Bool_1_d);
  assign {lizzieLet0_6QVal_Bool_4QError_Bool_1_r} = {1 {(lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_r && lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet5_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_r = ((! lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                    1'd0};
    else
      if (lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_r)
        lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet5_1_argbuf_d = (lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf :
                                  lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                      1'd0};
    else
      if ((lizzieLet5_1_argbuf_r && lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                        1'd0};
      else if (((! lizzieLet5_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_4QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QVal_Bool_4QError_Bool_2,Go) > (lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QError_Bool_2_r = ((! lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_4QError_Bool_2_r)
        lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d <= lizzieLet0_6QVal_Bool_4QError_Bool_2_d;
  Go_t lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_r = (! lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_d = (lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf :
                                                          lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_r && lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_4QError_Bool_2_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_buf <= lizzieLet0_6QVal_Bool_4QError_Bool_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_6QVal_Bool_4QNode_Bool,Go) > [(lizzieLet0_6QVal_Bool_4QNode_Bool_1,Go),
                                                         (lizzieLet0_6QVal_Bool_4QNode_Bool_2,Go)] */
  logic [1:0] lizzieLet0_6QVal_Bool_4QNode_Bool_emitted;
  logic [1:0] lizzieLet0_6QVal_Bool_4QNode_Bool_done;
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_1_d = (lizzieLet0_6QVal_Bool_4QNode_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QNode_Bool_emitted[0]));
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_2_d = (lizzieLet0_6QVal_Bool_4QNode_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QNode_Bool_emitted[1]));
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_done = (lizzieLet0_6QVal_Bool_4QNode_Bool_emitted | ({lizzieLet0_6QVal_Bool_4QNode_Bool_2_d[0],
                                                                                                 lizzieLet0_6QVal_Bool_4QNode_Bool_1_d[0]} & {lizzieLet0_6QVal_Bool_4QNode_Bool_2_r,
                                                                                                                                              lizzieLet0_6QVal_Bool_4QNode_Bool_1_r}));
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_r = (& lizzieLet0_6QVal_Bool_4QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet0_6QVal_Bool_4QNode_Bool_emitted <= (lizzieLet0_6QVal_Bool_4QNode_Bool_r ? 2'd0 :
                                                    lizzieLet0_6QVal_Bool_4QNode_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet0_6QVal_Bool_4QNode_Bool_1,Go)] > (lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet0_6QVal_Bool_4QNode_Bool_1_d[0]}), lizzieLet0_6QVal_Bool_4QNode_Bool_1_d);
  assign {lizzieLet0_6QVal_Bool_4QNode_Bool_1_r} = {1 {(lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_r && lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool,QTree_Bool) > (lizzieLet4_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_r = ((! lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                   1'd0};
    else
      if (lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_r)
        lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet4_1_argbuf_d = (lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf :
                                  lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                     1'd0};
    else
      if ((lizzieLet4_1_argbuf_r && lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
      else if (((! lizzieLet4_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_4QNode_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QVal_Bool_4QNode_Bool_2,Go) > (lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_2_r = ((! lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_4QNode_Bool_2_r)
        lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d <= lizzieLet0_6QVal_Bool_4QNode_Bool_2_d;
  Go_t lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_r = (! lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_d = (lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf :
                                                         lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_r && lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_4QNode_Bool_2_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_buf <= lizzieLet0_6QVal_Bool_4QNode_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_6QVal_Bool_4QNone_Bool,Go) > (lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QNone_Bool_r = ((! lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_4QNone_Bool_r)
        lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_4QNone_Bool_d;
  Go_t lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf :
                                                         lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_4QNone_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_6QVal_Bool_4QVal_Bool,Go) > [(lizzieLet0_6QVal_Bool_4QVal_Bool_1,Go),
                                                        (lizzieLet0_6QVal_Bool_4QVal_Bool_2,Go),
                                                        (lizzieLet0_6QVal_Bool_4QVal_Bool_3,Go)] */
  logic [2:0] lizzieLet0_6QVal_Bool_4QVal_Bool_emitted;
  logic [2:0] lizzieLet0_6QVal_Bool_4QVal_Bool_done;
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_1_d = (lizzieLet0_6QVal_Bool_4QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QVal_Bool_emitted[0]));
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_2_d = (lizzieLet0_6QVal_Bool_4QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QVal_Bool_emitted[1]));
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_3_d = (lizzieLet0_6QVal_Bool_4QVal_Bool_d[0] && (! lizzieLet0_6QVal_Bool_4QVal_Bool_emitted[2]));
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_done = (lizzieLet0_6QVal_Bool_4QVal_Bool_emitted | ({lizzieLet0_6QVal_Bool_4QVal_Bool_3_d[0],
                                                                                               lizzieLet0_6QVal_Bool_4QVal_Bool_2_d[0],
                                                                                               lizzieLet0_6QVal_Bool_4QVal_Bool_1_d[0]} & {lizzieLet0_6QVal_Bool_4QVal_Bool_3_r,
                                                                                                                                           lizzieLet0_6QVal_Bool_4QVal_Bool_2_r,
                                                                                                                                           lizzieLet0_6QVal_Bool_4QVal_Bool_1_r}));
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_r = (& lizzieLet0_6QVal_Bool_4QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QVal_Bool_emitted <= 3'd0;
    else
      lizzieLet0_6QVal_Bool_4QVal_Bool_emitted <= (lizzieLet0_6QVal_Bool_4QVal_Bool_r ? 3'd0 :
                                                   lizzieLet0_6QVal_Bool_4QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_6QVal_Bool_4QVal_Bool_1,Go) > (lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_1_r = ((! lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_4QVal_Bool_1_r)
        lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d <= lizzieLet0_6QVal_Bool_4QVal_Bool_1_d;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_r = (! lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf :
                                                        lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_buf <= lizzieLet0_6QVal_Bool_4QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool_Bool___MyBool___MyBool,
      Dcon TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) : [(lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf,Go),
                                                            (lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf,MyDTBool_Bool_Bool),
                                                            (lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf,MyBool),
                                                            (va8b_1_argbuf,MyBool)] > (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1,TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) */
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d = TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc((& {lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_d[0],
                                                                                                                                       lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_d[0],
                                                                                                                                       lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_d[0],
                                                                                                                                       va8b_1_argbuf_d[0]}), lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_d, lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_d, lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_d, va8b_1_argbuf_d);
  assign {lizzieLet0_6QVal_Bool_4QVal_Bool_1_argbuf_r,
          lizzieLet0_6QVal_Bool_3QVal_Bool_1_argbuf_r,
          lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_r,
          va8b_1_argbuf_r} = {4 {(applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0])}};
  
  /* buf (Ty Go) : (lizzieLet0_6QVal_Bool_4QVal_Bool_2,Go) > (lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d;
  logic lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_r;
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_2_r = ((! lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d[0]) || lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_4QVal_Bool_2_r)
        lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d <= lizzieLet0_6QVal_Bool_4QVal_Bool_2_d;
  Go_t lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_r = (! lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_d = (lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf :
                                                        lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_r && lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_r) && (! lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_buf <= lizzieLet0_6QVal_Bool_4QVal_Bool_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool___MyBool,
      Dcon TupGo___MyDTBool_Bool___MyBool) : [(lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf,Go),
                                              (lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf,MyDTBool_Bool),
                                              (xa85_1_argbuf,MyBool)] > (applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1,TupGo___MyDTBool_Bool___MyBool) */
  assign applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d = TupGo___MyDTBool_Bool___MyBool_dc((& {lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_d[0],
                                                                                                      lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_d[0],
                                                                                                      xa85_1_argbuf_d[0]}), lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_d, lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_d, xa85_1_argbuf_d);
  assign {lizzieLet0_6QVal_Bool_4QVal_Bool_2_argbuf_r,
          lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_r,
          xa85_1_argbuf_r} = {3 {(applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_r && applyfnBool_Bool_5TupGo___MyDTBool_Bool___MyBool_1_d[0])}};
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool) : (lizzieLet0_6QVal_Bool_5,QTree_Bool) (lizzieLet0_5QVal_Bool,MyDTBool_Bool) > [(_15,MyDTBool_Bool),
                                                                                                         (lizzieLet0_6QVal_Bool_5QVal_Bool,MyDTBool_Bool),
                                                                                                         (_14,MyDTBool_Bool),
                                                                                                         (_13,MyDTBool_Bool)] */
  logic [3:0] lizzieLet0_5QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_5_d[0] && lizzieLet0_5QVal_Bool_d[0]))
      unique case (lizzieLet0_6QVal_Bool_5_d[2:1])
        2'd0: lizzieLet0_5QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_5QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_5QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_5QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_5QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_5QVal_Bool_onehotd = 4'd0;
  assign _15_d = lizzieLet0_5QVal_Bool_onehotd[0];
  assign lizzieLet0_6QVal_Bool_5QVal_Bool_d = lizzieLet0_5QVal_Bool_onehotd[1];
  assign _14_d = lizzieLet0_5QVal_Bool_onehotd[2];
  assign _13_d = lizzieLet0_5QVal_Bool_onehotd[3];
  assign lizzieLet0_5QVal_Bool_r = (| (lizzieLet0_5QVal_Bool_onehotd & {_13_r,
                                                                        _14_r,
                                                                        lizzieLet0_6QVal_Bool_5QVal_Bool_r,
                                                                        _15_r}));
  assign lizzieLet0_6QVal_Bool_5_r = lizzieLet0_5QVal_Bool_r;
  
  /* buf (Ty MyDTBool_Bool) : (lizzieLet0_6QVal_Bool_5QVal_Bool,MyDTBool_Bool) > (lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_5QVal_Bool_r = ((! lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_6QVal_Bool_5QVal_Bool_r)
        lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_5QVal_Bool_d;
  MyDTBool_Bool_t lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf :
                                                        lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_6QVal_Bool_5QVal_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_5QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_6QVal_Bool_6,QTree_Bool) (lizzieLet0_7QVal_Bool,Pointer_QTree_Bool) > [(lizzieLet0_6QVal_Bool_6QNone_Bool,Pointer_QTree_Bool),
                                                                                                                   (_12,Pointer_QTree_Bool),
                                                                                                                   (_11,Pointer_QTree_Bool),
                                                                                                                   (_10,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_7QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_6_d[0] && lizzieLet0_7QVal_Bool_d[0]))
      unique case (lizzieLet0_6QVal_Bool_6_d[2:1])
        2'd0: lizzieLet0_7QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_7QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_7QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_7QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_7QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_7QVal_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QVal_Bool_6QNone_Bool_d = {lizzieLet0_7QVal_Bool_d[16:1],
                                                lizzieLet0_7QVal_Bool_onehotd[0]};
  assign _12_d = {lizzieLet0_7QVal_Bool_d[16:1],
                  lizzieLet0_7QVal_Bool_onehotd[1]};
  assign _11_d = {lizzieLet0_7QVal_Bool_d[16:1],
                  lizzieLet0_7QVal_Bool_onehotd[2]};
  assign _10_d = {lizzieLet0_7QVal_Bool_d[16:1],
                  lizzieLet0_7QVal_Bool_onehotd[3]};
  assign lizzieLet0_7QVal_Bool_r = (| (lizzieLet0_7QVal_Bool_onehotd & {_10_r,
                                                                        _11_r,
                                                                        _12_r,
                                                                        lizzieLet0_6QVal_Bool_6QNone_Bool_r}));
  assign lizzieLet0_6QVal_Bool_6_r = lizzieLet0_7QVal_Bool_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_6QVal_Bool_6QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_6QNone_Bool_r = ((! lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QVal_Bool_6QNone_Bool_r)
        lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_6QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf :
                                                         lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QVal_Bool_6QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_6QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QVal_Bool_7,QTree_Bool) (lizzieLet0_9QVal_Bool,Pointer_CTmAdd_mAdd_Bool) > [(lizzieLet0_6QVal_Bool_7QNone_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                               (lizzieLet0_6QVal_Bool_7QVal_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                               (lizzieLet0_6QVal_Bool_7QNode_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                                               (lizzieLet0_6QVal_Bool_7QError_Bool,Pointer_CTmAdd_mAdd_Bool)] */
  logic [3:0] lizzieLet0_9QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_7_d[0] && lizzieLet0_9QVal_Bool_d[0]))
      unique case (lizzieLet0_6QVal_Bool_7_d[2:1])
        2'd0: lizzieLet0_9QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_9QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_9QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_9QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_9QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_9QVal_Bool_onehotd = 4'd0;
  assign lizzieLet0_6QVal_Bool_7QNone_Bool_d = {lizzieLet0_9QVal_Bool_d[16:1],
                                                lizzieLet0_9QVal_Bool_onehotd[0]};
  assign lizzieLet0_6QVal_Bool_7QVal_Bool_d = {lizzieLet0_9QVal_Bool_d[16:1],
                                               lizzieLet0_9QVal_Bool_onehotd[1]};
  assign lizzieLet0_6QVal_Bool_7QNode_Bool_d = {lizzieLet0_9QVal_Bool_d[16:1],
                                                lizzieLet0_9QVal_Bool_onehotd[2]};
  assign lizzieLet0_6QVal_Bool_7QError_Bool_d = {lizzieLet0_9QVal_Bool_d[16:1],
                                                 lizzieLet0_9QVal_Bool_onehotd[3]};
  assign lizzieLet0_9QVal_Bool_r = (| (lizzieLet0_9QVal_Bool_onehotd & {lizzieLet0_6QVal_Bool_7QError_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_7QNode_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_7QVal_Bool_r,
                                                                        lizzieLet0_6QVal_Bool_7QNone_Bool_r}));
  assign lizzieLet0_6QVal_Bool_7_r = lizzieLet0_9QVal_Bool_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QVal_Bool_7QError_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_7QError_Bool_r = ((! lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QVal_Bool_7QError_Bool_r)
        lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_7QError_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf :
                                                          lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QVal_Bool_7QError_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_7QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QVal_Bool_7QNode_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_7QNode_Bool_r = ((! lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QVal_Bool_7QNode_Bool_r)
        lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_7QNode_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf :
                                                         lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QVal_Bool_7QNode_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_7QNode_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_6QVal_Bool_7QNone_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_7QNone_Bool_r = ((! lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_6QVal_Bool_7QNone_Bool_r)
        lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_7QNone_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf :
                                                         lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_6QVal_Bool_7QNone_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_7QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyBool) : (lizzieLet0_6QVal_Bool_8,QTree_Bool) (v1a8a_destruct,MyBool) > [(_9,MyBool),
                                                                                    (lizzieLet0_6QVal_Bool_8QVal_Bool,MyBool),
                                                                                    (_8,MyBool),
                                                                                    (_7,MyBool)] */
  logic [3:0] v1a8a_destruct_onehotd;
  always_comb
    if ((lizzieLet0_6QVal_Bool_8_d[0] && v1a8a_destruct_d[0]))
      unique case (lizzieLet0_6QVal_Bool_8_d[2:1])
        2'd0: v1a8a_destruct_onehotd = 4'd1;
        2'd1: v1a8a_destruct_onehotd = 4'd2;
        2'd2: v1a8a_destruct_onehotd = 4'd4;
        2'd3: v1a8a_destruct_onehotd = 4'd8;
        default: v1a8a_destruct_onehotd = 4'd0;
      endcase
    else v1a8a_destruct_onehotd = 4'd0;
  assign _9_d = {v1a8a_destruct_d[1:1], v1a8a_destruct_onehotd[0]};
  assign lizzieLet0_6QVal_Bool_8QVal_Bool_d = {v1a8a_destruct_d[1:1],
                                               v1a8a_destruct_onehotd[1]};
  assign _8_d = {v1a8a_destruct_d[1:1], v1a8a_destruct_onehotd[2]};
  assign _7_d = {v1a8a_destruct_d[1:1], v1a8a_destruct_onehotd[3]};
  assign v1a8a_destruct_r = (| (v1a8a_destruct_onehotd & {_7_r,
                                                          _8_r,
                                                          lizzieLet0_6QVal_Bool_8QVal_Bool_r,
                                                          _9_r}));
  assign lizzieLet0_6QVal_Bool_8_r = v1a8a_destruct_r;
  
  /* buf (Ty MyBool) : (lizzieLet0_6QVal_Bool_8QVal_Bool,MyBool) > (lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf,MyBool) */
  MyBool_t lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d;
  logic lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_r;
  assign lizzieLet0_6QVal_Bool_8QVal_Bool_r = ((! lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d[0]) || lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d <= {1'd0, 1'd0};
    else
      if (lizzieLet0_6QVal_Bool_8QVal_Bool_r)
        lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d <= lizzieLet0_6QVal_Bool_8QVal_Bool_d;
  MyBool_t lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf;
  assign lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_r = (! lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_d = (lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf[0] ? lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf :
                                                        lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_r && lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf[0]))
        lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf <= {1'd0, 1'd0};
      else if (((! lizzieLet0_6QVal_Bool_8QVal_Bool_1_argbuf_r) && (! lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf[0])))
        lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_buf <= lizzieLet0_6QVal_Bool_8QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_7,QTree_Bool) (m1a88_2,Pointer_QTree_Bool) > [(_6,Pointer_QTree_Bool),
                                                                                          (lizzieLet0_7QVal_Bool,Pointer_QTree_Bool),
                                                                                          (lizzieLet0_7QNode_Bool,Pointer_QTree_Bool),
                                                                                          (_5,Pointer_QTree_Bool)] */
  logic [3:0] m1a88_2_onehotd;
  always_comb
    if ((lizzieLet0_7_d[0] && m1a88_2_d[0]))
      unique case (lizzieLet0_7_d[2:1])
        2'd0: m1a88_2_onehotd = 4'd1;
        2'd1: m1a88_2_onehotd = 4'd2;
        2'd2: m1a88_2_onehotd = 4'd4;
        2'd3: m1a88_2_onehotd = 4'd8;
        default: m1a88_2_onehotd = 4'd0;
      endcase
    else m1a88_2_onehotd = 4'd0;
  assign _6_d = {m1a88_2_d[16:1], m1a88_2_onehotd[0]};
  assign lizzieLet0_7QVal_Bool_d = {m1a88_2_d[16:1],
                                    m1a88_2_onehotd[1]};
  assign lizzieLet0_7QNode_Bool_d = {m1a88_2_d[16:1],
                                     m1a88_2_onehotd[2]};
  assign _5_d = {m1a88_2_d[16:1], m1a88_2_onehotd[3]};
  assign m1a88_2_r = (| (m1a88_2_onehotd & {_5_r,
                                            lizzieLet0_7QNode_Bool_r,
                                            lizzieLet0_7QVal_Bool_r,
                                            _6_r}));
  assign lizzieLet0_7_r = m1a88_2_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_8,QTree_Bool) (m2a89_2,Pointer_QTree_Bool) > [(lizzieLet0_8QNone_Bool,Pointer_QTree_Bool),
                                                                                          (_4,Pointer_QTree_Bool),
                                                                                          (_3,Pointer_QTree_Bool),
                                                                                          (_2,Pointer_QTree_Bool)] */
  logic [3:0] m2a89_2_onehotd;
  always_comb
    if ((lizzieLet0_8_d[0] && m2a89_2_d[0]))
      unique case (lizzieLet0_8_d[2:1])
        2'd0: m2a89_2_onehotd = 4'd1;
        2'd1: m2a89_2_onehotd = 4'd2;
        2'd2: m2a89_2_onehotd = 4'd4;
        2'd3: m2a89_2_onehotd = 4'd8;
        default: m2a89_2_onehotd = 4'd0;
      endcase
    else m2a89_2_onehotd = 4'd0;
  assign lizzieLet0_8QNone_Bool_d = {m2a89_2_d[16:1],
                                     m2a89_2_onehotd[0]};
  assign _4_d = {m2a89_2_d[16:1], m2a89_2_onehotd[1]};
  assign _3_d = {m2a89_2_d[16:1], m2a89_2_onehotd[2]};
  assign _2_d = {m2a89_2_d[16:1], m2a89_2_onehotd[3]};
  assign m2a89_2_r = (| (m2a89_2_onehotd & {_2_r,
                                            _3_r,
                                            _4_r,
                                            lizzieLet0_8QNone_Bool_r}));
  assign lizzieLet0_8_r = m2a89_2_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_8QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_8QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_8QNone_Bool_bufchan_d;
  logic lizzieLet0_8QNone_Bool_bufchan_r;
  assign lizzieLet0_8QNone_Bool_r = ((! lizzieLet0_8QNone_Bool_bufchan_d[0]) || lizzieLet0_8QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_8QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_8QNone_Bool_r)
        lizzieLet0_8QNone_Bool_bufchan_d <= lizzieLet0_8QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_8QNone_Bool_bufchan_buf;
  assign lizzieLet0_8QNone_Bool_bufchan_r = (! lizzieLet0_8QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_8QNone_Bool_1_argbuf_d = (lizzieLet0_8QNone_Bool_bufchan_buf[0] ? lizzieLet0_8QNone_Bool_bufchan_buf :
                                              lizzieLet0_8QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_8QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_8QNone_Bool_1_argbuf_r && lizzieLet0_8QNone_Bool_bufchan_buf[0]))
        lizzieLet0_8QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_8QNone_Bool_1_argbuf_r) && (! lizzieLet0_8QNone_Bool_bufchan_buf[0])))
        lizzieLet0_8QNone_Bool_bufchan_buf <= lizzieLet0_8QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_9,QTree_Bool) (sc_0_goMux_mux,Pointer_CTmAdd_mAdd_Bool) > [(lizzieLet0_9QNone_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                             (lizzieLet0_9QVal_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                             (lizzieLet0_9QNode_Bool,Pointer_CTmAdd_mAdd_Bool),
                                                                                                             (lizzieLet0_9QError_Bool,Pointer_CTmAdd_mAdd_Bool)] */
  logic [3:0] sc_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet0_9_d[0] && sc_0_goMux_mux_d[0]))
      unique case (lizzieLet0_9_d[2:1])
        2'd0: sc_0_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_goMux_mux_onehotd = 4'd8;
        default: sc_0_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_goMux_mux_onehotd = 4'd0;
  assign lizzieLet0_9QNone_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[0]};
  assign lizzieLet0_9QVal_Bool_d = {sc_0_goMux_mux_d[16:1],
                                    sc_0_goMux_mux_onehotd[1]};
  assign lizzieLet0_9QNode_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[2]};
  assign lizzieLet0_9QError_Bool_d = {sc_0_goMux_mux_d[16:1],
                                      sc_0_goMux_mux_onehotd[3]};
  assign sc_0_goMux_mux_r = (| (sc_0_goMux_mux_onehotd & {lizzieLet0_9QError_Bool_r,
                                                          lizzieLet0_9QNode_Bool_r,
                                                          lizzieLet0_9QVal_Bool_r,
                                                          lizzieLet0_9QNone_Bool_r}));
  assign lizzieLet0_9_r = sc_0_goMux_mux_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_9QError_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_9QError_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QError_Bool_bufchan_d;
  logic lizzieLet0_9QError_Bool_bufchan_r;
  assign lizzieLet0_9QError_Bool_r = ((! lizzieLet0_9QError_Bool_bufchan_d[0]) || lizzieLet0_9QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_9QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_9QError_Bool_r)
        lizzieLet0_9QError_Bool_bufchan_d <= lizzieLet0_9QError_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QError_Bool_bufchan_buf;
  assign lizzieLet0_9QError_Bool_bufchan_r = (! lizzieLet0_9QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_9QError_Bool_1_argbuf_d = (lizzieLet0_9QError_Bool_bufchan_buf[0] ? lizzieLet0_9QError_Bool_bufchan_buf :
                                               lizzieLet0_9QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_9QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_9QError_Bool_1_argbuf_r && lizzieLet0_9QError_Bool_bufchan_buf[0]))
        lizzieLet0_9QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_9QError_Bool_1_argbuf_r) && (! lizzieLet0_9QError_Bool_bufchan_buf[0])))
        lizzieLet0_9QError_Bool_bufchan_buf <= lizzieLet0_9QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (lizzieLet0_9QNone_Bool,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet0_9QNone_Bool_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QNone_Bool_bufchan_d;
  logic lizzieLet0_9QNone_Bool_bufchan_r;
  assign lizzieLet0_9QNone_Bool_r = ((! lizzieLet0_9QNone_Bool_bufchan_d[0]) || lizzieLet0_9QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_9QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_9QNone_Bool_r)
        lizzieLet0_9QNone_Bool_bufchan_d <= lizzieLet0_9QNone_Bool_d;
  Pointer_CTmAdd_mAdd_Bool_t lizzieLet0_9QNone_Bool_bufchan_buf;
  assign lizzieLet0_9QNone_Bool_bufchan_r = (! lizzieLet0_9QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_9QNone_Bool_1_argbuf_d = (lizzieLet0_9QNone_Bool_bufchan_buf[0] ? lizzieLet0_9QNone_Bool_bufchan_buf :
                                              lizzieLet0_9QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_9QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_9QNone_Bool_1_argbuf_r && lizzieLet0_9QNone_Bool_bufchan_buf[0]))
        lizzieLet0_9QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_9QNone_Bool_1_argbuf_r) && (! lizzieLet0_9QNone_Bool_bufchan_buf[0])))
        lizzieLet0_9QNone_Bool_bufchan_buf <= lizzieLet0_9QNone_Bool_bufchan_d;
  
  /* destruct (Ty CTmAdd_mAdd_Bool,
          Dcon Lcall_mAdd_mAdd_Bool0) : (lizzieLet12_1Lcall_mAdd_mAdd_Bool0,CTmAdd_mAdd_Bool) > [(es_2_1_destruct,Pointer_QTree_Bool),
                                                                                                 (es_3_1_destruct,Pointer_QTree_Bool),
                                                                                                 (es_4_3_destruct,Pointer_QTree_Bool),
                                                                                                 (sc_0_4_destruct,Pointer_CTmAdd_mAdd_Bool)] */
  logic [3:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted;
  logic [3:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool0_done;
  assign es_2_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[19:4],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted[0]))};
  assign es_3_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[35:20],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted[1]))};
  assign es_4_3_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[51:36],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted[2]))};
  assign sc_0_4_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[67:52],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted[3]))};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool0_done = (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted | ({sc_0_4_destruct_d[0],
                                                                                                   es_4_3_destruct_d[0],
                                                                                                   es_3_1_destruct_d[0],
                                                                                                   es_2_1_destruct_d[0]} & {sc_0_4_destruct_r,
                                                                                                                            es_4_3_destruct_r,
                                                                                                                            es_3_1_destruct_r,
                                                                                                                            es_2_1_destruct_r}));
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool0_r = (& lizzieLet12_1Lcall_mAdd_mAdd_Bool0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted <= 4'd0;
    else
      lizzieLet12_1Lcall_mAdd_mAdd_Bool0_emitted <= (lizzieLet12_1Lcall_mAdd_mAdd_Bool0_r ? 4'd0 :
                                                     lizzieLet12_1Lcall_mAdd_mAdd_Bool0_done);
  
  /* destruct (Ty CTmAdd_mAdd_Bool,
          Dcon Lcall_mAdd_mAdd_Bool1) : (lizzieLet12_1Lcall_mAdd_mAdd_Bool1,CTmAdd_mAdd_Bool) > [(es_3_destruct,Pointer_QTree_Bool),
                                                                                                 (es_4_2_destruct,Pointer_QTree_Bool),
                                                                                                 (sc_0_3_destruct,Pointer_CTmAdd_mAdd_Bool),
                                                                                                 (isZ1a86_4_destruct,MyDTBool_Bool),
                                                                                                 (ga87_4_destruct,MyDTBool_Bool_Bool),
                                                                                                 (q1a8g_3_destruct,Pointer_QTree_Bool),
                                                                                                 (t1a8l_3_destruct,Pointer_QTree_Bool)] */
  logic [6:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted;
  logic [6:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool1_done;
  assign es_3_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[19:4],
                            (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[0]))};
  assign es_4_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[35:20],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[1]))};
  assign sc_0_3_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[51:36],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[2]))};
  assign isZ1a86_4_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[3]));
  assign ga87_4_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[4]));
  assign q1a8g_3_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[67:52],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[5]))};
  assign t1a8l_3_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[83:68],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted[6]))};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool1_done = (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted | ({t1a8l_3_destruct_d[0],
                                                                                                   q1a8g_3_destruct_d[0],
                                                                                                   ga87_4_destruct_d[0],
                                                                                                   isZ1a86_4_destruct_d[0],
                                                                                                   sc_0_3_destruct_d[0],
                                                                                                   es_4_2_destruct_d[0],
                                                                                                   es_3_destruct_d[0]} & {t1a8l_3_destruct_r,
                                                                                                                          q1a8g_3_destruct_r,
                                                                                                                          ga87_4_destruct_r,
                                                                                                                          isZ1a86_4_destruct_r,
                                                                                                                          sc_0_3_destruct_r,
                                                                                                                          es_4_2_destruct_r,
                                                                                                                          es_3_destruct_r}));
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool1_r = (& lizzieLet12_1Lcall_mAdd_mAdd_Bool1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted <= 7'd0;
    else
      lizzieLet12_1Lcall_mAdd_mAdd_Bool1_emitted <= (lizzieLet12_1Lcall_mAdd_mAdd_Bool1_r ? 7'd0 :
                                                     lizzieLet12_1Lcall_mAdd_mAdd_Bool1_done);
  
  /* destruct (Ty CTmAdd_mAdd_Bool,
          Dcon Lcall_mAdd_mAdd_Bool2) : (lizzieLet12_1Lcall_mAdd_mAdd_Bool2,CTmAdd_mAdd_Bool) > [(es_4_1_destruct,Pointer_QTree_Bool),
                                                                                                 (sc_0_2_destruct,Pointer_CTmAdd_mAdd_Bool),
                                                                                                 (isZ1a86_3_destruct,MyDTBool_Bool),
                                                                                                 (ga87_3_destruct,MyDTBool_Bool_Bool),
                                                                                                 (q1a8g_2_destruct,Pointer_QTree_Bool),
                                                                                                 (t1a8l_2_destruct,Pointer_QTree_Bool),
                                                                                                 (q2a8h_2_destruct,Pointer_QTree_Bool),
                                                                                                 (t2a8m_2_destruct,Pointer_QTree_Bool)] */
  logic [7:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted;
  logic [7:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool2_done;
  assign es_4_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[19:4],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[0]))};
  assign sc_0_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[35:20],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[1]))};
  assign isZ1a86_3_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[2]));
  assign ga87_3_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[3]));
  assign q1a8g_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[51:36],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[4]))};
  assign t1a8l_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[67:52],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[5]))};
  assign q2a8h_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[83:68],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[6]))};
  assign t2a8m_2_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[99:84],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted[7]))};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool2_done = (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted | ({t2a8m_2_destruct_d[0],
                                                                                                   q2a8h_2_destruct_d[0],
                                                                                                   t1a8l_2_destruct_d[0],
                                                                                                   q1a8g_2_destruct_d[0],
                                                                                                   ga87_3_destruct_d[0],
                                                                                                   isZ1a86_3_destruct_d[0],
                                                                                                   sc_0_2_destruct_d[0],
                                                                                                   es_4_1_destruct_d[0]} & {t2a8m_2_destruct_r,
                                                                                                                            q2a8h_2_destruct_r,
                                                                                                                            t1a8l_2_destruct_r,
                                                                                                                            q1a8g_2_destruct_r,
                                                                                                                            ga87_3_destruct_r,
                                                                                                                            isZ1a86_3_destruct_r,
                                                                                                                            sc_0_2_destruct_r,
                                                                                                                            es_4_1_destruct_r}));
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool2_r = (& lizzieLet12_1Lcall_mAdd_mAdd_Bool2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted <= 8'd0;
    else
      lizzieLet12_1Lcall_mAdd_mAdd_Bool2_emitted <= (lizzieLet12_1Lcall_mAdd_mAdd_Bool2_r ? 8'd0 :
                                                     lizzieLet12_1Lcall_mAdd_mAdd_Bool2_done);
  
  /* destruct (Ty CTmAdd_mAdd_Bool,
          Dcon Lcall_mAdd_mAdd_Bool3) : (lizzieLet12_1Lcall_mAdd_mAdd_Bool3,CTmAdd_mAdd_Bool) > [(sc_0_1_destruct,Pointer_CTmAdd_mAdd_Bool),
                                                                                                 (isZ1a86_2_destruct,MyDTBool_Bool),
                                                                                                 (ga87_2_destruct,MyDTBool_Bool_Bool),
                                                                                                 (q1a8g_1_destruct,Pointer_QTree_Bool),
                                                                                                 (t1a8l_1_destruct,Pointer_QTree_Bool),
                                                                                                 (q2a8h_1_destruct,Pointer_QTree_Bool),
                                                                                                 (t2a8m_1_destruct,Pointer_QTree_Bool),
                                                                                                 (q3a8i_1_destruct,Pointer_QTree_Bool),
                                                                                                 (t3a8n_1_destruct,Pointer_QTree_Bool)] */
  logic [8:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted;
  logic [8:0] lizzieLet12_1Lcall_mAdd_mAdd_Bool3_done;
  assign sc_0_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[19:4],
                              (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[0]))};
  assign isZ1a86_2_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[1]));
  assign ga87_2_destruct_d = (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[2]));
  assign q1a8g_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[35:20],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[3]))};
  assign t1a8l_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[51:36],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[4]))};
  assign q2a8h_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[67:52],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[5]))};
  assign t2a8m_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[83:68],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[6]))};
  assign q3a8i_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[99:84],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[7]))};
  assign t3a8n_1_destruct_d = {lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[115:100],
                               (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d[0] && (! lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted[8]))};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool3_done = (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted | ({t3a8n_1_destruct_d[0],
                                                                                                   q3a8i_1_destruct_d[0],
                                                                                                   t2a8m_1_destruct_d[0],
                                                                                                   q2a8h_1_destruct_d[0],
                                                                                                   t1a8l_1_destruct_d[0],
                                                                                                   q1a8g_1_destruct_d[0],
                                                                                                   ga87_2_destruct_d[0],
                                                                                                   isZ1a86_2_destruct_d[0],
                                                                                                   sc_0_1_destruct_d[0]} & {t3a8n_1_destruct_r,
                                                                                                                            q3a8i_1_destruct_r,
                                                                                                                            t2a8m_1_destruct_r,
                                                                                                                            q2a8h_1_destruct_r,
                                                                                                                            t1a8l_1_destruct_r,
                                                                                                                            q1a8g_1_destruct_r,
                                                                                                                            ga87_2_destruct_r,
                                                                                                                            isZ1a86_2_destruct_r,
                                                                                                                            sc_0_1_destruct_r}));
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool3_r = (& lizzieLet12_1Lcall_mAdd_mAdd_Bool3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted <= 9'd0;
    else
      lizzieLet12_1Lcall_mAdd_mAdd_Bool3_emitted <= (lizzieLet12_1Lcall_mAdd_mAdd_Bool3_r ? 9'd0 :
                                                     lizzieLet12_1Lcall_mAdd_mAdd_Bool3_done);
  
  /* demux (Ty CTmAdd_mAdd_Bool,
       Ty CTmAdd_mAdd_Bool) : (lizzieLet12_2,CTmAdd_mAdd_Bool) (lizzieLet12_1,CTmAdd_mAdd_Bool) > [(_1,CTmAdd_mAdd_Bool),
                                                                                                   (lizzieLet12_1Lcall_mAdd_mAdd_Bool3,CTmAdd_mAdd_Bool),
                                                                                                   (lizzieLet12_1Lcall_mAdd_mAdd_Bool2,CTmAdd_mAdd_Bool),
                                                                                                   (lizzieLet12_1Lcall_mAdd_mAdd_Bool1,CTmAdd_mAdd_Bool),
                                                                                                   (lizzieLet12_1Lcall_mAdd_mAdd_Bool0,CTmAdd_mAdd_Bool)] */
  logic [4:0] lizzieLet12_1_onehotd;
  always_comb
    if ((lizzieLet12_2_d[0] && lizzieLet12_1_d[0]))
      unique case (lizzieLet12_2_d[3:1])
        3'd0: lizzieLet12_1_onehotd = 5'd1;
        3'd1: lizzieLet12_1_onehotd = 5'd2;
        3'd2: lizzieLet12_1_onehotd = 5'd4;
        3'd3: lizzieLet12_1_onehotd = 5'd8;
        3'd4: lizzieLet12_1_onehotd = 5'd16;
        default: lizzieLet12_1_onehotd = 5'd0;
      endcase
    else lizzieLet12_1_onehotd = 5'd0;
  assign _1_d = {lizzieLet12_1_d[115:1], lizzieLet12_1_onehotd[0]};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool3_d = {lizzieLet12_1_d[115:1],
                                                 lizzieLet12_1_onehotd[1]};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool2_d = {lizzieLet12_1_d[115:1],
                                                 lizzieLet12_1_onehotd[2]};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool1_d = {lizzieLet12_1_d[115:1],
                                                 lizzieLet12_1_onehotd[3]};
  assign lizzieLet12_1Lcall_mAdd_mAdd_Bool0_d = {lizzieLet12_1_d[115:1],
                                                 lizzieLet12_1_onehotd[4]};
  assign lizzieLet12_1_r = (| (lizzieLet12_1_onehotd & {lizzieLet12_1Lcall_mAdd_mAdd_Bool0_r,
                                                        lizzieLet12_1Lcall_mAdd_mAdd_Bool1_r,
                                                        lizzieLet12_1Lcall_mAdd_mAdd_Bool2_r,
                                                        lizzieLet12_1Lcall_mAdd_mAdd_Bool3_r,
                                                        _1_r}));
  assign lizzieLet12_2_r = lizzieLet12_1_r;
  
  /* demux (Ty CTmAdd_mAdd_Bool,
       Ty Go) : (lizzieLet12_3,CTmAdd_mAdd_Bool) (go_6_goMux_data,Go) > [(_0,Go),
                                                                         (lizzieLet12_3Lcall_mAdd_mAdd_Bool3,Go),
                                                                         (lizzieLet12_3Lcall_mAdd_mAdd_Bool2,Go),
                                                                         (lizzieLet12_3Lcall_mAdd_mAdd_Bool1,Go),
                                                                         (lizzieLet12_3Lcall_mAdd_mAdd_Bool0,Go)] */
  logic [4:0] go_6_goMux_data_onehotd;
  always_comb
    if ((lizzieLet12_3_d[0] && go_6_goMux_data_d[0]))
      unique case (lizzieLet12_3_d[3:1])
        3'd0: go_6_goMux_data_onehotd = 5'd1;
        3'd1: go_6_goMux_data_onehotd = 5'd2;
        3'd2: go_6_goMux_data_onehotd = 5'd4;
        3'd3: go_6_goMux_data_onehotd = 5'd8;
        3'd4: go_6_goMux_data_onehotd = 5'd16;
        default: go_6_goMux_data_onehotd = 5'd0;
      endcase
    else go_6_goMux_data_onehotd = 5'd0;
  assign _0_d = go_6_goMux_data_onehotd[0];
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool3_d = go_6_goMux_data_onehotd[1];
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool2_d = go_6_goMux_data_onehotd[2];
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool1_d = go_6_goMux_data_onehotd[3];
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool0_d = go_6_goMux_data_onehotd[4];
  assign go_6_goMux_data_r = (| (go_6_goMux_data_onehotd & {lizzieLet12_3Lcall_mAdd_mAdd_Bool0_r,
                                                            lizzieLet12_3Lcall_mAdd_mAdd_Bool1_r,
                                                            lizzieLet12_3Lcall_mAdd_mAdd_Bool2_r,
                                                            lizzieLet12_3Lcall_mAdd_mAdd_Bool3_r,
                                                            _0_r}));
  assign lizzieLet12_3_r = go_6_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet12_3Lcall_mAdd_mAdd_Bool0,Go) > (lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf,Go) */
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_r;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool0_r = ((! lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d[0]) || lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d <= 1'd0;
    else
      if (lizzieLet12_3Lcall_mAdd_mAdd_Bool0_r)
        lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d <= lizzieLet12_3Lcall_mAdd_mAdd_Bool0_d;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_r = (! lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf[0]);
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_d = (lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf[0] ? lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf :
                                                          lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_r && lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf[0]))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet12_3Lcall_mAdd_mAdd_Bool0_1_argbuf_r) && (! lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf[0])))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_buf <= lizzieLet12_3Lcall_mAdd_mAdd_Bool0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet12_3Lcall_mAdd_mAdd_Bool1,Go) > (lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf,Go) */
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_r;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool1_r = ((! lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d[0]) || lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d <= 1'd0;
    else
      if (lizzieLet12_3Lcall_mAdd_mAdd_Bool1_r)
        lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d <= lizzieLet12_3Lcall_mAdd_mAdd_Bool1_d;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_r = (! lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf[0]);
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_d = (lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf[0] ? lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf :
                                                          lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_r && lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf[0]))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet12_3Lcall_mAdd_mAdd_Bool1_1_argbuf_r) && (! lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf[0])))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_buf <= lizzieLet12_3Lcall_mAdd_mAdd_Bool1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet12_3Lcall_mAdd_mAdd_Bool2,Go) > (lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf,Go) */
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_r;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool2_r = ((! lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d[0]) || lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d <= 1'd0;
    else
      if (lizzieLet12_3Lcall_mAdd_mAdd_Bool2_r)
        lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d <= lizzieLet12_3Lcall_mAdd_mAdd_Bool2_d;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_r = (! lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf[0]);
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_d = (lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf[0] ? lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf :
                                                          lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_r && lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf[0]))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet12_3Lcall_mAdd_mAdd_Bool2_1_argbuf_r) && (! lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf[0])))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_buf <= lizzieLet12_3Lcall_mAdd_mAdd_Bool2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet12_3Lcall_mAdd_mAdd_Bool3,Go) > (lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf,Go) */
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d;
  logic lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_r;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool3_r = ((! lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d[0]) || lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d <= 1'd0;
    else
      if (lizzieLet12_3Lcall_mAdd_mAdd_Bool3_r)
        lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d <= lizzieLet12_3Lcall_mAdd_mAdd_Bool3_d;
  Go_t lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf;
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_r = (! lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf[0]);
  assign lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_d = (lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf[0] ? lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf :
                                                          lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_r && lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf[0]))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet12_3Lcall_mAdd_mAdd_Bool3_1_argbuf_r) && (! lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf[0])))
        lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_buf <= lizzieLet12_3Lcall_mAdd_mAdd_Bool3_bufchan_d;
  
  /* demux (Ty CTmAdd_mAdd_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet12_4,CTmAdd_mAdd_Bool) (srtarg_0_goMux_mux,Pointer_QTree_Bool) > [(lizzieLet12_4LmAdd_mAdd_Boolsbos,Pointer_QTree_Bool),
                                                                                                            (lizzieLet12_4Lcall_mAdd_mAdd_Bool3,Pointer_QTree_Bool),
                                                                                                            (lizzieLet12_4Lcall_mAdd_mAdd_Bool2,Pointer_QTree_Bool),
                                                                                                            (lizzieLet12_4Lcall_mAdd_mAdd_Bool1,Pointer_QTree_Bool),
                                                                                                            (lizzieLet12_4Lcall_mAdd_mAdd_Bool0,Pointer_QTree_Bool)] */
  logic [4:0] srtarg_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet12_4_d[0] && srtarg_0_goMux_mux_d[0]))
      unique case (lizzieLet12_4_d[3:1])
        3'd0: srtarg_0_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_goMux_mux_onehotd = 5'd0;
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_d = {srtarg_0_goMux_mux_d[16:1],
                                               srtarg_0_goMux_mux_onehotd[0]};
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool3_d = {srtarg_0_goMux_mux_d[16:1],
                                                 srtarg_0_goMux_mux_onehotd[1]};
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool2_d = {srtarg_0_goMux_mux_d[16:1],
                                                 srtarg_0_goMux_mux_onehotd[2]};
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool1_d = {srtarg_0_goMux_mux_d[16:1],
                                                 srtarg_0_goMux_mux_onehotd[3]};
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool0_d = {srtarg_0_goMux_mux_d[16:1],
                                                 srtarg_0_goMux_mux_onehotd[4]};
  assign srtarg_0_goMux_mux_r = (| (srtarg_0_goMux_mux_onehotd & {lizzieLet12_4Lcall_mAdd_mAdd_Bool0_r,
                                                                  lizzieLet12_4Lcall_mAdd_mAdd_Bool1_r,
                                                                  lizzieLet12_4Lcall_mAdd_mAdd_Bool2_r,
                                                                  lizzieLet12_4Lcall_mAdd_mAdd_Bool3_r,
                                                                  lizzieLet12_4LmAdd_mAdd_Boolsbos_r}));
  assign lizzieLet12_4_r = srtarg_0_goMux_mux_r;
  
  /* dcon (Ty QTree_Bool,
      Dcon QNode_Bool) : [(lizzieLet12_4Lcall_mAdd_mAdd_Bool0,Pointer_QTree_Bool),
                          (es_2_1_destruct,Pointer_QTree_Bool),
                          (es_3_1_destruct,Pointer_QTree_Bool),
                          (es_4_3_destruct,Pointer_QTree_Bool)] > (lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool,QTree_Bool) */
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_d = QNode_Bool_dc((& {lizzieLet12_4Lcall_mAdd_mAdd_Bool0_d[0],
                                                                                                      es_2_1_destruct_d[0],
                                                                                                      es_3_1_destruct_d[0],
                                                                                                      es_4_3_destruct_d[0]}), lizzieLet12_4Lcall_mAdd_mAdd_Bool0_d, es_2_1_destruct_d, es_3_1_destruct_d, es_4_3_destruct_d);
  assign {lizzieLet12_4Lcall_mAdd_mAdd_Bool0_r,
          es_2_1_destruct_r,
          es_3_1_destruct_r,
          es_4_3_destruct_r} = {4 {(lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool,QTree_Bool) > (lizzieLet16_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_r;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_r = ((! lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d[0]) || lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d <= {66'd0,
                                                                                           1'd0};
    else
      if (lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_r)
        lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d <= lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_d;
  QTree_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_r = (! lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf[0]);
  assign lizzieLet16_1_argbuf_d = (lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf[0] ? lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf :
                                   lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf <= {66'd0,
                                                                                             1'd0};
    else
      if ((lizzieLet16_1_argbuf_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf[0]))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf <= {66'd0,
                                                                                               1'd0};
      else if (((! lizzieLet16_1_argbuf_r) && (! lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf[0])))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_buf <= lizzieLet12_4Lcall_mAdd_mAdd_Bool0_1es_2_1_1es_3_1_1es_4_3_1QNode_Bool_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Bool,
      Dcon Lcall_mAdd_mAdd_Bool0) : [(lizzieLet12_4Lcall_mAdd_mAdd_Bool1,Pointer_QTree_Bool),
                                     (es_3_destruct,Pointer_QTree_Bool),
                                     (es_4_2_destruct,Pointer_QTree_Bool),
                                     (sc_0_3_destruct,Pointer_CTmAdd_mAdd_Bool)] > (lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0,CTmAdd_mAdd_Bool) */
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_d = Lcall_mAdd_mAdd_Bool0_dc((& {lizzieLet12_4Lcall_mAdd_mAdd_Bool1_d[0],
                                                                                                                          es_3_destruct_d[0],
                                                                                                                          es_4_2_destruct_d[0],
                                                                                                                          sc_0_3_destruct_d[0]}), lizzieLet12_4Lcall_mAdd_mAdd_Bool1_d, es_3_destruct_d, es_4_2_destruct_d, sc_0_3_destruct_d);
  assign {lizzieLet12_4Lcall_mAdd_mAdd_Bool1_r,
          es_3_destruct_r,
          es_4_2_destruct_r,
          sc_0_3_destruct_r} = {4 {(lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0,CTmAdd_mAdd_Bool) > (lizzieLet15_1_argbuf,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_r;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_r = ((! lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d[0]) || lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d <= {115'd0,
                                                                                                    1'd0};
    else
      if (lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_r)
        lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d <= lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_d;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_r = (! lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf[0]);
  assign lizzieLet15_1_argbuf_d = (lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf[0] ? lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf :
                                   lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf <= {115'd0,
                                                                                                      1'd0};
    else
      if ((lizzieLet15_1_argbuf_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf[0]))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf <= {115'd0,
                                                                                                        1'd0};
      else if (((! lizzieLet15_1_argbuf_r) && (! lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf[0])))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_buf <= lizzieLet12_4Lcall_mAdd_mAdd_Bool1_1es_3_1es_4_2_1sc_0_3_1Lcall_mAdd_mAdd_Bool0_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Bool,
      Dcon Lcall_mAdd_mAdd_Bool1) : [(lizzieLet12_4Lcall_mAdd_mAdd_Bool2,Pointer_QTree_Bool),
                                     (es_4_1_destruct,Pointer_QTree_Bool),
                                     (sc_0_2_destruct,Pointer_CTmAdd_mAdd_Bool),
                                     (isZ1a86_3_1,MyDTBool_Bool),
                                     (ga87_3_1,MyDTBool_Bool_Bool),
                                     (q1a8g_2_destruct,Pointer_QTree_Bool),
                                     (t1a8l_2_destruct,Pointer_QTree_Bool)] > (lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1,CTmAdd_mAdd_Bool) */
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_d = Lcall_mAdd_mAdd_Bool1_dc((& {lizzieLet12_4Lcall_mAdd_mAdd_Bool2_d[0],
                                                                                                                                                         es_4_1_destruct_d[0],
                                                                                                                                                         sc_0_2_destruct_d[0],
                                                                                                                                                         isZ1a86_3_1_d[0],
                                                                                                                                                         ga87_3_1_d[0],
                                                                                                                                                         q1a8g_2_destruct_d[0],
                                                                                                                                                         t1a8l_2_destruct_d[0]}), lizzieLet12_4Lcall_mAdd_mAdd_Bool2_d, es_4_1_destruct_d, sc_0_2_destruct_d, isZ1a86_3_1_d, ga87_3_1_d, q1a8g_2_destruct_d, t1a8l_2_destruct_d);
  assign {lizzieLet12_4Lcall_mAdd_mAdd_Bool2_r,
          es_4_1_destruct_r,
          sc_0_2_destruct_r,
          isZ1a86_3_1_r,
          ga87_3_1_r,
          q1a8g_2_destruct_r,
          t1a8l_2_destruct_r} = {7 {(lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1,CTmAdd_mAdd_Bool) > (lizzieLet14_1_argbuf,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_r;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_r = ((! lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d[0]) || lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d <= {115'd0,
                                                                                                                                   1'd0};
    else
      if (lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_r)
        lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d <= lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_d;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_r = (! lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf[0]);
  assign lizzieLet14_1_argbuf_d = (lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf[0] ? lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf :
                                   lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf <= {115'd0,
                                                                                                                                     1'd0};
    else
      if ((lizzieLet14_1_argbuf_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf[0]))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf <= {115'd0,
                                                                                                                                       1'd0};
      else if (((! lizzieLet14_1_argbuf_r) && (! lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf[0])))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_buf <= lizzieLet12_4Lcall_mAdd_mAdd_Bool2_1es_4_1_1sc_0_2_1isZ1a86_3_1ga87_3_1q1a8g_2_1t1a8l_2_1Lcall_mAdd_mAdd_Bool1_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Bool,
      Dcon Lcall_mAdd_mAdd_Bool2) : [(lizzieLet12_4Lcall_mAdd_mAdd_Bool3,Pointer_QTree_Bool),
                                     (sc_0_1_destruct,Pointer_CTmAdd_mAdd_Bool),
                                     (isZ1a86_2_1,MyDTBool_Bool),
                                     (ga87_2_1,MyDTBool_Bool_Bool),
                                     (q1a8g_1_destruct,Pointer_QTree_Bool),
                                     (t1a8l_1_destruct,Pointer_QTree_Bool),
                                     (q2a8h_1_destruct,Pointer_QTree_Bool),
                                     (t2a8m_1_destruct,Pointer_QTree_Bool)] > (lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2,CTmAdd_mAdd_Bool) */
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_d = Lcall_mAdd_mAdd_Bool2_dc((& {lizzieLet12_4Lcall_mAdd_mAdd_Bool3_d[0],
                                                                                                                                                                   sc_0_1_destruct_d[0],
                                                                                                                                                                   isZ1a86_2_1_d[0],
                                                                                                                                                                   ga87_2_1_d[0],
                                                                                                                                                                   q1a8g_1_destruct_d[0],
                                                                                                                                                                   t1a8l_1_destruct_d[0],
                                                                                                                                                                   q2a8h_1_destruct_d[0],
                                                                                                                                                                   t2a8m_1_destruct_d[0]}), lizzieLet12_4Lcall_mAdd_mAdd_Bool3_d, sc_0_1_destruct_d, isZ1a86_2_1_d, ga87_2_1_d, q1a8g_1_destruct_d, t1a8l_1_destruct_d, q2a8h_1_destruct_d, t2a8m_1_destruct_d);
  assign {lizzieLet12_4Lcall_mAdd_mAdd_Bool3_r,
          sc_0_1_destruct_r,
          isZ1a86_2_1_r,
          ga87_2_1_r,
          q1a8g_1_destruct_r,
          t1a8l_1_destruct_r,
          q2a8h_1_destruct_r,
          t2a8m_1_destruct_r} = {8 {(lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2,CTmAdd_mAdd_Bool) > (lizzieLet13_1_argbuf,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d;
  logic lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_r;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_r = ((! lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d[0]) || lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d <= {115'd0,
                                                                                                                                             1'd0};
    else
      if (lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_r)
        lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d <= lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_d;
  CTmAdd_mAdd_Bool_t lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf;
  assign lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_r = (! lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf[0]);
  assign lizzieLet13_1_argbuf_d = (lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf[0] ? lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf :
                                   lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf <= {115'd0,
                                                                                                                                               1'd0};
    else
      if ((lizzieLet13_1_argbuf_r && lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf[0]))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf <= {115'd0,
                                                                                                                                                 1'd0};
      else if (((! lizzieLet13_1_argbuf_r) && (! lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf[0])))
        lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_buf <= lizzieLet12_4Lcall_mAdd_mAdd_Bool3_1sc_0_1_1isZ1a86_2_1ga87_2_1q1a8g_1_1t1a8l_1_1q2a8h_1_1t2a8m_1_1Lcall_mAdd_mAdd_Bool2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (lizzieLet12_4LmAdd_mAdd_Boolsbos,Pointer_QTree_Bool) > [(lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Bool),
                                                                                        (lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Bool)] */
  logic [1:0] lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted;
  logic [1:0] lizzieLet12_4LmAdd_mAdd_Boolsbos_done;
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_d = {lizzieLet12_4LmAdd_mAdd_Boolsbos_d[16:1],
                                                                    (lizzieLet12_4LmAdd_mAdd_Boolsbos_d[0] && (! lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted[0]))};
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d = {lizzieLet12_4LmAdd_mAdd_Boolsbos_d[16:1],
                                                                    (lizzieLet12_4LmAdd_mAdd_Boolsbos_d[0] && (! lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted[1]))};
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_done = (lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted | ({lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d[0],
                                                                                               lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_d[0]} & {lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_r,
                                                                                                                                                              lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_r}));
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_r = (& lizzieLet12_4LmAdd_mAdd_Boolsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted <= 2'd0;
    else
      lizzieLet12_4LmAdd_mAdd_Boolsbos_emitted <= (lizzieLet12_4LmAdd_mAdd_Boolsbos_r ? 2'd0 :
                                                   lizzieLet12_4LmAdd_mAdd_Boolsbos_done);
  
  /* togo (Ty Pointer_QTree_Bool) : (lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Bool) > (call_mAdd_mAdd_Bool_goConst,Go) */
  assign call_mAdd_mAdd_Bool_goConst_d = lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_d[0];
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_1_r = call_mAdd_mAdd_Bool_goConst_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (m1a88_1,Pointer_QTree_Bool) > (m1a88_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m1a88_1_bufchan_d;
  logic m1a88_1_bufchan_r;
  assign m1a88_1_r = ((! m1a88_1_bufchan_d[0]) || m1a88_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a88_1_bufchan_d <= {16'd0, 1'd0};
    else if (m1a88_1_r) m1a88_1_bufchan_d <= m1a88_1_d;
  Pointer_QTree_Bool_t m1a88_1_bufchan_buf;
  assign m1a88_1_bufchan_r = (! m1a88_1_bufchan_buf[0]);
  assign m1a88_1_argbuf_d = (m1a88_1_bufchan_buf[0] ? m1a88_1_bufchan_buf :
                             m1a88_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a88_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m1a88_1_argbuf_r && m1a88_1_bufchan_buf[0]))
        m1a88_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m1a88_1_argbuf_r) && (! m1a88_1_bufchan_buf[0])))
        m1a88_1_bufchan_buf <= m1a88_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (m1a88_goMux_mux,Pointer_QTree_Bool) > [(m1a88_1,Pointer_QTree_Bool),
                                                                       (m1a88_2,Pointer_QTree_Bool)] */
  logic [1:0] m1a88_goMux_mux_emitted;
  logic [1:0] m1a88_goMux_mux_done;
  assign m1a88_1_d = {m1a88_goMux_mux_d[16:1],
                      (m1a88_goMux_mux_d[0] && (! m1a88_goMux_mux_emitted[0]))};
  assign m1a88_2_d = {m1a88_goMux_mux_d[16:1],
                      (m1a88_goMux_mux_d[0] && (! m1a88_goMux_mux_emitted[1]))};
  assign m1a88_goMux_mux_done = (m1a88_goMux_mux_emitted | ({m1a88_2_d[0],
                                                             m1a88_1_d[0]} & {m1a88_2_r,
                                                                              m1a88_1_r}));
  assign m1a88_goMux_mux_r = (& m1a88_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a88_goMux_mux_emitted <= 2'd0;
    else
      m1a88_goMux_mux_emitted <= (m1a88_goMux_mux_r ? 2'd0 :
                                  m1a88_goMux_mux_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (m2a89_1,Pointer_QTree_Bool) > (m2a89_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2a89_1_bufchan_d;
  logic m2a89_1_bufchan_r;
  assign m2a89_1_r = ((! m2a89_1_bufchan_d[0]) || m2a89_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a89_1_bufchan_d <= {16'd0, 1'd0};
    else if (m2a89_1_r) m2a89_1_bufchan_d <= m2a89_1_d;
  Pointer_QTree_Bool_t m2a89_1_bufchan_buf;
  assign m2a89_1_bufchan_r = (! m2a89_1_bufchan_buf[0]);
  assign m2a89_1_argbuf_d = (m2a89_1_bufchan_buf[0] ? m2a89_1_bufchan_buf :
                             m2a89_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a89_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2a89_1_argbuf_r && m2a89_1_bufchan_buf[0]))
        m2a89_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2a89_1_argbuf_r) && (! m2a89_1_bufchan_buf[0])))
        m2a89_1_bufchan_buf <= m2a89_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (m2a89_goMux_mux,Pointer_QTree_Bool) > [(m2a89_1,Pointer_QTree_Bool),
                                                                       (m2a89_2,Pointer_QTree_Bool)] */
  logic [1:0] m2a89_goMux_mux_emitted;
  logic [1:0] m2a89_goMux_mux_done;
  assign m2a89_1_d = {m2a89_goMux_mux_d[16:1],
                      (m2a89_goMux_mux_d[0] && (! m2a89_goMux_mux_emitted[0]))};
  assign m2a89_2_d = {m2a89_goMux_mux_d[16:1],
                      (m2a89_goMux_mux_d[0] && (! m2a89_goMux_mux_emitted[1]))};
  assign m2a89_goMux_mux_done = (m2a89_goMux_mux_emitted | ({m2a89_2_d[0],
                                                             m2a89_1_d[0]} & {m2a89_2_r,
                                                                              m2a89_1_r}));
  assign m2a89_goMux_mux_r = (& m2a89_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a89_goMux_mux_emitted <= 2'd0;
    else
      m2a89_goMux_mux_emitted <= (m2a89_goMux_mux_r ? 2'd0 :
                                  m2a89_goMux_mux_done);
  
  /* mergectrl (Ty C2,
           Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool),
                                                                                                       (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool)] > (mAdd_mAdd_Bool_choice,C2) (mAdd_mAdd_Bool_data,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d = ((| mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_q) ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_q :
                                                                                                                          (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] ? 2'd1 :
                                                                                                                           (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_d[0] ? 2'd2 :
                                                                                                                            2'd0)));
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_q <= 2'd0;
    else
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_q <= (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done ? 2'd0 :
                                                                                                                        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d);
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q <= 2'd0;
    else
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q <= (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done ? 2'd0 :
                                                                                                                      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_d);
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_d;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q | ({mAdd_mAdd_Bool_choice_d[0],
                                                                                                                                                                                                                                        mAdd_mAdd_Bool_data_d[0]} & {mAdd_mAdd_Bool_choice_r,
                                                                                                                                                                                                                                                                     mAdd_mAdd_Bool_data_r}));
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done = (& mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_d);
  assign {mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_r,
          mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r} = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d :
                                                                                                                     2'd0);
  assign mAdd_mAdd_Bool_data_d = ((mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d[0] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q[0])) ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d :
                                  ((mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d[1] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q[0])) ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool2_d :
                                   {32'd0, 1'd0}));
  assign mAdd_mAdd_Bool_choice_d = ((mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d[0] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q[1])) ? C1_2_dc(1'd1) :
                                    ((mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_select_d[1] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emit_q[1])) ? C2_2_dc(1'd1) :
                                     {1'd0, 1'd0}));
  
  /* buf (Ty MyDTBool_Bool_Bool) : (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1,MyDTBool_Bool_Bool) > (ga87_1_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_r;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_r = ((! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d[0]) || mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d <= 1'd0;
    else
      if (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_r)
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_d;
  MyDTBool_Bool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_r = (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf[0]);
  assign ga87_1_1_argbuf_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf[0] ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf :
                              mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf <= 1'd0;
    else
      if ((ga87_1_1_argbuf_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf[0]))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf <= 1'd0;
      else if (((! ga87_1_1_argbuf_r) && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf[0])))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_buf <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_bufchan_d;
  
  /* fork (Ty Go) : (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5,Go) > [(go_5_1,Go),
                                                                                                                              (go_5_2,Go)] */
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted;
  logic [1:0] mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_done;
  assign go_5_1_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_d[0] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted[0]));
  assign go_5_2_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_d[0] && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted[1]));
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_done = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted | ({go_5_2_d[0],
                                                                                                                                                                                                                                           go_5_1_d[0]} & {go_5_2_r,
                                                                                                                                                                                                                                                           go_5_1_r}));
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_r = (& mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted <= 2'd0;
    else
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_emitted <= (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_r ? 2'd0 :
                                                                                                                         mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_done);
  
  /* buf (Ty MyDTBool_Bool) : (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1,MyDTBool_Bool) > (isZ1a86_1_1_argbuf,MyDTBool_Bool) */
  MyDTBool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_r;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_r = ((! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d[0]) || mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d <= 1'd0;
    else
      if (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_r)
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_d;
  MyDTBool_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_r = (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf[0]);
  assign isZ1a86_1_1_argbuf_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf[0] ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf :
                                 mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf <= 1'd0;
    else
      if ((isZ1a86_1_1_argbuf_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf[0]))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf <= 1'd0;
      else if (((! isZ1a86_1_1_argbuf_r) && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf[0])))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_buf <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1,Pointer_QTree_Bool) > (m1a88_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_r;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_r = ((! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d[0]) || mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d <= {16'd0,
                                                                                                                              1'd0};
    else
      if (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_r)
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_d;
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_r = (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf[0]);
  assign m1a88_1_1_argbuf_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf[0] ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf :
                               mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf <= {16'd0,
                                                                                                                                1'd0};
    else
      if ((m1a88_1_1_argbuf_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf[0]))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf <= {16'd0,
                                                                                                                                  1'd0};
      else if (((! m1a88_1_1_argbuf_r) && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf[0])))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_buf <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1,Pointer_QTree_Bool) > (m2a89_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d;
  logic mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_r;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_r = ((! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d[0]) || mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d <= {16'd0,
                                                                                                                              1'd0};
    else
      if (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_r)
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_d;
  Pointer_QTree_Bool_t mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_r = (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf[0]);
  assign m2a89_1_1_argbuf_d = (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf[0] ? mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf :
                               mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf <= {16'd0,
                                                                                                                                1'd0};
    else
      if ((m2a89_1_1_argbuf_r && mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf[0]))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf <= {16'd0,
                                                                                                                                  1'd0};
      else if (((! m2a89_1_1_argbuf_r) && (! mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf[0])))
        mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_buf <= mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (mAdd_mAdd_Bool_1,Pointer_QTree_Bool) > (mAdd_mAdd_Bool_resbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_1_bufchan_d;
  logic mAdd_mAdd_Bool_1_bufchan_r;
  assign mAdd_mAdd_Bool_1_r = ((! mAdd_mAdd_Bool_1_bufchan_d[0]) || mAdd_mAdd_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Bool_1_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Bool_1_r)
        mAdd_mAdd_Bool_1_bufchan_d <= mAdd_mAdd_Bool_1_d;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_1_bufchan_buf;
  assign mAdd_mAdd_Bool_1_bufchan_r = (! mAdd_mAdd_Bool_1_bufchan_buf[0]);
  assign mAdd_mAdd_Bool_resbuf_d = (mAdd_mAdd_Bool_1_bufchan_buf[0] ? mAdd_mAdd_Bool_1_bufchan_buf :
                                    mAdd_mAdd_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Bool_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mAdd_mAdd_Bool_resbuf_r && mAdd_mAdd_Bool_1_bufchan_buf[0]))
        mAdd_mAdd_Bool_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mAdd_mAdd_Bool_resbuf_r) && (! mAdd_mAdd_Bool_1_bufchan_buf[0])))
        mAdd_mAdd_Bool_1_bufchan_buf <= mAdd_mAdd_Bool_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (mAdd_mAdd_Bool_2,Pointer_QTree_Bool) > (mAdd_mAdd_Bool_2_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_bufchan_d;
  logic mAdd_mAdd_Bool_2_bufchan_r;
  assign mAdd_mAdd_Bool_2_r = ((! mAdd_mAdd_Bool_2_bufchan_d[0]) || mAdd_mAdd_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Bool_2_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Bool_2_r)
        mAdd_mAdd_Bool_2_bufchan_d <= mAdd_mAdd_Bool_2_d;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_2_bufchan_buf;
  assign mAdd_mAdd_Bool_2_bufchan_r = (! mAdd_mAdd_Bool_2_bufchan_buf[0]);
  assign mAdd_mAdd_Bool_2_argbuf_d = (mAdd_mAdd_Bool_2_bufchan_buf[0] ? mAdd_mAdd_Bool_2_bufchan_buf :
                                      mAdd_mAdd_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Bool_2_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mAdd_mAdd_Bool_2_argbuf_r && mAdd_mAdd_Bool_2_bufchan_buf[0]))
        mAdd_mAdd_Bool_2_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mAdd_mAdd_Bool_2_argbuf_r) && (! mAdd_mAdd_Bool_2_bufchan_buf[0])))
        mAdd_mAdd_Bool_2_bufchan_buf <= mAdd_mAdd_Bool_2_bufchan_d;
  
  /* sink (Ty Pointer_QTree_Bool) : (mAdd_mAdd_Bool_2_argbuf,Pointer_QTree_Bool) > */
  assign {mAdd_mAdd_Bool_2_argbuf_r,
          mAdd_mAdd_Bool_2_argbuf_dout} = {mAdd_mAdd_Bool_2_argbuf_rout,
                                           mAdd_mAdd_Bool_2_argbuf_d};
  
  /* demux (Ty C2,
       Ty Pointer_QTree_Bool) : (mAdd_mAdd_Bool_choice,C2) (lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Bool) > [(mAdd_mAdd_Bool_1,Pointer_QTree_Bool),
                                                                                                                                         (mAdd_mAdd_Bool_2,Pointer_QTree_Bool)] */
  logic [1:0] lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd;
  always_comb
    if ((mAdd_mAdd_Bool_choice_d[0] && lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d[0]))
      unique case (mAdd_mAdd_Bool_choice_d[1:1])
        1'd0:
          lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd = 2'd1;
        1'd1:
          lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd = 2'd2;
        default:
          lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd = 2'd0;
      endcase
    else
      lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd = 2'd0;
  assign mAdd_mAdd_Bool_1_d = {lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d[16:1],
                               lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd[0]};
  assign mAdd_mAdd_Bool_2_d = {lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_d[16:1],
                               lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd[1]};
  assign lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_r = (| (lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_onehotd & {mAdd_mAdd_Bool_2_r,
                                                                                                                                        mAdd_mAdd_Bool_1_r}));
  assign mAdd_mAdd_Bool_choice_r = lizzieLet12_4LmAdd_mAdd_Boolsbos_1_merge_merge_fork_2_r;
  
  /* destruct (Ty TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool,
          Dcon TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : (mAdd_mAdd_Bool_data,TupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) > [(mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5,Go),
                                                                                                                                                                                                                     (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1,MyDTBool_Bool),
                                                                                                                                                                                                                     (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1,MyDTBool_Bool_Bool),
                                                                                                                                                                                                                     (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1,Pointer_QTree_Bool),
                                                                                                                                                                                                                     (mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1,Pointer_QTree_Bool)] */
  logic [4:0] mAdd_mAdd_Bool_data_emitted;
  logic [4:0] mAdd_mAdd_Bool_data_done;
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_d = (mAdd_mAdd_Bool_data_d[0] && (! mAdd_mAdd_Bool_data_emitted[0]));
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_d = (mAdd_mAdd_Bool_data_d[0] && (! mAdd_mAdd_Bool_data_emitted[1]));
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_d = (mAdd_mAdd_Bool_data_d[0] && (! mAdd_mAdd_Bool_data_emitted[2]));
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_d = {mAdd_mAdd_Bool_data_d[16:1],
                                                                                                                        (mAdd_mAdd_Bool_data_d[0] && (! mAdd_mAdd_Bool_data_emitted[3]))};
  assign mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_d = {mAdd_mAdd_Bool_data_d[32:17],
                                                                                                                        (mAdd_mAdd_Bool_data_d[0] && (! mAdd_mAdd_Bool_data_emitted[4]))};
  assign mAdd_mAdd_Bool_data_done = (mAdd_mAdd_Bool_data_emitted | ({mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_d[0],
                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_d[0],
                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_d[0],
                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_d[0],
                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_d[0]} & {mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm2a89_1_r,
                                                                                                                                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolm1a88_1_r,
                                                                                                                                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolga87_1_r,
                                                                                                                                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolisZ1a86_1_r,
                                                                                                                                                                                     mAdd_mAdd_BoolTupGo___MyDTBool_Bool___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_5_r}));
  assign mAdd_mAdd_Bool_data_r = (& mAdd_mAdd_Bool_data_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Bool_data_emitted <= 5'd0;
    else
      mAdd_mAdd_Bool_data_emitted <= (mAdd_mAdd_Bool_data_r ? 5'd0 :
                                      mAdd_mAdd_Bool_data_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (mAdd_mAdd_Bool_resbuf,Pointer_QTree_Bool) > (es_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_resbuf_bufchan_d;
  logic mAdd_mAdd_Bool_resbuf_bufchan_r;
  assign mAdd_mAdd_Bool_resbuf_r = ((! mAdd_mAdd_Bool_resbuf_bufchan_d[0]) || mAdd_mAdd_Bool_resbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Bool_resbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Bool_resbuf_r)
        mAdd_mAdd_Bool_resbuf_bufchan_d <= mAdd_mAdd_Bool_resbuf_d;
  Pointer_QTree_Bool_t mAdd_mAdd_Bool_resbuf_bufchan_buf;
  assign mAdd_mAdd_Bool_resbuf_bufchan_r = (! mAdd_mAdd_Bool_resbuf_bufchan_buf[0]);
  assign es_2_1_argbuf_d = (mAdd_mAdd_Bool_resbuf_bufchan_buf[0] ? mAdd_mAdd_Bool_resbuf_bufchan_buf :
                            mAdd_mAdd_Bool_resbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Bool_resbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_2_1_argbuf_r && mAdd_mAdd_Bool_resbuf_bufchan_buf[0]))
        mAdd_mAdd_Bool_resbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_2_1_argbuf_r) && (! mAdd_mAdd_Bool_resbuf_bufchan_buf[0])))
        mAdd_mAdd_Bool_resbuf_bufchan_buf <= mAdd_mAdd_Bool_resbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q1a8g_3_destruct,Pointer_QTree_Bool) > (q1a8g_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1a8g_3_destruct_bufchan_d;
  logic q1a8g_3_destruct_bufchan_r;
  assign q1a8g_3_destruct_r = ((! q1a8g_3_destruct_bufchan_d[0]) || q1a8g_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8g_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8g_3_destruct_r)
        q1a8g_3_destruct_bufchan_d <= q1a8g_3_destruct_d;
  Pointer_QTree_Bool_t q1a8g_3_destruct_bufchan_buf;
  assign q1a8g_3_destruct_bufchan_r = (! q1a8g_3_destruct_bufchan_buf[0]);
  assign q1a8g_3_1_argbuf_d = (q1a8g_3_destruct_bufchan_buf[0] ? q1a8g_3_destruct_bufchan_buf :
                               q1a8g_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8g_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8g_3_1_argbuf_r && q1a8g_3_destruct_bufchan_buf[0]))
        q1a8g_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8g_3_1_argbuf_r) && (! q1a8g_3_destruct_bufchan_buf[0])))
        q1a8g_3_destruct_bufchan_buf <= q1a8g_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2a8h_2_destruct,Pointer_QTree_Bool) > (q2a8h_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2a8h_2_destruct_bufchan_d;
  logic q2a8h_2_destruct_bufchan_r;
  assign q2a8h_2_destruct_r = ((! q2a8h_2_destruct_bufchan_d[0]) || q2a8h_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8h_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8h_2_destruct_r)
        q2a8h_2_destruct_bufchan_d <= q2a8h_2_destruct_d;
  Pointer_QTree_Bool_t q2a8h_2_destruct_bufchan_buf;
  assign q2a8h_2_destruct_bufchan_r = (! q2a8h_2_destruct_bufchan_buf[0]);
  assign q2a8h_2_1_argbuf_d = (q2a8h_2_destruct_bufchan_buf[0] ? q2a8h_2_destruct_bufchan_buf :
                               q2a8h_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8h_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8h_2_1_argbuf_r && q2a8h_2_destruct_bufchan_buf[0]))
        q2a8h_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8h_2_1_argbuf_r) && (! q2a8h_2_destruct_bufchan_buf[0])))
        q2a8h_2_destruct_bufchan_buf <= q2a8h_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3a8i_1_destruct,Pointer_QTree_Bool) > (q3a8i_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3a8i_1_destruct_bufchan_d;
  logic q3a8i_1_destruct_bufchan_r;
  assign q3a8i_1_destruct_r = ((! q3a8i_1_destruct_bufchan_d[0]) || q3a8i_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8i_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8i_1_destruct_r)
        q3a8i_1_destruct_bufchan_d <= q3a8i_1_destruct_d;
  Pointer_QTree_Bool_t q3a8i_1_destruct_bufchan_buf;
  assign q3a8i_1_destruct_bufchan_r = (! q3a8i_1_destruct_bufchan_buf[0]);
  assign q3a8i_1_1_argbuf_d = (q3a8i_1_destruct_bufchan_buf[0] ? q3a8i_1_destruct_bufchan_buf :
                               q3a8i_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8i_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8i_1_1_argbuf_r && q3a8i_1_destruct_bufchan_buf[0]))
        q3a8i_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8i_1_1_argbuf_r) && (! q3a8i_1_destruct_bufchan_buf[0])))
        q3a8i_1_destruct_bufchan_buf <= q3a8i_1_destruct_bufchan_d;
  
  /* buf (Ty CTmAdd_mAdd_Bool) : (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf,CTmAdd_mAdd_Bool) > (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb,CTmAdd_mAdd_Bool) */
  CTmAdd_mAdd_Bool_t readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d;
  logic readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_r;
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_r = ((! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d[0]) || readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d <= {115'd0,
                                                                  1'd0};
    else
      if (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_r)
        readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d <= readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_d;
  CTmAdd_mAdd_Bool_t readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf;
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_r = (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0]);
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d = (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0] ? readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf :
                                                                readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= {115'd0,
                                                                    1'd0};
    else
      if ((readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_r && readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0]))
        readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= {115'd0,
                                                                      1'd0};
      else if (((! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_r) && (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0])))
        readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_bufchan_d;
  
  /* fork (Ty CTmAdd_mAdd_Bool) : (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb,CTmAdd_mAdd_Bool) > [(lizzieLet12_1,CTmAdd_mAdd_Bool),
                                                                                                     (lizzieLet12_2,CTmAdd_mAdd_Bool),
                                                                                                     (lizzieLet12_3,CTmAdd_mAdd_Bool),
                                                                                                     (lizzieLet12_4,CTmAdd_mAdd_Bool)] */
  logic [3:0] readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_done;
  assign lizzieLet12_1_d = {readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet12_2_d = {readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet12_3_d = {readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet12_4_d = {readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_done = (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted | ({lizzieLet12_4_d[0],
                                                                                                                                 lizzieLet12_3_d[0],
                                                                                                                                 lizzieLet12_2_d[0],
                                                                                                                                 lizzieLet12_1_d[0]} & {lizzieLet12_4_r,
                                                                                                                                                        lizzieLet12_3_r,
                                                                                                                                                        lizzieLet12_2_r,
                                                                                                                                                        lizzieLet12_1_r}));
  assign readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_r = (& readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_emitted <= (readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_r ? 4'd0 :
                                                                    readPointer_CTmAdd_mAdd_Boolscfarg_0_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm1a88_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm1a88_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm1a88_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm1a88_1_argbuf_r = ((! readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm1a88_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm1a88_1_argbuf_r)
        readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d <= readPointer_QTree_Boolm1a88_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm1a88_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm1a88_1_argbuf_rwb_d = (readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm1a88_1_argbuf_rwb_r && readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm1a88_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm1a88_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm1a88_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolm1a88_1_argbuf_rwb,QTree_Bool) > [(lizzieLet0_1,QTree_Bool),
                                                                                (lizzieLet0_2,QTree_Bool),
                                                                                (lizzieLet0_3,QTree_Bool),
                                                                                (lizzieLet0_4,QTree_Bool),
                                                                                (lizzieLet0_5,QTree_Bool),
                                                                                (lizzieLet0_6,QTree_Bool),
                                                                                (lizzieLet0_7,QTree_Bool),
                                                                                (lizzieLet0_8,QTree_Bool),
                                                                                (lizzieLet0_9,QTree_Bool)] */
  logic [8:0] readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted;
  logic [8:0] readPointer_QTree_Boolm1a88_1_argbuf_rwb_done;
  assign lizzieLet0_1_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet0_2_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet0_3_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet0_4_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet0_5_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[4]))};
  assign lizzieLet0_6_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[5]))};
  assign lizzieLet0_7_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[6]))};
  assign lizzieLet0_8_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[7]))};
  assign lizzieLet0_9_d = {readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a88_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted[8]))};
  assign readPointer_QTree_Boolm1a88_1_argbuf_rwb_done = (readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted | ({lizzieLet0_9_d[0],
                                                                                                               lizzieLet0_8_d[0],
                                                                                                               lizzieLet0_7_d[0],
                                                                                                               lizzieLet0_6_d[0],
                                                                                                               lizzieLet0_5_d[0],
                                                                                                               lizzieLet0_4_d[0],
                                                                                                               lizzieLet0_3_d[0],
                                                                                                               lizzieLet0_2_d[0],
                                                                                                               lizzieLet0_1_d[0]} & {lizzieLet0_9_r,
                                                                                                                                     lizzieLet0_8_r,
                                                                                                                                     lizzieLet0_7_r,
                                                                                                                                     lizzieLet0_6_r,
                                                                                                                                     lizzieLet0_5_r,
                                                                                                                                     lizzieLet0_4_r,
                                                                                                                                     lizzieLet0_3_r,
                                                                                                                                     lizzieLet0_2_r,
                                                                                                                                     lizzieLet0_1_r}));
  assign readPointer_QTree_Boolm1a88_1_argbuf_rwb_r = (& readPointer_QTree_Boolm1a88_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted <= 9'd0;
    else
      readPointer_QTree_Boolm1a88_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolm1a88_1_argbuf_rwb_r ? 9'd0 :
                                                           readPointer_QTree_Boolm1a88_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm2a89_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm2a89_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm2a89_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm2a89_1_argbuf_r = ((! readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm2a89_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm2a89_1_argbuf_r)
        readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d <= readPointer_QTree_Boolm2a89_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm2a89_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm2a89_1_argbuf_rwb_d = (readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm2a89_1_argbuf_rwb_r && readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm2a89_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm2a89_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm2a89_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (sc_0_4_destruct,Pointer_CTmAdd_mAdd_Bool) > (sc_0_4_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t sc_0_4_destruct_bufchan_d;
  logic sc_0_4_destruct_bufchan_r;
  assign sc_0_4_destruct_r = ((! sc_0_4_destruct_bufchan_d[0]) || sc_0_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_4_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_4_destruct_r)
        sc_0_4_destruct_bufchan_d <= sc_0_4_destruct_d;
  Pointer_CTmAdd_mAdd_Bool_t sc_0_4_destruct_bufchan_buf;
  assign sc_0_4_destruct_bufchan_r = (! sc_0_4_destruct_bufchan_buf[0]);
  assign sc_0_4_1_argbuf_d = (sc_0_4_destruct_bufchan_buf[0] ? sc_0_4_destruct_bufchan_buf :
                              sc_0_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_4_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sc_0_4_1_argbuf_r && sc_0_4_destruct_bufchan_buf[0]))
        sc_0_4_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sc_0_4_1_argbuf_r) && (! sc_0_4_destruct_bufchan_buf[0])))
        sc_0_4_destruct_bufchan_buf <= sc_0_4_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (scfarg_0_goMux_mux,Pointer_CTmAdd_mAdd_Bool) > (scfarg_0_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t scfarg_0_goMux_mux_bufchan_d;
  logic scfarg_0_goMux_mux_bufchan_r;
  assign scfarg_0_goMux_mux_r = ((! scfarg_0_goMux_mux_bufchan_d[0]) || scfarg_0_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) scfarg_0_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_goMux_mux_r)
        scfarg_0_goMux_mux_bufchan_d <= scfarg_0_goMux_mux_d;
  Pointer_CTmAdd_mAdd_Bool_t scfarg_0_goMux_mux_bufchan_buf;
  assign scfarg_0_goMux_mux_bufchan_r = (! scfarg_0_goMux_mux_bufchan_buf[0]);
  assign scfarg_0_1_argbuf_d = (scfarg_0_goMux_mux_bufchan_buf[0] ? scfarg_0_goMux_mux_bufchan_buf :
                                scfarg_0_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((scfarg_0_1_argbuf_r && scfarg_0_goMux_mux_bufchan_buf[0]))
        scfarg_0_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! scfarg_0_1_argbuf_r) && (! scfarg_0_goMux_mux_bufchan_buf[0])))
        scfarg_0_goMux_mux_bufchan_buf <= scfarg_0_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t1a8l_3_destruct,Pointer_QTree_Bool) > (t1a8l_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t1a8l_3_destruct_bufchan_d;
  logic t1a8l_3_destruct_bufchan_r;
  assign t1a8l_3_destruct_r = ((! t1a8l_3_destruct_bufchan_d[0]) || t1a8l_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8l_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t1a8l_3_destruct_r)
        t1a8l_3_destruct_bufchan_d <= t1a8l_3_destruct_d;
  Pointer_QTree_Bool_t t1a8l_3_destruct_bufchan_buf;
  assign t1a8l_3_destruct_bufchan_r = (! t1a8l_3_destruct_bufchan_buf[0]);
  assign t1a8l_3_1_argbuf_d = (t1a8l_3_destruct_bufchan_buf[0] ? t1a8l_3_destruct_bufchan_buf :
                               t1a8l_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8l_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t1a8l_3_1_argbuf_r && t1a8l_3_destruct_bufchan_buf[0]))
        t1a8l_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t1a8l_3_1_argbuf_r) && (! t1a8l_3_destruct_bufchan_buf[0])))
        t1a8l_3_destruct_bufchan_buf <= t1a8l_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t2a8m_2_destruct,Pointer_QTree_Bool) > (t2a8m_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t2a8m_2_destruct_bufchan_d;
  logic t2a8m_2_destruct_bufchan_r;
  assign t2a8m_2_destruct_r = ((! t2a8m_2_destruct_bufchan_d[0]) || t2a8m_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8m_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t2a8m_2_destruct_r)
        t2a8m_2_destruct_bufchan_d <= t2a8m_2_destruct_d;
  Pointer_QTree_Bool_t t2a8m_2_destruct_bufchan_buf;
  assign t2a8m_2_destruct_bufchan_r = (! t2a8m_2_destruct_bufchan_buf[0]);
  assign t2a8m_2_1_argbuf_d = (t2a8m_2_destruct_bufchan_buf[0] ? t2a8m_2_destruct_bufchan_buf :
                               t2a8m_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8m_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t2a8m_2_1_argbuf_r && t2a8m_2_destruct_bufchan_buf[0]))
        t2a8m_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t2a8m_2_1_argbuf_r) && (! t2a8m_2_destruct_bufchan_buf[0])))
        t2a8m_2_destruct_bufchan_buf <= t2a8m_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t3a8n_1_destruct,Pointer_QTree_Bool) > (t3a8n_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t3a8n_1_destruct_bufchan_d;
  logic t3a8n_1_destruct_bufchan_r;
  assign t3a8n_1_destruct_r = ((! t3a8n_1_destruct_bufchan_d[0]) || t3a8n_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8n_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t3a8n_1_destruct_r)
        t3a8n_1_destruct_bufchan_d <= t3a8n_1_destruct_d;
  Pointer_QTree_Bool_t t3a8n_1_destruct_bufchan_buf;
  assign t3a8n_1_destruct_bufchan_r = (! t3a8n_1_destruct_bufchan_buf[0]);
  assign t3a8n_1_1_argbuf_d = (t3a8n_1_destruct_bufchan_buf[0] ? t3a8n_1_destruct_bufchan_buf :
                               t3a8n_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8n_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t3a8n_1_1_argbuf_r && t3a8n_1_destruct_bufchan_buf[0]))
        t3a8n_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t3a8n_1_1_argbuf_r) && (! t3a8n_1_destruct_bufchan_buf[0])))
        t3a8n_1_destruct_bufchan_buf <= t3a8n_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t4a8o_destruct,Pointer_QTree_Bool) > (t4a8o_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t4a8o_destruct_bufchan_d;
  logic t4a8o_destruct_bufchan_r;
  assign t4a8o_destruct_r = ((! t4a8o_destruct_bufchan_d[0]) || t4a8o_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8o_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t4a8o_destruct_r) t4a8o_destruct_bufchan_d <= t4a8o_destruct_d;
  Pointer_QTree_Bool_t t4a8o_destruct_bufchan_buf;
  assign t4a8o_destruct_bufchan_r = (! t4a8o_destruct_bufchan_buf[0]);
  assign t4a8o_1_argbuf_d = (t4a8o_destruct_bufchan_buf[0] ? t4a8o_destruct_bufchan_buf :
                             t4a8o_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8o_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t4a8o_1_argbuf_r && t4a8o_destruct_bufchan_buf[0]))
        t4a8o_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t4a8o_1_argbuf_r) && (! t4a8o_destruct_bufchan_buf[0])))
        t4a8o_destruct_bufchan_buf <= t4a8o_destruct_bufchan_d;
  
  /* buf (Ty MyBool) : (va8b_destruct,MyBool) > (va8b_1_argbuf,MyBool) */
  MyBool_t va8b_destruct_bufchan_d;
  logic va8b_destruct_bufchan_r;
  assign va8b_destruct_r = ((! va8b_destruct_bufchan_d[0]) || va8b_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8b_destruct_bufchan_d <= {1'd0, 1'd0};
    else
      if (va8b_destruct_r) va8b_destruct_bufchan_d <= va8b_destruct_d;
  MyBool_t va8b_destruct_bufchan_buf;
  assign va8b_destruct_bufchan_r = (! va8b_destruct_bufchan_buf[0]);
  assign va8b_1_argbuf_d = (va8b_destruct_bufchan_buf[0] ? va8b_destruct_bufchan_buf :
                            va8b_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8b_destruct_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((va8b_1_argbuf_r && va8b_destruct_bufchan_buf[0]))
        va8b_destruct_bufchan_buf <= {1'd0, 1'd0};
      else if (((! va8b_1_argbuf_r) && (! va8b_destruct_bufchan_buf[0])))
        va8b_destruct_bufchan_buf <= va8b_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_r = ((! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_r)
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_d = (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf :
                                                            writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_r && writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) > (lizzieLet7_1_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                  1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet7_1_1_argbuf_d = (writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf :
                                    writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                    1'd0};
    else
      if ((lizzieLet7_1_1_argbuf_r && writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                      1'd0};
      else if (((! lizzieLet7_1_1_argbuf_r) && (! writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet11_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_r = ((! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_r)
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_d = (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf :
                                                            writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_r && writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) > (sca2_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                  1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_argbuf_d = (writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf :
                            writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                    1'd0};
    else
      if ((sca2_1_argbuf_r && writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                      1'd0};
      else if (((! sca2_1_argbuf_r) && (! writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet13_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_r = ((! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_r)
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_d = (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf :
                                                            writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_r && writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) > (sca1_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                  1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_argbuf_d = (writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf :
                            writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                    1'd0};
    else
      if ((sca1_1_argbuf_r && writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                      1'd0};
      else if (((! sca1_1_argbuf_r) && (! writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet14_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_r = ((! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_r)
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_d = (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf :
                                                            writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_r && writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) > (sca0_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                  1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_argbuf_d = (writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf :
                            writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                    1'd0};
    else
      if ((sca0_1_argbuf_r && writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                      1'd0};
      else if (((! sca0_1_argbuf_r) && (! writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet15_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf,Pointer_CTmAdd_mAdd_Bool) > (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_r = ((! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_r)
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_d = (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_r && writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Bool) : (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Bool) > (sca3_1_argbuf,Pointer_CTmAdd_mAdd_Bool) */
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Bool_t writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_argbuf_d = (writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf :
                            writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((sca3_1_argbuf_r && writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! sca3_1_argbuf_r) && (! writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_BoollizzieLet8_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet10_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet10_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet10_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet10_1_argbuf_r = ((! writeQTree_BoollizzieLet10_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet10_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet10_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet10_1_argbuf_r)
        writeQTree_BoollizzieLet10_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet10_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet10_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet10_1_argbuf_rwb_d = (writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf :
                                                      writeQTree_BoollizzieLet10_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet10_1_argbuf_rwb_r && writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet10_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet10_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet10_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet10_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet6_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet10_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet10_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet10_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet6_1_argbuf_d = (writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet6_1_argbuf_r && writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet6_1_argbuf_r) && (! writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet10_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet16_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet16_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet16_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet16_1_argbuf_r = ((! writeQTree_BoollizzieLet16_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet16_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet16_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet16_1_argbuf_r)
        writeQTree_BoollizzieLet16_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet16_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet16_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet16_1_argbuf_rwb_d = (writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf :
                                                      writeQTree_BoollizzieLet16_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet16_1_argbuf_rwb_r && writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet16_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet16_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet16_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet16_1_argbuf_rwb,Pointer_QTree_Bool) > (contRet_0_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet16_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet16_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet16_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_argbuf_d = (writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((contRet_0_1_argbuf_r && writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! contRet_0_1_argbuf_r) && (! writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet16_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet2_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet2_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet2_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet2_1_argbuf_r = ((! writeQTree_BoollizzieLet2_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet2_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet2_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet2_1_argbuf_r)
        writeQTree_BoollizzieLet2_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet2_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet2_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet2_1_argbuf_rwb_d = (writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet2_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet2_1_argbuf_rwb_r && writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet2_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet2_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet2_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet2_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet0_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet2_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet2_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet2_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet0_1_1_argbuf_d = (writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet0_1_1_argbuf_r && writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet0_1_1_argbuf_r) && (! writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet2_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet3_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet3_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet3_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet3_1_argbuf_r = ((! writeQTree_BoollizzieLet3_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet3_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet3_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet3_1_argbuf_r)
        writeQTree_BoollizzieLet3_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet3_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet3_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet3_1_argbuf_rwb_d = (writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet3_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet3_1_argbuf_rwb_r && writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet3_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet3_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet3_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet3_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet1_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet3_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet3_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet3_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet1_1_1_argbuf_d = (writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet1_1_1_argbuf_r && writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet1_1_1_argbuf_r) && (! writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet3_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet4_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet4_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet4_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet4_1_argbuf_r = ((! writeQTree_BoollizzieLet4_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet4_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet4_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet4_1_argbuf_r)
        writeQTree_BoollizzieLet4_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet4_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet4_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet4_1_argbuf_rwb_d = (writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet4_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet4_1_argbuf_rwb_r && writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet4_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet4_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet4_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet4_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet2_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet4_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet4_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet4_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet2_1_1_argbuf_d = (writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet2_1_1_argbuf_r && writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet2_1_1_argbuf_r) && (! writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet4_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet5_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet5_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet5_1_argbuf_r = ((! writeQTree_BoollizzieLet5_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet5_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet5_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet5_1_argbuf_r)
        writeQTree_BoollizzieLet5_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet5_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet5_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet5_1_argbuf_rwb_d = (writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet5_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet5_1_argbuf_rwb_r && writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet5_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet5_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet5_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet5_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet3_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet5_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet5_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet5_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet3_1_1_argbuf_d = (writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet3_1_1_argbuf_r && writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet3_1_1_argbuf_r) && (! writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet7_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet7_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet7_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet7_1_argbuf_r = ((! writeQTree_BoollizzieLet7_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet7_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet7_1_argbuf_r)
        writeQTree_BoollizzieLet7_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet7_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet7_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet7_1_argbuf_rwb_d = (writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet7_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet7_1_argbuf_rwb_r && writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet7_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet7_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet7_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet7_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet4_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet7_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet7_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet7_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet4_1_1_argbuf_d = (writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet4_1_1_argbuf_r && writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet4_1_1_argbuf_r) && (! writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet7_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet9_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet9_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet9_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet9_1_argbuf_r = ((! writeQTree_BoollizzieLet9_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet9_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet9_1_argbuf_r)
        writeQTree_BoollizzieLet9_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet9_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet9_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet9_1_argbuf_rwb_d = (writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf :
                                                     writeQTree_BoollizzieLet9_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet9_1_argbuf_rwb_r && writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet9_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet9_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet9_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet9_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet5_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet9_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet9_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet9_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet5_1_1_argbuf_d = (writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet5_1_1_argbuf_r && writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet5_1_1_argbuf_r) && (! writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet9_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty MyBool) : (xa85_1,MyBool) > (xa85_1_argbuf,MyBool) */
  MyBool_t xa85_1_bufchan_d;
  logic xa85_1_bufchan_r;
  assign xa85_1_r = ((! xa85_1_bufchan_d[0]) || xa85_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa85_1_bufchan_d <= {1'd0, 1'd0};
    else if (xa85_1_r) xa85_1_bufchan_d <= xa85_1_d;
  MyBool_t xa85_1_bufchan_buf;
  assign xa85_1_bufchan_r = (! xa85_1_bufchan_buf[0]);
  assign xa85_1_argbuf_d = (xa85_1_bufchan_buf[0] ? xa85_1_bufchan_buf :
                            xa85_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa85_1_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((xa85_1_argbuf_r && xa85_1_bufchan_buf[0]))
        xa85_1_bufchan_buf <= {1'd0, 1'd0};
      else if (((! xa85_1_argbuf_r) && (! xa85_1_bufchan_buf[0])))
        xa85_1_bufchan_buf <= xa85_1_bufchan_d;
endmodule