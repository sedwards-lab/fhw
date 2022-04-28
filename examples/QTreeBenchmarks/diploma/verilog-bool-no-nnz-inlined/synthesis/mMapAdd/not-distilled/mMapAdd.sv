`timescale 1ns/1ns
import mMapAdd_package::*;

module mMapAdd(
  input logic clk,
  input logic reset,
  input Go_t \\QTree_Bool_src_d ,
  output logic \\QTree_Bool_src_r ,
  input QTree_Bool_t dummy_write_QTree_Bool_d,
  output logic dummy_write_QTree_Bool_r,
  input Go_t sourceGo_d,
  output logic sourceGo_r,
  input Pointer_QTree_Bool_t m1a9d_0_d,
  output logic m1a9d_0_r,
  input Pointer_QTree_Bool_t m2a9e_1_d,
  output logic m2a9e_1_r,
  output \Word16#_t  forkHP1_QTree_Bool_snk_dout,
  input logic forkHP1_QTree_Bool_snk_rout,
  output Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout,
  input logic dummy_write_QTree_Bool_sink_rout,
  output Pointer_QTree_Nat_t \main_map'_Bool_Nat_resbuf_dout ,
  input logic \main_map'_Bool_Nat_resbuf_rout 
  );
  /* --define=INPUTS=((__05CQTree_Bool_src, 0, 1, Go), (dummy_write_QTree_Bool, 66, 73786976294838206464, QTree_Bool), (sourceGo, 0, 1, Go), (m1a9d_0, 16, 65536, Pointer_QTree_Bool), (m2a9e_1, 16, 65536, Pointer_QTree_Bool)) */
  /* --define=TAPS=() */
  /* --define=OUTPUTS=((forkHP1_QTree_Bool_snk, 16, 65536, Word16__023), (dummy_write_QTree_Bool_sink, 16, 65536, Pointer_QTree_Bool), (main_map__027_Bool_Nat_resbuf, 16, 65536, Pointer_QTree_Nat)) */
  /* TYPE_START
CT__024wmAdd_Bool 16 3 (0,[0]) (1,[16p,0,16p,16p,16p,16p,16p,16p]) (2,[16p,16p,0,16p,16p,16p,16p]) (3,[16p,16p,16p,0,16p,16p]) (4,[16p,16p,16p,16p])
QTree_Bool 16 2 (0,[0]) (1,[1]) (2,[16p,16p,16p,16p]) (3,[0])
QTree_Nat 16 2 (0,[0]) (1,[16p]) (2,[16p,16p,16p,16p]) (3,[0])
CTmain_map__027_Bool_Nat 16 3 (0,[0]) (1,[16p,0,0,16p,16p,16p]) (2,[16p,16p,0,0,16p,16p]) (3,[16p,16p,16p,0,0,16p]) (4,[16p,16p,16p,16p])
Nat 16 1 (0,[0]) (1,[16p])
TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool 16 0 (0,[0,0,16p,16p])
TupGo___MyDTNat_Bool___Pointer_Nat 16 0 (0,[0,0,16p])
TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT__024wmAdd_Bool 16 0 (0,[0,0,16p,16p,16p])
TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map__027_Bool_Nat 16 0 (0,[0,0,0,16p,16p])
TupGo___Pointer_Nat___Pointer_Nat 16 0 (0,[0,16p,16p])
TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool 16 0 (0,[0,0,0,16p])
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
  Go_t go__6_d;
  logic go__6_r;
  Go_t go__7_d;
  logic go__7_r;
  Go_t go__8_d;
  logic go__8_r;
  Go_t go__9_d;
  logic go__9_r;
  Go_t go__10_d;
  logic go__10_r;
  Go_t go__11_d;
  logic go__11_r;
  Go_t go__12_d;
  logic go__12_r;
  Go_t go__13_d;
  logic go__13_r;
  \Word16#_t  initHP_CT$wmAdd_Bool_d;
  logic initHP_CT$wmAdd_Bool_r;
  \Word16#_t  incrHP_CT$wmAdd_Bool_d;
  logic incrHP_CT$wmAdd_Bool_r;
  Go_t incrHP_mergeCT$wmAdd_Bool_d;
  logic incrHP_mergeCT$wmAdd_Bool_r;
  Go_t incrHP_CT$wmAdd_Bool1_d;
  logic incrHP_CT$wmAdd_Bool1_r;
  Go_t incrHP_CT$wmAdd_Bool2_d;
  logic incrHP_CT$wmAdd_Bool2_r;
  \Word16#_t  addHP_CT$wmAdd_Bool_d;
  logic addHP_CT$wmAdd_Bool_r;
  \Word16#_t  mergeHP_CT$wmAdd_Bool_d;
  logic mergeHP_CT$wmAdd_Bool_r;
  Go_t incrHP_mergeCT$wmAdd_Bool_buf_d;
  logic incrHP_mergeCT$wmAdd_Bool_buf_r;
  \Word16#_t  mergeHP_CT$wmAdd_Bool_buf_d;
  logic mergeHP_CT$wmAdd_Bool_buf_r;
  \Word16#_t  forkHP1_CT$wmAdd_Bool_d;
  logic forkHP1_CT$wmAdd_Bool_r;
  \Word16#_t  forkHP1_CT$wmAdd_Boo2_d;
  logic forkHP1_CT$wmAdd_Boo2_r;
  \Word16#_t  forkHP1_CT$wmAdd_Boo3_d;
  logic forkHP1_CT$wmAdd_Boo3_r;
  C2_t memMergeChoice_CT$wmAdd_Bool_d;
  logic memMergeChoice_CT$wmAdd_Bool_r;
  MemIn_CT$wmAdd_Bool_t memMergeIn_CT$wmAdd_Bool_d;
  logic memMergeIn_CT$wmAdd_Bool_r;
  MemOut_CT$wmAdd_Bool_t memOut_CT$wmAdd_Bool_d;
  logic memOut_CT$wmAdd_Bool_r;
  MemOut_CT$wmAdd_Bool_t memReadOut_CT$wmAdd_Bool_d;
  logic memReadOut_CT$wmAdd_Bool_r;
  MemOut_CT$wmAdd_Bool_t memWriteOut_CT$wmAdd_Bool_d;
  logic memWriteOut_CT$wmAdd_Bool_r;
  MemIn_CT$wmAdd_Bool_t memMergeIn_CT$wmAdd_Bool_dbuf_d;
  logic memMergeIn_CT$wmAdd_Bool_dbuf_r;
  MemIn_CT$wmAdd_Bool_t memMergeIn_CT$wmAdd_Bool_rbuf_d;
  logic memMergeIn_CT$wmAdd_Bool_rbuf_r;
  MemOut_CT$wmAdd_Bool_t memOut_CT$wmAdd_Bool_dbuf_d;
  logic memOut_CT$wmAdd_Bool_dbuf_r;
  MemOut_CT$wmAdd_Bool_t memOut_CT$wmAdd_Bool_rbuf_d;
  logic memOut_CT$wmAdd_Bool_rbuf_r;
  \Word16#_t  destructReadIn_CT$wmAdd_Bool_d;
  logic destructReadIn_CT$wmAdd_Bool_r;
  MemIn_CT$wmAdd_Bool_t dconReadIn_CT$wmAdd_Bool_d;
  logic dconReadIn_CT$wmAdd_Bool_r;
  CT$wmAdd_Bool_t readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_d;
  logic readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_r;
  C5_t writeMerge_choice_CT$wmAdd_Bool_d;
  logic writeMerge_choice_CT$wmAdd_Bool_r;
  CT$wmAdd_Bool_t writeMerge_data_CT$wmAdd_Bool_d;
  logic writeMerge_data_CT$wmAdd_Bool_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_d;
  logic writeCT$wmAdd_BoollizzieLet0_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_d;
  logic writeCT$wmAdd_BoollizzieLet10_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_d;
  logic writeCT$wmAdd_BoollizzieLet24_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_d;
  logic writeCT$wmAdd_BoollizzieLet25_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_d;
  logic writeCT$wmAdd_BoollizzieLet26_1_argbuf_r;
  MemIn_CT$wmAdd_Bool_t dconWriteIn_CT$wmAdd_Bool_d;
  logic dconWriteIn_CT$wmAdd_Bool_r;
  Pointer_CT$wmAdd_Bool_t dconPtr_CT$wmAdd_Bool_d;
  logic dconPtr_CT$wmAdd_Bool_r;
  Pointer_CT$wmAdd_Bool_t _64_d;
  logic _64_r;
  assign _64_r = 1'd1;
  Pointer_CT$wmAdd_Bool_t demuxWriteResult_CT$wmAdd_Bool_d;
  logic demuxWriteResult_CT$wmAdd_Bool_r;
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
  C3_t readMerge_choice_QTree_Bool_d;
  logic readMerge_choice_QTree_Bool_r;
  Pointer_QTree_Bool_t readMerge_data_QTree_Bool_d;
  logic readMerge_data_QTree_Bool_r;
  QTree_Bool_t readPointer_QTree_Boolma8R_1_argbuf_d;
  logic readPointer_QTree_Boolma8R_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolw1skC_1_1_argbuf_d;
  logic readPointer_QTree_Boolw1skC_1_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolw2skD_1_1_argbuf_d;
  logic readPointer_QTree_Boolw2skD_1_1_argbuf_r;
  \Word16#_t  destructReadIn_QTree_Bool_d;
  logic destructReadIn_QTree_Bool_r;
  MemIn_QTree_Bool_t dconReadIn_QTree_Bool_d;
  logic dconReadIn_QTree_Bool_r;
  QTree_Bool_t destructReadOut_QTree_Bool_d;
  logic destructReadOut_QTree_Bool_r;
  C8_t writeMerge_choice_QTree_Bool_d;
  logic writeMerge_choice_QTree_Bool_r;
  QTree_Bool_t writeMerge_data_QTree_Bool_d;
  logic writeMerge_data_QTree_Bool_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_d;
  logic writeQTree_BoollizzieLet11_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_d;
  logic writeQTree_BoollizzieLet12_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_d;
  logic writeQTree_BoollizzieLet27_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_d;
  logic writeQTree_BoollizzieLet6_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_d;
  logic writeQTree_BoollizzieLet7_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_d;
  logic writeQTree_BoollizzieLet9_1_1_argbuf_r;
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_d;
  logic dummy_write_QTree_Bool_sink_r;
  MemIn_QTree_Bool_t dconWriteIn_QTree_Bool_d;
  logic dconWriteIn_QTree_Bool_r;
  Pointer_QTree_Bool_t dconPtr_QTree_Bool_d;
  logic dconPtr_QTree_Bool_r;
  Pointer_QTree_Bool_t _63_d;
  logic _63_r;
  assign _63_r = 1'd1;
  Pointer_QTree_Bool_t demuxWriteResult_QTree_Bool_d;
  logic demuxWriteResult_QTree_Bool_r;
  \Word16#_t  initHP_QTree_Nat_d;
  logic initHP_QTree_Nat_r;
  \Word16#_t  incrHP_QTree_Nat_d;
  logic incrHP_QTree_Nat_r;
  Go_t incrHP_mergeQTree_Nat_d;
  logic incrHP_mergeQTree_Nat_r;
  Go_t incrHP_QTree_Nat1_d;
  logic incrHP_QTree_Nat1_r;
  Go_t incrHP_QTree_Nat2_d;
  logic incrHP_QTree_Nat2_r;
  \Word16#_t  addHP_QTree_Nat_d;
  logic addHP_QTree_Nat_r;
  \Word16#_t  mergeHP_QTree_Nat_d;
  logic mergeHP_QTree_Nat_r;
  Go_t incrHP_mergeQTree_Nat_buf_d;
  logic incrHP_mergeQTree_Nat_buf_r;
  \Word16#_t  mergeHP_QTree_Nat_buf_d;
  logic mergeHP_QTree_Nat_buf_r;
  \Word16#_t  forkHP1_QTree_Nat_d;
  logic forkHP1_QTree_Nat_r;
  \Word16#_t  forkHP1_QTree_Na2_d;
  logic forkHP1_QTree_Na2_r;
  \Word16#_t  forkHP1_QTree_Na3_d;
  logic forkHP1_QTree_Na3_r;
  MemOut_QTree_Nat_t memWriteOut_QTree_Nat_d;
  logic memWriteOut_QTree_Nat_r;
  C5_t writeMerge_choice_QTree_Nat_d;
  logic writeMerge_choice_QTree_Nat_r;
  QTree_Nat_t writeMerge_data_QTree_Nat_d;
  logic writeMerge_data_QTree_Nat_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_d;
  logic writeQTree_NatlizzieLet16_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_d;
  logic writeQTree_NatlizzieLet32_1_argbuf_r;
  MemIn_QTree_Nat_t dconWriteIn_QTree_Nat_d;
  logic dconWriteIn_QTree_Nat_r;
  Pointer_QTree_Nat_t dconPtr_QTree_Nat_d;
  logic dconPtr_QTree_Nat_r;
  Pointer_QTree_Nat_t _62_d;
  logic _62_r;
  assign _62_r = 1'd1;
  Pointer_QTree_Nat_t demuxWriteResult_QTree_Nat_d;
  logic demuxWriteResult_QTree_Nat_r;
  \Word16#_t  \initHP_CTmain_map'_Bool_Nat_d ;
  logic \initHP_CTmain_map'_Bool_Nat_r ;
  \Word16#_t  \incrHP_CTmain_map'_Bool_Nat_d ;
  logic \incrHP_CTmain_map'_Bool_Nat_r ;
  Go_t \incrHP_mergeCTmain_map'_Bool_Nat_d ;
  logic \incrHP_mergeCTmain_map'_Bool_Nat_r ;
  Go_t \incrHP_CTmain_map'_Bool_Nat1_d ;
  logic \incrHP_CTmain_map'_Bool_Nat1_r ;
  Go_t \incrHP_CTmain_map'_Bool_Nat2_d ;
  logic \incrHP_CTmain_map'_Bool_Nat2_r ;
  \Word16#_t  \addHP_CTmain_map'_Bool_Nat_d ;
  logic \addHP_CTmain_map'_Bool_Nat_r ;
  \Word16#_t  \mergeHP_CTmain_map'_Bool_Nat_d ;
  logic \mergeHP_CTmain_map'_Bool_Nat_r ;
  Go_t \incrHP_mergeCTmain_map'_Bool_Nat_buf_d ;
  logic \incrHP_mergeCTmain_map'_Bool_Nat_buf_r ;
  \Word16#_t  \mergeHP_CTmain_map'_Bool_Nat_buf_d ;
  logic \mergeHP_CTmain_map'_Bool_Nat_buf_r ;
  \Word16#_t  \forkHP1_CTmain_map'_Bool_Nat_d ;
  logic \forkHP1_CTmain_map'_Bool_Nat_r ;
  \Word16#_t  \forkHP1_CTmain_map'_Bool_Na2_d ;
  logic \forkHP1_CTmain_map'_Bool_Na2_r ;
  \Word16#_t  \forkHP1_CTmain_map'_Bool_Na3_d ;
  logic \forkHP1_CTmain_map'_Bool_Na3_r ;
  C2_t \memMergeChoice_CTmain_map'_Bool_Nat_d ;
  logic \memMergeChoice_CTmain_map'_Bool_Nat_r ;
  \MemIn_CTmain_map'_Bool_Nat_t  \memMergeIn_CTmain_map'_Bool_Nat_d ;
  logic \memMergeIn_CTmain_map'_Bool_Nat_r ;
  \MemOut_CTmain_map'_Bool_Nat_t  \memOut_CTmain_map'_Bool_Nat_d ;
  logic \memOut_CTmain_map'_Bool_Nat_r ;
  \MemOut_CTmain_map'_Bool_Nat_t  \memReadOut_CTmain_map'_Bool_Nat_d ;
  logic \memReadOut_CTmain_map'_Bool_Nat_r ;
  \MemOut_CTmain_map'_Bool_Nat_t  \memWriteOut_CTmain_map'_Bool_Nat_d ;
  logic \memWriteOut_CTmain_map'_Bool_Nat_r ;
  \MemIn_CTmain_map'_Bool_Nat_t  \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d ;
  logic \memMergeIn_CTmain_map'_Bool_Nat_dbuf_r ;
  \MemIn_CTmain_map'_Bool_Nat_t  \memMergeIn_CTmain_map'_Bool_Nat_rbuf_d ;
  logic \memMergeIn_CTmain_map'_Bool_Nat_rbuf_r ;
  \MemOut_CTmain_map'_Bool_Nat_t  \memOut_CTmain_map'_Bool_Nat_dbuf_d ;
  logic \memOut_CTmain_map'_Bool_Nat_dbuf_r ;
  \MemOut_CTmain_map'_Bool_Nat_t  \memOut_CTmain_map'_Bool_Nat_rbuf_d ;
  logic \memOut_CTmain_map'_Bool_Nat_rbuf_r ;
  \Word16#_t  \destructReadIn_CTmain_map'_Bool_Nat_d ;
  logic \destructReadIn_CTmain_map'_Bool_Nat_r ;
  \MemIn_CTmain_map'_Bool_Nat_t  \dconReadIn_CTmain_map'_Bool_Nat_d ;
  logic \dconReadIn_CTmain_map'_Bool_Nat_r ;
  \CTmain_map'_Bool_Nat_t  \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_d ;
  logic \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_r ;
  C5_t \writeMerge_choice_CTmain_map'_Bool_Nat_d ;
  logic \writeMerge_choice_CTmain_map'_Bool_Nat_r ;
  \CTmain_map'_Bool_Nat_t  \writeMerge_data_CTmain_map'_Bool_Nat_d ;
  logic \writeMerge_data_CTmain_map'_Bool_Nat_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_r ;
  \MemIn_CTmain_map'_Bool_Nat_t  \dconWriteIn_CTmain_map'_Bool_Nat_d ;
  logic \dconWriteIn_CTmain_map'_Bool_Nat_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \dconPtr_CTmain_map'_Bool_Nat_d ;
  logic \dconPtr_CTmain_map'_Bool_Nat_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  _61_d;
  logic _61_r;
  assign _61_r = 1'd1;
  \Pointer_CTmain_map'_Bool_Nat_t  \demuxWriteResult_CTmain_map'_Bool_Nat_d ;
  logic \demuxWriteResult_CTmain_map'_Bool_Nat_r ;
  \Word16#_t  initHP_Nat_d;
  logic initHP_Nat_r;
  \Word16#_t  incrHP_Nat_d;
  logic incrHP_Nat_r;
  Go_t incrHP_mergeNat_d;
  logic incrHP_mergeNat_r;
  Go_t incrHP_Nat1_d;
  logic incrHP_Nat1_r;
  Go_t incrHP_Nat2_d;
  logic incrHP_Nat2_r;
  \Word16#_t  addHP_Nat_d;
  logic addHP_Nat_r;
  \Word16#_t  mergeHP_Nat_d;
  logic mergeHP_Nat_r;
  Go_t incrHP_mergeNat_buf_d;
  logic incrHP_mergeNat_buf_r;
  \Word16#_t  mergeHP_Nat_buf_d;
  logic mergeHP_Nat_buf_r;
  \Word16#_t  forkHP1_Nat_d;
  logic forkHP1_Nat_r;
  \Word16#_t  forkHP1_Na2_d;
  logic forkHP1_Na2_r;
  \Word16#_t  forkHP1_Na3_d;
  logic forkHP1_Na3_r;
  C2_t memMergeChoice_Nat_d;
  logic memMergeChoice_Nat_r;
  MemIn_Nat_t memMergeIn_Nat_d;
  logic memMergeIn_Nat_r;
  MemOut_Nat_t memOut_Nat_d;
  logic memOut_Nat_r;
  MemOut_Nat_t memReadOut_Nat_d;
  logic memReadOut_Nat_r;
  MemOut_Nat_t memWriteOut_Nat_d;
  logic memWriteOut_Nat_r;
  MemIn_Nat_t memMergeIn_Nat_dbuf_d;
  logic memMergeIn_Nat_dbuf_r;
  MemIn_Nat_t memMergeIn_Nat_rbuf_d;
  logic memMergeIn_Nat_rbuf_r;
  MemOut_Nat_t memOut_Nat_dbuf_d;
  logic memOut_Nat_dbuf_r;
  MemOut_Nat_t memOut_Nat_rbuf_d;
  logic memOut_Nat_rbuf_r;
  C2_t readMerge_choice_Nat_d;
  logic readMerge_choice_Nat_r;
  Pointer_Nat_t readMerge_data_Nat_d;
  logic readMerge_data_Nat_r;
  Nat_t readPointer_Natxa96_1_argbuf_d;
  logic readPointer_Natxa96_1_argbuf_r;
  Nat_t readPointer_Natya97_1_argbuf_d;
  logic readPointer_Natya97_1_argbuf_r;
  \Word16#_t  destructReadIn_Nat_d;
  logic destructReadIn_Nat_r;
  MemIn_Nat_t dconReadIn_Nat_d;
  logic dconReadIn_Nat_r;
  Nat_t destructReadOut_Nat_d;
  logic destructReadOut_Nat_r;
  C4_t writeMerge_choice_Nat_d;
  logic writeMerge_choice_Nat_r;
  Nat_t writeMerge_data_Nat_d;
  logic writeMerge_data_Nat_r;
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_d;
  logic writeNatlizzieLet1_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_d;
  logic writeNatlizzieLet2_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet33_1_argbuf_d;
  logic writeNatlizzieLet33_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_d;
  logic writeNatlizzieLet34_1_argbuf_r;
  MemIn_Nat_t dconWriteIn_Nat_d;
  logic dconWriteIn_Nat_r;
  Pointer_Nat_t dconPtr_Nat_d;
  logic dconPtr_Nat_r;
  Pointer_Nat_t _60_d;
  logic _60_r;
  assign _60_r = 1'd1;
  Pointer_Nat_t demuxWriteResult_Nat_d;
  logic demuxWriteResult_Nat_r;
  Go_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_r ;
  MyDTBool_Bool_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_r ;
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_r ;
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_r ;
  Go_t go_2_1_d;
  logic go_2_1_r;
  Go_t go_2_2_d;
  logic go_2_2_r;
  Pointer_QTree_Bool_t w1skC_1_argbuf_d;
  logic w1skC_1_argbuf_r;
  Pointer_QTree_Bool_t w2skD_1_argbuf_d;
  logic w2skD_1_argbuf_r;
  MyDTBool_Bool_Bool_t wskB_1_argbuf_d;
  logic wskB_1_argbuf_r;
  Pointer_QTree_Bool_t es_2_1_argbuf_d;
  logic es_2_1_argbuf_r;
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
  QTree_Bool_t es_0_1_1QVal_Bool_d;
  logic es_0_1_1QVal_Bool_r;
  Go_t applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d;
  logic applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_r;
  MyDTBool_Nat_t applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d;
  logic applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_r;
  MyBool_t applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d;
  logic applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_r;
  MyDTBool_Nat_t arg0_1_d;
  logic arg0_1_r;
  MyDTBool_Nat_t arg0_2_d;
  logic arg0_2_r;
  MyDTBool_Nat_t arg0_3_d;
  logic arg0_3_r;
  Pointer_Nat_t xa8d_1_d;
  logic xa8d_1_r;
  Pointer_Nat_t xa8d_2_d;
  logic xa8d_2_r;
  Go_t applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d;
  logic applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_r;
  MyDTNat_Bool_t applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d;
  logic applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_r;
  Pointer_Nat_t applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d;
  logic applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_r;
  MyDTNat_Bool_t arg0_4_1_d;
  logic arg0_4_1_r;
  MyDTNat_Bool_t arg0_4_2_d;
  logic arg0_4_2_r;
  MyDTNat_Bool_t arg0_4_3_d;
  logic arg0_4_3_r;
  MyBool_t es_0_2_1_d;
  logic es_0_2_1_r;
  MyBool_t es_0_2_2_d;
  logic es_0_2_2_r;
  MyBool_t es_0_2_3_d;
  logic es_0_2_3_r;
  MyBool_t arg0_1Dcon_to_nat_d;
  logic arg0_1Dcon_to_nat_r;
  MyBool_t arg0_1Dcon_to_nat_1_d;
  logic arg0_1Dcon_to_nat_1_r;
  MyBool_t arg0_1Dcon_to_nat_2_d;
  logic arg0_1Dcon_to_nat_2_r;
  Go_t arg0_1Dcon_to_nat_1MyFalse_d;
  logic arg0_1Dcon_to_nat_1MyFalse_r;
  Go_t arg0_1Dcon_to_nat_1MyTrue_d;
  logic arg0_1Dcon_to_nat_1MyTrue_r;
  Nat_t arg0_1Dcon_to_nat_1MyFalse_1Zero_d;
  logic arg0_1Dcon_to_nat_1MyFalse_1Zero_r;
  Nat_t lizzieLet1_1_argbuf_d;
  logic lizzieLet1_1_argbuf_r;
  Go_t arg0_1Dcon_to_nat_1MyTrue_1_argbuf_d;
  logic arg0_1Dcon_to_nat_1MyTrue_1_argbuf_r;
  TupGo_t to_nat1TupGo_1_d;
  logic to_nat1TupGo_1_r;
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d;
  logic writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_r;
  Go_t arg0_2Dcon_to_nat_d;
  logic arg0_2Dcon_to_nat_r;
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
  MyBool_t _59_d;
  logic _59_r;
  assign _59_r = 1'd1;
  MyBool_t applyfnBool_Bool_Bool_5_resbuf_d;
  logic applyfnBool_Bool_Bool_5_resbuf_r;
  Go_t _58_d;
  logic _58_r;
  assign _58_r = 1'd1;
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
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_d;
  logic writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_r;
  Pointer_Nat_t arg0_4_1Dcon_is_z_nut_d;
  logic arg0_4_1Dcon_is_z_nut_r;
  Pointer_Nat_t arg0_4_1Dcon_is_z_nut_1_argbuf_d;
  logic arg0_4_1Dcon_is_z_nut_1_argbuf_r;
  Go_t arg0_4_2Dcon_is_z_nut_d;
  logic arg0_4_2Dcon_is_z_nut_r;
  Go_t arg0_4_2Dcon_is_z_nut_1_d;
  logic arg0_4_2Dcon_is_z_nut_1_r;
  Go_t arg0_4_2Dcon_is_z_nut_2_d;
  logic arg0_4_2Dcon_is_z_nut_2_r;
  Nat_t arg0_4_2Dcon_is_z_nut_1Zero_d;
  logic arg0_4_2Dcon_is_z_nut_1Zero_r;
  Nat_t lizzieLet2_1_argbuf_d;
  logic lizzieLet2_1_argbuf_r;
  Go_t arg0_4_2Dcon_is_z_nut_2_argbuf_d;
  logic arg0_4_2Dcon_is_z_nut_2_argbuf_r;
  TupGo___Pointer_Nat___Pointer_Nat_t eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d;
  logic eqNatTupGo___Pointer_Nat___Pointer_Nat_1_r;
  MyBool_t eqNat_1_mux_d;
  logic eqNat_1_mux_r;
  Go_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_r;
  MyDTBool_Bool_Bool_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_r;
  Pointer_QTree_Bool_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_r;
  Pointer_QTree_Bool_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_r;
  Pointer_CT$wmAdd_Bool_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_r;
  Go_t call_$wmAdd_Bool_initBufi_d;
  logic call_$wmAdd_Bool_initBufi_r;
  C5_t go_6_goMux_choice_d;
  logic go_6_goMux_choice_r;
  Go_t go_6_goMux_data_d;
  logic go_6_goMux_data_r;
  Go_t call_$wmAdd_Bool_unlockFork1_d;
  logic call_$wmAdd_Bool_unlockFork1_r;
  Go_t call_$wmAdd_Bool_unlockFork2_d;
  logic call_$wmAdd_Bool_unlockFork2_r;
  Go_t call_$wmAdd_Bool_unlockFork3_d;
  logic call_$wmAdd_Bool_unlockFork3_r;
  Go_t call_$wmAdd_Bool_unlockFork4_d;
  logic call_$wmAdd_Bool_unlockFork4_r;
  Go_t call_$wmAdd_Bool_unlockFork5_d;
  logic call_$wmAdd_Bool_unlockFork5_r;
  Go_t call_$wmAdd_Bool_initBuf_d;
  logic call_$wmAdd_Bool_initBuf_r;
  Go_t call_$wmAdd_Bool_goMux1_d;
  logic call_$wmAdd_Bool_goMux1_r;
  MyDTBool_Bool_Bool_t call_$wmAdd_Bool_goMux2_d;
  logic call_$wmAdd_Bool_goMux2_r;
  Pointer_QTree_Bool_t call_$wmAdd_Bool_goMux3_d;
  logic call_$wmAdd_Bool_goMux3_r;
  Pointer_QTree_Bool_t call_$wmAdd_Bool_goMux4_d;
  logic call_$wmAdd_Bool_goMux4_r;
  Pointer_CT$wmAdd_Bool_t call_$wmAdd_Bool_goMux5_d;
  logic call_$wmAdd_Bool_goMux5_r;
  Go_t \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_r ;
  MyDTNat_Bool_t \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_r ;
  MyDTBool_Nat_t \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_r ;
  Pointer_QTree_Bool_t \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_r ;
  Go_t \call_main_map'_Bool_Nat_initBufi_d ;
  logic \call_main_map'_Bool_Nat_initBufi_r ;
  C5_t go_7_goMux_choice_d;
  logic go_7_goMux_choice_r;
  Go_t go_7_goMux_data_d;
  logic go_7_goMux_data_r;
  Go_t \call_main_map'_Bool_Nat_unlockFork1_d ;
  logic \call_main_map'_Bool_Nat_unlockFork1_r ;
  Go_t \call_main_map'_Bool_Nat_unlockFork2_d ;
  logic \call_main_map'_Bool_Nat_unlockFork2_r ;
  Go_t \call_main_map'_Bool_Nat_unlockFork3_d ;
  logic \call_main_map'_Bool_Nat_unlockFork3_r ;
  Go_t \call_main_map'_Bool_Nat_unlockFork4_d ;
  logic \call_main_map'_Bool_Nat_unlockFork4_r ;
  Go_t \call_main_map'_Bool_Nat_unlockFork5_d ;
  logic \call_main_map'_Bool_Nat_unlockFork5_r ;
  Go_t \call_main_map'_Bool_Nat_initBuf_d ;
  logic \call_main_map'_Bool_Nat_initBuf_r ;
  Go_t \call_main_map'_Bool_Nat_goMux1_d ;
  logic \call_main_map'_Bool_Nat_goMux1_r ;
  MyDTNat_Bool_t \call_main_map'_Bool_Nat_goMux2_d ;
  logic \call_main_map'_Bool_Nat_goMux2_r ;
  MyDTBool_Nat_t \call_main_map'_Bool_Nat_goMux3_d ;
  logic \call_main_map'_Bool_Nat_goMux3_r ;
  Pointer_QTree_Bool_t \call_main_map'_Bool_Nat_goMux4_d ;
  logic \call_main_map'_Bool_Nat_goMux4_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  \call_main_map'_Bool_Nat_goMux5_d ;
  logic \call_main_map'_Bool_Nat_goMux5_r ;
  Go_t eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d;
  logic eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_r;
  Pointer_Nat_t eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d;
  logic eqNatTupGo___Pointer_Nat___Pointer_Natxa96_r;
  Pointer_Nat_t eqNatTupGo___Pointer_Nat___Pointer_Natya97_d;
  logic eqNatTupGo___Pointer_Nat___Pointer_Natya97_r;
  MyBool_t applyfnNat_Bool_5_resbuf_d;
  logic applyfnNat_Bool_5_resbuf_r;
  Go_t eqNat_initBufi_d;
  logic eqNat_initBufi_r;
  C2_t go_8_goMux_choice_d;
  logic go_8_goMux_choice_r;
  Go_t go_8_goMux_data_d;
  logic go_8_goMux_data_r;
  Go_t eqNat_unlockFork1_d;
  logic eqNat_unlockFork1_r;
  Go_t eqNat_unlockFork2_d;
  logic eqNat_unlockFork2_r;
  Go_t eqNat_unlockFork3_d;
  logic eqNat_unlockFork3_r;
  Go_t eqNat_initBuf_d;
  logic eqNat_initBuf_r;
  Go_t eqNat_goMux1_d;
  logic eqNat_goMux1_r;
  Pointer_Nat_t eqNat_goMux2_d;
  logic eqNat_goMux2_r;
  Pointer_Nat_t eqNat_goMux3_d;
  logic eqNat_goMux3_r;
  QTree_Bool_t lizzieLet5_1_argbuf_d;
  logic lizzieLet5_1_argbuf_r;
  Go_t es_0_2_1MyFalse_d;
  logic es_0_2_1MyFalse_r;
  Go_t es_0_2_1MyTrue_d;
  logic es_0_2_1MyTrue_r;
  Go_t es_0_2_1MyFalse_1_argbuf_d;
  logic es_0_2_1MyFalse_1_argbuf_r;
  Go_t es_0_2_1MyTrue_1_d;
  logic es_0_2_1MyTrue_1_r;
  Go_t es_0_2_1MyTrue_2_d;
  logic es_0_2_1MyTrue_2_r;
  QTree_Nat_t es_0_2_1MyTrue_1QNone_Nat_d;
  logic es_0_2_1MyTrue_1QNone_Nat_r;
  QTree_Nat_t lizzieLet16_1_argbuf_d;
  logic lizzieLet16_1_argbuf_r;
  Go_t es_0_2_1MyTrue_2_argbuf_d;
  logic es_0_2_1MyTrue_2_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyFalse_d;
  logic es_0_2_2MyFalse_r;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyTrue_d;
  logic es_0_2_2MyTrue_r;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyFalse_1_argbuf_d;
  logic es_0_2_2MyFalse_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyTrue_1_argbuf_d;
  logic es_0_2_2MyTrue_1_argbuf_r;
  Pointer_Nat_t es_0_2_3MyFalse_d;
  logic es_0_2_3MyFalse_r;
  Pointer_Nat_t _57_d;
  logic _57_r;
  assign _57_r = 1'd1;
  QTree_Nat_t es_0_2_3MyFalse_1QVal_Nat_d;
  logic es_0_2_3MyFalse_1QVal_Nat_r;
  QTree_Nat_t lizzieLet15_1_argbuf_d;
  logic lizzieLet15_1_argbuf_r;
  MyDTBool_Nat_t ga8Q_2_2_argbuf_d;
  logic ga8Q_2_2_argbuf_r;
  MyDTBool_Nat_t ga8Q_2_1_d;
  logic ga8Q_2_1_r;
  MyDTBool_Nat_t ga8Q_2_2_d;
  logic ga8Q_2_2_r;
  MyDTBool_Nat_t ga8Q_3_2_argbuf_d;
  logic ga8Q_3_2_argbuf_r;
  MyDTBool_Nat_t ga8Q_3_1_d;
  logic ga8Q_3_1_r;
  MyDTBool_Nat_t ga8Q_3_2_d;
  logic ga8Q_3_2_r;
  MyDTBool_Nat_t ga8Q_4_1_argbuf_d;
  logic ga8Q_4_1_argbuf_r;
  MyDTBool_Nat_t go_1Dcon_to_nat_d;
  logic go_1Dcon_to_nat_r;
  C10_t go_10_goMux_choice_1_d;
  logic go_10_goMux_choice_1_r;
  C10_t go_10_goMux_choice_2_d;
  logic go_10_goMux_choice_2_r;
  Pointer_QTree_Bool_t srtarg_0_goMux_mux_d;
  logic srtarg_0_goMux_mux_r;
  Pointer_CT$wmAdd_Bool_t scfarg_0_goMux_mux_d;
  logic scfarg_0_goMux_mux_r;
  C5_t go_11_goMux_choice_1_d;
  logic go_11_goMux_choice_1_r;
  C5_t go_11_goMux_choice_2_d;
  logic go_11_goMux_choice_2_r;
  Pointer_QTree_Nat_t srtarg_0_1_goMux_mux_d;
  logic srtarg_0_1_goMux_mux_r;
  \Pointer_CTmain_map'_Bool_Nat_t  scfarg_0_1_goMux_mux_d;
  logic scfarg_0_1_goMux_mux_r;
  Nat_t lizzieLet33_1_argbuf_d;
  logic lizzieLet33_1_argbuf_r;
  MyDTBool_Nat_t es_1_1_argbuf_d;
  logic es_1_1_argbuf_r;
  MyDTNat_Bool_t go_2Dcon_is_z_nut_d;
  logic go_2Dcon_is_z_nut_r;
  MyDTNat_Bool_t es_0_1_argbuf_d;
  logic es_0_1_argbuf_r;
  CT$wmAdd_Bool_t go_2_1L$wmAdd_Boolsbos_d;
  logic go_2_1L$wmAdd_Boolsbos_r;
  CT$wmAdd_Bool_t lizzieLet0_1_argbuf_d;
  logic lizzieLet0_1_argbuf_r;
  Go_t go_2_2_argbuf_d;
  logic go_2_2_argbuf_r;
  TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_t call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d;
  logic call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_r;
  MyDTBool_Bool_Bool_t \go_3Dcon_||_d ;
  logic \go_3Dcon_||_r ;
  MyDTBool_Bool_Bool_t es_3_1_argbuf_d;
  logic es_3_1_argbuf_r;
  Go_t go_4_argbuf_d;
  logic go_4_argbuf_r;
  TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r ;
  Go_t go_5_argbuf_d;
  logic go_5_argbuf_r;
  TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_r ;
  C5_t go_6_goMux_choice_1_d;
  logic go_6_goMux_choice_1_r;
  C5_t go_6_goMux_choice_2_d;
  logic go_6_goMux_choice_2_r;
  C5_t go_6_goMux_choice_3_d;
  logic go_6_goMux_choice_3_r;
  C5_t go_6_goMux_choice_4_d;
  logic go_6_goMux_choice_4_r;
  MyDTBool_Bool_Bool_t wskB_1_goMux_mux_d;
  logic wskB_1_goMux_mux_r;
  Pointer_QTree_Bool_t w1skC_1_goMux_mux_d;
  logic w1skC_1_goMux_mux_r;
  Pointer_QTree_Bool_t w2skD_1_goMux_mux_d;
  logic w2skD_1_goMux_mux_r;
  Pointer_CT$wmAdd_Bool_t sc_0_goMux_mux_d;
  logic sc_0_goMux_mux_r;
  C5_t go_7_goMux_choice_1_d;
  logic go_7_goMux_choice_1_r;
  C5_t go_7_goMux_choice_2_d;
  logic go_7_goMux_choice_2_r;
  C5_t go_7_goMux_choice_3_d;
  logic go_7_goMux_choice_3_r;
  C5_t go_7_goMux_choice_4_d;
  logic go_7_goMux_choice_4_r;
  MyDTNat_Bool_t isZa8P_goMux_mux_d;
  logic isZa8P_goMux_mux_r;
  MyDTBool_Nat_t ga8Q_goMux_mux_d;
  logic ga8Q_goMux_mux_r;
  Pointer_QTree_Bool_t ma8R_goMux_mux_d;
  logic ma8R_goMux_mux_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_1_goMux_mux_d;
  logic sc_0_1_goMux_mux_r;
  C2_t go_8_goMux_choice_1_d;
  logic go_8_goMux_choice_1_r;
  C2_t go_8_goMux_choice_2_d;
  logic go_8_goMux_choice_2_r;
  Pointer_Nat_t xa96_goMux_mux_d;
  logic xa96_goMux_mux_r;
  Pointer_Nat_t ya97_goMux_mux_d;
  logic ya97_goMux_mux_r;
  \CTmain_map'_Bool_Nat_t  \go_9_1Lmain_map'_Bool_Natsbos_d ;
  logic \go_9_1Lmain_map'_Bool_Natsbos_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet22_1_argbuf_d;
  logic lizzieLet22_1_argbuf_r;
  Go_t go_9_2_argbuf_d;
  logic go_9_2_argbuf_r;
  \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_t  \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d ;
  logic \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_r ;
  MyDTNat_Bool_t isZa8P_2_2_argbuf_d;
  logic isZa8P_2_2_argbuf_r;
  MyDTNat_Bool_t isZa8P_2_1_d;
  logic isZa8P_2_1_r;
  MyDTNat_Bool_t isZa8P_2_2_d;
  logic isZa8P_2_2_r;
  MyDTNat_Bool_t isZa8P_3_2_argbuf_d;
  logic isZa8P_3_2_argbuf_r;
  MyDTNat_Bool_t isZa8P_3_1_d;
  logic isZa8P_3_1_r;
  MyDTNat_Bool_t isZa8P_3_2_d;
  logic isZa8P_3_2_r;
  MyDTNat_Bool_t isZa8P_4_1_argbuf_d;
  logic isZa8P_4_1_argbuf_r;
  Nat_t lizzieLet34_1_argbuf_d;
  logic lizzieLet34_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8T_destruct_d;
  logic q1a8T_destruct_r;
  Pointer_QTree_Bool_t q2a8U_destruct_d;
  logic q2a8U_destruct_r;
  Pointer_QTree_Bool_t q3a8V_destruct_d;
  logic q3a8V_destruct_r;
  Pointer_QTree_Bool_t q4a8W_destruct_d;
  logic q4a8W_destruct_r;
  MyBool_t va8S_destruct_d;
  logic va8S_destruct_r;
  QTree_Bool_t _56_d;
  logic _56_r;
  assign _56_r = 1'd1;
  QTree_Bool_t lizzieLet13_1QVal_Bool_d;
  logic lizzieLet13_1QVal_Bool_r;
  QTree_Bool_t lizzieLet13_1QNode_Bool_d;
  logic lizzieLet13_1QNode_Bool_r;
  QTree_Bool_t _55_d;
  logic _55_r;
  assign _55_r = 1'd1;
  MyDTBool_Nat_t _54_d;
  logic _54_r;
  assign _54_r = 1'd1;
  MyDTBool_Nat_t lizzieLet13_3QVal_Bool_d;
  logic lizzieLet13_3QVal_Bool_r;
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_d;
  logic lizzieLet13_3QNode_Bool_r;
  MyDTBool_Nat_t _53_d;
  logic _53_r;
  assign _53_r = 1'd1;
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_1_d;
  logic lizzieLet13_3QNode_Bool_1_r;
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_2_d;
  logic lizzieLet13_3QNode_Bool_2_r;
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_2_argbuf_d;
  logic lizzieLet13_3QNode_Bool_2_argbuf_r;
  MyDTBool_Nat_t lizzieLet13_3QVal_Bool_1_argbuf_d;
  logic lizzieLet13_3QVal_Bool_1_argbuf_r;
  Go_t lizzieLet13_4QNone_Bool_d;
  logic lizzieLet13_4QNone_Bool_r;
  Go_t lizzieLet13_4QVal_Bool_d;
  logic lizzieLet13_4QVal_Bool_r;
  Go_t lizzieLet13_4QNode_Bool_d;
  logic lizzieLet13_4QNode_Bool_r;
  Go_t lizzieLet13_4QError_Bool_d;
  logic lizzieLet13_4QError_Bool_r;
  Go_t lizzieLet13_4QError_Bool_1_d;
  logic lizzieLet13_4QError_Bool_1_r;
  Go_t lizzieLet13_4QError_Bool_2_d;
  logic lizzieLet13_4QError_Bool_2_r;
  QTree_Nat_t lizzieLet13_4QError_Bool_1QError_Nat_d;
  logic lizzieLet13_4QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet18_1_argbuf_d;
  logic lizzieLet18_1_argbuf_r;
  Go_t lizzieLet13_4QError_Bool_2_argbuf_d;
  logic lizzieLet13_4QError_Bool_2_argbuf_r;
  Go_t lizzieLet13_4QNode_Bool_1_argbuf_d;
  logic lizzieLet13_4QNode_Bool_1_argbuf_r;
  Go_t lizzieLet13_4QNone_Bool_1_d;
  logic lizzieLet13_4QNone_Bool_1_r;
  Go_t lizzieLet13_4QNone_Bool_2_d;
  logic lizzieLet13_4QNone_Bool_2_r;
  QTree_Nat_t lizzieLet13_4QNone_Bool_1QNone_Nat_d;
  logic lizzieLet13_4QNone_Bool_1QNone_Nat_r;
  QTree_Nat_t lizzieLet14_1_argbuf_d;
  logic lizzieLet14_1_argbuf_r;
  Go_t lizzieLet13_4QNone_Bool_2_argbuf_d;
  logic lizzieLet13_4QNone_Bool_2_argbuf_r;
  C5_t go_11_goMux_choice_d;
  logic go_11_goMux_choice_r;
  Go_t go_11_goMux_data_d;
  logic go_11_goMux_data_r;
  Go_t lizzieLet13_4QVal_Bool_1_d;
  logic lizzieLet13_4QVal_Bool_1_r;
  Go_t lizzieLet13_4QVal_Bool_2_d;
  logic lizzieLet13_4QVal_Bool_2_r;
  Go_t lizzieLet13_4QVal_Bool_3_d;
  logic lizzieLet13_4QVal_Bool_3_r;
  Go_t lizzieLet13_4QVal_Bool_1_argbuf_d;
  logic lizzieLet13_4QVal_Bool_1_argbuf_r;
  TupGo___MyDTBool_Nat___MyBool_t applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d;
  logic applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_r;
  Go_t lizzieLet13_4QVal_Bool_2_argbuf_d;
  logic lizzieLet13_4QVal_Bool_2_argbuf_r;
  TupGo___MyDTNat_Bool___Pointer_Nat_t applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d;
  logic applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_r;
  MyDTNat_Bool_t _52_d;
  logic _52_r;
  assign _52_r = 1'd1;
  MyDTNat_Bool_t lizzieLet13_5QVal_Bool_d;
  logic lizzieLet13_5QVal_Bool_r;
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_d;
  logic lizzieLet13_5QNode_Bool_r;
  MyDTNat_Bool_t _51_d;
  logic _51_r;
  assign _51_r = 1'd1;
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_1_d;
  logic lizzieLet13_5QNode_Bool_1_r;
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_2_d;
  logic lizzieLet13_5QNode_Bool_2_r;
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_2_argbuf_d;
  logic lizzieLet13_5QNode_Bool_2_argbuf_r;
  MyDTNat_Bool_t lizzieLet13_5QVal_Bool_1_argbuf_d;
  logic lizzieLet13_5QVal_Bool_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QNone_Bool_d;
  logic lizzieLet13_6QNone_Bool_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QVal_Bool_d;
  logic lizzieLet13_6QVal_Bool_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QNode_Bool_d;
  logic lizzieLet13_6QNode_Bool_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QError_Bool_d;
  logic lizzieLet13_6QError_Bool_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QError_Bool_1_argbuf_d;
  logic lizzieLet13_6QError_Bool_1_argbuf_r;
  \CTmain_map'_Bool_Nat_t  \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_d ;
  logic \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet17_1_argbuf_d;
  logic lizzieLet17_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QNone_Bool_1_argbuf_d;
  logic lizzieLet13_6QNone_Bool_1_argbuf_r;
  Pointer_Nat_t x1a99_destruct_d;
  logic x1a99_destruct_r;
  Nat_t _50_d;
  logic _50_r;
  assign _50_r = 1'd1;
  Nat_t lizzieLet19_1Succ_d;
  logic lizzieLet19_1Succ_r;
  Go_t lizzieLet19_3Zero_d;
  logic lizzieLet19_3Zero_r;
  Go_t lizzieLet19_3Succ_d;
  logic lizzieLet19_3Succ_r;
  Nat_t lizzieLet19_4Zero_d;
  logic lizzieLet19_4Zero_r;
  Nat_t lizzieLet19_4Succ_d;
  logic lizzieLet19_4Succ_r;
  Nat_t lizzieLet19_4Succ_1_d;
  logic lizzieLet19_4Succ_1_r;
  Nat_t lizzieLet19_4Succ_2_d;
  logic lizzieLet19_4Succ_2_r;
  Nat_t lizzieLet19_4Succ_3_d;
  logic lizzieLet19_4Succ_3_r;
  Nat_t lizzieLet19_4Succ_4_d;
  logic lizzieLet19_4Succ_4_r;
  Pointer_Nat_t y1a9a_destruct_d;
  logic y1a9a_destruct_r;
  Nat_t _49_d;
  logic _49_r;
  assign _49_r = 1'd1;
  Nat_t lizzieLet19_4Succ_1Succ_d;
  logic lizzieLet19_4Succ_1Succ_r;
  Go_t lizzieLet19_4Succ_3Zero_d;
  logic lizzieLet19_4Succ_3Zero_r;
  Go_t lizzieLet19_4Succ_3Succ_d;
  logic lizzieLet19_4Succ_3Succ_r;
  Go_t lizzieLet19_4Succ_3Succ_1_argbuf_d;
  logic lizzieLet19_4Succ_3Succ_1_argbuf_r;
  MyBool_t lizzieLet19_4Succ_3Zero_1MyFalse_d;
  logic lizzieLet19_4Succ_3Zero_1MyFalse_r;
  Pointer_Nat_t _48_d;
  logic _48_r;
  assign _48_r = 1'd1;
  Pointer_Nat_t lizzieLet19_4Succ_4Succ_d;
  logic lizzieLet19_4Succ_4Succ_r;
  Pointer_Nat_t lizzieLet19_4Succ_4Succ_1_argbuf_d;
  logic lizzieLet19_4Succ_4Succ_1_argbuf_r;
  Go_t lizzieLet19_4Zero_1Zero_d;
  logic lizzieLet19_4Zero_1Zero_r;
  Go_t lizzieLet19_4Zero_1Succ_d;
  logic lizzieLet19_4Zero_1Succ_r;
  MyBool_t lizzieLet19_4Zero_1Succ_1MyFalse_d;
  logic lizzieLet19_4Zero_1Succ_1MyFalse_r;
  MyBool_t lizzieLet19_4Zero_1Zero_1MyTrue_d;
  logic lizzieLet19_4Zero_1Zero_1MyTrue_r;
  MyBool_t lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d;
  logic lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_r;
  MyBool_t lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d;
  logic lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_r;
  MyBool_t lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_d;
  logic lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_r;
  MyBool_t lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d;
  logic lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_r;
  Go_t eqNat_goConst_d;
  logic eqNat_goConst_r;
  Pointer_QTree_Bool_t es_2_1_destruct_d;
  logic es_2_1_destruct_r;
  Pointer_QTree_Bool_t es_3_2_destruct_d;
  logic es_3_2_destruct_r;
  Pointer_QTree_Bool_t es_4_2_destruct_d;
  logic es_4_2_destruct_r;
  Pointer_CT$wmAdd_Bool_t sc_0_5_destruct_d;
  logic sc_0_5_destruct_r;
  Pointer_QTree_Bool_t es_3_1_destruct_d;
  logic es_3_1_destruct_r;
  Pointer_QTree_Bool_t es_4_1_destruct_d;
  logic es_4_1_destruct_r;
  Pointer_CT$wmAdd_Bool_t sc_0_4_destruct_d;
  logic sc_0_4_destruct_r;
  MyDTBool_Bool_Bool_t wskB_4_destruct_d;
  logic wskB_4_destruct_r;
  Pointer_QTree_Bool_t q1a8o_3_destruct_d;
  logic q1a8o_3_destruct_r;
  Pointer_QTree_Bool_t t1a8t_3_destruct_d;
  logic t1a8t_3_destruct_r;
  Pointer_QTree_Bool_t es_4_destruct_d;
  logic es_4_destruct_r;
  Pointer_CT$wmAdd_Bool_t sc_0_3_destruct_d;
  logic sc_0_3_destruct_r;
  MyDTBool_Bool_Bool_t wskB_3_destruct_d;
  logic wskB_3_destruct_r;
  Pointer_QTree_Bool_t q1a8o_2_destruct_d;
  logic q1a8o_2_destruct_r;
  Pointer_QTree_Bool_t t1a8t_2_destruct_d;
  logic t1a8t_2_destruct_r;
  Pointer_QTree_Bool_t q2a8p_2_destruct_d;
  logic q2a8p_2_destruct_r;
  Pointer_QTree_Bool_t t2a8u_2_destruct_d;
  logic t2a8u_2_destruct_r;
  Pointer_CT$wmAdd_Bool_t sc_0_2_destruct_d;
  logic sc_0_2_destruct_r;
  MyDTBool_Bool_Bool_t wskB_2_destruct_d;
  logic wskB_2_destruct_r;
  Pointer_QTree_Bool_t q1a8o_1_destruct_d;
  logic q1a8o_1_destruct_r;
  Pointer_QTree_Bool_t t1a8t_1_destruct_d;
  logic t1a8t_1_destruct_r;
  Pointer_QTree_Bool_t q2a8p_1_destruct_d;
  logic q2a8p_1_destruct_r;
  Pointer_QTree_Bool_t t2a8u_1_destruct_d;
  logic t2a8u_1_destruct_r;
  Pointer_QTree_Bool_t q3a8q_1_destruct_d;
  logic q3a8q_1_destruct_r;
  Pointer_QTree_Bool_t t3a8v_1_destruct_d;
  logic t3a8v_1_destruct_r;
  CT$wmAdd_Bool_t _47_d;
  logic _47_r;
  assign _47_r = 1'd1;
  CT$wmAdd_Bool_t lizzieLet23_1Lcall_$wmAdd_Bool3_d;
  logic lizzieLet23_1Lcall_$wmAdd_Bool3_r;
  CT$wmAdd_Bool_t lizzieLet23_1Lcall_$wmAdd_Bool2_d;
  logic lizzieLet23_1Lcall_$wmAdd_Bool2_r;
  CT$wmAdd_Bool_t lizzieLet23_1Lcall_$wmAdd_Bool1_d;
  logic lizzieLet23_1Lcall_$wmAdd_Bool1_r;
  CT$wmAdd_Bool_t lizzieLet23_1Lcall_$wmAdd_Bool0_d;
  logic lizzieLet23_1Lcall_$wmAdd_Bool0_r;
  Go_t _46_d;
  logic _46_r;
  assign _46_r = 1'd1;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool3_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool3_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool2_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool2_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool1_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool1_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool0_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool0_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_r;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet23_4L$wmAdd_Boolsbos_d;
  logic lizzieLet23_4L$wmAdd_Boolsbos_r;
  Pointer_QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool3_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool3_r;
  Pointer_QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool2_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool2_r;
  Pointer_QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool1_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool1_r;
  Pointer_QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool0_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool0_r;
  Pointer_QTree_Bool_t lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_d;
  logic lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_r;
  Pointer_QTree_Bool_t lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_d;
  logic lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_r;
  Go_t call_$wmAdd_Bool_goConst_d;
  logic call_$wmAdd_Bool_goConst_r;
  Pointer_QTree_Bool_t \$wmAdd_Bool_resbuf_d ;
  logic \$wmAdd_Bool_resbuf_r ;
  QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_r;
  QTree_Bool_t lizzieLet27_1_argbuf_d;
  logic lizzieLet27_1_argbuf_r;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_r;
  CT$wmAdd_Bool_t lizzieLet26_1_argbuf_d;
  logic lizzieLet26_1_argbuf_r;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_r;
  CT$wmAdd_Bool_t lizzieLet25_1_argbuf_d;
  logic lizzieLet25_1_argbuf_r;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_r;
  CT$wmAdd_Bool_t lizzieLet24_1_argbuf_d;
  logic lizzieLet24_1_argbuf_r;
  Pointer_QTree_Nat_t es_2_2_destruct_d;
  logic es_2_2_destruct_r;
  Pointer_QTree_Nat_t es_3_4_destruct_d;
  logic es_3_4_destruct_r;
  Pointer_QTree_Nat_t es_4_5_destruct_d;
  logic es_4_5_destruct_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_9_destruct_d;
  logic sc_0_9_destruct_r;
  Pointer_QTree_Nat_t es_3_3_destruct_d;
  logic es_3_3_destruct_r;
  Pointer_QTree_Nat_t es_4_4_destruct_d;
  logic es_4_4_destruct_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_8_destruct_d;
  logic sc_0_8_destruct_r;
  MyDTNat_Bool_t isZa8P_4_destruct_d;
  logic isZa8P_4_destruct_r;
  MyDTBool_Nat_t ga8Q_4_destruct_d;
  logic ga8Q_4_destruct_r;
  Pointer_QTree_Bool_t q1a8T_3_destruct_d;
  logic q1a8T_3_destruct_r;
  Pointer_QTree_Nat_t es_4_3_destruct_d;
  logic es_4_3_destruct_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_7_destruct_d;
  logic sc_0_7_destruct_r;
  MyDTNat_Bool_t isZa8P_3_destruct_d;
  logic isZa8P_3_destruct_r;
  MyDTBool_Nat_t ga8Q_3_destruct_d;
  logic ga8Q_3_destruct_r;
  Pointer_QTree_Bool_t q1a8T_2_destruct_d;
  logic q1a8T_2_destruct_r;
  Pointer_QTree_Bool_t q2a8U_2_destruct_d;
  logic q2a8U_2_destruct_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_6_destruct_d;
  logic sc_0_6_destruct_r;
  MyDTNat_Bool_t isZa8P_2_destruct_d;
  logic isZa8P_2_destruct_r;
  MyDTBool_Nat_t ga8Q_2_destruct_d;
  logic ga8Q_2_destruct_r;
  Pointer_QTree_Bool_t q1a8T_1_destruct_d;
  logic q1a8T_1_destruct_r;
  Pointer_QTree_Bool_t q2a8U_1_destruct_d;
  logic q2a8U_1_destruct_r;
  Pointer_QTree_Bool_t q3a8V_1_destruct_d;
  logic q3a8V_1_destruct_r;
  \CTmain_map'_Bool_Nat_t  _45_d;
  logic _45_r;
  assign _45_r = 1'd1;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_1Lcall_main_map'_Bool_Nat3_d ;
  logic \lizzieLet28_1Lcall_main_map'_Bool_Nat3_r ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_1Lcall_main_map'_Bool_Nat2_d ;
  logic \lizzieLet28_1Lcall_main_map'_Bool_Nat2_r ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_1Lcall_main_map'_Bool_Nat1_d ;
  logic \lizzieLet28_1Lcall_main_map'_Bool_Nat1_r ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_1Lcall_main_map'_Bool_Nat0_d ;
  logic \lizzieLet28_1Lcall_main_map'_Bool_Nat0_r ;
  Go_t _44_d;
  logic _44_r;
  assign _44_r = 1'd1;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat3_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat3_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat2_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat2_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat1_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat1_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat0_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat0_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_r ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lmain_map'_Bool_Natsbos_d ;
  logic \lizzieLet28_4Lmain_map'_Bool_Natsbos_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat3_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat3_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat2_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat2_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat1_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat1_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat0_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat0_r ;
  QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_r ;
  QTree_Nat_t lizzieLet32_1_argbuf_d;
  logic lizzieLet32_1_argbuf_r;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet31_1_argbuf_d;
  logic lizzieLet31_1_argbuf_r;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet30_1_argbuf_d;
  logic lizzieLet30_1_argbuf_r;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet29_1_argbuf_d;
  logic lizzieLet29_1_argbuf_r;
  Pointer_QTree_Nat_t \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_d ;
  logic \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_r ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_d ;
  logic \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_r ;
  Go_t \call_main_map'_Bool_Nat_goConst_d ;
  logic \call_main_map'_Bool_Nat_goConst_r ;
  Pointer_QTree_Nat_t \main_map'_Bool_Nat_resbuf_d ;
  logic \main_map'_Bool_Nat_resbuf_r ;
  Pointer_QTree_Bool_t q1a8o_destruct_d;
  logic q1a8o_destruct_r;
  Pointer_QTree_Bool_t q2a8p_destruct_d;
  logic q2a8p_destruct_r;
  Pointer_QTree_Bool_t q3a8q_destruct_d;
  logic q3a8q_destruct_r;
  Pointer_QTree_Bool_t q4a8r_destruct_d;
  logic q4a8r_destruct_r;
  MyBool_t v1a8i_destruct_d;
  logic v1a8i_destruct_r;
  QTree_Bool_t _43_d;
  logic _43_r;
  assign _43_r = 1'd1;
  QTree_Bool_t lizzieLet3_1QVal_Bool_d;
  logic lizzieLet3_1QVal_Bool_r;
  QTree_Bool_t lizzieLet3_1QNode_Bool_d;
  logic lizzieLet3_1QNode_Bool_r;
  QTree_Bool_t _42_d;
  logic _42_r;
  assign _42_r = 1'd1;
  Go_t lizzieLet3_3QNone_Bool_d;
  logic lizzieLet3_3QNone_Bool_r;
  Go_t lizzieLet3_3QVal_Bool_d;
  logic lizzieLet3_3QVal_Bool_r;
  Go_t lizzieLet3_3QNode_Bool_d;
  logic lizzieLet3_3QNode_Bool_r;
  Go_t lizzieLet3_3QError_Bool_d;
  logic lizzieLet3_3QError_Bool_r;
  Go_t lizzieLet3_3QError_Bool_1_d;
  logic lizzieLet3_3QError_Bool_1_r;
  Go_t lizzieLet3_3QError_Bool_2_d;
  logic lizzieLet3_3QError_Bool_2_r;
  QTree_Bool_t lizzieLet3_3QError_Bool_1QError_Bool_d;
  logic lizzieLet3_3QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet12_1_1_argbuf_d;
  logic lizzieLet12_1_1_argbuf_r;
  Go_t lizzieLet3_3QError_Bool_2_argbuf_d;
  logic lizzieLet3_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet3_3QNone_Bool_1_argbuf_d;
  logic lizzieLet3_3QNone_Bool_1_argbuf_r;
  C10_t go_10_goMux_choice_d;
  logic go_10_goMux_choice_r;
  Go_t go_10_goMux_data_d;
  logic go_10_goMux_data_r;
  QTree_Bool_t _41_d;
  logic _41_r;
  assign _41_r = 1'd1;
  QTree_Bool_t lizzieLet3_4QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_r;
  QTree_Bool_t _40_d;
  logic _40_r;
  assign _40_r = 1'd1;
  QTree_Bool_t lizzieLet3_4QNode_Bool_1_d;
  logic lizzieLet3_4QNode_Bool_1_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_2_d;
  logic lizzieLet3_4QNode_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_3_d;
  logic lizzieLet3_4QNode_Bool_3_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_4_d;
  logic lizzieLet3_4QNode_Bool_4_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_5_d;
  logic lizzieLet3_4QNode_Bool_5_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_6_d;
  logic lizzieLet3_4QNode_Bool_6_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_7_d;
  logic lizzieLet3_4QNode_Bool_7_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_8_d;
  logic lizzieLet3_4QNode_Bool_8_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_9_d;
  logic lizzieLet3_4QNode_Bool_9_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_10_d;
  logic lizzieLet3_4QNode_Bool_10_r;
  Pointer_QTree_Bool_t _39_d;
  logic _39_r;
  assign _39_r = 1'd1;
  Pointer_QTree_Bool_t _38_d;
  logic _38_r;
  assign _38_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_10QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_10QNode_Bool_r;
  Pointer_QTree_Bool_t _37_d;
  logic _37_r;
  assign _37_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t t1a8t_destruct_d;
  logic t1a8t_destruct_r;
  Pointer_QTree_Bool_t t2a8u_destruct_d;
  logic t2a8u_destruct_r;
  Pointer_QTree_Bool_t t3a8v_destruct_d;
  logic t3a8v_destruct_r;
  Pointer_QTree_Bool_t t4a8w_destruct_d;
  logic t4a8w_destruct_r;
  QTree_Bool_t _36_d;
  logic _36_r;
  assign _36_r = 1'd1;
  QTree_Bool_t _35_d;
  logic _35_r;
  assign _35_r = 1'd1;
  QTree_Bool_t lizzieLet3_4QNode_Bool_1QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_1QNode_Bool_r;
  QTree_Bool_t _34_d;
  logic _34_r;
  assign _34_r = 1'd1;
  Go_t lizzieLet3_4QNode_Bool_3QNone_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QNone_Bool_r;
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_r;
  Go_t lizzieLet3_4QNode_Bool_3QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QNode_Bool_r;
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_r;
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_1_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_1_r;
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_2_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet11_1_argbuf_d;
  logic lizzieLet11_1_argbuf_r;
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_r;
  Go_t lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_r;
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_1_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_1_r;
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_2_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet9_1_1_argbuf_d;
  logic lizzieLet9_1_1_argbuf_r;
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNone_Bool_d;
  logic lizzieLet3_4QNode_Bool_4QNone_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QVal_Bool_d;
  logic lizzieLet3_4QNode_Bool_4QVal_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_4QNode_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QError_Bool_d;
  logic lizzieLet3_4QNode_Bool_4QError_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_r;
  CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_d;
  logic lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_r;
  CT$wmAdd_Bool_t lizzieLet10_1_argbuf_d;
  logic lizzieLet10_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_5QNone_Bool_d;
  logic lizzieLet3_4QNode_Bool_5QNone_Bool_r;
  Pointer_QTree_Bool_t _33_d;
  logic _33_r;
  assign _33_r = 1'd1;
  Pointer_QTree_Bool_t _32_d;
  logic _32_r;
  assign _32_r = 1'd1;
  Pointer_QTree_Bool_t _31_d;
  logic _31_r;
  assign _31_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_r;
  MyDTBool_Bool_Bool_t _30_d;
  logic _30_r;
  assign _30_r = 1'd1;
  MyDTBool_Bool_Bool_t _29_d;
  logic _29_r;
  assign _29_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_6QNode_Bool_r;
  MyDTBool_Bool_Bool_t _28_d;
  logic _28_r;
  assign _28_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_1_d;
  logic lizzieLet3_4QNode_Bool_6QNode_Bool_1_r;
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_2_d;
  logic lizzieLet3_4QNode_Bool_6QNode_Bool_2_r;
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_d;
  logic lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_r;
  Pointer_QTree_Bool_t _27_d;
  logic _27_r;
  assign _27_r = 1'd1;
  Pointer_QTree_Bool_t _26_d;
  logic _26_r;
  assign _26_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_7QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_7QNode_Bool_r;
  Pointer_QTree_Bool_t _25_d;
  logic _25_r;
  assign _25_r = 1'd1;
  Pointer_QTree_Bool_t _24_d;
  logic _24_r;
  assign _24_r = 1'd1;
  Pointer_QTree_Bool_t _23_d;
  logic _23_r;
  assign _23_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_8QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_8QNode_Bool_r;
  Pointer_QTree_Bool_t _22_d;
  logic _22_r;
  assign _22_r = 1'd1;
  Pointer_QTree_Bool_t _21_d;
  logic _21_r;
  assign _21_r = 1'd1;
  Pointer_QTree_Bool_t _20_d;
  logic _20_r;
  assign _20_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_9QNode_Bool_d;
  logic lizzieLet3_4QNode_Bool_9QNode_Bool_r;
  Pointer_QTree_Bool_t _19_d;
  logic _19_r;
  assign _19_r = 1'd1;
  QTree_Bool_t lizzieLet3_4QVal_Bool_1_d;
  logic lizzieLet3_4QVal_Bool_1_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_2_d;
  logic lizzieLet3_4QVal_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_3_d;
  logic lizzieLet3_4QVal_Bool_3_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_4_d;
  logic lizzieLet3_4QVal_Bool_4_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_5_d;
  logic lizzieLet3_4QVal_Bool_5_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_6_d;
  logic lizzieLet3_4QVal_Bool_6_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_7_d;
  logic lizzieLet3_4QVal_Bool_7_r;
  MyBool_t va8j_destruct_d;
  logic va8j_destruct_r;
  QTree_Bool_t _18_d;
  logic _18_r;
  assign _18_r = 1'd1;
  QTree_Bool_t lizzieLet3_4QVal_Bool_1QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_1QVal_Bool_r;
  QTree_Bool_t _17_d;
  logic _17_r;
  assign _17_r = 1'd1;
  QTree_Bool_t _16_d;
  logic _16_r;
  assign _16_r = 1'd1;
  Go_t lizzieLet3_4QVal_Bool_3QNone_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QNone_Bool_r;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_r;
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_r;
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_r;
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_1_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_1_r;
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_2_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet7_1_1_argbuf_d;
  logic lizzieLet7_1_1_argbuf_r;
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_1_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_1_r;
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_2_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_2_r;
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_r;
  QTree_Bool_t lizzieLet6_1_1_argbuf_d;
  logic lizzieLet6_1_1_argbuf_r;
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_r;
  Go_t lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_r;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_1_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_1_r;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_2_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_2_r;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_r;
  TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_t applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d;
  logic applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNone_Bool_d;
  logic lizzieLet3_4QVal_Bool_4QNone_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_4QVal_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNode_Bool_d;
  logic lizzieLet3_4QVal_Bool_4QNode_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QError_Bool_d;
  logic lizzieLet3_4QVal_Bool_4QError_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet3_4QVal_Bool_5QNone_Bool_d;
  logic lizzieLet3_4QVal_Bool_5QNone_Bool_r;
  Pointer_QTree_Bool_t _15_d;
  logic _15_r;
  assign _15_r = 1'd1;
  Pointer_QTree_Bool_t _14_d;
  logic _14_r;
  assign _14_r = 1'd1;
  Pointer_QTree_Bool_t _13_d;
  logic _13_r;
  assign _13_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_r;
  MyDTBool_Bool_Bool_t _12_d;
  logic _12_r;
  assign _12_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet3_4QVal_Bool_6QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_6QVal_Bool_r;
  MyDTBool_Bool_Bool_t _11_d;
  logic _11_r;
  assign _11_r = 1'd1;
  MyDTBool_Bool_Bool_t _10_d;
  logic _10_r;
  assign _10_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_r;
  MyBool_t _9_d;
  logic _9_r;
  assign _9_r = 1'd1;
  MyBool_t lizzieLet3_4QVal_Bool_7QVal_Bool_d;
  logic lizzieLet3_4QVal_Bool_7QVal_Bool_r;
  MyBool_t _8_d;
  logic _8_r;
  assign _8_r = 1'd1;
  MyBool_t _7_d;
  logic _7_r;
  assign _7_r = 1'd1;
  MyBool_t lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_d;
  logic lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QNone_Bool_d;
  logic lizzieLet3_5QNone_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QVal_Bool_d;
  logic lizzieLet3_5QVal_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QNode_Bool_d;
  logic lizzieLet3_5QNode_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QError_Bool_d;
  logic lizzieLet3_5QError_Bool_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QError_Bool_1_argbuf_d;
  logic lizzieLet3_5QError_Bool_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QNone_Bool_1_argbuf_d;
  logic lizzieLet3_5QNone_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t _6_d;
  logic _6_r;
  assign _6_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_6QVal_Bool_d;
  logic lizzieLet3_6QVal_Bool_r;
  Pointer_QTree_Bool_t lizzieLet3_6QNode_Bool_d;
  logic lizzieLet3_6QNode_Bool_r;
  Pointer_QTree_Bool_t _5_d;
  logic _5_r;
  assign _5_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_7QNone_Bool_d;
  logic lizzieLet3_7QNone_Bool_r;
  Pointer_QTree_Bool_t _4_d;
  logic _4_r;
  assign _4_r = 1'd1;
  Pointer_QTree_Bool_t _3_d;
  logic _3_r;
  assign _3_r = 1'd1;
  Pointer_QTree_Bool_t _2_d;
  logic _2_r;
  assign _2_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet3_7QNone_Bool_1_argbuf_d;
  logic lizzieLet3_7QNone_Bool_1_argbuf_r;
  MyDTBool_Bool_Bool_t _1_d;
  logic _1_r;
  assign _1_r = 1'd1;
  MyDTBool_Bool_Bool_t lizzieLet3_8QVal_Bool_d;
  logic lizzieLet3_8QVal_Bool_r;
  MyDTBool_Bool_Bool_t lizzieLet3_8QNode_Bool_d;
  logic lizzieLet3_8QNode_Bool_r;
  MyDTBool_Bool_Bool_t _0_d;
  logic _0_r;
  assign _0_r = 1'd1;
  Pointer_QTree_Bool_t ma8R_1_argbuf_d;
  logic ma8R_1_argbuf_r;
  Go_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_r ;
  MyDTNat_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_r ;
  MyDTBool_Nat_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_r ;
  Pointer_QTree_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_r ;
  MyDTBool_Nat_t ga8Q_1_1_argbuf_d;
  logic ga8Q_1_1_argbuf_r;
  Go_t go_9_1_d;
  logic go_9_1_r;
  Go_t go_9_2_d;
  logic go_9_2_r;
  MyDTNat_Bool_t isZa8P_1_1_argbuf_d;
  logic isZa8P_1_1_argbuf_r;
  Pointer_QTree_Bool_t ma8R_1_1_argbuf_d;
  logic ma8R_1_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8T_3_1_argbuf_d;
  logic q1a8T_3_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8o_3_1_argbuf_d;
  logic q1a8o_3_1_argbuf_r;
  Pointer_QTree_Bool_t q2a8U_2_1_argbuf_d;
  logic q2a8U_2_1_argbuf_r;
  Pointer_QTree_Bool_t q2a8p_2_1_argbuf_d;
  logic q2a8p_2_1_argbuf_r;
  Pointer_QTree_Bool_t q3a8V_1_1_argbuf_d;
  logic q3a8V_1_1_argbuf_r;
  Pointer_QTree_Bool_t q3a8q_1_1_argbuf_d;
  logic q3a8q_1_1_argbuf_r;
  Pointer_QTree_Bool_t q4a8W_1_argbuf_d;
  logic q4a8W_1_argbuf_r;
  CT$wmAdd_Bool_t readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d;
  logic readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_r;
  CT$wmAdd_Bool_t lizzieLet23_1_d;
  logic lizzieLet23_1_r;
  CT$wmAdd_Bool_t lizzieLet23_2_d;
  logic lizzieLet23_2_r;
  CT$wmAdd_Bool_t lizzieLet23_3_d;
  logic lizzieLet23_3_r;
  CT$wmAdd_Bool_t lizzieLet23_4_d;
  logic lizzieLet23_4_r;
  \CTmain_map'_Bool_Nat_t  \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d ;
  logic \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_r ;
  \CTmain_map'_Bool_Nat_t  lizzieLet28_1_d;
  logic lizzieLet28_1_r;
  \CTmain_map'_Bool_Nat_t  lizzieLet28_2_d;
  logic lizzieLet28_2_r;
  \CTmain_map'_Bool_Nat_t  lizzieLet28_3_d;
  logic lizzieLet28_3_r;
  \CTmain_map'_Bool_Nat_t  lizzieLet28_4_d;
  logic lizzieLet28_4_r;
  Nat_t readPointer_Natxa96_1_argbuf_rwb_d;
  logic readPointer_Natxa96_1_argbuf_rwb_r;
  Nat_t lizzieLet19_1_d;
  logic lizzieLet19_1_r;
  Nat_t lizzieLet19_2_d;
  logic lizzieLet19_2_r;
  Nat_t lizzieLet19_3_d;
  logic lizzieLet19_3_r;
  Nat_t lizzieLet19_4_d;
  logic lizzieLet19_4_r;
  Nat_t readPointer_Natya97_1_argbuf_rwb_d;
  logic readPointer_Natya97_1_argbuf_rwb_r;
  QTree_Bool_t readPointer_QTree_Boolma8R_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolma8R_1_argbuf_rwb_r;
  QTree_Bool_t lizzieLet13_1_d;
  logic lizzieLet13_1_r;
  QTree_Bool_t lizzieLet13_2_d;
  logic lizzieLet13_2_r;
  QTree_Bool_t lizzieLet13_3_d;
  logic lizzieLet13_3_r;
  QTree_Bool_t lizzieLet13_4_d;
  logic lizzieLet13_4_r;
  QTree_Bool_t lizzieLet13_5_d;
  logic lizzieLet13_5_r;
  QTree_Bool_t lizzieLet13_6_d;
  logic lizzieLet13_6_r;
  QTree_Bool_t readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_r;
  QTree_Bool_t lizzieLet3_1_d;
  logic lizzieLet3_1_r;
  QTree_Bool_t lizzieLet3_2_d;
  logic lizzieLet3_2_r;
  QTree_Bool_t lizzieLet3_3_d;
  logic lizzieLet3_3_r;
  QTree_Bool_t lizzieLet3_4_d;
  logic lizzieLet3_4_r;
  QTree_Bool_t lizzieLet3_5_d;
  logic lizzieLet3_5_r;
  QTree_Bool_t lizzieLet3_6_d;
  logic lizzieLet3_6_r;
  QTree_Bool_t lizzieLet3_7_d;
  logic lizzieLet3_7_r;
  QTree_Bool_t lizzieLet3_8_d;
  logic lizzieLet3_8_r;
  QTree_Bool_t readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t sc_0_5_1_argbuf_d;
  logic sc_0_5_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_9_1_argbuf_d;
  logic sc_0_9_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  scfarg_0_1_1_argbuf_d;
  logic scfarg_0_1_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t scfarg_0_1_argbuf_d;
  logic scfarg_0_1_argbuf_r;
  Pointer_QTree_Bool_t t1a8t_3_1_argbuf_d;
  logic t1a8t_3_1_argbuf_r;
  Pointer_QTree_Bool_t t2a8u_2_1_argbuf_d;
  logic t2a8u_2_1_argbuf_r;
  Pointer_QTree_Bool_t t3a8v_1_1_argbuf_d;
  logic t3a8v_1_1_argbuf_r;
  Pointer_QTree_Bool_t t4a8w_1_argbuf_d;
  logic t4a8w_1_argbuf_r;
  Go_t to_nat1TupGogo_12_d;
  logic to_nat1TupGogo_12_r;
  Nat_t go_12_1Zero_d;
  logic go_12_1Zero_r;
  MyBool_t va8S_1_argbuf_d;
  logic va8S_1_argbuf_r;
  MyBool_t va8j_1_argbuf_d;
  logic va8j_1_argbuf_r;
  Pointer_QTree_Bool_t w1skC_1_1_argbuf_d;
  logic w1skC_1_1_argbuf_r;
  Pointer_QTree_Bool_t w1skC_1_1_d;
  logic w1skC_1_1_r;
  Pointer_QTree_Bool_t w1skC_1_2_d;
  logic w1skC_1_2_r;
  Pointer_QTree_Bool_t w2skD_1_1_argbuf_d;
  logic w2skD_1_1_argbuf_r;
  Pointer_QTree_Bool_t w2skD_1_1_d;
  logic w2skD_1_1_r;
  Pointer_QTree_Bool_t w2skD_1_2_d;
  logic w2skD_1_2_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_d;
  logic writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t lizzieLet12_1_argbuf_d;
  logic lizzieLet12_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_d;
  logic writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t sca3_1_argbuf_d;
  logic sca3_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_d;
  logic writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t sca2_1_argbuf_d;
  logic sca2_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_d;
  logic writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t sca1_1_argbuf_d;
  logic sca1_1_argbuf_r;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_d;
  logic writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_r;
  Pointer_CT$wmAdd_Bool_t sca0_1_argbuf_d;
  logic sca0_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  sca3_1_1_argbuf_d;
  logic sca3_1_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet5_1_1_argbuf_d;
  logic lizzieLet5_1_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  sca2_1_1_argbuf_d;
  logic sca2_1_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  sca1_1_1_argbuf_d;
  logic sca1_1_1_argbuf_r;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_r ;
  \Pointer_CTmain_map'_Bool_Nat_t  sca0_1_1_argbuf_d;
  logic sca0_1_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_rwb_d;
  logic writeNatlizzieLet1_1_argbuf_rwb_r;
  Pointer_Nat_t applyfnBool_Nat_5_resbuf_d;
  logic applyfnBool_Nat_5_resbuf_r;
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_rwb_d;
  logic writeNatlizzieLet2_1_argbuf_rwb_r;
  Pointer_Nat_t es_1_1_1_argbuf_d;
  logic es_1_1_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet33_1_argbuf_rwb_d;
  logic writeNatlizzieLet33_1_argbuf_rwb_r;
  Nat_t lizzieLet0_1_1Succ_d;
  logic lizzieLet0_1_1Succ_r;
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_rwb_d;
  logic writeNatlizzieLet34_1_argbuf_rwb_r;
  Pointer_Nat_t to_nat1_resbuf_d;
  logic to_nat1_resbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet11_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet10_1_1_argbuf_d;
  logic lizzieLet10_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet12_1_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet11_1_1_argbuf_d;
  logic lizzieLet11_1_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet27_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t contRet_0_1_argbuf_d;
  logic contRet_0_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet5_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet5_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet6_1_argbuf_d;
  logic lizzieLet6_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet6_1_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet7_1_argbuf_d;
  logic lizzieLet7_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet7_1_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet8_1_argbuf_d;
  logic lizzieLet8_1_argbuf_r;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_rwb_d;
  logic writeQTree_BoollizzieLet9_1_1_argbuf_rwb_r;
  Pointer_QTree_Bool_t lizzieLet9_1_argbuf_d;
  logic lizzieLet9_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet1_1_1_argbuf_d;
  logic lizzieLet1_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet2_1_1_argbuf_d;
  logic lizzieLet2_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet16_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet3_1_1_argbuf_d;
  logic lizzieLet3_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet4_1_1_argbuf_d;
  logic lizzieLet4_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet32_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t contRet_0_1_1_argbuf_d;
  logic contRet_0_1_1_argbuf_r;
  MyDTBool_Bool_Bool_t wskB_2_2_argbuf_d;
  logic wskB_2_2_argbuf_r;
  MyDTBool_Bool_Bool_t wskB_2_1_d;
  logic wskB_2_1_r;
  MyDTBool_Bool_Bool_t wskB_2_2_d;
  logic wskB_2_2_r;
  MyDTBool_Bool_Bool_t wskB_3_2_argbuf_d;
  logic wskB_3_2_argbuf_r;
  MyDTBool_Bool_Bool_t wskB_3_1_d;
  logic wskB_3_1_r;
  MyDTBool_Bool_Bool_t wskB_3_2_d;
  logic wskB_3_2_r;
  MyDTBool_Bool_Bool_t wskB_4_1_argbuf_d;
  logic wskB_4_1_argbuf_r;
  Pointer_Nat_t xa8d_1_argbuf_d;
  logic xa8d_1_argbuf_r;
  Pointer_Nat_t xa96_1_argbuf_d;
  logic xa96_1_argbuf_r;
  Pointer_Nat_t y1a9a_1_argbuf_d;
  logic y1a9a_1_argbuf_r;
  Pointer_Nat_t ya97_1_argbuf_d;
  logic ya97_1_argbuf_r;
  
  /* fork (Ty Go) : (sourceGo,Go) > [(go_1,Go),
                                (go_2,Go),
                                (go_3,Go),
                                (go_4,Go),
                                (go_5,Go),
                                (go__6,Go),
                                (go__7,Go),
                                (go__8,Go),
                                (go__9,Go),
                                (go__10,Go),
                                (go__11,Go),
                                (go__12,Go),
                                (go__13,Go)] */
  logic [12:0] sourceGo_emitted;
  logic [12:0] sourceGo_done;
  assign go_1_d = (sourceGo_d[0] && (! sourceGo_emitted[0]));
  assign go_2_d = (sourceGo_d[0] && (! sourceGo_emitted[1]));
  assign go_3_d = (sourceGo_d[0] && (! sourceGo_emitted[2]));
  assign go_4_d = (sourceGo_d[0] && (! sourceGo_emitted[3]));
  assign go_5_d = (sourceGo_d[0] && (! sourceGo_emitted[4]));
  assign go__6_d = (sourceGo_d[0] && (! sourceGo_emitted[5]));
  assign go__7_d = (sourceGo_d[0] && (! sourceGo_emitted[6]));
  assign go__8_d = (sourceGo_d[0] && (! sourceGo_emitted[7]));
  assign go__9_d = (sourceGo_d[0] && (! sourceGo_emitted[8]));
  assign go__10_d = (sourceGo_d[0] && (! sourceGo_emitted[9]));
  assign go__11_d = (sourceGo_d[0] && (! sourceGo_emitted[10]));
  assign go__12_d = (sourceGo_d[0] && (! sourceGo_emitted[11]));
  assign go__13_d = (sourceGo_d[0] && (! sourceGo_emitted[12]));
  assign sourceGo_done = (sourceGo_emitted | ({go__13_d[0],
                                               go__12_d[0],
                                               go__11_d[0],
                                               go__10_d[0],
                                               go__9_d[0],
                                               go__8_d[0],
                                               go__7_d[0],
                                               go__6_d[0],
                                               go_5_d[0],
                                               go_4_d[0],
                                               go_3_d[0],
                                               go_2_d[0],
                                               go_1_d[0]} & {go__13_r,
                                                             go__12_r,
                                                             go__11_r,
                                                             go__10_r,
                                                             go__9_r,
                                                             go__8_r,
                                                             go__7_r,
                                                             go__6_r,
                                                             go_5_r,
                                                             go_4_r,
                                                             go_3_r,
                                                             go_2_r,
                                                             go_1_r}));
  assign sourceGo_r = (& sourceGo_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sourceGo_emitted <= 13'd0;
    else
      sourceGo_emitted <= (sourceGo_r ? 13'd0 :
                           sourceGo_done);
  
  /* const (Ty Word16#,
       Lit 0) : (go__6,Go) > (initHP_CT$wmAdd_Bool,Word16#) */
  assign initHP_CT$wmAdd_Bool_d = {16'd0, go__6_d[0]};
  assign go__6_r = initHP_CT$wmAdd_Bool_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CT$wmAdd_Bool1,Go) > (incrHP_CT$wmAdd_Bool,Word16#) */
  assign incrHP_CT$wmAdd_Bool_d = {16'd1,
                                   incrHP_CT$wmAdd_Bool1_d[0]};
  assign incrHP_CT$wmAdd_Bool1_r = incrHP_CT$wmAdd_Bool_r;
  
  /* merge (Ty Go) : [(go__7,Go),
                 (incrHP_CT$wmAdd_Bool2,Go)] > (incrHP_mergeCT$wmAdd_Bool,Go) */
  logic [1:0] incrHP_mergeCT$wmAdd_Bool_selected;
  logic [1:0] incrHP_mergeCT$wmAdd_Bool_select;
  always_comb
    begin
      incrHP_mergeCT$wmAdd_Bool_selected = 2'd0;
      if ((| incrHP_mergeCT$wmAdd_Bool_select))
        incrHP_mergeCT$wmAdd_Bool_selected = incrHP_mergeCT$wmAdd_Bool_select;
      else
        if (go__7_d[0]) incrHP_mergeCT$wmAdd_Bool_selected[0] = 1'd1;
        else if (incrHP_CT$wmAdd_Bool2_d[0])
          incrHP_mergeCT$wmAdd_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wmAdd_Bool_select <= 2'd0;
    else
      incrHP_mergeCT$wmAdd_Bool_select <= (incrHP_mergeCT$wmAdd_Bool_r ? 2'd0 :
                                           incrHP_mergeCT$wmAdd_Bool_selected);
  always_comb
    if (incrHP_mergeCT$wmAdd_Bool_selected[0])
      incrHP_mergeCT$wmAdd_Bool_d = go__7_d;
    else if (incrHP_mergeCT$wmAdd_Bool_selected[1])
      incrHP_mergeCT$wmAdd_Bool_d = incrHP_CT$wmAdd_Bool2_d;
    else incrHP_mergeCT$wmAdd_Bool_d = 1'd0;
  assign {incrHP_CT$wmAdd_Bool2_r,
          go__7_r} = (incrHP_mergeCT$wmAdd_Bool_r ? incrHP_mergeCT$wmAdd_Bool_selected :
                      2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCT$wmAdd_Bool_buf,Go) > [(incrHP_CT$wmAdd_Bool1,Go),
                                                     (incrHP_CT$wmAdd_Bool2,Go)] */
  logic [1:0] incrHP_mergeCT$wmAdd_Bool_buf_emitted;
  logic [1:0] incrHP_mergeCT$wmAdd_Bool_buf_done;
  assign incrHP_CT$wmAdd_Bool1_d = (incrHP_mergeCT$wmAdd_Bool_buf_d[0] && (! incrHP_mergeCT$wmAdd_Bool_buf_emitted[0]));
  assign incrHP_CT$wmAdd_Bool2_d = (incrHP_mergeCT$wmAdd_Bool_buf_d[0] && (! incrHP_mergeCT$wmAdd_Bool_buf_emitted[1]));
  assign incrHP_mergeCT$wmAdd_Bool_buf_done = (incrHP_mergeCT$wmAdd_Bool_buf_emitted | ({incrHP_CT$wmAdd_Bool2_d[0],
                                                                                         incrHP_CT$wmAdd_Bool1_d[0]} & {incrHP_CT$wmAdd_Bool2_r,
                                                                                                                        incrHP_CT$wmAdd_Bool1_r}));
  assign incrHP_mergeCT$wmAdd_Bool_buf_r = (& incrHP_mergeCT$wmAdd_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wmAdd_Bool_buf_emitted <= 2'd0;
    else
      incrHP_mergeCT$wmAdd_Bool_buf_emitted <= (incrHP_mergeCT$wmAdd_Bool_buf_r ? 2'd0 :
                                                incrHP_mergeCT$wmAdd_Bool_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_CT$wmAdd_Bool,Word16#) (forkHP1_CT$wmAdd_Bool,Word16#) > (addHP_CT$wmAdd_Bool,Word16#) */
  assign addHP_CT$wmAdd_Bool_d = {(incrHP_CT$wmAdd_Bool_d[16:1] + forkHP1_CT$wmAdd_Bool_d[16:1]),
                                  (incrHP_CT$wmAdd_Bool_d[0] && forkHP1_CT$wmAdd_Bool_d[0])};
  assign {incrHP_CT$wmAdd_Bool_r,
          forkHP1_CT$wmAdd_Bool_r} = {2 {(addHP_CT$wmAdd_Bool_r && addHP_CT$wmAdd_Bool_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_CT$wmAdd_Bool,Word16#),
                      (addHP_CT$wmAdd_Bool,Word16#)] > (mergeHP_CT$wmAdd_Bool,Word16#) */
  logic [1:0] mergeHP_CT$wmAdd_Bool_selected;
  logic [1:0] mergeHP_CT$wmAdd_Bool_select;
  always_comb
    begin
      mergeHP_CT$wmAdd_Bool_selected = 2'd0;
      if ((| mergeHP_CT$wmAdd_Bool_select))
        mergeHP_CT$wmAdd_Bool_selected = mergeHP_CT$wmAdd_Bool_select;
      else
        if (initHP_CT$wmAdd_Bool_d[0])
          mergeHP_CT$wmAdd_Bool_selected[0] = 1'd1;
        else if (addHP_CT$wmAdd_Bool_d[0])
          mergeHP_CT$wmAdd_Bool_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wmAdd_Bool_select <= 2'd0;
    else
      mergeHP_CT$wmAdd_Bool_select <= (mergeHP_CT$wmAdd_Bool_r ? 2'd0 :
                                       mergeHP_CT$wmAdd_Bool_selected);
  always_comb
    if (mergeHP_CT$wmAdd_Bool_selected[0])
      mergeHP_CT$wmAdd_Bool_d = initHP_CT$wmAdd_Bool_d;
    else if (mergeHP_CT$wmAdd_Bool_selected[1])
      mergeHP_CT$wmAdd_Bool_d = addHP_CT$wmAdd_Bool_d;
    else mergeHP_CT$wmAdd_Bool_d = {16'd0, 1'd0};
  assign {addHP_CT$wmAdd_Bool_r,
          initHP_CT$wmAdd_Bool_r} = (mergeHP_CT$wmAdd_Bool_r ? mergeHP_CT$wmAdd_Bool_selected :
                                     2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCT$wmAdd_Bool,Go) > (incrHP_mergeCT$wmAdd_Bool_buf,Go) */
  Go_t incrHP_mergeCT$wmAdd_Bool_bufchan_d;
  logic incrHP_mergeCT$wmAdd_Bool_bufchan_r;
  assign incrHP_mergeCT$wmAdd_Bool_r = ((! incrHP_mergeCT$wmAdd_Bool_bufchan_d[0]) || incrHP_mergeCT$wmAdd_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wmAdd_Bool_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeCT$wmAdd_Bool_r)
        incrHP_mergeCT$wmAdd_Bool_bufchan_d <= incrHP_mergeCT$wmAdd_Bool_d;
  Go_t incrHP_mergeCT$wmAdd_Bool_bufchan_buf;
  assign incrHP_mergeCT$wmAdd_Bool_bufchan_r = (! incrHP_mergeCT$wmAdd_Bool_bufchan_buf[0]);
  assign incrHP_mergeCT$wmAdd_Bool_buf_d = (incrHP_mergeCT$wmAdd_Bool_bufchan_buf[0] ? incrHP_mergeCT$wmAdd_Bool_bufchan_buf :
                                            incrHP_mergeCT$wmAdd_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wmAdd_Bool_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeCT$wmAdd_Bool_buf_r && incrHP_mergeCT$wmAdd_Bool_bufchan_buf[0]))
        incrHP_mergeCT$wmAdd_Bool_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeCT$wmAdd_Bool_buf_r) && (! incrHP_mergeCT$wmAdd_Bool_bufchan_buf[0])))
        incrHP_mergeCT$wmAdd_Bool_bufchan_buf <= incrHP_mergeCT$wmAdd_Bool_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_CT$wmAdd_Bool,Word16#) > (mergeHP_CT$wmAdd_Bool_buf,Word16#) */
  \Word16#_t  mergeHP_CT$wmAdd_Bool_bufchan_d;
  logic mergeHP_CT$wmAdd_Bool_bufchan_r;
  assign mergeHP_CT$wmAdd_Bool_r = ((! mergeHP_CT$wmAdd_Bool_bufchan_d[0]) || mergeHP_CT$wmAdd_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CT$wmAdd_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_CT$wmAdd_Bool_r)
        mergeHP_CT$wmAdd_Bool_bufchan_d <= mergeHP_CT$wmAdd_Bool_d;
  \Word16#_t  mergeHP_CT$wmAdd_Bool_bufchan_buf;
  assign mergeHP_CT$wmAdd_Bool_bufchan_r = (! mergeHP_CT$wmAdd_Bool_bufchan_buf[0]);
  assign mergeHP_CT$wmAdd_Bool_buf_d = (mergeHP_CT$wmAdd_Bool_bufchan_buf[0] ? mergeHP_CT$wmAdd_Bool_bufchan_buf :
                                        mergeHP_CT$wmAdd_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CT$wmAdd_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_CT$wmAdd_Bool_buf_r && mergeHP_CT$wmAdd_Bool_bufchan_buf[0]))
        mergeHP_CT$wmAdd_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_CT$wmAdd_Bool_buf_r) && (! mergeHP_CT$wmAdd_Bool_bufchan_buf[0])))
        mergeHP_CT$wmAdd_Bool_bufchan_buf <= mergeHP_CT$wmAdd_Bool_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_CT$wmAdd_Bool_buf,Word16#) > [(forkHP1_CT$wmAdd_Bool,Word16#),
                                                           (forkHP1_CT$wmAdd_Boo2,Word16#),
                                                           (forkHP1_CT$wmAdd_Boo3,Word16#)] */
  logic [2:0] mergeHP_CT$wmAdd_Bool_buf_emitted;
  logic [2:0] mergeHP_CT$wmAdd_Bool_buf_done;
  assign forkHP1_CT$wmAdd_Bool_d = {mergeHP_CT$wmAdd_Bool_buf_d[16:1],
                                    (mergeHP_CT$wmAdd_Bool_buf_d[0] && (! mergeHP_CT$wmAdd_Bool_buf_emitted[0]))};
  assign forkHP1_CT$wmAdd_Boo2_d = {mergeHP_CT$wmAdd_Bool_buf_d[16:1],
                                    (mergeHP_CT$wmAdd_Bool_buf_d[0] && (! mergeHP_CT$wmAdd_Bool_buf_emitted[1]))};
  assign forkHP1_CT$wmAdd_Boo3_d = {mergeHP_CT$wmAdd_Bool_buf_d[16:1],
                                    (mergeHP_CT$wmAdd_Bool_buf_d[0] && (! mergeHP_CT$wmAdd_Bool_buf_emitted[2]))};
  assign mergeHP_CT$wmAdd_Bool_buf_done = (mergeHP_CT$wmAdd_Bool_buf_emitted | ({forkHP1_CT$wmAdd_Boo3_d[0],
                                                                                 forkHP1_CT$wmAdd_Boo2_d[0],
                                                                                 forkHP1_CT$wmAdd_Bool_d[0]} & {forkHP1_CT$wmAdd_Boo3_r,
                                                                                                                forkHP1_CT$wmAdd_Boo2_r,
                                                                                                                forkHP1_CT$wmAdd_Bool_r}));
  assign mergeHP_CT$wmAdd_Bool_buf_r = (& mergeHP_CT$wmAdd_Bool_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wmAdd_Bool_buf_emitted <= 3'd0;
    else
      mergeHP_CT$wmAdd_Bool_buf_emitted <= (mergeHP_CT$wmAdd_Bool_buf_r ? 3'd0 :
                                            mergeHP_CT$wmAdd_Bool_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_CT$wmAdd_Bool) : [(dconReadIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool),
                                      (dconWriteIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool)] > (memMergeChoice_CT$wmAdd_Bool,C2) (memMergeIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool) */
  logic [1:0] dconReadIn_CT$wmAdd_Bool_select_d;
  assign dconReadIn_CT$wmAdd_Bool_select_d = ((| dconReadIn_CT$wmAdd_Bool_select_q) ? dconReadIn_CT$wmAdd_Bool_select_q :
                                              (dconReadIn_CT$wmAdd_Bool_d[0] ? 2'd1 :
                                               (dconWriteIn_CT$wmAdd_Bool_d[0] ? 2'd2 :
                                                2'd0)));
  logic [1:0] dconReadIn_CT$wmAdd_Bool_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CT$wmAdd_Bool_select_q <= 2'd0;
    else
      dconReadIn_CT$wmAdd_Bool_select_q <= (dconReadIn_CT$wmAdd_Bool_done ? 2'd0 :
                                            dconReadIn_CT$wmAdd_Bool_select_d);
  logic [1:0] dconReadIn_CT$wmAdd_Bool_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CT$wmAdd_Bool_emit_q <= 2'd0;
    else
      dconReadIn_CT$wmAdd_Bool_emit_q <= (dconReadIn_CT$wmAdd_Bool_done ? 2'd0 :
                                          dconReadIn_CT$wmAdd_Bool_emit_d);
  logic [1:0] dconReadIn_CT$wmAdd_Bool_emit_d;
  assign dconReadIn_CT$wmAdd_Bool_emit_d = (dconReadIn_CT$wmAdd_Bool_emit_q | ({memMergeChoice_CT$wmAdd_Bool_d[0],
                                                                                memMergeIn_CT$wmAdd_Bool_d[0]} & {memMergeChoice_CT$wmAdd_Bool_r,
                                                                                                                  memMergeIn_CT$wmAdd_Bool_r}));
  logic dconReadIn_CT$wmAdd_Bool_done;
  assign dconReadIn_CT$wmAdd_Bool_done = (& dconReadIn_CT$wmAdd_Bool_emit_d);
  assign {dconWriteIn_CT$wmAdd_Bool_r,
          dconReadIn_CT$wmAdd_Bool_r} = (dconReadIn_CT$wmAdd_Bool_done ? dconReadIn_CT$wmAdd_Bool_select_d :
                                         2'd0);
  assign memMergeIn_CT$wmAdd_Bool_d = ((dconReadIn_CT$wmAdd_Bool_select_d[0] && (! dconReadIn_CT$wmAdd_Bool_emit_q[0])) ? dconReadIn_CT$wmAdd_Bool_d :
                                       ((dconReadIn_CT$wmAdd_Bool_select_d[1] && (! dconReadIn_CT$wmAdd_Bool_emit_q[0])) ? dconWriteIn_CT$wmAdd_Bool_d :
                                        {132'd0, 1'd0}));
  assign memMergeChoice_CT$wmAdd_Bool_d = ((dconReadIn_CT$wmAdd_Bool_select_d[0] && (! dconReadIn_CT$wmAdd_Bool_emit_q[1])) ? C1_2_dc(1'd1) :
                                           ((dconReadIn_CT$wmAdd_Bool_select_d[1] && (! dconReadIn_CT$wmAdd_Bool_emit_q[1])) ? C2_2_dc(1'd1) :
                                            {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CT$wmAdd_Bool,
      Ty MemOut_CT$wmAdd_Bool) : (memMergeIn_CT$wmAdd_Bool_dbuf,MemIn_CT$wmAdd_Bool) > (memOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool) */
  logic [114:0] memMergeIn_CT$wmAdd_Bool_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CT$wmAdd_Bool_dbuf_address;
  logic [114:0] memMergeIn_CT$wmAdd_Bool_dbuf_din;
  logic [114:0] memOut_CT$wmAdd_Bool_q;
  logic memOut_CT$wmAdd_Bool_valid;
  logic memMergeIn_CT$wmAdd_Bool_dbuf_we;
  logic memOut_CT$wmAdd_Bool_we;
  assign memMergeIn_CT$wmAdd_Bool_dbuf_din = memMergeIn_CT$wmAdd_Bool_dbuf_d[132:18];
  assign memMergeIn_CT$wmAdd_Bool_dbuf_address = memMergeIn_CT$wmAdd_Bool_dbuf_d[17:2];
  assign memMergeIn_CT$wmAdd_Bool_dbuf_we = (memMergeIn_CT$wmAdd_Bool_dbuf_d[1:1] && memMergeIn_CT$wmAdd_Bool_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_CT$wmAdd_Bool_we <= 1'd0;
        memOut_CT$wmAdd_Bool_valid <= 1'd0;
      end
    else
      begin
        memOut_CT$wmAdd_Bool_we <= memMergeIn_CT$wmAdd_Bool_dbuf_we;
        memOut_CT$wmAdd_Bool_valid <= memMergeIn_CT$wmAdd_Bool_dbuf_d[0];
        if (memMergeIn_CT$wmAdd_Bool_dbuf_we)
          begin
            memMergeIn_CT$wmAdd_Bool_dbuf_mem[memMergeIn_CT$wmAdd_Bool_dbuf_address] <= memMergeIn_CT$wmAdd_Bool_dbuf_din;
            memOut_CT$wmAdd_Bool_q <= memMergeIn_CT$wmAdd_Bool_dbuf_din;
          end
        else
          memOut_CT$wmAdd_Bool_q <= memMergeIn_CT$wmAdd_Bool_dbuf_mem[memMergeIn_CT$wmAdd_Bool_dbuf_address];
      end
  assign memOut_CT$wmAdd_Bool_d = {memOut_CT$wmAdd_Bool_q,
                                   memOut_CT$wmAdd_Bool_we,
                                   memOut_CT$wmAdd_Bool_valid};
  assign memMergeIn_CT$wmAdd_Bool_dbuf_r = ((! memOut_CT$wmAdd_Bool_valid) || memOut_CT$wmAdd_Bool_r);
  logic [31:0] profiling_MemIn_CT$wmAdd_Bool_read;
  logic [31:0] profiling_MemIn_CT$wmAdd_Bool_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_CT$wmAdd_Bool_write <= 0;
        profiling_MemIn_CT$wmAdd_Bool_read <= 0;
      end
    else
      if ((memMergeIn_CT$wmAdd_Bool_dbuf_we == 1'd1))
        profiling_MemIn_CT$wmAdd_Bool_write <= (profiling_MemIn_CT$wmAdd_Bool_write + 1);
      else
        if ((memOut_CT$wmAdd_Bool_valid == 1'd1))
          profiling_MemIn_CT$wmAdd_Bool_read <= (profiling_MemIn_CT$wmAdd_Bool_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CT$wmAdd_Bool) : (memMergeChoice_CT$wmAdd_Bool,C2) (memOut_CT$wmAdd_Bool_dbuf,MemOut_CT$wmAdd_Bool) > [(memReadOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool),
                                                                                                                        (memWriteOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool)] */
  logic [1:0] memOut_CT$wmAdd_Bool_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_CT$wmAdd_Bool_d[0] && memOut_CT$wmAdd_Bool_dbuf_d[0]))
      unique case (memMergeChoice_CT$wmAdd_Bool_d[1:1])
        1'd0: memOut_CT$wmAdd_Bool_dbuf_onehotd = 2'd1;
        1'd1: memOut_CT$wmAdd_Bool_dbuf_onehotd = 2'd2;
        default: memOut_CT$wmAdd_Bool_dbuf_onehotd = 2'd0;
      endcase
    else memOut_CT$wmAdd_Bool_dbuf_onehotd = 2'd0;
  assign memReadOut_CT$wmAdd_Bool_d = {memOut_CT$wmAdd_Bool_dbuf_d[116:1],
                                       memOut_CT$wmAdd_Bool_dbuf_onehotd[0]};
  assign memWriteOut_CT$wmAdd_Bool_d = {memOut_CT$wmAdd_Bool_dbuf_d[116:1],
                                        memOut_CT$wmAdd_Bool_dbuf_onehotd[1]};
  assign memOut_CT$wmAdd_Bool_dbuf_r = (| (memOut_CT$wmAdd_Bool_dbuf_onehotd & {memWriteOut_CT$wmAdd_Bool_r,
                                                                                memReadOut_CT$wmAdd_Bool_r}));
  assign memMergeChoice_CT$wmAdd_Bool_r = memOut_CT$wmAdd_Bool_dbuf_r;
  
  /* dbuf (Ty MemIn_CT$wmAdd_Bool) : (memMergeIn_CT$wmAdd_Bool_rbuf,MemIn_CT$wmAdd_Bool) > (memMergeIn_CT$wmAdd_Bool_dbuf,MemIn_CT$wmAdd_Bool) */
  assign memMergeIn_CT$wmAdd_Bool_rbuf_r = ((! memMergeIn_CT$wmAdd_Bool_dbuf_d[0]) || memMergeIn_CT$wmAdd_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CT$wmAdd_Bool_dbuf_d <= {132'd0, 1'd0};
    else
      if (memMergeIn_CT$wmAdd_Bool_rbuf_r)
        memMergeIn_CT$wmAdd_Bool_dbuf_d <= memMergeIn_CT$wmAdd_Bool_rbuf_d;
  
  /* rbuf (Ty MemIn_CT$wmAdd_Bool) : (memMergeIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool) > (memMergeIn_CT$wmAdd_Bool_rbuf,MemIn_CT$wmAdd_Bool) */
  MemIn_CT$wmAdd_Bool_t memMergeIn_CT$wmAdd_Bool_buf;
  assign memMergeIn_CT$wmAdd_Bool_r = (! memMergeIn_CT$wmAdd_Bool_buf[0]);
  assign memMergeIn_CT$wmAdd_Bool_rbuf_d = (memMergeIn_CT$wmAdd_Bool_buf[0] ? memMergeIn_CT$wmAdd_Bool_buf :
                                            memMergeIn_CT$wmAdd_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CT$wmAdd_Bool_buf <= {132'd0, 1'd0};
    else
      if ((memMergeIn_CT$wmAdd_Bool_rbuf_r && memMergeIn_CT$wmAdd_Bool_buf[0]))
        memMergeIn_CT$wmAdd_Bool_buf <= {132'd0, 1'd0};
      else if (((! memMergeIn_CT$wmAdd_Bool_rbuf_r) && (! memMergeIn_CT$wmAdd_Bool_buf[0])))
        memMergeIn_CT$wmAdd_Bool_buf <= memMergeIn_CT$wmAdd_Bool_d;
  
  /* dbuf (Ty MemOut_CT$wmAdd_Bool) : (memOut_CT$wmAdd_Bool_rbuf,MemOut_CT$wmAdd_Bool) > (memOut_CT$wmAdd_Bool_dbuf,MemOut_CT$wmAdd_Bool) */
  assign memOut_CT$wmAdd_Bool_rbuf_r = ((! memOut_CT$wmAdd_Bool_dbuf_d[0]) || memOut_CT$wmAdd_Bool_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CT$wmAdd_Bool_dbuf_d <= {116'd0, 1'd0};
    else
      if (memOut_CT$wmAdd_Bool_rbuf_r)
        memOut_CT$wmAdd_Bool_dbuf_d <= memOut_CT$wmAdd_Bool_rbuf_d;
  
  /* rbuf (Ty MemOut_CT$wmAdd_Bool) : (memOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool) > (memOut_CT$wmAdd_Bool_rbuf,MemOut_CT$wmAdd_Bool) */
  MemOut_CT$wmAdd_Bool_t memOut_CT$wmAdd_Bool_buf;
  assign memOut_CT$wmAdd_Bool_r = (! memOut_CT$wmAdd_Bool_buf[0]);
  assign memOut_CT$wmAdd_Bool_rbuf_d = (memOut_CT$wmAdd_Bool_buf[0] ? memOut_CT$wmAdd_Bool_buf :
                                        memOut_CT$wmAdd_Bool_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CT$wmAdd_Bool_buf <= {116'd0, 1'd0};
    else
      if ((memOut_CT$wmAdd_Bool_rbuf_r && memOut_CT$wmAdd_Bool_buf[0]))
        memOut_CT$wmAdd_Bool_buf <= {116'd0, 1'd0};
      else if (((! memOut_CT$wmAdd_Bool_rbuf_r) && (! memOut_CT$wmAdd_Bool_buf[0])))
        memOut_CT$wmAdd_Bool_buf <= memOut_CT$wmAdd_Bool_d;
  
  /* destruct (Ty Pointer_CT$wmAdd_Bool,
          Dcon Pointer_CT$wmAdd_Bool) : (scfarg_0_1_argbuf,Pointer_CT$wmAdd_Bool) > [(destructReadIn_CT$wmAdd_Bool,Word16#)] */
  assign destructReadIn_CT$wmAdd_Bool_d = {scfarg_0_1_argbuf_d[16:1],
                                           scfarg_0_1_argbuf_d[0]};
  assign scfarg_0_1_argbuf_r = destructReadIn_CT$wmAdd_Bool_r;
  
  /* dcon (Ty MemIn_CT$wmAdd_Bool,
      Dcon ReadIn_CT$wmAdd_Bool) : [(destructReadIn_CT$wmAdd_Bool,Word16#)] > (dconReadIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool) */
  assign dconReadIn_CT$wmAdd_Bool_d = ReadIn_CT$wmAdd_Bool_dc((& {destructReadIn_CT$wmAdd_Bool_d[0]}), destructReadIn_CT$wmAdd_Bool_d);
  assign {destructReadIn_CT$wmAdd_Bool_r} = {1 {(dconReadIn_CT$wmAdd_Bool_r && dconReadIn_CT$wmAdd_Bool_d[0])}};
  
  /* destruct (Ty MemOut_CT$wmAdd_Bool,
          Dcon ReadOut_CT$wmAdd_Bool) : (memReadOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool) > [(readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf,CT$wmAdd_Bool)] */
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_d = {memReadOut_CT$wmAdd_Bool_d[116:2],
                                                         memReadOut_CT$wmAdd_Bool_d[0]};
  assign memReadOut_CT$wmAdd_Bool_r = readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_r;
  
  /* mergectrl (Ty C5,
           Ty CT$wmAdd_Bool) : [(lizzieLet0_1_argbuf,CT$wmAdd_Bool),
                                (lizzieLet10_1_argbuf,CT$wmAdd_Bool),
                                (lizzieLet24_1_argbuf,CT$wmAdd_Bool),
                                (lizzieLet25_1_argbuf,CT$wmAdd_Bool),
                                (lizzieLet26_1_argbuf,CT$wmAdd_Bool)] > (writeMerge_choice_CT$wmAdd_Bool,C5) (writeMerge_data_CT$wmAdd_Bool,CT$wmAdd_Bool) */
  logic [4:0] lizzieLet0_1_argbuf_select_d;
  assign lizzieLet0_1_argbuf_select_d = ((| lizzieLet0_1_argbuf_select_q) ? lizzieLet0_1_argbuf_select_q :
                                         (lizzieLet0_1_argbuf_d[0] ? 5'd1 :
                                          (lizzieLet10_1_argbuf_d[0] ? 5'd2 :
                                           (lizzieLet24_1_argbuf_d[0] ? 5'd4 :
                                            (lizzieLet25_1_argbuf_d[0] ? 5'd8 :
                                             (lizzieLet26_1_argbuf_d[0] ? 5'd16 :
                                              5'd0))))));
  logic [4:0] lizzieLet0_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet0_1_argbuf_select_q <= (lizzieLet0_1_argbuf_done ? 5'd0 :
                                       lizzieLet0_1_argbuf_select_d);
  logic [1:0] lizzieLet0_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet0_1_argbuf_emit_q <= (lizzieLet0_1_argbuf_done ? 2'd0 :
                                     lizzieLet0_1_argbuf_emit_d);
  logic [1:0] lizzieLet0_1_argbuf_emit_d;
  assign lizzieLet0_1_argbuf_emit_d = (lizzieLet0_1_argbuf_emit_q | ({writeMerge_choice_CT$wmAdd_Bool_d[0],
                                                                      writeMerge_data_CT$wmAdd_Bool_d[0]} & {writeMerge_choice_CT$wmAdd_Bool_r,
                                                                                                             writeMerge_data_CT$wmAdd_Bool_r}));
  logic lizzieLet0_1_argbuf_done;
  assign lizzieLet0_1_argbuf_done = (& lizzieLet0_1_argbuf_emit_d);
  assign {lizzieLet26_1_argbuf_r,
          lizzieLet25_1_argbuf_r,
          lizzieLet24_1_argbuf_r,
          lizzieLet10_1_argbuf_r,
          lizzieLet0_1_argbuf_r} = (lizzieLet0_1_argbuf_done ? lizzieLet0_1_argbuf_select_d :
                                    5'd0);
  assign writeMerge_data_CT$wmAdd_Bool_d = ((lizzieLet0_1_argbuf_select_d[0] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet0_1_argbuf_d :
                                            ((lizzieLet0_1_argbuf_select_d[1] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet10_1_argbuf_d :
                                             ((lizzieLet0_1_argbuf_select_d[2] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet24_1_argbuf_d :
                                              ((lizzieLet0_1_argbuf_select_d[3] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet25_1_argbuf_d :
                                               ((lizzieLet0_1_argbuf_select_d[4] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet26_1_argbuf_d :
                                                {115'd0, 1'd0})))));
  assign writeMerge_choice_CT$wmAdd_Bool_d = ((lizzieLet0_1_argbuf_select_d[0] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                              ((lizzieLet0_1_argbuf_select_d[1] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                               ((lizzieLet0_1_argbuf_select_d[2] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                                ((lizzieLet0_1_argbuf_select_d[3] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                                 ((lizzieLet0_1_argbuf_select_d[4] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                                  {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CT$wmAdd_Bool) : (writeMerge_choice_CT$wmAdd_Bool,C5) (demuxWriteResult_CT$wmAdd_Bool,Pointer_CT$wmAdd_Bool) > [(writeCT$wmAdd_BoollizzieLet0_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                                                                                                  (writeCT$wmAdd_BoollizzieLet10_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                                                                                                  (writeCT$wmAdd_BoollizzieLet24_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                                                                                                  (writeCT$wmAdd_BoollizzieLet25_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                                                                                                  (writeCT$wmAdd_BoollizzieLet26_1_argbuf,Pointer_CT$wmAdd_Bool)] */
  logic [4:0] demuxWriteResult_CT$wmAdd_Bool_onehotd;
  always_comb
    if ((writeMerge_choice_CT$wmAdd_Bool_d[0] && demuxWriteResult_CT$wmAdd_Bool_d[0]))
      unique case (writeMerge_choice_CT$wmAdd_Bool_d[3:1])
        3'd0: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd1;
        3'd1: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd2;
        3'd2: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd4;
        3'd3: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd8;
        3'd4: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd16;
        default: demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd0;
      endcase
    else demuxWriteResult_CT$wmAdd_Bool_onehotd = 5'd0;
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_d = {demuxWriteResult_CT$wmAdd_Bool_d[16:1],
                                                    demuxWriteResult_CT$wmAdd_Bool_onehotd[0]};
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_d = {demuxWriteResult_CT$wmAdd_Bool_d[16:1],
                                                     demuxWriteResult_CT$wmAdd_Bool_onehotd[1]};
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_d = {demuxWriteResult_CT$wmAdd_Bool_d[16:1],
                                                     demuxWriteResult_CT$wmAdd_Bool_onehotd[2]};
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_d = {demuxWriteResult_CT$wmAdd_Bool_d[16:1],
                                                     demuxWriteResult_CT$wmAdd_Bool_onehotd[3]};
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_d = {demuxWriteResult_CT$wmAdd_Bool_d[16:1],
                                                     demuxWriteResult_CT$wmAdd_Bool_onehotd[4]};
  assign demuxWriteResult_CT$wmAdd_Bool_r = (| (demuxWriteResult_CT$wmAdd_Bool_onehotd & {writeCT$wmAdd_BoollizzieLet26_1_argbuf_r,
                                                                                          writeCT$wmAdd_BoollizzieLet25_1_argbuf_r,
                                                                                          writeCT$wmAdd_BoollizzieLet24_1_argbuf_r,
                                                                                          writeCT$wmAdd_BoollizzieLet10_1_argbuf_r,
                                                                                          writeCT$wmAdd_BoollizzieLet0_1_argbuf_r}));
  assign writeMerge_choice_CT$wmAdd_Bool_r = demuxWriteResult_CT$wmAdd_Bool_r;
  
  /* dcon (Ty MemIn_CT$wmAdd_Bool,
      Dcon WriteIn_CT$wmAdd_Bool) : [(forkHP1_CT$wmAdd_Boo2,Word16#),
                                     (writeMerge_data_CT$wmAdd_Bool,CT$wmAdd_Bool)] > (dconWriteIn_CT$wmAdd_Bool,MemIn_CT$wmAdd_Bool) */
  assign dconWriteIn_CT$wmAdd_Bool_d = WriteIn_CT$wmAdd_Bool_dc((& {forkHP1_CT$wmAdd_Boo2_d[0],
                                                                    writeMerge_data_CT$wmAdd_Bool_d[0]}), forkHP1_CT$wmAdd_Boo2_d, writeMerge_data_CT$wmAdd_Bool_d);
  assign {forkHP1_CT$wmAdd_Boo2_r,
          writeMerge_data_CT$wmAdd_Bool_r} = {2 {(dconWriteIn_CT$wmAdd_Bool_r && dconWriteIn_CT$wmAdd_Bool_d[0])}};
  
  /* dcon (Ty Pointer_CT$wmAdd_Bool,
      Dcon Pointer_CT$wmAdd_Bool) : [(forkHP1_CT$wmAdd_Boo3,Word16#)] > (dconPtr_CT$wmAdd_Bool,Pointer_CT$wmAdd_Bool) */
  assign dconPtr_CT$wmAdd_Bool_d = Pointer_CT$wmAdd_Bool_dc((& {forkHP1_CT$wmAdd_Boo3_d[0]}), forkHP1_CT$wmAdd_Boo3_d);
  assign {forkHP1_CT$wmAdd_Boo3_r} = {1 {(dconPtr_CT$wmAdd_Bool_r && dconPtr_CT$wmAdd_Bool_d[0])}};
  
  /* demux (Ty MemOut_CT$wmAdd_Bool,
       Ty Pointer_CT$wmAdd_Bool) : (memWriteOut_CT$wmAdd_Bool,MemOut_CT$wmAdd_Bool) (dconPtr_CT$wmAdd_Bool,Pointer_CT$wmAdd_Bool) > [(_64,Pointer_CT$wmAdd_Bool),
                                                                                                                                     (demuxWriteResult_CT$wmAdd_Bool,Pointer_CT$wmAdd_Bool)] */
  logic [1:0] dconPtr_CT$wmAdd_Bool_onehotd;
  always_comb
    if ((memWriteOut_CT$wmAdd_Bool_d[0] && dconPtr_CT$wmAdd_Bool_d[0]))
      unique case (memWriteOut_CT$wmAdd_Bool_d[1:1])
        1'd0: dconPtr_CT$wmAdd_Bool_onehotd = 2'd1;
        1'd1: dconPtr_CT$wmAdd_Bool_onehotd = 2'd2;
        default: dconPtr_CT$wmAdd_Bool_onehotd = 2'd0;
      endcase
    else dconPtr_CT$wmAdd_Bool_onehotd = 2'd0;
  assign _64_d = {dconPtr_CT$wmAdd_Bool_d[16:1],
                  dconPtr_CT$wmAdd_Bool_onehotd[0]};
  assign demuxWriteResult_CT$wmAdd_Bool_d = {dconPtr_CT$wmAdd_Bool_d[16:1],
                                             dconPtr_CT$wmAdd_Bool_onehotd[1]};
  assign dconPtr_CT$wmAdd_Bool_r = (| (dconPtr_CT$wmAdd_Bool_onehotd & {demuxWriteResult_CT$wmAdd_Bool_r,
                                                                        _64_r}));
  assign memWriteOut_CT$wmAdd_Bool_r = dconPtr_CT$wmAdd_Bool_r;
  
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
  
  /* mergectrl (Ty C3,
           Ty Pointer_QTree_Bool) : [(ma8R_1_argbuf,Pointer_QTree_Bool),
                                     (w1skC_1_1_argbuf,Pointer_QTree_Bool),
                                     (w2skD_1_1_argbuf,Pointer_QTree_Bool)] > (readMerge_choice_QTree_Bool,C3) (readMerge_data_QTree_Bool,Pointer_QTree_Bool) */
  logic [2:0] ma8R_1_argbuf_select_d;
  assign ma8R_1_argbuf_select_d = ((| ma8R_1_argbuf_select_q) ? ma8R_1_argbuf_select_q :
                                   (ma8R_1_argbuf_d[0] ? 3'd1 :
                                    (w1skC_1_1_argbuf_d[0] ? 3'd2 :
                                     (w2skD_1_1_argbuf_d[0] ? 3'd4 :
                                      3'd0))));
  logic [2:0] ma8R_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ma8R_1_argbuf_select_q <= 3'd0;
    else
      ma8R_1_argbuf_select_q <= (ma8R_1_argbuf_done ? 3'd0 :
                                 ma8R_1_argbuf_select_d);
  logic [1:0] ma8R_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ma8R_1_argbuf_emit_q <= 2'd0;
    else
      ma8R_1_argbuf_emit_q <= (ma8R_1_argbuf_done ? 2'd0 :
                               ma8R_1_argbuf_emit_d);
  logic [1:0] ma8R_1_argbuf_emit_d;
  assign ma8R_1_argbuf_emit_d = (ma8R_1_argbuf_emit_q | ({readMerge_choice_QTree_Bool_d[0],
                                                          readMerge_data_QTree_Bool_d[0]} & {readMerge_choice_QTree_Bool_r,
                                                                                             readMerge_data_QTree_Bool_r}));
  logic ma8R_1_argbuf_done;
  assign ma8R_1_argbuf_done = (& ma8R_1_argbuf_emit_d);
  assign {w2skD_1_1_argbuf_r,
          w1skC_1_1_argbuf_r,
          ma8R_1_argbuf_r} = (ma8R_1_argbuf_done ? ma8R_1_argbuf_select_d :
                              3'd0);
  assign readMerge_data_QTree_Bool_d = ((ma8R_1_argbuf_select_d[0] && (! ma8R_1_argbuf_emit_q[0])) ? ma8R_1_argbuf_d :
                                        ((ma8R_1_argbuf_select_d[1] && (! ma8R_1_argbuf_emit_q[0])) ? w1skC_1_1_argbuf_d :
                                         ((ma8R_1_argbuf_select_d[2] && (! ma8R_1_argbuf_emit_q[0])) ? w2skD_1_1_argbuf_d :
                                          {16'd0, 1'd0})));
  assign readMerge_choice_QTree_Bool_d = ((ma8R_1_argbuf_select_d[0] && (! ma8R_1_argbuf_emit_q[1])) ? C1_3_dc(1'd1) :
                                          ((ma8R_1_argbuf_select_d[1] && (! ma8R_1_argbuf_emit_q[1])) ? C2_3_dc(1'd1) :
                                           ((ma8R_1_argbuf_select_d[2] && (! ma8R_1_argbuf_emit_q[1])) ? C3_3_dc(1'd1) :
                                            {2'd0, 1'd0})));
  
  /* demux (Ty C3,
       Ty QTree_Bool) : (readMerge_choice_QTree_Bool,C3) (destructReadOut_QTree_Bool,QTree_Bool) > [(readPointer_QTree_Boolma8R_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolw1skC_1_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolw2skD_1_1_argbuf,QTree_Bool)] */
  logic [2:0] destructReadOut_QTree_Bool_onehotd;
  always_comb
    if ((readMerge_choice_QTree_Bool_d[0] && destructReadOut_QTree_Bool_d[0]))
      unique case (readMerge_choice_QTree_Bool_d[2:1])
        2'd0: destructReadOut_QTree_Bool_onehotd = 3'd1;
        2'd1: destructReadOut_QTree_Bool_onehotd = 3'd2;
        2'd2: destructReadOut_QTree_Bool_onehotd = 3'd4;
        default: destructReadOut_QTree_Bool_onehotd = 3'd0;
      endcase
    else destructReadOut_QTree_Bool_onehotd = 3'd0;
  assign readPointer_QTree_Boolma8R_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                  destructReadOut_QTree_Bool_onehotd[0]};
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                     destructReadOut_QTree_Bool_onehotd[1]};
  assign readPointer_QTree_Boolw2skD_1_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                     destructReadOut_QTree_Bool_onehotd[2]};
  assign destructReadOut_QTree_Bool_r = (| (destructReadOut_QTree_Bool_onehotd & {readPointer_QTree_Boolw2skD_1_1_argbuf_r,
                                                                                  readPointer_QTree_Boolw1skC_1_1_argbuf_r,
                                                                                  readPointer_QTree_Boolma8R_1_argbuf_r}));
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
  
  /* mergectrl (Ty C8,
           Ty QTree_Bool) : [(lizzieLet11_1_argbuf,QTree_Bool),
                             (lizzieLet12_1_1_argbuf,QTree_Bool),
                             (lizzieLet27_1_argbuf,QTree_Bool),
                             (lizzieLet5_1_argbuf,QTree_Bool),
                             (lizzieLet6_1_1_argbuf,QTree_Bool),
                             (lizzieLet7_1_1_argbuf,QTree_Bool),
                             (lizzieLet9_1_1_argbuf,QTree_Bool),
                             (dummy_write_QTree_Bool,QTree_Bool)] > (writeMerge_choice_QTree_Bool,C8) (writeMerge_data_QTree_Bool,QTree_Bool) */
  logic [7:0] lizzieLet11_1_argbuf_select_d;
  assign lizzieLet11_1_argbuf_select_d = ((| lizzieLet11_1_argbuf_select_q) ? lizzieLet11_1_argbuf_select_q :
                                          (lizzieLet11_1_argbuf_d[0] ? 8'd1 :
                                           (lizzieLet12_1_1_argbuf_d[0] ? 8'd2 :
                                            (lizzieLet27_1_argbuf_d[0] ? 8'd4 :
                                             (lizzieLet5_1_argbuf_d[0] ? 8'd8 :
                                              (lizzieLet6_1_1_argbuf_d[0] ? 8'd16 :
                                               (lizzieLet7_1_1_argbuf_d[0] ? 8'd32 :
                                                (lizzieLet9_1_1_argbuf_d[0] ? 8'd64 :
                                                 (dummy_write_QTree_Bool_d[0] ? 8'd128 :
                                                  8'd0)))))))));
  logic [7:0] lizzieLet11_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_select_q <= 8'd0;
    else
      lizzieLet11_1_argbuf_select_q <= (lizzieLet11_1_argbuf_done ? 8'd0 :
                                        lizzieLet11_1_argbuf_select_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet11_1_argbuf_emit_q <= (lizzieLet11_1_argbuf_done ? 2'd0 :
                                      lizzieLet11_1_argbuf_emit_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_d;
  assign lizzieLet11_1_argbuf_emit_d = (lizzieLet11_1_argbuf_emit_q | ({writeMerge_choice_QTree_Bool_d[0],
                                                                        writeMerge_data_QTree_Bool_d[0]} & {writeMerge_choice_QTree_Bool_r,
                                                                                                            writeMerge_data_QTree_Bool_r}));
  logic lizzieLet11_1_argbuf_done;
  assign lizzieLet11_1_argbuf_done = (& lizzieLet11_1_argbuf_emit_d);
  assign {dummy_write_QTree_Bool_r,
          lizzieLet9_1_1_argbuf_r,
          lizzieLet7_1_1_argbuf_r,
          lizzieLet6_1_1_argbuf_r,
          lizzieLet5_1_argbuf_r,
          lizzieLet27_1_argbuf_r,
          lizzieLet12_1_1_argbuf_r,
          lizzieLet11_1_argbuf_r} = (lizzieLet11_1_argbuf_done ? lizzieLet11_1_argbuf_select_d :
                                     8'd0);
  assign writeMerge_data_QTree_Bool_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet11_1_argbuf_d :
                                         ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet12_1_1_argbuf_d :
                                          ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet27_1_argbuf_d :
                                           ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet5_1_argbuf_d :
                                            ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet6_1_1_argbuf_d :
                                             ((lizzieLet11_1_argbuf_select_d[5] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet7_1_1_argbuf_d :
                                              ((lizzieLet11_1_argbuf_select_d[6] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet9_1_1_argbuf_d :
                                               ((lizzieLet11_1_argbuf_select_d[7] && (! lizzieLet11_1_argbuf_emit_q[0])) ? dummy_write_QTree_Bool_d :
                                                {66'd0, 1'd0}))))))));
  assign writeMerge_choice_QTree_Bool_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C1_8_dc(1'd1) :
                                           ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C2_8_dc(1'd1) :
                                            ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C3_8_dc(1'd1) :
                                             ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C4_8_dc(1'd1) :
                                              ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C5_8_dc(1'd1) :
                                               ((lizzieLet11_1_argbuf_select_d[5] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C6_8_dc(1'd1) :
                                                ((lizzieLet11_1_argbuf_select_d[6] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C7_8_dc(1'd1) :
                                                 ((lizzieLet11_1_argbuf_select_d[7] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C8_8_dc(1'd1) :
                                                  {3'd0, 1'd0}))))))));
  
  /* demux (Ty C8,
       Ty Pointer_QTree_Bool) : (writeMerge_choice_QTree_Bool,C8) (demuxWriteResult_QTree_Bool,Pointer_QTree_Bool) > [(writeQTree_BoollizzieLet11_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet12_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet27_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet5_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet6_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet7_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (writeQTree_BoollizzieLet9_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                                      (dummy_write_QTree_Bool_sink,Pointer_QTree_Bool)] */
  logic [7:0] demuxWriteResult_QTree_Bool_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Bool_d[0] && demuxWriteResult_QTree_Bool_d[0]))
      unique case (writeMerge_choice_QTree_Bool_d[3:1])
        3'd0: demuxWriteResult_QTree_Bool_onehotd = 8'd1;
        3'd1: demuxWriteResult_QTree_Bool_onehotd = 8'd2;
        3'd2: demuxWriteResult_QTree_Bool_onehotd = 8'd4;
        3'd3: demuxWriteResult_QTree_Bool_onehotd = 8'd8;
        3'd4: demuxWriteResult_QTree_Bool_onehotd = 8'd16;
        3'd5: demuxWriteResult_QTree_Bool_onehotd = 8'd32;
        3'd6: demuxWriteResult_QTree_Bool_onehotd = 8'd64;
        3'd7: demuxWriteResult_QTree_Bool_onehotd = 8'd128;
        default: demuxWriteResult_QTree_Bool_onehotd = 8'd0;
      endcase
    else demuxWriteResult_QTree_Bool_onehotd = 8'd0;
  assign writeQTree_BoollizzieLet11_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                  demuxWriteResult_QTree_Bool_onehotd[0]};
  assign writeQTree_BoollizzieLet12_1_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                    demuxWriteResult_QTree_Bool_onehotd[1]};
  assign writeQTree_BoollizzieLet27_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                  demuxWriteResult_QTree_Bool_onehotd[2]};
  assign writeQTree_BoollizzieLet5_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                 demuxWriteResult_QTree_Bool_onehotd[3]};
  assign writeQTree_BoollizzieLet6_1_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                   demuxWriteResult_QTree_Bool_onehotd[4]};
  assign writeQTree_BoollizzieLet7_1_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                   demuxWriteResult_QTree_Bool_onehotd[5]};
  assign writeQTree_BoollizzieLet9_1_1_argbuf_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                                   demuxWriteResult_QTree_Bool_onehotd[6]};
  assign dummy_write_QTree_Bool_sink_d = {demuxWriteResult_QTree_Bool_d[16:1],
                                          demuxWriteResult_QTree_Bool_onehotd[7]};
  assign demuxWriteResult_QTree_Bool_r = (| (demuxWriteResult_QTree_Bool_onehotd & {dummy_write_QTree_Bool_sink_r,
                                                                                    writeQTree_BoollizzieLet9_1_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet7_1_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet6_1_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet5_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet27_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet12_1_1_argbuf_r,
                                                                                    writeQTree_BoollizzieLet11_1_argbuf_r}));
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
       Ty Pointer_QTree_Bool) : (memWriteOut_QTree_Bool,MemOut_QTree_Bool) (dconPtr_QTree_Bool,Pointer_QTree_Bool) > [(_63,Pointer_QTree_Bool),
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
  assign _63_d = {dconPtr_QTree_Bool_d[16:1],
                  dconPtr_QTree_Bool_onehotd[0]};
  assign demuxWriteResult_QTree_Bool_d = {dconPtr_QTree_Bool_d[16:1],
                                          dconPtr_QTree_Bool_onehotd[1]};
  assign dconPtr_QTree_Bool_r = (| (dconPtr_QTree_Bool_onehotd & {demuxWriteResult_QTree_Bool_r,
                                                                  _63_r}));
  assign memWriteOut_QTree_Bool_r = dconPtr_QTree_Bool_r;
  
  /* const (Ty Word16#,Lit 0) : (go__8,Go) > (initHP_QTree_Nat,Word16#) */
  assign initHP_QTree_Nat_d = {16'd0, go__8_d[0]};
  assign go__8_r = initHP_QTree_Nat_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_QTree_Nat1,Go) > (incrHP_QTree_Nat,Word16#) */
  assign incrHP_QTree_Nat_d = {16'd1, incrHP_QTree_Nat1_d[0]};
  assign incrHP_QTree_Nat1_r = incrHP_QTree_Nat_r;
  
  /* merge (Ty Go) : [(go__9,Go),
                 (incrHP_QTree_Nat2,Go)] > (incrHP_mergeQTree_Nat,Go) */
  logic [1:0] incrHP_mergeQTree_Nat_selected;
  logic [1:0] incrHP_mergeQTree_Nat_select;
  always_comb
    begin
      incrHP_mergeQTree_Nat_selected = 2'd0;
      if ((| incrHP_mergeQTree_Nat_select))
        incrHP_mergeQTree_Nat_selected = incrHP_mergeQTree_Nat_select;
      else
        if (go__9_d[0]) incrHP_mergeQTree_Nat_selected[0] = 1'd1;
        else if (incrHP_QTree_Nat2_d[0])
          incrHP_mergeQTree_Nat_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Nat_select <= 2'd0;
    else
      incrHP_mergeQTree_Nat_select <= (incrHP_mergeQTree_Nat_r ? 2'd0 :
                                       incrHP_mergeQTree_Nat_selected);
  always_comb
    if (incrHP_mergeQTree_Nat_selected[0])
      incrHP_mergeQTree_Nat_d = go__9_d;
    else if (incrHP_mergeQTree_Nat_selected[1])
      incrHP_mergeQTree_Nat_d = incrHP_QTree_Nat2_d;
    else incrHP_mergeQTree_Nat_d = 1'd0;
  assign {incrHP_QTree_Nat2_r,
          go__9_r} = (incrHP_mergeQTree_Nat_r ? incrHP_mergeQTree_Nat_selected :
                      2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeQTree_Nat_buf,Go) > [(incrHP_QTree_Nat1,Go),
                                                 (incrHP_QTree_Nat2,Go)] */
  logic [1:0] incrHP_mergeQTree_Nat_buf_emitted;
  logic [1:0] incrHP_mergeQTree_Nat_buf_done;
  assign incrHP_QTree_Nat1_d = (incrHP_mergeQTree_Nat_buf_d[0] && (! incrHP_mergeQTree_Nat_buf_emitted[0]));
  assign incrHP_QTree_Nat2_d = (incrHP_mergeQTree_Nat_buf_d[0] && (! incrHP_mergeQTree_Nat_buf_emitted[1]));
  assign incrHP_mergeQTree_Nat_buf_done = (incrHP_mergeQTree_Nat_buf_emitted | ({incrHP_QTree_Nat2_d[0],
                                                                                 incrHP_QTree_Nat1_d[0]} & {incrHP_QTree_Nat2_r,
                                                                                                            incrHP_QTree_Nat1_r}));
  assign incrHP_mergeQTree_Nat_buf_r = (& incrHP_mergeQTree_Nat_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Nat_buf_emitted <= 2'd0;
    else
      incrHP_mergeQTree_Nat_buf_emitted <= (incrHP_mergeQTree_Nat_buf_r ? 2'd0 :
                                            incrHP_mergeQTree_Nat_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_QTree_Nat,Word16#) (forkHP1_QTree_Nat,Word16#) > (addHP_QTree_Nat,Word16#) */
  assign addHP_QTree_Nat_d = {(incrHP_QTree_Nat_d[16:1] + forkHP1_QTree_Nat_d[16:1]),
                              (incrHP_QTree_Nat_d[0] && forkHP1_QTree_Nat_d[0])};
  assign {incrHP_QTree_Nat_r,
          forkHP1_QTree_Nat_r} = {2 {(addHP_QTree_Nat_r && addHP_QTree_Nat_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_QTree_Nat,Word16#),
                      (addHP_QTree_Nat,Word16#)] > (mergeHP_QTree_Nat,Word16#) */
  logic [1:0] mergeHP_QTree_Nat_selected;
  logic [1:0] mergeHP_QTree_Nat_select;
  always_comb
    begin
      mergeHP_QTree_Nat_selected = 2'd0;
      if ((| mergeHP_QTree_Nat_select))
        mergeHP_QTree_Nat_selected = mergeHP_QTree_Nat_select;
      else
        if (initHP_QTree_Nat_d[0]) mergeHP_QTree_Nat_selected[0] = 1'd1;
        else if (addHP_QTree_Nat_d[0])
          mergeHP_QTree_Nat_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Nat_select <= 2'd0;
    else
      mergeHP_QTree_Nat_select <= (mergeHP_QTree_Nat_r ? 2'd0 :
                                   mergeHP_QTree_Nat_selected);
  always_comb
    if (mergeHP_QTree_Nat_selected[0])
      mergeHP_QTree_Nat_d = initHP_QTree_Nat_d;
    else if (mergeHP_QTree_Nat_selected[1])
      mergeHP_QTree_Nat_d = addHP_QTree_Nat_d;
    else mergeHP_QTree_Nat_d = {16'd0, 1'd0};
  assign {addHP_QTree_Nat_r,
          initHP_QTree_Nat_r} = (mergeHP_QTree_Nat_r ? mergeHP_QTree_Nat_selected :
                                 2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeQTree_Nat,Go) > (incrHP_mergeQTree_Nat_buf,Go) */
  Go_t incrHP_mergeQTree_Nat_bufchan_d;
  logic incrHP_mergeQTree_Nat_bufchan_r;
  assign incrHP_mergeQTree_Nat_r = ((! incrHP_mergeQTree_Nat_bufchan_d[0]) || incrHP_mergeQTree_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Nat_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeQTree_Nat_r)
        incrHP_mergeQTree_Nat_bufchan_d <= incrHP_mergeQTree_Nat_d;
  Go_t incrHP_mergeQTree_Nat_bufchan_buf;
  assign incrHP_mergeQTree_Nat_bufchan_r = (! incrHP_mergeQTree_Nat_bufchan_buf[0]);
  assign incrHP_mergeQTree_Nat_buf_d = (incrHP_mergeQTree_Nat_bufchan_buf[0] ? incrHP_mergeQTree_Nat_bufchan_buf :
                                        incrHP_mergeQTree_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Nat_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeQTree_Nat_buf_r && incrHP_mergeQTree_Nat_bufchan_buf[0]))
        incrHP_mergeQTree_Nat_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeQTree_Nat_buf_r) && (! incrHP_mergeQTree_Nat_bufchan_buf[0])))
        incrHP_mergeQTree_Nat_bufchan_buf <= incrHP_mergeQTree_Nat_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_QTree_Nat,Word16#) > (mergeHP_QTree_Nat_buf,Word16#) */
  \Word16#_t  mergeHP_QTree_Nat_bufchan_d;
  logic mergeHP_QTree_Nat_bufchan_r;
  assign mergeHP_QTree_Nat_r = ((! mergeHP_QTree_Nat_bufchan_d[0]) || mergeHP_QTree_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Nat_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_QTree_Nat_r)
        mergeHP_QTree_Nat_bufchan_d <= mergeHP_QTree_Nat_d;
  \Word16#_t  mergeHP_QTree_Nat_bufchan_buf;
  assign mergeHP_QTree_Nat_bufchan_r = (! mergeHP_QTree_Nat_bufchan_buf[0]);
  assign mergeHP_QTree_Nat_buf_d = (mergeHP_QTree_Nat_bufchan_buf[0] ? mergeHP_QTree_Nat_bufchan_buf :
                                    mergeHP_QTree_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_QTree_Nat_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_QTree_Nat_buf_r && mergeHP_QTree_Nat_bufchan_buf[0]))
        mergeHP_QTree_Nat_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_QTree_Nat_buf_r) && (! mergeHP_QTree_Nat_bufchan_buf[0])))
        mergeHP_QTree_Nat_bufchan_buf <= mergeHP_QTree_Nat_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_QTree_Nat_buf,Word16#) > [(forkHP1_QTree_Nat,Word16#),
                                                       (forkHP1_QTree_Na2,Word16#),
                                                       (forkHP1_QTree_Na3,Word16#)] */
  logic [2:0] mergeHP_QTree_Nat_buf_emitted;
  logic [2:0] mergeHP_QTree_Nat_buf_done;
  assign forkHP1_QTree_Nat_d = {mergeHP_QTree_Nat_buf_d[16:1],
                                (mergeHP_QTree_Nat_buf_d[0] && (! mergeHP_QTree_Nat_buf_emitted[0]))};
  assign forkHP1_QTree_Na2_d = {mergeHP_QTree_Nat_buf_d[16:1],
                                (mergeHP_QTree_Nat_buf_d[0] && (! mergeHP_QTree_Nat_buf_emitted[1]))};
  assign forkHP1_QTree_Na3_d = {mergeHP_QTree_Nat_buf_d[16:1],
                                (mergeHP_QTree_Nat_buf_d[0] && (! mergeHP_QTree_Nat_buf_emitted[2]))};
  assign mergeHP_QTree_Nat_buf_done = (mergeHP_QTree_Nat_buf_emitted | ({forkHP1_QTree_Na3_d[0],
                                                                         forkHP1_QTree_Na2_d[0],
                                                                         forkHP1_QTree_Nat_d[0]} & {forkHP1_QTree_Na3_r,
                                                                                                    forkHP1_QTree_Na2_r,
                                                                                                    forkHP1_QTree_Nat_r}));
  assign mergeHP_QTree_Nat_buf_r = (& mergeHP_QTree_Nat_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Nat_buf_emitted <= 3'd0;
    else
      mergeHP_QTree_Nat_buf_emitted <= (mergeHP_QTree_Nat_buf_r ? 3'd0 :
                                        mergeHP_QTree_Nat_buf_done);
  
  /* bram (Ty MemIn_QTree_Nat,
      Ty MemOut_QTree_Nat) : (dconWriteIn_QTree_Nat,MemIn_QTree_Nat) > (memWriteOut_QTree_Nat,MemOut_QTree_Nat) */
  logic [65:0] dconWriteIn_QTree_Nat_mem[65535:0];
  logic [15:0] dconWriteIn_QTree_Nat_address;
  logic [65:0] dconWriteIn_QTree_Nat_din;
  logic [65:0] memWriteOut_QTree_Nat_q;
  logic memWriteOut_QTree_Nat_valid;
  logic dconWriteIn_QTree_Nat_we;
  logic memWriteOut_QTree_Nat_we;
  assign dconWriteIn_QTree_Nat_din = dconWriteIn_QTree_Nat_d[83:18];
  assign dconWriteIn_QTree_Nat_address = dconWriteIn_QTree_Nat_d[17:2];
  assign dconWriteIn_QTree_Nat_we = (dconWriteIn_QTree_Nat_d[1:1] && dconWriteIn_QTree_Nat_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memWriteOut_QTree_Nat_we <= 1'd0;
        memWriteOut_QTree_Nat_valid <= 1'd0;
      end
    else
      begin
        memWriteOut_QTree_Nat_we <= dconWriteIn_QTree_Nat_we;
        memWriteOut_QTree_Nat_valid <= dconWriteIn_QTree_Nat_d[0];
        if (dconWriteIn_QTree_Nat_we)
          begin
            dconWriteIn_QTree_Nat_mem[dconWriteIn_QTree_Nat_address] <= dconWriteIn_QTree_Nat_din;
            memWriteOut_QTree_Nat_q <= dconWriteIn_QTree_Nat_din;
          end
        else
          memWriteOut_QTree_Nat_q <= dconWriteIn_QTree_Nat_mem[dconWriteIn_QTree_Nat_address];
      end
  assign memWriteOut_QTree_Nat_d = {memWriteOut_QTree_Nat_q,
                                    memWriteOut_QTree_Nat_we,
                                    memWriteOut_QTree_Nat_valid};
  assign dconWriteIn_QTree_Nat_r = ((! memWriteOut_QTree_Nat_valid) || memWriteOut_QTree_Nat_r);
  logic [31:0] profiling_MemIn_QTree_Nat_read;
  logic [31:0] profiling_MemIn_QTree_Nat_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_QTree_Nat_write <= 0;
        profiling_MemIn_QTree_Nat_read <= 0;
      end
    else
      if ((dconWriteIn_QTree_Nat_we == 1'd1))
        profiling_MemIn_QTree_Nat_write <= (profiling_MemIn_QTree_Nat_write + 1);
      else
        if ((memWriteOut_QTree_Nat_valid == 1'd1))
          profiling_MemIn_QTree_Nat_read <= (profiling_MemIn_QTree_Nat_read + 1);
  
  /* mergectrl (Ty C5,Ty QTree_Nat) : [(lizzieLet14_1_argbuf,QTree_Nat),
                                  (lizzieLet15_1_argbuf,QTree_Nat),
                                  (lizzieLet16_1_argbuf,QTree_Nat),
                                  (lizzieLet18_1_argbuf,QTree_Nat),
                                  (lizzieLet32_1_argbuf,QTree_Nat)] > (writeMerge_choice_QTree_Nat,C5) (writeMerge_data_QTree_Nat,QTree_Nat) */
  logic [4:0] lizzieLet14_1_argbuf_select_d;
  assign lizzieLet14_1_argbuf_select_d = ((| lizzieLet14_1_argbuf_select_q) ? lizzieLet14_1_argbuf_select_q :
                                          (lizzieLet14_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet15_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet16_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet18_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet32_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet14_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet14_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet14_1_argbuf_select_q <= (lizzieLet14_1_argbuf_done ? 5'd0 :
                                        lizzieLet14_1_argbuf_select_d);
  logic [1:0] lizzieLet14_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet14_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet14_1_argbuf_emit_q <= (lizzieLet14_1_argbuf_done ? 2'd0 :
                                      lizzieLet14_1_argbuf_emit_d);
  logic [1:0] lizzieLet14_1_argbuf_emit_d;
  assign lizzieLet14_1_argbuf_emit_d = (lizzieLet14_1_argbuf_emit_q | ({writeMerge_choice_QTree_Nat_d[0],
                                                                        writeMerge_data_QTree_Nat_d[0]} & {writeMerge_choice_QTree_Nat_r,
                                                                                                           writeMerge_data_QTree_Nat_r}));
  logic lizzieLet14_1_argbuf_done;
  assign lizzieLet14_1_argbuf_done = (& lizzieLet14_1_argbuf_emit_d);
  assign {lizzieLet32_1_argbuf_r,
          lizzieLet18_1_argbuf_r,
          lizzieLet16_1_argbuf_r,
          lizzieLet15_1_argbuf_r,
          lizzieLet14_1_argbuf_r} = (lizzieLet14_1_argbuf_done ? lizzieLet14_1_argbuf_select_d :
                                     5'd0);
  assign writeMerge_data_QTree_Nat_d = ((lizzieLet14_1_argbuf_select_d[0] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet14_1_argbuf_d :
                                        ((lizzieLet14_1_argbuf_select_d[1] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet15_1_argbuf_d :
                                         ((lizzieLet14_1_argbuf_select_d[2] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet16_1_argbuf_d :
                                          ((lizzieLet14_1_argbuf_select_d[3] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet18_1_argbuf_d :
                                           ((lizzieLet14_1_argbuf_select_d[4] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet32_1_argbuf_d :
                                            {66'd0, 1'd0})))));
  assign writeMerge_choice_QTree_Nat_d = ((lizzieLet14_1_argbuf_select_d[0] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                          ((lizzieLet14_1_argbuf_select_d[1] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                           ((lizzieLet14_1_argbuf_select_d[2] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                            ((lizzieLet14_1_argbuf_select_d[3] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                             ((lizzieLet14_1_argbuf_select_d[4] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                              {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_QTree_Nat) : (writeMerge_choice_QTree_Nat,C5) (demuxWriteResult_QTree_Nat,Pointer_QTree_Nat) > [(writeQTree_NatlizzieLet14_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet15_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet16_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet18_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet32_1_argbuf,Pointer_QTree_Nat)] */
  logic [4:0] demuxWriteResult_QTree_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Nat_d[0] && demuxWriteResult_QTree_Nat_d[0]))
      unique case (writeMerge_choice_QTree_Nat_d[3:1])
        3'd0: demuxWriteResult_QTree_Nat_onehotd = 5'd1;
        3'd1: demuxWriteResult_QTree_Nat_onehotd = 5'd2;
        3'd2: demuxWriteResult_QTree_Nat_onehotd = 5'd4;
        3'd3: demuxWriteResult_QTree_Nat_onehotd = 5'd8;
        3'd4: demuxWriteResult_QTree_Nat_onehotd = 5'd16;
        default: demuxWriteResult_QTree_Nat_onehotd = 5'd0;
      endcase
    else demuxWriteResult_QTree_Nat_onehotd = 5'd0;
  assign writeQTree_NatlizzieLet14_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[0]};
  assign writeQTree_NatlizzieLet15_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[1]};
  assign writeQTree_NatlizzieLet16_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[2]};
  assign writeQTree_NatlizzieLet18_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[3]};
  assign writeQTree_NatlizzieLet32_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[4]};
  assign demuxWriteResult_QTree_Nat_r = (| (demuxWriteResult_QTree_Nat_onehotd & {writeQTree_NatlizzieLet32_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet18_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet16_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet15_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet14_1_argbuf_r}));
  assign writeMerge_choice_QTree_Nat_r = demuxWriteResult_QTree_Nat_r;
  
  /* dcon (Ty MemIn_QTree_Nat,
      Dcon WriteIn_QTree_Nat) : [(forkHP1_QTree_Na2,Word16#),
                                 (writeMerge_data_QTree_Nat,QTree_Nat)] > (dconWriteIn_QTree_Nat,MemIn_QTree_Nat) */
  assign dconWriteIn_QTree_Nat_d = WriteIn_QTree_Nat_dc((& {forkHP1_QTree_Na2_d[0],
                                                            writeMerge_data_QTree_Nat_d[0]}), forkHP1_QTree_Na2_d, writeMerge_data_QTree_Nat_d);
  assign {forkHP1_QTree_Na2_r,
          writeMerge_data_QTree_Nat_r} = {2 {(dconWriteIn_QTree_Nat_r && dconWriteIn_QTree_Nat_d[0])}};
  
  /* dcon (Ty Pointer_QTree_Nat,
      Dcon Pointer_QTree_Nat) : [(forkHP1_QTree_Na3,Word16#)] > (dconPtr_QTree_Nat,Pointer_QTree_Nat) */
  assign dconPtr_QTree_Nat_d = Pointer_QTree_Nat_dc((& {forkHP1_QTree_Na3_d[0]}), forkHP1_QTree_Na3_d);
  assign {forkHP1_QTree_Na3_r} = {1 {(dconPtr_QTree_Nat_r && dconPtr_QTree_Nat_d[0])}};
  
  /* demux (Ty MemOut_QTree_Nat,
       Ty Pointer_QTree_Nat) : (memWriteOut_QTree_Nat,MemOut_QTree_Nat) (dconPtr_QTree_Nat,Pointer_QTree_Nat) > [(_62,Pointer_QTree_Nat),
                                                                                                                 (demuxWriteResult_QTree_Nat,Pointer_QTree_Nat)] */
  logic [1:0] dconPtr_QTree_Nat_onehotd;
  always_comb
    if ((memWriteOut_QTree_Nat_d[0] && dconPtr_QTree_Nat_d[0]))
      unique case (memWriteOut_QTree_Nat_d[1:1])
        1'd0: dconPtr_QTree_Nat_onehotd = 2'd1;
        1'd1: dconPtr_QTree_Nat_onehotd = 2'd2;
        default: dconPtr_QTree_Nat_onehotd = 2'd0;
      endcase
    else dconPtr_QTree_Nat_onehotd = 2'd0;
  assign _62_d = {dconPtr_QTree_Nat_d[16:1],
                  dconPtr_QTree_Nat_onehotd[0]};
  assign demuxWriteResult_QTree_Nat_d = {dconPtr_QTree_Nat_d[16:1],
                                         dconPtr_QTree_Nat_onehotd[1]};
  assign dconPtr_QTree_Nat_r = (| (dconPtr_QTree_Nat_onehotd & {demuxWriteResult_QTree_Nat_r,
                                                                _62_r}));
  assign memWriteOut_QTree_Nat_r = dconPtr_QTree_Nat_r;
  
  /* const (Ty Word16#,
       Lit 0) : (go__10,Go) > (initHP_CTmain_map'_Bool_Nat,Word16#) */
  assign \initHP_CTmain_map'_Bool_Nat_d  = {16'd0, go__10_d[0]};
  assign go__10_r = \initHP_CTmain_map'_Bool_Nat_r ;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CTmain_map'_Bool_Nat1,Go) > (incrHP_CTmain_map'_Bool_Nat,Word16#) */
  assign \incrHP_CTmain_map'_Bool_Nat_d  = {16'd1,
                                            \incrHP_CTmain_map'_Bool_Nat1_d [0]};
  assign \incrHP_CTmain_map'_Bool_Nat1_r  = \incrHP_CTmain_map'_Bool_Nat_r ;
  
  /* merge (Ty Go) : [(go__11,Go),
                 (incrHP_CTmain_map'_Bool_Nat2,Go)] > (incrHP_mergeCTmain_map'_Bool_Nat,Go) */
  logic [1:0] \incrHP_mergeCTmain_map'_Bool_Nat_selected ;
  logic [1:0] \incrHP_mergeCTmain_map'_Bool_Nat_select ;
  always_comb
    begin
      \incrHP_mergeCTmain_map'_Bool_Nat_selected  = 2'd0;
      if ((| \incrHP_mergeCTmain_map'_Bool_Nat_select ))
        \incrHP_mergeCTmain_map'_Bool_Nat_selected  = \incrHP_mergeCTmain_map'_Bool_Nat_select ;
      else
        if (go__11_d[0])
          \incrHP_mergeCTmain_map'_Bool_Nat_selected [0] = 1'd1;
        else if (\incrHP_CTmain_map'_Bool_Nat2_d [0])
          \incrHP_mergeCTmain_map'_Bool_Nat_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTmain_map'_Bool_Nat_select  <= 2'd0;
    else
      \incrHP_mergeCTmain_map'_Bool_Nat_select  <= (\incrHP_mergeCTmain_map'_Bool_Nat_r  ? 2'd0 :
                                                    \incrHP_mergeCTmain_map'_Bool_Nat_selected );
  always_comb
    if (\incrHP_mergeCTmain_map'_Bool_Nat_selected [0])
      \incrHP_mergeCTmain_map'_Bool_Nat_d  = go__11_d;
    else if (\incrHP_mergeCTmain_map'_Bool_Nat_selected [1])
      \incrHP_mergeCTmain_map'_Bool_Nat_d  = \incrHP_CTmain_map'_Bool_Nat2_d ;
    else \incrHP_mergeCTmain_map'_Bool_Nat_d  = 1'd0;
  assign {\incrHP_CTmain_map'_Bool_Nat2_r ,
          go__11_r} = (\incrHP_mergeCTmain_map'_Bool_Nat_r  ? \incrHP_mergeCTmain_map'_Bool_Nat_selected  :
                       2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTmain_map'_Bool_Nat_buf,Go) > [(incrHP_CTmain_map'_Bool_Nat1,Go),
                                                            (incrHP_CTmain_map'_Bool_Nat2,Go)] */
  logic [1:0] \incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted ;
  logic [1:0] \incrHP_mergeCTmain_map'_Bool_Nat_buf_done ;
  assign \incrHP_CTmain_map'_Bool_Nat1_d  = (\incrHP_mergeCTmain_map'_Bool_Nat_buf_d [0] && (! \incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted [0]));
  assign \incrHP_CTmain_map'_Bool_Nat2_d  = (\incrHP_mergeCTmain_map'_Bool_Nat_buf_d [0] && (! \incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted [1]));
  assign \incrHP_mergeCTmain_map'_Bool_Nat_buf_done  = (\incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted  | ({\incrHP_CTmain_map'_Bool_Nat2_d [0],
                                                                                                           \incrHP_CTmain_map'_Bool_Nat1_d [0]} & {\incrHP_CTmain_map'_Bool_Nat2_r ,
                                                                                                                                                   \incrHP_CTmain_map'_Bool_Nat1_r }));
  assign \incrHP_mergeCTmain_map'_Bool_Nat_buf_r  = (& \incrHP_mergeCTmain_map'_Bool_Nat_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted  <= 2'd0;
    else
      \incrHP_mergeCTmain_map'_Bool_Nat_buf_emitted  <= (\incrHP_mergeCTmain_map'_Bool_Nat_buf_r  ? 2'd0 :
                                                         \incrHP_mergeCTmain_map'_Bool_Nat_buf_done );
  
  /* op_add (Ty Word16#) : (incrHP_CTmain_map'_Bool_Nat,Word16#) (forkHP1_CTmain_map'_Bool_Nat,Word16#) > (addHP_CTmain_map'_Bool_Nat,Word16#) */
  assign \addHP_CTmain_map'_Bool_Nat_d  = {(\incrHP_CTmain_map'_Bool_Nat_d [16:1] + \forkHP1_CTmain_map'_Bool_Nat_d [16:1]),
                                           (\incrHP_CTmain_map'_Bool_Nat_d [0] && \forkHP1_CTmain_map'_Bool_Nat_d [0])};
  assign {\incrHP_CTmain_map'_Bool_Nat_r ,
          \forkHP1_CTmain_map'_Bool_Nat_r } = {2 {(\addHP_CTmain_map'_Bool_Nat_r  && \addHP_CTmain_map'_Bool_Nat_d [0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTmain_map'_Bool_Nat,Word16#),
                      (addHP_CTmain_map'_Bool_Nat,Word16#)] > (mergeHP_CTmain_map'_Bool_Nat,Word16#) */
  logic [1:0] \mergeHP_CTmain_map'_Bool_Nat_selected ;
  logic [1:0] \mergeHP_CTmain_map'_Bool_Nat_select ;
  always_comb
    begin
      \mergeHP_CTmain_map'_Bool_Nat_selected  = 2'd0;
      if ((| \mergeHP_CTmain_map'_Bool_Nat_select ))
        \mergeHP_CTmain_map'_Bool_Nat_selected  = \mergeHP_CTmain_map'_Bool_Nat_select ;
      else
        if (\initHP_CTmain_map'_Bool_Nat_d [0])
          \mergeHP_CTmain_map'_Bool_Nat_selected [0] = 1'd1;
        else if (\addHP_CTmain_map'_Bool_Nat_d [0])
          \mergeHP_CTmain_map'_Bool_Nat_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \mergeHP_CTmain_map'_Bool_Nat_select  <= 2'd0;
    else
      \mergeHP_CTmain_map'_Bool_Nat_select  <= (\mergeHP_CTmain_map'_Bool_Nat_r  ? 2'd0 :
                                                \mergeHP_CTmain_map'_Bool_Nat_selected );
  always_comb
    if (\mergeHP_CTmain_map'_Bool_Nat_selected [0])
      \mergeHP_CTmain_map'_Bool_Nat_d  = \initHP_CTmain_map'_Bool_Nat_d ;
    else if (\mergeHP_CTmain_map'_Bool_Nat_selected [1])
      \mergeHP_CTmain_map'_Bool_Nat_d  = \addHP_CTmain_map'_Bool_Nat_d ;
    else \mergeHP_CTmain_map'_Bool_Nat_d  = {16'd0, 1'd0};
  assign {\addHP_CTmain_map'_Bool_Nat_r ,
          \initHP_CTmain_map'_Bool_Nat_r } = (\mergeHP_CTmain_map'_Bool_Nat_r  ? \mergeHP_CTmain_map'_Bool_Nat_selected  :
                                              2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTmain_map'_Bool_Nat,Go) > (incrHP_mergeCTmain_map'_Bool_Nat_buf,Go) */
  Go_t \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d ;
  logic \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_r ;
  assign \incrHP_mergeCTmain_map'_Bool_Nat_r  = ((! \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d [0]) || \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d  <= 1'd0;
    else
      if (\incrHP_mergeCTmain_map'_Bool_Nat_r )
        \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d  <= \incrHP_mergeCTmain_map'_Bool_Nat_d ;
  Go_t \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf ;
  assign \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_r  = (! \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf [0]);
  assign \incrHP_mergeCTmain_map'_Bool_Nat_buf_d  = (\incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf [0] ? \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf  :
                                                     \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf  <= 1'd0;
    else
      if ((\incrHP_mergeCTmain_map'_Bool_Nat_buf_r  && \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf [0]))
        \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf  <= 1'd0;
      else if (((! \incrHP_mergeCTmain_map'_Bool_Nat_buf_r ) && (! \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf [0])))
        \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_buf  <= \incrHP_mergeCTmain_map'_Bool_Nat_bufchan_d ;
  
  /* buf (Ty Word16#) : (mergeHP_CTmain_map'_Bool_Nat,Word16#) > (mergeHP_CTmain_map'_Bool_Nat_buf,Word16#) */
  \Word16#_t  \mergeHP_CTmain_map'_Bool_Nat_bufchan_d ;
  logic \mergeHP_CTmain_map'_Bool_Nat_bufchan_r ;
  assign \mergeHP_CTmain_map'_Bool_Nat_r  = ((! \mergeHP_CTmain_map'_Bool_Nat_bufchan_d [0]) || \mergeHP_CTmain_map'_Bool_Nat_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTmain_map'_Bool_Nat_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\mergeHP_CTmain_map'_Bool_Nat_r )
        \mergeHP_CTmain_map'_Bool_Nat_bufchan_d  <= \mergeHP_CTmain_map'_Bool_Nat_d ;
  \Word16#_t  \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf ;
  assign \mergeHP_CTmain_map'_Bool_Nat_bufchan_r  = (! \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf [0]);
  assign \mergeHP_CTmain_map'_Bool_Nat_buf_d  = (\mergeHP_CTmain_map'_Bool_Nat_bufchan_buf [0] ? \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf  :
                                                 \mergeHP_CTmain_map'_Bool_Nat_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\mergeHP_CTmain_map'_Bool_Nat_buf_r  && \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf [0]))
        \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \mergeHP_CTmain_map'_Bool_Nat_buf_r ) && (! \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf [0])))
        \mergeHP_CTmain_map'_Bool_Nat_bufchan_buf  <= \mergeHP_CTmain_map'_Bool_Nat_bufchan_d ;
  
  /* fork (Ty Word16#) : (mergeHP_CTmain_map'_Bool_Nat_buf,Word16#) > [(forkHP1_CTmain_map'_Bool_Nat,Word16#),
                                                                  (forkHP1_CTmain_map'_Bool_Na2,Word16#),
                                                                  (forkHP1_CTmain_map'_Bool_Na3,Word16#)] */
  logic [2:0] \mergeHP_CTmain_map'_Bool_Nat_buf_emitted ;
  logic [2:0] \mergeHP_CTmain_map'_Bool_Nat_buf_done ;
  assign \forkHP1_CTmain_map'_Bool_Nat_d  = {\mergeHP_CTmain_map'_Bool_Nat_buf_d [16:1],
                                             (\mergeHP_CTmain_map'_Bool_Nat_buf_d [0] && (! \mergeHP_CTmain_map'_Bool_Nat_buf_emitted [0]))};
  assign \forkHP1_CTmain_map'_Bool_Na2_d  = {\mergeHP_CTmain_map'_Bool_Nat_buf_d [16:1],
                                             (\mergeHP_CTmain_map'_Bool_Nat_buf_d [0] && (! \mergeHP_CTmain_map'_Bool_Nat_buf_emitted [1]))};
  assign \forkHP1_CTmain_map'_Bool_Na3_d  = {\mergeHP_CTmain_map'_Bool_Nat_buf_d [16:1],
                                             (\mergeHP_CTmain_map'_Bool_Nat_buf_d [0] && (! \mergeHP_CTmain_map'_Bool_Nat_buf_emitted [2]))};
  assign \mergeHP_CTmain_map'_Bool_Nat_buf_done  = (\mergeHP_CTmain_map'_Bool_Nat_buf_emitted  | ({\forkHP1_CTmain_map'_Bool_Na3_d [0],
                                                                                                   \forkHP1_CTmain_map'_Bool_Na2_d [0],
                                                                                                   \forkHP1_CTmain_map'_Bool_Nat_d [0]} & {\forkHP1_CTmain_map'_Bool_Na3_r ,
                                                                                                                                           \forkHP1_CTmain_map'_Bool_Na2_r ,
                                                                                                                                           \forkHP1_CTmain_map'_Bool_Nat_r }));
  assign \mergeHP_CTmain_map'_Bool_Nat_buf_r  = (& \mergeHP_CTmain_map'_Bool_Nat_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTmain_map'_Bool_Nat_buf_emitted  <= 3'd0;
    else
      \mergeHP_CTmain_map'_Bool_Nat_buf_emitted  <= (\mergeHP_CTmain_map'_Bool_Nat_buf_r  ? 3'd0 :
                                                     \mergeHP_CTmain_map'_Bool_Nat_buf_done );
  
  /* mergectrl (Ty C2,
           Ty MemIn_CTmain_map'_Bool_Nat) : [(dconReadIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat),
                                             (dconWriteIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat)] > (memMergeChoice_CTmain_map'_Bool_Nat,C2) (memMergeIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat) */
  logic [1:0] \dconReadIn_CTmain_map'_Bool_Nat_select_d ;
  assign \dconReadIn_CTmain_map'_Bool_Nat_select_d  = ((| \dconReadIn_CTmain_map'_Bool_Nat_select_q ) ? \dconReadIn_CTmain_map'_Bool_Nat_select_q  :
                                                       (\dconReadIn_CTmain_map'_Bool_Nat_d [0] ? 2'd1 :
                                                        (\dconWriteIn_CTmain_map'_Bool_Nat_d [0] ? 2'd2 :
                                                         2'd0)));
  logic [1:0] \dconReadIn_CTmain_map'_Bool_Nat_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \dconReadIn_CTmain_map'_Bool_Nat_select_q  <= 2'd0;
    else
      \dconReadIn_CTmain_map'_Bool_Nat_select_q  <= (\dconReadIn_CTmain_map'_Bool_Nat_done  ? 2'd0 :
                                                     \dconReadIn_CTmain_map'_Bool_Nat_select_d );
  logic [1:0] \dconReadIn_CTmain_map'_Bool_Nat_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \dconReadIn_CTmain_map'_Bool_Nat_emit_q  <= 2'd0;
    else
      \dconReadIn_CTmain_map'_Bool_Nat_emit_q  <= (\dconReadIn_CTmain_map'_Bool_Nat_done  ? 2'd0 :
                                                   \dconReadIn_CTmain_map'_Bool_Nat_emit_d );
  logic [1:0] \dconReadIn_CTmain_map'_Bool_Nat_emit_d ;
  assign \dconReadIn_CTmain_map'_Bool_Nat_emit_d  = (\dconReadIn_CTmain_map'_Bool_Nat_emit_q  | ({\memMergeChoice_CTmain_map'_Bool_Nat_d [0],
                                                                                                  \memMergeIn_CTmain_map'_Bool_Nat_d [0]} & {\memMergeChoice_CTmain_map'_Bool_Nat_r ,
                                                                                                                                             \memMergeIn_CTmain_map'_Bool_Nat_r }));
  logic \dconReadIn_CTmain_map'_Bool_Nat_done ;
  assign \dconReadIn_CTmain_map'_Bool_Nat_done  = (& \dconReadIn_CTmain_map'_Bool_Nat_emit_d );
  assign {\dconWriteIn_CTmain_map'_Bool_Nat_r ,
          \dconReadIn_CTmain_map'_Bool_Nat_r } = (\dconReadIn_CTmain_map'_Bool_Nat_done  ? \dconReadIn_CTmain_map'_Bool_Nat_select_d  :
                                                  2'd0);
  assign \memMergeIn_CTmain_map'_Bool_Nat_d  = ((\dconReadIn_CTmain_map'_Bool_Nat_select_d [0] && (! \dconReadIn_CTmain_map'_Bool_Nat_emit_q [0])) ? \dconReadIn_CTmain_map'_Bool_Nat_d  :
                                                ((\dconReadIn_CTmain_map'_Bool_Nat_select_d [1] && (! \dconReadIn_CTmain_map'_Bool_Nat_emit_q [0])) ? \dconWriteIn_CTmain_map'_Bool_Nat_d  :
                                                 {84'd0, 1'd0}));
  assign \memMergeChoice_CTmain_map'_Bool_Nat_d  = ((\dconReadIn_CTmain_map'_Bool_Nat_select_d [0] && (! \dconReadIn_CTmain_map'_Bool_Nat_emit_q [1])) ? C1_2_dc(1'd1) :
                                                    ((\dconReadIn_CTmain_map'_Bool_Nat_select_d [1] && (! \dconReadIn_CTmain_map'_Bool_Nat_emit_q [1])) ? C2_2_dc(1'd1) :
                                                     {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTmain_map'_Bool_Nat,
      Ty MemOut_CTmain_map'_Bool_Nat) : (memMergeIn_CTmain_map'_Bool_Nat_dbuf,MemIn_CTmain_map'_Bool_Nat) > (memOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat) */
  logic [66:0] \memMergeIn_CTmain_map'_Bool_Nat_dbuf_mem [65535:0];
  logic [15:0] \memMergeIn_CTmain_map'_Bool_Nat_dbuf_address ;
  logic [66:0] \memMergeIn_CTmain_map'_Bool_Nat_dbuf_din ;
  logic [66:0] \memOut_CTmain_map'_Bool_Nat_q ;
  logic \memOut_CTmain_map'_Bool_Nat_valid ;
  logic \memMergeIn_CTmain_map'_Bool_Nat_dbuf_we ;
  logic \memOut_CTmain_map'_Bool_Nat_we ;
  assign \memMergeIn_CTmain_map'_Bool_Nat_dbuf_din  = \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [84:18];
  assign \memMergeIn_CTmain_map'_Bool_Nat_dbuf_address  = \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [17:2];
  assign \memMergeIn_CTmain_map'_Bool_Nat_dbuf_we  = (\memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [1:1] && \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        \memOut_CTmain_map'_Bool_Nat_we  <= 1'd0;
        \memOut_CTmain_map'_Bool_Nat_valid  <= 1'd0;
      end
    else
      begin
        \memOut_CTmain_map'_Bool_Nat_we  <= \memMergeIn_CTmain_map'_Bool_Nat_dbuf_we ;
        \memOut_CTmain_map'_Bool_Nat_valid  <= \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [0];
        if (\memMergeIn_CTmain_map'_Bool_Nat_dbuf_we )
          begin
            \memMergeIn_CTmain_map'_Bool_Nat_dbuf_mem [\memMergeIn_CTmain_map'_Bool_Nat_dbuf_address ] <= \memMergeIn_CTmain_map'_Bool_Nat_dbuf_din ;
            \memOut_CTmain_map'_Bool_Nat_q  <= \memMergeIn_CTmain_map'_Bool_Nat_dbuf_din ;
          end
        else
          \memOut_CTmain_map'_Bool_Nat_q  <= \memMergeIn_CTmain_map'_Bool_Nat_dbuf_mem [\memMergeIn_CTmain_map'_Bool_Nat_dbuf_address ];
      end
  assign \memOut_CTmain_map'_Bool_Nat_d  = {\memOut_CTmain_map'_Bool_Nat_q ,
                                            \memOut_CTmain_map'_Bool_Nat_we ,
                                            \memOut_CTmain_map'_Bool_Nat_valid };
  assign \memMergeIn_CTmain_map'_Bool_Nat_dbuf_r  = ((! \memOut_CTmain_map'_Bool_Nat_valid ) || \memOut_CTmain_map'_Bool_Nat_r );
  logic [31:0] \profiling_MemIn_CTmain_map'_Bool_Nat_read ;
  logic [31:0] \profiling_MemIn_CTmain_map'_Bool_Nat_write ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        \profiling_MemIn_CTmain_map'_Bool_Nat_write  <= 0;
        \profiling_MemIn_CTmain_map'_Bool_Nat_read  <= 0;
      end
    else
      if ((\memMergeIn_CTmain_map'_Bool_Nat_dbuf_we  == 1'd1))
        \profiling_MemIn_CTmain_map'_Bool_Nat_write  <= (\profiling_MemIn_CTmain_map'_Bool_Nat_write  + 1);
      else
        if ((\memOut_CTmain_map'_Bool_Nat_valid  == 1'd1))
          \profiling_MemIn_CTmain_map'_Bool_Nat_read  <= (\profiling_MemIn_CTmain_map'_Bool_Nat_read  + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CTmain_map'_Bool_Nat) : (memMergeChoice_CTmain_map'_Bool_Nat,C2) (memOut_CTmain_map'_Bool_Nat_dbuf,MemOut_CTmain_map'_Bool_Nat) > [(memReadOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat),
                                                                                                                                                    (memWriteOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat)] */
  logic [1:0] \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd ;
  always_comb
    if ((\memMergeChoice_CTmain_map'_Bool_Nat_d [0] && \memOut_CTmain_map'_Bool_Nat_dbuf_d [0]))
      unique case (\memMergeChoice_CTmain_map'_Bool_Nat_d [1:1])
        1'd0: \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd  = 2'd1;
        1'd1: \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd  = 2'd2;
        default: \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd  = 2'd0;
      endcase
    else \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd  = 2'd0;
  assign \memReadOut_CTmain_map'_Bool_Nat_d  = {\memOut_CTmain_map'_Bool_Nat_dbuf_d [68:1],
                                                \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd [0]};
  assign \memWriteOut_CTmain_map'_Bool_Nat_d  = {\memOut_CTmain_map'_Bool_Nat_dbuf_d [68:1],
                                                 \memOut_CTmain_map'_Bool_Nat_dbuf_onehotd [1]};
  assign \memOut_CTmain_map'_Bool_Nat_dbuf_r  = (| (\memOut_CTmain_map'_Bool_Nat_dbuf_onehotd  & {\memWriteOut_CTmain_map'_Bool_Nat_r ,
                                                                                                  \memReadOut_CTmain_map'_Bool_Nat_r }));
  assign \memMergeChoice_CTmain_map'_Bool_Nat_r  = \memOut_CTmain_map'_Bool_Nat_dbuf_r ;
  
  /* dbuf (Ty MemIn_CTmain_map'_Bool_Nat) : (memMergeIn_CTmain_map'_Bool_Nat_rbuf,MemIn_CTmain_map'_Bool_Nat) > (memMergeIn_CTmain_map'_Bool_Nat_dbuf,MemIn_CTmain_map'_Bool_Nat) */
  assign \memMergeIn_CTmain_map'_Bool_Nat_rbuf_r  = ((! \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d [0]) || \memMergeIn_CTmain_map'_Bool_Nat_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d  <= {84'd0, 1'd0};
    else
      if (\memMergeIn_CTmain_map'_Bool_Nat_rbuf_r )
        \memMergeIn_CTmain_map'_Bool_Nat_dbuf_d  <= \memMergeIn_CTmain_map'_Bool_Nat_rbuf_d ;
  
  /* rbuf (Ty MemIn_CTmain_map'_Bool_Nat) : (memMergeIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat) > (memMergeIn_CTmain_map'_Bool_Nat_rbuf,MemIn_CTmain_map'_Bool_Nat) */
  \MemIn_CTmain_map'_Bool_Nat_t  \memMergeIn_CTmain_map'_Bool_Nat_buf ;
  assign \memMergeIn_CTmain_map'_Bool_Nat_r  = (! \memMergeIn_CTmain_map'_Bool_Nat_buf [0]);
  assign \memMergeIn_CTmain_map'_Bool_Nat_rbuf_d  = (\memMergeIn_CTmain_map'_Bool_Nat_buf [0] ? \memMergeIn_CTmain_map'_Bool_Nat_buf  :
                                                     \memMergeIn_CTmain_map'_Bool_Nat_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memMergeIn_CTmain_map'_Bool_Nat_buf  <= {84'd0, 1'd0};
    else
      if ((\memMergeIn_CTmain_map'_Bool_Nat_rbuf_r  && \memMergeIn_CTmain_map'_Bool_Nat_buf [0]))
        \memMergeIn_CTmain_map'_Bool_Nat_buf  <= {84'd0, 1'd0};
      else if (((! \memMergeIn_CTmain_map'_Bool_Nat_rbuf_r ) && (! \memMergeIn_CTmain_map'_Bool_Nat_buf [0])))
        \memMergeIn_CTmain_map'_Bool_Nat_buf  <= \memMergeIn_CTmain_map'_Bool_Nat_d ;
  
  /* dbuf (Ty MemOut_CTmain_map'_Bool_Nat) : (memOut_CTmain_map'_Bool_Nat_rbuf,MemOut_CTmain_map'_Bool_Nat) > (memOut_CTmain_map'_Bool_Nat_dbuf,MemOut_CTmain_map'_Bool_Nat) */
  assign \memOut_CTmain_map'_Bool_Nat_rbuf_r  = ((! \memOut_CTmain_map'_Bool_Nat_dbuf_d [0]) || \memOut_CTmain_map'_Bool_Nat_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memOut_CTmain_map'_Bool_Nat_dbuf_d  <= {68'd0, 1'd0};
    else
      if (\memOut_CTmain_map'_Bool_Nat_rbuf_r )
        \memOut_CTmain_map'_Bool_Nat_dbuf_d  <= \memOut_CTmain_map'_Bool_Nat_rbuf_d ;
  
  /* rbuf (Ty MemOut_CTmain_map'_Bool_Nat) : (memOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat) > (memOut_CTmain_map'_Bool_Nat_rbuf,MemOut_CTmain_map'_Bool_Nat) */
  \MemOut_CTmain_map'_Bool_Nat_t  \memOut_CTmain_map'_Bool_Nat_buf ;
  assign \memOut_CTmain_map'_Bool_Nat_r  = (! \memOut_CTmain_map'_Bool_Nat_buf [0]);
  assign \memOut_CTmain_map'_Bool_Nat_rbuf_d  = (\memOut_CTmain_map'_Bool_Nat_buf [0] ? \memOut_CTmain_map'_Bool_Nat_buf  :
                                                 \memOut_CTmain_map'_Bool_Nat_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memOut_CTmain_map'_Bool_Nat_buf  <= {68'd0, 1'd0};
    else
      if ((\memOut_CTmain_map'_Bool_Nat_rbuf_r  && \memOut_CTmain_map'_Bool_Nat_buf [0]))
        \memOut_CTmain_map'_Bool_Nat_buf  <= {68'd0, 1'd0};
      else if (((! \memOut_CTmain_map'_Bool_Nat_rbuf_r ) && (! \memOut_CTmain_map'_Bool_Nat_buf [0])))
        \memOut_CTmain_map'_Bool_Nat_buf  <= \memOut_CTmain_map'_Bool_Nat_d ;
  
  /* destruct (Ty Pointer_CTmain_map'_Bool_Nat,
          Dcon Pointer_CTmain_map'_Bool_Nat) : (scfarg_0_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > [(destructReadIn_CTmain_map'_Bool_Nat,Word16#)] */
  assign \destructReadIn_CTmain_map'_Bool_Nat_d  = {scfarg_0_1_1_argbuf_d[16:1],
                                                    scfarg_0_1_1_argbuf_d[0]};
  assign scfarg_0_1_1_argbuf_r = \destructReadIn_CTmain_map'_Bool_Nat_r ;
  
  /* dcon (Ty MemIn_CTmain_map'_Bool_Nat,
      Dcon ReadIn_CTmain_map'_Bool_Nat) : [(destructReadIn_CTmain_map'_Bool_Nat,Word16#)] > (dconReadIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat) */
  assign \dconReadIn_CTmain_map'_Bool_Nat_d  = \ReadIn_CTmain_map'_Bool_Nat_dc ((& {\destructReadIn_CTmain_map'_Bool_Nat_d [0]}), \destructReadIn_CTmain_map'_Bool_Nat_d );
  assign {\destructReadIn_CTmain_map'_Bool_Nat_r } = {1 {(\dconReadIn_CTmain_map'_Bool_Nat_r  && \dconReadIn_CTmain_map'_Bool_Nat_d [0])}};
  
  /* destruct (Ty MemOut_CTmain_map'_Bool_Nat,
          Dcon ReadOut_CTmain_map'_Bool_Nat) : (memReadOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat) > [(readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf,CTmain_map'_Bool_Nat)] */
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_d  = {\memReadOut_CTmain_map'_Bool_Nat_d [68:2],
                                                                    \memReadOut_CTmain_map'_Bool_Nat_d [0]};
  assign \memReadOut_CTmain_map'_Bool_Nat_r  = \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_r ;
  
  /* mergectrl (Ty C5,
           Ty CTmain_map'_Bool_Nat) : [(lizzieLet17_1_argbuf,CTmain_map'_Bool_Nat),
                                       (lizzieLet22_1_argbuf,CTmain_map'_Bool_Nat),
                                       (lizzieLet29_1_argbuf,CTmain_map'_Bool_Nat),
                                       (lizzieLet30_1_argbuf,CTmain_map'_Bool_Nat),
                                       (lizzieLet31_1_argbuf,CTmain_map'_Bool_Nat)] > (writeMerge_choice_CTmain_map'_Bool_Nat,C5) (writeMerge_data_CTmain_map'_Bool_Nat,CTmain_map'_Bool_Nat) */
  logic [4:0] lizzieLet17_1_argbuf_select_d;
  assign lizzieLet17_1_argbuf_select_d = ((| lizzieLet17_1_argbuf_select_q) ? lizzieLet17_1_argbuf_select_q :
                                          (lizzieLet17_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet22_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet29_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet30_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet31_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet17_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet17_1_argbuf_select_q <= (lizzieLet17_1_argbuf_done ? 5'd0 :
                                        lizzieLet17_1_argbuf_select_d);
  logic [1:0] lizzieLet17_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet17_1_argbuf_emit_q <= (lizzieLet17_1_argbuf_done ? 2'd0 :
                                      lizzieLet17_1_argbuf_emit_d);
  logic [1:0] lizzieLet17_1_argbuf_emit_d;
  assign lizzieLet17_1_argbuf_emit_d = (lizzieLet17_1_argbuf_emit_q | ({\writeMerge_choice_CTmain_map'_Bool_Nat_d [0],
                                                                        \writeMerge_data_CTmain_map'_Bool_Nat_d [0]} & {\writeMerge_choice_CTmain_map'_Bool_Nat_r ,
                                                                                                                        \writeMerge_data_CTmain_map'_Bool_Nat_r }));
  logic lizzieLet17_1_argbuf_done;
  assign lizzieLet17_1_argbuf_done = (& lizzieLet17_1_argbuf_emit_d);
  assign {lizzieLet31_1_argbuf_r,
          lizzieLet30_1_argbuf_r,
          lizzieLet29_1_argbuf_r,
          lizzieLet22_1_argbuf_r,
          lizzieLet17_1_argbuf_r} = (lizzieLet17_1_argbuf_done ? lizzieLet17_1_argbuf_select_d :
                                     5'd0);
  assign \writeMerge_data_CTmain_map'_Bool_Nat_d  = ((lizzieLet17_1_argbuf_select_d[0] && (! lizzieLet17_1_argbuf_emit_q[0])) ? lizzieLet17_1_argbuf_d :
                                                     ((lizzieLet17_1_argbuf_select_d[1] && (! lizzieLet17_1_argbuf_emit_q[0])) ? lizzieLet22_1_argbuf_d :
                                                      ((lizzieLet17_1_argbuf_select_d[2] && (! lizzieLet17_1_argbuf_emit_q[0])) ? lizzieLet29_1_argbuf_d :
                                                       ((lizzieLet17_1_argbuf_select_d[3] && (! lizzieLet17_1_argbuf_emit_q[0])) ? lizzieLet30_1_argbuf_d :
                                                        ((lizzieLet17_1_argbuf_select_d[4] && (! lizzieLet17_1_argbuf_emit_q[0])) ? lizzieLet31_1_argbuf_d :
                                                         {67'd0, 1'd0})))));
  assign \writeMerge_choice_CTmain_map'_Bool_Nat_d  = ((lizzieLet17_1_argbuf_select_d[0] && (! lizzieLet17_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                                       ((lizzieLet17_1_argbuf_select_d[1] && (! lizzieLet17_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                                        ((lizzieLet17_1_argbuf_select_d[2] && (! lizzieLet17_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                                         ((lizzieLet17_1_argbuf_select_d[3] && (! lizzieLet17_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                                          ((lizzieLet17_1_argbuf_select_d[4] && (! lizzieLet17_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                                           {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTmain_map'_Bool_Nat) : (writeMerge_choice_CTmain_map'_Bool_Nat,C5) (demuxWriteResult_CTmain_map'_Bool_Nat,Pointer_CTmain_map'_Bool_Nat) > [(writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                                                              (writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                                                              (writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                                                              (writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                                                              (writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf,Pointer_CTmain_map'_Bool_Nat)] */
  logic [4:0] \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd ;
  always_comb
    if ((\writeMerge_choice_CTmain_map'_Bool_Nat_d [0] && \demuxWriteResult_CTmain_map'_Bool_Nat_d [0]))
      unique case (\writeMerge_choice_CTmain_map'_Bool_Nat_d [3:1])
        3'd0: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd1;
        3'd1: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd2;
        3'd2: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd4;
        3'd3: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd8;
        3'd4: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd16;
        default: \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd0;
      endcase
    else \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  = 5'd0;
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_d  = {\demuxWriteResult_CTmain_map'_Bool_Nat_d [16:1],
                                                              \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd [0]};
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_d  = {\demuxWriteResult_CTmain_map'_Bool_Nat_d [16:1],
                                                              \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd [1]};
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_d  = {\demuxWriteResult_CTmain_map'_Bool_Nat_d [16:1],
                                                              \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd [2]};
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_d  = {\demuxWriteResult_CTmain_map'_Bool_Nat_d [16:1],
                                                              \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd [3]};
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_d  = {\demuxWriteResult_CTmain_map'_Bool_Nat_d [16:1],
                                                              \demuxWriteResult_CTmain_map'_Bool_Nat_onehotd [4]};
  assign \demuxWriteResult_CTmain_map'_Bool_Nat_r  = (| (\demuxWriteResult_CTmain_map'_Bool_Nat_onehotd  & {\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_r ,
                                                                                                            \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_r ,
                                                                                                            \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_r ,
                                                                                                            \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_r ,
                                                                                                            \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_r }));
  assign \writeMerge_choice_CTmain_map'_Bool_Nat_r  = \demuxWriteResult_CTmain_map'_Bool_Nat_r ;
  
  /* dcon (Ty MemIn_CTmain_map'_Bool_Nat,
      Dcon WriteIn_CTmain_map'_Bool_Nat) : [(forkHP1_CTmain_map'_Bool_Na2,Word16#),
                                            (writeMerge_data_CTmain_map'_Bool_Nat,CTmain_map'_Bool_Nat)] > (dconWriteIn_CTmain_map'_Bool_Nat,MemIn_CTmain_map'_Bool_Nat) */
  assign \dconWriteIn_CTmain_map'_Bool_Nat_d  = \WriteIn_CTmain_map'_Bool_Nat_dc ((& {\forkHP1_CTmain_map'_Bool_Na2_d [0],
                                                                                      \writeMerge_data_CTmain_map'_Bool_Nat_d [0]}), \forkHP1_CTmain_map'_Bool_Na2_d , \writeMerge_data_CTmain_map'_Bool_Nat_d );
  assign {\forkHP1_CTmain_map'_Bool_Na2_r ,
          \writeMerge_data_CTmain_map'_Bool_Nat_r } = {2 {(\dconWriteIn_CTmain_map'_Bool_Nat_r  && \dconWriteIn_CTmain_map'_Bool_Nat_d [0])}};
  
  /* dcon (Ty Pointer_CTmain_map'_Bool_Nat,
      Dcon Pointer_CTmain_map'_Bool_Nat) : [(forkHP1_CTmain_map'_Bool_Na3,Word16#)] > (dconPtr_CTmain_map'_Bool_Nat,Pointer_CTmain_map'_Bool_Nat) */
  assign \dconPtr_CTmain_map'_Bool_Nat_d  = \Pointer_CTmain_map'_Bool_Nat_dc ((& {\forkHP1_CTmain_map'_Bool_Na3_d [0]}), \forkHP1_CTmain_map'_Bool_Na3_d );
  assign {\forkHP1_CTmain_map'_Bool_Na3_r } = {1 {(\dconPtr_CTmain_map'_Bool_Nat_r  && \dconPtr_CTmain_map'_Bool_Nat_d [0])}};
  
  /* demux (Ty MemOut_CTmain_map'_Bool_Nat,
       Ty Pointer_CTmain_map'_Bool_Nat) : (memWriteOut_CTmain_map'_Bool_Nat,MemOut_CTmain_map'_Bool_Nat) (dconPtr_CTmain_map'_Bool_Nat,Pointer_CTmain_map'_Bool_Nat) > [(_61,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                                                                        (demuxWriteResult_CTmain_map'_Bool_Nat,Pointer_CTmain_map'_Bool_Nat)] */
  logic [1:0] \dconPtr_CTmain_map'_Bool_Nat_onehotd ;
  always_comb
    if ((\memWriteOut_CTmain_map'_Bool_Nat_d [0] && \dconPtr_CTmain_map'_Bool_Nat_d [0]))
      unique case (\memWriteOut_CTmain_map'_Bool_Nat_d [1:1])
        1'd0: \dconPtr_CTmain_map'_Bool_Nat_onehotd  = 2'd1;
        1'd1: \dconPtr_CTmain_map'_Bool_Nat_onehotd  = 2'd2;
        default: \dconPtr_CTmain_map'_Bool_Nat_onehotd  = 2'd0;
      endcase
    else \dconPtr_CTmain_map'_Bool_Nat_onehotd  = 2'd0;
  assign _61_d = {\dconPtr_CTmain_map'_Bool_Nat_d [16:1],
                  \dconPtr_CTmain_map'_Bool_Nat_onehotd [0]};
  assign \demuxWriteResult_CTmain_map'_Bool_Nat_d  = {\dconPtr_CTmain_map'_Bool_Nat_d [16:1],
                                                      \dconPtr_CTmain_map'_Bool_Nat_onehotd [1]};
  assign \dconPtr_CTmain_map'_Bool_Nat_r  = (| (\dconPtr_CTmain_map'_Bool_Nat_onehotd  & {\demuxWriteResult_CTmain_map'_Bool_Nat_r ,
                                                                                          _61_r}));
  assign \memWriteOut_CTmain_map'_Bool_Nat_r  = \dconPtr_CTmain_map'_Bool_Nat_r ;
  
  /* const (Ty Word16#,Lit 0) : (go__12,Go) > (initHP_Nat,Word16#) */
  assign initHP_Nat_d = {16'd0, go__12_d[0]};
  assign go__12_r = initHP_Nat_r;
  
  /* const (Ty Word16#,Lit 1) : (incrHP_Nat1,Go) > (incrHP_Nat,Word16#) */
  assign incrHP_Nat_d = {16'd1, incrHP_Nat1_d[0]};
  assign incrHP_Nat1_r = incrHP_Nat_r;
  
  /* merge (Ty Go) : [(go__13,Go),
                 (incrHP_Nat2,Go)] > (incrHP_mergeNat,Go) */
  logic [1:0] incrHP_mergeNat_selected;
  logic [1:0] incrHP_mergeNat_select;
  always_comb
    begin
      incrHP_mergeNat_selected = 2'd0;
      if ((| incrHP_mergeNat_select))
        incrHP_mergeNat_selected = incrHP_mergeNat_select;
      else
        if (go__13_d[0]) incrHP_mergeNat_selected[0] = 1'd1;
        else if (incrHP_Nat2_d[0]) incrHP_mergeNat_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeNat_select <= 2'd0;
    else
      incrHP_mergeNat_select <= (incrHP_mergeNat_r ? 2'd0 :
                                 incrHP_mergeNat_selected);
  always_comb
    if (incrHP_mergeNat_selected[0]) incrHP_mergeNat_d = go__13_d;
    else if (incrHP_mergeNat_selected[1])
      incrHP_mergeNat_d = incrHP_Nat2_d;
    else incrHP_mergeNat_d = 1'd0;
  assign {incrHP_Nat2_r,
          go__13_r} = (incrHP_mergeNat_r ? incrHP_mergeNat_selected :
                       2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeNat_buf,Go) > [(incrHP_Nat1,Go),
                                           (incrHP_Nat2,Go)] */
  logic [1:0] incrHP_mergeNat_buf_emitted;
  logic [1:0] incrHP_mergeNat_buf_done;
  assign incrHP_Nat1_d = (incrHP_mergeNat_buf_d[0] && (! incrHP_mergeNat_buf_emitted[0]));
  assign incrHP_Nat2_d = (incrHP_mergeNat_buf_d[0] && (! incrHP_mergeNat_buf_emitted[1]));
  assign incrHP_mergeNat_buf_done = (incrHP_mergeNat_buf_emitted | ({incrHP_Nat2_d[0],
                                                                     incrHP_Nat1_d[0]} & {incrHP_Nat2_r,
                                                                                          incrHP_Nat1_r}));
  assign incrHP_mergeNat_buf_r = (& incrHP_mergeNat_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeNat_buf_emitted <= 2'd0;
    else
      incrHP_mergeNat_buf_emitted <= (incrHP_mergeNat_buf_r ? 2'd0 :
                                      incrHP_mergeNat_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_Nat,Word16#) (forkHP1_Nat,Word16#) > (addHP_Nat,Word16#) */
  assign addHP_Nat_d = {(incrHP_Nat_d[16:1] + forkHP1_Nat_d[16:1]),
                        (incrHP_Nat_d[0] && forkHP1_Nat_d[0])};
  assign {incrHP_Nat_r,
          forkHP1_Nat_r} = {2 {(addHP_Nat_r && addHP_Nat_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_Nat,Word16#),
                      (addHP_Nat,Word16#)] > (mergeHP_Nat,Word16#) */
  logic [1:0] mergeHP_Nat_selected;
  logic [1:0] mergeHP_Nat_select;
  always_comb
    begin
      mergeHP_Nat_selected = 2'd0;
      if ((| mergeHP_Nat_select))
        mergeHP_Nat_selected = mergeHP_Nat_select;
      else
        if (initHP_Nat_d[0]) mergeHP_Nat_selected[0] = 1'd1;
        else if (addHP_Nat_d[0]) mergeHP_Nat_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_Nat_select <= 2'd0;
    else
      mergeHP_Nat_select <= (mergeHP_Nat_r ? 2'd0 :
                             mergeHP_Nat_selected);
  always_comb
    if (mergeHP_Nat_selected[0]) mergeHP_Nat_d = initHP_Nat_d;
    else if (mergeHP_Nat_selected[1]) mergeHP_Nat_d = addHP_Nat_d;
    else mergeHP_Nat_d = {16'd0, 1'd0};
  assign {addHP_Nat_r,
          initHP_Nat_r} = (mergeHP_Nat_r ? mergeHP_Nat_selected :
                           2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeNat,Go) > (incrHP_mergeNat_buf,Go) */
  Go_t incrHP_mergeNat_bufchan_d;
  logic incrHP_mergeNat_bufchan_r;
  assign incrHP_mergeNat_r = ((! incrHP_mergeNat_bufchan_d[0]) || incrHP_mergeNat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeNat_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeNat_r)
        incrHP_mergeNat_bufchan_d <= incrHP_mergeNat_d;
  Go_t incrHP_mergeNat_bufchan_buf;
  assign incrHP_mergeNat_bufchan_r = (! incrHP_mergeNat_bufchan_buf[0]);
  assign incrHP_mergeNat_buf_d = (incrHP_mergeNat_bufchan_buf[0] ? incrHP_mergeNat_bufchan_buf :
                                  incrHP_mergeNat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeNat_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeNat_buf_r && incrHP_mergeNat_bufchan_buf[0]))
        incrHP_mergeNat_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeNat_buf_r) && (! incrHP_mergeNat_bufchan_buf[0])))
        incrHP_mergeNat_bufchan_buf <= incrHP_mergeNat_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_Nat,Word16#) > (mergeHP_Nat_buf,Word16#) */
  \Word16#_t  mergeHP_Nat_bufchan_d;
  logic mergeHP_Nat_bufchan_r;
  assign mergeHP_Nat_r = ((! mergeHP_Nat_bufchan_d[0]) || mergeHP_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_Nat_bufchan_d <= {16'd0, 1'd0};
    else if (mergeHP_Nat_r) mergeHP_Nat_bufchan_d <= mergeHP_Nat_d;
  \Word16#_t  mergeHP_Nat_bufchan_buf;
  assign mergeHP_Nat_bufchan_r = (! mergeHP_Nat_bufchan_buf[0]);
  assign mergeHP_Nat_buf_d = (mergeHP_Nat_bufchan_buf[0] ? mergeHP_Nat_bufchan_buf :
                              mergeHP_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_Nat_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_Nat_buf_r && mergeHP_Nat_bufchan_buf[0]))
        mergeHP_Nat_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_Nat_buf_r) && (! mergeHP_Nat_bufchan_buf[0])))
        mergeHP_Nat_bufchan_buf <= mergeHP_Nat_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_Nat_buf,Word16#) > [(forkHP1_Nat,Word16#),
                                                 (forkHP1_Na2,Word16#),
                                                 (forkHP1_Na3,Word16#)] */
  logic [2:0] mergeHP_Nat_buf_emitted;
  logic [2:0] mergeHP_Nat_buf_done;
  assign forkHP1_Nat_d = {mergeHP_Nat_buf_d[16:1],
                          (mergeHP_Nat_buf_d[0] && (! mergeHP_Nat_buf_emitted[0]))};
  assign forkHP1_Na2_d = {mergeHP_Nat_buf_d[16:1],
                          (mergeHP_Nat_buf_d[0] && (! mergeHP_Nat_buf_emitted[1]))};
  assign forkHP1_Na3_d = {mergeHP_Nat_buf_d[16:1],
                          (mergeHP_Nat_buf_d[0] && (! mergeHP_Nat_buf_emitted[2]))};
  assign mergeHP_Nat_buf_done = (mergeHP_Nat_buf_emitted | ({forkHP1_Na3_d[0],
                                                             forkHP1_Na2_d[0],
                                                             forkHP1_Nat_d[0]} & {forkHP1_Na3_r,
                                                                                  forkHP1_Na2_r,
                                                                                  forkHP1_Nat_r}));
  assign mergeHP_Nat_buf_r = (& mergeHP_Nat_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_Nat_buf_emitted <= 3'd0;
    else
      mergeHP_Nat_buf_emitted <= (mergeHP_Nat_buf_r ? 3'd0 :
                                  mergeHP_Nat_buf_done);
  
  /* mergectrl (Ty C2,Ty MemIn_Nat) : [(dconReadIn_Nat,MemIn_Nat),
                                  (dconWriteIn_Nat,MemIn_Nat)] > (memMergeChoice_Nat,C2) (memMergeIn_Nat,MemIn_Nat) */
  logic [1:0] dconReadIn_Nat_select_d;
  assign dconReadIn_Nat_select_d = ((| dconReadIn_Nat_select_q) ? dconReadIn_Nat_select_q :
                                    (dconReadIn_Nat_d[0] ? 2'd1 :
                                     (dconWriteIn_Nat_d[0] ? 2'd2 :
                                      2'd0)));
  logic [1:0] dconReadIn_Nat_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_Nat_select_q <= 2'd0;
    else
      dconReadIn_Nat_select_q <= (dconReadIn_Nat_done ? 2'd0 :
                                  dconReadIn_Nat_select_d);
  logic [1:0] dconReadIn_Nat_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_Nat_emit_q <= 2'd0;
    else
      dconReadIn_Nat_emit_q <= (dconReadIn_Nat_done ? 2'd0 :
                                dconReadIn_Nat_emit_d);
  logic [1:0] dconReadIn_Nat_emit_d;
  assign dconReadIn_Nat_emit_d = (dconReadIn_Nat_emit_q | ({memMergeChoice_Nat_d[0],
                                                            memMergeIn_Nat_d[0]} & {memMergeChoice_Nat_r,
                                                                                    memMergeIn_Nat_r}));
  logic dconReadIn_Nat_done;
  assign dconReadIn_Nat_done = (& dconReadIn_Nat_emit_d);
  assign {dconWriteIn_Nat_r,
          dconReadIn_Nat_r} = (dconReadIn_Nat_done ? dconReadIn_Nat_select_d :
                               2'd0);
  assign memMergeIn_Nat_d = ((dconReadIn_Nat_select_d[0] && (! dconReadIn_Nat_emit_q[0])) ? dconReadIn_Nat_d :
                             ((dconReadIn_Nat_select_d[1] && (! dconReadIn_Nat_emit_q[0])) ? dconWriteIn_Nat_d :
                              {34'd0, 1'd0}));
  assign memMergeChoice_Nat_d = ((dconReadIn_Nat_select_d[0] && (! dconReadIn_Nat_emit_q[1])) ? C1_2_dc(1'd1) :
                                 ((dconReadIn_Nat_select_d[1] && (! dconReadIn_Nat_emit_q[1])) ? C2_2_dc(1'd1) :
                                  {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_Nat,
      Ty MemOut_Nat) : (memMergeIn_Nat_dbuf,MemIn_Nat) > (memOut_Nat,MemOut_Nat) */
  logic [16:0] memMergeIn_Nat_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_Nat_dbuf_address;
  logic [16:0] memMergeIn_Nat_dbuf_din;
  logic [16:0] memOut_Nat_q;
  logic memOut_Nat_valid;
  logic memMergeIn_Nat_dbuf_we;
  logic memOut_Nat_we;
  assign memMergeIn_Nat_dbuf_din = memMergeIn_Nat_dbuf_d[34:18];
  assign memMergeIn_Nat_dbuf_address = memMergeIn_Nat_dbuf_d[17:2];
  assign memMergeIn_Nat_dbuf_we = (memMergeIn_Nat_dbuf_d[1:1] && memMergeIn_Nat_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_Nat_we <= 1'd0;
        memOut_Nat_valid <= 1'd0;
      end
    else
      begin
        memOut_Nat_we <= memMergeIn_Nat_dbuf_we;
        memOut_Nat_valid <= memMergeIn_Nat_dbuf_d[0];
        if (memMergeIn_Nat_dbuf_we)
          begin
            memMergeIn_Nat_dbuf_mem[memMergeIn_Nat_dbuf_address] <= memMergeIn_Nat_dbuf_din;
            memOut_Nat_q <= memMergeIn_Nat_dbuf_din;
          end
        else
          memOut_Nat_q <= memMergeIn_Nat_dbuf_mem[memMergeIn_Nat_dbuf_address];
      end
  assign memOut_Nat_d = {memOut_Nat_q,
                         memOut_Nat_we,
                         memOut_Nat_valid};
  assign memMergeIn_Nat_dbuf_r = ((! memOut_Nat_valid) || memOut_Nat_r);
  logic [31:0] profiling_MemIn_Nat_read;
  logic [31:0] profiling_MemIn_Nat_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_Nat_write <= 0;
        profiling_MemIn_Nat_read <= 0;
      end
    else
      if ((memMergeIn_Nat_dbuf_we == 1'd1))
        profiling_MemIn_Nat_write <= (profiling_MemIn_Nat_write + 1);
      else
        if ((memOut_Nat_valid == 1'd1))
          profiling_MemIn_Nat_read <= (profiling_MemIn_Nat_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_Nat) : (memMergeChoice_Nat,C2) (memOut_Nat_dbuf,MemOut_Nat) > [(memReadOut_Nat,MemOut_Nat),
                                                                                (memWriteOut_Nat,MemOut_Nat)] */
  logic [1:0] memOut_Nat_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_Nat_d[0] && memOut_Nat_dbuf_d[0]))
      unique case (memMergeChoice_Nat_d[1:1])
        1'd0: memOut_Nat_dbuf_onehotd = 2'd1;
        1'd1: memOut_Nat_dbuf_onehotd = 2'd2;
        default: memOut_Nat_dbuf_onehotd = 2'd0;
      endcase
    else memOut_Nat_dbuf_onehotd = 2'd0;
  assign memReadOut_Nat_d = {memOut_Nat_dbuf_d[18:1],
                             memOut_Nat_dbuf_onehotd[0]};
  assign memWriteOut_Nat_d = {memOut_Nat_dbuf_d[18:1],
                              memOut_Nat_dbuf_onehotd[1]};
  assign memOut_Nat_dbuf_r = (| (memOut_Nat_dbuf_onehotd & {memWriteOut_Nat_r,
                                                            memReadOut_Nat_r}));
  assign memMergeChoice_Nat_r = memOut_Nat_dbuf_r;
  
  /* dbuf (Ty MemIn_Nat) : (memMergeIn_Nat_rbuf,MemIn_Nat) > (memMergeIn_Nat_dbuf,MemIn_Nat) */
  assign memMergeIn_Nat_rbuf_r = ((! memMergeIn_Nat_dbuf_d[0]) || memMergeIn_Nat_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_Nat_dbuf_d <= {34'd0, 1'd0};
    else
      if (memMergeIn_Nat_rbuf_r)
        memMergeIn_Nat_dbuf_d <= memMergeIn_Nat_rbuf_d;
  
  /* rbuf (Ty MemIn_Nat) : (memMergeIn_Nat,MemIn_Nat) > (memMergeIn_Nat_rbuf,MemIn_Nat) */
  MemIn_Nat_t memMergeIn_Nat_buf;
  assign memMergeIn_Nat_r = (! memMergeIn_Nat_buf[0]);
  assign memMergeIn_Nat_rbuf_d = (memMergeIn_Nat_buf[0] ? memMergeIn_Nat_buf :
                                  memMergeIn_Nat_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_Nat_buf <= {34'd0, 1'd0};
    else
      if ((memMergeIn_Nat_rbuf_r && memMergeIn_Nat_buf[0]))
        memMergeIn_Nat_buf <= {34'd0, 1'd0};
      else if (((! memMergeIn_Nat_rbuf_r) && (! memMergeIn_Nat_buf[0])))
        memMergeIn_Nat_buf <= memMergeIn_Nat_d;
  
  /* dbuf (Ty MemOut_Nat) : (memOut_Nat_rbuf,MemOut_Nat) > (memOut_Nat_dbuf,MemOut_Nat) */
  assign memOut_Nat_rbuf_r = ((! memOut_Nat_dbuf_d[0]) || memOut_Nat_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_Nat_dbuf_d <= {18'd0, 1'd0};
    else if (memOut_Nat_rbuf_r) memOut_Nat_dbuf_d <= memOut_Nat_rbuf_d;
  
  /* rbuf (Ty MemOut_Nat) : (memOut_Nat,MemOut_Nat) > (memOut_Nat_rbuf,MemOut_Nat) */
  MemOut_Nat_t memOut_Nat_buf;
  assign memOut_Nat_r = (! memOut_Nat_buf[0]);
  assign memOut_Nat_rbuf_d = (memOut_Nat_buf[0] ? memOut_Nat_buf :
                              memOut_Nat_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_Nat_buf <= {18'd0, 1'd0};
    else
      if ((memOut_Nat_rbuf_r && memOut_Nat_buf[0]))
        memOut_Nat_buf <= {18'd0, 1'd0};
      else if (((! memOut_Nat_rbuf_r) && (! memOut_Nat_buf[0])))
        memOut_Nat_buf <= memOut_Nat_d;
  
  /* mergectrl (Ty C2,Ty Pointer_Nat) : [(xa96_1_argbuf,Pointer_Nat),
                                    (ya97_1_argbuf,Pointer_Nat)] > (readMerge_choice_Nat,C2) (readMerge_data_Nat,Pointer_Nat) */
  logic [1:0] xa96_1_argbuf_select_d;
  assign xa96_1_argbuf_select_d = ((| xa96_1_argbuf_select_q) ? xa96_1_argbuf_select_q :
                                   (xa96_1_argbuf_d[0] ? 2'd1 :
                                    (ya97_1_argbuf_d[0] ? 2'd2 :
                                     2'd0)));
  logic [1:0] xa96_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa96_1_argbuf_select_q <= 2'd0;
    else
      xa96_1_argbuf_select_q <= (xa96_1_argbuf_done ? 2'd0 :
                                 xa96_1_argbuf_select_d);
  logic [1:0] xa96_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa96_1_argbuf_emit_q <= 2'd0;
    else
      xa96_1_argbuf_emit_q <= (xa96_1_argbuf_done ? 2'd0 :
                               xa96_1_argbuf_emit_d);
  logic [1:0] xa96_1_argbuf_emit_d;
  assign xa96_1_argbuf_emit_d = (xa96_1_argbuf_emit_q | ({readMerge_choice_Nat_d[0],
                                                          readMerge_data_Nat_d[0]} & {readMerge_choice_Nat_r,
                                                                                      readMerge_data_Nat_r}));
  logic xa96_1_argbuf_done;
  assign xa96_1_argbuf_done = (& xa96_1_argbuf_emit_d);
  assign {ya97_1_argbuf_r,
          xa96_1_argbuf_r} = (xa96_1_argbuf_done ? xa96_1_argbuf_select_d :
                              2'd0);
  assign readMerge_data_Nat_d = ((xa96_1_argbuf_select_d[0] && (! xa96_1_argbuf_emit_q[0])) ? xa96_1_argbuf_d :
                                 ((xa96_1_argbuf_select_d[1] && (! xa96_1_argbuf_emit_q[0])) ? ya97_1_argbuf_d :
                                  {16'd0, 1'd0}));
  assign readMerge_choice_Nat_d = ((xa96_1_argbuf_select_d[0] && (! xa96_1_argbuf_emit_q[1])) ? C1_2_dc(1'd1) :
                                   ((xa96_1_argbuf_select_d[1] && (! xa96_1_argbuf_emit_q[1])) ? C2_2_dc(1'd1) :
                                    {1'd0, 1'd0}));
  
  /* demux (Ty C2,
       Ty Nat) : (readMerge_choice_Nat,C2) (destructReadOut_Nat,Nat) > [(readPointer_Natxa96_1_argbuf,Nat),
                                                                        (readPointer_Natya97_1_argbuf,Nat)] */
  logic [1:0] destructReadOut_Nat_onehotd;
  always_comb
    if ((readMerge_choice_Nat_d[0] && destructReadOut_Nat_d[0]))
      unique case (readMerge_choice_Nat_d[1:1])
        1'd0: destructReadOut_Nat_onehotd = 2'd1;
        1'd1: destructReadOut_Nat_onehotd = 2'd2;
        default: destructReadOut_Nat_onehotd = 2'd0;
      endcase
    else destructReadOut_Nat_onehotd = 2'd0;
  assign readPointer_Natxa96_1_argbuf_d = {destructReadOut_Nat_d[17:1],
                                           destructReadOut_Nat_onehotd[0]};
  assign readPointer_Natya97_1_argbuf_d = {destructReadOut_Nat_d[17:1],
                                           destructReadOut_Nat_onehotd[1]};
  assign destructReadOut_Nat_r = (| (destructReadOut_Nat_onehotd & {readPointer_Natya97_1_argbuf_r,
                                                                    readPointer_Natxa96_1_argbuf_r}));
  assign readMerge_choice_Nat_r = destructReadOut_Nat_r;
  
  /* destruct (Ty Pointer_Nat,
          Dcon Pointer_Nat) : (readMerge_data_Nat,Pointer_Nat) > [(destructReadIn_Nat,Word16#)] */
  assign destructReadIn_Nat_d = {readMerge_data_Nat_d[16:1],
                                 readMerge_data_Nat_d[0]};
  assign readMerge_data_Nat_r = destructReadIn_Nat_r;
  
  /* dcon (Ty MemIn_Nat,
      Dcon ReadIn_Nat) : [(destructReadIn_Nat,Word16#)] > (dconReadIn_Nat,MemIn_Nat) */
  assign dconReadIn_Nat_d = ReadIn_Nat_dc((& {destructReadIn_Nat_d[0]}), destructReadIn_Nat_d);
  assign {destructReadIn_Nat_r} = {1 {(dconReadIn_Nat_r && dconReadIn_Nat_d[0])}};
  
  /* destruct (Ty MemOut_Nat,
          Dcon ReadOut_Nat) : (memReadOut_Nat,MemOut_Nat) > [(destructReadOut_Nat,Nat)] */
  assign destructReadOut_Nat_d = {memReadOut_Nat_d[18:2],
                                  memReadOut_Nat_d[0]};
  assign memReadOut_Nat_r = destructReadOut_Nat_r;
  
  /* mergectrl (Ty C4,Ty Nat) : [(lizzieLet1_1_argbuf,Nat),
                            (lizzieLet2_1_argbuf,Nat),
                            (lizzieLet33_1_argbuf,Nat),
                            (lizzieLet34_1_argbuf,Nat)] > (writeMerge_choice_Nat,C4) (writeMerge_data_Nat,Nat) */
  logic [3:0] lizzieLet1_1_argbuf_select_d;
  assign lizzieLet1_1_argbuf_select_d = ((| lizzieLet1_1_argbuf_select_q) ? lizzieLet1_1_argbuf_select_q :
                                         (lizzieLet1_1_argbuf_d[0] ? 4'd1 :
                                          (lizzieLet2_1_argbuf_d[0] ? 4'd2 :
                                           (lizzieLet33_1_argbuf_d[0] ? 4'd4 :
                                            (lizzieLet34_1_argbuf_d[0] ? 4'd8 :
                                             4'd0)))));
  logic [3:0] lizzieLet1_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet1_1_argbuf_select_q <= 4'd0;
    else
      lizzieLet1_1_argbuf_select_q <= (lizzieLet1_1_argbuf_done ? 4'd0 :
                                       lizzieLet1_1_argbuf_select_d);
  logic [1:0] lizzieLet1_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet1_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet1_1_argbuf_emit_q <= (lizzieLet1_1_argbuf_done ? 2'd0 :
                                     lizzieLet1_1_argbuf_emit_d);
  logic [1:0] lizzieLet1_1_argbuf_emit_d;
  assign lizzieLet1_1_argbuf_emit_d = (lizzieLet1_1_argbuf_emit_q | ({writeMerge_choice_Nat_d[0],
                                                                      writeMerge_data_Nat_d[0]} & {writeMerge_choice_Nat_r,
                                                                                                   writeMerge_data_Nat_r}));
  logic lizzieLet1_1_argbuf_done;
  assign lizzieLet1_1_argbuf_done = (& lizzieLet1_1_argbuf_emit_d);
  assign {lizzieLet34_1_argbuf_r,
          lizzieLet33_1_argbuf_r,
          lizzieLet2_1_argbuf_r,
          lizzieLet1_1_argbuf_r} = (lizzieLet1_1_argbuf_done ? lizzieLet1_1_argbuf_select_d :
                                    4'd0);
  assign writeMerge_data_Nat_d = ((lizzieLet1_1_argbuf_select_d[0] && (! lizzieLet1_1_argbuf_emit_q[0])) ? lizzieLet1_1_argbuf_d :
                                  ((lizzieLet1_1_argbuf_select_d[1] && (! lizzieLet1_1_argbuf_emit_q[0])) ? lizzieLet2_1_argbuf_d :
                                   ((lizzieLet1_1_argbuf_select_d[2] && (! lizzieLet1_1_argbuf_emit_q[0])) ? lizzieLet33_1_argbuf_d :
                                    ((lizzieLet1_1_argbuf_select_d[3] && (! lizzieLet1_1_argbuf_emit_q[0])) ? lizzieLet34_1_argbuf_d :
                                     {17'd0, 1'd0}))));
  assign writeMerge_choice_Nat_d = ((lizzieLet1_1_argbuf_select_d[0] && (! lizzieLet1_1_argbuf_emit_q[1])) ? C1_4_dc(1'd1) :
                                    ((lizzieLet1_1_argbuf_select_d[1] && (! lizzieLet1_1_argbuf_emit_q[1])) ? C2_4_dc(1'd1) :
                                     ((lizzieLet1_1_argbuf_select_d[2] && (! lizzieLet1_1_argbuf_emit_q[1])) ? C3_4_dc(1'd1) :
                                      ((lizzieLet1_1_argbuf_select_d[3] && (! lizzieLet1_1_argbuf_emit_q[1])) ? C4_4_dc(1'd1) :
                                       {2'd0, 1'd0}))));
  
  /* demux (Ty C4,
       Ty Pointer_Nat) : (writeMerge_choice_Nat,C4) (demuxWriteResult_Nat,Pointer_Nat) > [(writeNatlizzieLet1_1_argbuf,Pointer_Nat),
                                                                                          (writeNatlizzieLet2_1_argbuf,Pointer_Nat),
                                                                                          (writeNatlizzieLet33_1_argbuf,Pointer_Nat),
                                                                                          (writeNatlizzieLet34_1_argbuf,Pointer_Nat)] */
  logic [3:0] demuxWriteResult_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_Nat_d[0] && demuxWriteResult_Nat_d[0]))
      unique case (writeMerge_choice_Nat_d[2:1])
        2'd0: demuxWriteResult_Nat_onehotd = 4'd1;
        2'd1: demuxWriteResult_Nat_onehotd = 4'd2;
        2'd2: demuxWriteResult_Nat_onehotd = 4'd4;
        2'd3: demuxWriteResult_Nat_onehotd = 4'd8;
        default: demuxWriteResult_Nat_onehotd = 4'd0;
      endcase
    else demuxWriteResult_Nat_onehotd = 4'd0;
  assign writeNatlizzieLet1_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                          demuxWriteResult_Nat_onehotd[0]};
  assign writeNatlizzieLet2_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                          demuxWriteResult_Nat_onehotd[1]};
  assign writeNatlizzieLet33_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[2]};
  assign writeNatlizzieLet34_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[3]};
  assign demuxWriteResult_Nat_r = (| (demuxWriteResult_Nat_onehotd & {writeNatlizzieLet34_1_argbuf_r,
                                                                      writeNatlizzieLet33_1_argbuf_r,
                                                                      writeNatlizzieLet2_1_argbuf_r,
                                                                      writeNatlizzieLet1_1_argbuf_r}));
  assign writeMerge_choice_Nat_r = demuxWriteResult_Nat_r;
  
  /* dcon (Ty MemIn_Nat,Dcon WriteIn_Nat) : [(forkHP1_Na2,Word16#),
                                        (writeMerge_data_Nat,Nat)] > (dconWriteIn_Nat,MemIn_Nat) */
  assign dconWriteIn_Nat_d = WriteIn_Nat_dc((& {forkHP1_Na2_d[0],
                                                writeMerge_data_Nat_d[0]}), forkHP1_Na2_d, writeMerge_data_Nat_d);
  assign {forkHP1_Na2_r,
          writeMerge_data_Nat_r} = {2 {(dconWriteIn_Nat_r && dconWriteIn_Nat_d[0])}};
  
  /* dcon (Ty Pointer_Nat,
      Dcon Pointer_Nat) : [(forkHP1_Na3,Word16#)] > (dconPtr_Nat,Pointer_Nat) */
  assign dconPtr_Nat_d = Pointer_Nat_dc((& {forkHP1_Na3_d[0]}), forkHP1_Na3_d);
  assign {forkHP1_Na3_r} = {1 {(dconPtr_Nat_r && dconPtr_Nat_d[0])}};
  
  /* demux (Ty MemOut_Nat,
       Ty Pointer_Nat) : (memWriteOut_Nat,MemOut_Nat) (dconPtr_Nat,Pointer_Nat) > [(_60,Pointer_Nat),
                                                                                   (demuxWriteResult_Nat,Pointer_Nat)] */
  logic [1:0] dconPtr_Nat_onehotd;
  always_comb
    if ((memWriteOut_Nat_d[0] && dconPtr_Nat_d[0]))
      unique case (memWriteOut_Nat_d[1:1])
        1'd0: dconPtr_Nat_onehotd = 2'd1;
        1'd1: dconPtr_Nat_onehotd = 2'd2;
        default: dconPtr_Nat_onehotd = 2'd0;
      endcase
    else dconPtr_Nat_onehotd = 2'd0;
  assign _60_d = {dconPtr_Nat_d[16:1], dconPtr_Nat_onehotd[0]};
  assign demuxWriteResult_Nat_d = {dconPtr_Nat_d[16:1],
                                   dconPtr_Nat_onehotd[1]};
  assign dconPtr_Nat_r = (| (dconPtr_Nat_onehotd & {demuxWriteResult_Nat_r,
                                                    _60_r}));
  assign memWriteOut_Nat_r = dconPtr_Nat_r;
  
  /* source (Ty Go) : > (sourceGo,Go) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m1a9d_0,Pointer_QTree_Bool) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m2a9e_1,Pointer_QTree_Bool) */
  
  /* destruct (Ty TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool,
          Dcon TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) > [($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2,Go),
                                                                                                                                                                                                                                                   ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB,MyDTBool_Bool_Bool),
                                                                                                                                                                                                                                                   ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                   ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD,Pointer_QTree_Bool)] */
  logic [3:0] \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted ;
  logic [3:0] \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_d  = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted [0]));
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_d  = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted [1]));
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_d  = {\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [16:1],
                                                                                                     (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted [2]))};
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_d  = {\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [32:17],
                                                                                                     (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted [3]))};
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done  = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted  | ({\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_d [0],
                                                                                                                                                                                                     \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_d [0],
                                                                                                                                                                                                     \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_d [0],
                                                                                                                                                                                                     \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_d [0]} & {\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_r ,
                                                                                                                                                                                                                                                                                                    \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_r ,
                                                                                                                                                                                                                                                                                                    \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_r ,
                                                                                                                                                                                                                                                                                                    \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_r }));
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r  = (& \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted  <= 4'd0;
    else
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted  <= (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r  ? 4'd0 :
                                                                                                      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done );
  
  /* fork (Ty Go) : ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2,Go) > [(go_2_1,Go),
                                                                                                           (go_2_2,Go)] */
  logic [1:0] \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted ;
  logic [1:0] \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_done ;
  assign go_2_1_d = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted [0]));
  assign go_2_2_d = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_d [0] && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted [1]));
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_done  = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted  | ({go_2_2_d[0],
                                                                                                                                                                                                         go_2_1_d[0]} & {go_2_2_r,
                                                                                                                                                                                                                         go_2_1_r}));
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_r  = (& \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted  <= 2'd0;
    else
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_emitted  <= (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_r  ? 2'd0 :
                                                                                                        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolgo_2_done );
  
  /* buf (Ty Pointer_QTree_Bool) : ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC,Pointer_QTree_Bool) > (w1skC_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_r ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_r  = ((! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d [0]) || \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d  <= {16'd0,
                                                                                                           1'd0};
    else
      if (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_r )
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_d ;
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_r  = (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf [0]);
  assign w1skC_1_argbuf_d = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf [0] ? \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf  :
                             \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf  <= {16'd0,
                                                                                                             1'd0};
    else
      if ((w1skC_1_argbuf_r && \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf [0]))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf  <= {16'd0,
                                                                                                               1'd0};
      else if (((! w1skC_1_argbuf_r) && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf [0])))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_buf  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw1skC_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Bool) : ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD,Pointer_QTree_Bool) > (w2skD_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_r ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_r  = ((! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d [0]) || \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d  <= {16'd0,
                                                                                                           1'd0};
    else
      if (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_r )
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_d ;
  Pointer_QTree_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_r  = (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf [0]);
  assign w2skD_1_argbuf_d = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf [0] ? \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf  :
                             \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf  <= {16'd0,
                                                                                                             1'd0};
    else
      if ((w2skD_1_argbuf_r && \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf [0]))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf  <= {16'd0,
                                                                                                               1'd0};
      else if (((! w2skD_1_argbuf_r) && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf [0])))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_buf  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Boolw2skD_bufchan_d ;
  
  /* buf (Ty MyDTBool_Bool_Bool) : ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB,MyDTBool_Bool_Bool) > (wskB_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d ;
  logic \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_r ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_r  = ((! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d [0]) || \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d  <= 1'd0;
    else
      if (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_r )
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_d ;
  MyDTBool_Bool_Bool_t \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf ;
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_r  = (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf [0]);
  assign wskB_1_argbuf_d = (\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf [0] ? \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf  :
                            \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf  <= 1'd0;
    else
      if ((wskB_1_argbuf_r && \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf [0]))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf  <= 1'd0;
      else if (((! wskB_1_argbuf_r) && (! \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf [0])))
        \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_buf  <= \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_BoolwskB_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Bool) : ($wmAdd_Bool_resbuf,Pointer_QTree_Bool) > (es_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \$wmAdd_Bool_resbuf_bufchan_d ;
  logic \$wmAdd_Bool_resbuf_bufchan_r ;
  assign \$wmAdd_Bool_resbuf_r  = ((! \$wmAdd_Bool_resbuf_bufchan_d [0]) || \$wmAdd_Bool_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_Bool_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\$wmAdd_Bool_resbuf_r )
        \$wmAdd_Bool_resbuf_bufchan_d  <= \$wmAdd_Bool_resbuf_d ;
  Pointer_QTree_Bool_t \$wmAdd_Bool_resbuf_bufchan_buf ;
  assign \$wmAdd_Bool_resbuf_bufchan_r  = (! \$wmAdd_Bool_resbuf_bufchan_buf [0]);
  assign es_2_1_argbuf_d = (\$wmAdd_Bool_resbuf_bufchan_buf [0] ? \$wmAdd_Bool_resbuf_bufchan_buf  :
                            \$wmAdd_Bool_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmAdd_Bool_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((es_2_1_argbuf_r && \$wmAdd_Bool_resbuf_bufchan_buf [0]))
        \$wmAdd_Bool_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! es_2_1_argbuf_r) && (! \$wmAdd_Bool_resbuf_bufchan_buf [0])))
        \$wmAdd_Bool_resbuf_bufchan_buf  <= \$wmAdd_Bool_resbuf_bufchan_d ;
  
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
  
  /* dcon (Ty QTree_Bool,
      Dcon QVal_Bool) : [(applyfnBool_Bool_Bool_5_resbuf,MyBool)] > (es_0_1_1QVal_Bool,QTree_Bool) */
  assign es_0_1_1QVal_Bool_d = QVal_Bool_dc((& {applyfnBool_Bool_Bool_5_resbuf_d[0]}), applyfnBool_Bool_Bool_5_resbuf_d);
  assign {applyfnBool_Bool_Bool_5_resbuf_r} = {1 {(es_0_1_1QVal_Bool_r && es_0_1_1QVal_Bool_d[0])}};
  
  /* destruct (Ty TupGo___MyDTBool_Nat___MyBool,
          Dcon TupGo___MyDTBool_Nat___MyBool) : (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1,TupGo___MyDTBool_Nat___MyBool) > [(applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4,Go),
                                                                                                                                    (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0,MyDTBool_Nat),
                                                                                                                                    (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1,MyBool)] */
  logic [2:0] applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted;
  logic [2:0] applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_done;
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted[0]));
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted[1]));
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d = {applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d[1:1],
                                                                 (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted[2]))};
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_done = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted | ({applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d[0],
                                                                                                                               applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d[0],
                                                                                                                               applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d[0]} & {applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_r,
                                                                                                                                                                                           applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_r,
                                                                                                                                                                                           applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_r}));
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_r = (& applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted <= 3'd0;
    else
      applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_emitted <= (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_r ? 3'd0 :
                                                                   applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_done);
  
  /* fork (Ty MyDTBool_Nat) : (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0,MyDTBool_Nat) > [(arg0_1,MyDTBool_Nat),
                                                                                              (arg0_2,MyDTBool_Nat),
                                                                                              (arg0_3,MyDTBool_Nat)] */
  logic [2:0] applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted;
  logic [2:0] applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_done;
  assign arg0_1_d = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted[0]));
  assign arg0_2_d = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted[1]));
  assign arg0_3_d = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_d[0] && (! applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted[2]));
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_done = (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted | ({arg0_3_d[0],
                                                                                                                                   arg0_2_d[0],
                                                                                                                                   arg0_1_d[0]} & {arg0_3_r,
                                                                                                                                                   arg0_2_r,
                                                                                                                                                   arg0_1_r}));
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_r = (& applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted <= 3'd0;
    else
      applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_emitted <= (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_r ? 3'd0 :
                                                                     applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg0_done);
  
  /* fork (Ty Pointer_Nat) : (applyfnBool_Nat_5_resbuf,Pointer_Nat) > [(xa8d_1,Pointer_Nat),
                                                                  (xa8d_2,Pointer_Nat)] */
  logic [1:0] applyfnBool_Nat_5_resbuf_emitted;
  logic [1:0] applyfnBool_Nat_5_resbuf_done;
  assign xa8d_1_d = {applyfnBool_Nat_5_resbuf_d[16:1],
                     (applyfnBool_Nat_5_resbuf_d[0] && (! applyfnBool_Nat_5_resbuf_emitted[0]))};
  assign xa8d_2_d = {applyfnBool_Nat_5_resbuf_d[16:1],
                     (applyfnBool_Nat_5_resbuf_d[0] && (! applyfnBool_Nat_5_resbuf_emitted[1]))};
  assign applyfnBool_Nat_5_resbuf_done = (applyfnBool_Nat_5_resbuf_emitted | ({xa8d_2_d[0],
                                                                               xa8d_1_d[0]} & {xa8d_2_r,
                                                                                               xa8d_1_r}));
  assign applyfnBool_Nat_5_resbuf_r = (& applyfnBool_Nat_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) applyfnBool_Nat_5_resbuf_emitted <= 2'd0;
    else
      applyfnBool_Nat_5_resbuf_emitted <= (applyfnBool_Nat_5_resbuf_r ? 2'd0 :
                                           applyfnBool_Nat_5_resbuf_done);
  
  /* destruct (Ty TupGo___MyDTNat_Bool___Pointer_Nat,
          Dcon TupGo___MyDTNat_Bool___Pointer_Nat) : (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1,TupGo___MyDTNat_Bool___Pointer_Nat) > [(applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5,Go),
                                                                                                                                                   (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4,MyDTNat_Bool),
                                                                                                                                                   (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2,Pointer_Nat)] */
  logic [2:0] applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted;
  logic [2:0] applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_done;
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted[0]));
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted[1]));
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d = {applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d[16:1],
                                                                        (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted[2]))};
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_done = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted | ({applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d[0],
                                                                                                                                         applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d[0],
                                                                                                                                         applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d[0]} & {applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_r,
                                                                                                                                                                                                          applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_r,
                                                                                                                                                                                                          applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_r}));
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_r = (& applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted <= 3'd0;
    else
      applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_emitted <= (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_r ? 3'd0 :
                                                                        applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_done);
  
  /* fork (Ty MyDTNat_Bool) : (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4,MyDTNat_Bool) > [(arg0_4_1,MyDTNat_Bool),
                                                                                                     (arg0_4_2,MyDTNat_Bool),
                                                                                                     (arg0_4_3,MyDTNat_Bool)] */
  logic [2:0] applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted;
  logic [2:0] applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_done;
  assign arg0_4_1_d = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted[0]));
  assign arg0_4_2_d = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted[1]));
  assign arg0_4_3_d = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_d[0] && (! applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted[2]));
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_done = (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted | ({arg0_4_3_d[0],
                                                                                                                                                 arg0_4_2_d[0],
                                                                                                                                                 arg0_4_1_d[0]} & {arg0_4_3_r,
                                                                                                                                                                   arg0_4_2_r,
                                                                                                                                                                   arg0_4_1_r}));
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_r = (& applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted <= 3'd0;
    else
      applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_emitted <= (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_r ? 3'd0 :
                                                                            applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg0_4_done);
  
  /* fork (Ty MyBool) : (applyfnNat_Bool_5_resbuf,MyBool) > [(es_0_2_1,MyBool),
                                                        (es_0_2_2,MyBool),
                                                        (es_0_2_3,MyBool)] */
  logic [2:0] applyfnNat_Bool_5_resbuf_emitted;
  logic [2:0] applyfnNat_Bool_5_resbuf_done;
  assign es_0_2_1_d = {applyfnNat_Bool_5_resbuf_d[1:1],
                       (applyfnNat_Bool_5_resbuf_d[0] && (! applyfnNat_Bool_5_resbuf_emitted[0]))};
  assign es_0_2_2_d = {applyfnNat_Bool_5_resbuf_d[1:1],
                       (applyfnNat_Bool_5_resbuf_d[0] && (! applyfnNat_Bool_5_resbuf_emitted[1]))};
  assign es_0_2_3_d = {applyfnNat_Bool_5_resbuf_d[1:1],
                       (applyfnNat_Bool_5_resbuf_d[0] && (! applyfnNat_Bool_5_resbuf_emitted[2]))};
  assign applyfnNat_Bool_5_resbuf_done = (applyfnNat_Bool_5_resbuf_emitted | ({es_0_2_3_d[0],
                                                                               es_0_2_2_d[0],
                                                                               es_0_2_1_d[0]} & {es_0_2_3_r,
                                                                                                 es_0_2_2_r,
                                                                                                 es_0_2_1_r}));
  assign applyfnNat_Bool_5_resbuf_r = (& applyfnNat_Bool_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) applyfnNat_Bool_5_resbuf_emitted <= 3'd0;
    else
      applyfnNat_Bool_5_resbuf_emitted <= (applyfnNat_Bool_5_resbuf_r ? 3'd0 :
                                           applyfnNat_Bool_5_resbuf_done);
  
  /* demux (Ty MyDTBool_Nat,
       Ty MyBool) : (arg0_1,MyDTBool_Nat) (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1,MyBool) > [(arg0_1Dcon_to_nat,MyBool)] */
  assign arg0_1Dcon_to_nat_d = {applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d[1:1],
                                (arg0_1_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d[0])};
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_r = (arg0_1Dcon_to_nat_r && (arg0_1_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d[0]));
  assign arg0_1_r = (arg0_1Dcon_to_nat_r && (arg0_1_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolarg1_d[0]));
  
  /* fork (Ty MyBool) : (arg0_1Dcon_to_nat,MyBool) > [(arg0_1Dcon_to_nat_1,MyBool),
                                                 (arg0_1Dcon_to_nat_2,MyBool)] */
  logic [1:0] arg0_1Dcon_to_nat_emitted;
  logic [1:0] arg0_1Dcon_to_nat_done;
  assign arg0_1Dcon_to_nat_1_d = {arg0_1Dcon_to_nat_d[1:1],
                                  (arg0_1Dcon_to_nat_d[0] && (! arg0_1Dcon_to_nat_emitted[0]))};
  assign arg0_1Dcon_to_nat_2_d = {arg0_1Dcon_to_nat_d[1:1],
                                  (arg0_1Dcon_to_nat_d[0] && (! arg0_1Dcon_to_nat_emitted[1]))};
  assign arg0_1Dcon_to_nat_done = (arg0_1Dcon_to_nat_emitted | ({arg0_1Dcon_to_nat_2_d[0],
                                                                 arg0_1Dcon_to_nat_1_d[0]} & {arg0_1Dcon_to_nat_2_r,
                                                                                              arg0_1Dcon_to_nat_1_r}));
  assign arg0_1Dcon_to_nat_r = (& arg0_1Dcon_to_nat_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_1Dcon_to_nat_emitted <= 2'd0;
    else
      arg0_1Dcon_to_nat_emitted <= (arg0_1Dcon_to_nat_r ? 2'd0 :
                                    arg0_1Dcon_to_nat_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (arg0_1Dcon_to_nat_1,MyBool) (arg0_2Dcon_to_nat,Go) > [(arg0_1Dcon_to_nat_1MyFalse,Go),
                                                                       (arg0_1Dcon_to_nat_1MyTrue,Go)] */
  logic [1:0] arg0_2Dcon_to_nat_onehotd;
  always_comb
    if ((arg0_1Dcon_to_nat_1_d[0] && arg0_2Dcon_to_nat_d[0]))
      unique case (arg0_1Dcon_to_nat_1_d[1:1])
        1'd0: arg0_2Dcon_to_nat_onehotd = 2'd1;
        1'd1: arg0_2Dcon_to_nat_onehotd = 2'd2;
        default: arg0_2Dcon_to_nat_onehotd = 2'd0;
      endcase
    else arg0_2Dcon_to_nat_onehotd = 2'd0;
  assign arg0_1Dcon_to_nat_1MyFalse_d = arg0_2Dcon_to_nat_onehotd[0];
  assign arg0_1Dcon_to_nat_1MyTrue_d = arg0_2Dcon_to_nat_onehotd[1];
  assign arg0_2Dcon_to_nat_r = (| (arg0_2Dcon_to_nat_onehotd & {arg0_1Dcon_to_nat_1MyTrue_r,
                                                                arg0_1Dcon_to_nat_1MyFalse_r}));
  assign arg0_1Dcon_to_nat_1_r = arg0_2Dcon_to_nat_r;
  
  /* dcon (Ty Nat,
      Dcon Zero) : [(arg0_1Dcon_to_nat_1MyFalse,Go)] > (arg0_1Dcon_to_nat_1MyFalse_1Zero,Nat) */
  assign arg0_1Dcon_to_nat_1MyFalse_1Zero_d = Zero_dc((& {arg0_1Dcon_to_nat_1MyFalse_d[0]}), arg0_1Dcon_to_nat_1MyFalse_d);
  assign {arg0_1Dcon_to_nat_1MyFalse_r} = {1 {(arg0_1Dcon_to_nat_1MyFalse_1Zero_r && arg0_1Dcon_to_nat_1MyFalse_1Zero_d[0])}};
  
  /* buf (Ty Nat) : (arg0_1Dcon_to_nat_1MyFalse_1Zero,Nat) > (lizzieLet1_1_argbuf,Nat) */
  Nat_t arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d;
  logic arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_r;
  assign arg0_1Dcon_to_nat_1MyFalse_1Zero_r = ((! arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d[0]) || arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d <= {17'd0, 1'd0};
    else
      if (arg0_1Dcon_to_nat_1MyFalse_1Zero_r)
        arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d <= arg0_1Dcon_to_nat_1MyFalse_1Zero_d;
  Nat_t arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf;
  assign arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_r = (! arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf[0]);
  assign lizzieLet1_1_argbuf_d = (arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf[0] ? arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf :
                                  arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet1_1_argbuf_r && arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf[0]))
        arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet1_1_argbuf_r) && (! arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf[0])))
        arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_buf <= arg0_1Dcon_to_nat_1MyFalse_1Zero_bufchan_d;
  
  /* buf (Ty Go) : (arg0_1Dcon_to_nat_1MyTrue,Go) > (arg0_1Dcon_to_nat_1MyTrue_1_argbuf,Go) */
  Go_t arg0_1Dcon_to_nat_1MyTrue_bufchan_d;
  logic arg0_1Dcon_to_nat_1MyTrue_bufchan_r;
  assign arg0_1Dcon_to_nat_1MyTrue_r = ((! arg0_1Dcon_to_nat_1MyTrue_bufchan_d[0]) || arg0_1Dcon_to_nat_1MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_1Dcon_to_nat_1MyTrue_bufchan_d <= 1'd0;
    else
      if (arg0_1Dcon_to_nat_1MyTrue_r)
        arg0_1Dcon_to_nat_1MyTrue_bufchan_d <= arg0_1Dcon_to_nat_1MyTrue_d;
  Go_t arg0_1Dcon_to_nat_1MyTrue_bufchan_buf;
  assign arg0_1Dcon_to_nat_1MyTrue_bufchan_r = (! arg0_1Dcon_to_nat_1MyTrue_bufchan_buf[0]);
  assign arg0_1Dcon_to_nat_1MyTrue_1_argbuf_d = (arg0_1Dcon_to_nat_1MyTrue_bufchan_buf[0] ? arg0_1Dcon_to_nat_1MyTrue_bufchan_buf :
                                                 arg0_1Dcon_to_nat_1MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_1Dcon_to_nat_1MyTrue_bufchan_buf <= 1'd0;
    else
      if ((arg0_1Dcon_to_nat_1MyTrue_1_argbuf_r && arg0_1Dcon_to_nat_1MyTrue_bufchan_buf[0]))
        arg0_1Dcon_to_nat_1MyTrue_bufchan_buf <= 1'd0;
      else if (((! arg0_1Dcon_to_nat_1MyTrue_1_argbuf_r) && (! arg0_1Dcon_to_nat_1MyTrue_bufchan_buf[0])))
        arg0_1Dcon_to_nat_1MyTrue_bufchan_buf <= arg0_1Dcon_to_nat_1MyTrue_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(arg0_1Dcon_to_nat_1MyTrue_1_argbuf,Go)] > (to_nat1TupGo_1,TupGo) */
  assign to_nat1TupGo_1_d = TupGo_dc((& {arg0_1Dcon_to_nat_1MyTrue_1_argbuf_d[0]}), arg0_1Dcon_to_nat_1MyTrue_1_argbuf_d);
  assign {arg0_1Dcon_to_nat_1MyTrue_1_argbuf_r} = {1 {(to_nat1TupGo_1_r && to_nat1TupGo_1_d[0])}};
  
  /* mux (Ty MyBool,
     Ty Pointer_Nat) : (arg0_1Dcon_to_nat_2,MyBool) [(writeNatlizzieLet1_1_argbuf_rwb,Pointer_Nat),
                                                     (to_nat1_resbuf,Pointer_Nat)] > (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux,Pointer_Nat) */
  logic [16:0] writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux;
  logic [1:0] writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_onehot;
  always_comb
    unique case (arg0_1Dcon_to_nat_2_d[1:1])
      1'd0:
        {writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_onehot,
         writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux} = {2'd1,
                                                                   writeNatlizzieLet1_1_argbuf_rwb_d};
      1'd1:
        {writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_onehot,
         writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux} = {2'd2,
                                                                   to_nat1_resbuf_d};
      default:
        {writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_onehot,
         writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux} = {2'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d = {writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux[16:1],
                                                                (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux[0] && arg0_1Dcon_to_nat_2_d[0])};
  assign arg0_1Dcon_to_nat_2_r = (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d[0] && writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_r);
  assign {to_nat1_resbuf_r,
          writeNatlizzieLet1_1_argbuf_rwb_r} = (arg0_1Dcon_to_nat_2_r ? writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_onehot :
                                                2'd0);
  
  /* demux (Ty MyDTBool_Nat,
       Ty Go) : (arg0_2,MyDTBool_Nat) (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4,Go) > [(arg0_2Dcon_to_nat,Go)] */
  assign arg0_2Dcon_to_nat_d = (arg0_2_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d[0]);
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_r = (arg0_2Dcon_to_nat_r && (arg0_2_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d[0]));
  assign arg0_2_r = (arg0_2Dcon_to_nat_r && (arg0_2_d[0] && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBoolgo_4_d[0]));
  
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
                                                                           (_59,MyBool)] */
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
  assign _59_d = {\arg0_2_1Dcon_||_d [1:1],
                  \arg0_2_1Dcon_||_onehotd [1]};
  assign \arg0_2_1Dcon_||_r  = (| (\arg0_2_1Dcon_||_onehotd  & {_59_r,
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
       Ty Go) : (arg0_2_2Dcon_||_2,MyBool) (arg0_2_3Dcon_||,Go) > [(_58,Go),
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
  assign _58_d = \arg0_2_3Dcon_||_onehotd [0];
  assign \arg0_2_2Dcon_||_2MyTrue_d  = \arg0_2_3Dcon_||_onehotd [1];
  assign \arg0_2_3Dcon_||_r  = (| (\arg0_2_3Dcon_||_onehotd  & {\arg0_2_2Dcon_||_2MyTrue_r ,
                                                                _58_r}));
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
  
  /* mux (Ty MyDTBool_Nat,
     Ty Pointer_Nat) : (arg0_3,MyDTBool_Nat) [(writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux,Pointer_Nat)] > (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux,Pointer_Nat) */
  assign writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_d = {writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d[16:1],
                                                                    (arg0_3_d[0] && writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d[0])};
  assign writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_r = (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_r && (arg0_3_d[0] && writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d[0]));
  assign arg0_3_r = (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_r && (arg0_3_d[0] && writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_d[0]));
  
  /* demux (Ty MyDTNat_Bool,
       Ty Pointer_Nat) : (arg0_4_1,MyDTNat_Bool) (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2,Pointer_Nat) > [(arg0_4_1Dcon_is_z_nut,Pointer_Nat)] */
  assign arg0_4_1Dcon_is_z_nut_d = {applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d[16:1],
                                    (arg0_4_1_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d[0])};
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_r = (arg0_4_1Dcon_is_z_nut_r && (arg0_4_1_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d[0]));
  assign arg0_4_1_r = (arg0_4_1Dcon_is_z_nut_r && (arg0_4_1_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natarg1_2_d[0]));
  
  /* buf (Ty Pointer_Nat) : (arg0_4_1Dcon_is_z_nut,Pointer_Nat) > (arg0_4_1Dcon_is_z_nut_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t arg0_4_1Dcon_is_z_nut_bufchan_d;
  logic arg0_4_1Dcon_is_z_nut_bufchan_r;
  assign arg0_4_1Dcon_is_z_nut_r = ((! arg0_4_1Dcon_is_z_nut_bufchan_d[0]) || arg0_4_1Dcon_is_z_nut_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_4_1Dcon_is_z_nut_bufchan_d <= {16'd0, 1'd0};
    else
      if (arg0_4_1Dcon_is_z_nut_r)
        arg0_4_1Dcon_is_z_nut_bufchan_d <= arg0_4_1Dcon_is_z_nut_d;
  Pointer_Nat_t arg0_4_1Dcon_is_z_nut_bufchan_buf;
  assign arg0_4_1Dcon_is_z_nut_bufchan_r = (! arg0_4_1Dcon_is_z_nut_bufchan_buf[0]);
  assign arg0_4_1Dcon_is_z_nut_1_argbuf_d = (arg0_4_1Dcon_is_z_nut_bufchan_buf[0] ? arg0_4_1Dcon_is_z_nut_bufchan_buf :
                                             arg0_4_1Dcon_is_z_nut_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_4_1Dcon_is_z_nut_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((arg0_4_1Dcon_is_z_nut_1_argbuf_r && arg0_4_1Dcon_is_z_nut_bufchan_buf[0]))
        arg0_4_1Dcon_is_z_nut_bufchan_buf <= {16'd0, 1'd0};
      else if (((! arg0_4_1Dcon_is_z_nut_1_argbuf_r) && (! arg0_4_1Dcon_is_z_nut_bufchan_buf[0])))
        arg0_4_1Dcon_is_z_nut_bufchan_buf <= arg0_4_1Dcon_is_z_nut_bufchan_d;
  
  /* demux (Ty MyDTNat_Bool,
       Ty Go) : (arg0_4_2,MyDTNat_Bool) (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5,Go) > [(arg0_4_2Dcon_is_z_nut,Go)] */
  assign arg0_4_2Dcon_is_z_nut_d = (arg0_4_2_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d[0]);
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_r = (arg0_4_2Dcon_is_z_nut_r && (arg0_4_2_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d[0]));
  assign arg0_4_2_r = (arg0_4_2Dcon_is_z_nut_r && (arg0_4_2_d[0] && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Natgo_5_d[0]));
  
  /* fork (Ty Go) : (arg0_4_2Dcon_is_z_nut,Go) > [(arg0_4_2Dcon_is_z_nut_1,Go),
                                             (arg0_4_2Dcon_is_z_nut_2,Go)] */
  logic [1:0] arg0_4_2Dcon_is_z_nut_emitted;
  logic [1:0] arg0_4_2Dcon_is_z_nut_done;
  assign arg0_4_2Dcon_is_z_nut_1_d = (arg0_4_2Dcon_is_z_nut_d[0] && (! arg0_4_2Dcon_is_z_nut_emitted[0]));
  assign arg0_4_2Dcon_is_z_nut_2_d = (arg0_4_2Dcon_is_z_nut_d[0] && (! arg0_4_2Dcon_is_z_nut_emitted[1]));
  assign arg0_4_2Dcon_is_z_nut_done = (arg0_4_2Dcon_is_z_nut_emitted | ({arg0_4_2Dcon_is_z_nut_2_d[0],
                                                                         arg0_4_2Dcon_is_z_nut_1_d[0]} & {arg0_4_2Dcon_is_z_nut_2_r,
                                                                                                          arg0_4_2Dcon_is_z_nut_1_r}));
  assign arg0_4_2Dcon_is_z_nut_r = (& arg0_4_2Dcon_is_z_nut_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_4_2Dcon_is_z_nut_emitted <= 2'd0;
    else
      arg0_4_2Dcon_is_z_nut_emitted <= (arg0_4_2Dcon_is_z_nut_r ? 2'd0 :
                                        arg0_4_2Dcon_is_z_nut_done);
  
  /* dcon (Ty Nat,
      Dcon Zero) : [(arg0_4_2Dcon_is_z_nut_1,Go)] > (arg0_4_2Dcon_is_z_nut_1Zero,Nat) */
  assign arg0_4_2Dcon_is_z_nut_1Zero_d = Zero_dc((& {arg0_4_2Dcon_is_z_nut_1_d[0]}), arg0_4_2Dcon_is_z_nut_1_d);
  assign {arg0_4_2Dcon_is_z_nut_1_r} = {1 {(arg0_4_2Dcon_is_z_nut_1Zero_r && arg0_4_2Dcon_is_z_nut_1Zero_d[0])}};
  
  /* buf (Ty Nat) : (arg0_4_2Dcon_is_z_nut_1Zero,Nat) > (lizzieLet2_1_argbuf,Nat) */
  Nat_t arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d;
  logic arg0_4_2Dcon_is_z_nut_1Zero_bufchan_r;
  assign arg0_4_2Dcon_is_z_nut_1Zero_r = ((! arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d[0]) || arg0_4_2Dcon_is_z_nut_1Zero_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d <= {17'd0, 1'd0};
    else
      if (arg0_4_2Dcon_is_z_nut_1Zero_r)
        arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d <= arg0_4_2Dcon_is_z_nut_1Zero_d;
  Nat_t arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf;
  assign arg0_4_2Dcon_is_z_nut_1Zero_bufchan_r = (! arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf[0]);
  assign lizzieLet2_1_argbuf_d = (arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf[0] ? arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf :
                                  arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet2_1_argbuf_r && arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf[0]))
        arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet2_1_argbuf_r) && (! arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf[0])))
        arg0_4_2Dcon_is_z_nut_1Zero_bufchan_buf <= arg0_4_2Dcon_is_z_nut_1Zero_bufchan_d;
  
  /* buf (Ty Go) : (arg0_4_2Dcon_is_z_nut_2,Go) > (arg0_4_2Dcon_is_z_nut_2_argbuf,Go) */
  Go_t arg0_4_2Dcon_is_z_nut_2_bufchan_d;
  logic arg0_4_2Dcon_is_z_nut_2_bufchan_r;
  assign arg0_4_2Dcon_is_z_nut_2_r = ((! arg0_4_2Dcon_is_z_nut_2_bufchan_d[0]) || arg0_4_2Dcon_is_z_nut_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_4_2Dcon_is_z_nut_2_bufchan_d <= 1'd0;
    else
      if (arg0_4_2Dcon_is_z_nut_2_r)
        arg0_4_2Dcon_is_z_nut_2_bufchan_d <= arg0_4_2Dcon_is_z_nut_2_d;
  Go_t arg0_4_2Dcon_is_z_nut_2_bufchan_buf;
  assign arg0_4_2Dcon_is_z_nut_2_bufchan_r = (! arg0_4_2Dcon_is_z_nut_2_bufchan_buf[0]);
  assign arg0_4_2Dcon_is_z_nut_2_argbuf_d = (arg0_4_2Dcon_is_z_nut_2_bufchan_buf[0] ? arg0_4_2Dcon_is_z_nut_2_bufchan_buf :
                                             arg0_4_2Dcon_is_z_nut_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_4_2Dcon_is_z_nut_2_bufchan_buf <= 1'd0;
    else
      if ((arg0_4_2Dcon_is_z_nut_2_argbuf_r && arg0_4_2Dcon_is_z_nut_2_bufchan_buf[0]))
        arg0_4_2Dcon_is_z_nut_2_bufchan_buf <= 1'd0;
      else if (((! arg0_4_2Dcon_is_z_nut_2_argbuf_r) && (! arg0_4_2Dcon_is_z_nut_2_bufchan_buf[0])))
        arg0_4_2Dcon_is_z_nut_2_bufchan_buf <= arg0_4_2Dcon_is_z_nut_2_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_Nat___Pointer_Nat,
      Dcon TupGo___Pointer_Nat___Pointer_Nat) : [(arg0_4_2Dcon_is_z_nut_2_argbuf,Go),
                                                 (arg0_4_1Dcon_is_z_nut_1_argbuf,Pointer_Nat),
                                                 (es_1_1_1_argbuf,Pointer_Nat)] > (eqNatTupGo___Pointer_Nat___Pointer_Nat_1,TupGo___Pointer_Nat___Pointer_Nat) */
  assign eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d = TupGo___Pointer_Nat___Pointer_Nat_dc((& {arg0_4_2Dcon_is_z_nut_2_argbuf_d[0],
                                                                                               arg0_4_1Dcon_is_z_nut_1_argbuf_d[0],
                                                                                               es_1_1_1_argbuf_d[0]}), arg0_4_2Dcon_is_z_nut_2_argbuf_d, arg0_4_1Dcon_is_z_nut_1_argbuf_d, es_1_1_1_argbuf_d);
  assign {arg0_4_2Dcon_is_z_nut_2_argbuf_r,
          arg0_4_1Dcon_is_z_nut_1_argbuf_r,
          es_1_1_1_argbuf_r} = {3 {(eqNatTupGo___Pointer_Nat___Pointer_Nat_1_r && eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[0])}};
  
  /* mux (Ty MyDTNat_Bool,
     Ty MyBool) : (arg0_4_3,MyDTNat_Bool) [(lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2,MyBool)] > (eqNat_1_mux,MyBool) */
  assign eqNat_1_mux_d = {lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d[1:1],
                          (arg0_4_3_d[0] && lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d[0])};
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_r = (eqNat_1_mux_r && (arg0_4_3_d[0] && lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d[0]));
  assign arg0_4_3_r = (eqNat_1_mux_r && (arg0_4_3_d[0] && lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d[0]));
  
  /* destruct (Ty TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool,
          Dcon TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool) : (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1,TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool) > [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6,Go),
                                                                                                                                                                                                                                                                                                                                (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1,MyDTBool_Bool_Bool),
                                                                                                                                                                                                                                                                                                                                (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                                                                                                (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                                                                                                (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0,Pointer_CT$wmAdd_Bool)] */
  logic [4:0] call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted;
  logic [4:0] call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_done;
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d = (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0] && (! call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted[0]));
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d = (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0] && (! call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted[1]));
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[16:1],
                                                                                                                                  (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0] && (! call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted[2]))};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[32:17],
                                                                                                                                  (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0] && (! call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted[3]))};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[48:33],
                                                                                                                               (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0] && (! call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted[4]))};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_done = (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted | ({call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d[0],
                                                                                                                                                                                                                                                           call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d[0],
                                                                                                                                                                                                                                                           call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d[0],
                                                                                                                                                                                                                                                           call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d[0],
                                                                                                                                                                                                                                                           call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d[0]} & {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_r,
                                                                                                                                                                                                                                                                                                                                                                                     call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_r,
                                                                                                                                                                                                                                                                                                                                                                                     call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_r,
                                                                                                                                                                                                                                                                                                                                                                                     call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_r,
                                                                                                                                                                                                                                                                                                                                                                                     call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_r}));
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_r = (& call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted <= 5'd0;
    else
      call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_emitted <= (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_r ? 5'd0 :
                                                                                                                                 call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_done);
  
  /* rbuf (Ty Go) : (call_$wmAdd_Bool_goConst,Go) > (call_$wmAdd_Bool_initBufi,Go) */
  Go_t call_$wmAdd_Bool_goConst_buf;
  assign call_$wmAdd_Bool_goConst_r = (! call_$wmAdd_Bool_goConst_buf[0]);
  assign call_$wmAdd_Bool_initBufi_d = (call_$wmAdd_Bool_goConst_buf[0] ? call_$wmAdd_Bool_goConst_buf :
                                        call_$wmAdd_Bool_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wmAdd_Bool_goConst_buf <= 1'd0;
    else
      if ((call_$wmAdd_Bool_initBufi_r && call_$wmAdd_Bool_goConst_buf[0]))
        call_$wmAdd_Bool_goConst_buf <= 1'd0;
      else if (((! call_$wmAdd_Bool_initBufi_r) && (! call_$wmAdd_Bool_goConst_buf[0])))
        call_$wmAdd_Bool_goConst_buf <= call_$wmAdd_Bool_goConst_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_$wmAdd_Bool_goMux1,Go),
                           (lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf,Go),
                           (lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf,Go),
                           (lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf,Go),
                           (lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf,Go)] > (go_6_goMux_choice,C5) (go_6_goMux_data,Go) */
  logic [4:0] call_$wmAdd_Bool_goMux1_select_d;
  assign call_$wmAdd_Bool_goMux1_select_d = ((| call_$wmAdd_Bool_goMux1_select_q) ? call_$wmAdd_Bool_goMux1_select_q :
                                             (call_$wmAdd_Bool_goMux1_d[0] ? 5'd1 :
                                              (lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_d[0] ? 5'd2 :
                                               (lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_d[0] ? 5'd4 :
                                                (lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_d[0] ? 5'd8 :
                                                 (lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                                  5'd0))))));
  logic [4:0] call_$wmAdd_Bool_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wmAdd_Bool_goMux1_select_q <= 5'd0;
    else
      call_$wmAdd_Bool_goMux1_select_q <= (call_$wmAdd_Bool_goMux1_done ? 5'd0 :
                                           call_$wmAdd_Bool_goMux1_select_d);
  logic [1:0] call_$wmAdd_Bool_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wmAdd_Bool_goMux1_emit_q <= 2'd0;
    else
      call_$wmAdd_Bool_goMux1_emit_q <= (call_$wmAdd_Bool_goMux1_done ? 2'd0 :
                                         call_$wmAdd_Bool_goMux1_emit_d);
  logic [1:0] call_$wmAdd_Bool_goMux1_emit_d;
  assign call_$wmAdd_Bool_goMux1_emit_d = (call_$wmAdd_Bool_goMux1_emit_q | ({go_6_goMux_choice_d[0],
                                                                              go_6_goMux_data_d[0]} & {go_6_goMux_choice_r,
                                                                                                       go_6_goMux_data_r}));
  logic call_$wmAdd_Bool_goMux1_done;
  assign call_$wmAdd_Bool_goMux1_done = (& call_$wmAdd_Bool_goMux1_emit_d);
  assign {lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_r,
          lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_r,
          lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_r,
          lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_r,
          call_$wmAdd_Bool_goMux1_r} = (call_$wmAdd_Bool_goMux1_done ? call_$wmAdd_Bool_goMux1_select_d :
                                        5'd0);
  assign go_6_goMux_data_d = ((call_$wmAdd_Bool_goMux1_select_d[0] && (! call_$wmAdd_Bool_goMux1_emit_q[0])) ? call_$wmAdd_Bool_goMux1_d :
                              ((call_$wmAdd_Bool_goMux1_select_d[1] && (! call_$wmAdd_Bool_goMux1_emit_q[0])) ? lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_d :
                               ((call_$wmAdd_Bool_goMux1_select_d[2] && (! call_$wmAdd_Bool_goMux1_emit_q[0])) ? lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_d :
                                ((call_$wmAdd_Bool_goMux1_select_d[3] && (! call_$wmAdd_Bool_goMux1_emit_q[0])) ? lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_d :
                                 ((call_$wmAdd_Bool_goMux1_select_d[4] && (! call_$wmAdd_Bool_goMux1_emit_q[0])) ? lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_6_goMux_choice_d = ((call_$wmAdd_Bool_goMux1_select_d[0] && (! call_$wmAdd_Bool_goMux1_emit_q[1])) ? C1_5_dc(1'd1) :
                                ((call_$wmAdd_Bool_goMux1_select_d[1] && (! call_$wmAdd_Bool_goMux1_emit_q[1])) ? C2_5_dc(1'd1) :
                                 ((call_$wmAdd_Bool_goMux1_select_d[2] && (! call_$wmAdd_Bool_goMux1_emit_q[1])) ? C3_5_dc(1'd1) :
                                  ((call_$wmAdd_Bool_goMux1_select_d[3] && (! call_$wmAdd_Bool_goMux1_emit_q[1])) ? C4_5_dc(1'd1) :
                                   ((call_$wmAdd_Bool_goMux1_select_d[4] && (! call_$wmAdd_Bool_goMux1_emit_q[1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_$wmAdd_Bool_initBuf,Go) > [(call_$wmAdd_Bool_unlockFork1,Go),
                                                (call_$wmAdd_Bool_unlockFork2,Go),
                                                (call_$wmAdd_Bool_unlockFork3,Go),
                                                (call_$wmAdd_Bool_unlockFork4,Go),
                                                (call_$wmAdd_Bool_unlockFork5,Go)] */
  logic [4:0] call_$wmAdd_Bool_initBuf_emitted;
  logic [4:0] call_$wmAdd_Bool_initBuf_done;
  assign call_$wmAdd_Bool_unlockFork1_d = (call_$wmAdd_Bool_initBuf_d[0] && (! call_$wmAdd_Bool_initBuf_emitted[0]));
  assign call_$wmAdd_Bool_unlockFork2_d = (call_$wmAdd_Bool_initBuf_d[0] && (! call_$wmAdd_Bool_initBuf_emitted[1]));
  assign call_$wmAdd_Bool_unlockFork3_d = (call_$wmAdd_Bool_initBuf_d[0] && (! call_$wmAdd_Bool_initBuf_emitted[2]));
  assign call_$wmAdd_Bool_unlockFork4_d = (call_$wmAdd_Bool_initBuf_d[0] && (! call_$wmAdd_Bool_initBuf_emitted[3]));
  assign call_$wmAdd_Bool_unlockFork5_d = (call_$wmAdd_Bool_initBuf_d[0] && (! call_$wmAdd_Bool_initBuf_emitted[4]));
  assign call_$wmAdd_Bool_initBuf_done = (call_$wmAdd_Bool_initBuf_emitted | ({call_$wmAdd_Bool_unlockFork5_d[0],
                                                                               call_$wmAdd_Bool_unlockFork4_d[0],
                                                                               call_$wmAdd_Bool_unlockFork3_d[0],
                                                                               call_$wmAdd_Bool_unlockFork2_d[0],
                                                                               call_$wmAdd_Bool_unlockFork1_d[0]} & {call_$wmAdd_Bool_unlockFork5_r,
                                                                                                                     call_$wmAdd_Bool_unlockFork4_r,
                                                                                                                     call_$wmAdd_Bool_unlockFork3_r,
                                                                                                                     call_$wmAdd_Bool_unlockFork2_r,
                                                                                                                     call_$wmAdd_Bool_unlockFork1_r}));
  assign call_$wmAdd_Bool_initBuf_r = (& call_$wmAdd_Bool_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wmAdd_Bool_initBuf_emitted <= 5'd0;
    else
      call_$wmAdd_Bool_initBuf_emitted <= (call_$wmAdd_Bool_initBuf_r ? 5'd0 :
                                           call_$wmAdd_Bool_initBuf_done);
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_$wmAdd_Bool_initBufi,Go) > (call_$wmAdd_Bool_initBuf,Go) */
  assign call_$wmAdd_Bool_initBufi_r = ((! call_$wmAdd_Bool_initBuf_d[0]) || call_$wmAdd_Bool_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wmAdd_Bool_initBuf_d <= Go_dc(1'd1);
    else
      if (call_$wmAdd_Bool_initBufi_r)
        call_$wmAdd_Bool_initBuf_d <= call_$wmAdd_Bool_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (call_$wmAdd_Bool_unlockFork1,Go) [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6,Go)] > (call_$wmAdd_Bool_goMux1,Go) */
  assign call_$wmAdd_Bool_goMux1_d = (call_$wmAdd_Bool_unlockFork1_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d[0]);
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_r = (call_$wmAdd_Bool_goMux1_r && (call_$wmAdd_Bool_unlockFork1_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d[0]));
  assign call_$wmAdd_Bool_unlockFork1_r = (call_$wmAdd_Bool_goMux1_r && (call_$wmAdd_Bool_unlockFork1_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolgo_6_d[0]));
  
  /* mux (Ty Go,
     Ty MyDTBool_Bool_Bool) : (call_$wmAdd_Bool_unlockFork2,Go) [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1,MyDTBool_Bool_Bool)] > (call_$wmAdd_Bool_goMux2,MyDTBool_Bool_Bool) */
  assign call_$wmAdd_Bool_goMux2_d = (call_$wmAdd_Bool_unlockFork2_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d[0]);
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_r = (call_$wmAdd_Bool_goMux2_r && (call_$wmAdd_Bool_unlockFork2_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d[0]));
  assign call_$wmAdd_Bool_unlockFork2_r = (call_$wmAdd_Bool_goMux2_r && (call_$wmAdd_Bool_unlockFork2_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_BoolwskB_1_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_$wmAdd_Bool_unlockFork3,Go) [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1,Pointer_QTree_Bool)] > (call_$wmAdd_Bool_goMux3,Pointer_QTree_Bool) */
  assign call_$wmAdd_Bool_goMux3_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d[16:1],
                                      (call_$wmAdd_Bool_unlockFork3_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d[0])};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_r = (call_$wmAdd_Bool_goMux3_r && (call_$wmAdd_Bool_unlockFork3_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d[0]));
  assign call_$wmAdd_Bool_unlockFork3_r = (call_$wmAdd_Bool_goMux3_r && (call_$wmAdd_Bool_unlockFork3_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw1skC_1_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_$wmAdd_Bool_unlockFork4,Go) [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1,Pointer_QTree_Bool)] > (call_$wmAdd_Bool_goMux4,Pointer_QTree_Bool) */
  assign call_$wmAdd_Bool_goMux4_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d[16:1],
                                      (call_$wmAdd_Bool_unlockFork4_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d[0])};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_r = (call_$wmAdd_Bool_goMux4_r && (call_$wmAdd_Bool_unlockFork4_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d[0]));
  assign call_$wmAdd_Bool_unlockFork4_r = (call_$wmAdd_Bool_goMux4_r && (call_$wmAdd_Bool_unlockFork4_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolw2skD_1_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CT$wmAdd_Bool) : (call_$wmAdd_Bool_unlockFork5,Go) [(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0,Pointer_CT$wmAdd_Bool)] > (call_$wmAdd_Bool_goMux5,Pointer_CT$wmAdd_Bool) */
  assign call_$wmAdd_Bool_goMux5_d = {call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d[16:1],
                                      (call_$wmAdd_Bool_unlockFork5_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d[0])};
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_r = (call_$wmAdd_Bool_goMux5_r && (call_$wmAdd_Bool_unlockFork5_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d[0]));
  assign call_$wmAdd_Bool_unlockFork5_r = (call_$wmAdd_Bool_goMux5_r && (call_$wmAdd_Bool_unlockFork5_d[0] && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Boolsc_0_d[0]));
  
  /* destruct (Ty TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat,
          Dcon TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat) : (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1,TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat) > [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7,Go),
                                                                                                                                                                                                                                                                                                                        (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P,MyDTNat_Bool),
                                                                                                                                                                                                                                                                                                                        (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q,MyDTBool_Nat),
                                                                                                                                                                                                                                                                                                                        (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                                                                                        (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1,Pointer_CTmain_map'_Bool_Nat)] */
  logic [4:0] \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted ;
  logic [4:0] \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_done ;
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d  = (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0] && (! \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted [0]));
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d  = (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0] && (! \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted [1]));
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d  = (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0] && (! \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted [2]));
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d  = {\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [16:1],
                                                                                                                                   (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0] && (! \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted [3]))};
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d  = {\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [32:17],
                                                                                                                                     (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0] && (! \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted [4]))};
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_done  = (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted  | ({\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d [0],
                                                                                                                                                                                                                                                                   \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d [0],
                                                                                                                                                                                                                                                                   \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d [0],
                                                                                                                                                                                                                                                                   \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d [0],
                                                                                                                                                                                                                                                                   \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d [0]} & {\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_r ,
                                                                                                                                                                                                                                                                                                                                                                                                 \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_r ,
                                                                                                                                                                                                                                                                                                                                                                                                 \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_r ,
                                                                                                                                                                                                                                                                                                                                                                                                 \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_r ,
                                                                                                                                                                                                                                                                                                                                                                                                 \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_r }));
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_r  = (& \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted  <= 5'd0;
    else
      \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_emitted  <= (\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_r  ? 5'd0 :
                                                                                                                                     \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_done );
  
  /* rbuf (Ty Go) : (call_main_map'_Bool_Nat_goConst,Go) > (call_main_map'_Bool_Nat_initBufi,Go) */
  Go_t \call_main_map'_Bool_Nat_goConst_buf ;
  assign \call_main_map'_Bool_Nat_goConst_r  = (! \call_main_map'_Bool_Nat_goConst_buf [0]);
  assign \call_main_map'_Bool_Nat_initBufi_d  = (\call_main_map'_Bool_Nat_goConst_buf [0] ? \call_main_map'_Bool_Nat_goConst_buf  :
                                                 \call_main_map'_Bool_Nat_goConst_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_main_map'_Bool_Nat_goConst_buf  <= 1'd0;
    else
      if ((\call_main_map'_Bool_Nat_initBufi_r  && \call_main_map'_Bool_Nat_goConst_buf [0]))
        \call_main_map'_Bool_Nat_goConst_buf  <= 1'd0;
      else if (((! \call_main_map'_Bool_Nat_initBufi_r ) && (! \call_main_map'_Bool_Nat_goConst_buf [0])))
        \call_main_map'_Bool_Nat_goConst_buf  <= \call_main_map'_Bool_Nat_goConst_d ;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_main_map'_Bool_Nat_goMux1,Go),
                           (lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf,Go),
                           (lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf,Go),
                           (lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf,Go),
                           (lizzieLet13_4QNode_Bool_1_argbuf,Go)] > (go_7_goMux_choice,C5) (go_7_goMux_data,Go) */
  logic [4:0] \call_main_map'_Bool_Nat_goMux1_select_d ;
  assign \call_main_map'_Bool_Nat_goMux1_select_d  = ((| \call_main_map'_Bool_Nat_goMux1_select_q ) ? \call_main_map'_Bool_Nat_goMux1_select_q  :
                                                      (\call_main_map'_Bool_Nat_goMux1_d [0] ? 5'd1 :
                                                       (\lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_d [0] ? 5'd2 :
                                                        (\lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_d [0] ? 5'd4 :
                                                         (\lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_d [0] ? 5'd8 :
                                                          (lizzieLet13_4QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                                           5'd0))))));
  logic [4:0] \call_main_map'_Bool_Nat_goMux1_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_main_map'_Bool_Nat_goMux1_select_q  <= 5'd0;
    else
      \call_main_map'_Bool_Nat_goMux1_select_q  <= (\call_main_map'_Bool_Nat_goMux1_done  ? 5'd0 :
                                                    \call_main_map'_Bool_Nat_goMux1_select_d );
  logic [1:0] \call_main_map'_Bool_Nat_goMux1_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_main_map'_Bool_Nat_goMux1_emit_q  <= 2'd0;
    else
      \call_main_map'_Bool_Nat_goMux1_emit_q  <= (\call_main_map'_Bool_Nat_goMux1_done  ? 2'd0 :
                                                  \call_main_map'_Bool_Nat_goMux1_emit_d );
  logic [1:0] \call_main_map'_Bool_Nat_goMux1_emit_d ;
  assign \call_main_map'_Bool_Nat_goMux1_emit_d  = (\call_main_map'_Bool_Nat_goMux1_emit_q  | ({go_7_goMux_choice_d[0],
                                                                                                go_7_goMux_data_d[0]} & {go_7_goMux_choice_r,
                                                                                                                         go_7_goMux_data_r}));
  logic \call_main_map'_Bool_Nat_goMux1_done ;
  assign \call_main_map'_Bool_Nat_goMux1_done  = (& \call_main_map'_Bool_Nat_goMux1_emit_d );
  assign {lizzieLet13_4QNode_Bool_1_argbuf_r,
          \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_r ,
          \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_r ,
          \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_r ,
          \call_main_map'_Bool_Nat_goMux1_r } = (\call_main_map'_Bool_Nat_goMux1_done  ? \call_main_map'_Bool_Nat_goMux1_select_d  :
                                                 5'd0);
  assign go_7_goMux_data_d = ((\call_main_map'_Bool_Nat_goMux1_select_d [0] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [0])) ? \call_main_map'_Bool_Nat_goMux1_d  :
                              ((\call_main_map'_Bool_Nat_goMux1_select_d [1] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [0])) ? \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_d  :
                               ((\call_main_map'_Bool_Nat_goMux1_select_d [2] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [0])) ? \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_d  :
                                ((\call_main_map'_Bool_Nat_goMux1_select_d [3] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [0])) ? \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_d  :
                                 ((\call_main_map'_Bool_Nat_goMux1_select_d [4] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [0])) ? lizzieLet13_4QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_7_goMux_choice_d = ((\call_main_map'_Bool_Nat_goMux1_select_d [0] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [1])) ? C1_5_dc(1'd1) :
                                ((\call_main_map'_Bool_Nat_goMux1_select_d [1] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [1])) ? C2_5_dc(1'd1) :
                                 ((\call_main_map'_Bool_Nat_goMux1_select_d [2] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [1])) ? C3_5_dc(1'd1) :
                                  ((\call_main_map'_Bool_Nat_goMux1_select_d [3] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [1])) ? C4_5_dc(1'd1) :
                                   ((\call_main_map'_Bool_Nat_goMux1_select_d [4] && (! \call_main_map'_Bool_Nat_goMux1_emit_q [1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_main_map'_Bool_Nat_initBuf,Go) > [(call_main_map'_Bool_Nat_unlockFork1,Go),
                                                       (call_main_map'_Bool_Nat_unlockFork2,Go),
                                                       (call_main_map'_Bool_Nat_unlockFork3,Go),
                                                       (call_main_map'_Bool_Nat_unlockFork4,Go),
                                                       (call_main_map'_Bool_Nat_unlockFork5,Go)] */
  logic [4:0] \call_main_map'_Bool_Nat_initBuf_emitted ;
  logic [4:0] \call_main_map'_Bool_Nat_initBuf_done ;
  assign \call_main_map'_Bool_Nat_unlockFork1_d  = (\call_main_map'_Bool_Nat_initBuf_d [0] && (! \call_main_map'_Bool_Nat_initBuf_emitted [0]));
  assign \call_main_map'_Bool_Nat_unlockFork2_d  = (\call_main_map'_Bool_Nat_initBuf_d [0] && (! \call_main_map'_Bool_Nat_initBuf_emitted [1]));
  assign \call_main_map'_Bool_Nat_unlockFork3_d  = (\call_main_map'_Bool_Nat_initBuf_d [0] && (! \call_main_map'_Bool_Nat_initBuf_emitted [2]));
  assign \call_main_map'_Bool_Nat_unlockFork4_d  = (\call_main_map'_Bool_Nat_initBuf_d [0] && (! \call_main_map'_Bool_Nat_initBuf_emitted [3]));
  assign \call_main_map'_Bool_Nat_unlockFork5_d  = (\call_main_map'_Bool_Nat_initBuf_d [0] && (! \call_main_map'_Bool_Nat_initBuf_emitted [4]));
  assign \call_main_map'_Bool_Nat_initBuf_done  = (\call_main_map'_Bool_Nat_initBuf_emitted  | ({\call_main_map'_Bool_Nat_unlockFork5_d [0],
                                                                                                 \call_main_map'_Bool_Nat_unlockFork4_d [0],
                                                                                                 \call_main_map'_Bool_Nat_unlockFork3_d [0],
                                                                                                 \call_main_map'_Bool_Nat_unlockFork2_d [0],
                                                                                                 \call_main_map'_Bool_Nat_unlockFork1_d [0]} & {\call_main_map'_Bool_Nat_unlockFork5_r ,
                                                                                                                                                \call_main_map'_Bool_Nat_unlockFork4_r ,
                                                                                                                                                \call_main_map'_Bool_Nat_unlockFork3_r ,
                                                                                                                                                \call_main_map'_Bool_Nat_unlockFork2_r ,
                                                                                                                                                \call_main_map'_Bool_Nat_unlockFork1_r }));
  assign \call_main_map'_Bool_Nat_initBuf_r  = (& \call_main_map'_Bool_Nat_initBuf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_main_map'_Bool_Nat_initBuf_emitted  <= 5'd0;
    else
      \call_main_map'_Bool_Nat_initBuf_emitted  <= (\call_main_map'_Bool_Nat_initBuf_r  ? 5'd0 :
                                                    \call_main_map'_Bool_Nat_initBuf_done );
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_main_map'_Bool_Nat_initBufi,Go) > (call_main_map'_Bool_Nat_initBuf,Go) */
  assign \call_main_map'_Bool_Nat_initBufi_r  = ((! \call_main_map'_Bool_Nat_initBuf_d [0]) || \call_main_map'_Bool_Nat_initBuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_main_map'_Bool_Nat_initBuf_d  <= Go_dc(1'd1);
    else
      if (\call_main_map'_Bool_Nat_initBufi_r )
        \call_main_map'_Bool_Nat_initBuf_d  <= \call_main_map'_Bool_Nat_initBufi_d ;
  
  /* mux (Ty Go,
     Ty Go) : (call_main_map'_Bool_Nat_unlockFork1,Go) [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7,Go)] > (call_main_map'_Bool_Nat_goMux1,Go) */
  assign \call_main_map'_Bool_Nat_goMux1_d  = (\call_main_map'_Bool_Nat_unlockFork1_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d [0]);
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_r  = (\call_main_map'_Bool_Nat_goMux1_r  && (\call_main_map'_Bool_Nat_unlockFork1_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d [0]));
  assign \call_main_map'_Bool_Nat_unlockFork1_r  = (\call_main_map'_Bool_Nat_goMux1_r  && (\call_main_map'_Bool_Nat_unlockFork1_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natgo_7_d [0]));
  
  /* mux (Ty Go,
     Ty MyDTNat_Bool) : (call_main_map'_Bool_Nat_unlockFork2,Go) [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P,MyDTNat_Bool)] > (call_main_map'_Bool_Nat_goMux2,MyDTNat_Bool) */
  assign \call_main_map'_Bool_Nat_goMux2_d  = (\call_main_map'_Bool_Nat_unlockFork2_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d [0]);
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_r  = (\call_main_map'_Bool_Nat_goMux2_r  && (\call_main_map'_Bool_Nat_unlockFork2_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d [0]));
  assign \call_main_map'_Bool_Nat_unlockFork2_r  = (\call_main_map'_Bool_Nat_goMux2_r  && (\call_main_map'_Bool_Nat_unlockFork2_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_NatisZa8P_d [0]));
  
  /* mux (Ty Go,
     Ty MyDTBool_Nat) : (call_main_map'_Bool_Nat_unlockFork3,Go) [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q,MyDTBool_Nat)] > (call_main_map'_Bool_Nat_goMux3,MyDTBool_Nat) */
  assign \call_main_map'_Bool_Nat_goMux3_d  = (\call_main_map'_Bool_Nat_unlockFork3_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d [0]);
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_r  = (\call_main_map'_Bool_Nat_goMux3_r  && (\call_main_map'_Bool_Nat_unlockFork3_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d [0]));
  assign \call_main_map'_Bool_Nat_unlockFork3_r  = (\call_main_map'_Bool_Nat_goMux3_r  && (\call_main_map'_Bool_Nat_unlockFork3_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natga8Q_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_main_map'_Bool_Nat_unlockFork4,Go) [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R,Pointer_QTree_Bool)] > (call_main_map'_Bool_Nat_goMux4,Pointer_QTree_Bool) */
  assign \call_main_map'_Bool_Nat_goMux4_d  = {\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d [16:1],
                                               (\call_main_map'_Bool_Nat_unlockFork4_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d [0])};
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_r  = (\call_main_map'_Bool_Nat_goMux4_r  && (\call_main_map'_Bool_Nat_unlockFork4_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d [0]));
  assign \call_main_map'_Bool_Nat_unlockFork4_r  = (\call_main_map'_Bool_Nat_goMux4_r  && (\call_main_map'_Bool_Nat_unlockFork4_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natma8R_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTmain_map'_Bool_Nat) : (call_main_map'_Bool_Nat_unlockFork5,Go) [(call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1,Pointer_CTmain_map'_Bool_Nat)] > (call_main_map'_Bool_Nat_goMux5,Pointer_CTmain_map'_Bool_Nat) */
  assign \call_main_map'_Bool_Nat_goMux5_d  = {\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d [16:1],
                                               (\call_main_map'_Bool_Nat_unlockFork5_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d [0])};
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_r  = (\call_main_map'_Bool_Nat_goMux5_r  && (\call_main_map'_Bool_Nat_unlockFork5_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d [0]));
  assign \call_main_map'_Bool_Nat_unlockFork5_r  = (\call_main_map'_Bool_Nat_goMux5_r  && (\call_main_map'_Bool_Nat_unlockFork5_d [0] && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Natsc_0_1_d [0]));
  
  /* destruct (Ty TupGo___Pointer_Nat___Pointer_Nat,
          Dcon TupGo___Pointer_Nat___Pointer_Nat) : (eqNatTupGo___Pointer_Nat___Pointer_Nat_1,TupGo___Pointer_Nat___Pointer_Nat) > [(eqNatTupGo___Pointer_Nat___Pointer_Natgo_8,Go),
                                                                                                                                    (eqNatTupGo___Pointer_Nat___Pointer_Natxa96,Pointer_Nat),
                                                                                                                                    (eqNatTupGo___Pointer_Nat___Pointer_Natya97,Pointer_Nat)] */
  logic [2:0] eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted;
  logic [2:0] eqNatTupGo___Pointer_Nat___Pointer_Nat_1_done;
  assign eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d = (eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[0] && (! eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted[0]));
  assign eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d = {eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[16:1],
                                                         (eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[0] && (! eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted[1]))};
  assign eqNatTupGo___Pointer_Nat___Pointer_Natya97_d = {eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[32:17],
                                                         (eqNatTupGo___Pointer_Nat___Pointer_Nat_1_d[0] && (! eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted[2]))};
  assign eqNatTupGo___Pointer_Nat___Pointer_Nat_1_done = (eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted | ({eqNatTupGo___Pointer_Nat___Pointer_Natya97_d[0],
                                                                                                               eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d[0],
                                                                                                               eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d[0]} & {eqNatTupGo___Pointer_Nat___Pointer_Natya97_r,
                                                                                                                                                                   eqNatTupGo___Pointer_Nat___Pointer_Natxa96_r,
                                                                                                                                                                   eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_r}));
  assign eqNatTupGo___Pointer_Nat___Pointer_Nat_1_r = (& eqNatTupGo___Pointer_Nat___Pointer_Nat_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted <= 3'd0;
    else
      eqNatTupGo___Pointer_Nat___Pointer_Nat_1_emitted <= (eqNatTupGo___Pointer_Nat___Pointer_Nat_1_r ? 3'd0 :
                                                           eqNatTupGo___Pointer_Nat___Pointer_Nat_1_done);
  
  /* buf (Ty MyBool) : (eqNat_1_mux,MyBool) > (applyfnNat_Bool_5_resbuf,MyBool) */
  MyBool_t eqNat_1_mux_bufchan_d;
  logic eqNat_1_mux_bufchan_r;
  assign eqNat_1_mux_r = ((! eqNat_1_mux_bufchan_d[0]) || eqNat_1_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_1_mux_bufchan_d <= {1'd0, 1'd0};
    else if (eqNat_1_mux_r) eqNat_1_mux_bufchan_d <= eqNat_1_mux_d;
  MyBool_t eqNat_1_mux_bufchan_buf;
  assign eqNat_1_mux_bufchan_r = (! eqNat_1_mux_bufchan_buf[0]);
  assign applyfnNat_Bool_5_resbuf_d = (eqNat_1_mux_bufchan_buf[0] ? eqNat_1_mux_bufchan_buf :
                                       eqNat_1_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_1_mux_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((applyfnNat_Bool_5_resbuf_r && eqNat_1_mux_bufchan_buf[0]))
        eqNat_1_mux_bufchan_buf <= {1'd0, 1'd0};
      else if (((! applyfnNat_Bool_5_resbuf_r) && (! eqNat_1_mux_bufchan_buf[0])))
        eqNat_1_mux_bufchan_buf <= eqNat_1_mux_bufchan_d;
  
  /* rbuf (Ty Go) : (eqNat_goConst,Go) > (eqNat_initBufi,Go) */
  Go_t eqNat_goConst_buf;
  assign eqNat_goConst_r = (! eqNat_goConst_buf[0]);
  assign eqNat_initBufi_d = (eqNat_goConst_buf[0] ? eqNat_goConst_buf :
                             eqNat_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_goConst_buf <= 1'd0;
    else
      if ((eqNat_initBufi_r && eqNat_goConst_buf[0]))
        eqNat_goConst_buf <= 1'd0;
      else if (((! eqNat_initBufi_r) && (! eqNat_goConst_buf[0])))
        eqNat_goConst_buf <= eqNat_goConst_d;
  
  /* mergectrl (Ty C2,Ty Go) : [(eqNat_goMux1,Go),
                           (lizzieLet19_4Succ_3Succ_1_argbuf,Go)] > (go_8_goMux_choice,C2) (go_8_goMux_data,Go) */
  logic [1:0] eqNat_goMux1_select_d;
  assign eqNat_goMux1_select_d = ((| eqNat_goMux1_select_q) ? eqNat_goMux1_select_q :
                                  (eqNat_goMux1_d[0] ? 2'd1 :
                                   (lizzieLet19_4Succ_3Succ_1_argbuf_d[0] ? 2'd2 :
                                    2'd0)));
  logic [1:0] eqNat_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_goMux1_select_q <= 2'd0;
    else
      eqNat_goMux1_select_q <= (eqNat_goMux1_done ? 2'd0 :
                                eqNat_goMux1_select_d);
  logic [1:0] eqNat_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_goMux1_emit_q <= 2'd0;
    else
      eqNat_goMux1_emit_q <= (eqNat_goMux1_done ? 2'd0 :
                              eqNat_goMux1_emit_d);
  logic [1:0] eqNat_goMux1_emit_d;
  assign eqNat_goMux1_emit_d = (eqNat_goMux1_emit_q | ({go_8_goMux_choice_d[0],
                                                        go_8_goMux_data_d[0]} & {go_8_goMux_choice_r,
                                                                                 go_8_goMux_data_r}));
  logic eqNat_goMux1_done;
  assign eqNat_goMux1_done = (& eqNat_goMux1_emit_d);
  assign {lizzieLet19_4Succ_3Succ_1_argbuf_r,
          eqNat_goMux1_r} = (eqNat_goMux1_done ? eqNat_goMux1_select_d :
                             2'd0);
  assign go_8_goMux_data_d = ((eqNat_goMux1_select_d[0] && (! eqNat_goMux1_emit_q[0])) ? eqNat_goMux1_d :
                              ((eqNat_goMux1_select_d[1] && (! eqNat_goMux1_emit_q[0])) ? lizzieLet19_4Succ_3Succ_1_argbuf_d :
                               1'd0));
  assign go_8_goMux_choice_d = ((eqNat_goMux1_select_d[0] && (! eqNat_goMux1_emit_q[1])) ? C1_2_dc(1'd1) :
                                ((eqNat_goMux1_select_d[1] && (! eqNat_goMux1_emit_q[1])) ? C2_2_dc(1'd1) :
                                 {1'd0, 1'd0}));
  
  /* fork (Ty Go) : (eqNat_initBuf,Go) > [(eqNat_unlockFork1,Go),
                                     (eqNat_unlockFork2,Go),
                                     (eqNat_unlockFork3,Go)] */
  logic [2:0] eqNat_initBuf_emitted;
  logic [2:0] eqNat_initBuf_done;
  assign eqNat_unlockFork1_d = (eqNat_initBuf_d[0] && (! eqNat_initBuf_emitted[0]));
  assign eqNat_unlockFork2_d = (eqNat_initBuf_d[0] && (! eqNat_initBuf_emitted[1]));
  assign eqNat_unlockFork3_d = (eqNat_initBuf_d[0] && (! eqNat_initBuf_emitted[2]));
  assign eqNat_initBuf_done = (eqNat_initBuf_emitted | ({eqNat_unlockFork3_d[0],
                                                         eqNat_unlockFork2_d[0],
                                                         eqNat_unlockFork1_d[0]} & {eqNat_unlockFork3_r,
                                                                                    eqNat_unlockFork2_r,
                                                                                    eqNat_unlockFork1_r}));
  assign eqNat_initBuf_r = (& eqNat_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_initBuf_emitted <= 3'd0;
    else
      eqNat_initBuf_emitted <= (eqNat_initBuf_r ? 3'd0 :
                                eqNat_initBuf_done);
  
  /* initbuf (Ty Go,Dcon Go) : (eqNat_initBufi,Go) > (eqNat_initBuf,Go) */
  assign eqNat_initBufi_r = ((! eqNat_initBuf_d[0]) || eqNat_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) eqNat_initBuf_d <= Go_dc(1'd1);
    else if (eqNat_initBufi_r) eqNat_initBuf_d <= eqNat_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (eqNat_unlockFork1,Go) [(eqNatTupGo___Pointer_Nat___Pointer_Natgo_8,Go)] > (eqNat_goMux1,Go) */
  assign eqNat_goMux1_d = (eqNat_unlockFork1_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d[0]);
  assign eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_r = (eqNat_goMux1_r && (eqNat_unlockFork1_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d[0]));
  assign eqNat_unlockFork1_r = (eqNat_goMux1_r && (eqNat_unlockFork1_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natgo_8_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_Nat) : (eqNat_unlockFork2,Go) [(eqNatTupGo___Pointer_Nat___Pointer_Natxa96,Pointer_Nat)] > (eqNat_goMux2,Pointer_Nat) */
  assign eqNat_goMux2_d = {eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d[16:1],
                           (eqNat_unlockFork2_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d[0])};
  assign eqNatTupGo___Pointer_Nat___Pointer_Natxa96_r = (eqNat_goMux2_r && (eqNat_unlockFork2_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d[0]));
  assign eqNat_unlockFork2_r = (eqNat_goMux2_r && (eqNat_unlockFork2_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natxa96_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_Nat) : (eqNat_unlockFork3,Go) [(eqNatTupGo___Pointer_Nat___Pointer_Natya97,Pointer_Nat)] > (eqNat_goMux3,Pointer_Nat) */
  assign eqNat_goMux3_d = {eqNatTupGo___Pointer_Nat___Pointer_Natya97_d[16:1],
                           (eqNat_unlockFork3_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natya97_d[0])};
  assign eqNatTupGo___Pointer_Nat___Pointer_Natya97_r = (eqNat_goMux3_r && (eqNat_unlockFork3_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natya97_d[0]));
  assign eqNat_unlockFork3_r = (eqNat_goMux3_r && (eqNat_unlockFork3_d[0] && eqNatTupGo___Pointer_Nat___Pointer_Natya97_d[0]));
  
  /* buf (Ty QTree_Bool) : (es_0_1_1QVal_Bool,QTree_Bool) > (lizzieLet5_1_argbuf,QTree_Bool) */
  QTree_Bool_t es_0_1_1QVal_Bool_bufchan_d;
  logic es_0_1_1QVal_Bool_bufchan_r;
  assign es_0_1_1QVal_Bool_r = ((! es_0_1_1QVal_Bool_bufchan_d[0]) || es_0_1_1QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_1_1QVal_Bool_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_1_1QVal_Bool_r)
        es_0_1_1QVal_Bool_bufchan_d <= es_0_1_1QVal_Bool_d;
  QTree_Bool_t es_0_1_1QVal_Bool_bufchan_buf;
  assign es_0_1_1QVal_Bool_bufchan_r = (! es_0_1_1QVal_Bool_bufchan_buf[0]);
  assign lizzieLet5_1_argbuf_d = (es_0_1_1QVal_Bool_bufchan_buf[0] ? es_0_1_1QVal_Bool_bufchan_buf :
                                  es_0_1_1QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1_1QVal_Bool_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet5_1_argbuf_r && es_0_1_1QVal_Bool_bufchan_buf[0]))
        es_0_1_1QVal_Bool_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet5_1_argbuf_r) && (! es_0_1_1QVal_Bool_bufchan_buf[0])))
        es_0_1_1QVal_Bool_bufchan_buf <= es_0_1_1QVal_Bool_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Go) : (es_0_2_1,MyBool) (lizzieLet13_4QVal_Bool_3,Go) > [(es_0_2_1MyFalse,Go),
                                                                   (es_0_2_1MyTrue,Go)] */
  logic [1:0] lizzieLet13_4QVal_Bool_3_onehotd;
  always_comb
    if ((es_0_2_1_d[0] && lizzieLet13_4QVal_Bool_3_d[0]))
      unique case (es_0_2_1_d[1:1])
        1'd0: lizzieLet13_4QVal_Bool_3_onehotd = 2'd1;
        1'd1: lizzieLet13_4QVal_Bool_3_onehotd = 2'd2;
        default: lizzieLet13_4QVal_Bool_3_onehotd = 2'd0;
      endcase
    else lizzieLet13_4QVal_Bool_3_onehotd = 2'd0;
  assign es_0_2_1MyFalse_d = lizzieLet13_4QVal_Bool_3_onehotd[0];
  assign es_0_2_1MyTrue_d = lizzieLet13_4QVal_Bool_3_onehotd[1];
  assign lizzieLet13_4QVal_Bool_3_r = (| (lizzieLet13_4QVal_Bool_3_onehotd & {es_0_2_1MyTrue_r,
                                                                              es_0_2_1MyFalse_r}));
  assign es_0_2_1_r = lizzieLet13_4QVal_Bool_3_r;
  
  /* buf (Ty Go) : (es_0_2_1MyFalse,Go) > (es_0_2_1MyFalse_1_argbuf,Go) */
  Go_t es_0_2_1MyFalse_bufchan_d;
  logic es_0_2_1MyFalse_bufchan_r;
  assign es_0_2_1MyFalse_r = ((! es_0_2_1MyFalse_bufchan_d[0]) || es_0_2_1MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_1MyFalse_bufchan_d <= 1'd0;
    else
      if (es_0_2_1MyFalse_r)
        es_0_2_1MyFalse_bufchan_d <= es_0_2_1MyFalse_d;
  Go_t es_0_2_1MyFalse_bufchan_buf;
  assign es_0_2_1MyFalse_bufchan_r = (! es_0_2_1MyFalse_bufchan_buf[0]);
  assign es_0_2_1MyFalse_1_argbuf_d = (es_0_2_1MyFalse_bufchan_buf[0] ? es_0_2_1MyFalse_bufchan_buf :
                                       es_0_2_1MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_1MyFalse_bufchan_buf <= 1'd0;
    else
      if ((es_0_2_1MyFalse_1_argbuf_r && es_0_2_1MyFalse_bufchan_buf[0]))
        es_0_2_1MyFalse_bufchan_buf <= 1'd0;
      else if (((! es_0_2_1MyFalse_1_argbuf_r) && (! es_0_2_1MyFalse_bufchan_buf[0])))
        es_0_2_1MyFalse_bufchan_buf <= es_0_2_1MyFalse_bufchan_d;
  
  /* fork (Ty Go) : (es_0_2_1MyTrue,Go) > [(es_0_2_1MyTrue_1,Go),
                                      (es_0_2_1MyTrue_2,Go)] */
  logic [1:0] es_0_2_1MyTrue_emitted;
  logic [1:0] es_0_2_1MyTrue_done;
  assign es_0_2_1MyTrue_1_d = (es_0_2_1MyTrue_d[0] && (! es_0_2_1MyTrue_emitted[0]));
  assign es_0_2_1MyTrue_2_d = (es_0_2_1MyTrue_d[0] && (! es_0_2_1MyTrue_emitted[1]));
  assign es_0_2_1MyTrue_done = (es_0_2_1MyTrue_emitted | ({es_0_2_1MyTrue_2_d[0],
                                                           es_0_2_1MyTrue_1_d[0]} & {es_0_2_1MyTrue_2_r,
                                                                                     es_0_2_1MyTrue_1_r}));
  assign es_0_2_1MyTrue_r = (& es_0_2_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_1MyTrue_emitted <= 2'd0;
    else
      es_0_2_1MyTrue_emitted <= (es_0_2_1MyTrue_r ? 2'd0 :
                                 es_0_2_1MyTrue_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(es_0_2_1MyTrue_1,Go)] > (es_0_2_1MyTrue_1QNone_Nat,QTree_Nat) */
  assign es_0_2_1MyTrue_1QNone_Nat_d = QNone_Nat_dc((& {es_0_2_1MyTrue_1_d[0]}), es_0_2_1MyTrue_1_d);
  assign {es_0_2_1MyTrue_1_r} = {1 {(es_0_2_1MyTrue_1QNone_Nat_r && es_0_2_1MyTrue_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (es_0_2_1MyTrue_1QNone_Nat,QTree_Nat) > (lizzieLet16_1_argbuf,QTree_Nat) */
  QTree_Nat_t es_0_2_1MyTrue_1QNone_Nat_bufchan_d;
  logic es_0_2_1MyTrue_1QNone_Nat_bufchan_r;
  assign es_0_2_1MyTrue_1QNone_Nat_r = ((! es_0_2_1MyTrue_1QNone_Nat_bufchan_d[0]) || es_0_2_1MyTrue_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_2_1MyTrue_1QNone_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_2_1MyTrue_1QNone_Nat_r)
        es_0_2_1MyTrue_1QNone_Nat_bufchan_d <= es_0_2_1MyTrue_1QNone_Nat_d;
  QTree_Nat_t es_0_2_1MyTrue_1QNone_Nat_bufchan_buf;
  assign es_0_2_1MyTrue_1QNone_Nat_bufchan_r = (! es_0_2_1MyTrue_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet16_1_argbuf_d = (es_0_2_1MyTrue_1QNone_Nat_bufchan_buf[0] ? es_0_2_1MyTrue_1QNone_Nat_bufchan_buf :
                                   es_0_2_1MyTrue_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_2_1MyTrue_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet16_1_argbuf_r && es_0_2_1MyTrue_1QNone_Nat_bufchan_buf[0]))
        es_0_2_1MyTrue_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet16_1_argbuf_r) && (! es_0_2_1MyTrue_1QNone_Nat_bufchan_buf[0])))
        es_0_2_1MyTrue_1QNone_Nat_bufchan_buf <= es_0_2_1MyTrue_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (es_0_2_1MyTrue_2,Go) > (es_0_2_1MyTrue_2_argbuf,Go) */
  Go_t es_0_2_1MyTrue_2_bufchan_d;
  logic es_0_2_1MyTrue_2_bufchan_r;
  assign es_0_2_1MyTrue_2_r = ((! es_0_2_1MyTrue_2_bufchan_d[0]) || es_0_2_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (es_0_2_1MyTrue_2_r)
        es_0_2_1MyTrue_2_bufchan_d <= es_0_2_1MyTrue_2_d;
  Go_t es_0_2_1MyTrue_2_bufchan_buf;
  assign es_0_2_1MyTrue_2_bufchan_r = (! es_0_2_1MyTrue_2_bufchan_buf[0]);
  assign es_0_2_1MyTrue_2_argbuf_d = (es_0_2_1MyTrue_2_bufchan_buf[0] ? es_0_2_1MyTrue_2_bufchan_buf :
                                      es_0_2_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((es_0_2_1MyTrue_2_argbuf_r && es_0_2_1MyTrue_2_bufchan_buf[0]))
        es_0_2_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! es_0_2_1MyTrue_2_argbuf_r) && (! es_0_2_1MyTrue_2_bufchan_buf[0])))
        es_0_2_1MyTrue_2_bufchan_buf <= es_0_2_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTmain_map'_Bool_Nat) : (es_0_2_2,MyBool) (lizzieLet13_6QVal_Bool,Pointer_CTmain_map'_Bool_Nat) > [(es_0_2_2MyFalse,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                     (es_0_2_2MyTrue,Pointer_CTmain_map'_Bool_Nat)] */
  logic [1:0] lizzieLet13_6QVal_Bool_onehotd;
  always_comb
    if ((es_0_2_2_d[0] && lizzieLet13_6QVal_Bool_d[0]))
      unique case (es_0_2_2_d[1:1])
        1'd0: lizzieLet13_6QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet13_6QVal_Bool_onehotd = 2'd2;
        default: lizzieLet13_6QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet13_6QVal_Bool_onehotd = 2'd0;
  assign es_0_2_2MyFalse_d = {lizzieLet13_6QVal_Bool_d[16:1],
                              lizzieLet13_6QVal_Bool_onehotd[0]};
  assign es_0_2_2MyTrue_d = {lizzieLet13_6QVal_Bool_d[16:1],
                             lizzieLet13_6QVal_Bool_onehotd[1]};
  assign lizzieLet13_6QVal_Bool_r = (| (lizzieLet13_6QVal_Bool_onehotd & {es_0_2_2MyTrue_r,
                                                                          es_0_2_2MyFalse_r}));
  assign es_0_2_2_r = lizzieLet13_6QVal_Bool_r;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (es_0_2_2MyFalse,Pointer_CTmain_map'_Bool_Nat) > (es_0_2_2MyFalse_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyFalse_bufchan_d;
  logic es_0_2_2MyFalse_bufchan_r;
  assign es_0_2_2MyFalse_r = ((! es_0_2_2MyFalse_bufchan_d[0]) || es_0_2_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_2MyFalse_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_2_2MyFalse_r)
        es_0_2_2MyFalse_bufchan_d <= es_0_2_2MyFalse_d;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyFalse_bufchan_buf;
  assign es_0_2_2MyFalse_bufchan_r = (! es_0_2_2MyFalse_bufchan_buf[0]);
  assign es_0_2_2MyFalse_1_argbuf_d = (es_0_2_2MyFalse_bufchan_buf[0] ? es_0_2_2MyFalse_bufchan_buf :
                                       es_0_2_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_2_2MyFalse_1_argbuf_r && es_0_2_2MyFalse_bufchan_buf[0]))
        es_0_2_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_2_2MyFalse_1_argbuf_r) && (! es_0_2_2MyFalse_bufchan_buf[0])))
        es_0_2_2MyFalse_bufchan_buf <= es_0_2_2MyFalse_bufchan_d;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (es_0_2_2MyTrue,Pointer_CTmain_map'_Bool_Nat) > (es_0_2_2MyTrue_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyTrue_bufchan_d;
  logic es_0_2_2MyTrue_bufchan_r;
  assign es_0_2_2MyTrue_r = ((! es_0_2_2MyTrue_bufchan_d[0]) || es_0_2_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_2MyTrue_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_2_2MyTrue_r) es_0_2_2MyTrue_bufchan_d <= es_0_2_2MyTrue_d;
  \Pointer_CTmain_map'_Bool_Nat_t  es_0_2_2MyTrue_bufchan_buf;
  assign es_0_2_2MyTrue_bufchan_r = (! es_0_2_2MyTrue_bufchan_buf[0]);
  assign es_0_2_2MyTrue_1_argbuf_d = (es_0_2_2MyTrue_bufchan_buf[0] ? es_0_2_2MyTrue_bufchan_buf :
                                      es_0_2_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_2_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_2_2MyTrue_1_argbuf_r && es_0_2_2MyTrue_bufchan_buf[0]))
        es_0_2_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_2_2MyTrue_1_argbuf_r) && (! es_0_2_2MyTrue_bufchan_buf[0])))
        es_0_2_2MyTrue_bufchan_buf <= es_0_2_2MyTrue_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_Nat) : (es_0_2_3,MyBool) (xa8d_2,Pointer_Nat) > [(es_0_2_3MyFalse,Pointer_Nat),
                                                                   (_57,Pointer_Nat)] */
  logic [1:0] xa8d_2_onehotd;
  always_comb
    if ((es_0_2_3_d[0] && xa8d_2_d[0]))
      unique case (es_0_2_3_d[1:1])
        1'd0: xa8d_2_onehotd = 2'd1;
        1'd1: xa8d_2_onehotd = 2'd2;
        default: xa8d_2_onehotd = 2'd0;
      endcase
    else xa8d_2_onehotd = 2'd0;
  assign es_0_2_3MyFalse_d = {xa8d_2_d[16:1], xa8d_2_onehotd[0]};
  assign _57_d = {xa8d_2_d[16:1], xa8d_2_onehotd[1]};
  assign xa8d_2_r = (| (xa8d_2_onehotd & {_57_r,
                                          es_0_2_3MyFalse_r}));
  assign es_0_2_3_r = xa8d_2_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(es_0_2_3MyFalse,Pointer_Nat)] > (es_0_2_3MyFalse_1QVal_Nat,QTree_Nat) */
  assign es_0_2_3MyFalse_1QVal_Nat_d = QVal_Nat_dc((& {es_0_2_3MyFalse_d[0]}), es_0_2_3MyFalse_d);
  assign {es_0_2_3MyFalse_r} = {1 {(es_0_2_3MyFalse_1QVal_Nat_r && es_0_2_3MyFalse_1QVal_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (es_0_2_3MyFalse_1QVal_Nat,QTree_Nat) > (lizzieLet15_1_argbuf,QTree_Nat) */
  QTree_Nat_t es_0_2_3MyFalse_1QVal_Nat_bufchan_d;
  logic es_0_2_3MyFalse_1QVal_Nat_bufchan_r;
  assign es_0_2_3MyFalse_1QVal_Nat_r = ((! es_0_2_3MyFalse_1QVal_Nat_bufchan_d[0]) || es_0_2_3MyFalse_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_2_3MyFalse_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_2_3MyFalse_1QVal_Nat_r)
        es_0_2_3MyFalse_1QVal_Nat_bufchan_d <= es_0_2_3MyFalse_1QVal_Nat_d;
  QTree_Nat_t es_0_2_3MyFalse_1QVal_Nat_bufchan_buf;
  assign es_0_2_3MyFalse_1QVal_Nat_bufchan_r = (! es_0_2_3MyFalse_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet15_1_argbuf_d = (es_0_2_3MyFalse_1QVal_Nat_bufchan_buf[0] ? es_0_2_3MyFalse_1QVal_Nat_bufchan_buf :
                                   es_0_2_3MyFalse_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_2_3MyFalse_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet15_1_argbuf_r && es_0_2_3MyFalse_1QVal_Nat_bufchan_buf[0]))
        es_0_2_3MyFalse_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet15_1_argbuf_r) && (! es_0_2_3MyFalse_1QVal_Nat_bufchan_buf[0])))
        es_0_2_3MyFalse_1QVal_Nat_bufchan_buf <= es_0_2_3MyFalse_1QVal_Nat_bufchan_d;
  
  /* buf (Ty MyDTBool_Nat) : (ga8Q_2_2,MyDTBool_Nat) > (ga8Q_2_2_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t ga8Q_2_2_bufchan_d;
  logic ga8Q_2_2_bufchan_r;
  assign ga8Q_2_2_r = ((! ga8Q_2_2_bufchan_d[0]) || ga8Q_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_2_2_bufchan_d <= 1'd0;
    else if (ga8Q_2_2_r) ga8Q_2_2_bufchan_d <= ga8Q_2_2_d;
  MyDTBool_Nat_t ga8Q_2_2_bufchan_buf;
  assign ga8Q_2_2_bufchan_r = (! ga8Q_2_2_bufchan_buf[0]);
  assign ga8Q_2_2_argbuf_d = (ga8Q_2_2_bufchan_buf[0] ? ga8Q_2_2_bufchan_buf :
                              ga8Q_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_2_2_bufchan_buf <= 1'd0;
    else
      if ((ga8Q_2_2_argbuf_r && ga8Q_2_2_bufchan_buf[0]))
        ga8Q_2_2_bufchan_buf <= 1'd0;
      else if (((! ga8Q_2_2_argbuf_r) && (! ga8Q_2_2_bufchan_buf[0])))
        ga8Q_2_2_bufchan_buf <= ga8Q_2_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Nat) : (ga8Q_2_destruct,MyDTBool_Nat) > [(ga8Q_2_1,MyDTBool_Nat),
                                                           (ga8Q_2_2,MyDTBool_Nat)] */
  logic [1:0] ga8Q_2_destruct_emitted;
  logic [1:0] ga8Q_2_destruct_done;
  assign ga8Q_2_1_d = (ga8Q_2_destruct_d[0] && (! ga8Q_2_destruct_emitted[0]));
  assign ga8Q_2_2_d = (ga8Q_2_destruct_d[0] && (! ga8Q_2_destruct_emitted[1]));
  assign ga8Q_2_destruct_done = (ga8Q_2_destruct_emitted | ({ga8Q_2_2_d[0],
                                                             ga8Q_2_1_d[0]} & {ga8Q_2_2_r,
                                                                               ga8Q_2_1_r}));
  assign ga8Q_2_destruct_r = (& ga8Q_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_2_destruct_emitted <= 2'd0;
    else
      ga8Q_2_destruct_emitted <= (ga8Q_2_destruct_r ? 2'd0 :
                                  ga8Q_2_destruct_done);
  
  /* buf (Ty MyDTBool_Nat) : (ga8Q_3_2,MyDTBool_Nat) > (ga8Q_3_2_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t ga8Q_3_2_bufchan_d;
  logic ga8Q_3_2_bufchan_r;
  assign ga8Q_3_2_r = ((! ga8Q_3_2_bufchan_d[0]) || ga8Q_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_3_2_bufchan_d <= 1'd0;
    else if (ga8Q_3_2_r) ga8Q_3_2_bufchan_d <= ga8Q_3_2_d;
  MyDTBool_Nat_t ga8Q_3_2_bufchan_buf;
  assign ga8Q_3_2_bufchan_r = (! ga8Q_3_2_bufchan_buf[0]);
  assign ga8Q_3_2_argbuf_d = (ga8Q_3_2_bufchan_buf[0] ? ga8Q_3_2_bufchan_buf :
                              ga8Q_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_3_2_bufchan_buf <= 1'd0;
    else
      if ((ga8Q_3_2_argbuf_r && ga8Q_3_2_bufchan_buf[0]))
        ga8Q_3_2_bufchan_buf <= 1'd0;
      else if (((! ga8Q_3_2_argbuf_r) && (! ga8Q_3_2_bufchan_buf[0])))
        ga8Q_3_2_bufchan_buf <= ga8Q_3_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Nat) : (ga8Q_3_destruct,MyDTBool_Nat) > [(ga8Q_3_1,MyDTBool_Nat),
                                                           (ga8Q_3_2,MyDTBool_Nat)] */
  logic [1:0] ga8Q_3_destruct_emitted;
  logic [1:0] ga8Q_3_destruct_done;
  assign ga8Q_3_1_d = (ga8Q_3_destruct_d[0] && (! ga8Q_3_destruct_emitted[0]));
  assign ga8Q_3_2_d = (ga8Q_3_destruct_d[0] && (! ga8Q_3_destruct_emitted[1]));
  assign ga8Q_3_destruct_done = (ga8Q_3_destruct_emitted | ({ga8Q_3_2_d[0],
                                                             ga8Q_3_1_d[0]} & {ga8Q_3_2_r,
                                                                               ga8Q_3_1_r}));
  assign ga8Q_3_destruct_r = (& ga8Q_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_3_destruct_emitted <= 2'd0;
    else
      ga8Q_3_destruct_emitted <= (ga8Q_3_destruct_r ? 2'd0 :
                                  ga8Q_3_destruct_done);
  
  /* buf (Ty MyDTBool_Nat) : (ga8Q_4_destruct,MyDTBool_Nat) > (ga8Q_4_1_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t ga8Q_4_destruct_bufchan_d;
  logic ga8Q_4_destruct_bufchan_r;
  assign ga8Q_4_destruct_r = ((! ga8Q_4_destruct_bufchan_d[0]) || ga8Q_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_4_destruct_bufchan_d <= 1'd0;
    else
      if (ga8Q_4_destruct_r)
        ga8Q_4_destruct_bufchan_d <= ga8Q_4_destruct_d;
  MyDTBool_Nat_t ga8Q_4_destruct_bufchan_buf;
  assign ga8Q_4_destruct_bufchan_r = (! ga8Q_4_destruct_bufchan_buf[0]);
  assign ga8Q_4_1_argbuf_d = (ga8Q_4_destruct_bufchan_buf[0] ? ga8Q_4_destruct_bufchan_buf :
                              ga8Q_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8Q_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((ga8Q_4_1_argbuf_r && ga8Q_4_destruct_bufchan_buf[0]))
        ga8Q_4_destruct_bufchan_buf <= 1'd0;
      else if (((! ga8Q_4_1_argbuf_r) && (! ga8Q_4_destruct_bufchan_buf[0])))
        ga8Q_4_destruct_bufchan_buf <= ga8Q_4_destruct_bufchan_d;
  
  /* dcon (Ty MyDTBool_Nat,
      Dcon Dcon_to_nat) : [(go_1,Go)] > (go_1Dcon_to_nat,MyDTBool_Nat) */
  assign go_1Dcon_to_nat_d = Dcon_to_nat_dc((& {go_1_d[0]}), go_1_d);
  assign {go_1_r} = {1 {(go_1Dcon_to_nat_r && go_1Dcon_to_nat_d[0])}};
  
  /* fork (Ty C10) : (go_10_goMux_choice,C10) > [(go_10_goMux_choice_1,C10),
                                            (go_10_goMux_choice_2,C10)] */
  logic [1:0] go_10_goMux_choice_emitted;
  logic [1:0] go_10_goMux_choice_done;
  assign go_10_goMux_choice_1_d = {go_10_goMux_choice_d[4:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[0]))};
  assign go_10_goMux_choice_2_d = {go_10_goMux_choice_d[4:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[1]))};
  assign go_10_goMux_choice_done = (go_10_goMux_choice_emitted | ({go_10_goMux_choice_2_d[0],
                                                                   go_10_goMux_choice_1_d[0]} & {go_10_goMux_choice_2_r,
                                                                                                 go_10_goMux_choice_1_r}));
  assign go_10_goMux_choice_r = (& go_10_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_10_goMux_choice_emitted <= 2'd0;
    else
      go_10_goMux_choice_emitted <= (go_10_goMux_choice_r ? 2'd0 :
                                     go_10_goMux_choice_done);
  
  /* mux (Ty C10,
     Ty Pointer_QTree_Bool) : (go_10_goMux_choice_1,C10) [(lizzieLet3_7QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                          (contRet_0_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet6_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet7_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet8_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet9_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet10_1_1_argbuf,Pointer_QTree_Bool),
                                                          (lizzieLet11_1_1_argbuf,Pointer_QTree_Bool)] > (srtarg_0_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] srtarg_0_goMux_mux_mux;
  logic [9:0] srtarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_1_d[4:1])
      4'd0:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd1,
                                                               lizzieLet3_7QNone_Bool_1_argbuf_d};
      4'd1:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd2,
                                                               contRet_0_1_argbuf_d};
      4'd2:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd4,
                                                               lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_d};
      4'd3:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd8,
                                                               lizzieLet6_1_argbuf_d};
      4'd4:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd16,
                                                               lizzieLet7_1_argbuf_d};
      4'd5:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd32,
                                                               lizzieLet8_1_argbuf_d};
      4'd6:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd64,
                                                               lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_d};
      4'd7:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd128,
                                                               lizzieLet9_1_argbuf_d};
      4'd8:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd256,
                                                               lizzieLet10_1_1_argbuf_d};
      4'd9:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd512,
                                                               lizzieLet11_1_1_argbuf_d};
      default:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {10'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign srtarg_0_goMux_mux_d = {srtarg_0_goMux_mux_mux[16:1],
                                 (srtarg_0_goMux_mux_mux[0] && go_10_goMux_choice_1_d[0])};
  assign go_10_goMux_choice_1_r = (srtarg_0_goMux_mux_d[0] && srtarg_0_goMux_mux_r);
  assign {lizzieLet11_1_1_argbuf_r,
          lizzieLet10_1_1_argbuf_r,
          lizzieLet9_1_argbuf_r,
          lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_r,
          lizzieLet8_1_argbuf_r,
          lizzieLet7_1_argbuf_r,
          lizzieLet6_1_argbuf_r,
          lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_r,
          contRet_0_1_argbuf_r,
          lizzieLet3_7QNone_Bool_1_argbuf_r} = (go_10_goMux_choice_1_r ? srtarg_0_goMux_mux_onehot :
                                                10'd0);
  
  /* mux (Ty C10,
     Ty Pointer_CT$wmAdd_Bool) : (go_10_goMux_choice_2,C10) [(lizzieLet3_5QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (sc_0_5_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                             (lizzieLet3_5QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool)] > (scfarg_0_goMux_mux,Pointer_CT$wmAdd_Bool) */
  logic [16:0] scfarg_0_goMux_mux_mux;
  logic [9:0] scfarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_2_d[4:1])
      4'd0:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd1,
                                                               lizzieLet3_5QNone_Bool_1_argbuf_d};
      4'd1:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd2,
                                                               sc_0_5_1_argbuf_d};
      4'd2:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd4,
                                                               lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_d};
      4'd3:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd8,
                                                               lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_d};
      4'd4:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd16,
                                                               lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_d};
      4'd5:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd32,
                                                               lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_d};
      4'd6:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd64,
                                                               lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_d};
      4'd7:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd128,
                                                               lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_d};
      4'd8:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd256,
                                                               lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_d};
      4'd9:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd512,
                                                               lizzieLet3_5QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {10'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign scfarg_0_goMux_mux_d = {scfarg_0_goMux_mux_mux[16:1],
                                 (scfarg_0_goMux_mux_mux[0] && go_10_goMux_choice_2_d[0])};
  assign go_10_goMux_choice_2_r = (scfarg_0_goMux_mux_d[0] && scfarg_0_goMux_mux_r);
  assign {lizzieLet3_5QError_Bool_1_argbuf_r,
          lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_r,
          lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_r,
          lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_r,
          sc_0_5_1_argbuf_r,
          lizzieLet3_5QNone_Bool_1_argbuf_r} = (go_10_goMux_choice_2_r ? scfarg_0_goMux_mux_onehot :
                                                10'd0);
  
  /* fork (Ty C5) : (go_11_goMux_choice,C5) > [(go_11_goMux_choice_1,C5),
                                          (go_11_goMux_choice_2,C5)] */
  logic [1:0] go_11_goMux_choice_emitted;
  logic [1:0] go_11_goMux_choice_done;
  assign go_11_goMux_choice_1_d = {go_11_goMux_choice_d[3:1],
                                   (go_11_goMux_choice_d[0] && (! go_11_goMux_choice_emitted[0]))};
  assign go_11_goMux_choice_2_d = {go_11_goMux_choice_d[3:1],
                                   (go_11_goMux_choice_d[0] && (! go_11_goMux_choice_emitted[1]))};
  assign go_11_goMux_choice_done = (go_11_goMux_choice_emitted | ({go_11_goMux_choice_2_d[0],
                                                                   go_11_goMux_choice_1_d[0]} & {go_11_goMux_choice_2_r,
                                                                                                 go_11_goMux_choice_1_r}));
  assign go_11_goMux_choice_r = (& go_11_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_11_goMux_choice_emitted <= 2'd0;
    else
      go_11_goMux_choice_emitted <= (go_11_goMux_choice_r ? 2'd0 :
                                     go_11_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Nat) : (go_11_goMux_choice_1,C5) [(lizzieLet1_1_1_argbuf,Pointer_QTree_Nat),
                                                        (contRet_0_1_1_argbuf,Pointer_QTree_Nat),
                                                        (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat),
                                                        (lizzieLet3_1_1_argbuf,Pointer_QTree_Nat),
                                                        (lizzieLet4_1_1_argbuf,Pointer_QTree_Nat)] > (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) */
  logic [16:0] srtarg_0_1_goMux_mux_mux;
  logic [4:0] srtarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_11_goMux_choice_1_d[3:1])
      3'd0:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd1,
                                                                   lizzieLet1_1_1_argbuf_d};
      3'd1:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd2,
                                                                   contRet_0_1_1_argbuf_d};
      3'd2:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd4,
                                                                   lizzieLet2_1_1_argbuf_d};
      3'd3:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd8,
                                                                   lizzieLet3_1_1_argbuf_d};
      3'd4:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd16,
                                                                   lizzieLet4_1_1_argbuf_d};
      default:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {5'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign srtarg_0_1_goMux_mux_d = {srtarg_0_1_goMux_mux_mux[16:1],
                                   (srtarg_0_1_goMux_mux_mux[0] && go_11_goMux_choice_1_d[0])};
  assign go_11_goMux_choice_1_r = (srtarg_0_1_goMux_mux_d[0] && srtarg_0_1_goMux_mux_r);
  assign {lizzieLet4_1_1_argbuf_r,
          lizzieLet3_1_1_argbuf_r,
          lizzieLet2_1_1_argbuf_r,
          contRet_0_1_1_argbuf_r,
          lizzieLet1_1_1_argbuf_r} = (go_11_goMux_choice_1_r ? srtarg_0_1_goMux_mux_onehot :
                                      5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTmain_map'_Bool_Nat) : (go_11_goMux_choice_2,C5) [(lizzieLet13_6QNone_Bool_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                   (sc_0_9_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                   (es_0_2_2MyFalse_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                   (es_0_2_2MyTrue_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                   (lizzieLet13_6QError_Bool_1_argbuf,Pointer_CTmain_map'_Bool_Nat)] > (scfarg_0_1_goMux_mux,Pointer_CTmain_map'_Bool_Nat) */
  logic [16:0] scfarg_0_1_goMux_mux_mux;
  logic [4:0] scfarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_11_goMux_choice_2_d[3:1])
      3'd0:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd1,
                                                                   lizzieLet13_6QNone_Bool_1_argbuf_d};
      3'd1:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd2,
                                                                   sc_0_9_1_argbuf_d};
      3'd2:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd4,
                                                                   es_0_2_2MyFalse_1_argbuf_d};
      3'd3:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd8,
                                                                   es_0_2_2MyTrue_1_argbuf_d};
      3'd4:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd16,
                                                                   lizzieLet13_6QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {5'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign scfarg_0_1_goMux_mux_d = {scfarg_0_1_goMux_mux_mux[16:1],
                                   (scfarg_0_1_goMux_mux_mux[0] && go_11_goMux_choice_2_d[0])};
  assign go_11_goMux_choice_2_r = (scfarg_0_1_goMux_mux_d[0] && scfarg_0_1_goMux_mux_r);
  assign {lizzieLet13_6QError_Bool_1_argbuf_r,
          es_0_2_2MyTrue_1_argbuf_r,
          es_0_2_2MyFalse_1_argbuf_r,
          sc_0_9_1_argbuf_r,
          lizzieLet13_6QNone_Bool_1_argbuf_r} = (go_11_goMux_choice_2_r ? scfarg_0_1_goMux_mux_onehot :
                                                 5'd0);
  
  /* buf (Ty Nat) : (go_12_1Zero,Nat) > (lizzieLet33_1_argbuf,Nat) */
  Nat_t go_12_1Zero_bufchan_d;
  logic go_12_1Zero_bufchan_r;
  assign go_12_1Zero_r = ((! go_12_1Zero_bufchan_d[0]) || go_12_1Zero_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_12_1Zero_bufchan_d <= {17'd0, 1'd0};
    else if (go_12_1Zero_r) go_12_1Zero_bufchan_d <= go_12_1Zero_d;
  Nat_t go_12_1Zero_bufchan_buf;
  assign go_12_1Zero_bufchan_r = (! go_12_1Zero_bufchan_buf[0]);
  assign lizzieLet33_1_argbuf_d = (go_12_1Zero_bufchan_buf[0] ? go_12_1Zero_bufchan_buf :
                                   go_12_1Zero_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_12_1Zero_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet33_1_argbuf_r && go_12_1Zero_bufchan_buf[0]))
        go_12_1Zero_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet33_1_argbuf_r) && (! go_12_1Zero_bufchan_buf[0])))
        go_12_1Zero_bufchan_buf <= go_12_1Zero_bufchan_d;
  
  /* buf (Ty MyDTBool_Nat) : (go_1Dcon_to_nat,MyDTBool_Nat) > (es_1_1_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t go_1Dcon_to_nat_bufchan_d;
  logic go_1Dcon_to_nat_bufchan_r;
  assign go_1Dcon_to_nat_r = ((! go_1Dcon_to_nat_bufchan_d[0]) || go_1Dcon_to_nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_1Dcon_to_nat_bufchan_d <= 1'd0;
    else
      if (go_1Dcon_to_nat_r)
        go_1Dcon_to_nat_bufchan_d <= go_1Dcon_to_nat_d;
  MyDTBool_Nat_t go_1Dcon_to_nat_bufchan_buf;
  assign go_1Dcon_to_nat_bufchan_r = (! go_1Dcon_to_nat_bufchan_buf[0]);
  assign es_1_1_argbuf_d = (go_1Dcon_to_nat_bufchan_buf[0] ? go_1Dcon_to_nat_bufchan_buf :
                            go_1Dcon_to_nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_1Dcon_to_nat_bufchan_buf <= 1'd0;
    else
      if ((es_1_1_argbuf_r && go_1Dcon_to_nat_bufchan_buf[0]))
        go_1Dcon_to_nat_bufchan_buf <= 1'd0;
      else if (((! es_1_1_argbuf_r) && (! go_1Dcon_to_nat_bufchan_buf[0])))
        go_1Dcon_to_nat_bufchan_buf <= go_1Dcon_to_nat_bufchan_d;
  
  /* dcon (Ty MyDTNat_Bool,
      Dcon Dcon_is_z_nut) : [(go_2,Go)] > (go_2Dcon_is_z_nut,MyDTNat_Bool) */
  assign go_2Dcon_is_z_nut_d = Dcon_is_z_nut_dc((& {go_2_d[0]}), go_2_d);
  assign {go_2_r} = {1 {(go_2Dcon_is_z_nut_r && go_2Dcon_is_z_nut_d[0])}};
  
  /* buf (Ty MyDTNat_Bool) : (go_2Dcon_is_z_nut,MyDTNat_Bool) > (es_0_1_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t go_2Dcon_is_z_nut_bufchan_d;
  logic go_2Dcon_is_z_nut_bufchan_r;
  assign go_2Dcon_is_z_nut_r = ((! go_2Dcon_is_z_nut_bufchan_d[0]) || go_2Dcon_is_z_nut_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2Dcon_is_z_nut_bufchan_d <= 1'd0;
    else
      if (go_2Dcon_is_z_nut_r)
        go_2Dcon_is_z_nut_bufchan_d <= go_2Dcon_is_z_nut_d;
  MyDTNat_Bool_t go_2Dcon_is_z_nut_bufchan_buf;
  assign go_2Dcon_is_z_nut_bufchan_r = (! go_2Dcon_is_z_nut_bufchan_buf[0]);
  assign es_0_1_argbuf_d = (go_2Dcon_is_z_nut_bufchan_buf[0] ? go_2Dcon_is_z_nut_bufchan_buf :
                            go_2Dcon_is_z_nut_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2Dcon_is_z_nut_bufchan_buf <= 1'd0;
    else
      if ((es_0_1_argbuf_r && go_2Dcon_is_z_nut_bufchan_buf[0]))
        go_2Dcon_is_z_nut_bufchan_buf <= 1'd0;
      else if (((! es_0_1_argbuf_r) && (! go_2Dcon_is_z_nut_bufchan_buf[0])))
        go_2Dcon_is_z_nut_bufchan_buf <= go_2Dcon_is_z_nut_bufchan_d;
  
  /* dcon (Ty CT$wmAdd_Bool,
      Dcon L$wmAdd_Boolsbos) : [(go_2_1,Go)] > (go_2_1L$wmAdd_Boolsbos,CT$wmAdd_Bool) */
  assign go_2_1L$wmAdd_Boolsbos_d = L$wmAdd_Boolsbos_dc((& {go_2_1_d[0]}), go_2_1_d);
  assign {go_2_1_r} = {1 {(go_2_1L$wmAdd_Boolsbos_r && go_2_1L$wmAdd_Boolsbos_d[0])}};
  
  /* buf (Ty CT$wmAdd_Bool) : (go_2_1L$wmAdd_Boolsbos,CT$wmAdd_Bool) > (lizzieLet0_1_argbuf,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t go_2_1L$wmAdd_Boolsbos_bufchan_d;
  logic go_2_1L$wmAdd_Boolsbos_bufchan_r;
  assign go_2_1L$wmAdd_Boolsbos_r = ((! go_2_1L$wmAdd_Boolsbos_bufchan_d[0]) || go_2_1L$wmAdd_Boolsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_2_1L$wmAdd_Boolsbos_bufchan_d <= {115'd0, 1'd0};
    else
      if (go_2_1L$wmAdd_Boolsbos_r)
        go_2_1L$wmAdd_Boolsbos_bufchan_d <= go_2_1L$wmAdd_Boolsbos_d;
  CT$wmAdd_Bool_t go_2_1L$wmAdd_Boolsbos_bufchan_buf;
  assign go_2_1L$wmAdd_Boolsbos_bufchan_r = (! go_2_1L$wmAdd_Boolsbos_bufchan_buf[0]);
  assign lizzieLet0_1_argbuf_d = (go_2_1L$wmAdd_Boolsbos_bufchan_buf[0] ? go_2_1L$wmAdd_Boolsbos_bufchan_buf :
                                  go_2_1L$wmAdd_Boolsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_2_1L$wmAdd_Boolsbos_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((lizzieLet0_1_argbuf_r && go_2_1L$wmAdd_Boolsbos_bufchan_buf[0]))
        go_2_1L$wmAdd_Boolsbos_bufchan_buf <= {115'd0, 1'd0};
      else if (((! lizzieLet0_1_argbuf_r) && (! go_2_1L$wmAdd_Boolsbos_bufchan_buf[0])))
        go_2_1L$wmAdd_Boolsbos_bufchan_buf <= go_2_1L$wmAdd_Boolsbos_bufchan_d;
  
  /* buf (Ty Go) : (go_2_2,Go) > (go_2_2_argbuf,Go) */
  Go_t go_2_2_bufchan_d;
  logic go_2_2_bufchan_r;
  assign go_2_2_r = ((! go_2_2_bufchan_d[0]) || go_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2_2_bufchan_d <= 1'd0;
    else if (go_2_2_r) go_2_2_bufchan_d <= go_2_2_d;
  Go_t go_2_2_bufchan_buf;
  assign go_2_2_bufchan_r = (! go_2_2_bufchan_buf[0]);
  assign go_2_2_argbuf_d = (go_2_2_bufchan_buf[0] ? go_2_2_bufchan_buf :
                            go_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2_2_bufchan_buf <= 1'd0;
    else
      if ((go_2_2_argbuf_r && go_2_2_bufchan_buf[0]))
        go_2_2_bufchan_buf <= 1'd0;
      else if (((! go_2_2_argbuf_r) && (! go_2_2_bufchan_buf[0])))
        go_2_2_bufchan_buf <= go_2_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool,
      Dcon TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool) : [(go_2_2_argbuf,Go),
                                                                                                            (wskB_1_argbuf,MyDTBool_Bool_Bool),
                                                                                                            (w1skC_1_argbuf,Pointer_QTree_Bool),
                                                                                                            (w2skD_1_argbuf,Pointer_QTree_Bool),
                                                                                                            (lizzieLet12_1_argbuf,Pointer_CT$wmAdd_Bool)] > (call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1,TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool) */
  assign call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d = TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_dc((& {go_2_2_argbuf_d[0],
                                                                                                                                                                                                                                wskB_1_argbuf_d[0],
                                                                                                                                                                                                                                w1skC_1_argbuf_d[0],
                                                                                                                                                                                                                                w2skD_1_argbuf_d[0],
                                                                                                                                                                                                                                lizzieLet12_1_argbuf_d[0]}), go_2_2_argbuf_d, wskB_1_argbuf_d, w1skC_1_argbuf_d, w2skD_1_argbuf_d, lizzieLet12_1_argbuf_d);
  assign {go_2_2_argbuf_r,
          wskB_1_argbuf_r,
          w1skC_1_argbuf_r,
          w2skD_1_argbuf_r,
          lizzieLet12_1_argbuf_r} = {5 {(call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_r && call_$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CT$wmAdd_Bool_1_d[0])}};
  
  /* dcon (Ty MyDTBool_Bool_Bool,
      Dcon Dcon_||) : [(go_3,Go)] > (go_3Dcon_||,MyDTBool_Bool_Bool) */
  assign \go_3Dcon_||_d  = \Dcon_||_dc ((& {go_3_d[0]}), go_3_d);
  assign {go_3_r} = {1 {(\go_3Dcon_||_r  && \go_3Dcon_||_d [0])}};
  
  /* buf (Ty MyDTBool_Bool_Bool) : (go_3Dcon_||,MyDTBool_Bool_Bool) > (es_3_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t \go_3Dcon_||_bufchan_d ;
  logic \go_3Dcon_||_bufchan_r ;
  assign \go_3Dcon_||_r  = ((! \go_3Dcon_||_bufchan_d [0]) || \go_3Dcon_||_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_3Dcon_||_bufchan_d  <= 1'd0;
    else
      if (\go_3Dcon_||_r ) \go_3Dcon_||_bufchan_d  <= \go_3Dcon_||_d ;
  MyDTBool_Bool_Bool_t \go_3Dcon_||_bufchan_buf ;
  assign \go_3Dcon_||_bufchan_r  = (! \go_3Dcon_||_bufchan_buf [0]);
  assign es_3_1_argbuf_d = (\go_3Dcon_||_bufchan_buf [0] ? \go_3Dcon_||_bufchan_buf  :
                            \go_3Dcon_||_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_3Dcon_||_bufchan_buf  <= 1'd0;
    else
      if ((es_3_1_argbuf_r && \go_3Dcon_||_bufchan_buf [0]))
        \go_3Dcon_||_bufchan_buf  <= 1'd0;
      else if (((! es_3_1_argbuf_r) && (! \go_3Dcon_||_bufchan_buf [0])))
        \go_3Dcon_||_bufchan_buf  <= \go_3Dcon_||_bufchan_d ;
  
  /* buf (Ty Go) : (go_4,Go) > (go_4_argbuf,Go) */
  Go_t go_4_bufchan_d;
  logic go_4_bufchan_r;
  assign go_4_r = ((! go_4_bufchan_d[0]) || go_4_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_bufchan_d <= 1'd0;
    else if (go_4_r) go_4_bufchan_d <= go_4_d;
  Go_t go_4_bufchan_buf;
  assign go_4_bufchan_r = (! go_4_bufchan_buf[0]);
  assign go_4_argbuf_d = (go_4_bufchan_buf[0] ? go_4_bufchan_buf :
                          go_4_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_bufchan_buf <= 1'd0;
    else
      if ((go_4_argbuf_r && go_4_bufchan_buf[0]))
        go_4_bufchan_buf <= 1'd0;
      else if (((! go_4_argbuf_r) && (! go_4_bufchan_buf[0])))
        go_4_bufchan_buf <= go_4_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool,
      Dcon TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(go_4_argbuf,Go),
                                                                                    (es_3_1_argbuf,MyDTBool_Bool_Bool),
                                                                                    (m1a9d_0,Pointer_QTree_Bool),
                                                                                    (m2a9e_1,Pointer_QTree_Bool)] > ($wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  assign \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d  = TupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_dc((& {go_4_argbuf_d[0],
                                                                                                                                                                             es_3_1_argbuf_d[0],
                                                                                                                                                                             m1a9d_0_d[0],
                                                                                                                                                                             m2a9e_1_d[0]}), go_4_argbuf_d, es_3_1_argbuf_d, m1a9d_0_d, m2a9e_1_d);
  assign {go_4_argbuf_r,
          es_3_1_argbuf_r,
          m1a9d_0_r,
          m2a9e_1_r} = {4 {(\$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r  && \$wmAdd_BoolTupGo___MyDTBool_Bool_Bool___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d [0])}};
  
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
  
  /* dcon (Ty TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool,
      Dcon TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool) : [(go_5_argbuf,Go),
                                                                        (es_0_1_argbuf,MyDTNat_Bool),
                                                                        (es_1_1_argbuf,MyDTBool_Nat),
                                                                        (es_2_1_argbuf,Pointer_QTree_Bool)] > (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1,TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool) */
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d  = TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_dc((& {go_5_argbuf_d[0],
                                                                                                                                                            es_0_1_argbuf_d[0],
                                                                                                                                                            es_1_1_argbuf_d[0],
                                                                                                                                                            es_2_1_argbuf_d[0]}), go_5_argbuf_d, es_0_1_argbuf_d, es_1_1_argbuf_d, es_2_1_argbuf_d);
  assign {go_5_argbuf_r,
          es_0_1_argbuf_r,
          es_1_1_argbuf_r,
          es_2_1_argbuf_r} = {4 {(\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_r  && \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [0])}};
  
  /* fork (Ty C5) : (go_6_goMux_choice,C5) > [(go_6_goMux_choice_1,C5),
                                         (go_6_goMux_choice_2,C5),
                                         (go_6_goMux_choice_3,C5),
                                         (go_6_goMux_choice_4,C5)] */
  logic [3:0] go_6_goMux_choice_emitted;
  logic [3:0] go_6_goMux_choice_done;
  assign go_6_goMux_choice_1_d = {go_6_goMux_choice_d[3:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[0]))};
  assign go_6_goMux_choice_2_d = {go_6_goMux_choice_d[3:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[1]))};
  assign go_6_goMux_choice_3_d = {go_6_goMux_choice_d[3:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[2]))};
  assign go_6_goMux_choice_4_d = {go_6_goMux_choice_d[3:1],
                                  (go_6_goMux_choice_d[0] && (! go_6_goMux_choice_emitted[3]))};
  assign go_6_goMux_choice_done = (go_6_goMux_choice_emitted | ({go_6_goMux_choice_4_d[0],
                                                                 go_6_goMux_choice_3_d[0],
                                                                 go_6_goMux_choice_2_d[0],
                                                                 go_6_goMux_choice_1_d[0]} & {go_6_goMux_choice_4_r,
                                                                                              go_6_goMux_choice_3_r,
                                                                                              go_6_goMux_choice_2_r,
                                                                                              go_6_goMux_choice_1_r}));
  assign go_6_goMux_choice_r = (& go_6_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_goMux_choice_emitted <= 4'd0;
    else
      go_6_goMux_choice_emitted <= (go_6_goMux_choice_r ? 4'd0 :
                                    go_6_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty MyDTBool_Bool_Bool) : (go_6_goMux_choice_1,C5) [(call_$wmAdd_Bool_goMux2,MyDTBool_Bool_Bool),
                                                        (wskB_2_2_argbuf,MyDTBool_Bool_Bool),
                                                        (wskB_3_2_argbuf,MyDTBool_Bool_Bool),
                                                        (wskB_4_1_argbuf,MyDTBool_Bool_Bool),
                                                        (lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf,MyDTBool_Bool_Bool)] > (wskB_1_goMux_mux,MyDTBool_Bool_Bool) */
  logic [0:0] wskB_1_goMux_mux_mux;
  logic [4:0] wskB_1_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_1_d[3:1])
      3'd0:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd1,
                                                           call_$wmAdd_Bool_goMux2_d};
      3'd1:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd2,
                                                           wskB_2_2_argbuf_d};
      3'd2:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd4,
                                                           wskB_3_2_argbuf_d};
      3'd3:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd8,
                                                           wskB_4_1_argbuf_d};
      3'd4:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd16,
                                                           lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_d};
      default:
        {wskB_1_goMux_mux_onehot, wskB_1_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign wskB_1_goMux_mux_d = (wskB_1_goMux_mux_mux[0] && go_6_goMux_choice_1_d[0]);
  assign go_6_goMux_choice_1_r = (wskB_1_goMux_mux_d[0] && wskB_1_goMux_mux_r);
  assign {lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_r,
          wskB_4_1_argbuf_r,
          wskB_3_2_argbuf_r,
          wskB_2_2_argbuf_r,
          call_$wmAdd_Bool_goMux2_r} = (go_6_goMux_choice_1_r ? wskB_1_goMux_mux_onehot :
                                        5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_6_goMux_choice_2,C5) [(call_$wmAdd_Bool_goMux3,Pointer_QTree_Bool),
                                                        (q3a8q_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2a8p_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1a8o_3_1_argbuf,Pointer_QTree_Bool),
                                                        (lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf,Pointer_QTree_Bool)] > (w1skC_1_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] w1skC_1_goMux_mux_mux;
  logic [4:0] w1skC_1_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_2_d[3:1])
      3'd0:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd1,
                                                             call_$wmAdd_Bool_goMux3_d};
      3'd1:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd2,
                                                             q3a8q_1_1_argbuf_d};
      3'd2:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd4,
                                                             q2a8p_2_1_argbuf_d};
      3'd3:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd8,
                                                             q1a8o_3_1_argbuf_d};
      3'd4:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd16,
                                                             lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_d};
      default:
        {w1skC_1_goMux_mux_onehot, w1skC_1_goMux_mux_mux} = {5'd0,
                                                             {16'd0, 1'd0}};
    endcase
  assign w1skC_1_goMux_mux_d = {w1skC_1_goMux_mux_mux[16:1],
                                (w1skC_1_goMux_mux_mux[0] && go_6_goMux_choice_2_d[0])};
  assign go_6_goMux_choice_2_r = (w1skC_1_goMux_mux_d[0] && w1skC_1_goMux_mux_r);
  assign {lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_r,
          q1a8o_3_1_argbuf_r,
          q2a8p_2_1_argbuf_r,
          q3a8q_1_1_argbuf_r,
          call_$wmAdd_Bool_goMux3_r} = (go_6_goMux_choice_2_r ? w1skC_1_goMux_mux_onehot :
                                        5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_6_goMux_choice_3,C5) [(call_$wmAdd_Bool_goMux4,Pointer_QTree_Bool),
                                                        (t3a8v_1_1_argbuf,Pointer_QTree_Bool),
                                                        (t2a8u_2_1_argbuf,Pointer_QTree_Bool),
                                                        (t1a8t_3_1_argbuf,Pointer_QTree_Bool),
                                                        (t4a8w_1_argbuf,Pointer_QTree_Bool)] > (w2skD_1_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] w2skD_1_goMux_mux_mux;
  logic [4:0] w2skD_1_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_3_d[3:1])
      3'd0:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd1,
                                                             call_$wmAdd_Bool_goMux4_d};
      3'd1:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd2,
                                                             t3a8v_1_1_argbuf_d};
      3'd2:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd4,
                                                             t2a8u_2_1_argbuf_d};
      3'd3:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd8,
                                                             t1a8t_3_1_argbuf_d};
      3'd4:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd16,
                                                             t4a8w_1_argbuf_d};
      default:
        {w2skD_1_goMux_mux_onehot, w2skD_1_goMux_mux_mux} = {5'd0,
                                                             {16'd0, 1'd0}};
    endcase
  assign w2skD_1_goMux_mux_d = {w2skD_1_goMux_mux_mux[16:1],
                                (w2skD_1_goMux_mux_mux[0] && go_6_goMux_choice_3_d[0])};
  assign go_6_goMux_choice_3_r = (w2skD_1_goMux_mux_d[0] && w2skD_1_goMux_mux_r);
  assign {t4a8w_1_argbuf_r,
          t1a8t_3_1_argbuf_r,
          t2a8u_2_1_argbuf_r,
          t3a8v_1_1_argbuf_r,
          call_$wmAdd_Bool_goMux4_r} = (go_6_goMux_choice_3_r ? w2skD_1_goMux_mux_onehot :
                                        5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CT$wmAdd_Bool) : (go_6_goMux_choice_4,C5) [(call_$wmAdd_Bool_goMux5,Pointer_CT$wmAdd_Bool),
                                                           (sca2_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                           (sca1_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                           (sca0_1_argbuf,Pointer_CT$wmAdd_Bool),
                                                           (sca3_1_argbuf,Pointer_CT$wmAdd_Bool)] > (sc_0_goMux_mux,Pointer_CT$wmAdd_Bool) */
  logic [16:0] sc_0_goMux_mux_mux;
  logic [4:0] sc_0_goMux_mux_onehot;
  always_comb
    unique case (go_6_goMux_choice_4_d[3:1])
      3'd0:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd1,
                                                       call_$wmAdd_Bool_goMux5_d};
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
                             (sc_0_goMux_mux_mux[0] && go_6_goMux_choice_4_d[0])};
  assign go_6_goMux_choice_4_r = (sc_0_goMux_mux_d[0] && sc_0_goMux_mux_r);
  assign {sca3_1_argbuf_r,
          sca0_1_argbuf_r,
          sca1_1_argbuf_r,
          sca2_1_argbuf_r,
          call_$wmAdd_Bool_goMux5_r} = (go_6_goMux_choice_4_r ? sc_0_goMux_mux_onehot :
                                        5'd0);
  
  /* fork (Ty C5) : (go_7_goMux_choice,C5) > [(go_7_goMux_choice_1,C5),
                                         (go_7_goMux_choice_2,C5),
                                         (go_7_goMux_choice_3,C5),
                                         (go_7_goMux_choice_4,C5)] */
  logic [3:0] go_7_goMux_choice_emitted;
  logic [3:0] go_7_goMux_choice_done;
  assign go_7_goMux_choice_1_d = {go_7_goMux_choice_d[3:1],
                                  (go_7_goMux_choice_d[0] && (! go_7_goMux_choice_emitted[0]))};
  assign go_7_goMux_choice_2_d = {go_7_goMux_choice_d[3:1],
                                  (go_7_goMux_choice_d[0] && (! go_7_goMux_choice_emitted[1]))};
  assign go_7_goMux_choice_3_d = {go_7_goMux_choice_d[3:1],
                                  (go_7_goMux_choice_d[0] && (! go_7_goMux_choice_emitted[2]))};
  assign go_7_goMux_choice_4_d = {go_7_goMux_choice_d[3:1],
                                  (go_7_goMux_choice_d[0] && (! go_7_goMux_choice_emitted[3]))};
  assign go_7_goMux_choice_done = (go_7_goMux_choice_emitted | ({go_7_goMux_choice_4_d[0],
                                                                 go_7_goMux_choice_3_d[0],
                                                                 go_7_goMux_choice_2_d[0],
                                                                 go_7_goMux_choice_1_d[0]} & {go_7_goMux_choice_4_r,
                                                                                              go_7_goMux_choice_3_r,
                                                                                              go_7_goMux_choice_2_r,
                                                                                              go_7_goMux_choice_1_r}));
  assign go_7_goMux_choice_r = (& go_7_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_goMux_choice_emitted <= 4'd0;
    else
      go_7_goMux_choice_emitted <= (go_7_goMux_choice_r ? 4'd0 :
                                    go_7_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty MyDTNat_Bool) : (go_7_goMux_choice_1,C5) [(call_main_map'_Bool_Nat_goMux2,MyDTNat_Bool),
                                                  (isZa8P_2_2_argbuf,MyDTNat_Bool),
                                                  (isZa8P_3_2_argbuf,MyDTNat_Bool),
                                                  (isZa8P_4_1_argbuf,MyDTNat_Bool),
                                                  (lizzieLet13_5QNode_Bool_2_argbuf,MyDTNat_Bool)] > (isZa8P_goMux_mux,MyDTNat_Bool) */
  logic [0:0] isZa8P_goMux_mux_mux;
  logic [4:0] isZa8P_goMux_mux_onehot;
  always_comb
    unique case (go_7_goMux_choice_1_d[3:1])
      3'd0:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd1,
                                                           \call_main_map'_Bool_Nat_goMux2_d };
      3'd1:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd2,
                                                           isZa8P_2_2_argbuf_d};
      3'd2:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd4,
                                                           isZa8P_3_2_argbuf_d};
      3'd3:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd8,
                                                           isZa8P_4_1_argbuf_d};
      3'd4:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd16,
                                                           lizzieLet13_5QNode_Bool_2_argbuf_d};
      default:
        {isZa8P_goMux_mux_onehot, isZa8P_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign isZa8P_goMux_mux_d = (isZa8P_goMux_mux_mux[0] && go_7_goMux_choice_1_d[0]);
  assign go_7_goMux_choice_1_r = (isZa8P_goMux_mux_d[0] && isZa8P_goMux_mux_r);
  assign {lizzieLet13_5QNode_Bool_2_argbuf_r,
          isZa8P_4_1_argbuf_r,
          isZa8P_3_2_argbuf_r,
          isZa8P_2_2_argbuf_r,
          \call_main_map'_Bool_Nat_goMux2_r } = (go_7_goMux_choice_1_r ? isZa8P_goMux_mux_onehot :
                                                 5'd0);
  
  /* mux (Ty C5,
     Ty MyDTBool_Nat) : (go_7_goMux_choice_2,C5) [(call_main_map'_Bool_Nat_goMux3,MyDTBool_Nat),
                                                  (ga8Q_2_2_argbuf,MyDTBool_Nat),
                                                  (ga8Q_3_2_argbuf,MyDTBool_Nat),
                                                  (ga8Q_4_1_argbuf,MyDTBool_Nat),
                                                  (lizzieLet13_3QNode_Bool_2_argbuf,MyDTBool_Nat)] > (ga8Q_goMux_mux,MyDTBool_Nat) */
  logic [0:0] ga8Q_goMux_mux_mux;
  logic [4:0] ga8Q_goMux_mux_onehot;
  always_comb
    unique case (go_7_goMux_choice_2_d[3:1])
      3'd0:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd1,
                                                       \call_main_map'_Bool_Nat_goMux3_d };
      3'd1:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd2,
                                                       ga8Q_2_2_argbuf_d};
      3'd2:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd4,
                                                       ga8Q_3_2_argbuf_d};
      3'd3:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd8,
                                                       ga8Q_4_1_argbuf_d};
      3'd4:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd16,
                                                       lizzieLet13_3QNode_Bool_2_argbuf_d};
      default:
        {ga8Q_goMux_mux_onehot, ga8Q_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign ga8Q_goMux_mux_d = (ga8Q_goMux_mux_mux[0] && go_7_goMux_choice_2_d[0]);
  assign go_7_goMux_choice_2_r = (ga8Q_goMux_mux_d[0] && ga8Q_goMux_mux_r);
  assign {lizzieLet13_3QNode_Bool_2_argbuf_r,
          ga8Q_4_1_argbuf_r,
          ga8Q_3_2_argbuf_r,
          ga8Q_2_2_argbuf_r,
          \call_main_map'_Bool_Nat_goMux3_r } = (go_7_goMux_choice_2_r ? ga8Q_goMux_mux_onehot :
                                                 5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_7_goMux_choice_3,C5) [(call_main_map'_Bool_Nat_goMux4,Pointer_QTree_Bool),
                                                        (q3a8V_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2a8U_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1a8T_3_1_argbuf,Pointer_QTree_Bool),
                                                        (q4a8W_1_argbuf,Pointer_QTree_Bool)] > (ma8R_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] ma8R_goMux_mux_mux;
  logic [4:0] ma8R_goMux_mux_onehot;
  always_comb
    unique case (go_7_goMux_choice_3_d[3:1])
      3'd0:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd1,
                                                       \call_main_map'_Bool_Nat_goMux4_d };
      3'd1:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd2,
                                                       q3a8V_1_1_argbuf_d};
      3'd2:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd4,
                                                       q2a8U_2_1_argbuf_d};
      3'd3:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd8,
                                                       q1a8T_3_1_argbuf_d};
      3'd4:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd16,
                                                       q4a8W_1_argbuf_d};
      default:
        {ma8R_goMux_mux_onehot, ma8R_goMux_mux_mux} = {5'd0,
                                                       {16'd0, 1'd0}};
    endcase
  assign ma8R_goMux_mux_d = {ma8R_goMux_mux_mux[16:1],
                             (ma8R_goMux_mux_mux[0] && go_7_goMux_choice_3_d[0])};
  assign go_7_goMux_choice_3_r = (ma8R_goMux_mux_d[0] && ma8R_goMux_mux_r);
  assign {q4a8W_1_argbuf_r,
          q1a8T_3_1_argbuf_r,
          q2a8U_2_1_argbuf_r,
          q3a8V_1_1_argbuf_r,
          \call_main_map'_Bool_Nat_goMux4_r } = (go_7_goMux_choice_3_r ? ma8R_goMux_mux_onehot :
                                                 5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTmain_map'_Bool_Nat) : (go_7_goMux_choice_4,C5) [(call_main_map'_Bool_Nat_goMux5,Pointer_CTmain_map'_Bool_Nat),
                                                                  (sca2_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                  (sca1_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                  (sca0_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat),
                                                                  (sca3_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat)] > (sc_0_1_goMux_mux,Pointer_CTmain_map'_Bool_Nat) */
  logic [16:0] sc_0_1_goMux_mux_mux;
  logic [4:0] sc_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_7_goMux_choice_4_d[3:1])
      3'd0:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd1,
                                                           \call_main_map'_Bool_Nat_goMux5_d };
      3'd1:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd2,
                                                           sca2_1_1_argbuf_d};
      3'd2:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd4,
                                                           sca1_1_1_argbuf_d};
      3'd3:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd8,
                                                           sca0_1_1_argbuf_d};
      3'd4:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd16,
                                                           sca3_1_1_argbuf_d};
      default:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd0,
                                                           {16'd0, 1'd0}};
    endcase
  assign sc_0_1_goMux_mux_d = {sc_0_1_goMux_mux_mux[16:1],
                               (sc_0_1_goMux_mux_mux[0] && go_7_goMux_choice_4_d[0])};
  assign go_7_goMux_choice_4_r = (sc_0_1_goMux_mux_d[0] && sc_0_1_goMux_mux_r);
  assign {sca3_1_1_argbuf_r,
          sca0_1_1_argbuf_r,
          sca1_1_1_argbuf_r,
          sca2_1_1_argbuf_r,
          \call_main_map'_Bool_Nat_goMux5_r } = (go_7_goMux_choice_4_r ? sc_0_1_goMux_mux_onehot :
                                                 5'd0);
  
  /* fork (Ty C2) : (go_8_goMux_choice,C2) > [(go_8_goMux_choice_1,C2),
                                         (go_8_goMux_choice_2,C2)] */
  logic [1:0] go_8_goMux_choice_emitted;
  logic [1:0] go_8_goMux_choice_done;
  assign go_8_goMux_choice_1_d = {go_8_goMux_choice_d[1:1],
                                  (go_8_goMux_choice_d[0] && (! go_8_goMux_choice_emitted[0]))};
  assign go_8_goMux_choice_2_d = {go_8_goMux_choice_d[1:1],
                                  (go_8_goMux_choice_d[0] && (! go_8_goMux_choice_emitted[1]))};
  assign go_8_goMux_choice_done = (go_8_goMux_choice_emitted | ({go_8_goMux_choice_2_d[0],
                                                                 go_8_goMux_choice_1_d[0]} & {go_8_goMux_choice_2_r,
                                                                                              go_8_goMux_choice_1_r}));
  assign go_8_goMux_choice_r = (& go_8_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_8_goMux_choice_emitted <= 2'd0;
    else
      go_8_goMux_choice_emitted <= (go_8_goMux_choice_r ? 2'd0 :
                                    go_8_goMux_choice_done);
  
  /* mux (Ty C2,
     Ty Pointer_Nat) : (go_8_goMux_choice_1,C2) [(eqNat_goMux2,Pointer_Nat),
                                                 (lizzieLet19_4Succ_4Succ_1_argbuf,Pointer_Nat)] > (xa96_goMux_mux,Pointer_Nat) */
  logic [16:0] xa96_goMux_mux_mux;
  logic [1:0] xa96_goMux_mux_onehot;
  always_comb
    unique case (go_8_goMux_choice_1_d[1:1])
      1'd0:
        {xa96_goMux_mux_onehot, xa96_goMux_mux_mux} = {2'd1,
                                                       eqNat_goMux2_d};
      1'd1:
        {xa96_goMux_mux_onehot, xa96_goMux_mux_mux} = {2'd2,
                                                       lizzieLet19_4Succ_4Succ_1_argbuf_d};
      default:
        {xa96_goMux_mux_onehot, xa96_goMux_mux_mux} = {2'd0,
                                                       {16'd0, 1'd0}};
    endcase
  assign xa96_goMux_mux_d = {xa96_goMux_mux_mux[16:1],
                             (xa96_goMux_mux_mux[0] && go_8_goMux_choice_1_d[0])};
  assign go_8_goMux_choice_1_r = (xa96_goMux_mux_d[0] && xa96_goMux_mux_r);
  assign {lizzieLet19_4Succ_4Succ_1_argbuf_r,
          eqNat_goMux2_r} = (go_8_goMux_choice_1_r ? xa96_goMux_mux_onehot :
                             2'd0);
  
  /* mux (Ty C2,
     Ty Pointer_Nat) : (go_8_goMux_choice_2,C2) [(eqNat_goMux3,Pointer_Nat),
                                                 (y1a9a_1_argbuf,Pointer_Nat)] > (ya97_goMux_mux,Pointer_Nat) */
  logic [16:0] ya97_goMux_mux_mux;
  logic [1:0] ya97_goMux_mux_onehot;
  always_comb
    unique case (go_8_goMux_choice_2_d[1:1])
      1'd0:
        {ya97_goMux_mux_onehot, ya97_goMux_mux_mux} = {2'd1,
                                                       eqNat_goMux3_d};
      1'd1:
        {ya97_goMux_mux_onehot, ya97_goMux_mux_mux} = {2'd2,
                                                       y1a9a_1_argbuf_d};
      default:
        {ya97_goMux_mux_onehot, ya97_goMux_mux_mux} = {2'd0,
                                                       {16'd0, 1'd0}};
    endcase
  assign ya97_goMux_mux_d = {ya97_goMux_mux_mux[16:1],
                             (ya97_goMux_mux_mux[0] && go_8_goMux_choice_2_d[0])};
  assign go_8_goMux_choice_2_r = (ya97_goMux_mux_d[0] && ya97_goMux_mux_r);
  assign {y1a9a_1_argbuf_r,
          eqNat_goMux3_r} = (go_8_goMux_choice_2_r ? ya97_goMux_mux_onehot :
                             2'd0);
  
  /* dcon (Ty CTmain_map'_Bool_Nat,
      Dcon Lmain_map'_Bool_Natsbos) : [(go_9_1,Go)] > (go_9_1Lmain_map'_Bool_Natsbos,CTmain_map'_Bool_Nat) */
  assign \go_9_1Lmain_map'_Bool_Natsbos_d  = \Lmain_map'_Bool_Natsbos_dc ((& {go_9_1_d[0]}), go_9_1_d);
  assign {go_9_1_r} = {1 {(\go_9_1Lmain_map'_Bool_Natsbos_r  && \go_9_1Lmain_map'_Bool_Natsbos_d [0])}};
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (go_9_1Lmain_map'_Bool_Natsbos,CTmain_map'_Bool_Nat) > (lizzieLet22_1_argbuf,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d ;
  logic \go_9_1Lmain_map'_Bool_Natsbos_bufchan_r ;
  assign \go_9_1Lmain_map'_Bool_Natsbos_r  = ((! \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d [0]) || \go_9_1Lmain_map'_Bool_Natsbos_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d  <= {67'd0, 1'd0};
    else
      if (\go_9_1Lmain_map'_Bool_Natsbos_r )
        \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d  <= \go_9_1Lmain_map'_Bool_Natsbos_d ;
  \CTmain_map'_Bool_Nat_t  \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf ;
  assign \go_9_1Lmain_map'_Bool_Natsbos_bufchan_r  = (! \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf [0]);
  assign lizzieLet22_1_argbuf_d = (\go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf [0] ? \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf  :
                                   \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf  <= {67'd0, 1'd0};
    else
      if ((lizzieLet22_1_argbuf_r && \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf [0]))
        \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf  <= {67'd0, 1'd0};
      else if (((! lizzieLet22_1_argbuf_r) && (! \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf [0])))
        \go_9_1Lmain_map'_Bool_Natsbos_bufchan_buf  <= \go_9_1Lmain_map'_Bool_Natsbos_bufchan_d ;
  
  /* buf (Ty Go) : (go_9_2,Go) > (go_9_2_argbuf,Go) */
  Go_t go_9_2_bufchan_d;
  logic go_9_2_bufchan_r;
  assign go_9_2_r = ((! go_9_2_bufchan_d[0]) || go_9_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_9_2_bufchan_d <= 1'd0;
    else if (go_9_2_r) go_9_2_bufchan_d <= go_9_2_d;
  Go_t go_9_2_bufchan_buf;
  assign go_9_2_bufchan_r = (! go_9_2_bufchan_buf[0]);
  assign go_9_2_argbuf_d = (go_9_2_bufchan_buf[0] ? go_9_2_bufchan_buf :
                            go_9_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_9_2_bufchan_buf <= 1'd0;
    else
      if ((go_9_2_argbuf_r && go_9_2_bufchan_buf[0]))
        go_9_2_bufchan_buf <= 1'd0;
      else if (((! go_9_2_argbuf_r) && (! go_9_2_bufchan_buf[0])))
        go_9_2_bufchan_buf <= go_9_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat,
      Dcon TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat) : [(go_9_2_argbuf,Go),
                                                                                                       (isZa8P_1_1_argbuf,MyDTNat_Bool),
                                                                                                       (ga8Q_1_1_argbuf,MyDTBool_Nat),
                                                                                                       (ma8R_1_1_argbuf,Pointer_QTree_Bool),
                                                                                                       (lizzieLet5_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat)] > (call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1,TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat) */
  assign \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d  = \TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_dc ((& {go_9_2_argbuf_d[0],
                                                                                                                                                                                                                                 isZa8P_1_1_argbuf_d[0],
                                                                                                                                                                                                                                 ga8Q_1_1_argbuf_d[0],
                                                                                                                                                                                                                                 ma8R_1_1_argbuf_d[0],
                                                                                                                                                                                                                                 lizzieLet5_1_1_argbuf_d[0]}), go_9_2_argbuf_d, isZa8P_1_1_argbuf_d, ga8Q_1_1_argbuf_d, ma8R_1_1_argbuf_d, lizzieLet5_1_1_argbuf_d);
  assign {go_9_2_argbuf_r,
          isZa8P_1_1_argbuf_r,
          ga8Q_1_1_argbuf_r,
          ma8R_1_1_argbuf_r,
          lizzieLet5_1_1_argbuf_r} = {5 {(\call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_r  && \call_main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool___Pointer_CTmain_map'_Bool_Nat_1_d [0])}};
  
  /* buf (Ty MyDTNat_Bool) : (isZa8P_2_2,MyDTNat_Bool) > (isZa8P_2_2_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t isZa8P_2_2_bufchan_d;
  logic isZa8P_2_2_bufchan_r;
  assign isZa8P_2_2_r = ((! isZa8P_2_2_bufchan_d[0]) || isZa8P_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_2_2_bufchan_d <= 1'd0;
    else if (isZa8P_2_2_r) isZa8P_2_2_bufchan_d <= isZa8P_2_2_d;
  MyDTNat_Bool_t isZa8P_2_2_bufchan_buf;
  assign isZa8P_2_2_bufchan_r = (! isZa8P_2_2_bufchan_buf[0]);
  assign isZa8P_2_2_argbuf_d = (isZa8P_2_2_bufchan_buf[0] ? isZa8P_2_2_bufchan_buf :
                                isZa8P_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_2_2_bufchan_buf <= 1'd0;
    else
      if ((isZa8P_2_2_argbuf_r && isZa8P_2_2_bufchan_buf[0]))
        isZa8P_2_2_bufchan_buf <= 1'd0;
      else if (((! isZa8P_2_2_argbuf_r) && (! isZa8P_2_2_bufchan_buf[0])))
        isZa8P_2_2_bufchan_buf <= isZa8P_2_2_bufchan_d;
  
  /* fork (Ty MyDTNat_Bool) : (isZa8P_2_destruct,MyDTNat_Bool) > [(isZa8P_2_1,MyDTNat_Bool),
                                                             (isZa8P_2_2,MyDTNat_Bool)] */
  logic [1:0] isZa8P_2_destruct_emitted;
  logic [1:0] isZa8P_2_destruct_done;
  assign isZa8P_2_1_d = (isZa8P_2_destruct_d[0] && (! isZa8P_2_destruct_emitted[0]));
  assign isZa8P_2_2_d = (isZa8P_2_destruct_d[0] && (! isZa8P_2_destruct_emitted[1]));
  assign isZa8P_2_destruct_done = (isZa8P_2_destruct_emitted | ({isZa8P_2_2_d[0],
                                                                 isZa8P_2_1_d[0]} & {isZa8P_2_2_r,
                                                                                     isZa8P_2_1_r}));
  assign isZa8P_2_destruct_r = (& isZa8P_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_2_destruct_emitted <= 2'd0;
    else
      isZa8P_2_destruct_emitted <= (isZa8P_2_destruct_r ? 2'd0 :
                                    isZa8P_2_destruct_done);
  
  /* buf (Ty MyDTNat_Bool) : (isZa8P_3_2,MyDTNat_Bool) > (isZa8P_3_2_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t isZa8P_3_2_bufchan_d;
  logic isZa8P_3_2_bufchan_r;
  assign isZa8P_3_2_r = ((! isZa8P_3_2_bufchan_d[0]) || isZa8P_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_3_2_bufchan_d <= 1'd0;
    else if (isZa8P_3_2_r) isZa8P_3_2_bufchan_d <= isZa8P_3_2_d;
  MyDTNat_Bool_t isZa8P_3_2_bufchan_buf;
  assign isZa8P_3_2_bufchan_r = (! isZa8P_3_2_bufchan_buf[0]);
  assign isZa8P_3_2_argbuf_d = (isZa8P_3_2_bufchan_buf[0] ? isZa8P_3_2_bufchan_buf :
                                isZa8P_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_3_2_bufchan_buf <= 1'd0;
    else
      if ((isZa8P_3_2_argbuf_r && isZa8P_3_2_bufchan_buf[0]))
        isZa8P_3_2_bufchan_buf <= 1'd0;
      else if (((! isZa8P_3_2_argbuf_r) && (! isZa8P_3_2_bufchan_buf[0])))
        isZa8P_3_2_bufchan_buf <= isZa8P_3_2_bufchan_d;
  
  /* fork (Ty MyDTNat_Bool) : (isZa8P_3_destruct,MyDTNat_Bool) > [(isZa8P_3_1,MyDTNat_Bool),
                                                             (isZa8P_3_2,MyDTNat_Bool)] */
  logic [1:0] isZa8P_3_destruct_emitted;
  logic [1:0] isZa8P_3_destruct_done;
  assign isZa8P_3_1_d = (isZa8P_3_destruct_d[0] && (! isZa8P_3_destruct_emitted[0]));
  assign isZa8P_3_2_d = (isZa8P_3_destruct_d[0] && (! isZa8P_3_destruct_emitted[1]));
  assign isZa8P_3_destruct_done = (isZa8P_3_destruct_emitted | ({isZa8P_3_2_d[0],
                                                                 isZa8P_3_1_d[0]} & {isZa8P_3_2_r,
                                                                                     isZa8P_3_1_r}));
  assign isZa8P_3_destruct_r = (& isZa8P_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_3_destruct_emitted <= 2'd0;
    else
      isZa8P_3_destruct_emitted <= (isZa8P_3_destruct_r ? 2'd0 :
                                    isZa8P_3_destruct_done);
  
  /* buf (Ty MyDTNat_Bool) : (isZa8P_4_destruct,MyDTNat_Bool) > (isZa8P_4_1_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t isZa8P_4_destruct_bufchan_d;
  logic isZa8P_4_destruct_bufchan_r;
  assign isZa8P_4_destruct_r = ((! isZa8P_4_destruct_bufchan_d[0]) || isZa8P_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_4_destruct_bufchan_d <= 1'd0;
    else
      if (isZa8P_4_destruct_r)
        isZa8P_4_destruct_bufchan_d <= isZa8P_4_destruct_d;
  MyDTNat_Bool_t isZa8P_4_destruct_bufchan_buf;
  assign isZa8P_4_destruct_bufchan_r = (! isZa8P_4_destruct_bufchan_buf[0]);
  assign isZa8P_4_1_argbuf_d = (isZa8P_4_destruct_bufchan_buf[0] ? isZa8P_4_destruct_bufchan_buf :
                                isZa8P_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZa8P_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((isZa8P_4_1_argbuf_r && isZa8P_4_destruct_bufchan_buf[0]))
        isZa8P_4_destruct_bufchan_buf <= 1'd0;
      else if (((! isZa8P_4_1_argbuf_r) && (! isZa8P_4_destruct_bufchan_buf[0])))
        isZa8P_4_destruct_bufchan_buf <= isZa8P_4_destruct_bufchan_d;
  
  /* buf (Ty Nat) : (lizzieLet0_1_1Succ,Nat) > (lizzieLet34_1_argbuf,Nat) */
  Nat_t lizzieLet0_1_1Succ_bufchan_d;
  logic lizzieLet0_1_1Succ_bufchan_r;
  assign lizzieLet0_1_1Succ_r = ((! lizzieLet0_1_1Succ_bufchan_d[0]) || lizzieLet0_1_1Succ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1_1Succ_bufchan_d <= {17'd0, 1'd0};
    else
      if (lizzieLet0_1_1Succ_r)
        lizzieLet0_1_1Succ_bufchan_d <= lizzieLet0_1_1Succ_d;
  Nat_t lizzieLet0_1_1Succ_bufchan_buf;
  assign lizzieLet0_1_1Succ_bufchan_r = (! lizzieLet0_1_1Succ_bufchan_buf[0]);
  assign lizzieLet34_1_argbuf_d = (lizzieLet0_1_1Succ_bufchan_buf[0] ? lizzieLet0_1_1Succ_bufchan_buf :
                                   lizzieLet0_1_1Succ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet34_1_argbuf_r && lizzieLet0_1_1Succ_bufchan_buf[0]))
        lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet34_1_argbuf_r) && (! lizzieLet0_1_1Succ_bufchan_buf[0])))
        lizzieLet0_1_1Succ_bufchan_buf <= lizzieLet0_1_1Succ_bufchan_d;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet13_1QNode_Bool,QTree_Bool) > [(q1a8T_destruct,Pointer_QTree_Bool),
                                                                     (q2a8U_destruct,Pointer_QTree_Bool),
                                                                     (q3a8V_destruct,Pointer_QTree_Bool),
                                                                     (q4a8W_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet13_1QNode_Bool_emitted;
  logic [3:0] lizzieLet13_1QNode_Bool_done;
  assign q1a8T_destruct_d = {lizzieLet13_1QNode_Bool_d[18:3],
                             (lizzieLet13_1QNode_Bool_d[0] && (! lizzieLet13_1QNode_Bool_emitted[0]))};
  assign q2a8U_destruct_d = {lizzieLet13_1QNode_Bool_d[34:19],
                             (lizzieLet13_1QNode_Bool_d[0] && (! lizzieLet13_1QNode_Bool_emitted[1]))};
  assign q3a8V_destruct_d = {lizzieLet13_1QNode_Bool_d[50:35],
                             (lizzieLet13_1QNode_Bool_d[0] && (! lizzieLet13_1QNode_Bool_emitted[2]))};
  assign q4a8W_destruct_d = {lizzieLet13_1QNode_Bool_d[66:51],
                             (lizzieLet13_1QNode_Bool_d[0] && (! lizzieLet13_1QNode_Bool_emitted[3]))};
  assign lizzieLet13_1QNode_Bool_done = (lizzieLet13_1QNode_Bool_emitted | ({q4a8W_destruct_d[0],
                                                                             q3a8V_destruct_d[0],
                                                                             q2a8U_destruct_d[0],
                                                                             q1a8T_destruct_d[0]} & {q4a8W_destruct_r,
                                                                                                     q3a8V_destruct_r,
                                                                                                     q2a8U_destruct_r,
                                                                                                     q1a8T_destruct_r}));
  assign lizzieLet13_1QNode_Bool_r = (& lizzieLet13_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet13_1QNode_Bool_emitted <= (lizzieLet13_1QNode_Bool_r ? 4'd0 :
                                          lizzieLet13_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet13_1QVal_Bool,QTree_Bool) > [(va8S_destruct,MyBool)] */
  assign va8S_destruct_d = {lizzieLet13_1QVal_Bool_d[3:3],
                            lizzieLet13_1QVal_Bool_d[0]};
  assign lizzieLet13_1QVal_Bool_r = va8S_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet13_2,QTree_Bool) (lizzieLet13_1,QTree_Bool) > [(_56,QTree_Bool),
                                                                                 (lizzieLet13_1QVal_Bool,QTree_Bool),
                                                                                 (lizzieLet13_1QNode_Bool,QTree_Bool),
                                                                                 (_55,QTree_Bool)] */
  logic [3:0] lizzieLet13_1_onehotd;
  always_comb
    if ((lizzieLet13_2_d[0] && lizzieLet13_1_d[0]))
      unique case (lizzieLet13_2_d[2:1])
        2'd0: lizzieLet13_1_onehotd = 4'd1;
        2'd1: lizzieLet13_1_onehotd = 4'd2;
        2'd2: lizzieLet13_1_onehotd = 4'd4;
        2'd3: lizzieLet13_1_onehotd = 4'd8;
        default: lizzieLet13_1_onehotd = 4'd0;
      endcase
    else lizzieLet13_1_onehotd = 4'd0;
  assign _56_d = {lizzieLet13_1_d[66:1], lizzieLet13_1_onehotd[0]};
  assign lizzieLet13_1QVal_Bool_d = {lizzieLet13_1_d[66:1],
                                     lizzieLet13_1_onehotd[1]};
  assign lizzieLet13_1QNode_Bool_d = {lizzieLet13_1_d[66:1],
                                      lizzieLet13_1_onehotd[2]};
  assign _55_d = {lizzieLet13_1_d[66:1], lizzieLet13_1_onehotd[3]};
  assign lizzieLet13_1_r = (| (lizzieLet13_1_onehotd & {_55_r,
                                                        lizzieLet13_1QNode_Bool_r,
                                                        lizzieLet13_1QVal_Bool_r,
                                                        _56_r}));
  assign lizzieLet13_2_r = lizzieLet13_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Nat) : (lizzieLet13_3,QTree_Bool) (ga8Q_goMux_mux,MyDTBool_Nat) > [(_54,MyDTBool_Nat),
                                                                                      (lizzieLet13_3QVal_Bool,MyDTBool_Nat),
                                                                                      (lizzieLet13_3QNode_Bool,MyDTBool_Nat),
                                                                                      (_53,MyDTBool_Nat)] */
  logic [3:0] ga8Q_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet13_3_d[0] && ga8Q_goMux_mux_d[0]))
      unique case (lizzieLet13_3_d[2:1])
        2'd0: ga8Q_goMux_mux_onehotd = 4'd1;
        2'd1: ga8Q_goMux_mux_onehotd = 4'd2;
        2'd2: ga8Q_goMux_mux_onehotd = 4'd4;
        2'd3: ga8Q_goMux_mux_onehotd = 4'd8;
        default: ga8Q_goMux_mux_onehotd = 4'd0;
      endcase
    else ga8Q_goMux_mux_onehotd = 4'd0;
  assign _54_d = ga8Q_goMux_mux_onehotd[0];
  assign lizzieLet13_3QVal_Bool_d = ga8Q_goMux_mux_onehotd[1];
  assign lizzieLet13_3QNode_Bool_d = ga8Q_goMux_mux_onehotd[2];
  assign _53_d = ga8Q_goMux_mux_onehotd[3];
  assign ga8Q_goMux_mux_r = (| (ga8Q_goMux_mux_onehotd & {_53_r,
                                                          lizzieLet13_3QNode_Bool_r,
                                                          lizzieLet13_3QVal_Bool_r,
                                                          _54_r}));
  assign lizzieLet13_3_r = ga8Q_goMux_mux_r;
  
  /* fork (Ty MyDTBool_Nat) : (lizzieLet13_3QNode_Bool,MyDTBool_Nat) > [(lizzieLet13_3QNode_Bool_1,MyDTBool_Nat),
                                                                   (lizzieLet13_3QNode_Bool_2,MyDTBool_Nat)] */
  logic [1:0] lizzieLet13_3QNode_Bool_emitted;
  logic [1:0] lizzieLet13_3QNode_Bool_done;
  assign lizzieLet13_3QNode_Bool_1_d = (lizzieLet13_3QNode_Bool_d[0] && (! lizzieLet13_3QNode_Bool_emitted[0]));
  assign lizzieLet13_3QNode_Bool_2_d = (lizzieLet13_3QNode_Bool_d[0] && (! lizzieLet13_3QNode_Bool_emitted[1]));
  assign lizzieLet13_3QNode_Bool_done = (lizzieLet13_3QNode_Bool_emitted | ({lizzieLet13_3QNode_Bool_2_d[0],
                                                                             lizzieLet13_3QNode_Bool_1_d[0]} & {lizzieLet13_3QNode_Bool_2_r,
                                                                                                                lizzieLet13_3QNode_Bool_1_r}));
  assign lizzieLet13_3QNode_Bool_r = (& lizzieLet13_3QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_3QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet13_3QNode_Bool_emitted <= (lizzieLet13_3QNode_Bool_r ? 2'd0 :
                                          lizzieLet13_3QNode_Bool_done);
  
  /* buf (Ty MyDTBool_Nat) : (lizzieLet13_3QNode_Bool_2,MyDTBool_Nat) > (lizzieLet13_3QNode_Bool_2_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_2_bufchan_d;
  logic lizzieLet13_3QNode_Bool_2_bufchan_r;
  assign lizzieLet13_3QNode_Bool_2_r = ((! lizzieLet13_3QNode_Bool_2_bufchan_d[0]) || lizzieLet13_3QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_3QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_3QNode_Bool_2_r)
        lizzieLet13_3QNode_Bool_2_bufchan_d <= lizzieLet13_3QNode_Bool_2_d;
  MyDTBool_Nat_t lizzieLet13_3QNode_Bool_2_bufchan_buf;
  assign lizzieLet13_3QNode_Bool_2_bufchan_r = (! lizzieLet13_3QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet13_3QNode_Bool_2_argbuf_d = (lizzieLet13_3QNode_Bool_2_bufchan_buf[0] ? lizzieLet13_3QNode_Bool_2_bufchan_buf :
                                               lizzieLet13_3QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_3QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_3QNode_Bool_2_argbuf_r && lizzieLet13_3QNode_Bool_2_bufchan_buf[0]))
        lizzieLet13_3QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_3QNode_Bool_2_argbuf_r) && (! lizzieLet13_3QNode_Bool_2_bufchan_buf[0])))
        lizzieLet13_3QNode_Bool_2_bufchan_buf <= lizzieLet13_3QNode_Bool_2_bufchan_d;
  
  /* buf (Ty MyDTBool_Nat) : (lizzieLet13_3QVal_Bool,MyDTBool_Nat) > (lizzieLet13_3QVal_Bool_1_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t lizzieLet13_3QVal_Bool_bufchan_d;
  logic lizzieLet13_3QVal_Bool_bufchan_r;
  assign lizzieLet13_3QVal_Bool_r = ((! lizzieLet13_3QVal_Bool_bufchan_d[0]) || lizzieLet13_3QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_3QVal_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_3QVal_Bool_r)
        lizzieLet13_3QVal_Bool_bufchan_d <= lizzieLet13_3QVal_Bool_d;
  MyDTBool_Nat_t lizzieLet13_3QVal_Bool_bufchan_buf;
  assign lizzieLet13_3QVal_Bool_bufchan_r = (! lizzieLet13_3QVal_Bool_bufchan_buf[0]);
  assign lizzieLet13_3QVal_Bool_1_argbuf_d = (lizzieLet13_3QVal_Bool_bufchan_buf[0] ? lizzieLet13_3QVal_Bool_bufchan_buf :
                                              lizzieLet13_3QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_3QVal_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_3QVal_Bool_1_argbuf_r && lizzieLet13_3QVal_Bool_bufchan_buf[0]))
        lizzieLet13_3QVal_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_3QVal_Bool_1_argbuf_r) && (! lizzieLet13_3QVal_Bool_bufchan_buf[0])))
        lizzieLet13_3QVal_Bool_bufchan_buf <= lizzieLet13_3QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet13_4,QTree_Bool) (go_7_goMux_data,Go) > [(lizzieLet13_4QNone_Bool,Go),
                                                                   (lizzieLet13_4QVal_Bool,Go),
                                                                   (lizzieLet13_4QNode_Bool,Go),
                                                                   (lizzieLet13_4QError_Bool,Go)] */
  logic [3:0] go_7_goMux_data_onehotd;
  always_comb
    if ((lizzieLet13_4_d[0] && go_7_goMux_data_d[0]))
      unique case (lizzieLet13_4_d[2:1])
        2'd0: go_7_goMux_data_onehotd = 4'd1;
        2'd1: go_7_goMux_data_onehotd = 4'd2;
        2'd2: go_7_goMux_data_onehotd = 4'd4;
        2'd3: go_7_goMux_data_onehotd = 4'd8;
        default: go_7_goMux_data_onehotd = 4'd0;
      endcase
    else go_7_goMux_data_onehotd = 4'd0;
  assign lizzieLet13_4QNone_Bool_d = go_7_goMux_data_onehotd[0];
  assign lizzieLet13_4QVal_Bool_d = go_7_goMux_data_onehotd[1];
  assign lizzieLet13_4QNode_Bool_d = go_7_goMux_data_onehotd[2];
  assign lizzieLet13_4QError_Bool_d = go_7_goMux_data_onehotd[3];
  assign go_7_goMux_data_r = (| (go_7_goMux_data_onehotd & {lizzieLet13_4QError_Bool_r,
                                                            lizzieLet13_4QNode_Bool_r,
                                                            lizzieLet13_4QVal_Bool_r,
                                                            lizzieLet13_4QNone_Bool_r}));
  assign lizzieLet13_4_r = go_7_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet13_4QError_Bool,Go) > [(lizzieLet13_4QError_Bool_1,Go),
                                                (lizzieLet13_4QError_Bool_2,Go)] */
  logic [1:0] lizzieLet13_4QError_Bool_emitted;
  logic [1:0] lizzieLet13_4QError_Bool_done;
  assign lizzieLet13_4QError_Bool_1_d = (lizzieLet13_4QError_Bool_d[0] && (! lizzieLet13_4QError_Bool_emitted[0]));
  assign lizzieLet13_4QError_Bool_2_d = (lizzieLet13_4QError_Bool_d[0] && (! lizzieLet13_4QError_Bool_emitted[1]));
  assign lizzieLet13_4QError_Bool_done = (lizzieLet13_4QError_Bool_emitted | ({lizzieLet13_4QError_Bool_2_d[0],
                                                                               lizzieLet13_4QError_Bool_1_d[0]} & {lizzieLet13_4QError_Bool_2_r,
                                                                                                                   lizzieLet13_4QError_Bool_1_r}));
  assign lizzieLet13_4QError_Bool_r = (& lizzieLet13_4QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QError_Bool_emitted <= 2'd0;
    else
      lizzieLet13_4QError_Bool_emitted <= (lizzieLet13_4QError_Bool_r ? 2'd0 :
                                           lizzieLet13_4QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet13_4QError_Bool_1,Go)] > (lizzieLet13_4QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet13_4QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet13_4QError_Bool_1_d[0]}), lizzieLet13_4QError_Bool_1_d);
  assign {lizzieLet13_4QError_Bool_1_r} = {1 {(lizzieLet13_4QError_Bool_1QError_Nat_r && lizzieLet13_4QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet13_4QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet18_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet13_4QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet13_4QError_Bool_1QError_Nat_r = ((! lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet13_4QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet13_4QError_Bool_1QError_Nat_r)
        lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d <= lizzieLet13_4QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet13_4QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet18_1_argbuf_d = (lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet18_1_argbuf_r && lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet18_1_argbuf_r) && (! lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet13_4QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet13_4QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet13_4QError_Bool_2,Go) > (lizzieLet13_4QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet13_4QError_Bool_2_bufchan_d;
  logic lizzieLet13_4QError_Bool_2_bufchan_r;
  assign lizzieLet13_4QError_Bool_2_r = ((! lizzieLet13_4QError_Bool_2_bufchan_d[0]) || lizzieLet13_4QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_4QError_Bool_2_r)
        lizzieLet13_4QError_Bool_2_bufchan_d <= lizzieLet13_4QError_Bool_2_d;
  Go_t lizzieLet13_4QError_Bool_2_bufchan_buf;
  assign lizzieLet13_4QError_Bool_2_bufchan_r = (! lizzieLet13_4QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet13_4QError_Bool_2_argbuf_d = (lizzieLet13_4QError_Bool_2_bufchan_buf[0] ? lizzieLet13_4QError_Bool_2_bufchan_buf :
                                                lizzieLet13_4QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_4QError_Bool_2_argbuf_r && lizzieLet13_4QError_Bool_2_bufchan_buf[0]))
        lizzieLet13_4QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_4QError_Bool_2_argbuf_r) && (! lizzieLet13_4QError_Bool_2_bufchan_buf[0])))
        lizzieLet13_4QError_Bool_2_bufchan_buf <= lizzieLet13_4QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet13_4QNode_Bool,Go) > (lizzieLet13_4QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet13_4QNode_Bool_bufchan_d;
  logic lizzieLet13_4QNode_Bool_bufchan_r;
  assign lizzieLet13_4QNode_Bool_r = ((! lizzieLet13_4QNode_Bool_bufchan_d[0]) || lizzieLet13_4QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_4QNode_Bool_r)
        lizzieLet13_4QNode_Bool_bufchan_d <= lizzieLet13_4QNode_Bool_d;
  Go_t lizzieLet13_4QNode_Bool_bufchan_buf;
  assign lizzieLet13_4QNode_Bool_bufchan_r = (! lizzieLet13_4QNode_Bool_bufchan_buf[0]);
  assign lizzieLet13_4QNode_Bool_1_argbuf_d = (lizzieLet13_4QNode_Bool_bufchan_buf[0] ? lizzieLet13_4QNode_Bool_bufchan_buf :
                                               lizzieLet13_4QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_4QNode_Bool_1_argbuf_r && lizzieLet13_4QNode_Bool_bufchan_buf[0]))
        lizzieLet13_4QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_4QNode_Bool_1_argbuf_r) && (! lizzieLet13_4QNode_Bool_bufchan_buf[0])))
        lizzieLet13_4QNode_Bool_bufchan_buf <= lizzieLet13_4QNode_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet13_4QNone_Bool,Go) > [(lizzieLet13_4QNone_Bool_1,Go),
                                               (lizzieLet13_4QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet13_4QNone_Bool_emitted;
  logic [1:0] lizzieLet13_4QNone_Bool_done;
  assign lizzieLet13_4QNone_Bool_1_d = (lizzieLet13_4QNone_Bool_d[0] && (! lizzieLet13_4QNone_Bool_emitted[0]));
  assign lizzieLet13_4QNone_Bool_2_d = (lizzieLet13_4QNone_Bool_d[0] && (! lizzieLet13_4QNone_Bool_emitted[1]));
  assign lizzieLet13_4QNone_Bool_done = (lizzieLet13_4QNone_Bool_emitted | ({lizzieLet13_4QNone_Bool_2_d[0],
                                                                             lizzieLet13_4QNone_Bool_1_d[0]} & {lizzieLet13_4QNone_Bool_2_r,
                                                                                                                lizzieLet13_4QNone_Bool_1_r}));
  assign lizzieLet13_4QNone_Bool_r = (& lizzieLet13_4QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet13_4QNone_Bool_emitted <= (lizzieLet13_4QNone_Bool_r ? 2'd0 :
                                          lizzieLet13_4QNone_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet13_4QNone_Bool_1,Go)] > (lizzieLet13_4QNone_Bool_1QNone_Nat,QTree_Nat) */
  assign lizzieLet13_4QNone_Bool_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet13_4QNone_Bool_1_d[0]}), lizzieLet13_4QNone_Bool_1_d);
  assign {lizzieLet13_4QNone_Bool_1_r} = {1 {(lizzieLet13_4QNone_Bool_1QNone_Nat_r && lizzieLet13_4QNone_Bool_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet13_4QNone_Bool_1QNone_Nat,QTree_Nat) > (lizzieLet14_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d;
  logic lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_r;
  assign lizzieLet13_4QNone_Bool_1QNone_Nat_r = ((! lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d[0]) || lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet13_4QNone_Bool_1QNone_Nat_r)
        lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d <= lizzieLet13_4QNone_Bool_1QNone_Nat_d;
  QTree_Nat_t lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf;
  assign lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_r = (! lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet14_1_argbuf_d = (lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf[0] ? lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf :
                                   lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet14_1_argbuf_r && lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf[0]))
        lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet14_1_argbuf_r) && (! lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf[0])))
        lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_buf <= lizzieLet13_4QNone_Bool_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet13_4QNone_Bool_2,Go) > (lizzieLet13_4QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet13_4QNone_Bool_2_bufchan_d;
  logic lizzieLet13_4QNone_Bool_2_bufchan_r;
  assign lizzieLet13_4QNone_Bool_2_r = ((! lizzieLet13_4QNone_Bool_2_bufchan_d[0]) || lizzieLet13_4QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_4QNone_Bool_2_r)
        lizzieLet13_4QNone_Bool_2_bufchan_d <= lizzieLet13_4QNone_Bool_2_d;
  Go_t lizzieLet13_4QNone_Bool_2_bufchan_buf;
  assign lizzieLet13_4QNone_Bool_2_bufchan_r = (! lizzieLet13_4QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet13_4QNone_Bool_2_argbuf_d = (lizzieLet13_4QNone_Bool_2_bufchan_buf[0] ? lizzieLet13_4QNone_Bool_2_bufchan_buf :
                                               lizzieLet13_4QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_4QNone_Bool_2_argbuf_r && lizzieLet13_4QNone_Bool_2_bufchan_buf[0]))
        lizzieLet13_4QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_4QNone_Bool_2_argbuf_r) && (! lizzieLet13_4QNone_Bool_2_bufchan_buf[0])))
        lizzieLet13_4QNone_Bool_2_bufchan_buf <= lizzieLet13_4QNone_Bool_2_bufchan_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(lizzieLet13_4QNone_Bool_2_argbuf,Go),
                           (lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf,Go),
                           (es_0_2_1MyFalse_1_argbuf,Go),
                           (es_0_2_1MyTrue_2_argbuf,Go),
                           (lizzieLet13_4QError_Bool_2_argbuf,Go)] > (go_11_goMux_choice,C5) (go_11_goMux_data,Go) */
  logic [4:0] lizzieLet13_4QNone_Bool_2_argbuf_select_d;
  assign lizzieLet13_4QNone_Bool_2_argbuf_select_d = ((| lizzieLet13_4QNone_Bool_2_argbuf_select_q) ? lizzieLet13_4QNone_Bool_2_argbuf_select_q :
                                                      (lizzieLet13_4QNone_Bool_2_argbuf_d[0] ? 5'd1 :
                                                       (\lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_d [0] ? 5'd2 :
                                                        (es_0_2_1MyFalse_1_argbuf_d[0] ? 5'd4 :
                                                         (es_0_2_1MyTrue_2_argbuf_d[0] ? 5'd8 :
                                                          (lizzieLet13_4QError_Bool_2_argbuf_d[0] ? 5'd16 :
                                                           5'd0))))));
  logic [4:0] lizzieLet13_4QNone_Bool_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QNone_Bool_2_argbuf_select_q <= 5'd0;
    else
      lizzieLet13_4QNone_Bool_2_argbuf_select_q <= (lizzieLet13_4QNone_Bool_2_argbuf_done ? 5'd0 :
                                                    lizzieLet13_4QNone_Bool_2_argbuf_select_d);
  logic [1:0] lizzieLet13_4QNone_Bool_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_4QNone_Bool_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet13_4QNone_Bool_2_argbuf_emit_q <= (lizzieLet13_4QNone_Bool_2_argbuf_done ? 2'd0 :
                                                  lizzieLet13_4QNone_Bool_2_argbuf_emit_d);
  logic [1:0] lizzieLet13_4QNone_Bool_2_argbuf_emit_d;
  assign lizzieLet13_4QNone_Bool_2_argbuf_emit_d = (lizzieLet13_4QNone_Bool_2_argbuf_emit_q | ({go_11_goMux_choice_d[0],
                                                                                                go_11_goMux_data_d[0]} & {go_11_goMux_choice_r,
                                                                                                                          go_11_goMux_data_r}));
  logic lizzieLet13_4QNone_Bool_2_argbuf_done;
  assign lizzieLet13_4QNone_Bool_2_argbuf_done = (& lizzieLet13_4QNone_Bool_2_argbuf_emit_d);
  assign {lizzieLet13_4QError_Bool_2_argbuf_r,
          es_0_2_1MyTrue_2_argbuf_r,
          es_0_2_1MyFalse_1_argbuf_r,
          \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_r ,
          lizzieLet13_4QNone_Bool_2_argbuf_r} = (lizzieLet13_4QNone_Bool_2_argbuf_done ? lizzieLet13_4QNone_Bool_2_argbuf_select_d :
                                                 5'd0);
  assign go_11_goMux_data_d = ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet13_4QNone_Bool_2_argbuf_d :
                               ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[0])) ? \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_d  :
                                ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[0])) ? es_0_2_1MyFalse_1_argbuf_d :
                                 ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[0])) ? es_0_2_1MyTrue_2_argbuf_d :
                                  ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet13_4QError_Bool_2_argbuf_d :
                                   1'd0)))));
  assign go_11_goMux_choice_d = ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                 ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                  ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                   ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                    ((lizzieLet13_4QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet13_4QNone_Bool_2_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                     {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (lizzieLet13_4QVal_Bool,Go) > [(lizzieLet13_4QVal_Bool_1,Go),
                                              (lizzieLet13_4QVal_Bool_2,Go),
                                              (lizzieLet13_4QVal_Bool_3,Go)] */
  logic [2:0] lizzieLet13_4QVal_Bool_emitted;
  logic [2:0] lizzieLet13_4QVal_Bool_done;
  assign lizzieLet13_4QVal_Bool_1_d = (lizzieLet13_4QVal_Bool_d[0] && (! lizzieLet13_4QVal_Bool_emitted[0]));
  assign lizzieLet13_4QVal_Bool_2_d = (lizzieLet13_4QVal_Bool_d[0] && (! lizzieLet13_4QVal_Bool_emitted[1]));
  assign lizzieLet13_4QVal_Bool_3_d = (lizzieLet13_4QVal_Bool_d[0] && (! lizzieLet13_4QVal_Bool_emitted[2]));
  assign lizzieLet13_4QVal_Bool_done = (lizzieLet13_4QVal_Bool_emitted | ({lizzieLet13_4QVal_Bool_3_d[0],
                                                                           lizzieLet13_4QVal_Bool_2_d[0],
                                                                           lizzieLet13_4QVal_Bool_1_d[0]} & {lizzieLet13_4QVal_Bool_3_r,
                                                                                                             lizzieLet13_4QVal_Bool_2_r,
                                                                                                             lizzieLet13_4QVal_Bool_1_r}));
  assign lizzieLet13_4QVal_Bool_r = (& lizzieLet13_4QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QVal_Bool_emitted <= 3'd0;
    else
      lizzieLet13_4QVal_Bool_emitted <= (lizzieLet13_4QVal_Bool_r ? 3'd0 :
                                         lizzieLet13_4QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet13_4QVal_Bool_1,Go) > (lizzieLet13_4QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet13_4QVal_Bool_1_bufchan_d;
  logic lizzieLet13_4QVal_Bool_1_bufchan_r;
  assign lizzieLet13_4QVal_Bool_1_r = ((! lizzieLet13_4QVal_Bool_1_bufchan_d[0]) || lizzieLet13_4QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_4QVal_Bool_1_r)
        lizzieLet13_4QVal_Bool_1_bufchan_d <= lizzieLet13_4QVal_Bool_1_d;
  Go_t lizzieLet13_4QVal_Bool_1_bufchan_buf;
  assign lizzieLet13_4QVal_Bool_1_bufchan_r = (! lizzieLet13_4QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet13_4QVal_Bool_1_argbuf_d = (lizzieLet13_4QVal_Bool_1_bufchan_buf[0] ? lizzieLet13_4QVal_Bool_1_bufchan_buf :
                                              lizzieLet13_4QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_4QVal_Bool_1_argbuf_r && lizzieLet13_4QVal_Bool_1_bufchan_buf[0]))
        lizzieLet13_4QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_4QVal_Bool_1_argbuf_r) && (! lizzieLet13_4QVal_Bool_1_bufchan_buf[0])))
        lizzieLet13_4QVal_Bool_1_bufchan_buf <= lizzieLet13_4QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Nat___MyBool,
      Dcon TupGo___MyDTBool_Nat___MyBool) : [(lizzieLet13_4QVal_Bool_1_argbuf,Go),
                                             (lizzieLet13_3QVal_Bool_1_argbuf,MyDTBool_Nat),
                                             (va8S_1_argbuf,MyBool)] > (applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1,TupGo___MyDTBool_Nat___MyBool) */
  assign applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d = TupGo___MyDTBool_Nat___MyBool_dc((& {lizzieLet13_4QVal_Bool_1_argbuf_d[0],
                                                                                                   lizzieLet13_3QVal_Bool_1_argbuf_d[0],
                                                                                                   va8S_1_argbuf_d[0]}), lizzieLet13_4QVal_Bool_1_argbuf_d, lizzieLet13_3QVal_Bool_1_argbuf_d, va8S_1_argbuf_d);
  assign {lizzieLet13_4QVal_Bool_1_argbuf_r,
          lizzieLet13_3QVal_Bool_1_argbuf_r,
          va8S_1_argbuf_r} = {3 {(applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_r && applyfnBool_Nat_5TupGo___MyDTBool_Nat___MyBool_1_d[0])}};
  
  /* buf (Ty Go) : (lizzieLet13_4QVal_Bool_2,Go) > (lizzieLet13_4QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet13_4QVal_Bool_2_bufchan_d;
  logic lizzieLet13_4QVal_Bool_2_bufchan_r;
  assign lizzieLet13_4QVal_Bool_2_r = ((! lizzieLet13_4QVal_Bool_2_bufchan_d[0]) || lizzieLet13_4QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_4QVal_Bool_2_r)
        lizzieLet13_4QVal_Bool_2_bufchan_d <= lizzieLet13_4QVal_Bool_2_d;
  Go_t lizzieLet13_4QVal_Bool_2_bufchan_buf;
  assign lizzieLet13_4QVal_Bool_2_bufchan_r = (! lizzieLet13_4QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet13_4QVal_Bool_2_argbuf_d = (lizzieLet13_4QVal_Bool_2_bufchan_buf[0] ? lizzieLet13_4QVal_Bool_2_bufchan_buf :
                                              lizzieLet13_4QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_4QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_4QVal_Bool_2_argbuf_r && lizzieLet13_4QVal_Bool_2_bufchan_buf[0]))
        lizzieLet13_4QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_4QVal_Bool_2_argbuf_r) && (! lizzieLet13_4QVal_Bool_2_bufchan_buf[0])))
        lizzieLet13_4QVal_Bool_2_bufchan_buf <= lizzieLet13_4QVal_Bool_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTNat_Bool___Pointer_Nat,
      Dcon TupGo___MyDTNat_Bool___Pointer_Nat) : [(lizzieLet13_4QVal_Bool_2_argbuf,Go),
                                                  (lizzieLet13_5QVal_Bool_1_argbuf,MyDTNat_Bool),
                                                  (xa8d_1_argbuf,Pointer_Nat)] > (applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1,TupGo___MyDTNat_Bool___Pointer_Nat) */
  assign applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d = TupGo___MyDTNat_Bool___Pointer_Nat_dc((& {lizzieLet13_4QVal_Bool_2_argbuf_d[0],
                                                                                                             lizzieLet13_5QVal_Bool_1_argbuf_d[0],
                                                                                                             xa8d_1_argbuf_d[0]}), lizzieLet13_4QVal_Bool_2_argbuf_d, lizzieLet13_5QVal_Bool_1_argbuf_d, xa8d_1_argbuf_d);
  assign {lizzieLet13_4QVal_Bool_2_argbuf_r,
          lizzieLet13_5QVal_Bool_1_argbuf_r,
          xa8d_1_argbuf_r} = {3 {(applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_r && applyfnNat_Bool_5TupGo___MyDTNat_Bool___Pointer_Nat_1_d[0])}};
  
  /* demux (Ty QTree_Bool,
       Ty MyDTNat_Bool) : (lizzieLet13_5,QTree_Bool) (isZa8P_goMux_mux,MyDTNat_Bool) > [(_52,MyDTNat_Bool),
                                                                                        (lizzieLet13_5QVal_Bool,MyDTNat_Bool),
                                                                                        (lizzieLet13_5QNode_Bool,MyDTNat_Bool),
                                                                                        (_51,MyDTNat_Bool)] */
  logic [3:0] isZa8P_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet13_5_d[0] && isZa8P_goMux_mux_d[0]))
      unique case (lizzieLet13_5_d[2:1])
        2'd0: isZa8P_goMux_mux_onehotd = 4'd1;
        2'd1: isZa8P_goMux_mux_onehotd = 4'd2;
        2'd2: isZa8P_goMux_mux_onehotd = 4'd4;
        2'd3: isZa8P_goMux_mux_onehotd = 4'd8;
        default: isZa8P_goMux_mux_onehotd = 4'd0;
      endcase
    else isZa8P_goMux_mux_onehotd = 4'd0;
  assign _52_d = isZa8P_goMux_mux_onehotd[0];
  assign lizzieLet13_5QVal_Bool_d = isZa8P_goMux_mux_onehotd[1];
  assign lizzieLet13_5QNode_Bool_d = isZa8P_goMux_mux_onehotd[2];
  assign _51_d = isZa8P_goMux_mux_onehotd[3];
  assign isZa8P_goMux_mux_r = (| (isZa8P_goMux_mux_onehotd & {_51_r,
                                                              lizzieLet13_5QNode_Bool_r,
                                                              lizzieLet13_5QVal_Bool_r,
                                                              _52_r}));
  assign lizzieLet13_5_r = isZa8P_goMux_mux_r;
  
  /* fork (Ty MyDTNat_Bool) : (lizzieLet13_5QNode_Bool,MyDTNat_Bool) > [(lizzieLet13_5QNode_Bool_1,MyDTNat_Bool),
                                                                   (lizzieLet13_5QNode_Bool_2,MyDTNat_Bool)] */
  logic [1:0] lizzieLet13_5QNode_Bool_emitted;
  logic [1:0] lizzieLet13_5QNode_Bool_done;
  assign lizzieLet13_5QNode_Bool_1_d = (lizzieLet13_5QNode_Bool_d[0] && (! lizzieLet13_5QNode_Bool_emitted[0]));
  assign lizzieLet13_5QNode_Bool_2_d = (lizzieLet13_5QNode_Bool_d[0] && (! lizzieLet13_5QNode_Bool_emitted[1]));
  assign lizzieLet13_5QNode_Bool_done = (lizzieLet13_5QNode_Bool_emitted | ({lizzieLet13_5QNode_Bool_2_d[0],
                                                                             lizzieLet13_5QNode_Bool_1_d[0]} & {lizzieLet13_5QNode_Bool_2_r,
                                                                                                                lizzieLet13_5QNode_Bool_1_r}));
  assign lizzieLet13_5QNode_Bool_r = (& lizzieLet13_5QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_5QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet13_5QNode_Bool_emitted <= (lizzieLet13_5QNode_Bool_r ? 2'd0 :
                                          lizzieLet13_5QNode_Bool_done);
  
  /* buf (Ty MyDTNat_Bool) : (lizzieLet13_5QNode_Bool_2,MyDTNat_Bool) > (lizzieLet13_5QNode_Bool_2_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_2_bufchan_d;
  logic lizzieLet13_5QNode_Bool_2_bufchan_r;
  assign lizzieLet13_5QNode_Bool_2_r = ((! lizzieLet13_5QNode_Bool_2_bufchan_d[0]) || lizzieLet13_5QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_5QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_5QNode_Bool_2_r)
        lizzieLet13_5QNode_Bool_2_bufchan_d <= lizzieLet13_5QNode_Bool_2_d;
  MyDTNat_Bool_t lizzieLet13_5QNode_Bool_2_bufchan_buf;
  assign lizzieLet13_5QNode_Bool_2_bufchan_r = (! lizzieLet13_5QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet13_5QNode_Bool_2_argbuf_d = (lizzieLet13_5QNode_Bool_2_bufchan_buf[0] ? lizzieLet13_5QNode_Bool_2_bufchan_buf :
                                               lizzieLet13_5QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_5QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_5QNode_Bool_2_argbuf_r && lizzieLet13_5QNode_Bool_2_bufchan_buf[0]))
        lizzieLet13_5QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_5QNode_Bool_2_argbuf_r) && (! lizzieLet13_5QNode_Bool_2_bufchan_buf[0])))
        lizzieLet13_5QNode_Bool_2_bufchan_buf <= lizzieLet13_5QNode_Bool_2_bufchan_d;
  
  /* buf (Ty MyDTNat_Bool) : (lizzieLet13_5QVal_Bool,MyDTNat_Bool) > (lizzieLet13_5QVal_Bool_1_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t lizzieLet13_5QVal_Bool_bufchan_d;
  logic lizzieLet13_5QVal_Bool_bufchan_r;
  assign lizzieLet13_5QVal_Bool_r = ((! lizzieLet13_5QVal_Bool_bufchan_d[0]) || lizzieLet13_5QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_5QVal_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet13_5QVal_Bool_r)
        lizzieLet13_5QVal_Bool_bufchan_d <= lizzieLet13_5QVal_Bool_d;
  MyDTNat_Bool_t lizzieLet13_5QVal_Bool_bufchan_buf;
  assign lizzieLet13_5QVal_Bool_bufchan_r = (! lizzieLet13_5QVal_Bool_bufchan_buf[0]);
  assign lizzieLet13_5QVal_Bool_1_argbuf_d = (lizzieLet13_5QVal_Bool_bufchan_buf[0] ? lizzieLet13_5QVal_Bool_bufchan_buf :
                                              lizzieLet13_5QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet13_5QVal_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet13_5QVal_Bool_1_argbuf_r && lizzieLet13_5QVal_Bool_bufchan_buf[0]))
        lizzieLet13_5QVal_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet13_5QVal_Bool_1_argbuf_r) && (! lizzieLet13_5QVal_Bool_bufchan_buf[0])))
        lizzieLet13_5QVal_Bool_bufchan_buf <= lizzieLet13_5QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTmain_map'_Bool_Nat) : (lizzieLet13_6,QTree_Bool) (sc_0_1_goMux_mux,Pointer_CTmain_map'_Bool_Nat) > [(lizzieLet13_6QNone_Bool,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                        (lizzieLet13_6QVal_Bool,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                        (lizzieLet13_6QNode_Bool,Pointer_CTmain_map'_Bool_Nat),
                                                                                                                        (lizzieLet13_6QError_Bool,Pointer_CTmain_map'_Bool_Nat)] */
  logic [3:0] sc_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet13_6_d[0] && sc_0_1_goMux_mux_d[0]))
      unique case (lizzieLet13_6_d[2:1])
        2'd0: sc_0_1_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_1_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_1_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_1_goMux_mux_onehotd = 4'd8;
        default: sc_0_1_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_1_goMux_mux_onehotd = 4'd0;
  assign lizzieLet13_6QNone_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                      sc_0_1_goMux_mux_onehotd[0]};
  assign lizzieLet13_6QVal_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                     sc_0_1_goMux_mux_onehotd[1]};
  assign lizzieLet13_6QNode_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                      sc_0_1_goMux_mux_onehotd[2]};
  assign lizzieLet13_6QError_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                       sc_0_1_goMux_mux_onehotd[3]};
  assign sc_0_1_goMux_mux_r = (| (sc_0_1_goMux_mux_onehotd & {lizzieLet13_6QError_Bool_r,
                                                              lizzieLet13_6QNode_Bool_r,
                                                              lizzieLet13_6QVal_Bool_r,
                                                              lizzieLet13_6QNone_Bool_r}));
  assign lizzieLet13_6_r = sc_0_1_goMux_mux_r;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (lizzieLet13_6QError_Bool,Pointer_CTmain_map'_Bool_Nat) > (lizzieLet13_6QError_Bool_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QError_Bool_bufchan_d;
  logic lizzieLet13_6QError_Bool_bufchan_r;
  assign lizzieLet13_6QError_Bool_r = ((! lizzieLet13_6QError_Bool_bufchan_d[0]) || lizzieLet13_6QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_6QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet13_6QError_Bool_r)
        lizzieLet13_6QError_Bool_bufchan_d <= lizzieLet13_6QError_Bool_d;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QError_Bool_bufchan_buf;
  assign lizzieLet13_6QError_Bool_bufchan_r = (! lizzieLet13_6QError_Bool_bufchan_buf[0]);
  assign lizzieLet13_6QError_Bool_1_argbuf_d = (lizzieLet13_6QError_Bool_bufchan_buf[0] ? lizzieLet13_6QError_Bool_bufchan_buf :
                                                lizzieLet13_6QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_6QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet13_6QError_Bool_1_argbuf_r && lizzieLet13_6QError_Bool_bufchan_buf[0]))
        lizzieLet13_6QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet13_6QError_Bool_1_argbuf_r) && (! lizzieLet13_6QError_Bool_bufchan_buf[0])))
        lizzieLet13_6QError_Bool_bufchan_buf <= lizzieLet13_6QError_Bool_bufchan_d;
  
  /* dcon (Ty CTmain_map'_Bool_Nat,
      Dcon Lcall_main_map'_Bool_Nat3) : [(lizzieLet13_6QNode_Bool,Pointer_CTmain_map'_Bool_Nat),
                                         (lizzieLet13_5QNode_Bool_1,MyDTNat_Bool),
                                         (lizzieLet13_3QNode_Bool_1,MyDTBool_Nat),
                                         (q1a8T_destruct,Pointer_QTree_Bool),
                                         (q2a8U_destruct,Pointer_QTree_Bool),
                                         (q3a8V_destruct,Pointer_QTree_Bool)] > (lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3,CTmain_map'_Bool_Nat) */
  assign \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_d  = \Lcall_main_map'_Bool_Nat3_dc ((& {lizzieLet13_6QNode_Bool_d[0],
                                                                                                                                                                            lizzieLet13_5QNode_Bool_1_d[0],
                                                                                                                                                                            lizzieLet13_3QNode_Bool_1_d[0],
                                                                                                                                                                            q1a8T_destruct_d[0],
                                                                                                                                                                            q2a8U_destruct_d[0],
                                                                                                                                                                            q3a8V_destruct_d[0]}), lizzieLet13_6QNode_Bool_d, lizzieLet13_5QNode_Bool_1_d, lizzieLet13_3QNode_Bool_1_d, q1a8T_destruct_d, q2a8U_destruct_d, q3a8V_destruct_d);
  assign {lizzieLet13_6QNode_Bool_r,
          lizzieLet13_5QNode_Bool_1_r,
          lizzieLet13_3QNode_Bool_1_r,
          q1a8T_destruct_r,
          q2a8U_destruct_r,
          q3a8V_destruct_r} = {6 {(\lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_r  && \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_d [0])}};
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3,CTmain_map'_Bool_Nat) > (lizzieLet17_1_argbuf,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d ;
  logic \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_r ;
  assign \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_r  = ((! \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d [0]) || \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d  <= {67'd0,
                                                                                                                                                1'd0};
    else
      if (\lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_r )
        \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d  <= \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_d ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf ;
  assign \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_r  = (! \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf [0]);
  assign lizzieLet17_1_argbuf_d = (\lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf [0] ? \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf  :
                                   \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf  <= {67'd0,
                                                                                                                                                  1'd0};
    else
      if ((lizzieLet17_1_argbuf_r && \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf [0]))
        \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf  <= {67'd0,
                                                                                                                                                    1'd0};
      else if (((! lizzieLet17_1_argbuf_r) && (! \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf [0])))
        \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_buf  <= \lizzieLet13_6QNode_Bool_1lizzieLet13_5QNode_Bool_1lizzieLet13_3QNode_Bool_1q1a8T_1q2a8U_1q3a8V_1Lcall_main_map'_Bool_Nat3_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (lizzieLet13_6QNone_Bool,Pointer_CTmain_map'_Bool_Nat) > (lizzieLet13_6QNone_Bool_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QNone_Bool_bufchan_d;
  logic lizzieLet13_6QNone_Bool_bufchan_r;
  assign lizzieLet13_6QNone_Bool_r = ((! lizzieLet13_6QNone_Bool_bufchan_d[0]) || lizzieLet13_6QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_6QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet13_6QNone_Bool_r)
        lizzieLet13_6QNone_Bool_bufchan_d <= lizzieLet13_6QNone_Bool_d;
  \Pointer_CTmain_map'_Bool_Nat_t  lizzieLet13_6QNone_Bool_bufchan_buf;
  assign lizzieLet13_6QNone_Bool_bufchan_r = (! lizzieLet13_6QNone_Bool_bufchan_buf[0]);
  assign lizzieLet13_6QNone_Bool_1_argbuf_d = (lizzieLet13_6QNone_Bool_bufchan_buf[0] ? lizzieLet13_6QNone_Bool_bufchan_buf :
                                               lizzieLet13_6QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet13_6QNone_Bool_1_argbuf_r && lizzieLet13_6QNone_Bool_bufchan_buf[0]))
        lizzieLet13_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet13_6QNone_Bool_1_argbuf_r) && (! lizzieLet13_6QNone_Bool_bufchan_buf[0])))
        lizzieLet13_6QNone_Bool_bufchan_buf <= lizzieLet13_6QNone_Bool_bufchan_d;
  
  /* destruct (Ty Nat,
          Dcon Succ) : (lizzieLet19_1Succ,Nat) > [(x1a99_destruct,Pointer_Nat)] */
  assign x1a99_destruct_d = {lizzieLet19_1Succ_d[17:2],
                             lizzieLet19_1Succ_d[0]};
  assign lizzieLet19_1Succ_r = x1a99_destruct_r;
  
  /* demux (Ty Nat,
       Ty Nat) : (lizzieLet19_2,Nat) (lizzieLet19_1,Nat) > [(_50,Nat),
                                                            (lizzieLet19_1Succ,Nat)] */
  logic [1:0] lizzieLet19_1_onehotd;
  always_comb
    if ((lizzieLet19_2_d[0] && lizzieLet19_1_d[0]))
      unique case (lizzieLet19_2_d[1:1])
        1'd0: lizzieLet19_1_onehotd = 2'd1;
        1'd1: lizzieLet19_1_onehotd = 2'd2;
        default: lizzieLet19_1_onehotd = 2'd0;
      endcase
    else lizzieLet19_1_onehotd = 2'd0;
  assign _50_d = {lizzieLet19_1_d[17:1], lizzieLet19_1_onehotd[0]};
  assign lizzieLet19_1Succ_d = {lizzieLet19_1_d[17:1],
                                lizzieLet19_1_onehotd[1]};
  assign lizzieLet19_1_r = (| (lizzieLet19_1_onehotd & {lizzieLet19_1Succ_r,
                                                        _50_r}));
  assign lizzieLet19_2_r = lizzieLet19_1_r;
  
  /* demux (Ty Nat,
       Ty Go) : (lizzieLet19_3,Nat) (go_8_goMux_data,Go) > [(lizzieLet19_3Zero,Go),
                                                            (lizzieLet19_3Succ,Go)] */
  logic [1:0] go_8_goMux_data_onehotd;
  always_comb
    if ((lizzieLet19_3_d[0] && go_8_goMux_data_d[0]))
      unique case (lizzieLet19_3_d[1:1])
        1'd0: go_8_goMux_data_onehotd = 2'd1;
        1'd1: go_8_goMux_data_onehotd = 2'd2;
        default: go_8_goMux_data_onehotd = 2'd0;
      endcase
    else go_8_goMux_data_onehotd = 2'd0;
  assign lizzieLet19_3Zero_d = go_8_goMux_data_onehotd[0];
  assign lizzieLet19_3Succ_d = go_8_goMux_data_onehotd[1];
  assign go_8_goMux_data_r = (| (go_8_goMux_data_onehotd & {lizzieLet19_3Succ_r,
                                                            lizzieLet19_3Zero_r}));
  assign lizzieLet19_3_r = go_8_goMux_data_r;
  
  /* demux (Ty Nat,
       Ty Nat) : (lizzieLet19_4,Nat) (readPointer_Natya97_1_argbuf_rwb,Nat) > [(lizzieLet19_4Zero,Nat),
                                                                               (lizzieLet19_4Succ,Nat)] */
  logic [1:0] readPointer_Natya97_1_argbuf_rwb_onehotd;
  always_comb
    if ((lizzieLet19_4_d[0] && readPointer_Natya97_1_argbuf_rwb_d[0]))
      unique case (lizzieLet19_4_d[1:1])
        1'd0: readPointer_Natya97_1_argbuf_rwb_onehotd = 2'd1;
        1'd1: readPointer_Natya97_1_argbuf_rwb_onehotd = 2'd2;
        default: readPointer_Natya97_1_argbuf_rwb_onehotd = 2'd0;
      endcase
    else readPointer_Natya97_1_argbuf_rwb_onehotd = 2'd0;
  assign lizzieLet19_4Zero_d = {readPointer_Natya97_1_argbuf_rwb_d[17:1],
                                readPointer_Natya97_1_argbuf_rwb_onehotd[0]};
  assign lizzieLet19_4Succ_d = {readPointer_Natya97_1_argbuf_rwb_d[17:1],
                                readPointer_Natya97_1_argbuf_rwb_onehotd[1]};
  assign readPointer_Natya97_1_argbuf_rwb_r = (| (readPointer_Natya97_1_argbuf_rwb_onehotd & {lizzieLet19_4Succ_r,
                                                                                              lizzieLet19_4Zero_r}));
  assign lizzieLet19_4_r = readPointer_Natya97_1_argbuf_rwb_r;
  
  /* fork (Ty Nat) : (lizzieLet19_4Succ,Nat) > [(lizzieLet19_4Succ_1,Nat),
                                           (lizzieLet19_4Succ_2,Nat),
                                           (lizzieLet19_4Succ_3,Nat),
                                           (lizzieLet19_4Succ_4,Nat)] */
  logic [3:0] lizzieLet19_4Succ_emitted;
  logic [3:0] lizzieLet19_4Succ_done;
  assign lizzieLet19_4Succ_1_d = {lizzieLet19_4Succ_d[17:1],
                                  (lizzieLet19_4Succ_d[0] && (! lizzieLet19_4Succ_emitted[0]))};
  assign lizzieLet19_4Succ_2_d = {lizzieLet19_4Succ_d[17:1],
                                  (lizzieLet19_4Succ_d[0] && (! lizzieLet19_4Succ_emitted[1]))};
  assign lizzieLet19_4Succ_3_d = {lizzieLet19_4Succ_d[17:1],
                                  (lizzieLet19_4Succ_d[0] && (! lizzieLet19_4Succ_emitted[2]))};
  assign lizzieLet19_4Succ_4_d = {lizzieLet19_4Succ_d[17:1],
                                  (lizzieLet19_4Succ_d[0] && (! lizzieLet19_4Succ_emitted[3]))};
  assign lizzieLet19_4Succ_done = (lizzieLet19_4Succ_emitted | ({lizzieLet19_4Succ_4_d[0],
                                                                 lizzieLet19_4Succ_3_d[0],
                                                                 lizzieLet19_4Succ_2_d[0],
                                                                 lizzieLet19_4Succ_1_d[0]} & {lizzieLet19_4Succ_4_r,
                                                                                              lizzieLet19_4Succ_3_r,
                                                                                              lizzieLet19_4Succ_2_r,
                                                                                              lizzieLet19_4Succ_1_r}));
  assign lizzieLet19_4Succ_r = (& lizzieLet19_4Succ_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_4Succ_emitted <= 4'd0;
    else
      lizzieLet19_4Succ_emitted <= (lizzieLet19_4Succ_r ? 4'd0 :
                                    lizzieLet19_4Succ_done);
  
  /* destruct (Ty Nat,
          Dcon Succ) : (lizzieLet19_4Succ_1Succ,Nat) > [(y1a9a_destruct,Pointer_Nat)] */
  assign y1a9a_destruct_d = {lizzieLet19_4Succ_1Succ_d[17:2],
                             lizzieLet19_4Succ_1Succ_d[0]};
  assign lizzieLet19_4Succ_1Succ_r = y1a9a_destruct_r;
  
  /* demux (Ty Nat,
       Ty Nat) : (lizzieLet19_4Succ_2,Nat) (lizzieLet19_4Succ_1,Nat) > [(_49,Nat),
                                                                        (lizzieLet19_4Succ_1Succ,Nat)] */
  logic [1:0] lizzieLet19_4Succ_1_onehotd;
  always_comb
    if ((lizzieLet19_4Succ_2_d[0] && lizzieLet19_4Succ_1_d[0]))
      unique case (lizzieLet19_4Succ_2_d[1:1])
        1'd0: lizzieLet19_4Succ_1_onehotd = 2'd1;
        1'd1: lizzieLet19_4Succ_1_onehotd = 2'd2;
        default: lizzieLet19_4Succ_1_onehotd = 2'd0;
      endcase
    else lizzieLet19_4Succ_1_onehotd = 2'd0;
  assign _49_d = {lizzieLet19_4Succ_1_d[17:1],
                  lizzieLet19_4Succ_1_onehotd[0]};
  assign lizzieLet19_4Succ_1Succ_d = {lizzieLet19_4Succ_1_d[17:1],
                                      lizzieLet19_4Succ_1_onehotd[1]};
  assign lizzieLet19_4Succ_1_r = (| (lizzieLet19_4Succ_1_onehotd & {lizzieLet19_4Succ_1Succ_r,
                                                                    _49_r}));
  assign lizzieLet19_4Succ_2_r = lizzieLet19_4Succ_1_r;
  
  /* demux (Ty Nat,
       Ty Go) : (lizzieLet19_4Succ_3,Nat) (lizzieLet19_3Succ,Go) > [(lizzieLet19_4Succ_3Zero,Go),
                                                                    (lizzieLet19_4Succ_3Succ,Go)] */
  logic [1:0] lizzieLet19_3Succ_onehotd;
  always_comb
    if ((lizzieLet19_4Succ_3_d[0] && lizzieLet19_3Succ_d[0]))
      unique case (lizzieLet19_4Succ_3_d[1:1])
        1'd0: lizzieLet19_3Succ_onehotd = 2'd1;
        1'd1: lizzieLet19_3Succ_onehotd = 2'd2;
        default: lizzieLet19_3Succ_onehotd = 2'd0;
      endcase
    else lizzieLet19_3Succ_onehotd = 2'd0;
  assign lizzieLet19_4Succ_3Zero_d = lizzieLet19_3Succ_onehotd[0];
  assign lizzieLet19_4Succ_3Succ_d = lizzieLet19_3Succ_onehotd[1];
  assign lizzieLet19_3Succ_r = (| (lizzieLet19_3Succ_onehotd & {lizzieLet19_4Succ_3Succ_r,
                                                                lizzieLet19_4Succ_3Zero_r}));
  assign lizzieLet19_4Succ_3_r = lizzieLet19_3Succ_r;
  
  /* buf (Ty Go) : (lizzieLet19_4Succ_3Succ,Go) > (lizzieLet19_4Succ_3Succ_1_argbuf,Go) */
  Go_t lizzieLet19_4Succ_3Succ_bufchan_d;
  logic lizzieLet19_4Succ_3Succ_bufchan_r;
  assign lizzieLet19_4Succ_3Succ_r = ((! lizzieLet19_4Succ_3Succ_bufchan_d[0]) || lizzieLet19_4Succ_3Succ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_4Succ_3Succ_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_4Succ_3Succ_r)
        lizzieLet19_4Succ_3Succ_bufchan_d <= lizzieLet19_4Succ_3Succ_d;
  Go_t lizzieLet19_4Succ_3Succ_bufchan_buf;
  assign lizzieLet19_4Succ_3Succ_bufchan_r = (! lizzieLet19_4Succ_3Succ_bufchan_buf[0]);
  assign lizzieLet19_4Succ_3Succ_1_argbuf_d = (lizzieLet19_4Succ_3Succ_bufchan_buf[0] ? lizzieLet19_4Succ_3Succ_bufchan_buf :
                                               lizzieLet19_4Succ_3Succ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_4Succ_3Succ_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_4Succ_3Succ_1_argbuf_r && lizzieLet19_4Succ_3Succ_bufchan_buf[0]))
        lizzieLet19_4Succ_3Succ_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_4Succ_3Succ_1_argbuf_r) && (! lizzieLet19_4Succ_3Succ_bufchan_buf[0])))
        lizzieLet19_4Succ_3Succ_bufchan_buf <= lizzieLet19_4Succ_3Succ_bufchan_d;
  
  /* dcon (Ty MyBool,
      Dcon MyFalse) : [(lizzieLet19_4Succ_3Zero,Go)] > (lizzieLet19_4Succ_3Zero_1MyFalse,MyBool) */
  assign lizzieLet19_4Succ_3Zero_1MyFalse_d = MyFalse_dc((& {lizzieLet19_4Succ_3Zero_d[0]}), lizzieLet19_4Succ_3Zero_d);
  assign {lizzieLet19_4Succ_3Zero_r} = {1 {(lizzieLet19_4Succ_3Zero_1MyFalse_r && lizzieLet19_4Succ_3Zero_1MyFalse_d[0])}};
  
  /* demux (Ty Nat,
       Ty Pointer_Nat) : (lizzieLet19_4Succ_4,Nat) (x1a99_destruct,Pointer_Nat) > [(_48,Pointer_Nat),
                                                                                   (lizzieLet19_4Succ_4Succ,Pointer_Nat)] */
  logic [1:0] x1a99_destruct_onehotd;
  always_comb
    if ((lizzieLet19_4Succ_4_d[0] && x1a99_destruct_d[0]))
      unique case (lizzieLet19_4Succ_4_d[1:1])
        1'd0: x1a99_destruct_onehotd = 2'd1;
        1'd1: x1a99_destruct_onehotd = 2'd2;
        default: x1a99_destruct_onehotd = 2'd0;
      endcase
    else x1a99_destruct_onehotd = 2'd0;
  assign _48_d = {x1a99_destruct_d[16:1], x1a99_destruct_onehotd[0]};
  assign lizzieLet19_4Succ_4Succ_d = {x1a99_destruct_d[16:1],
                                      x1a99_destruct_onehotd[1]};
  assign x1a99_destruct_r = (| (x1a99_destruct_onehotd & {lizzieLet19_4Succ_4Succ_r,
                                                          _48_r}));
  assign lizzieLet19_4Succ_4_r = x1a99_destruct_r;
  
  /* buf (Ty Pointer_Nat) : (lizzieLet19_4Succ_4Succ,Pointer_Nat) > (lizzieLet19_4Succ_4Succ_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t lizzieLet19_4Succ_4Succ_bufchan_d;
  logic lizzieLet19_4Succ_4Succ_bufchan_r;
  assign lizzieLet19_4Succ_4Succ_r = ((! lizzieLet19_4Succ_4Succ_bufchan_d[0]) || lizzieLet19_4Succ_4Succ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4Succ_4Succ_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet19_4Succ_4Succ_r)
        lizzieLet19_4Succ_4Succ_bufchan_d <= lizzieLet19_4Succ_4Succ_d;
  Pointer_Nat_t lizzieLet19_4Succ_4Succ_bufchan_buf;
  assign lizzieLet19_4Succ_4Succ_bufchan_r = (! lizzieLet19_4Succ_4Succ_bufchan_buf[0]);
  assign lizzieLet19_4Succ_4Succ_1_argbuf_d = (lizzieLet19_4Succ_4Succ_bufchan_buf[0] ? lizzieLet19_4Succ_4Succ_bufchan_buf :
                                               lizzieLet19_4Succ_4Succ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4Succ_4Succ_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet19_4Succ_4Succ_1_argbuf_r && lizzieLet19_4Succ_4Succ_bufchan_buf[0]))
        lizzieLet19_4Succ_4Succ_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet19_4Succ_4Succ_1_argbuf_r) && (! lizzieLet19_4Succ_4Succ_bufchan_buf[0])))
        lizzieLet19_4Succ_4Succ_bufchan_buf <= lizzieLet19_4Succ_4Succ_bufchan_d;
  
  /* demux (Ty Nat,
       Ty Go) : (lizzieLet19_4Zero,Nat) (lizzieLet19_3Zero,Go) > [(lizzieLet19_4Zero_1Zero,Go),
                                                                  (lizzieLet19_4Zero_1Succ,Go)] */
  logic [1:0] lizzieLet19_3Zero_onehotd;
  always_comb
    if ((lizzieLet19_4Zero_d[0] && lizzieLet19_3Zero_d[0]))
      unique case (lizzieLet19_4Zero_d[1:1])
        1'd0: lizzieLet19_3Zero_onehotd = 2'd1;
        1'd1: lizzieLet19_3Zero_onehotd = 2'd2;
        default: lizzieLet19_3Zero_onehotd = 2'd0;
      endcase
    else lizzieLet19_3Zero_onehotd = 2'd0;
  assign lizzieLet19_4Zero_1Zero_d = lizzieLet19_3Zero_onehotd[0];
  assign lizzieLet19_4Zero_1Succ_d = lizzieLet19_3Zero_onehotd[1];
  assign lizzieLet19_3Zero_r = (| (lizzieLet19_3Zero_onehotd & {lizzieLet19_4Zero_1Succ_r,
                                                                lizzieLet19_4Zero_1Zero_r}));
  assign lizzieLet19_4Zero_r = lizzieLet19_3Zero_r;
  
  /* dcon (Ty MyBool,
      Dcon MyFalse) : [(lizzieLet19_4Zero_1Succ,Go)] > (lizzieLet19_4Zero_1Succ_1MyFalse,MyBool) */
  assign lizzieLet19_4Zero_1Succ_1MyFalse_d = MyFalse_dc((& {lizzieLet19_4Zero_1Succ_d[0]}), lizzieLet19_4Zero_1Succ_d);
  assign {lizzieLet19_4Zero_1Succ_r} = {1 {(lizzieLet19_4Zero_1Succ_1MyFalse_r && lizzieLet19_4Zero_1Succ_1MyFalse_d[0])}};
  
  /* dcon (Ty MyBool,
      Dcon MyTrue) : [(lizzieLet19_4Zero_1Zero,Go)] > (lizzieLet19_4Zero_1Zero_1MyTrue,MyBool) */
  assign lizzieLet19_4Zero_1Zero_1MyTrue_d = MyTrue_dc((& {lizzieLet19_4Zero_1Zero_d[0]}), lizzieLet19_4Zero_1Zero_d);
  assign {lizzieLet19_4Zero_1Zero_r} = {1 {(lizzieLet19_4Zero_1Zero_1MyTrue_r && lizzieLet19_4Zero_1Zero_1MyTrue_d[0])}};
  
  /* merge (Ty MyBool) : [(lizzieLet19_4Zero_1Zero_1MyTrue,MyBool),
                     (lizzieLet19_4Zero_1Succ_1MyFalse,MyBool)] > (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge,MyBool) */
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected;
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_select;
  always_comb
    begin
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected = 2'd0;
      if ((| lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_select))
        lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected = lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_select;
      else
        if (lizzieLet19_4Zero_1Zero_1MyTrue_d[0])
          lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected[0] = 1'd1;
        else if (lizzieLet19_4Zero_1Succ_1MyFalse_d[0])
          lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_select <= 2'd0;
    else
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_select <= (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_r ? 2'd0 :
                                                                                       lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected);
  always_comb
    if (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected[0])
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d = lizzieLet19_4Zero_1Zero_1MyTrue_d;
    else if (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected[1])
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d = lizzieLet19_4Zero_1Succ_1MyFalse_d;
    else
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d = {1'd0,
                                                                                 1'd0};
  assign {lizzieLet19_4Zero_1Succ_1MyFalse_r,
          lizzieLet19_4Zero_1Zero_1MyTrue_r} = (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_r ? lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_selected :
                                                2'd0);
  
  /* merge (Ty MyBool) : [(lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge,MyBool),
                     (lizzieLet19_4Succ_3Zero_1MyFalse,MyBool)] > (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge,MyBool) */
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected;
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_select;
  always_comb
    begin
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected = 2'd0;
      if ((| lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_select))
        lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected = lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_select;
      else
        if (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d[0])
          lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected[0] = 1'd1;
        else if (lizzieLet19_4Succ_3Zero_1MyFalse_d[0])
          lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_select <= 2'd0;
    else
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_select <= (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_r ? 2'd0 :
                                                                                                                                   lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected);
  always_comb
    if (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected[0])
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d = lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_d;
    else if (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected[1])
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d = lizzieLet19_4Succ_3Zero_1MyFalse_d;
    else
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d = {1'd0,
                                                                                                                             1'd0};
  assign {lizzieLet19_4Succ_3Zero_1MyFalse_r,
          lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_merge_r} = (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_r ? lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_selected :
                                                                                      2'd0);
  
  /* fork (Ty MyBool) : (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge,MyBool) > [(lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1,MyBool),
                                                                                                                                                 (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2,MyBool)] */
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted;
  logic [1:0] lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_done;
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_d = {lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d[1:1],
                                                                                                                                       (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d[0] && (! lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted[0]))};
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d = {lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d[1:1],
                                                                                                                                       (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_d[0] && (! lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted[1]))};
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_done = (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted | ({lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_d[0],
                                                                                                                                                                                                                                                                 lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_d[0]} & {lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_2_r,
                                                                                                                                                                                                                                                                                                                                                                                                   lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_r}));
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_r = (& lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted <= 2'd0;
    else
      lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_emitted <= (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_r ? 2'd0 :
                                                                                                                                    lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_done);
  
  /* togo (Ty MyBool) : (lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1,MyBool) > (eqNat_goConst,Go) */
  assign eqNat_goConst_d = lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_d[0];
  assign lizzieLet19_4Zero_1Zero_1MyTruelizzieLet19_4Zero_1Succ_1MyFalse_mergelizzieLet19_4Succ_3Zero_1MyFalse_merge_merge_fork_1_r = eqNat_goConst_r;
  
  /* destruct (Ty CT$wmAdd_Bool,
          Dcon Lcall_$wmAdd_Bool0) : (lizzieLet23_1Lcall_$wmAdd_Bool0,CT$wmAdd_Bool) > [(es_2_1_destruct,Pointer_QTree_Bool),
                                                                                        (es_3_2_destruct,Pointer_QTree_Bool),
                                                                                        (es_4_2_destruct,Pointer_QTree_Bool),
                                                                                        (sc_0_5_destruct,Pointer_CT$wmAdd_Bool)] */
  logic [3:0] lizzieLet23_1Lcall_$wmAdd_Bool0_emitted;
  logic [3:0] lizzieLet23_1Lcall_$wmAdd_Bool0_done;
  assign es_2_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool0_d[19:4],
                              (lizzieLet23_1Lcall_$wmAdd_Bool0_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool0_emitted[0]))};
  assign es_3_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool0_d[35:20],
                              (lizzieLet23_1Lcall_$wmAdd_Bool0_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool0_emitted[1]))};
  assign es_4_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool0_d[51:36],
                              (lizzieLet23_1Lcall_$wmAdd_Bool0_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool0_emitted[2]))};
  assign sc_0_5_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool0_d[67:52],
                              (lizzieLet23_1Lcall_$wmAdd_Bool0_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool0_emitted[3]))};
  assign lizzieLet23_1Lcall_$wmAdd_Bool0_done = (lizzieLet23_1Lcall_$wmAdd_Bool0_emitted | ({sc_0_5_destruct_d[0],
                                                                                             es_4_2_destruct_d[0],
                                                                                             es_3_2_destruct_d[0],
                                                                                             es_2_1_destruct_d[0]} & {sc_0_5_destruct_r,
                                                                                                                      es_4_2_destruct_r,
                                                                                                                      es_3_2_destruct_r,
                                                                                                                      es_2_1_destruct_r}));
  assign lizzieLet23_1Lcall_$wmAdd_Bool0_r = (& lizzieLet23_1Lcall_$wmAdd_Bool0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_1Lcall_$wmAdd_Bool0_emitted <= 4'd0;
    else
      lizzieLet23_1Lcall_$wmAdd_Bool0_emitted <= (lizzieLet23_1Lcall_$wmAdd_Bool0_r ? 4'd0 :
                                                  lizzieLet23_1Lcall_$wmAdd_Bool0_done);
  
  /* destruct (Ty CT$wmAdd_Bool,
          Dcon Lcall_$wmAdd_Bool1) : (lizzieLet23_1Lcall_$wmAdd_Bool1,CT$wmAdd_Bool) > [(es_3_1_destruct,Pointer_QTree_Bool),
                                                                                        (es_4_1_destruct,Pointer_QTree_Bool),
                                                                                        (sc_0_4_destruct,Pointer_CT$wmAdd_Bool),
                                                                                        (wskB_4_destruct,MyDTBool_Bool_Bool),
                                                                                        (q1a8o_3_destruct,Pointer_QTree_Bool),
                                                                                        (t1a8t_3_destruct,Pointer_QTree_Bool)] */
  logic [5:0] lizzieLet23_1Lcall_$wmAdd_Bool1_emitted;
  logic [5:0] lizzieLet23_1Lcall_$wmAdd_Bool1_done;
  assign es_3_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool1_d[19:4],
                              (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[0]))};
  assign es_4_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool1_d[35:20],
                              (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[1]))};
  assign sc_0_4_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool1_d[51:36],
                              (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[2]))};
  assign wskB_4_destruct_d = (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[3]));
  assign q1a8o_3_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool1_d[67:52],
                               (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[4]))};
  assign t1a8t_3_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool1_d[83:68],
                               (lizzieLet23_1Lcall_$wmAdd_Bool1_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool1_emitted[5]))};
  assign lizzieLet23_1Lcall_$wmAdd_Bool1_done = (lizzieLet23_1Lcall_$wmAdd_Bool1_emitted | ({t1a8t_3_destruct_d[0],
                                                                                             q1a8o_3_destruct_d[0],
                                                                                             wskB_4_destruct_d[0],
                                                                                             sc_0_4_destruct_d[0],
                                                                                             es_4_1_destruct_d[0],
                                                                                             es_3_1_destruct_d[0]} & {t1a8t_3_destruct_r,
                                                                                                                      q1a8o_3_destruct_r,
                                                                                                                      wskB_4_destruct_r,
                                                                                                                      sc_0_4_destruct_r,
                                                                                                                      es_4_1_destruct_r,
                                                                                                                      es_3_1_destruct_r}));
  assign lizzieLet23_1Lcall_$wmAdd_Bool1_r = (& lizzieLet23_1Lcall_$wmAdd_Bool1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_1Lcall_$wmAdd_Bool1_emitted <= 6'd0;
    else
      lizzieLet23_1Lcall_$wmAdd_Bool1_emitted <= (lizzieLet23_1Lcall_$wmAdd_Bool1_r ? 6'd0 :
                                                  lizzieLet23_1Lcall_$wmAdd_Bool1_done);
  
  /* destruct (Ty CT$wmAdd_Bool,
          Dcon Lcall_$wmAdd_Bool2) : (lizzieLet23_1Lcall_$wmAdd_Bool2,CT$wmAdd_Bool) > [(es_4_destruct,Pointer_QTree_Bool),
                                                                                        (sc_0_3_destruct,Pointer_CT$wmAdd_Bool),
                                                                                        (wskB_3_destruct,MyDTBool_Bool_Bool),
                                                                                        (q1a8o_2_destruct,Pointer_QTree_Bool),
                                                                                        (t1a8t_2_destruct,Pointer_QTree_Bool),
                                                                                        (q2a8p_2_destruct,Pointer_QTree_Bool),
                                                                                        (t2a8u_2_destruct,Pointer_QTree_Bool)] */
  logic [6:0] lizzieLet23_1Lcall_$wmAdd_Bool2_emitted;
  logic [6:0] lizzieLet23_1Lcall_$wmAdd_Bool2_done;
  assign es_4_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[19:4],
                            (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[0]))};
  assign sc_0_3_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[35:20],
                              (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[1]))};
  assign wskB_3_destruct_d = (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[2]));
  assign q1a8o_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[51:36],
                               (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[3]))};
  assign t1a8t_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[67:52],
                               (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[4]))};
  assign q2a8p_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[83:68],
                               (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[5]))};
  assign t2a8u_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool2_d[99:84],
                               (lizzieLet23_1Lcall_$wmAdd_Bool2_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool2_emitted[6]))};
  assign lizzieLet23_1Lcall_$wmAdd_Bool2_done = (lizzieLet23_1Lcall_$wmAdd_Bool2_emitted | ({t2a8u_2_destruct_d[0],
                                                                                             q2a8p_2_destruct_d[0],
                                                                                             t1a8t_2_destruct_d[0],
                                                                                             q1a8o_2_destruct_d[0],
                                                                                             wskB_3_destruct_d[0],
                                                                                             sc_0_3_destruct_d[0],
                                                                                             es_4_destruct_d[0]} & {t2a8u_2_destruct_r,
                                                                                                                    q2a8p_2_destruct_r,
                                                                                                                    t1a8t_2_destruct_r,
                                                                                                                    q1a8o_2_destruct_r,
                                                                                                                    wskB_3_destruct_r,
                                                                                                                    sc_0_3_destruct_r,
                                                                                                                    es_4_destruct_r}));
  assign lizzieLet23_1Lcall_$wmAdd_Bool2_r = (& lizzieLet23_1Lcall_$wmAdd_Bool2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_1Lcall_$wmAdd_Bool2_emitted <= 7'd0;
    else
      lizzieLet23_1Lcall_$wmAdd_Bool2_emitted <= (lizzieLet23_1Lcall_$wmAdd_Bool2_r ? 7'd0 :
                                                  lizzieLet23_1Lcall_$wmAdd_Bool2_done);
  
  /* destruct (Ty CT$wmAdd_Bool,
          Dcon Lcall_$wmAdd_Bool3) : (lizzieLet23_1Lcall_$wmAdd_Bool3,CT$wmAdd_Bool) > [(sc_0_2_destruct,Pointer_CT$wmAdd_Bool),
                                                                                        (wskB_2_destruct,MyDTBool_Bool_Bool),
                                                                                        (q1a8o_1_destruct,Pointer_QTree_Bool),
                                                                                        (t1a8t_1_destruct,Pointer_QTree_Bool),
                                                                                        (q2a8p_1_destruct,Pointer_QTree_Bool),
                                                                                        (t2a8u_1_destruct,Pointer_QTree_Bool),
                                                                                        (q3a8q_1_destruct,Pointer_QTree_Bool),
                                                                                        (t3a8v_1_destruct,Pointer_QTree_Bool)] */
  logic [7:0] lizzieLet23_1Lcall_$wmAdd_Bool3_emitted;
  logic [7:0] lizzieLet23_1Lcall_$wmAdd_Bool3_done;
  assign sc_0_2_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[19:4],
                              (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[0]))};
  assign wskB_2_destruct_d = (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[1]));
  assign q1a8o_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[35:20],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[2]))};
  assign t1a8t_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[51:36],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[3]))};
  assign q2a8p_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[67:52],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[4]))};
  assign t2a8u_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[83:68],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[5]))};
  assign q3a8q_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[99:84],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[6]))};
  assign t3a8v_1_destruct_d = {lizzieLet23_1Lcall_$wmAdd_Bool3_d[115:100],
                               (lizzieLet23_1Lcall_$wmAdd_Bool3_d[0] && (! lizzieLet23_1Lcall_$wmAdd_Bool3_emitted[7]))};
  assign lizzieLet23_1Lcall_$wmAdd_Bool3_done = (lizzieLet23_1Lcall_$wmAdd_Bool3_emitted | ({t3a8v_1_destruct_d[0],
                                                                                             q3a8q_1_destruct_d[0],
                                                                                             t2a8u_1_destruct_d[0],
                                                                                             q2a8p_1_destruct_d[0],
                                                                                             t1a8t_1_destruct_d[0],
                                                                                             q1a8o_1_destruct_d[0],
                                                                                             wskB_2_destruct_d[0],
                                                                                             sc_0_2_destruct_d[0]} & {t3a8v_1_destruct_r,
                                                                                                                      q3a8q_1_destruct_r,
                                                                                                                      t2a8u_1_destruct_r,
                                                                                                                      q2a8p_1_destruct_r,
                                                                                                                      t1a8t_1_destruct_r,
                                                                                                                      q1a8o_1_destruct_r,
                                                                                                                      wskB_2_destruct_r,
                                                                                                                      sc_0_2_destruct_r}));
  assign lizzieLet23_1Lcall_$wmAdd_Bool3_r = (& lizzieLet23_1Lcall_$wmAdd_Bool3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_1Lcall_$wmAdd_Bool3_emitted <= 8'd0;
    else
      lizzieLet23_1Lcall_$wmAdd_Bool3_emitted <= (lizzieLet23_1Lcall_$wmAdd_Bool3_r ? 8'd0 :
                                                  lizzieLet23_1Lcall_$wmAdd_Bool3_done);
  
  /* demux (Ty CT$wmAdd_Bool,
       Ty CT$wmAdd_Bool) : (lizzieLet23_2,CT$wmAdd_Bool) (lizzieLet23_1,CT$wmAdd_Bool) > [(_47,CT$wmAdd_Bool),
                                                                                          (lizzieLet23_1Lcall_$wmAdd_Bool3,CT$wmAdd_Bool),
                                                                                          (lizzieLet23_1Lcall_$wmAdd_Bool2,CT$wmAdd_Bool),
                                                                                          (lizzieLet23_1Lcall_$wmAdd_Bool1,CT$wmAdd_Bool),
                                                                                          (lizzieLet23_1Lcall_$wmAdd_Bool0,CT$wmAdd_Bool)] */
  logic [4:0] lizzieLet23_1_onehotd;
  always_comb
    if ((lizzieLet23_2_d[0] && lizzieLet23_1_d[0]))
      unique case (lizzieLet23_2_d[3:1])
        3'd0: lizzieLet23_1_onehotd = 5'd1;
        3'd1: lizzieLet23_1_onehotd = 5'd2;
        3'd2: lizzieLet23_1_onehotd = 5'd4;
        3'd3: lizzieLet23_1_onehotd = 5'd8;
        3'd4: lizzieLet23_1_onehotd = 5'd16;
        default: lizzieLet23_1_onehotd = 5'd0;
      endcase
    else lizzieLet23_1_onehotd = 5'd0;
  assign _47_d = {lizzieLet23_1_d[115:1], lizzieLet23_1_onehotd[0]};
  assign lizzieLet23_1Lcall_$wmAdd_Bool3_d = {lizzieLet23_1_d[115:1],
                                              lizzieLet23_1_onehotd[1]};
  assign lizzieLet23_1Lcall_$wmAdd_Bool2_d = {lizzieLet23_1_d[115:1],
                                              lizzieLet23_1_onehotd[2]};
  assign lizzieLet23_1Lcall_$wmAdd_Bool1_d = {lizzieLet23_1_d[115:1],
                                              lizzieLet23_1_onehotd[3]};
  assign lizzieLet23_1Lcall_$wmAdd_Bool0_d = {lizzieLet23_1_d[115:1],
                                              lizzieLet23_1_onehotd[4]};
  assign lizzieLet23_1_r = (| (lizzieLet23_1_onehotd & {lizzieLet23_1Lcall_$wmAdd_Bool0_r,
                                                        lizzieLet23_1Lcall_$wmAdd_Bool1_r,
                                                        lizzieLet23_1Lcall_$wmAdd_Bool2_r,
                                                        lizzieLet23_1Lcall_$wmAdd_Bool3_r,
                                                        _47_r}));
  assign lizzieLet23_2_r = lizzieLet23_1_r;
  
  /* demux (Ty CT$wmAdd_Bool,
       Ty Go) : (lizzieLet23_3,CT$wmAdd_Bool) (go_10_goMux_data,Go) > [(_46,Go),
                                                                       (lizzieLet23_3Lcall_$wmAdd_Bool3,Go),
                                                                       (lizzieLet23_3Lcall_$wmAdd_Bool2,Go),
                                                                       (lizzieLet23_3Lcall_$wmAdd_Bool1,Go),
                                                                       (lizzieLet23_3Lcall_$wmAdd_Bool0,Go)] */
  logic [4:0] go_10_goMux_data_onehotd;
  always_comb
    if ((lizzieLet23_3_d[0] && go_10_goMux_data_d[0]))
      unique case (lizzieLet23_3_d[3:1])
        3'd0: go_10_goMux_data_onehotd = 5'd1;
        3'd1: go_10_goMux_data_onehotd = 5'd2;
        3'd2: go_10_goMux_data_onehotd = 5'd4;
        3'd3: go_10_goMux_data_onehotd = 5'd8;
        3'd4: go_10_goMux_data_onehotd = 5'd16;
        default: go_10_goMux_data_onehotd = 5'd0;
      endcase
    else go_10_goMux_data_onehotd = 5'd0;
  assign _46_d = go_10_goMux_data_onehotd[0];
  assign lizzieLet23_3Lcall_$wmAdd_Bool3_d = go_10_goMux_data_onehotd[1];
  assign lizzieLet23_3Lcall_$wmAdd_Bool2_d = go_10_goMux_data_onehotd[2];
  assign lizzieLet23_3Lcall_$wmAdd_Bool1_d = go_10_goMux_data_onehotd[3];
  assign lizzieLet23_3Lcall_$wmAdd_Bool0_d = go_10_goMux_data_onehotd[4];
  assign go_10_goMux_data_r = (| (go_10_goMux_data_onehotd & {lizzieLet23_3Lcall_$wmAdd_Bool0_r,
                                                              lizzieLet23_3Lcall_$wmAdd_Bool1_r,
                                                              lizzieLet23_3Lcall_$wmAdd_Bool2_r,
                                                              lizzieLet23_3Lcall_$wmAdd_Bool3_r,
                                                              _46_r}));
  assign lizzieLet23_3_r = go_10_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet23_3Lcall_$wmAdd_Bool0,Go) > (lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf,Go) */
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_r;
  assign lizzieLet23_3Lcall_$wmAdd_Bool0_r = ((! lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d[0]) || lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d <= 1'd0;
    else
      if (lizzieLet23_3Lcall_$wmAdd_Bool0_r)
        lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d <= lizzieLet23_3Lcall_$wmAdd_Bool0_d;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf;
  assign lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_r = (! lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf[0]);
  assign lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_d = (lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf[0] ? lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf :
                                                       lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_r && lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf[0]))
        lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_r) && (! lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf[0])))
        lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_buf <= lizzieLet23_3Lcall_$wmAdd_Bool0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet23_3Lcall_$wmAdd_Bool1,Go) > (lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf,Go) */
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_r;
  assign lizzieLet23_3Lcall_$wmAdd_Bool1_r = ((! lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d[0]) || lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d <= 1'd0;
    else
      if (lizzieLet23_3Lcall_$wmAdd_Bool1_r)
        lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d <= lizzieLet23_3Lcall_$wmAdd_Bool1_d;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf;
  assign lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_r = (! lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf[0]);
  assign lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_d = (lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf[0] ? lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf :
                                                       lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_r && lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf[0]))
        lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet23_3Lcall_$wmAdd_Bool1_1_argbuf_r) && (! lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf[0])))
        lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_buf <= lizzieLet23_3Lcall_$wmAdd_Bool1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet23_3Lcall_$wmAdd_Bool2,Go) > (lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf,Go) */
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_r;
  assign lizzieLet23_3Lcall_$wmAdd_Bool2_r = ((! lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d[0]) || lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d <= 1'd0;
    else
      if (lizzieLet23_3Lcall_$wmAdd_Bool2_r)
        lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d <= lizzieLet23_3Lcall_$wmAdd_Bool2_d;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf;
  assign lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_r = (! lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf[0]);
  assign lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_d = (lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf[0] ? lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf :
                                                       lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_r && lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf[0]))
        lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet23_3Lcall_$wmAdd_Bool2_1_argbuf_r) && (! lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf[0])))
        lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_buf <= lizzieLet23_3Lcall_$wmAdd_Bool2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet23_3Lcall_$wmAdd_Bool3,Go) > (lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf,Go) */
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d;
  logic lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_r;
  assign lizzieLet23_3Lcall_$wmAdd_Bool3_r = ((! lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d[0]) || lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d <= 1'd0;
    else
      if (lizzieLet23_3Lcall_$wmAdd_Bool3_r)
        lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d <= lizzieLet23_3Lcall_$wmAdd_Bool3_d;
  Go_t lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf;
  assign lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_r = (! lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf[0]);
  assign lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_d = (lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf[0] ? lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf :
                                                       lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_r && lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf[0]))
        lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet23_3Lcall_$wmAdd_Bool3_1_argbuf_r) && (! lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf[0])))
        lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_buf <= lizzieLet23_3Lcall_$wmAdd_Bool3_bufchan_d;
  
  /* demux (Ty CT$wmAdd_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet23_4,CT$wmAdd_Bool) (srtarg_0_goMux_mux,Pointer_QTree_Bool) > [(lizzieLet23_4L$wmAdd_Boolsbos,Pointer_QTree_Bool),
                                                                                                         (lizzieLet23_4Lcall_$wmAdd_Bool3,Pointer_QTree_Bool),
                                                                                                         (lizzieLet23_4Lcall_$wmAdd_Bool2,Pointer_QTree_Bool),
                                                                                                         (lizzieLet23_4Lcall_$wmAdd_Bool1,Pointer_QTree_Bool),
                                                                                                         (lizzieLet23_4Lcall_$wmAdd_Bool0,Pointer_QTree_Bool)] */
  logic [4:0] srtarg_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet23_4_d[0] && srtarg_0_goMux_mux_d[0]))
      unique case (lizzieLet23_4_d[3:1])
        3'd0: srtarg_0_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_goMux_mux_onehotd = 5'd0;
  assign lizzieLet23_4L$wmAdd_Boolsbos_d = {srtarg_0_goMux_mux_d[16:1],
                                            srtarg_0_goMux_mux_onehotd[0]};
  assign lizzieLet23_4Lcall_$wmAdd_Bool3_d = {srtarg_0_goMux_mux_d[16:1],
                                              srtarg_0_goMux_mux_onehotd[1]};
  assign lizzieLet23_4Lcall_$wmAdd_Bool2_d = {srtarg_0_goMux_mux_d[16:1],
                                              srtarg_0_goMux_mux_onehotd[2]};
  assign lizzieLet23_4Lcall_$wmAdd_Bool1_d = {srtarg_0_goMux_mux_d[16:1],
                                              srtarg_0_goMux_mux_onehotd[3]};
  assign lizzieLet23_4Lcall_$wmAdd_Bool0_d = {srtarg_0_goMux_mux_d[16:1],
                                              srtarg_0_goMux_mux_onehotd[4]};
  assign srtarg_0_goMux_mux_r = (| (srtarg_0_goMux_mux_onehotd & {lizzieLet23_4Lcall_$wmAdd_Bool0_r,
                                                                  lizzieLet23_4Lcall_$wmAdd_Bool1_r,
                                                                  lizzieLet23_4Lcall_$wmAdd_Bool2_r,
                                                                  lizzieLet23_4Lcall_$wmAdd_Bool3_r,
                                                                  lizzieLet23_4L$wmAdd_Boolsbos_r}));
  assign lizzieLet23_4_r = srtarg_0_goMux_mux_r;
  
  /* fork (Ty Pointer_QTree_Bool) : (lizzieLet23_4L$wmAdd_Boolsbos,Pointer_QTree_Bool) > [(lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Bool),
                                                                                     (lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Bool)] */
  logic [1:0] lizzieLet23_4L$wmAdd_Boolsbos_emitted;
  logic [1:0] lizzieLet23_4L$wmAdd_Boolsbos_done;
  assign lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_d = {lizzieLet23_4L$wmAdd_Boolsbos_d[16:1],
                                                                 (lizzieLet23_4L$wmAdd_Boolsbos_d[0] && (! lizzieLet23_4L$wmAdd_Boolsbos_emitted[0]))};
  assign lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_d = {lizzieLet23_4L$wmAdd_Boolsbos_d[16:1],
                                                                 (lizzieLet23_4L$wmAdd_Boolsbos_d[0] && (! lizzieLet23_4L$wmAdd_Boolsbos_emitted[1]))};
  assign lizzieLet23_4L$wmAdd_Boolsbos_done = (lizzieLet23_4L$wmAdd_Boolsbos_emitted | ({lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_d[0],
                                                                                         lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_d[0]} & {lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_r,
                                                                                                                                                     lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_r}));
  assign lizzieLet23_4L$wmAdd_Boolsbos_r = (& lizzieLet23_4L$wmAdd_Boolsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet23_4L$wmAdd_Boolsbos_emitted <= 2'd0;
    else
      lizzieLet23_4L$wmAdd_Boolsbos_emitted <= (lizzieLet23_4L$wmAdd_Boolsbos_r ? 2'd0 :
                                                lizzieLet23_4L$wmAdd_Boolsbos_done);
  
  /* togo (Ty Pointer_QTree_Bool) : (lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Bool) > (call_$wmAdd_Bool_goConst,Go) */
  assign call_$wmAdd_Bool_goConst_d = lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_d[0];
  assign lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_1_r = call_$wmAdd_Bool_goConst_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Bool) > ($wmAdd_Bool_resbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d;
  logic lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_r;
  assign lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_r = ((! lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d[0]) || lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d <= {16'd0,
                                                                       1'd0};
    else
      if (lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_r)
        lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d <= lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_d;
  Pointer_QTree_Bool_t lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf;
  assign lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_r = (! lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf[0]);
  assign \$wmAdd_Bool_resbuf_d  = (lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf[0] ? lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf :
                                   lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                                         1'd0};
    else
      if ((\$wmAdd_Bool_resbuf_r  && lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf[0]))
        lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                                           1'd0};
      else if (((! \$wmAdd_Bool_resbuf_r ) && (! lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf[0])))
        lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_buf <= lizzieLet23_4L$wmAdd_Boolsbos_1_merge_merge_fork_2_bufchan_d;
  
  /* dcon (Ty QTree_Bool,
      Dcon QNode_Bool) : [(lizzieLet23_4Lcall_$wmAdd_Bool0,Pointer_QTree_Bool),
                          (es_2_1_destruct,Pointer_QTree_Bool),
                          (es_3_2_destruct,Pointer_QTree_Bool),
                          (es_4_2_destruct,Pointer_QTree_Bool)] > (lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool,QTree_Bool) */
  assign lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_d = QNode_Bool_dc((& {lizzieLet23_4Lcall_$wmAdd_Bool0_d[0],
                                                                                                   es_2_1_destruct_d[0],
                                                                                                   es_3_2_destruct_d[0],
                                                                                                   es_4_2_destruct_d[0]}), lizzieLet23_4Lcall_$wmAdd_Bool0_d, es_2_1_destruct_d, es_3_2_destruct_d, es_4_2_destruct_d);
  assign {lizzieLet23_4Lcall_$wmAdd_Bool0_r,
          es_2_1_destruct_r,
          es_3_2_destruct_r,
          es_4_2_destruct_r} = {4 {(lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_r && lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool,QTree_Bool) > (lizzieLet27_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_r;
  assign lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_r = ((! lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d[0]) || lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d <= {66'd0,
                                                                                        1'd0};
    else
      if (lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_r)
        lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d <= lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_d;
  QTree_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf;
  assign lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_r = (! lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf[0]);
  assign lizzieLet27_1_argbuf_d = (lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf[0] ? lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf :
                                   lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf <= {66'd0,
                                                                                          1'd0};
    else
      if ((lizzieLet27_1_argbuf_r && lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf[0]))
        lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf <= {66'd0,
                                                                                            1'd0};
      else if (((! lizzieLet27_1_argbuf_r) && (! lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf[0])))
        lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_buf <= lizzieLet23_4Lcall_$wmAdd_Bool0_1es_2_1_1es_3_2_1es_4_2_1QNode_Bool_bufchan_d;
  
  /* dcon (Ty CT$wmAdd_Bool,
      Dcon Lcall_$wmAdd_Bool0) : [(lizzieLet23_4Lcall_$wmAdd_Bool1,Pointer_QTree_Bool),
                                  (es_3_1_destruct,Pointer_QTree_Bool),
                                  (es_4_1_destruct,Pointer_QTree_Bool),
                                  (sc_0_4_destruct,Pointer_CT$wmAdd_Bool)] > (lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0,CT$wmAdd_Bool) */
  assign lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_d = Lcall_$wmAdd_Bool0_dc((& {lizzieLet23_4Lcall_$wmAdd_Bool1_d[0],
                                                                                                                   es_3_1_destruct_d[0],
                                                                                                                   es_4_1_destruct_d[0],
                                                                                                                   sc_0_4_destruct_d[0]}), lizzieLet23_4Lcall_$wmAdd_Bool1_d, es_3_1_destruct_d, es_4_1_destruct_d, sc_0_4_destruct_d);
  assign {lizzieLet23_4Lcall_$wmAdd_Bool1_r,
          es_3_1_destruct_r,
          es_4_1_destruct_r,
          sc_0_4_destruct_r} = {4 {(lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_r && lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_d[0])}};
  
  /* buf (Ty CT$wmAdd_Bool) : (lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0,CT$wmAdd_Bool) > (lizzieLet26_1_argbuf,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_r;
  assign lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_r = ((! lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d[0]) || lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d <= {115'd0,
                                                                                                1'd0};
    else
      if (lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_r)
        lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d <= lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_d;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf;
  assign lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_r = (! lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf[0]);
  assign lizzieLet26_1_argbuf_d = (lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf[0] ? lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf :
                                   lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf <= {115'd0,
                                                                                                  1'd0};
    else
      if ((lizzieLet26_1_argbuf_r && lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf[0]))
        lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf <= {115'd0,
                                                                                                    1'd0};
      else if (((! lizzieLet26_1_argbuf_r) && (! lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf[0])))
        lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_buf <= lizzieLet23_4Lcall_$wmAdd_Bool1_1es_3_1_1es_4_1_1sc_0_4_1Lcall_$wmAdd_Bool0_bufchan_d;
  
  /* dcon (Ty CT$wmAdd_Bool,
      Dcon Lcall_$wmAdd_Bool1) : [(lizzieLet23_4Lcall_$wmAdd_Bool2,Pointer_QTree_Bool),
                                  (es_4_destruct,Pointer_QTree_Bool),
                                  (sc_0_3_destruct,Pointer_CT$wmAdd_Bool),
                                  (wskB_3_1,MyDTBool_Bool_Bool),
                                  (q1a8o_2_destruct,Pointer_QTree_Bool),
                                  (t1a8t_2_destruct,Pointer_QTree_Bool)] > (lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1,CT$wmAdd_Bool) */
  assign lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_d = Lcall_$wmAdd_Bool1_dc((& {lizzieLet23_4Lcall_$wmAdd_Bool2_d[0],
                                                                                                                                   es_4_destruct_d[0],
                                                                                                                                   sc_0_3_destruct_d[0],
                                                                                                                                   wskB_3_1_d[0],
                                                                                                                                   q1a8o_2_destruct_d[0],
                                                                                                                                   t1a8t_2_destruct_d[0]}), lizzieLet23_4Lcall_$wmAdd_Bool2_d, es_4_destruct_d, sc_0_3_destruct_d, wskB_3_1_d, q1a8o_2_destruct_d, t1a8t_2_destruct_d);
  assign {lizzieLet23_4Lcall_$wmAdd_Bool2_r,
          es_4_destruct_r,
          sc_0_3_destruct_r,
          wskB_3_1_r,
          q1a8o_2_destruct_r,
          t1a8t_2_destruct_r} = {6 {(lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_r && lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_d[0])}};
  
  /* buf (Ty CT$wmAdd_Bool) : (lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1,CT$wmAdd_Bool) > (lizzieLet25_1_argbuf,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_r;
  assign lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_r = ((! lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d[0]) || lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d <= {115'd0,
                                                                                                                1'd0};
    else
      if (lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_r)
        lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d <= lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_d;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf;
  assign lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_r = (! lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf[0]);
  assign lizzieLet25_1_argbuf_d = (lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf[0] ? lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf :
                                   lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf <= {115'd0,
                                                                                                                  1'd0};
    else
      if ((lizzieLet25_1_argbuf_r && lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf[0]))
        lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf <= {115'd0,
                                                                                                                    1'd0};
      else if (((! lizzieLet25_1_argbuf_r) && (! lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf[0])))
        lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_buf <= lizzieLet23_4Lcall_$wmAdd_Bool2_1es_4_1sc_0_3_1wskB_3_1q1a8o_2_1t1a8t_2_1Lcall_$wmAdd_Bool1_bufchan_d;
  
  /* dcon (Ty CT$wmAdd_Bool,
      Dcon Lcall_$wmAdd_Bool2) : [(lizzieLet23_4Lcall_$wmAdd_Bool3,Pointer_QTree_Bool),
                                  (sc_0_2_destruct,Pointer_CT$wmAdd_Bool),
                                  (wskB_2_1,MyDTBool_Bool_Bool),
                                  (q1a8o_1_destruct,Pointer_QTree_Bool),
                                  (t1a8t_1_destruct,Pointer_QTree_Bool),
                                  (q2a8p_1_destruct,Pointer_QTree_Bool),
                                  (t2a8u_1_destruct,Pointer_QTree_Bool)] > (lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2,CT$wmAdd_Bool) */
  assign lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_d = Lcall_$wmAdd_Bool2_dc((& {lizzieLet23_4Lcall_$wmAdd_Bool3_d[0],
                                                                                                                                               sc_0_2_destruct_d[0],
                                                                                                                                               wskB_2_1_d[0],
                                                                                                                                               q1a8o_1_destruct_d[0],
                                                                                                                                               t1a8t_1_destruct_d[0],
                                                                                                                                               q2a8p_1_destruct_d[0],
                                                                                                                                               t2a8u_1_destruct_d[0]}), lizzieLet23_4Lcall_$wmAdd_Bool3_d, sc_0_2_destruct_d, wskB_2_1_d, q1a8o_1_destruct_d, t1a8t_1_destruct_d, q2a8p_1_destruct_d, t2a8u_1_destruct_d);
  assign {lizzieLet23_4Lcall_$wmAdd_Bool3_r,
          sc_0_2_destruct_r,
          wskB_2_1_r,
          q1a8o_1_destruct_r,
          t1a8t_1_destruct_r,
          q2a8p_1_destruct_r,
          t2a8u_1_destruct_r} = {7 {(lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_r && lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_d[0])}};
  
  /* buf (Ty CT$wmAdd_Bool) : (lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2,CT$wmAdd_Bool) > (lizzieLet24_1_argbuf,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d;
  logic lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_r;
  assign lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_r = ((! lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d[0]) || lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d <= {115'd0,
                                                                                                                            1'd0};
    else
      if (lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_r)
        lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d <= lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_d;
  CT$wmAdd_Bool_t lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf;
  assign lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_r = (! lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf[0]);
  assign lizzieLet24_1_argbuf_d = (lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf[0] ? lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf :
                                   lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf <= {115'd0,
                                                                                                                              1'd0};
    else
      if ((lizzieLet24_1_argbuf_r && lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf[0]))
        lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf <= {115'd0,
                                                                                                                                1'd0};
      else if (((! lizzieLet24_1_argbuf_r) && (! lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf[0])))
        lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_buf <= lizzieLet23_4Lcall_$wmAdd_Bool3_1sc_0_2_1wskB_2_1q1a8o_1_1t1a8t_1_1q2a8p_1_1t2a8u_1_1Lcall_$wmAdd_Bool2_bufchan_d;
  
  /* destruct (Ty CTmain_map'_Bool_Nat,
          Dcon Lcall_main_map'_Bool_Nat0) : (lizzieLet28_1Lcall_main_map'_Bool_Nat0,CTmain_map'_Bool_Nat) > [(es_2_2_destruct,Pointer_QTree_Nat),
                                                                                                             (es_3_4_destruct,Pointer_QTree_Nat),
                                                                                                             (es_4_5_destruct,Pointer_QTree_Nat),
                                                                                                             (sc_0_9_destruct,Pointer_CTmain_map'_Bool_Nat)] */
  logic [3:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted ;
  logic [3:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat0_done ;
  assign es_2_2_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [19:4],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted [0]))};
  assign es_3_4_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [35:20],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted [1]))};
  assign es_4_5_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [51:36],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted [2]))};
  assign sc_0_9_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [67:52],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted [3]))};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat0_done  = (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted  | ({sc_0_9_destruct_d[0],
                                                                                                               es_4_5_destruct_d[0],
                                                                                                               es_3_4_destruct_d[0],
                                                                                                               es_2_2_destruct_d[0]} & {sc_0_9_destruct_r,
                                                                                                                                        es_4_5_destruct_r,
                                                                                                                                        es_3_4_destruct_r,
                                                                                                                                        es_2_2_destruct_r}));
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat0_r  = (& \lizzieLet28_1Lcall_main_map'_Bool_Nat0_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted  <= 4'd0;
    else
      \lizzieLet28_1Lcall_main_map'_Bool_Nat0_emitted  <= (\lizzieLet28_1Lcall_main_map'_Bool_Nat0_r  ? 4'd0 :
                                                           \lizzieLet28_1Lcall_main_map'_Bool_Nat0_done );
  
  /* destruct (Ty CTmain_map'_Bool_Nat,
          Dcon Lcall_main_map'_Bool_Nat1) : (lizzieLet28_1Lcall_main_map'_Bool_Nat1,CTmain_map'_Bool_Nat) > [(es_3_3_destruct,Pointer_QTree_Nat),
                                                                                                             (es_4_4_destruct,Pointer_QTree_Nat),
                                                                                                             (sc_0_8_destruct,Pointer_CTmain_map'_Bool_Nat),
                                                                                                             (isZa8P_4_destruct,MyDTNat_Bool),
                                                                                                             (ga8Q_4_destruct,MyDTBool_Nat),
                                                                                                             (q1a8T_3_destruct,Pointer_QTree_Bool)] */
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted ;
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat1_done ;
  assign es_3_3_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [19:4],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [0]))};
  assign es_4_4_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [35:20],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [1]))};
  assign sc_0_8_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [51:36],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [2]))};
  assign isZa8P_4_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [3]));
  assign ga8Q_4_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [4]));
  assign q1a8T_3_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [67:52],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted [5]))};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat1_done  = (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted  | ({q1a8T_3_destruct_d[0],
                                                                                                               ga8Q_4_destruct_d[0],
                                                                                                               isZa8P_4_destruct_d[0],
                                                                                                               sc_0_8_destruct_d[0],
                                                                                                               es_4_4_destruct_d[0],
                                                                                                               es_3_3_destruct_d[0]} & {q1a8T_3_destruct_r,
                                                                                                                                        ga8Q_4_destruct_r,
                                                                                                                                        isZa8P_4_destruct_r,
                                                                                                                                        sc_0_8_destruct_r,
                                                                                                                                        es_4_4_destruct_r,
                                                                                                                                        es_3_3_destruct_r}));
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat1_r  = (& \lizzieLet28_1Lcall_main_map'_Bool_Nat1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted  <= 6'd0;
    else
      \lizzieLet28_1Lcall_main_map'_Bool_Nat1_emitted  <= (\lizzieLet28_1Lcall_main_map'_Bool_Nat1_r  ? 6'd0 :
                                                           \lizzieLet28_1Lcall_main_map'_Bool_Nat1_done );
  
  /* destruct (Ty CTmain_map'_Bool_Nat,
          Dcon Lcall_main_map'_Bool_Nat2) : (lizzieLet28_1Lcall_main_map'_Bool_Nat2,CTmain_map'_Bool_Nat) > [(es_4_3_destruct,Pointer_QTree_Nat),
                                                                                                             (sc_0_7_destruct,Pointer_CTmain_map'_Bool_Nat),
                                                                                                             (isZa8P_3_destruct,MyDTNat_Bool),
                                                                                                             (ga8Q_3_destruct,MyDTBool_Nat),
                                                                                                             (q1a8T_2_destruct,Pointer_QTree_Bool),
                                                                                                             (q2a8U_2_destruct,Pointer_QTree_Bool)] */
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted ;
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat2_done ;
  assign es_4_3_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [19:4],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [0]))};
  assign sc_0_7_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [35:20],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [1]))};
  assign isZa8P_3_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [2]));
  assign ga8Q_3_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [3]));
  assign q1a8T_2_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [51:36],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [4]))};
  assign q2a8U_2_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [67:52],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted [5]))};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat2_done  = (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted  | ({q2a8U_2_destruct_d[0],
                                                                                                               q1a8T_2_destruct_d[0],
                                                                                                               ga8Q_3_destruct_d[0],
                                                                                                               isZa8P_3_destruct_d[0],
                                                                                                               sc_0_7_destruct_d[0],
                                                                                                               es_4_3_destruct_d[0]} & {q2a8U_2_destruct_r,
                                                                                                                                        q1a8T_2_destruct_r,
                                                                                                                                        ga8Q_3_destruct_r,
                                                                                                                                        isZa8P_3_destruct_r,
                                                                                                                                        sc_0_7_destruct_r,
                                                                                                                                        es_4_3_destruct_r}));
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat2_r  = (& \lizzieLet28_1Lcall_main_map'_Bool_Nat2_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted  <= 6'd0;
    else
      \lizzieLet28_1Lcall_main_map'_Bool_Nat2_emitted  <= (\lizzieLet28_1Lcall_main_map'_Bool_Nat2_r  ? 6'd0 :
                                                           \lizzieLet28_1Lcall_main_map'_Bool_Nat2_done );
  
  /* destruct (Ty CTmain_map'_Bool_Nat,
          Dcon Lcall_main_map'_Bool_Nat3) : (lizzieLet28_1Lcall_main_map'_Bool_Nat3,CTmain_map'_Bool_Nat) > [(sc_0_6_destruct,Pointer_CTmain_map'_Bool_Nat),
                                                                                                             (isZa8P_2_destruct,MyDTNat_Bool),
                                                                                                             (ga8Q_2_destruct,MyDTBool_Nat),
                                                                                                             (q1a8T_1_destruct,Pointer_QTree_Bool),
                                                                                                             (q2a8U_1_destruct,Pointer_QTree_Bool),
                                                                                                             (q3a8V_1_destruct,Pointer_QTree_Bool)] */
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted ;
  logic [5:0] \lizzieLet28_1Lcall_main_map'_Bool_Nat3_done ;
  assign sc_0_6_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [19:4],
                              (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [0]))};
  assign isZa8P_2_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [1]));
  assign ga8Q_2_destruct_d = (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [2]));
  assign q1a8T_1_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [35:20],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [3]))};
  assign q2a8U_1_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [51:36],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [4]))};
  assign q3a8V_1_destruct_d = {\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [67:52],
                               (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_d [0] && (! \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted [5]))};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat3_done  = (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted  | ({q3a8V_1_destruct_d[0],
                                                                                                               q2a8U_1_destruct_d[0],
                                                                                                               q1a8T_1_destruct_d[0],
                                                                                                               ga8Q_2_destruct_d[0],
                                                                                                               isZa8P_2_destruct_d[0],
                                                                                                               sc_0_6_destruct_d[0]} & {q3a8V_1_destruct_r,
                                                                                                                                        q2a8U_1_destruct_r,
                                                                                                                                        q1a8T_1_destruct_r,
                                                                                                                                        ga8Q_2_destruct_r,
                                                                                                                                        isZa8P_2_destruct_r,
                                                                                                                                        sc_0_6_destruct_r}));
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat3_r  = (& \lizzieLet28_1Lcall_main_map'_Bool_Nat3_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted  <= 6'd0;
    else
      \lizzieLet28_1Lcall_main_map'_Bool_Nat3_emitted  <= (\lizzieLet28_1Lcall_main_map'_Bool_Nat3_r  ? 6'd0 :
                                                           \lizzieLet28_1Lcall_main_map'_Bool_Nat3_done );
  
  /* demux (Ty CTmain_map'_Bool_Nat,
       Ty CTmain_map'_Bool_Nat) : (lizzieLet28_2,CTmain_map'_Bool_Nat) (lizzieLet28_1,CTmain_map'_Bool_Nat) > [(_45,CTmain_map'_Bool_Nat),
                                                                                                               (lizzieLet28_1Lcall_main_map'_Bool_Nat3,CTmain_map'_Bool_Nat),
                                                                                                               (lizzieLet28_1Lcall_main_map'_Bool_Nat2,CTmain_map'_Bool_Nat),
                                                                                                               (lizzieLet28_1Lcall_main_map'_Bool_Nat1,CTmain_map'_Bool_Nat),
                                                                                                               (lizzieLet28_1Lcall_main_map'_Bool_Nat0,CTmain_map'_Bool_Nat)] */
  logic [4:0] lizzieLet28_1_onehotd;
  always_comb
    if ((lizzieLet28_2_d[0] && lizzieLet28_1_d[0]))
      unique case (lizzieLet28_2_d[3:1])
        3'd0: lizzieLet28_1_onehotd = 5'd1;
        3'd1: lizzieLet28_1_onehotd = 5'd2;
        3'd2: lizzieLet28_1_onehotd = 5'd4;
        3'd3: lizzieLet28_1_onehotd = 5'd8;
        3'd4: lizzieLet28_1_onehotd = 5'd16;
        default: lizzieLet28_1_onehotd = 5'd0;
      endcase
    else lizzieLet28_1_onehotd = 5'd0;
  assign _45_d = {lizzieLet28_1_d[67:1], lizzieLet28_1_onehotd[0]};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat3_d  = {lizzieLet28_1_d[67:1],
                                                       lizzieLet28_1_onehotd[1]};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat2_d  = {lizzieLet28_1_d[67:1],
                                                       lizzieLet28_1_onehotd[2]};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat1_d  = {lizzieLet28_1_d[67:1],
                                                       lizzieLet28_1_onehotd[3]};
  assign \lizzieLet28_1Lcall_main_map'_Bool_Nat0_d  = {lizzieLet28_1_d[67:1],
                                                       lizzieLet28_1_onehotd[4]};
  assign lizzieLet28_1_r = (| (lizzieLet28_1_onehotd & {\lizzieLet28_1Lcall_main_map'_Bool_Nat0_r ,
                                                        \lizzieLet28_1Lcall_main_map'_Bool_Nat1_r ,
                                                        \lizzieLet28_1Lcall_main_map'_Bool_Nat2_r ,
                                                        \lizzieLet28_1Lcall_main_map'_Bool_Nat3_r ,
                                                        _45_r}));
  assign lizzieLet28_2_r = lizzieLet28_1_r;
  
  /* demux (Ty CTmain_map'_Bool_Nat,
       Ty Go) : (lizzieLet28_3,CTmain_map'_Bool_Nat) (go_11_goMux_data,Go) > [(_44,Go),
                                                                              (lizzieLet28_3Lcall_main_map'_Bool_Nat3,Go),
                                                                              (lizzieLet28_3Lcall_main_map'_Bool_Nat2,Go),
                                                                              (lizzieLet28_3Lcall_main_map'_Bool_Nat1,Go),
                                                                              (lizzieLet28_3Lcall_main_map'_Bool_Nat0,Go)] */
  logic [4:0] go_11_goMux_data_onehotd;
  always_comb
    if ((lizzieLet28_3_d[0] && go_11_goMux_data_d[0]))
      unique case (lizzieLet28_3_d[3:1])
        3'd0: go_11_goMux_data_onehotd = 5'd1;
        3'd1: go_11_goMux_data_onehotd = 5'd2;
        3'd2: go_11_goMux_data_onehotd = 5'd4;
        3'd3: go_11_goMux_data_onehotd = 5'd8;
        3'd4: go_11_goMux_data_onehotd = 5'd16;
        default: go_11_goMux_data_onehotd = 5'd0;
      endcase
    else go_11_goMux_data_onehotd = 5'd0;
  assign _44_d = go_11_goMux_data_onehotd[0];
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat3_d  = go_11_goMux_data_onehotd[1];
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat2_d  = go_11_goMux_data_onehotd[2];
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat1_d  = go_11_goMux_data_onehotd[3];
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat0_d  = go_11_goMux_data_onehotd[4];
  assign go_11_goMux_data_r = (| (go_11_goMux_data_onehotd & {\lizzieLet28_3Lcall_main_map'_Bool_Nat0_r ,
                                                              \lizzieLet28_3Lcall_main_map'_Bool_Nat1_r ,
                                                              \lizzieLet28_3Lcall_main_map'_Bool_Nat2_r ,
                                                              \lizzieLet28_3Lcall_main_map'_Bool_Nat3_r ,
                                                              _44_r}));
  assign lizzieLet28_3_r = go_11_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet28_3Lcall_main_map'_Bool_Nat0,Go) > (lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf,Go) */
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_r ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat0_r  = ((! \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d [0]) || \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet28_3Lcall_main_map'_Bool_Nat0_r )
        \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat0_d ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_r  = (! \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf [0]);
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_d  = (\lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf [0] ? \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf  :
                                                                \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_r  && \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf [0]))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet28_3Lcall_main_map'_Bool_Nat0_1_argbuf_r ) && (! \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf [0])))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_buf  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat0_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet28_3Lcall_main_map'_Bool_Nat1,Go) > (lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf,Go) */
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_r ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat1_r  = ((! \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d [0]) || \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet28_3Lcall_main_map'_Bool_Nat1_r )
        \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat1_d ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_r  = (! \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf [0]);
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_d  = (\lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf [0] ? \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf  :
                                                                \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_r  && \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf [0]))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet28_3Lcall_main_map'_Bool_Nat1_1_argbuf_r ) && (! \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf [0])))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_buf  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat1_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet28_3Lcall_main_map'_Bool_Nat2,Go) > (lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf,Go) */
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_r ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat2_r  = ((! \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d [0]) || \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet28_3Lcall_main_map'_Bool_Nat2_r )
        \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat2_d ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_r  = (! \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf [0]);
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_d  = (\lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf [0] ? \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf  :
                                                                \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_r  && \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf [0]))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet28_3Lcall_main_map'_Bool_Nat2_1_argbuf_r ) && (! \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf [0])))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_buf  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat2_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet28_3Lcall_main_map'_Bool_Nat3,Go) > (lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf,Go) */
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d ;
  logic \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_r ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat3_r  = ((! \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d [0]) || \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet28_3Lcall_main_map'_Bool_Nat3_r )
        \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat3_d ;
  Go_t \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf ;
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_r  = (! \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf [0]);
  assign \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_d  = (\lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf [0] ? \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf  :
                                                                \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_r  && \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf [0]))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet28_3Lcall_main_map'_Bool_Nat3_1_argbuf_r ) && (! \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf [0])))
        \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_buf  <= \lizzieLet28_3Lcall_main_map'_Bool_Nat3_bufchan_d ;
  
  /* demux (Ty CTmain_map'_Bool_Nat,
       Ty Pointer_QTree_Nat) : (lizzieLet28_4,CTmain_map'_Bool_Nat) (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) > [(lizzieLet28_4Lmain_map'_Bool_Natsbos,Pointer_QTree_Nat),
                                                                                                                (lizzieLet28_4Lcall_main_map'_Bool_Nat3,Pointer_QTree_Nat),
                                                                                                                (lizzieLet28_4Lcall_main_map'_Bool_Nat2,Pointer_QTree_Nat),
                                                                                                                (lizzieLet28_4Lcall_main_map'_Bool_Nat1,Pointer_QTree_Nat),
                                                                                                                (lizzieLet28_4Lcall_main_map'_Bool_Nat0,Pointer_QTree_Nat)] */
  logic [4:0] srtarg_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet28_4_d[0] && srtarg_0_1_goMux_mux_d[0]))
      unique case (lizzieLet28_4_d[3:1])
        3'd0: srtarg_0_1_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_1_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_1_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_1_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_1_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_1_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_1_goMux_mux_onehotd = 5'd0;
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                     srtarg_0_1_goMux_mux_onehotd[0]};
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat3_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                       srtarg_0_1_goMux_mux_onehotd[1]};
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat2_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                       srtarg_0_1_goMux_mux_onehotd[2]};
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat1_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                       srtarg_0_1_goMux_mux_onehotd[3]};
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat0_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                       srtarg_0_1_goMux_mux_onehotd[4]};
  assign srtarg_0_1_goMux_mux_r = (| (srtarg_0_1_goMux_mux_onehotd & {\lizzieLet28_4Lcall_main_map'_Bool_Nat0_r ,
                                                                      \lizzieLet28_4Lcall_main_map'_Bool_Nat1_r ,
                                                                      \lizzieLet28_4Lcall_main_map'_Bool_Nat2_r ,
                                                                      \lizzieLet28_4Lcall_main_map'_Bool_Nat3_r ,
                                                                      \lizzieLet28_4Lmain_map'_Bool_Natsbos_r }));
  assign lizzieLet28_4_r = srtarg_0_1_goMux_mux_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(lizzieLet28_4Lcall_main_map'_Bool_Nat0,Pointer_QTree_Nat),
                         (es_2_2_destruct,Pointer_QTree_Nat),
                         (es_3_4_destruct,Pointer_QTree_Nat),
                         (es_4_5_destruct,Pointer_QTree_Nat)] > (lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat,QTree_Nat) */
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_d  = QNode_Nat_dc((& {\lizzieLet28_4Lcall_main_map'_Bool_Nat0_d [0],
                                                                                                          es_2_2_destruct_d[0],
                                                                                                          es_3_4_destruct_d[0],
                                                                                                          es_4_5_destruct_d[0]}), \lizzieLet28_4Lcall_main_map'_Bool_Nat0_d , es_2_2_destruct_d, es_3_4_destruct_d, es_4_5_destruct_d);
  assign {\lizzieLet28_4Lcall_main_map'_Bool_Nat0_r ,
          es_2_2_destruct_r,
          es_3_4_destruct_r,
          es_4_5_destruct_r} = {4 {(\lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_r  && \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_d [0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat,QTree_Nat) > (lizzieLet32_1_argbuf,QTree_Nat) */
  QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_r ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_r  = ((! \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d [0]) || \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d  <= {66'd0,
                                                                                                1'd0};
    else
      if (\lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_r )
        \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_d ;
  QTree_Nat_t \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_r  = (! \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf [0]);
  assign lizzieLet32_1_argbuf_d = (\lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf [0] ? \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf  :
                                   \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                                  1'd0};
    else
      if ((lizzieLet32_1_argbuf_r && \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf [0]))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                                    1'd0};
      else if (((! lizzieLet32_1_argbuf_r) && (! \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf [0])))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_buf  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat0_1es_2_2_1es_3_4_1es_4_5_1QNode_Nat_bufchan_d ;
  
  /* dcon (Ty CTmain_map'_Bool_Nat,
      Dcon Lcall_main_map'_Bool_Nat0) : [(lizzieLet28_4Lcall_main_map'_Bool_Nat1,Pointer_QTree_Nat),
                                         (es_3_3_destruct,Pointer_QTree_Nat),
                                         (es_4_4_destruct,Pointer_QTree_Nat),
                                         (sc_0_8_destruct,Pointer_CTmain_map'_Bool_Nat)] > (lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0,CTmain_map'_Bool_Nat) */
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_d  = \Lcall_main_map'_Bool_Nat0_dc ((& {\lizzieLet28_4Lcall_main_map'_Bool_Nat1_d [0],
                                                                                                                                            es_3_3_destruct_d[0],
                                                                                                                                            es_4_4_destruct_d[0],
                                                                                                                                            sc_0_8_destruct_d[0]}), \lizzieLet28_4Lcall_main_map'_Bool_Nat1_d , es_3_3_destruct_d, es_4_4_destruct_d, sc_0_8_destruct_d);
  assign {\lizzieLet28_4Lcall_main_map'_Bool_Nat1_r ,
          es_3_3_destruct_r,
          es_4_4_destruct_r,
          sc_0_8_destruct_r} = {4 {(\lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_r  && \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_d [0])}};
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0,CTmain_map'_Bool_Nat) > (lizzieLet31_1_argbuf,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_r ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_r  = ((! \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d [0]) || \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d  <= {67'd0,
                                                                                                                1'd0};
    else
      if (\lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_r )
        \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_d ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_r  = (! \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf [0]);
  assign lizzieLet31_1_argbuf_d = (\lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf [0] ? \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf  :
                                   \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf  <= {67'd0,
                                                                                                                  1'd0};
    else
      if ((lizzieLet31_1_argbuf_r && \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf [0]))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf  <= {67'd0,
                                                                                                                    1'd0};
      else if (((! lizzieLet31_1_argbuf_r) && (! \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf [0])))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_buf  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat1_1es_3_3_1es_4_4_1sc_0_8_1Lcall_main_map'_Bool_Nat0_bufchan_d ;
  
  /* dcon (Ty CTmain_map'_Bool_Nat,
      Dcon Lcall_main_map'_Bool_Nat1) : [(lizzieLet28_4Lcall_main_map'_Bool_Nat2,Pointer_QTree_Nat),
                                         (es_4_3_destruct,Pointer_QTree_Nat),
                                         (sc_0_7_destruct,Pointer_CTmain_map'_Bool_Nat),
                                         (isZa8P_3_1,MyDTNat_Bool),
                                         (ga8Q_3_1,MyDTBool_Nat),
                                         (q1a8T_2_destruct,Pointer_QTree_Bool)] > (lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1,CTmain_map'_Bool_Nat) */
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_d  = \Lcall_main_map'_Bool_Nat1_dc ((& {\lizzieLet28_4Lcall_main_map'_Bool_Nat2_d [0],
                                                                                                                                                               es_4_3_destruct_d[0],
                                                                                                                                                               sc_0_7_destruct_d[0],
                                                                                                                                                               isZa8P_3_1_d[0],
                                                                                                                                                               ga8Q_3_1_d[0],
                                                                                                                                                               q1a8T_2_destruct_d[0]}), \lizzieLet28_4Lcall_main_map'_Bool_Nat2_d , es_4_3_destruct_d, sc_0_7_destruct_d, isZa8P_3_1_d, ga8Q_3_1_d, q1a8T_2_destruct_d);
  assign {\lizzieLet28_4Lcall_main_map'_Bool_Nat2_r ,
          es_4_3_destruct_r,
          sc_0_7_destruct_r,
          isZa8P_3_1_r,
          ga8Q_3_1_r,
          q1a8T_2_destruct_r} = {6 {(\lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_r  && \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_d [0])}};
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1,CTmain_map'_Bool_Nat) > (lizzieLet30_1_argbuf,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_r ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_r  = ((! \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d [0]) || \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d  <= {67'd0,
                                                                                                                                   1'd0};
    else
      if (\lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_r )
        \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_d ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_r  = (! \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf [0]);
  assign lizzieLet30_1_argbuf_d = (\lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf [0] ? \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf  :
                                   \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf  <= {67'd0,
                                                                                                                                     1'd0};
    else
      if ((lizzieLet30_1_argbuf_r && \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf [0]))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf  <= {67'd0,
                                                                                                                                       1'd0};
      else if (((! lizzieLet30_1_argbuf_r) && (! \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf [0])))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_buf  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat2_1es_4_3_1sc_0_7_1isZa8P_3_1ga8Q_3_1q1a8T_2_1Lcall_main_map'_Bool_Nat1_bufchan_d ;
  
  /* dcon (Ty CTmain_map'_Bool_Nat,
      Dcon Lcall_main_map'_Bool_Nat2) : [(lizzieLet28_4Lcall_main_map'_Bool_Nat3,Pointer_QTree_Nat),
                                         (sc_0_6_destruct,Pointer_CTmain_map'_Bool_Nat),
                                         (isZa8P_2_1,MyDTNat_Bool),
                                         (ga8Q_2_1,MyDTBool_Nat),
                                         (q1a8T_1_destruct,Pointer_QTree_Bool),
                                         (q2a8U_1_destruct,Pointer_QTree_Bool)] > (lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2,CTmain_map'_Bool_Nat) */
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_d  = \Lcall_main_map'_Bool_Nat2_dc ((& {\lizzieLet28_4Lcall_main_map'_Bool_Nat3_d [0],
                                                                                                                                                                sc_0_6_destruct_d[0],
                                                                                                                                                                isZa8P_2_1_d[0],
                                                                                                                                                                ga8Q_2_1_d[0],
                                                                                                                                                                q1a8T_1_destruct_d[0],
                                                                                                                                                                q2a8U_1_destruct_d[0]}), \lizzieLet28_4Lcall_main_map'_Bool_Nat3_d , sc_0_6_destruct_d, isZa8P_2_1_d, ga8Q_2_1_d, q1a8T_1_destruct_d, q2a8U_1_destruct_d);
  assign {\lizzieLet28_4Lcall_main_map'_Bool_Nat3_r ,
          sc_0_6_destruct_r,
          isZa8P_2_1_r,
          ga8Q_2_1_r,
          q1a8T_1_destruct_r,
          q2a8U_1_destruct_r} = {6 {(\lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_r  && \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_d [0])}};
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2,CTmain_map'_Bool_Nat) > (lizzieLet29_1_argbuf,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d ;
  logic \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_r ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_r  = ((! \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d [0]) || \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d  <= {67'd0,
                                                                                                                                    1'd0};
    else
      if (\lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_r )
        \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_d ;
  \CTmain_map'_Bool_Nat_t  \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf ;
  assign \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_r  = (! \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf [0]);
  assign lizzieLet29_1_argbuf_d = (\lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf [0] ? \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf  :
                                   \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf  <= {67'd0,
                                                                                                                                      1'd0};
    else
      if ((lizzieLet29_1_argbuf_r && \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf [0]))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf  <= {67'd0,
                                                                                                                                        1'd0};
      else if (((! lizzieLet29_1_argbuf_r) && (! \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf [0])))
        \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_buf  <= \lizzieLet28_4Lcall_main_map'_Bool_Nat3_1sc_0_6_1isZa8P_2_1ga8Q_2_1q1a8T_1_1q2a8U_1_1Lcall_main_map'_Bool_Nat2_bufchan_d ;
  
  /* fork (Ty Pointer_QTree_Nat) : (lizzieLet28_4Lmain_map'_Bool_Natsbos,Pointer_QTree_Nat) > [(lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1,Pointer_QTree_Nat),
                                                                                          (lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2,Pointer_QTree_Nat)] */
  logic [1:0] \lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted ;
  logic [1:0] \lizzieLet28_4Lmain_map'_Bool_Natsbos_done ;
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_d  = {\lizzieLet28_4Lmain_map'_Bool_Natsbos_d [16:1],
                                                                          (\lizzieLet28_4Lmain_map'_Bool_Natsbos_d [0] && (! \lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted [0]))};
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_d  = {\lizzieLet28_4Lmain_map'_Bool_Natsbos_d [16:1],
                                                                          (\lizzieLet28_4Lmain_map'_Bool_Natsbos_d [0] && (! \lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted [1]))};
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_done  = (\lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted  | ({\lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_d [0],
                                                                                                           \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_d [0]} & {\lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_r ,
                                                                                                                                                                                \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_r }));
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_r  = (& \lizzieLet28_4Lmain_map'_Bool_Natsbos_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted  <= 2'd0;
    else
      \lizzieLet28_4Lmain_map'_Bool_Natsbos_emitted  <= (\lizzieLet28_4Lmain_map'_Bool_Natsbos_r  ? 2'd0 :
                                                         \lizzieLet28_4Lmain_map'_Bool_Natsbos_done );
  
  /* togo (Ty Pointer_QTree_Nat) : (lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1,Pointer_QTree_Nat) > (call_main_map'_Bool_Nat_goConst,Go) */
  assign \call_main_map'_Bool_Nat_goConst_d  = \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_d [0];
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_1_r  = \call_main_map'_Bool_Nat_goConst_r ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2,Pointer_QTree_Nat) > (main_map'_Bool_Nat_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d ;
  logic \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_r ;
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_r  = ((! \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d [0]) || \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d  <= {16'd0,
                                                                                1'd0};
    else
      if (\lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_r )
        \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d  <= \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_d ;
  Pointer_QTree_Nat_t \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf ;
  assign \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_r  = (! \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf [0]);
  assign \main_map'_Bool_Nat_resbuf_d  = (\lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf [0] ? \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf  :
                                          \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
    else
      if ((\main_map'_Bool_Nat_resbuf_r  && \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf [0]))
        \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf  <= {16'd0,
                                                                                    1'd0};
      else if (((! \main_map'_Bool_Nat_resbuf_r ) && (! \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf [0])))
        \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_buf  <= \lizzieLet28_4Lmain_map'_Bool_Natsbos_1_merge_merge_fork_2_bufchan_d ;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet3_1QNode_Bool,QTree_Bool) > [(q1a8o_destruct,Pointer_QTree_Bool),
                                                                    (q2a8p_destruct,Pointer_QTree_Bool),
                                                                    (q3a8q_destruct,Pointer_QTree_Bool),
                                                                    (q4a8r_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet3_1QNode_Bool_emitted;
  logic [3:0] lizzieLet3_1QNode_Bool_done;
  assign q1a8o_destruct_d = {lizzieLet3_1QNode_Bool_d[18:3],
                             (lizzieLet3_1QNode_Bool_d[0] && (! lizzieLet3_1QNode_Bool_emitted[0]))};
  assign q2a8p_destruct_d = {lizzieLet3_1QNode_Bool_d[34:19],
                             (lizzieLet3_1QNode_Bool_d[0] && (! lizzieLet3_1QNode_Bool_emitted[1]))};
  assign q3a8q_destruct_d = {lizzieLet3_1QNode_Bool_d[50:35],
                             (lizzieLet3_1QNode_Bool_d[0] && (! lizzieLet3_1QNode_Bool_emitted[2]))};
  assign q4a8r_destruct_d = {lizzieLet3_1QNode_Bool_d[66:51],
                             (lizzieLet3_1QNode_Bool_d[0] && (! lizzieLet3_1QNode_Bool_emitted[3]))};
  assign lizzieLet3_1QNode_Bool_done = (lizzieLet3_1QNode_Bool_emitted | ({q4a8r_destruct_d[0],
                                                                           q3a8q_destruct_d[0],
                                                                           q2a8p_destruct_d[0],
                                                                           q1a8o_destruct_d[0]} & {q4a8r_destruct_r,
                                                                                                   q3a8q_destruct_r,
                                                                                                   q2a8p_destruct_r,
                                                                                                   q1a8o_destruct_r}));
  assign lizzieLet3_1QNode_Bool_r = (& lizzieLet3_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet3_1QNode_Bool_emitted <= (lizzieLet3_1QNode_Bool_r ? 4'd0 :
                                         lizzieLet3_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet3_1QVal_Bool,QTree_Bool) > [(v1a8i_destruct,MyBool)] */
  assign v1a8i_destruct_d = {lizzieLet3_1QVal_Bool_d[3:3],
                             lizzieLet3_1QVal_Bool_d[0]};
  assign lizzieLet3_1QVal_Bool_r = v1a8i_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet3_2,QTree_Bool) (lizzieLet3_1,QTree_Bool) > [(_43,QTree_Bool),
                                                                               (lizzieLet3_1QVal_Bool,QTree_Bool),
                                                                               (lizzieLet3_1QNode_Bool,QTree_Bool),
                                                                               (_42,QTree_Bool)] */
  logic [3:0] lizzieLet3_1_onehotd;
  always_comb
    if ((lizzieLet3_2_d[0] && lizzieLet3_1_d[0]))
      unique case (lizzieLet3_2_d[2:1])
        2'd0: lizzieLet3_1_onehotd = 4'd1;
        2'd1: lizzieLet3_1_onehotd = 4'd2;
        2'd2: lizzieLet3_1_onehotd = 4'd4;
        2'd3: lizzieLet3_1_onehotd = 4'd8;
        default: lizzieLet3_1_onehotd = 4'd0;
      endcase
    else lizzieLet3_1_onehotd = 4'd0;
  assign _43_d = {lizzieLet3_1_d[66:1], lizzieLet3_1_onehotd[0]};
  assign lizzieLet3_1QVal_Bool_d = {lizzieLet3_1_d[66:1],
                                    lizzieLet3_1_onehotd[1]};
  assign lizzieLet3_1QNode_Bool_d = {lizzieLet3_1_d[66:1],
                                     lizzieLet3_1_onehotd[2]};
  assign _42_d = {lizzieLet3_1_d[66:1], lizzieLet3_1_onehotd[3]};
  assign lizzieLet3_1_r = (| (lizzieLet3_1_onehotd & {_42_r,
                                                      lizzieLet3_1QNode_Bool_r,
                                                      lizzieLet3_1QVal_Bool_r,
                                                      _43_r}));
  assign lizzieLet3_2_r = lizzieLet3_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet3_3,QTree_Bool) (go_6_goMux_data,Go) > [(lizzieLet3_3QNone_Bool,Go),
                                                                  (lizzieLet3_3QVal_Bool,Go),
                                                                  (lizzieLet3_3QNode_Bool,Go),
                                                                  (lizzieLet3_3QError_Bool,Go)] */
  logic [3:0] go_6_goMux_data_onehotd;
  always_comb
    if ((lizzieLet3_3_d[0] && go_6_goMux_data_d[0]))
      unique case (lizzieLet3_3_d[2:1])
        2'd0: go_6_goMux_data_onehotd = 4'd1;
        2'd1: go_6_goMux_data_onehotd = 4'd2;
        2'd2: go_6_goMux_data_onehotd = 4'd4;
        2'd3: go_6_goMux_data_onehotd = 4'd8;
        default: go_6_goMux_data_onehotd = 4'd0;
      endcase
    else go_6_goMux_data_onehotd = 4'd0;
  assign lizzieLet3_3QNone_Bool_d = go_6_goMux_data_onehotd[0];
  assign lizzieLet3_3QVal_Bool_d = go_6_goMux_data_onehotd[1];
  assign lizzieLet3_3QNode_Bool_d = go_6_goMux_data_onehotd[2];
  assign lizzieLet3_3QError_Bool_d = go_6_goMux_data_onehotd[3];
  assign go_6_goMux_data_r = (| (go_6_goMux_data_onehotd & {lizzieLet3_3QError_Bool_r,
                                                            lizzieLet3_3QNode_Bool_r,
                                                            lizzieLet3_3QVal_Bool_r,
                                                            lizzieLet3_3QNone_Bool_r}));
  assign lizzieLet3_3_r = go_6_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet3_3QError_Bool,Go) > [(lizzieLet3_3QError_Bool_1,Go),
                                               (lizzieLet3_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet3_3QError_Bool_emitted;
  logic [1:0] lizzieLet3_3QError_Bool_done;
  assign lizzieLet3_3QError_Bool_1_d = (lizzieLet3_3QError_Bool_d[0] && (! lizzieLet3_3QError_Bool_emitted[0]));
  assign lizzieLet3_3QError_Bool_2_d = (lizzieLet3_3QError_Bool_d[0] && (! lizzieLet3_3QError_Bool_emitted[1]));
  assign lizzieLet3_3QError_Bool_done = (lizzieLet3_3QError_Bool_emitted | ({lizzieLet3_3QError_Bool_2_d[0],
                                                                             lizzieLet3_3QError_Bool_1_d[0]} & {lizzieLet3_3QError_Bool_2_r,
                                                                                                                lizzieLet3_3QError_Bool_1_r}));
  assign lizzieLet3_3QError_Bool_r = (& lizzieLet3_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet3_3QError_Bool_emitted <= (lizzieLet3_3QError_Bool_r ? 2'd0 :
                                          lizzieLet3_3QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet3_3QError_Bool_1,Go)] > (lizzieLet3_3QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet3_3QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet3_3QError_Bool_1_d[0]}), lizzieLet3_3QError_Bool_1_d);
  assign {lizzieLet3_3QError_Bool_1_r} = {1 {(lizzieLet3_3QError_Bool_1QError_Bool_r && lizzieLet3_3QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet3_3QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet12_1_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet3_3QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet3_3QError_Bool_1QError_Bool_r = ((! lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet3_3QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet3_3QError_Bool_1QError_Bool_r)
        lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d <= lizzieLet3_3QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet3_3QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet12_1_1_argbuf_d = (lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf :
                                     lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet12_1_1_argbuf_r && lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet12_1_1_argbuf_r) && (! lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet3_3QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet3_3QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_3QError_Bool_2,Go) > (lizzieLet3_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_3QError_Bool_2_bufchan_d;
  logic lizzieLet3_3QError_Bool_2_bufchan_r;
  assign lizzieLet3_3QError_Bool_2_r = ((! lizzieLet3_3QError_Bool_2_bufchan_d[0]) || lizzieLet3_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_3QError_Bool_2_r)
        lizzieLet3_3QError_Bool_2_bufchan_d <= lizzieLet3_3QError_Bool_2_d;
  Go_t lizzieLet3_3QError_Bool_2_bufchan_buf;
  assign lizzieLet3_3QError_Bool_2_bufchan_r = (! lizzieLet3_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_3QError_Bool_2_argbuf_d = (lizzieLet3_3QError_Bool_2_bufchan_buf[0] ? lizzieLet3_3QError_Bool_2_bufchan_buf :
                                               lizzieLet3_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_3QError_Bool_2_argbuf_r && lizzieLet3_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet3_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_3QError_Bool_2_argbuf_r) && (! lizzieLet3_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet3_3QError_Bool_2_bufchan_buf <= lizzieLet3_3QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_3QNone_Bool,Go) > (lizzieLet3_3QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet3_3QNone_Bool_bufchan_d;
  logic lizzieLet3_3QNone_Bool_bufchan_r;
  assign lizzieLet3_3QNone_Bool_r = ((! lizzieLet3_3QNone_Bool_bufchan_d[0]) || lizzieLet3_3QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_3QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_3QNone_Bool_r)
        lizzieLet3_3QNone_Bool_bufchan_d <= lizzieLet3_3QNone_Bool_d;
  Go_t lizzieLet3_3QNone_Bool_bufchan_buf;
  assign lizzieLet3_3QNone_Bool_bufchan_r = (! lizzieLet3_3QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_3QNone_Bool_1_argbuf_d = (lizzieLet3_3QNone_Bool_bufchan_buf[0] ? lizzieLet3_3QNone_Bool_bufchan_buf :
                                              lizzieLet3_3QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_3QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_3QNone_Bool_1_argbuf_r && lizzieLet3_3QNone_Bool_bufchan_buf[0]))
        lizzieLet3_3QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_3QNone_Bool_1_argbuf_r) && (! lizzieLet3_3QNone_Bool_bufchan_buf[0])))
        lizzieLet3_3QNone_Bool_bufchan_buf <= lizzieLet3_3QNone_Bool_bufchan_d;
  
  /* mergectrl (Ty C10,Ty Go) : [(lizzieLet3_3QNone_Bool_1_argbuf,Go),
                            (lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf,Go),
                            (lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf,Go),
                            (lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf,Go),
                            (lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf,Go),
                            (lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf,Go),
                            (lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf,Go),
                            (lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf,Go),
                            (lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf,Go),
                            (lizzieLet3_3QError_Bool_2_argbuf,Go)] > (go_10_goMux_choice,C10) (go_10_goMux_data,Go) */
  logic [9:0] lizzieLet3_3QNone_Bool_1_argbuf_select_d;
  assign lizzieLet3_3QNone_Bool_1_argbuf_select_d = ((| lizzieLet3_3QNone_Bool_1_argbuf_select_q) ? lizzieLet3_3QNone_Bool_1_argbuf_select_q :
                                                     (lizzieLet3_3QNone_Bool_1_argbuf_d[0] ? 10'd1 :
                                                      (lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_d[0] ? 10'd2 :
                                                       (lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_d[0] ? 10'd4 :
                                                        (lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_d[0] ? 10'd8 :
                                                         (lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_d[0] ? 10'd16 :
                                                          (lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_d[0] ? 10'd32 :
                                                           (lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_d[0] ? 10'd64 :
                                                            (lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_d[0] ? 10'd128 :
                                                             (lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_d[0] ? 10'd256 :
                                                              (lizzieLet3_3QError_Bool_2_argbuf_d[0] ? 10'd512 :
                                                               10'd0)))))))))));
  logic [9:0] lizzieLet3_3QNone_Bool_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_3QNone_Bool_1_argbuf_select_q <= 10'd0;
    else
      lizzieLet3_3QNone_Bool_1_argbuf_select_q <= (lizzieLet3_3QNone_Bool_1_argbuf_done ? 10'd0 :
                                                   lizzieLet3_3QNone_Bool_1_argbuf_select_d);
  logic [1:0] lizzieLet3_3QNone_Bool_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_3QNone_Bool_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet3_3QNone_Bool_1_argbuf_emit_q <= (lizzieLet3_3QNone_Bool_1_argbuf_done ? 2'd0 :
                                                 lizzieLet3_3QNone_Bool_1_argbuf_emit_d);
  logic [1:0] lizzieLet3_3QNone_Bool_1_argbuf_emit_d;
  assign lizzieLet3_3QNone_Bool_1_argbuf_emit_d = (lizzieLet3_3QNone_Bool_1_argbuf_emit_q | ({go_10_goMux_choice_d[0],
                                                                                              go_10_goMux_data_d[0]} & {go_10_goMux_choice_r,
                                                                                                                        go_10_goMux_data_r}));
  logic lizzieLet3_3QNone_Bool_1_argbuf_done;
  assign lizzieLet3_3QNone_Bool_1_argbuf_done = (& lizzieLet3_3QNone_Bool_1_argbuf_emit_d);
  assign {lizzieLet3_3QError_Bool_2_argbuf_r,
          lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_r,
          lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_r,
          lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_r,
          lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_r,
          lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_r,
          lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_r,
          lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_r,
          lizzieLet3_3QNone_Bool_1_argbuf_r} = (lizzieLet3_3QNone_Bool_1_argbuf_done ? lizzieLet3_3QNone_Bool_1_argbuf_select_d :
                                                10'd0);
  assign go_10_goMux_data_d = ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[0] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_3QNone_Bool_1_argbuf_d :
                               ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[1] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet23_3Lcall_$wmAdd_Bool0_1_argbuf_d :
                                ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[2] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_d :
                                 ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[3] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_d :
                                  ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[4] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_d :
                                   ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[5] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_d :
                                    ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[6] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_d :
                                     ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[7] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_d :
                                      ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[8] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_d :
                                       ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[9] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[0])) ? lizzieLet3_3QError_Bool_2_argbuf_d :
                                        1'd0))))))))));
  assign go_10_goMux_choice_d = ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[0] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C1_10_dc(1'd1) :
                                 ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[1] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C2_10_dc(1'd1) :
                                  ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[2] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C3_10_dc(1'd1) :
                                   ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[3] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C4_10_dc(1'd1) :
                                    ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[4] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C5_10_dc(1'd1) :
                                     ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[5] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C6_10_dc(1'd1) :
                                      ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[6] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C7_10_dc(1'd1) :
                                       ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[7] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C8_10_dc(1'd1) :
                                        ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[8] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C9_10_dc(1'd1) :
                                         ((lizzieLet3_3QNone_Bool_1_argbuf_select_d[9] && (! lizzieLet3_3QNone_Bool_1_argbuf_emit_q[1])) ? C10_10_dc(1'd1) :
                                          {4'd0, 1'd0}))))))))));
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet3_4,QTree_Bool) (readPointer_QTree_Boolw2skD_1_1_argbuf_rwb,QTree_Bool) > [(_41,QTree_Bool),
                                                                                                             (lizzieLet3_4QVal_Bool,QTree_Bool),
                                                                                                             (lizzieLet3_4QNode_Bool,QTree_Bool),
                                                                                                             (_40,QTree_Bool)] */
  logic [3:0] readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd;
  always_comb
    if ((lizzieLet3_4_d[0] && readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d[0]))
      unique case (lizzieLet3_4_d[2:1])
        2'd0: readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd1;
        2'd1: readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd2;
        2'd2: readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd4;
        2'd3: readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd8;
        default: readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd0;
      endcase
    else readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd = 4'd0;
  assign _41_d = {readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd[0]};
  assign lizzieLet3_4QVal_Bool_d = {readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d[66:1],
                                    readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_d = {readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d[66:1],
                                     readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd[2]};
  assign _40_d = {readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd[3]};
  assign readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_r = (| (readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_onehotd & {_40_r,
                                                                                                                  lizzieLet3_4QNode_Bool_r,
                                                                                                                  lizzieLet3_4QVal_Bool_r,
                                                                                                                  _41_r}));
  assign lizzieLet3_4_r = readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_r;
  
  /* fork (Ty QTree_Bool) : (lizzieLet3_4QNode_Bool,QTree_Bool) > [(lizzieLet3_4QNode_Bool_1,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_2,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_3,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_4,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_5,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_6,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_7,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_8,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_9,QTree_Bool),
                                                              (lizzieLet3_4QNode_Bool_10,QTree_Bool)] */
  logic [9:0] lizzieLet3_4QNode_Bool_emitted;
  logic [9:0] lizzieLet3_4QNode_Bool_done;
  assign lizzieLet3_4QNode_Bool_1_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[0]))};
  assign lizzieLet3_4QNode_Bool_2_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[1]))};
  assign lizzieLet3_4QNode_Bool_3_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[2]))};
  assign lizzieLet3_4QNode_Bool_4_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[3]))};
  assign lizzieLet3_4QNode_Bool_5_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[4]))};
  assign lizzieLet3_4QNode_Bool_6_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[5]))};
  assign lizzieLet3_4QNode_Bool_7_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[6]))};
  assign lizzieLet3_4QNode_Bool_8_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[7]))};
  assign lizzieLet3_4QNode_Bool_9_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                       (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[8]))};
  assign lizzieLet3_4QNode_Bool_10_d = {lizzieLet3_4QNode_Bool_d[66:1],
                                        (lizzieLet3_4QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_emitted[9]))};
  assign lizzieLet3_4QNode_Bool_done = (lizzieLet3_4QNode_Bool_emitted | ({lizzieLet3_4QNode_Bool_10_d[0],
                                                                           lizzieLet3_4QNode_Bool_9_d[0],
                                                                           lizzieLet3_4QNode_Bool_8_d[0],
                                                                           lizzieLet3_4QNode_Bool_7_d[0],
                                                                           lizzieLet3_4QNode_Bool_6_d[0],
                                                                           lizzieLet3_4QNode_Bool_5_d[0],
                                                                           lizzieLet3_4QNode_Bool_4_d[0],
                                                                           lizzieLet3_4QNode_Bool_3_d[0],
                                                                           lizzieLet3_4QNode_Bool_2_d[0],
                                                                           lizzieLet3_4QNode_Bool_1_d[0]} & {lizzieLet3_4QNode_Bool_10_r,
                                                                                                             lizzieLet3_4QNode_Bool_9_r,
                                                                                                             lizzieLet3_4QNode_Bool_8_r,
                                                                                                             lizzieLet3_4QNode_Bool_7_r,
                                                                                                             lizzieLet3_4QNode_Bool_6_r,
                                                                                                             lizzieLet3_4QNode_Bool_5_r,
                                                                                                             lizzieLet3_4QNode_Bool_4_r,
                                                                                                             lizzieLet3_4QNode_Bool_3_r,
                                                                                                             lizzieLet3_4QNode_Bool_2_r,
                                                                                                             lizzieLet3_4QNode_Bool_1_r}));
  assign lizzieLet3_4QNode_Bool_r = (& lizzieLet3_4QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_4QNode_Bool_emitted <= 10'd0;
    else
      lizzieLet3_4QNode_Bool_emitted <= (lizzieLet3_4QNode_Bool_r ? 10'd0 :
                                         lizzieLet3_4QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_10,QTree_Bool) (q4a8r_destruct,Pointer_QTree_Bool) > [(_39,Pointer_QTree_Bool),
                                                                                                              (_38,Pointer_QTree_Bool),
                                                                                                              (lizzieLet3_4QNode_Bool_10QNode_Bool,Pointer_QTree_Bool),
                                                                                                              (_37,Pointer_QTree_Bool)] */
  logic [3:0] q4a8r_destruct_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_10_d[0] && q4a8r_destruct_d[0]))
      unique case (lizzieLet3_4QNode_Bool_10_d[2:1])
        2'd0: q4a8r_destruct_onehotd = 4'd1;
        2'd1: q4a8r_destruct_onehotd = 4'd2;
        2'd2: q4a8r_destruct_onehotd = 4'd4;
        2'd3: q4a8r_destruct_onehotd = 4'd8;
        default: q4a8r_destruct_onehotd = 4'd0;
      endcase
    else q4a8r_destruct_onehotd = 4'd0;
  assign _39_d = {q4a8r_destruct_d[16:1], q4a8r_destruct_onehotd[0]};
  assign _38_d = {q4a8r_destruct_d[16:1], q4a8r_destruct_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_10QNode_Bool_d = {q4a8r_destruct_d[16:1],
                                                  q4a8r_destruct_onehotd[2]};
  assign _37_d = {q4a8r_destruct_d[16:1], q4a8r_destruct_onehotd[3]};
  assign q4a8r_destruct_r = (| (q4a8r_destruct_onehotd & {_37_r,
                                                          lizzieLet3_4QNode_Bool_10QNode_Bool_r,
                                                          _38_r,
                                                          _39_r}));
  assign lizzieLet3_4QNode_Bool_10_r = q4a8r_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_10QNode_Bool,Pointer_QTree_Bool) > (lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_10QNode_Bool_r = ((! lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QNode_Bool_10QNode_Bool_r)
        lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_10QNode_Bool_d;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf :
                                                           lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QNode_Bool_10QNode_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_10QNode_Bool_bufchan_d;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet3_4QNode_Bool_1QNode_Bool,QTree_Bool) > [(t1a8t_destruct,Pointer_QTree_Bool),
                                                                                (t2a8u_destruct,Pointer_QTree_Bool),
                                                                                (t3a8v_destruct,Pointer_QTree_Bool),
                                                                                (t4a8w_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet3_4QNode_Bool_1QNode_Bool_emitted;
  logic [3:0] lizzieLet3_4QNode_Bool_1QNode_Bool_done;
  assign t1a8t_destruct_d = {lizzieLet3_4QNode_Bool_1QNode_Bool_d[18:3],
                             (lizzieLet3_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_1QNode_Bool_emitted[0]))};
  assign t2a8u_destruct_d = {lizzieLet3_4QNode_Bool_1QNode_Bool_d[34:19],
                             (lizzieLet3_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_1QNode_Bool_emitted[1]))};
  assign t3a8v_destruct_d = {lizzieLet3_4QNode_Bool_1QNode_Bool_d[50:35],
                             (lizzieLet3_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_1QNode_Bool_emitted[2]))};
  assign t4a8w_destruct_d = {lizzieLet3_4QNode_Bool_1QNode_Bool_d[66:51],
                             (lizzieLet3_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_1QNode_Bool_emitted[3]))};
  assign lizzieLet3_4QNode_Bool_1QNode_Bool_done = (lizzieLet3_4QNode_Bool_1QNode_Bool_emitted | ({t4a8w_destruct_d[0],
                                                                                                   t3a8v_destruct_d[0],
                                                                                                   t2a8u_destruct_d[0],
                                                                                                   t1a8t_destruct_d[0]} & {t4a8w_destruct_r,
                                                                                                                           t3a8v_destruct_r,
                                                                                                                           t2a8u_destruct_r,
                                                                                                                           t1a8t_destruct_r}));
  assign lizzieLet3_4QNode_Bool_1QNode_Bool_r = (& lizzieLet3_4QNode_Bool_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet3_4QNode_Bool_1QNode_Bool_emitted <= (lizzieLet3_4QNode_Bool_1QNode_Bool_r ? 4'd0 :
                                                     lizzieLet3_4QNode_Bool_1QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet3_4QNode_Bool_2,QTree_Bool) (lizzieLet3_4QNode_Bool_1,QTree_Bool) > [(_36,QTree_Bool),
                                                                                                       (_35,QTree_Bool),
                                                                                                       (lizzieLet3_4QNode_Bool_1QNode_Bool,QTree_Bool),
                                                                                                       (_34,QTree_Bool)] */
  logic [3:0] lizzieLet3_4QNode_Bool_1_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_2_d[0] && lizzieLet3_4QNode_Bool_1_d[0]))
      unique case (lizzieLet3_4QNode_Bool_2_d[2:1])
        2'd0: lizzieLet3_4QNode_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet3_4QNode_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet3_4QNode_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet3_4QNode_Bool_1_onehotd = 4'd8;
        default: lizzieLet3_4QNode_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet3_4QNode_Bool_1_onehotd = 4'd0;
  assign _36_d = {lizzieLet3_4QNode_Bool_1_d[66:1],
                  lizzieLet3_4QNode_Bool_1_onehotd[0]};
  assign _35_d = {lizzieLet3_4QNode_Bool_1_d[66:1],
                  lizzieLet3_4QNode_Bool_1_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_1QNode_Bool_d = {lizzieLet3_4QNode_Bool_1_d[66:1],
                                                 lizzieLet3_4QNode_Bool_1_onehotd[2]};
  assign _34_d = {lizzieLet3_4QNode_Bool_1_d[66:1],
                  lizzieLet3_4QNode_Bool_1_onehotd[3]};
  assign lizzieLet3_4QNode_Bool_1_r = (| (lizzieLet3_4QNode_Bool_1_onehotd & {_34_r,
                                                                              lizzieLet3_4QNode_Bool_1QNode_Bool_r,
                                                                              _35_r,
                                                                              _36_r}));
  assign lizzieLet3_4QNode_Bool_2_r = lizzieLet3_4QNode_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet3_4QNode_Bool_3,QTree_Bool) (lizzieLet3_3QNode_Bool,Go) > [(lizzieLet3_4QNode_Bool_3QNone_Bool,Go),
                                                                                     (lizzieLet3_4QNode_Bool_3QVal_Bool,Go),
                                                                                     (lizzieLet3_4QNode_Bool_3QNode_Bool,Go),
                                                                                     (lizzieLet3_4QNode_Bool_3QError_Bool,Go)] */
  logic [3:0] lizzieLet3_3QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_3_d[0] && lizzieLet3_3QNode_Bool_d[0]))
      unique case (lizzieLet3_4QNode_Bool_3_d[2:1])
        2'd0: lizzieLet3_3QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_3QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_3QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_3QNode_Bool_onehotd = 4'd8;
        default: lizzieLet3_3QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_3QNode_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QNode_Bool_3QNone_Bool_d = lizzieLet3_3QNode_Bool_onehotd[0];
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_d = lizzieLet3_3QNode_Bool_onehotd[1];
  assign lizzieLet3_4QNode_Bool_3QNode_Bool_d = lizzieLet3_3QNode_Bool_onehotd[2];
  assign lizzieLet3_4QNode_Bool_3QError_Bool_d = lizzieLet3_3QNode_Bool_onehotd[3];
  assign lizzieLet3_3QNode_Bool_r = (| (lizzieLet3_3QNode_Bool_onehotd & {lizzieLet3_4QNode_Bool_3QError_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_3QNode_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_3QVal_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_3QNone_Bool_r}));
  assign lizzieLet3_4QNode_Bool_3_r = lizzieLet3_3QNode_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet3_4QNode_Bool_3QError_Bool,Go) > [(lizzieLet3_4QNode_Bool_3QError_Bool_1,Go),
                                                           (lizzieLet3_4QNode_Bool_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet3_4QNode_Bool_3QError_Bool_emitted;
  logic [1:0] lizzieLet3_4QNode_Bool_3QError_Bool_done;
  assign lizzieLet3_4QNode_Bool_3QError_Bool_1_d = (lizzieLet3_4QNode_Bool_3QError_Bool_d[0] && (! lizzieLet3_4QNode_Bool_3QError_Bool_emitted[0]));
  assign lizzieLet3_4QNode_Bool_3QError_Bool_2_d = (lizzieLet3_4QNode_Bool_3QError_Bool_d[0] && (! lizzieLet3_4QNode_Bool_3QError_Bool_emitted[1]));
  assign lizzieLet3_4QNode_Bool_3QError_Bool_done = (lizzieLet3_4QNode_Bool_3QError_Bool_emitted | ({lizzieLet3_4QNode_Bool_3QError_Bool_2_d[0],
                                                                                                     lizzieLet3_4QNode_Bool_3QError_Bool_1_d[0]} & {lizzieLet3_4QNode_Bool_3QError_Bool_2_r,
                                                                                                                                                    lizzieLet3_4QNode_Bool_3QError_Bool_1_r}));
  assign lizzieLet3_4QNode_Bool_3QError_Bool_r = (& lizzieLet3_4QNode_Bool_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QNode_Bool_3QError_Bool_emitted <= (lizzieLet3_4QNode_Bool_3QError_Bool_r ? 2'd0 :
                                                      lizzieLet3_4QNode_Bool_3QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet3_4QNode_Bool_3QError_Bool_1,Go)] > (lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet3_4QNode_Bool_3QError_Bool_1_d[0]}), lizzieLet3_4QNode_Bool_3QError_Bool_1_d);
  assign {lizzieLet3_4QNode_Bool_3QError_Bool_1_r} = {1 {(lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_r && lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet11_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_r = ((! lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                     1'd0};
    else
      if (lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_r)
        lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet11_1_argbuf_d = (lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf :
                                   lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
    else
      if ((lizzieLet11_1_argbuf_r && lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                         1'd0};
      else if (((! lizzieLet11_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_3QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QNode_Bool_3QError_Bool_2,Go) > (lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QError_Bool_2_r = ((! lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QNode_Bool_3QError_Bool_2_r)
        lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d <= lizzieLet3_4QNode_Bool_3QError_Bool_2_d;
  Go_t lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_r = (! lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_d = (lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf :
                                                           lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_r && lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QNode_Bool_3QError_Bool_2_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_buf <= lizzieLet3_4QNode_Bool_3QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QNode_Bool_3QNode_Bool,Go) > (lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QNode_Bool_r = ((! lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QNode_Bool_3QNode_Bool_r)
        lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_3QNode_Bool_d;
  Go_t lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf :
                                                          lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QNode_Bool_3QNode_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_3QNode_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QNode_Bool_3QNone_Bool,Go) > (lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QNone_Bool_r = ((! lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QNode_Bool_3QNone_Bool_r)
        lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_3QNone_Bool_d;
  Go_t lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf :
                                                          lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QNode_Bool_3QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_3QNone_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet3_4QNode_Bool_3QVal_Bool,Go) > [(lizzieLet3_4QNode_Bool_3QVal_Bool_1,Go),
                                                         (lizzieLet3_4QNode_Bool_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet3_4QNode_Bool_3QVal_Bool_emitted;
  logic [1:0] lizzieLet3_4QNode_Bool_3QVal_Bool_done;
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_1_d = (lizzieLet3_4QNode_Bool_3QVal_Bool_d[0] && (! lizzieLet3_4QNode_Bool_3QVal_Bool_emitted[0]));
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_2_d = (lizzieLet3_4QNode_Bool_3QVal_Bool_d[0] && (! lizzieLet3_4QNode_Bool_3QVal_Bool_emitted[1]));
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_done = (lizzieLet3_4QNode_Bool_3QVal_Bool_emitted | ({lizzieLet3_4QNode_Bool_3QVal_Bool_2_d[0],
                                                                                                 lizzieLet3_4QNode_Bool_3QVal_Bool_1_d[0]} & {lizzieLet3_4QNode_Bool_3QVal_Bool_2_r,
                                                                                                                                              lizzieLet3_4QNode_Bool_3QVal_Bool_1_r}));
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_r = (& lizzieLet3_4QNode_Bool_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QNode_Bool_3QVal_Bool_emitted <= (lizzieLet3_4QNode_Bool_3QVal_Bool_r ? 2'd0 :
                                                    lizzieLet3_4QNode_Bool_3QVal_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet3_4QNode_Bool_3QVal_Bool_1,Go)] > (lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet3_4QNode_Bool_3QVal_Bool_1_d[0]}), lizzieLet3_4QNode_Bool_3QVal_Bool_1_d);
  assign {lizzieLet3_4QNode_Bool_3QVal_Bool_1_r} = {1 {(lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_r && lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool,QTree_Bool) > (lizzieLet9_1_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_r = ((! lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                   1'd0};
    else
      if (lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_r)
        lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet9_1_1_argbuf_d = (lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf :
                                    lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                     1'd0};
    else
      if ((lizzieLet9_1_1_argbuf_r && lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
      else if (((! lizzieLet9_1_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_3QVal_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QNode_Bool_3QVal_Bool_2,Go) > (lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d;
  logic lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_r;
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_2_r = ((! lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d[0]) || lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QNode_Bool_3QVal_Bool_2_r)
        lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d <= lizzieLet3_4QNode_Bool_3QVal_Bool_2_d;
  Go_t lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_r = (! lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_d = (lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf :
                                                         lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_r && lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QNode_Bool_3QVal_Bool_2_argbuf_r) && (! lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= lizzieLet3_4QNode_Bool_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QNode_Bool_4,QTree_Bool) (lizzieLet3_5QNode_Bool,Pointer_CT$wmAdd_Bool) > [(lizzieLet3_4QNode_Bool_4QNone_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                           (lizzieLet3_4QNode_Bool_4QVal_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                           (lizzieLet3_4QNode_Bool_4QNode_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                           (lizzieLet3_4QNode_Bool_4QError_Bool,Pointer_CT$wmAdd_Bool)] */
  logic [3:0] lizzieLet3_5QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_4_d[0] && lizzieLet3_5QNode_Bool_d[0]))
      unique case (lizzieLet3_4QNode_Bool_4_d[2:1])
        2'd0: lizzieLet3_5QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_5QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_5QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_5QNode_Bool_onehotd = 4'd8;
        default: lizzieLet3_5QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_5QNode_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QNode_Bool_4QNone_Bool_d = {lizzieLet3_5QNode_Bool_d[16:1],
                                                 lizzieLet3_5QNode_Bool_onehotd[0]};
  assign lizzieLet3_4QNode_Bool_4QVal_Bool_d = {lizzieLet3_5QNode_Bool_d[16:1],
                                                lizzieLet3_5QNode_Bool_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_4QNode_Bool_d = {lizzieLet3_5QNode_Bool_d[16:1],
                                                 lizzieLet3_5QNode_Bool_onehotd[2]};
  assign lizzieLet3_4QNode_Bool_4QError_Bool_d = {lizzieLet3_5QNode_Bool_d[16:1],
                                                  lizzieLet3_5QNode_Bool_onehotd[3]};
  assign lizzieLet3_5QNode_Bool_r = (| (lizzieLet3_5QNode_Bool_onehotd & {lizzieLet3_4QNode_Bool_4QError_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_4QNode_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_4QVal_Bool_r,
                                                                          lizzieLet3_4QNode_Bool_4QNone_Bool_r}));
  assign lizzieLet3_4QNode_Bool_4_r = lizzieLet3_5QNode_Bool_r;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QNode_Bool_4QError_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_4QError_Bool_r = ((! lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QNode_Bool_4QError_Bool_r)
        lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_4QError_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf :
                                                           lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QNode_Bool_4QError_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_4QError_Bool_bufchan_d;
  
  /* dcon (Ty CT$wmAdd_Bool,
      Dcon Lcall_$wmAdd_Bool3) : [(lizzieLet3_4QNode_Bool_4QNode_Bool,Pointer_CT$wmAdd_Bool),
                                  (lizzieLet3_4QNode_Bool_6QNode_Bool_1,MyDTBool_Bool_Bool),
                                  (lizzieLet3_4QNode_Bool_7QNode_Bool,Pointer_QTree_Bool),
                                  (t1a8t_destruct,Pointer_QTree_Bool),
                                  (lizzieLet3_4QNode_Bool_8QNode_Bool,Pointer_QTree_Bool),
                                  (t2a8u_destruct,Pointer_QTree_Bool),
                                  (lizzieLet3_4QNode_Bool_9QNode_Bool,Pointer_QTree_Bool),
                                  (t3a8v_destruct,Pointer_QTree_Bool)] > (lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3,CT$wmAdd_Bool) */
  assign lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_d = Lcall_$wmAdd_Bool3_dc((& {lizzieLet3_4QNode_Bool_4QNode_Bool_d[0],
                                                                                                                                                                                                                                                                   lizzieLet3_4QNode_Bool_6QNode_Bool_1_d[0],
                                                                                                                                                                                                                                                                   lizzieLet3_4QNode_Bool_7QNode_Bool_d[0],
                                                                                                                                                                                                                                                                   t1a8t_destruct_d[0],
                                                                                                                                                                                                                                                                   lizzieLet3_4QNode_Bool_8QNode_Bool_d[0],
                                                                                                                                                                                                                                                                   t2a8u_destruct_d[0],
                                                                                                                                                                                                                                                                   lizzieLet3_4QNode_Bool_9QNode_Bool_d[0],
                                                                                                                                                                                                                                                                   t3a8v_destruct_d[0]}), lizzieLet3_4QNode_Bool_4QNode_Bool_d, lizzieLet3_4QNode_Bool_6QNode_Bool_1_d, lizzieLet3_4QNode_Bool_7QNode_Bool_d, t1a8t_destruct_d, lizzieLet3_4QNode_Bool_8QNode_Bool_d, t2a8u_destruct_d, lizzieLet3_4QNode_Bool_9QNode_Bool_d, t3a8v_destruct_d);
  assign {lizzieLet3_4QNode_Bool_4QNode_Bool_r,
          lizzieLet3_4QNode_Bool_6QNode_Bool_1_r,
          lizzieLet3_4QNode_Bool_7QNode_Bool_r,
          t1a8t_destruct_r,
          lizzieLet3_4QNode_Bool_8QNode_Bool_r,
          t2a8u_destruct_r,
          lizzieLet3_4QNode_Bool_9QNode_Bool_r,
          t3a8v_destruct_r} = {8 {(lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_r && lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_d[0])}};
  
  /* buf (Ty CT$wmAdd_Bool) : (lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3,CT$wmAdd_Bool) > (lizzieLet10_1_argbuf,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d;
  logic lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_r;
  assign lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_r = ((! lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d[0]) || lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d <= {115'd0,
                                                                                                                                                                                                                                                1'd0};
    else
      if (lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_r)
        lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d <= lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_d;
  CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_r = (! lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf[0]);
  assign lizzieLet10_1_argbuf_d = (lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf :
                                   lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                  1'd0};
    else
      if ((lizzieLet10_1_argbuf_r && lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                    1'd0};
      else if (((! lizzieLet10_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_buf <= lizzieLet3_4QNode_Bool_4QNode_Bool_1lizzieLet3_4QNode_Bool_6QNode_Bool_1lizzieLet3_4QNode_Bool_7QNode_Bool_1t1a8t_1lizzieLet3_4QNode_Bool_8QNode_Bool_1t2a8u_1lizzieLet3_4QNode_Bool_9QNode_Bool_1t3a8v_1Lcall_$wmAdd_Bool3_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QNode_Bool_4QNone_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_4QNone_Bool_r = ((! lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QNode_Bool_4QNone_Bool_r)
        lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_4QNone_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf :
                                                          lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QNode_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_4QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QNode_Bool_4QVal_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_4QVal_Bool_r = ((! lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QNode_Bool_4QVal_Bool_r)
        lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_4QVal_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf :
                                                         lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QNode_Bool_4QVal_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_4QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_5,QTree_Bool) (lizzieLet3_6QNode_Bool,Pointer_QTree_Bool) > [(lizzieLet3_4QNode_Bool_5QNone_Bool,Pointer_QTree_Bool),
                                                                                                                     (_33,Pointer_QTree_Bool),
                                                                                                                     (_32,Pointer_QTree_Bool),
                                                                                                                     (_31,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet3_6QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_5_d[0] && lizzieLet3_6QNode_Bool_d[0]))
      unique case (lizzieLet3_4QNode_Bool_5_d[2:1])
        2'd0: lizzieLet3_6QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_6QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_6QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_6QNode_Bool_onehotd = 4'd8;
        default: lizzieLet3_6QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_6QNode_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QNode_Bool_5QNone_Bool_d = {lizzieLet3_6QNode_Bool_d[16:1],
                                                 lizzieLet3_6QNode_Bool_onehotd[0]};
  assign _33_d = {lizzieLet3_6QNode_Bool_d[16:1],
                  lizzieLet3_6QNode_Bool_onehotd[1]};
  assign _32_d = {lizzieLet3_6QNode_Bool_d[16:1],
                  lizzieLet3_6QNode_Bool_onehotd[2]};
  assign _31_d = {lizzieLet3_6QNode_Bool_d[16:1],
                  lizzieLet3_6QNode_Bool_onehotd[3]};
  assign lizzieLet3_6QNode_Bool_r = (| (lizzieLet3_6QNode_Bool_onehotd & {_31_r,
                                                                          _32_r,
                                                                          _33_r,
                                                                          lizzieLet3_4QNode_Bool_5QNone_Bool_r}));
  assign lizzieLet3_4QNode_Bool_5_r = lizzieLet3_6QNode_Bool_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_5QNone_Bool,Pointer_QTree_Bool) > (lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d;
  logic lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_r;
  assign lizzieLet3_4QNode_Bool_5QNone_Bool_r = ((! lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d[0]) || lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QNode_Bool_5QNone_Bool_r)
        lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d <= lizzieLet3_4QNode_Bool_5QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_r = (! lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_d = (lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf :
                                                          lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_r && lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QNode_Bool_5QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_buf <= lizzieLet3_4QNode_Bool_5QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet3_4QNode_Bool_6,QTree_Bool) (lizzieLet3_8QNode_Bool,MyDTBool_Bool_Bool) > [(_30,MyDTBool_Bool_Bool),
                                                                                                                     (_29,MyDTBool_Bool_Bool),
                                                                                                                     (lizzieLet3_4QNode_Bool_6QNode_Bool,MyDTBool_Bool_Bool),
                                                                                                                     (_28,MyDTBool_Bool_Bool)] */
  logic [3:0] lizzieLet3_8QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_6_d[0] && lizzieLet3_8QNode_Bool_d[0]))
      unique case (lizzieLet3_4QNode_Bool_6_d[2:1])
        2'd0: lizzieLet3_8QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_8QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_8QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_8QNode_Bool_onehotd = 4'd8;
        default: lizzieLet3_8QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_8QNode_Bool_onehotd = 4'd0;
  assign _30_d = lizzieLet3_8QNode_Bool_onehotd[0];
  assign _29_d = lizzieLet3_8QNode_Bool_onehotd[1];
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_d = lizzieLet3_8QNode_Bool_onehotd[2];
  assign _28_d = lizzieLet3_8QNode_Bool_onehotd[3];
  assign lizzieLet3_8QNode_Bool_r = (| (lizzieLet3_8QNode_Bool_onehotd & {_28_r,
                                                                          lizzieLet3_4QNode_Bool_6QNode_Bool_r,
                                                                          _29_r,
                                                                          _30_r}));
  assign lizzieLet3_4QNode_Bool_6_r = lizzieLet3_8QNode_Bool_r;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (lizzieLet3_4QNode_Bool_6QNode_Bool,MyDTBool_Bool_Bool) > [(lizzieLet3_4QNode_Bool_6QNode_Bool_1,MyDTBool_Bool_Bool),
                                                                                          (lizzieLet3_4QNode_Bool_6QNode_Bool_2,MyDTBool_Bool_Bool)] */
  logic [1:0] lizzieLet3_4QNode_Bool_6QNode_Bool_emitted;
  logic [1:0] lizzieLet3_4QNode_Bool_6QNode_Bool_done;
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_1_d = (lizzieLet3_4QNode_Bool_6QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_6QNode_Bool_emitted[0]));
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_2_d = (lizzieLet3_4QNode_Bool_6QNode_Bool_d[0] && (! lizzieLet3_4QNode_Bool_6QNode_Bool_emitted[1]));
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_done = (lizzieLet3_4QNode_Bool_6QNode_Bool_emitted | ({lizzieLet3_4QNode_Bool_6QNode_Bool_2_d[0],
                                                                                                   lizzieLet3_4QNode_Bool_6QNode_Bool_1_d[0]} & {lizzieLet3_4QNode_Bool_6QNode_Bool_2_r,
                                                                                                                                                 lizzieLet3_4QNode_Bool_6QNode_Bool_1_r}));
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_r = (& lizzieLet3_4QNode_Bool_6QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_6QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QNode_Bool_6QNode_Bool_emitted <= (lizzieLet3_4QNode_Bool_6QNode_Bool_r ? 2'd0 :
                                                     lizzieLet3_4QNode_Bool_6QNode_Bool_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (lizzieLet3_4QNode_Bool_6QNode_Bool_2,MyDTBool_Bool_Bool) > (lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d;
  logic lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_r;
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_2_r = ((! lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d[0]) || lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QNode_Bool_6QNode_Bool_2_r)
        lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d <= lizzieLet3_4QNode_Bool_6QNode_Bool_2_d;
  MyDTBool_Bool_Bool_t lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf;
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_r = (! lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_d = (lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf[0] ? lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf :
                                                          lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_r && lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QNode_Bool_6QNode_Bool_2_argbuf_r) && (! lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_buf <= lizzieLet3_4QNode_Bool_6QNode_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_7,QTree_Bool) (q1a8o_destruct,Pointer_QTree_Bool) > [(_27,Pointer_QTree_Bool),
                                                                                                             (_26,Pointer_QTree_Bool),
                                                                                                             (lizzieLet3_4QNode_Bool_7QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_25,Pointer_QTree_Bool)] */
  logic [3:0] q1a8o_destruct_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_7_d[0] && q1a8o_destruct_d[0]))
      unique case (lizzieLet3_4QNode_Bool_7_d[2:1])
        2'd0: q1a8o_destruct_onehotd = 4'd1;
        2'd1: q1a8o_destruct_onehotd = 4'd2;
        2'd2: q1a8o_destruct_onehotd = 4'd4;
        2'd3: q1a8o_destruct_onehotd = 4'd8;
        default: q1a8o_destruct_onehotd = 4'd0;
      endcase
    else q1a8o_destruct_onehotd = 4'd0;
  assign _27_d = {q1a8o_destruct_d[16:1], q1a8o_destruct_onehotd[0]};
  assign _26_d = {q1a8o_destruct_d[16:1], q1a8o_destruct_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_7QNode_Bool_d = {q1a8o_destruct_d[16:1],
                                                 q1a8o_destruct_onehotd[2]};
  assign _25_d = {q1a8o_destruct_d[16:1], q1a8o_destruct_onehotd[3]};
  assign q1a8o_destruct_r = (| (q1a8o_destruct_onehotd & {_25_r,
                                                          lizzieLet3_4QNode_Bool_7QNode_Bool_r,
                                                          _26_r,
                                                          _27_r}));
  assign lizzieLet3_4QNode_Bool_7_r = q1a8o_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_8,QTree_Bool) (q2a8p_destruct,Pointer_QTree_Bool) > [(_24,Pointer_QTree_Bool),
                                                                                                             (_23,Pointer_QTree_Bool),
                                                                                                             (lizzieLet3_4QNode_Bool_8QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_22,Pointer_QTree_Bool)] */
  logic [3:0] q2a8p_destruct_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_8_d[0] && q2a8p_destruct_d[0]))
      unique case (lizzieLet3_4QNode_Bool_8_d[2:1])
        2'd0: q2a8p_destruct_onehotd = 4'd1;
        2'd1: q2a8p_destruct_onehotd = 4'd2;
        2'd2: q2a8p_destruct_onehotd = 4'd4;
        2'd3: q2a8p_destruct_onehotd = 4'd8;
        default: q2a8p_destruct_onehotd = 4'd0;
      endcase
    else q2a8p_destruct_onehotd = 4'd0;
  assign _24_d = {q2a8p_destruct_d[16:1], q2a8p_destruct_onehotd[0]};
  assign _23_d = {q2a8p_destruct_d[16:1], q2a8p_destruct_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_8QNode_Bool_d = {q2a8p_destruct_d[16:1],
                                                 q2a8p_destruct_onehotd[2]};
  assign _22_d = {q2a8p_destruct_d[16:1], q2a8p_destruct_onehotd[3]};
  assign q2a8p_destruct_r = (| (q2a8p_destruct_onehotd & {_22_r,
                                                          lizzieLet3_4QNode_Bool_8QNode_Bool_r,
                                                          _23_r,
                                                          _24_r}));
  assign lizzieLet3_4QNode_Bool_8_r = q2a8p_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QNode_Bool_9,QTree_Bool) (q3a8q_destruct,Pointer_QTree_Bool) > [(_21,Pointer_QTree_Bool),
                                                                                                             (_20,Pointer_QTree_Bool),
                                                                                                             (lizzieLet3_4QNode_Bool_9QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_19,Pointer_QTree_Bool)] */
  logic [3:0] q3a8q_destruct_onehotd;
  always_comb
    if ((lizzieLet3_4QNode_Bool_9_d[0] && q3a8q_destruct_d[0]))
      unique case (lizzieLet3_4QNode_Bool_9_d[2:1])
        2'd0: q3a8q_destruct_onehotd = 4'd1;
        2'd1: q3a8q_destruct_onehotd = 4'd2;
        2'd2: q3a8q_destruct_onehotd = 4'd4;
        2'd3: q3a8q_destruct_onehotd = 4'd8;
        default: q3a8q_destruct_onehotd = 4'd0;
      endcase
    else q3a8q_destruct_onehotd = 4'd0;
  assign _21_d = {q3a8q_destruct_d[16:1], q3a8q_destruct_onehotd[0]};
  assign _20_d = {q3a8q_destruct_d[16:1], q3a8q_destruct_onehotd[1]};
  assign lizzieLet3_4QNode_Bool_9QNode_Bool_d = {q3a8q_destruct_d[16:1],
                                                 q3a8q_destruct_onehotd[2]};
  assign _19_d = {q3a8q_destruct_d[16:1], q3a8q_destruct_onehotd[3]};
  assign q3a8q_destruct_r = (| (q3a8q_destruct_onehotd & {_19_r,
                                                          lizzieLet3_4QNode_Bool_9QNode_Bool_r,
                                                          _20_r,
                                                          _21_r}));
  assign lizzieLet3_4QNode_Bool_9_r = q3a8q_destruct_r;
  
  /* fork (Ty QTree_Bool) : (lizzieLet3_4QVal_Bool,QTree_Bool) > [(lizzieLet3_4QVal_Bool_1,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_2,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_3,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_4,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_5,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_6,QTree_Bool),
                                                             (lizzieLet3_4QVal_Bool_7,QTree_Bool)] */
  logic [6:0] lizzieLet3_4QVal_Bool_emitted;
  logic [6:0] lizzieLet3_4QVal_Bool_done;
  assign lizzieLet3_4QVal_Bool_1_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[0]))};
  assign lizzieLet3_4QVal_Bool_2_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[1]))};
  assign lizzieLet3_4QVal_Bool_3_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[2]))};
  assign lizzieLet3_4QVal_Bool_4_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[3]))};
  assign lizzieLet3_4QVal_Bool_5_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[4]))};
  assign lizzieLet3_4QVal_Bool_6_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[5]))};
  assign lizzieLet3_4QVal_Bool_7_d = {lizzieLet3_4QVal_Bool_d[66:1],
                                      (lizzieLet3_4QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_emitted[6]))};
  assign lizzieLet3_4QVal_Bool_done = (lizzieLet3_4QVal_Bool_emitted | ({lizzieLet3_4QVal_Bool_7_d[0],
                                                                         lizzieLet3_4QVal_Bool_6_d[0],
                                                                         lizzieLet3_4QVal_Bool_5_d[0],
                                                                         lizzieLet3_4QVal_Bool_4_d[0],
                                                                         lizzieLet3_4QVal_Bool_3_d[0],
                                                                         lizzieLet3_4QVal_Bool_2_d[0],
                                                                         lizzieLet3_4QVal_Bool_1_d[0]} & {lizzieLet3_4QVal_Bool_7_r,
                                                                                                          lizzieLet3_4QVal_Bool_6_r,
                                                                                                          lizzieLet3_4QVal_Bool_5_r,
                                                                                                          lizzieLet3_4QVal_Bool_4_r,
                                                                                                          lizzieLet3_4QVal_Bool_3_r,
                                                                                                          lizzieLet3_4QVal_Bool_2_r,
                                                                                                          lizzieLet3_4QVal_Bool_1_r}));
  assign lizzieLet3_4QVal_Bool_r = (& lizzieLet3_4QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet3_4QVal_Bool_emitted <= 7'd0;
    else
      lizzieLet3_4QVal_Bool_emitted <= (lizzieLet3_4QVal_Bool_r ? 7'd0 :
                                        lizzieLet3_4QVal_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet3_4QVal_Bool_1QVal_Bool,QTree_Bool) > [(va8j_destruct,MyBool)] */
  assign va8j_destruct_d = {lizzieLet3_4QVal_Bool_1QVal_Bool_d[3:3],
                            lizzieLet3_4QVal_Bool_1QVal_Bool_d[0]};
  assign lizzieLet3_4QVal_Bool_1QVal_Bool_r = va8j_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet3_4QVal_Bool_2,QTree_Bool) (lizzieLet3_4QVal_Bool_1,QTree_Bool) > [(_18,QTree_Bool),
                                                                                                     (lizzieLet3_4QVal_Bool_1QVal_Bool,QTree_Bool),
                                                                                                     (_17,QTree_Bool),
                                                                                                     (_16,QTree_Bool)] */
  logic [3:0] lizzieLet3_4QVal_Bool_1_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_2_d[0] && lizzieLet3_4QVal_Bool_1_d[0]))
      unique case (lizzieLet3_4QVal_Bool_2_d[2:1])
        2'd0: lizzieLet3_4QVal_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet3_4QVal_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet3_4QVal_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet3_4QVal_Bool_1_onehotd = 4'd8;
        default: lizzieLet3_4QVal_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet3_4QVal_Bool_1_onehotd = 4'd0;
  assign _18_d = {lizzieLet3_4QVal_Bool_1_d[66:1],
                  lizzieLet3_4QVal_Bool_1_onehotd[0]};
  assign lizzieLet3_4QVal_Bool_1QVal_Bool_d = {lizzieLet3_4QVal_Bool_1_d[66:1],
                                               lizzieLet3_4QVal_Bool_1_onehotd[1]};
  assign _17_d = {lizzieLet3_4QVal_Bool_1_d[66:1],
                  lizzieLet3_4QVal_Bool_1_onehotd[2]};
  assign _16_d = {lizzieLet3_4QVal_Bool_1_d[66:1],
                  lizzieLet3_4QVal_Bool_1_onehotd[3]};
  assign lizzieLet3_4QVal_Bool_1_r = (| (lizzieLet3_4QVal_Bool_1_onehotd & {_16_r,
                                                                            _17_r,
                                                                            lizzieLet3_4QVal_Bool_1QVal_Bool_r,
                                                                            _18_r}));
  assign lizzieLet3_4QVal_Bool_2_r = lizzieLet3_4QVal_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet3_4QVal_Bool_3,QTree_Bool) (lizzieLet3_3QVal_Bool,Go) > [(lizzieLet3_4QVal_Bool_3QNone_Bool,Go),
                                                                                   (lizzieLet3_4QVal_Bool_3QVal_Bool,Go),
                                                                                   (lizzieLet3_4QVal_Bool_3QNode_Bool,Go),
                                                                                   (lizzieLet3_4QVal_Bool_3QError_Bool,Go)] */
  logic [3:0] lizzieLet3_3QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_3_d[0] && lizzieLet3_3QVal_Bool_d[0]))
      unique case (lizzieLet3_4QVal_Bool_3_d[2:1])
        2'd0: lizzieLet3_3QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_3QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_3QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_3QVal_Bool_onehotd = 4'd8;
        default: lizzieLet3_3QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_3QVal_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QVal_Bool_3QNone_Bool_d = lizzieLet3_3QVal_Bool_onehotd[0];
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_d = lizzieLet3_3QVal_Bool_onehotd[1];
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_d = lizzieLet3_3QVal_Bool_onehotd[2];
  assign lizzieLet3_4QVal_Bool_3QError_Bool_d = lizzieLet3_3QVal_Bool_onehotd[3];
  assign lizzieLet3_3QVal_Bool_r = (| (lizzieLet3_3QVal_Bool_onehotd & {lizzieLet3_4QVal_Bool_3QError_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_3QNode_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_3QVal_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_3QNone_Bool_r}));
  assign lizzieLet3_4QVal_Bool_3_r = lizzieLet3_3QVal_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet3_4QVal_Bool_3QError_Bool,Go) > [(lizzieLet3_4QVal_Bool_3QError_Bool_1,Go),
                                                          (lizzieLet3_4QVal_Bool_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet3_4QVal_Bool_3QError_Bool_emitted;
  logic [1:0] lizzieLet3_4QVal_Bool_3QError_Bool_done;
  assign lizzieLet3_4QVal_Bool_3QError_Bool_1_d = (lizzieLet3_4QVal_Bool_3QError_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QError_Bool_emitted[0]));
  assign lizzieLet3_4QVal_Bool_3QError_Bool_2_d = (lizzieLet3_4QVal_Bool_3QError_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QError_Bool_emitted[1]));
  assign lizzieLet3_4QVal_Bool_3QError_Bool_done = (lizzieLet3_4QVal_Bool_3QError_Bool_emitted | ({lizzieLet3_4QVal_Bool_3QError_Bool_2_d[0],
                                                                                                   lizzieLet3_4QVal_Bool_3QError_Bool_1_d[0]} & {lizzieLet3_4QVal_Bool_3QError_Bool_2_r,
                                                                                                                                                 lizzieLet3_4QVal_Bool_3QError_Bool_1_r}));
  assign lizzieLet3_4QVal_Bool_3QError_Bool_r = (& lizzieLet3_4QVal_Bool_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QVal_Bool_3QError_Bool_emitted <= (lizzieLet3_4QVal_Bool_3QError_Bool_r ? 2'd0 :
                                                     lizzieLet3_4QVal_Bool_3QError_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet3_4QVal_Bool_3QError_Bool_1,Go)] > (lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet3_4QVal_Bool_3QError_Bool_1_d[0]}), lizzieLet3_4QVal_Bool_3QError_Bool_1_d);
  assign {lizzieLet3_4QVal_Bool_3QError_Bool_1_r} = {1 {(lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_r && lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool,QTree_Bool) > (lizzieLet7_1_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_r = ((! lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                    1'd0};
    else
      if (lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_r)
        lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet7_1_1_argbuf_d = (lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf :
                                    lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                      1'd0};
    else
      if ((lizzieLet7_1_1_argbuf_r && lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                        1'd0};
      else if (((! lizzieLet7_1_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_3QError_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QVal_Bool_3QError_Bool_2,Go) > (lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QError_Bool_2_r = ((! lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_3QError_Bool_2_r)
        lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d <= lizzieLet3_4QVal_Bool_3QError_Bool_2_d;
  Go_t lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_r = (! lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_d = (lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf :
                                                          lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_r && lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_3QError_Bool_2_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_buf <= lizzieLet3_4QVal_Bool_3QError_Bool_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet3_4QVal_Bool_3QNode_Bool,Go) > [(lizzieLet3_4QVal_Bool_3QNode_Bool_1,Go),
                                                         (lizzieLet3_4QVal_Bool_3QNode_Bool_2,Go)] */
  logic [1:0] lizzieLet3_4QVal_Bool_3QNode_Bool_emitted;
  logic [1:0] lizzieLet3_4QVal_Bool_3QNode_Bool_done;
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_1_d = (lizzieLet3_4QVal_Bool_3QNode_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QNode_Bool_emitted[0]));
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_2_d = (lizzieLet3_4QVal_Bool_3QNode_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QNode_Bool_emitted[1]));
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_done = (lizzieLet3_4QVal_Bool_3QNode_Bool_emitted | ({lizzieLet3_4QVal_Bool_3QNode_Bool_2_d[0],
                                                                                                 lizzieLet3_4QVal_Bool_3QNode_Bool_1_d[0]} & {lizzieLet3_4QVal_Bool_3QNode_Bool_2_r,
                                                                                                                                              lizzieLet3_4QVal_Bool_3QNode_Bool_1_r}));
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_r = (& lizzieLet3_4QVal_Bool_3QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QVal_Bool_3QNode_Bool_emitted <= (lizzieLet3_4QVal_Bool_3QNode_Bool_r ? 2'd0 :
                                                    lizzieLet3_4QVal_Bool_3QNode_Bool_done);
  
  /* dcon (Ty QTree_Bool,
      Dcon QError_Bool) : [(lizzieLet3_4QVal_Bool_3QNode_Bool_1,Go)] > (lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool,QTree_Bool) */
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_d = QError_Bool_dc((& {lizzieLet3_4QVal_Bool_3QNode_Bool_1_d[0]}), lizzieLet3_4QVal_Bool_3QNode_Bool_1_d);
  assign {lizzieLet3_4QVal_Bool_3QNode_Bool_1_r} = {1 {(lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_r && lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_d[0])}};
  
  /* buf (Ty QTree_Bool) : (lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool,QTree_Bool) > (lizzieLet6_1_1_argbuf,QTree_Bool) */
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_r = ((! lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d <= {66'd0,
                                                                   1'd0};
    else
      if (lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_r)
        lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_d;
  QTree_Bool_t lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf[0]);
  assign lizzieLet6_1_1_argbuf_d = (lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf :
                                    lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                     1'd0};
    else
      if ((lizzieLet6_1_1_argbuf_r && lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf <= {66'd0,
                                                                       1'd0};
      else if (((! lizzieLet6_1_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_3QNode_Bool_1QError_Bool_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QVal_Bool_3QNode_Bool_2,Go) > (lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_2_r = ((! lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_3QNode_Bool_2_r)
        lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d <= lizzieLet3_4QVal_Bool_3QNode_Bool_2_d;
  Go_t lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_r = (! lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_d = (lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf :
                                                         lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_r && lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_3QNode_Bool_2_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= lizzieLet3_4QVal_Bool_3QNode_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet3_4QVal_Bool_3QNone_Bool,Go) > (lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QNone_Bool_r = ((! lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_3QNone_Bool_r)
        lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_3QNone_Bool_d;
  Go_t lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf :
                                                         lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_3QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_3QNone_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet3_4QVal_Bool_3QVal_Bool,Go) > [(lizzieLet3_4QVal_Bool_3QVal_Bool_1,Go),
                                                        (lizzieLet3_4QVal_Bool_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet3_4QVal_Bool_3QVal_Bool_emitted;
  logic [1:0] lizzieLet3_4QVal_Bool_3QVal_Bool_done;
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_1_d = (lizzieLet3_4QVal_Bool_3QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QVal_Bool_emitted[0]));
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_2_d = (lizzieLet3_4QVal_Bool_3QVal_Bool_d[0] && (! lizzieLet3_4QVal_Bool_3QVal_Bool_emitted[1]));
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_done = (lizzieLet3_4QVal_Bool_3QVal_Bool_emitted | ({lizzieLet3_4QVal_Bool_3QVal_Bool_2_d[0],
                                                                                               lizzieLet3_4QVal_Bool_3QVal_Bool_1_d[0]} & {lizzieLet3_4QVal_Bool_3QVal_Bool_2_r,
                                                                                                                                           lizzieLet3_4QVal_Bool_3QVal_Bool_1_r}));
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_r = (& lizzieLet3_4QVal_Bool_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet3_4QVal_Bool_3QVal_Bool_emitted <= (lizzieLet3_4QVal_Bool_3QVal_Bool_r ? 2'd0 :
                                                   lizzieLet3_4QVal_Bool_3QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet3_4QVal_Bool_3QVal_Bool_1,Go) > (lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_1_r = ((! lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_3QVal_Bool_1_r)
        lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d <= lizzieLet3_4QVal_Bool_3QVal_Bool_1_d;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_r = (! lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf :
                                                        lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_buf <= lizzieLet3_4QVal_Bool_3QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTBool_Bool_Bool___MyBool___MyBool,
      Dcon TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) : [(lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf,Go),
                                                            (lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf,MyDTBool_Bool_Bool),
                                                            (lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf,MyBool),
                                                            (va8j_1_argbuf,MyBool)] > (applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1,TupGo___MyDTBool_Bool_Bool___MyBool___MyBool) */
  assign applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d = TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_dc((& {lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_d[0],
                                                                                                                                       lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_d[0],
                                                                                                                                       lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_d[0],
                                                                                                                                       va8j_1_argbuf_d[0]}), lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_d, lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_d, lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_d, va8j_1_argbuf_d);
  assign {lizzieLet3_4QVal_Bool_3QVal_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_r,
          lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_r,
          va8j_1_argbuf_r} = {4 {(applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_r && applyfnBool_Bool_Bool_5TupGo___MyDTBool_Bool_Bool___MyBool___MyBool_1_d[0])}};
  
  /* buf (Ty Go) : (lizzieLet3_4QVal_Bool_3QVal_Bool_2,Go) > (lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d;
  logic lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_r;
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_2_r = ((! lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d[0]) || lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_3QVal_Bool_2_r)
        lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d <= lizzieLet3_4QVal_Bool_3QVal_Bool_2_d;
  Go_t lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_r = (! lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_d = (lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf :
                                                        lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_r && lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_3QVal_Bool_2_argbuf_r) && (! lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_buf <= lizzieLet3_4QVal_Bool_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QVal_Bool_4,QTree_Bool) (lizzieLet3_5QVal_Bool,Pointer_CT$wmAdd_Bool) > [(lizzieLet3_4QVal_Bool_4QNone_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                         (lizzieLet3_4QVal_Bool_4QVal_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                         (lizzieLet3_4QVal_Bool_4QNode_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                                         (lizzieLet3_4QVal_Bool_4QError_Bool,Pointer_CT$wmAdd_Bool)] */
  logic [3:0] lizzieLet3_5QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_4_d[0] && lizzieLet3_5QVal_Bool_d[0]))
      unique case (lizzieLet3_4QVal_Bool_4_d[2:1])
        2'd0: lizzieLet3_5QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_5QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_5QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_5QVal_Bool_onehotd = 4'd8;
        default: lizzieLet3_5QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_5QVal_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QVal_Bool_4QNone_Bool_d = {lizzieLet3_5QVal_Bool_d[16:1],
                                                lizzieLet3_5QVal_Bool_onehotd[0]};
  assign lizzieLet3_4QVal_Bool_4QVal_Bool_d = {lizzieLet3_5QVal_Bool_d[16:1],
                                               lizzieLet3_5QVal_Bool_onehotd[1]};
  assign lizzieLet3_4QVal_Bool_4QNode_Bool_d = {lizzieLet3_5QVal_Bool_d[16:1],
                                                lizzieLet3_5QVal_Bool_onehotd[2]};
  assign lizzieLet3_4QVal_Bool_4QError_Bool_d = {lizzieLet3_5QVal_Bool_d[16:1],
                                                 lizzieLet3_5QVal_Bool_onehotd[3]};
  assign lizzieLet3_5QVal_Bool_r = (| (lizzieLet3_5QVal_Bool_onehotd & {lizzieLet3_4QVal_Bool_4QError_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_4QNode_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_4QVal_Bool_r,
                                                                        lizzieLet3_4QVal_Bool_4QNone_Bool_r}));
  assign lizzieLet3_4QVal_Bool_4_r = lizzieLet3_5QVal_Bool_r;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QVal_Bool_4QError_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_4QError_Bool_r = ((! lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_4QError_Bool_r)
        lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_4QError_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf :
                                                          lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_4QError_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_4QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QVal_Bool_4QNode_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_4QNode_Bool_r = ((! lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_4QNode_Bool_r)
        lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_4QNode_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf :
                                                         lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_4QNode_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_4QNode_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QVal_Bool_4QNone_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_4QNone_Bool_r = ((! lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_4QNone_Bool_r)
        lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_4QNone_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf :
                                                         lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_4QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_4QVal_Bool_4QVal_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_4QVal_Bool_r = ((! lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_4QVal_Bool_r)
        lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_4QVal_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf :
                                                        lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_4QVal_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_4QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_4QVal_Bool_5,QTree_Bool) (lizzieLet3_6QVal_Bool,Pointer_QTree_Bool) > [(lizzieLet3_4QVal_Bool_5QNone_Bool,Pointer_QTree_Bool),
                                                                                                                   (_15,Pointer_QTree_Bool),
                                                                                                                   (_14,Pointer_QTree_Bool),
                                                                                                                   (_13,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet3_6QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_5_d[0] && lizzieLet3_6QVal_Bool_d[0]))
      unique case (lizzieLet3_4QVal_Bool_5_d[2:1])
        2'd0: lizzieLet3_6QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_6QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_6QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_6QVal_Bool_onehotd = 4'd8;
        default: lizzieLet3_6QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_6QVal_Bool_onehotd = 4'd0;
  assign lizzieLet3_4QVal_Bool_5QNone_Bool_d = {lizzieLet3_6QVal_Bool_d[16:1],
                                                lizzieLet3_6QVal_Bool_onehotd[0]};
  assign _15_d = {lizzieLet3_6QVal_Bool_d[16:1],
                  lizzieLet3_6QVal_Bool_onehotd[1]};
  assign _14_d = {lizzieLet3_6QVal_Bool_d[16:1],
                  lizzieLet3_6QVal_Bool_onehotd[2]};
  assign _13_d = {lizzieLet3_6QVal_Bool_d[16:1],
                  lizzieLet3_6QVal_Bool_onehotd[3]};
  assign lizzieLet3_6QVal_Bool_r = (| (lizzieLet3_6QVal_Bool_onehotd & {_13_r,
                                                                        _14_r,
                                                                        _15_r,
                                                                        lizzieLet3_4QVal_Bool_5QNone_Bool_r}));
  assign lizzieLet3_4QVal_Bool_5_r = lizzieLet3_6QVal_Bool_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet3_4QVal_Bool_5QNone_Bool,Pointer_QTree_Bool) > (lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_5QNone_Bool_r = ((! lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_5QNone_Bool_r)
        lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_5QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf :
                                                         lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_5QNone_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_5QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet3_4QVal_Bool_6,QTree_Bool) (lizzieLet3_8QVal_Bool,MyDTBool_Bool_Bool) > [(_12,MyDTBool_Bool_Bool),
                                                                                                                   (lizzieLet3_4QVal_Bool_6QVal_Bool,MyDTBool_Bool_Bool),
                                                                                                                   (_11,MyDTBool_Bool_Bool),
                                                                                                                   (_10,MyDTBool_Bool_Bool)] */
  logic [3:0] lizzieLet3_8QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_6_d[0] && lizzieLet3_8QVal_Bool_d[0]))
      unique case (lizzieLet3_4QVal_Bool_6_d[2:1])
        2'd0: lizzieLet3_8QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet3_8QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet3_8QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet3_8QVal_Bool_onehotd = 4'd8;
        default: lizzieLet3_8QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet3_8QVal_Bool_onehotd = 4'd0;
  assign _12_d = lizzieLet3_8QVal_Bool_onehotd[0];
  assign lizzieLet3_4QVal_Bool_6QVal_Bool_d = lizzieLet3_8QVal_Bool_onehotd[1];
  assign _11_d = lizzieLet3_8QVal_Bool_onehotd[2];
  assign _10_d = lizzieLet3_8QVal_Bool_onehotd[3];
  assign lizzieLet3_8QVal_Bool_r = (| (lizzieLet3_8QVal_Bool_onehotd & {_10_r,
                                                                        _11_r,
                                                                        lizzieLet3_4QVal_Bool_6QVal_Bool_r,
                                                                        _12_r}));
  assign lizzieLet3_4QVal_Bool_6_r = lizzieLet3_8QVal_Bool_r;
  
  /* buf (Ty MyDTBool_Bool_Bool) : (lizzieLet3_4QVal_Bool_6QVal_Bool,MyDTBool_Bool_Bool) > (lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_6QVal_Bool_r = ((! lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet3_4QVal_Bool_6QVal_Bool_r)
        lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_6QVal_Bool_d;
  MyDTBool_Bool_Bool_t lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf :
                                                        lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet3_4QVal_Bool_6QVal_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_6QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyBool) : (lizzieLet3_4QVal_Bool_7,QTree_Bool) (v1a8i_destruct,MyBool) > [(_9,MyBool),
                                                                                    (lizzieLet3_4QVal_Bool_7QVal_Bool,MyBool),
                                                                                    (_8,MyBool),
                                                                                    (_7,MyBool)] */
  logic [3:0] v1a8i_destruct_onehotd;
  always_comb
    if ((lizzieLet3_4QVal_Bool_7_d[0] && v1a8i_destruct_d[0]))
      unique case (lizzieLet3_4QVal_Bool_7_d[2:1])
        2'd0: v1a8i_destruct_onehotd = 4'd1;
        2'd1: v1a8i_destruct_onehotd = 4'd2;
        2'd2: v1a8i_destruct_onehotd = 4'd4;
        2'd3: v1a8i_destruct_onehotd = 4'd8;
        default: v1a8i_destruct_onehotd = 4'd0;
      endcase
    else v1a8i_destruct_onehotd = 4'd0;
  assign _9_d = {v1a8i_destruct_d[1:1], v1a8i_destruct_onehotd[0]};
  assign lizzieLet3_4QVal_Bool_7QVal_Bool_d = {v1a8i_destruct_d[1:1],
                                               v1a8i_destruct_onehotd[1]};
  assign _8_d = {v1a8i_destruct_d[1:1], v1a8i_destruct_onehotd[2]};
  assign _7_d = {v1a8i_destruct_d[1:1], v1a8i_destruct_onehotd[3]};
  assign v1a8i_destruct_r = (| (v1a8i_destruct_onehotd & {_7_r,
                                                          _8_r,
                                                          lizzieLet3_4QVal_Bool_7QVal_Bool_r,
                                                          _9_r}));
  assign lizzieLet3_4QVal_Bool_7_r = v1a8i_destruct_r;
  
  /* buf (Ty MyBool) : (lizzieLet3_4QVal_Bool_7QVal_Bool,MyBool) > (lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf,MyBool) */
  MyBool_t lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d;
  logic lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_r;
  assign lizzieLet3_4QVal_Bool_7QVal_Bool_r = ((! lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d[0]) || lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d <= {1'd0, 1'd0};
    else
      if (lizzieLet3_4QVal_Bool_7QVal_Bool_r)
        lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d <= lizzieLet3_4QVal_Bool_7QVal_Bool_d;
  MyBool_t lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf;
  assign lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_r = (! lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf[0]);
  assign lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_d = (lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf[0] ? lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf :
                                                        lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_r && lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf[0]))
        lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf <= {1'd0, 1'd0};
      else if (((! lizzieLet3_4QVal_Bool_7QVal_Bool_1_argbuf_r) && (! lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf[0])))
        lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_buf <= lizzieLet3_4QVal_Bool_7QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_5,QTree_Bool) (sc_0_goMux_mux,Pointer_CT$wmAdd_Bool) > [(lizzieLet3_5QNone_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                       (lizzieLet3_5QVal_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                       (lizzieLet3_5QNode_Bool,Pointer_CT$wmAdd_Bool),
                                                                                                       (lizzieLet3_5QError_Bool,Pointer_CT$wmAdd_Bool)] */
  logic [3:0] sc_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet3_5_d[0] && sc_0_goMux_mux_d[0]))
      unique case (lizzieLet3_5_d[2:1])
        2'd0: sc_0_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_goMux_mux_onehotd = 4'd8;
        default: sc_0_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_goMux_mux_onehotd = 4'd0;
  assign lizzieLet3_5QNone_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[0]};
  assign lizzieLet3_5QVal_Bool_d = {sc_0_goMux_mux_d[16:1],
                                    sc_0_goMux_mux_onehotd[1]};
  assign lizzieLet3_5QNode_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[2]};
  assign lizzieLet3_5QError_Bool_d = {sc_0_goMux_mux_d[16:1],
                                      sc_0_goMux_mux_onehotd[3]};
  assign sc_0_goMux_mux_r = (| (sc_0_goMux_mux_onehotd & {lizzieLet3_5QError_Bool_r,
                                                          lizzieLet3_5QNode_Bool_r,
                                                          lizzieLet3_5QVal_Bool_r,
                                                          lizzieLet3_5QNone_Bool_r}));
  assign lizzieLet3_5_r = sc_0_goMux_mux_r;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_5QError_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_5QError_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QError_Bool_bufchan_d;
  logic lizzieLet3_5QError_Bool_bufchan_r;
  assign lizzieLet3_5QError_Bool_r = ((! lizzieLet3_5QError_Bool_bufchan_d[0]) || lizzieLet3_5QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_5QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_5QError_Bool_r)
        lizzieLet3_5QError_Bool_bufchan_d <= lizzieLet3_5QError_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QError_Bool_bufchan_buf;
  assign lizzieLet3_5QError_Bool_bufchan_r = (! lizzieLet3_5QError_Bool_bufchan_buf[0]);
  assign lizzieLet3_5QError_Bool_1_argbuf_d = (lizzieLet3_5QError_Bool_bufchan_buf[0] ? lizzieLet3_5QError_Bool_bufchan_buf :
                                               lizzieLet3_5QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_5QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_5QError_Bool_1_argbuf_r && lizzieLet3_5QError_Bool_bufchan_buf[0]))
        lizzieLet3_5QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_5QError_Bool_1_argbuf_r) && (! lizzieLet3_5QError_Bool_bufchan_buf[0])))
        lizzieLet3_5QError_Bool_bufchan_buf <= lizzieLet3_5QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (lizzieLet3_5QNone_Bool,Pointer_CT$wmAdd_Bool) > (lizzieLet3_5QNone_Bool_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QNone_Bool_bufchan_d;
  logic lizzieLet3_5QNone_Bool_bufchan_r;
  assign lizzieLet3_5QNone_Bool_r = ((! lizzieLet3_5QNone_Bool_bufchan_d[0]) || lizzieLet3_5QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_5QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_5QNone_Bool_r)
        lizzieLet3_5QNone_Bool_bufchan_d <= lizzieLet3_5QNone_Bool_d;
  Pointer_CT$wmAdd_Bool_t lizzieLet3_5QNone_Bool_bufchan_buf;
  assign lizzieLet3_5QNone_Bool_bufchan_r = (! lizzieLet3_5QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_5QNone_Bool_1_argbuf_d = (lizzieLet3_5QNone_Bool_bufchan_buf[0] ? lizzieLet3_5QNone_Bool_bufchan_buf :
                                              lizzieLet3_5QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_5QNone_Bool_1_argbuf_r && lizzieLet3_5QNone_Bool_bufchan_buf[0]))
        lizzieLet3_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_5QNone_Bool_1_argbuf_r) && (! lizzieLet3_5QNone_Bool_bufchan_buf[0])))
        lizzieLet3_5QNone_Bool_bufchan_buf <= lizzieLet3_5QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_6,QTree_Bool) (w1skC_1_2,Pointer_QTree_Bool) > [(_6,Pointer_QTree_Bool),
                                                                                            (lizzieLet3_6QVal_Bool,Pointer_QTree_Bool),
                                                                                            (lizzieLet3_6QNode_Bool,Pointer_QTree_Bool),
                                                                                            (_5,Pointer_QTree_Bool)] */
  logic [3:0] w1skC_1_2_onehotd;
  always_comb
    if ((lizzieLet3_6_d[0] && w1skC_1_2_d[0]))
      unique case (lizzieLet3_6_d[2:1])
        2'd0: w1skC_1_2_onehotd = 4'd1;
        2'd1: w1skC_1_2_onehotd = 4'd2;
        2'd2: w1skC_1_2_onehotd = 4'd4;
        2'd3: w1skC_1_2_onehotd = 4'd8;
        default: w1skC_1_2_onehotd = 4'd0;
      endcase
    else w1skC_1_2_onehotd = 4'd0;
  assign _6_d = {w1skC_1_2_d[16:1], w1skC_1_2_onehotd[0]};
  assign lizzieLet3_6QVal_Bool_d = {w1skC_1_2_d[16:1],
                                    w1skC_1_2_onehotd[1]};
  assign lizzieLet3_6QNode_Bool_d = {w1skC_1_2_d[16:1],
                                     w1skC_1_2_onehotd[2]};
  assign _5_d = {w1skC_1_2_d[16:1], w1skC_1_2_onehotd[3]};
  assign w1skC_1_2_r = (| (w1skC_1_2_onehotd & {_5_r,
                                                lizzieLet3_6QNode_Bool_r,
                                                lizzieLet3_6QVal_Bool_r,
                                                _6_r}));
  assign lizzieLet3_6_r = w1skC_1_2_r;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet3_7,QTree_Bool) (w2skD_1_2,Pointer_QTree_Bool) > [(lizzieLet3_7QNone_Bool,Pointer_QTree_Bool),
                                                                                            (_4,Pointer_QTree_Bool),
                                                                                            (_3,Pointer_QTree_Bool),
                                                                                            (_2,Pointer_QTree_Bool)] */
  logic [3:0] w2skD_1_2_onehotd;
  always_comb
    if ((lizzieLet3_7_d[0] && w2skD_1_2_d[0]))
      unique case (lizzieLet3_7_d[2:1])
        2'd0: w2skD_1_2_onehotd = 4'd1;
        2'd1: w2skD_1_2_onehotd = 4'd2;
        2'd2: w2skD_1_2_onehotd = 4'd4;
        2'd3: w2skD_1_2_onehotd = 4'd8;
        default: w2skD_1_2_onehotd = 4'd0;
      endcase
    else w2skD_1_2_onehotd = 4'd0;
  assign lizzieLet3_7QNone_Bool_d = {w2skD_1_2_d[16:1],
                                     w2skD_1_2_onehotd[0]};
  assign _4_d = {w2skD_1_2_d[16:1], w2skD_1_2_onehotd[1]};
  assign _3_d = {w2skD_1_2_d[16:1], w2skD_1_2_onehotd[2]};
  assign _2_d = {w2skD_1_2_d[16:1], w2skD_1_2_onehotd[3]};
  assign w2skD_1_2_r = (| (w2skD_1_2_onehotd & {_2_r,
                                                _3_r,
                                                _4_r,
                                                lizzieLet3_7QNone_Bool_r}));
  assign lizzieLet3_7_r = w2skD_1_2_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet3_7QNone_Bool,Pointer_QTree_Bool) > (lizzieLet3_7QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet3_7QNone_Bool_bufchan_d;
  logic lizzieLet3_7QNone_Bool_bufchan_r;
  assign lizzieLet3_7QNone_Bool_r = ((! lizzieLet3_7QNone_Bool_bufchan_d[0]) || lizzieLet3_7QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_7QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet3_7QNone_Bool_r)
        lizzieLet3_7QNone_Bool_bufchan_d <= lizzieLet3_7QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet3_7QNone_Bool_bufchan_buf;
  assign lizzieLet3_7QNone_Bool_bufchan_r = (! lizzieLet3_7QNone_Bool_bufchan_buf[0]);
  assign lizzieLet3_7QNone_Bool_1_argbuf_d = (lizzieLet3_7QNone_Bool_bufchan_buf[0] ? lizzieLet3_7QNone_Bool_bufchan_buf :
                                              lizzieLet3_7QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_7QNone_Bool_1_argbuf_r && lizzieLet3_7QNone_Bool_bufchan_buf[0]))
        lizzieLet3_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet3_7QNone_Bool_1_argbuf_r) && (! lizzieLet3_7QNone_Bool_bufchan_buf[0])))
        lizzieLet3_7QNone_Bool_bufchan_buf <= lizzieLet3_7QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyDTBool_Bool_Bool) : (lizzieLet3_8,QTree_Bool) (wskB_1_goMux_mux,MyDTBool_Bool_Bool) > [(_1,MyDTBool_Bool_Bool),
                                                                                                   (lizzieLet3_8QVal_Bool,MyDTBool_Bool_Bool),
                                                                                                   (lizzieLet3_8QNode_Bool,MyDTBool_Bool_Bool),
                                                                                                   (_0,MyDTBool_Bool_Bool)] */
  logic [3:0] wskB_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet3_8_d[0] && wskB_1_goMux_mux_d[0]))
      unique case (lizzieLet3_8_d[2:1])
        2'd0: wskB_1_goMux_mux_onehotd = 4'd1;
        2'd1: wskB_1_goMux_mux_onehotd = 4'd2;
        2'd2: wskB_1_goMux_mux_onehotd = 4'd4;
        2'd3: wskB_1_goMux_mux_onehotd = 4'd8;
        default: wskB_1_goMux_mux_onehotd = 4'd0;
      endcase
    else wskB_1_goMux_mux_onehotd = 4'd0;
  assign _1_d = wskB_1_goMux_mux_onehotd[0];
  assign lizzieLet3_8QVal_Bool_d = wskB_1_goMux_mux_onehotd[1];
  assign lizzieLet3_8QNode_Bool_d = wskB_1_goMux_mux_onehotd[2];
  assign _0_d = wskB_1_goMux_mux_onehotd[3];
  assign wskB_1_goMux_mux_r = (| (wskB_1_goMux_mux_onehotd & {_0_r,
                                                              lizzieLet3_8QNode_Bool_r,
                                                              lizzieLet3_8QVal_Bool_r,
                                                              _1_r}));
  assign lizzieLet3_8_r = wskB_1_goMux_mux_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (ma8R_goMux_mux,Pointer_QTree_Bool) > (ma8R_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t ma8R_goMux_mux_bufchan_d;
  logic ma8R_goMux_mux_bufchan_r;
  assign ma8R_goMux_mux_r = ((! ma8R_goMux_mux_bufchan_d[0]) || ma8R_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ma8R_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (ma8R_goMux_mux_r) ma8R_goMux_mux_bufchan_d <= ma8R_goMux_mux_d;
  Pointer_QTree_Bool_t ma8R_goMux_mux_bufchan_buf;
  assign ma8R_goMux_mux_bufchan_r = (! ma8R_goMux_mux_bufchan_buf[0]);
  assign ma8R_1_argbuf_d = (ma8R_goMux_mux_bufchan_buf[0] ? ma8R_goMux_mux_bufchan_buf :
                            ma8R_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ma8R_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((ma8R_1_argbuf_r && ma8R_goMux_mux_bufchan_buf[0]))
        ma8R_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! ma8R_1_argbuf_r) && (! ma8R_goMux_mux_bufchan_buf[0])))
        ma8R_goMux_mux_bufchan_buf <= ma8R_goMux_mux_bufchan_d;
  
  /* destruct (Ty TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool,
          Dcon TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool) : (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1,TupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool) > [(main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9,Go),
                                                                                                                                                                                                                      (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1,MyDTNat_Bool),
                                                                                                                                                                                                                      (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1,MyDTBool_Nat),
                                                                                                                                                                                                                      (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1,Pointer_QTree_Bool)] */
  logic [3:0] \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted ;
  logic [3:0] \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_done ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_d  = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted [0]));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_d  = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted [1]));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_d  = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted [2]));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_d  = {\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [16:1],
                                                                                                 (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted [3]))};
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_done  = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted  | ({\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_d [0],
                                                                                                                                                                                           \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_d [0],
                                                                                                                                                                                           \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_d [0],
                                                                                                                                                                                           \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_d [0]} & {\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_r ,
                                                                                                                                                                                                                                                                                     \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_r ,
                                                                                                                                                                                                                                                                                     \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_r ,
                                                                                                                                                                                                                                                                                     \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_r }));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_r  = (& \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted  <= 4'd0;
    else
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_emitted  <= (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_r  ? 4'd0 :
                                                                                                 \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Bool_1_done );
  
  /* buf (Ty MyDTBool_Nat) : (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1,MyDTBool_Nat) > (ga8Q_1_1_argbuf,MyDTBool_Nat) */
  MyDTBool_Nat_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_r ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_r  = ((! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d [0]) || \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d  <= 1'd0;
    else
      if (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_r )
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_d ;
  MyDTBool_Nat_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_r  = (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf [0]);
  assign ga8Q_1_1_argbuf_d = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf [0] ? \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf  :
                              \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf  <= 1'd0;
    else
      if ((ga8Q_1_1_argbuf_r && \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf [0]))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf  <= 1'd0;
      else if (((! ga8Q_1_1_argbuf_r) && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf [0])))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_buf  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolga8Q_1_bufchan_d ;
  
  /* fork (Ty Go) : (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9,Go) > [(go_9_1,Go),
                                                                                                      (go_9_2,Go)] */
  logic [1:0] \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted ;
  logic [1:0] \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_done ;
  assign go_9_1_d = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted [0]));
  assign go_9_2_d = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_d [0] && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted [1]));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_done  = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted  | ({go_9_2_d[0],
                                                                                                                                                                                               go_9_1_d[0]} & {go_9_2_r,
                                                                                                                                                                                                               go_9_1_r}));
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_r  = (& \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted  <= 2'd0;
    else
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_emitted  <= (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_r  ? 2'd0 :
                                                                                                   \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolgo_9_done );
  
  /* buf (Ty MyDTNat_Bool) : (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1,MyDTNat_Bool) > (isZa8P_1_1_argbuf,MyDTNat_Bool) */
  MyDTNat_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_r ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_r  = ((! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d [0]) || \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d  <= 1'd0;
    else
      if (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_r )
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_d ;
  MyDTNat_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_r  = (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf [0]);
  assign isZa8P_1_1_argbuf_d = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf [0] ? \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf  :
                                \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf  <= 1'd0;
    else
      if ((isZa8P_1_1_argbuf_r && \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf [0]))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf  <= 1'd0;
      else if (((! isZa8P_1_1_argbuf_r) && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf [0])))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_buf  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_BoolisZa8P_1_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Bool) : (main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1,Pointer_QTree_Bool) > (ma8R_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d ;
  logic \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_r ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_r  = ((! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d [0]) || \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d  <= {16'd0,
                                                                                                       1'd0};
    else
      if (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_r )
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_d ;
  Pointer_QTree_Bool_t \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf ;
  assign \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_r  = (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf [0]);
  assign ma8R_1_1_argbuf_d = (\main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf [0] ? \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf  :
                              \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf  <= {16'd0,
                                                                                                         1'd0};
    else
      if ((ma8R_1_1_argbuf_r && \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf [0]))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf  <= {16'd0,
                                                                                                           1'd0};
      else if (((! ma8R_1_1_argbuf_r) && (! \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf [0])))
        \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_buf  <= \main_map'_Bool_NatTupGo___MyDTNat_Bool___MyDTBool_Nat___Pointer_QTree_Boolma8R_1_bufchan_d ;
  
  /* sink (Ty Pointer_QTree_Nat) : (main_map'_Bool_Nat_resbuf,Pointer_QTree_Nat) > */
  assign {\main_map'_Bool_Nat_resbuf_r ,
          \main_map'_Bool_Nat_resbuf_dout } = {\main_map'_Bool_Nat_resbuf_rout ,
                                               \main_map'_Bool_Nat_resbuf_d };
  
  /* buf (Ty Pointer_QTree_Bool) : (q1a8T_3_destruct,Pointer_QTree_Bool) > (q1a8T_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1a8T_3_destruct_bufchan_d;
  logic q1a8T_3_destruct_bufchan_r;
  assign q1a8T_3_destruct_r = ((! q1a8T_3_destruct_bufchan_d[0]) || q1a8T_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8T_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8T_3_destruct_r)
        q1a8T_3_destruct_bufchan_d <= q1a8T_3_destruct_d;
  Pointer_QTree_Bool_t q1a8T_3_destruct_bufchan_buf;
  assign q1a8T_3_destruct_bufchan_r = (! q1a8T_3_destruct_bufchan_buf[0]);
  assign q1a8T_3_1_argbuf_d = (q1a8T_3_destruct_bufchan_buf[0] ? q1a8T_3_destruct_bufchan_buf :
                               q1a8T_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8T_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8T_3_1_argbuf_r && q1a8T_3_destruct_bufchan_buf[0]))
        q1a8T_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8T_3_1_argbuf_r) && (! q1a8T_3_destruct_bufchan_buf[0])))
        q1a8T_3_destruct_bufchan_buf <= q1a8T_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q1a8o_3_destruct,Pointer_QTree_Bool) > (q1a8o_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1a8o_3_destruct_bufchan_d;
  logic q1a8o_3_destruct_bufchan_r;
  assign q1a8o_3_destruct_r = ((! q1a8o_3_destruct_bufchan_d[0]) || q1a8o_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8o_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8o_3_destruct_r)
        q1a8o_3_destruct_bufchan_d <= q1a8o_3_destruct_d;
  Pointer_QTree_Bool_t q1a8o_3_destruct_bufchan_buf;
  assign q1a8o_3_destruct_bufchan_r = (! q1a8o_3_destruct_bufchan_buf[0]);
  assign q1a8o_3_1_argbuf_d = (q1a8o_3_destruct_bufchan_buf[0] ? q1a8o_3_destruct_bufchan_buf :
                               q1a8o_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8o_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8o_3_1_argbuf_r && q1a8o_3_destruct_bufchan_buf[0]))
        q1a8o_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8o_3_1_argbuf_r) && (! q1a8o_3_destruct_bufchan_buf[0])))
        q1a8o_3_destruct_bufchan_buf <= q1a8o_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2a8U_2_destruct,Pointer_QTree_Bool) > (q2a8U_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2a8U_2_destruct_bufchan_d;
  logic q2a8U_2_destruct_bufchan_r;
  assign q2a8U_2_destruct_r = ((! q2a8U_2_destruct_bufchan_d[0]) || q2a8U_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8U_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8U_2_destruct_r)
        q2a8U_2_destruct_bufchan_d <= q2a8U_2_destruct_d;
  Pointer_QTree_Bool_t q2a8U_2_destruct_bufchan_buf;
  assign q2a8U_2_destruct_bufchan_r = (! q2a8U_2_destruct_bufchan_buf[0]);
  assign q2a8U_2_1_argbuf_d = (q2a8U_2_destruct_bufchan_buf[0] ? q2a8U_2_destruct_bufchan_buf :
                               q2a8U_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8U_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8U_2_1_argbuf_r && q2a8U_2_destruct_bufchan_buf[0]))
        q2a8U_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8U_2_1_argbuf_r) && (! q2a8U_2_destruct_bufchan_buf[0])))
        q2a8U_2_destruct_bufchan_buf <= q2a8U_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2a8p_2_destruct,Pointer_QTree_Bool) > (q2a8p_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2a8p_2_destruct_bufchan_d;
  logic q2a8p_2_destruct_bufchan_r;
  assign q2a8p_2_destruct_r = ((! q2a8p_2_destruct_bufchan_d[0]) || q2a8p_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8p_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8p_2_destruct_r)
        q2a8p_2_destruct_bufchan_d <= q2a8p_2_destruct_d;
  Pointer_QTree_Bool_t q2a8p_2_destruct_bufchan_buf;
  assign q2a8p_2_destruct_bufchan_r = (! q2a8p_2_destruct_bufchan_buf[0]);
  assign q2a8p_2_1_argbuf_d = (q2a8p_2_destruct_bufchan_buf[0] ? q2a8p_2_destruct_bufchan_buf :
                               q2a8p_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8p_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8p_2_1_argbuf_r && q2a8p_2_destruct_bufchan_buf[0]))
        q2a8p_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8p_2_1_argbuf_r) && (! q2a8p_2_destruct_bufchan_buf[0])))
        q2a8p_2_destruct_bufchan_buf <= q2a8p_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3a8V_1_destruct,Pointer_QTree_Bool) > (q3a8V_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3a8V_1_destruct_bufchan_d;
  logic q3a8V_1_destruct_bufchan_r;
  assign q3a8V_1_destruct_r = ((! q3a8V_1_destruct_bufchan_d[0]) || q3a8V_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8V_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8V_1_destruct_r)
        q3a8V_1_destruct_bufchan_d <= q3a8V_1_destruct_d;
  Pointer_QTree_Bool_t q3a8V_1_destruct_bufchan_buf;
  assign q3a8V_1_destruct_bufchan_r = (! q3a8V_1_destruct_bufchan_buf[0]);
  assign q3a8V_1_1_argbuf_d = (q3a8V_1_destruct_bufchan_buf[0] ? q3a8V_1_destruct_bufchan_buf :
                               q3a8V_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8V_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8V_1_1_argbuf_r && q3a8V_1_destruct_bufchan_buf[0]))
        q3a8V_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8V_1_1_argbuf_r) && (! q3a8V_1_destruct_bufchan_buf[0])))
        q3a8V_1_destruct_bufchan_buf <= q3a8V_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3a8q_1_destruct,Pointer_QTree_Bool) > (q3a8q_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3a8q_1_destruct_bufchan_d;
  logic q3a8q_1_destruct_bufchan_r;
  assign q3a8q_1_destruct_r = ((! q3a8q_1_destruct_bufchan_d[0]) || q3a8q_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8q_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8q_1_destruct_r)
        q3a8q_1_destruct_bufchan_d <= q3a8q_1_destruct_d;
  Pointer_QTree_Bool_t q3a8q_1_destruct_bufchan_buf;
  assign q3a8q_1_destruct_bufchan_r = (! q3a8q_1_destruct_bufchan_buf[0]);
  assign q3a8q_1_1_argbuf_d = (q3a8q_1_destruct_bufchan_buf[0] ? q3a8q_1_destruct_bufchan_buf :
                               q3a8q_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8q_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8q_1_1_argbuf_r && q3a8q_1_destruct_bufchan_buf[0]))
        q3a8q_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8q_1_1_argbuf_r) && (! q3a8q_1_destruct_bufchan_buf[0])))
        q3a8q_1_destruct_bufchan_buf <= q3a8q_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q4a8W_destruct,Pointer_QTree_Bool) > (q4a8W_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q4a8W_destruct_bufchan_d;
  logic q4a8W_destruct_bufchan_r;
  assign q4a8W_destruct_r = ((! q4a8W_destruct_bufchan_d[0]) || q4a8W_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8W_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q4a8W_destruct_r) q4a8W_destruct_bufchan_d <= q4a8W_destruct_d;
  Pointer_QTree_Bool_t q4a8W_destruct_bufchan_buf;
  assign q4a8W_destruct_bufchan_r = (! q4a8W_destruct_bufchan_buf[0]);
  assign q4a8W_1_argbuf_d = (q4a8W_destruct_bufchan_buf[0] ? q4a8W_destruct_bufchan_buf :
                             q4a8W_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8W_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q4a8W_1_argbuf_r && q4a8W_destruct_bufchan_buf[0]))
        q4a8W_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q4a8W_1_argbuf_r) && (! q4a8W_destruct_bufchan_buf[0])))
        q4a8W_destruct_bufchan_buf <= q4a8W_destruct_bufchan_d;
  
  /* buf (Ty CT$wmAdd_Bool) : (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf,CT$wmAdd_Bool) > (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb,CT$wmAdd_Bool) */
  CT$wmAdd_Bool_t readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d;
  logic readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_r;
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_r = ((! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d[0]) || readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d <= {115'd0,
                                                               1'd0};
    else
      if (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_r)
        readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d <= readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_d;
  CT$wmAdd_Bool_t readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf;
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_r = (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0]);
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d = (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0] ? readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf :
                                                             readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= {115'd0,
                                                                 1'd0};
    else
      if ((readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_r && readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0]))
        readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= {115'd0,
                                                                   1'd0};
      else if (((! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_r) && (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf[0])))
        readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_buf <= readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_bufchan_d;
  
  /* fork (Ty CT$wmAdd_Bool) : (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb,CT$wmAdd_Bool) > [(lizzieLet23_1,CT$wmAdd_Bool),
                                                                                            (lizzieLet23_2,CT$wmAdd_Bool),
                                                                                            (lizzieLet23_3,CT$wmAdd_Bool),
                                                                                            (lizzieLet23_4,CT$wmAdd_Bool)] */
  logic [3:0] readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_done;
  assign lizzieLet23_1_d = {readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet23_2_d = {readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet23_3_d = {readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet23_4_d = {readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_done = (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted | ({lizzieLet23_4_d[0],
                                                                                                                           lizzieLet23_3_d[0],
                                                                                                                           lizzieLet23_2_d[0],
                                                                                                                           lizzieLet23_1_d[0]} & {lizzieLet23_4_r,
                                                                                                                                                  lizzieLet23_3_r,
                                                                                                                                                  lizzieLet23_2_r,
                                                                                                                                                  lizzieLet23_1_r}));
  assign readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_r = (& readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_emitted <= (readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_r ? 4'd0 :
                                                                 readPointer_CT$wmAdd_Boolscfarg_0_1_argbuf_rwb_done);
  
  /* buf (Ty CTmain_map'_Bool_Nat) : (readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf,CTmain_map'_Bool_Nat) > (readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb,CTmain_map'_Bool_Nat) */
  \CTmain_map'_Bool_Nat_t  \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d ;
  logic \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_r ;
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_r  = ((! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d [0]) || \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d  <= {67'd0,
                                                                          1'd0};
    else
      if (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_r )
        \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d  <= \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_d ;
  \CTmain_map'_Bool_Nat_t  \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf ;
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_r  = (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf [0]);
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d  = (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf [0] ? \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf  :
                                                                        \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf  <= {67'd0,
                                                                            1'd0};
    else
      if ((\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_r  && \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf [0]))
        \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf  <= {67'd0,
                                                                              1'd0};
      else if (((! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_r ) && (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf [0])))
        \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_buf  <= \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_bufchan_d ;
  
  /* fork (Ty CTmain_map'_Bool_Nat) : (readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb,CTmain_map'_Bool_Nat) > [(lizzieLet28_1,CTmain_map'_Bool_Nat),
                                                                                                                   (lizzieLet28_2,CTmain_map'_Bool_Nat),
                                                                                                                   (lizzieLet28_3,CTmain_map'_Bool_Nat),
                                                                                                                   (lizzieLet28_4,CTmain_map'_Bool_Nat)] */
  logic [3:0] \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted ;
  logic [3:0] \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_done ;
  assign lizzieLet28_1_d = {\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted [0]))};
  assign lizzieLet28_2_d = {\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted [1]))};
  assign lizzieLet28_3_d = {\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted [2]))};
  assign lizzieLet28_4_d = {\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted [3]))};
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_done  = (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted  | ({lizzieLet28_4_d[0],
                                                                                                                                                 lizzieLet28_3_d[0],
                                                                                                                                                 lizzieLet28_2_d[0],
                                                                                                                                                 lizzieLet28_1_d[0]} & {lizzieLet28_4_r,
                                                                                                                                                                        lizzieLet28_3_r,
                                                                                                                                                                        lizzieLet28_2_r,
                                                                                                                                                                        lizzieLet28_1_r}));
  assign \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_r  = (& \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted  <= 4'd0;
    else
      \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_emitted  <= (\readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_r  ? 4'd0 :
                                                                            \readPointer_CTmain_map'_Bool_Natscfarg_0_1_1_argbuf_rwb_done );
  
  /* buf (Ty Nat) : (readPointer_Natxa96_1_argbuf,Nat) > (readPointer_Natxa96_1_argbuf_rwb,Nat) */
  Nat_t readPointer_Natxa96_1_argbuf_bufchan_d;
  logic readPointer_Natxa96_1_argbuf_bufchan_r;
  assign readPointer_Natxa96_1_argbuf_r = ((! readPointer_Natxa96_1_argbuf_bufchan_d[0]) || readPointer_Natxa96_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_Natxa96_1_argbuf_bufchan_d <= {17'd0, 1'd0};
    else
      if (readPointer_Natxa96_1_argbuf_r)
        readPointer_Natxa96_1_argbuf_bufchan_d <= readPointer_Natxa96_1_argbuf_d;
  Nat_t readPointer_Natxa96_1_argbuf_bufchan_buf;
  assign readPointer_Natxa96_1_argbuf_bufchan_r = (! readPointer_Natxa96_1_argbuf_bufchan_buf[0]);
  assign readPointer_Natxa96_1_argbuf_rwb_d = (readPointer_Natxa96_1_argbuf_bufchan_buf[0] ? readPointer_Natxa96_1_argbuf_bufchan_buf :
                                               readPointer_Natxa96_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_Natxa96_1_argbuf_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((readPointer_Natxa96_1_argbuf_rwb_r && readPointer_Natxa96_1_argbuf_bufchan_buf[0]))
        readPointer_Natxa96_1_argbuf_bufchan_buf <= {17'd0, 1'd0};
      else if (((! readPointer_Natxa96_1_argbuf_rwb_r) && (! readPointer_Natxa96_1_argbuf_bufchan_buf[0])))
        readPointer_Natxa96_1_argbuf_bufchan_buf <= readPointer_Natxa96_1_argbuf_bufchan_d;
  
  /* fork (Ty Nat) : (readPointer_Natxa96_1_argbuf_rwb,Nat) > [(lizzieLet19_1,Nat),
                                                          (lizzieLet19_2,Nat),
                                                          (lizzieLet19_3,Nat),
                                                          (lizzieLet19_4,Nat)] */
  logic [3:0] readPointer_Natxa96_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_Natxa96_1_argbuf_rwb_done;
  assign lizzieLet19_1_d = {readPointer_Natxa96_1_argbuf_rwb_d[17:1],
                            (readPointer_Natxa96_1_argbuf_rwb_d[0] && (! readPointer_Natxa96_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet19_2_d = {readPointer_Natxa96_1_argbuf_rwb_d[17:1],
                            (readPointer_Natxa96_1_argbuf_rwb_d[0] && (! readPointer_Natxa96_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet19_3_d = {readPointer_Natxa96_1_argbuf_rwb_d[17:1],
                            (readPointer_Natxa96_1_argbuf_rwb_d[0] && (! readPointer_Natxa96_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet19_4_d = {readPointer_Natxa96_1_argbuf_rwb_d[17:1],
                            (readPointer_Natxa96_1_argbuf_rwb_d[0] && (! readPointer_Natxa96_1_argbuf_rwb_emitted[3]))};
  assign readPointer_Natxa96_1_argbuf_rwb_done = (readPointer_Natxa96_1_argbuf_rwb_emitted | ({lizzieLet19_4_d[0],
                                                                                               lizzieLet19_3_d[0],
                                                                                               lizzieLet19_2_d[0],
                                                                                               lizzieLet19_1_d[0]} & {lizzieLet19_4_r,
                                                                                                                      lizzieLet19_3_r,
                                                                                                                      lizzieLet19_2_r,
                                                                                                                      lizzieLet19_1_r}));
  assign readPointer_Natxa96_1_argbuf_rwb_r = (& readPointer_Natxa96_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_Natxa96_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_Natxa96_1_argbuf_rwb_emitted <= (readPointer_Natxa96_1_argbuf_rwb_r ? 4'd0 :
                                                   readPointer_Natxa96_1_argbuf_rwb_done);
  
  /* buf (Ty Nat) : (readPointer_Natya97_1_argbuf,Nat) > (readPointer_Natya97_1_argbuf_rwb,Nat) */
  Nat_t readPointer_Natya97_1_argbuf_bufchan_d;
  logic readPointer_Natya97_1_argbuf_bufchan_r;
  assign readPointer_Natya97_1_argbuf_r = ((! readPointer_Natya97_1_argbuf_bufchan_d[0]) || readPointer_Natya97_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_Natya97_1_argbuf_bufchan_d <= {17'd0, 1'd0};
    else
      if (readPointer_Natya97_1_argbuf_r)
        readPointer_Natya97_1_argbuf_bufchan_d <= readPointer_Natya97_1_argbuf_d;
  Nat_t readPointer_Natya97_1_argbuf_bufchan_buf;
  assign readPointer_Natya97_1_argbuf_bufchan_r = (! readPointer_Natya97_1_argbuf_bufchan_buf[0]);
  assign readPointer_Natya97_1_argbuf_rwb_d = (readPointer_Natya97_1_argbuf_bufchan_buf[0] ? readPointer_Natya97_1_argbuf_bufchan_buf :
                                               readPointer_Natya97_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_Natya97_1_argbuf_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((readPointer_Natya97_1_argbuf_rwb_r && readPointer_Natya97_1_argbuf_bufchan_buf[0]))
        readPointer_Natya97_1_argbuf_bufchan_buf <= {17'd0, 1'd0};
      else if (((! readPointer_Natya97_1_argbuf_rwb_r) && (! readPointer_Natya97_1_argbuf_bufchan_buf[0])))
        readPointer_Natya97_1_argbuf_bufchan_buf <= readPointer_Natya97_1_argbuf_bufchan_d;
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolma8R_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolma8R_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolma8R_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolma8R_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolma8R_1_argbuf_r = ((! readPointer_QTree_Boolma8R_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolma8R_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolma8R_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolma8R_1_argbuf_r)
        readPointer_QTree_Boolma8R_1_argbuf_bufchan_d <= readPointer_QTree_Boolma8R_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolma8R_1_argbuf_bufchan_r = (! readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolma8R_1_argbuf_rwb_d = (readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf :
                                                      readPointer_QTree_Boolma8R_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolma8R_1_argbuf_rwb_r && readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolma8R_1_argbuf_rwb_r) && (! readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolma8R_1_argbuf_bufchan_buf <= readPointer_QTree_Boolma8R_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolma8R_1_argbuf_rwb,QTree_Bool) > [(lizzieLet13_1,QTree_Bool),
                                                                               (lizzieLet13_2,QTree_Bool),
                                                                               (lizzieLet13_3,QTree_Bool),
                                                                               (lizzieLet13_4,QTree_Bool),
                                                                               (lizzieLet13_5,QTree_Bool),
                                                                               (lizzieLet13_6,QTree_Bool)] */
  logic [5:0] readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted;
  logic [5:0] readPointer_QTree_Boolma8R_1_argbuf_rwb_done;
  assign lizzieLet13_1_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet13_2_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet13_3_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet13_4_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet13_5_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[4]))};
  assign lizzieLet13_6_d = {readPointer_QTree_Boolma8R_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolma8R_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted[5]))};
  assign readPointer_QTree_Boolma8R_1_argbuf_rwb_done = (readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted | ({lizzieLet13_6_d[0],
                                                                                                             lizzieLet13_5_d[0],
                                                                                                             lizzieLet13_4_d[0],
                                                                                                             lizzieLet13_3_d[0],
                                                                                                             lizzieLet13_2_d[0],
                                                                                                             lizzieLet13_1_d[0]} & {lizzieLet13_6_r,
                                                                                                                                    lizzieLet13_5_r,
                                                                                                                                    lizzieLet13_4_r,
                                                                                                                                    lizzieLet13_3_r,
                                                                                                                                    lizzieLet13_2_r,
                                                                                                                                    lizzieLet13_1_r}));
  assign readPointer_QTree_Boolma8R_1_argbuf_rwb_r = (& readPointer_QTree_Boolma8R_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted <= 6'd0;
    else
      readPointer_QTree_Boolma8R_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolma8R_1_argbuf_rwb_r ? 6'd0 :
                                                          readPointer_QTree_Boolma8R_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolw1skC_1_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_r = ((! readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolw1skC_1_1_argbuf_r)
        readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d <= readPointer_QTree_Boolw1skC_1_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_r = (! readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d = (readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf :
                                                         readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf <= {66'd0,
                                                             1'd0};
    else
      if ((readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_r && readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf <= {66'd0,
                                                               1'd0};
      else if (((! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_r) && (! readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_buf <= readPointer_QTree_Boolw1skC_1_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb,QTree_Bool) > [(lizzieLet3_1,QTree_Bool),
                                                                                  (lizzieLet3_2,QTree_Bool),
                                                                                  (lizzieLet3_3,QTree_Bool),
                                                                                  (lizzieLet3_4,QTree_Bool),
                                                                                  (lizzieLet3_5,QTree_Bool),
                                                                                  (lizzieLet3_6,QTree_Bool),
                                                                                  (lizzieLet3_7,QTree_Bool),
                                                                                  (lizzieLet3_8,QTree_Bool)] */
  logic [7:0] readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted;
  logic [7:0] readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_done;
  assign lizzieLet3_1_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet3_2_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet3_3_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet3_4_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet3_5_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[4]))};
  assign lizzieLet3_6_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[5]))};
  assign lizzieLet3_7_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[6]))};
  assign lizzieLet3_8_d = {readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted[7]))};
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_done = (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted | ({lizzieLet3_8_d[0],
                                                                                                                   lizzieLet3_7_d[0],
                                                                                                                   lizzieLet3_6_d[0],
                                                                                                                   lizzieLet3_5_d[0],
                                                                                                                   lizzieLet3_4_d[0],
                                                                                                                   lizzieLet3_3_d[0],
                                                                                                                   lizzieLet3_2_d[0],
                                                                                                                   lizzieLet3_1_d[0]} & {lizzieLet3_8_r,
                                                                                                                                         lizzieLet3_7_r,
                                                                                                                                         lizzieLet3_6_r,
                                                                                                                                         lizzieLet3_5_r,
                                                                                                                                         lizzieLet3_4_r,
                                                                                                                                         lizzieLet3_3_r,
                                                                                                                                         lizzieLet3_2_r,
                                                                                                                                         lizzieLet3_1_r}));
  assign readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_r = (& readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted <= 8'd0;
    else
      readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_r ? 8'd0 :
                                                             readPointer_QTree_Boolw1skC_1_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolw2skD_1_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolw2skD_1_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolw2skD_1_1_argbuf_r = ((! readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolw2skD_1_1_argbuf_r)
        readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d <= readPointer_QTree_Boolw2skD_1_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_r = (! readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_d = (readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf :
                                                         readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf <= {66'd0,
                                                             1'd0};
    else
      if ((readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_r && readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf <= {66'd0,
                                                               1'd0};
      else if (((! readPointer_QTree_Boolw2skD_1_1_argbuf_rwb_r) && (! readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_buf <= readPointer_QTree_Boolw2skD_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (sc_0_5_destruct,Pointer_CT$wmAdd_Bool) > (sc_0_5_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t sc_0_5_destruct_bufchan_d;
  logic sc_0_5_destruct_bufchan_r;
  assign sc_0_5_destruct_r = ((! sc_0_5_destruct_bufchan_d[0]) || sc_0_5_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_5_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_5_destruct_r)
        sc_0_5_destruct_bufchan_d <= sc_0_5_destruct_d;
  Pointer_CT$wmAdd_Bool_t sc_0_5_destruct_bufchan_buf;
  assign sc_0_5_destruct_bufchan_r = (! sc_0_5_destruct_bufchan_buf[0]);
  assign sc_0_5_1_argbuf_d = (sc_0_5_destruct_bufchan_buf[0] ? sc_0_5_destruct_bufchan_buf :
                              sc_0_5_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_5_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sc_0_5_1_argbuf_r && sc_0_5_destruct_bufchan_buf[0]))
        sc_0_5_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sc_0_5_1_argbuf_r) && (! sc_0_5_destruct_bufchan_buf[0])))
        sc_0_5_destruct_bufchan_buf <= sc_0_5_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (sc_0_9_destruct,Pointer_CTmain_map'_Bool_Nat) > (sc_0_9_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_9_destruct_bufchan_d;
  logic sc_0_9_destruct_bufchan_r;
  assign sc_0_9_destruct_r = ((! sc_0_9_destruct_bufchan_d[0]) || sc_0_9_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_9_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_9_destruct_r)
        sc_0_9_destruct_bufchan_d <= sc_0_9_destruct_d;
  \Pointer_CTmain_map'_Bool_Nat_t  sc_0_9_destruct_bufchan_buf;
  assign sc_0_9_destruct_bufchan_r = (! sc_0_9_destruct_bufchan_buf[0]);
  assign sc_0_9_1_argbuf_d = (sc_0_9_destruct_bufchan_buf[0] ? sc_0_9_destruct_bufchan_buf :
                              sc_0_9_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_9_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sc_0_9_1_argbuf_r && sc_0_9_destruct_bufchan_buf[0]))
        sc_0_9_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sc_0_9_1_argbuf_r) && (! sc_0_9_destruct_bufchan_buf[0])))
        sc_0_9_destruct_bufchan_buf <= sc_0_9_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (scfarg_0_1_goMux_mux,Pointer_CTmain_map'_Bool_Nat) > (scfarg_0_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  scfarg_0_1_goMux_mux_bufchan_d;
  logic scfarg_0_1_goMux_mux_bufchan_r;
  assign scfarg_0_1_goMux_mux_r = ((! scfarg_0_1_goMux_mux_bufchan_d[0]) || scfarg_0_1_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_1_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_1_goMux_mux_r)
        scfarg_0_1_goMux_mux_bufchan_d <= scfarg_0_1_goMux_mux_d;
  \Pointer_CTmain_map'_Bool_Nat_t  scfarg_0_1_goMux_mux_bufchan_buf;
  assign scfarg_0_1_goMux_mux_bufchan_r = (! scfarg_0_1_goMux_mux_bufchan_buf[0]);
  assign scfarg_0_1_1_argbuf_d = (scfarg_0_1_goMux_mux_bufchan_buf[0] ? scfarg_0_1_goMux_mux_bufchan_buf :
                                  scfarg_0_1_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_1_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((scfarg_0_1_1_argbuf_r && scfarg_0_1_goMux_mux_bufchan_buf[0]))
        scfarg_0_1_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! scfarg_0_1_1_argbuf_r) && (! scfarg_0_1_goMux_mux_bufchan_buf[0])))
        scfarg_0_1_goMux_mux_bufchan_buf <= scfarg_0_1_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (scfarg_0_goMux_mux,Pointer_CT$wmAdd_Bool) > (scfarg_0_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t scfarg_0_goMux_mux_bufchan_d;
  logic scfarg_0_goMux_mux_bufchan_r;
  assign scfarg_0_goMux_mux_r = ((! scfarg_0_goMux_mux_bufchan_d[0]) || scfarg_0_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) scfarg_0_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_goMux_mux_r)
        scfarg_0_goMux_mux_bufchan_d <= scfarg_0_goMux_mux_d;
  Pointer_CT$wmAdd_Bool_t scfarg_0_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty Pointer_QTree_Bool) : (t1a8t_3_destruct,Pointer_QTree_Bool) > (t1a8t_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t1a8t_3_destruct_bufchan_d;
  logic t1a8t_3_destruct_bufchan_r;
  assign t1a8t_3_destruct_r = ((! t1a8t_3_destruct_bufchan_d[0]) || t1a8t_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8t_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t1a8t_3_destruct_r)
        t1a8t_3_destruct_bufchan_d <= t1a8t_3_destruct_d;
  Pointer_QTree_Bool_t t1a8t_3_destruct_bufchan_buf;
  assign t1a8t_3_destruct_bufchan_r = (! t1a8t_3_destruct_bufchan_buf[0]);
  assign t1a8t_3_1_argbuf_d = (t1a8t_3_destruct_bufchan_buf[0] ? t1a8t_3_destruct_bufchan_buf :
                               t1a8t_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8t_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t1a8t_3_1_argbuf_r && t1a8t_3_destruct_bufchan_buf[0]))
        t1a8t_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t1a8t_3_1_argbuf_r) && (! t1a8t_3_destruct_bufchan_buf[0])))
        t1a8t_3_destruct_bufchan_buf <= t1a8t_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t2a8u_2_destruct,Pointer_QTree_Bool) > (t2a8u_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t2a8u_2_destruct_bufchan_d;
  logic t2a8u_2_destruct_bufchan_r;
  assign t2a8u_2_destruct_r = ((! t2a8u_2_destruct_bufchan_d[0]) || t2a8u_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8u_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t2a8u_2_destruct_r)
        t2a8u_2_destruct_bufchan_d <= t2a8u_2_destruct_d;
  Pointer_QTree_Bool_t t2a8u_2_destruct_bufchan_buf;
  assign t2a8u_2_destruct_bufchan_r = (! t2a8u_2_destruct_bufchan_buf[0]);
  assign t2a8u_2_1_argbuf_d = (t2a8u_2_destruct_bufchan_buf[0] ? t2a8u_2_destruct_bufchan_buf :
                               t2a8u_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8u_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t2a8u_2_1_argbuf_r && t2a8u_2_destruct_bufchan_buf[0]))
        t2a8u_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t2a8u_2_1_argbuf_r) && (! t2a8u_2_destruct_bufchan_buf[0])))
        t2a8u_2_destruct_bufchan_buf <= t2a8u_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t3a8v_1_destruct,Pointer_QTree_Bool) > (t3a8v_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t3a8v_1_destruct_bufchan_d;
  logic t3a8v_1_destruct_bufchan_r;
  assign t3a8v_1_destruct_r = ((! t3a8v_1_destruct_bufchan_d[0]) || t3a8v_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8v_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t3a8v_1_destruct_r)
        t3a8v_1_destruct_bufchan_d <= t3a8v_1_destruct_d;
  Pointer_QTree_Bool_t t3a8v_1_destruct_bufchan_buf;
  assign t3a8v_1_destruct_bufchan_r = (! t3a8v_1_destruct_bufchan_buf[0]);
  assign t3a8v_1_1_argbuf_d = (t3a8v_1_destruct_bufchan_buf[0] ? t3a8v_1_destruct_bufchan_buf :
                               t3a8v_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8v_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t3a8v_1_1_argbuf_r && t3a8v_1_destruct_bufchan_buf[0]))
        t3a8v_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t3a8v_1_1_argbuf_r) && (! t3a8v_1_destruct_bufchan_buf[0])))
        t3a8v_1_destruct_bufchan_buf <= t3a8v_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t4a8w_destruct,Pointer_QTree_Bool) > (t4a8w_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t4a8w_destruct_bufchan_d;
  logic t4a8w_destruct_bufchan_r;
  assign t4a8w_destruct_r = ((! t4a8w_destruct_bufchan_d[0]) || t4a8w_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8w_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t4a8w_destruct_r) t4a8w_destruct_bufchan_d <= t4a8w_destruct_d;
  Pointer_QTree_Bool_t t4a8w_destruct_bufchan_buf;
  assign t4a8w_destruct_bufchan_r = (! t4a8w_destruct_bufchan_buf[0]);
  assign t4a8w_1_argbuf_d = (t4a8w_destruct_bufchan_buf[0] ? t4a8w_destruct_bufchan_buf :
                             t4a8w_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8w_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t4a8w_1_argbuf_r && t4a8w_destruct_bufchan_buf[0]))
        t4a8w_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t4a8w_1_argbuf_r) && (! t4a8w_destruct_bufchan_buf[0])))
        t4a8w_destruct_bufchan_buf <= t4a8w_destruct_bufchan_d;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (to_nat1TupGo_1,TupGo) > [(to_nat1TupGogo_12,Go)] */
  assign to_nat1TupGogo_12_d = to_nat1TupGo_1_d[0];
  assign to_nat1TupGo_1_r = to_nat1TupGogo_12_r;
  
  /* dcon (Ty Nat,
      Dcon Zero) : [(to_nat1TupGogo_12,Go)] > (go_12_1Zero,Nat) */
  assign go_12_1Zero_d = Zero_dc((& {to_nat1TupGogo_12_d[0]}), to_nat1TupGogo_12_d);
  assign {to_nat1TupGogo_12_r} = {1 {(go_12_1Zero_r && go_12_1Zero_d[0])}};
  
  /* buf (Ty MyBool) : (va8S_destruct,MyBool) > (va8S_1_argbuf,MyBool) */
  MyBool_t va8S_destruct_bufchan_d;
  logic va8S_destruct_bufchan_r;
  assign va8S_destruct_r = ((! va8S_destruct_bufchan_d[0]) || va8S_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8S_destruct_bufchan_d <= {1'd0, 1'd0};
    else
      if (va8S_destruct_r) va8S_destruct_bufchan_d <= va8S_destruct_d;
  MyBool_t va8S_destruct_bufchan_buf;
  assign va8S_destruct_bufchan_r = (! va8S_destruct_bufchan_buf[0]);
  assign va8S_1_argbuf_d = (va8S_destruct_bufchan_buf[0] ? va8S_destruct_bufchan_buf :
                            va8S_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8S_destruct_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((va8S_1_argbuf_r && va8S_destruct_bufchan_buf[0]))
        va8S_destruct_bufchan_buf <= {1'd0, 1'd0};
      else if (((! va8S_1_argbuf_r) && (! va8S_destruct_bufchan_buf[0])))
        va8S_destruct_bufchan_buf <= va8S_destruct_bufchan_d;
  
  /* buf (Ty MyBool) : (va8j_destruct,MyBool) > (va8j_1_argbuf,MyBool) */
  MyBool_t va8j_destruct_bufchan_d;
  logic va8j_destruct_bufchan_r;
  assign va8j_destruct_r = ((! va8j_destruct_bufchan_d[0]) || va8j_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8j_destruct_bufchan_d <= {1'd0, 1'd0};
    else
      if (va8j_destruct_r) va8j_destruct_bufchan_d <= va8j_destruct_d;
  MyBool_t va8j_destruct_bufchan_buf;
  assign va8j_destruct_bufchan_r = (! va8j_destruct_bufchan_buf[0]);
  assign va8j_1_argbuf_d = (va8j_destruct_bufchan_buf[0] ? va8j_destruct_bufchan_buf :
                            va8j_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8j_destruct_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((va8j_1_argbuf_r && va8j_destruct_bufchan_buf[0]))
        va8j_destruct_bufchan_buf <= {1'd0, 1'd0};
      else if (((! va8j_1_argbuf_r) && (! va8j_destruct_bufchan_buf[0])))
        va8j_destruct_bufchan_buf <= va8j_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (w1skC_1_1,Pointer_QTree_Bool) > (w1skC_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t w1skC_1_1_bufchan_d;
  logic w1skC_1_1_bufchan_r;
  assign w1skC_1_1_r = ((! w1skC_1_1_bufchan_d[0]) || w1skC_1_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w1skC_1_1_bufchan_d <= {16'd0, 1'd0};
    else if (w1skC_1_1_r) w1skC_1_1_bufchan_d <= w1skC_1_1_d;
  Pointer_QTree_Bool_t w1skC_1_1_bufchan_buf;
  assign w1skC_1_1_bufchan_r = (! w1skC_1_1_bufchan_buf[0]);
  assign w1skC_1_1_argbuf_d = (w1skC_1_1_bufchan_buf[0] ? w1skC_1_1_bufchan_buf :
                               w1skC_1_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w1skC_1_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((w1skC_1_1_argbuf_r && w1skC_1_1_bufchan_buf[0]))
        w1skC_1_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! w1skC_1_1_argbuf_r) && (! w1skC_1_1_bufchan_buf[0])))
        w1skC_1_1_bufchan_buf <= w1skC_1_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (w1skC_1_goMux_mux,Pointer_QTree_Bool) > [(w1skC_1_1,Pointer_QTree_Bool),
                                                                         (w1skC_1_2,Pointer_QTree_Bool)] */
  logic [1:0] w1skC_1_goMux_mux_emitted;
  logic [1:0] w1skC_1_goMux_mux_done;
  assign w1skC_1_1_d = {w1skC_1_goMux_mux_d[16:1],
                        (w1skC_1_goMux_mux_d[0] && (! w1skC_1_goMux_mux_emitted[0]))};
  assign w1skC_1_2_d = {w1skC_1_goMux_mux_d[16:1],
                        (w1skC_1_goMux_mux_d[0] && (! w1skC_1_goMux_mux_emitted[1]))};
  assign w1skC_1_goMux_mux_done = (w1skC_1_goMux_mux_emitted | ({w1skC_1_2_d[0],
                                                                 w1skC_1_1_d[0]} & {w1skC_1_2_r,
                                                                                    w1skC_1_1_r}));
  assign w1skC_1_goMux_mux_r = (& w1skC_1_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w1skC_1_goMux_mux_emitted <= 2'd0;
    else
      w1skC_1_goMux_mux_emitted <= (w1skC_1_goMux_mux_r ? 2'd0 :
                                    w1skC_1_goMux_mux_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (w2skD_1_1,Pointer_QTree_Bool) > (w2skD_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t w2skD_1_1_bufchan_d;
  logic w2skD_1_1_bufchan_r;
  assign w2skD_1_1_r = ((! w2skD_1_1_bufchan_d[0]) || w2skD_1_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w2skD_1_1_bufchan_d <= {16'd0, 1'd0};
    else if (w2skD_1_1_r) w2skD_1_1_bufchan_d <= w2skD_1_1_d;
  Pointer_QTree_Bool_t w2skD_1_1_bufchan_buf;
  assign w2skD_1_1_bufchan_r = (! w2skD_1_1_bufchan_buf[0]);
  assign w2skD_1_1_argbuf_d = (w2skD_1_1_bufchan_buf[0] ? w2skD_1_1_bufchan_buf :
                               w2skD_1_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w2skD_1_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((w2skD_1_1_argbuf_r && w2skD_1_1_bufchan_buf[0]))
        w2skD_1_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! w2skD_1_1_argbuf_r) && (! w2skD_1_1_bufchan_buf[0])))
        w2skD_1_1_bufchan_buf <= w2skD_1_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (w2skD_1_goMux_mux,Pointer_QTree_Bool) > [(w2skD_1_1,Pointer_QTree_Bool),
                                                                         (w2skD_1_2,Pointer_QTree_Bool)] */
  logic [1:0] w2skD_1_goMux_mux_emitted;
  logic [1:0] w2skD_1_goMux_mux_done;
  assign w2skD_1_1_d = {w2skD_1_goMux_mux_d[16:1],
                        (w2skD_1_goMux_mux_d[0] && (! w2skD_1_goMux_mux_emitted[0]))};
  assign w2skD_1_2_d = {w2skD_1_goMux_mux_d[16:1],
                        (w2skD_1_goMux_mux_d[0] && (! w2skD_1_goMux_mux_emitted[1]))};
  assign w2skD_1_goMux_mux_done = (w2skD_1_goMux_mux_emitted | ({w2skD_1_2_d[0],
                                                                 w2skD_1_1_d[0]} & {w2skD_1_2_r,
                                                                                    w2skD_1_1_r}));
  assign w2skD_1_goMux_mux_r = (& w2skD_1_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) w2skD_1_goMux_mux_emitted <= 2'd0;
    else
      w2skD_1_goMux_mux_emitted <= (w2skD_1_goMux_mux_r ? 2'd0 :
                                    w2skD_1_goMux_mux_done);
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet0_1_argbuf,Pointer_CT$wmAdd_Bool) > (writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_r = ((! writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet0_1_argbuf_r)
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d <= writeCT$wmAdd_BoollizzieLet0_1_argbuf_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_r = (! writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf[0]);
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_d = (writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf :
                                                        writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_r && writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_r) && (! writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_buf <= writeCT$wmAdd_BoollizzieLet0_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) > (lizzieLet12_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_r = ((! writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_r)
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d <= writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_r = (! writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet12_1_argbuf_d = (writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf :
                                   writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((lizzieLet12_1_argbuf_r && writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! lizzieLet12_1_argbuf_r) && (! writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_buf <= writeCT$wmAdd_BoollizzieLet0_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet10_1_argbuf,Pointer_CT$wmAdd_Bool) > (writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_r = ((! writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet10_1_argbuf_r)
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d <= writeCT$wmAdd_BoollizzieLet10_1_argbuf_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_r = (! writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf[0]);
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_d = (writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf :
                                                         writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_r && writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_r) && (! writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_buf <= writeCT$wmAdd_BoollizzieLet10_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) > (sca3_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_r = ((! writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                               1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_r)
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d <= writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_r = (! writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_argbuf_d = (writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf :
                            writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
    else
      if ((sca3_1_argbuf_r && writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
      else if (((! sca3_1_argbuf_r) && (! writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_buf <= writeCT$wmAdd_BoollizzieLet10_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet24_1_argbuf,Pointer_CT$wmAdd_Bool) > (writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_r = ((! writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet24_1_argbuf_r)
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d <= writeCT$wmAdd_BoollizzieLet24_1_argbuf_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_r = (! writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf[0]);
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_d = (writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf :
                                                         writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_r && writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_r) && (! writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_buf <= writeCT$wmAdd_BoollizzieLet24_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) > (sca2_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_r = ((! writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                               1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_r)
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d <= writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_r = (! writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_argbuf_d = (writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf :
                            writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
    else
      if ((sca2_1_argbuf_r && writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
      else if (((! sca2_1_argbuf_r) && (! writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_buf <= writeCT$wmAdd_BoollizzieLet24_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet25_1_argbuf,Pointer_CT$wmAdd_Bool) > (writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_r = ((! writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet25_1_argbuf_r)
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d <= writeCT$wmAdd_BoollizzieLet25_1_argbuf_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_r = (! writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf[0]);
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_d = (writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf :
                                                         writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_r && writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_r) && (! writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_buf <= writeCT$wmAdd_BoollizzieLet25_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) > (sca1_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_r = ((! writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                               1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_r)
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d <= writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_r = (! writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_argbuf_d = (writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf :
                            writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
    else
      if ((sca1_1_argbuf_r && writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
      else if (((! sca1_1_argbuf_r) && (! writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_buf <= writeCT$wmAdd_BoollizzieLet25_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet26_1_argbuf,Pointer_CT$wmAdd_Bool) > (writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_r = ((! writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet26_1_argbuf_r)
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d <= writeCT$wmAdd_BoollizzieLet26_1_argbuf_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_r = (! writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf[0]);
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_d = (writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf :
                                                         writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_r && writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_r) && (! writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_buf <= writeCT$wmAdd_BoollizzieLet26_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wmAdd_Bool) : (writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb,Pointer_CT$wmAdd_Bool) > (sca0_1_argbuf,Pointer_CT$wmAdd_Bool) */
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d;
  logic writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_r;
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_r = ((! writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d[0]) || writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                               1'd0};
    else
      if (writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_r)
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d <= writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_d;
  Pointer_CT$wmAdd_Bool_t writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_r = (! writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_argbuf_d = (writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf :
                            writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
    else
      if ((sca0_1_argbuf_r && writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
      else if (((! sca0_1_argbuf_r) && (! writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_buf <= writeCT$wmAdd_BoollizzieLet26_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > (writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d  <= {16'd0,
                                                                    1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_r )
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf [0]);
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_d  = (\writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf  :
                                                                  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf  <= {16'd0,
                                                                      1'd0};
    else
      if ((\writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_r  && \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf  <= {16'd0,
                                                                        1'd0};
      else if (((! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_r ) && (! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) > (sca3_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                        1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_r )
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf [0]);
  assign sca3_1_1_argbuf_d = (\writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf  :
                              \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                          1'd0};
    else
      if ((sca3_1_1_argbuf_r && \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                            1'd0};
      else if (((! sca3_1_1_argbuf_r) && (! \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet17_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > (writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d  <= {16'd0,
                                                                    1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_r )
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf [0]);
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_d  = (\writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf  :
                                                                  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf  <= {16'd0,
                                                                      1'd0};
    else
      if ((\writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_r  && \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf  <= {16'd0,
                                                                        1'd0};
      else if (((! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_r ) && (! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) > (lizzieLet5_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                        1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_r )
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf [0]);
  assign lizzieLet5_1_1_argbuf_d = (\writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf  :
                                    \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                          1'd0};
    else
      if ((lizzieLet5_1_1_argbuf_r && \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                            1'd0};
      else if (((! lizzieLet5_1_1_argbuf_r) && (! \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet22_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > (writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d  <= {16'd0,
                                                                    1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_r )
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf [0]);
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_d  = (\writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf  :
                                                                  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf  <= {16'd0,
                                                                      1'd0};
    else
      if ((\writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_r  && \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf  <= {16'd0,
                                                                        1'd0};
      else if (((! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_r ) && (! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) > (sca2_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                        1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_r )
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf [0]);
  assign sca2_1_1_argbuf_d = (\writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf  :
                              \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                          1'd0};
    else
      if ((sca2_1_1_argbuf_r && \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                            1'd0};
      else if (((! sca2_1_1_argbuf_r) && (! \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet29_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > (writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d  <= {16'd0,
                                                                    1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_r )
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf [0]);
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_d  = (\writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf  :
                                                                  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf  <= {16'd0,
                                                                      1'd0};
    else
      if ((\writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_r  && \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf  <= {16'd0,
                                                                        1'd0};
      else if (((! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_r ) && (! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) > (sca1_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                        1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_r )
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf [0]);
  assign sca1_1_1_argbuf_d = (\writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf  :
                              \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                          1'd0};
    else
      if ((sca1_1_1_argbuf_r && \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                            1'd0};
      else if (((! sca1_1_1_argbuf_r) && (! \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet30_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf,Pointer_CTmain_map'_Bool_Nat) > (writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d  <= {16'd0,
                                                                    1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_r )
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf [0]);
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_d  = (\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf  :
                                                                  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf  <= {16'd0,
                                                                      1'd0};
    else
      if ((\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_r  && \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf  <= {16'd0,
                                                                        1'd0};
      else if (((! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_r ) && (! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTmain_map'_Bool_Nat) : (writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb,Pointer_CTmain_map'_Bool_Nat) > (sca0_1_1_argbuf,Pointer_CTmain_map'_Bool_Nat) */
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d ;
  logic \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_r ;
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_r  = ((! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d [0]) || \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                        1'd0};
    else
      if (\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_r )
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d  <= \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_d ;
  \Pointer_CTmain_map'_Bool_Nat_t  \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_r  = (! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf [0]);
  assign sca0_1_1_argbuf_d = (\writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf [0] ? \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf  :
                              \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                          1'd0};
    else
      if ((sca0_1_1_argbuf_r && \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                            1'd0};
      else if (((! sca0_1_1_argbuf_r) && (! \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_buf  <= \writeCTmain_map'_Bool_NatlizzieLet31_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet1_1_argbuf,Pointer_Nat) > (writeNatlizzieLet1_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_bufchan_d;
  logic writeNatlizzieLet1_1_argbuf_bufchan_r;
  assign writeNatlizzieLet1_1_argbuf_r = ((! writeNatlizzieLet1_1_argbuf_bufchan_d[0]) || writeNatlizzieLet1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet1_1_argbuf_r)
        writeNatlizzieLet1_1_argbuf_bufchan_d <= writeNatlizzieLet1_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet1_1_argbuf_bufchan_r = (! writeNatlizzieLet1_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet1_1_argbuf_rwb_d = (writeNatlizzieLet1_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet1_1_argbuf_bufchan_buf :
                                              writeNatlizzieLet1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet1_1_argbuf_rwb_r && writeNatlizzieLet1_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet1_1_argbuf_rwb_r) && (! writeNatlizzieLet1_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet1_1_argbuf_bufchan_buf <= writeNatlizzieLet1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux,Pointer_Nat) > (applyfnBool_Nat_5_resbuf,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d;
  logic writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_r;
  assign writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_r = ((! writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d[0]) || writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d <= {16'd0,
                                                                          1'd0};
    else
      if (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_r)
        writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d <= writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_d;
  Pointer_Nat_t writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf;
  assign writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_r = (! writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf[0]);
  assign applyfnBool_Nat_5_resbuf_d = (writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf[0] ? writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf :
                                       writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf <= {16'd0,
                                                                            1'd0};
    else
      if ((applyfnBool_Nat_5_resbuf_r && writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf[0]))
        writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf <= {16'd0,
                                                                              1'd0};
      else if (((! applyfnBool_Nat_5_resbuf_r) && (! writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf[0])))
        writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_buf <= writeNatlizzieLet1_1_argbuf_rwbto_nat1_resbuf_mux_mux_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet2_1_argbuf,Pointer_Nat) > (writeNatlizzieLet2_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_bufchan_d;
  logic writeNatlizzieLet2_1_argbuf_bufchan_r;
  assign writeNatlizzieLet2_1_argbuf_r = ((! writeNatlizzieLet2_1_argbuf_bufchan_d[0]) || writeNatlizzieLet2_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet2_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet2_1_argbuf_r)
        writeNatlizzieLet2_1_argbuf_bufchan_d <= writeNatlizzieLet2_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet2_1_argbuf_bufchan_r = (! writeNatlizzieLet2_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet2_1_argbuf_rwb_d = (writeNatlizzieLet2_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet2_1_argbuf_bufchan_buf :
                                              writeNatlizzieLet2_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet2_1_argbuf_rwb_r && writeNatlizzieLet2_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet2_1_argbuf_rwb_r) && (! writeNatlizzieLet2_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet2_1_argbuf_bufchan_buf <= writeNatlizzieLet2_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet2_1_argbuf_rwb,Pointer_Nat) > (es_1_1_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_rwb_bufchan_d;
  logic writeNatlizzieLet2_1_argbuf_rwb_bufchan_r;
  assign writeNatlizzieLet2_1_argbuf_rwb_r = ((! writeNatlizzieLet2_1_argbuf_rwb_bufchan_d[0]) || writeNatlizzieLet2_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet2_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet2_1_argbuf_rwb_r)
        writeNatlizzieLet2_1_argbuf_rwb_bufchan_d <= writeNatlizzieLet2_1_argbuf_rwb_d;
  Pointer_Nat_t writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf;
  assign writeNatlizzieLet2_1_argbuf_rwb_bufchan_r = (! writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf[0]);
  assign es_1_1_1_argbuf_d = (writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf[0] ? writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf :
                              writeNatlizzieLet2_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_1_1_1_argbuf_r && writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf[0]))
        writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_1_1_1_argbuf_r) && (! writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf[0])))
        writeNatlizzieLet2_1_argbuf_rwb_bufchan_buf <= writeNatlizzieLet2_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet33_1_argbuf,Pointer_Nat) > (writeNatlizzieLet33_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet33_1_argbuf_bufchan_d;
  logic writeNatlizzieLet33_1_argbuf_bufchan_r;
  assign writeNatlizzieLet33_1_argbuf_r = ((! writeNatlizzieLet33_1_argbuf_bufchan_d[0]) || writeNatlizzieLet33_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet33_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet33_1_argbuf_r)
        writeNatlizzieLet33_1_argbuf_bufchan_d <= writeNatlizzieLet33_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet33_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet33_1_argbuf_bufchan_r = (! writeNatlizzieLet33_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet33_1_argbuf_rwb_d = (writeNatlizzieLet33_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet33_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet33_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet33_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet33_1_argbuf_rwb_r && writeNatlizzieLet33_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet33_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet33_1_argbuf_rwb_r) && (! writeNatlizzieLet33_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet33_1_argbuf_bufchan_buf <= writeNatlizzieLet33_1_argbuf_bufchan_d;
  
  /* dcon (Ty Nat,
      Dcon Succ) : [(writeNatlizzieLet33_1_argbuf_rwb,Pointer_Nat)] > (lizzieLet0_1_1Succ,Nat) */
  assign lizzieLet0_1_1Succ_d = Succ_dc((& {writeNatlizzieLet33_1_argbuf_rwb_d[0]}), writeNatlizzieLet33_1_argbuf_rwb_d);
  assign {writeNatlizzieLet33_1_argbuf_rwb_r} = {1 {(lizzieLet0_1_1Succ_r && lizzieLet0_1_1Succ_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet34_1_argbuf,Pointer_Nat) > (writeNatlizzieLet34_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_bufchan_d;
  logic writeNatlizzieLet34_1_argbuf_bufchan_r;
  assign writeNatlizzieLet34_1_argbuf_r = ((! writeNatlizzieLet34_1_argbuf_bufchan_d[0]) || writeNatlizzieLet34_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet34_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet34_1_argbuf_r)
        writeNatlizzieLet34_1_argbuf_bufchan_d <= writeNatlizzieLet34_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet34_1_argbuf_bufchan_r = (! writeNatlizzieLet34_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet34_1_argbuf_rwb_d = (writeNatlizzieLet34_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet34_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet34_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet34_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet34_1_argbuf_rwb_r && writeNatlizzieLet34_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet34_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet34_1_argbuf_rwb_r) && (! writeNatlizzieLet34_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet34_1_argbuf_bufchan_buf <= writeNatlizzieLet34_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet34_1_argbuf_rwb,Pointer_Nat) > (to_nat1_resbuf,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_rwb_bufchan_d;
  logic writeNatlizzieLet34_1_argbuf_rwb_bufchan_r;
  assign writeNatlizzieLet34_1_argbuf_rwb_r = ((! writeNatlizzieLet34_1_argbuf_rwb_bufchan_d[0]) || writeNatlizzieLet34_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet34_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet34_1_argbuf_rwb_r)
        writeNatlizzieLet34_1_argbuf_rwb_bufchan_d <= writeNatlizzieLet34_1_argbuf_rwb_d;
  Pointer_Nat_t writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf;
  assign writeNatlizzieLet34_1_argbuf_rwb_bufchan_r = (! writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf[0]);
  assign to_nat1_resbuf_d = (writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf[0] ? writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf :
                             writeNatlizzieLet34_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((to_nat1_resbuf_r && writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf[0]))
        writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! to_nat1_resbuf_r) && (! writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf[0])))
        writeNatlizzieLet34_1_argbuf_rwb_bufchan_buf <= writeNatlizzieLet34_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet11_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet11_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet11_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet11_1_argbuf_r = ((! writeQTree_BoollizzieLet11_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet11_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet11_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet11_1_argbuf_r)
        writeQTree_BoollizzieLet11_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet11_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet11_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet11_1_argbuf_rwb_d = (writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf :
                                                      writeQTree_BoollizzieLet11_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet11_1_argbuf_rwb_r && writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet11_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet11_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet11_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet11_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet10_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet11_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet11_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet11_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet10_1_1_argbuf_d = (writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf :
                                     writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet10_1_1_argbuf_r && writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet10_1_1_argbuf_r) && (! writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet11_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet12_1_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet12_1_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet12_1_1_argbuf_r = ((! writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet12_1_1_argbuf_r)
        writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet12_1_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet12_1_1_argbuf_rwb_d = (writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf :
                                                        writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet12_1_1_argbuf_rwb_r && writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet12_1_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet12_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet12_1_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet11_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet12_1_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                              1'd0};
    else
      if (writeQTree_BoollizzieLet12_1_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet12_1_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet11_1_1_argbuf_d = (writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf :
                                     writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
    else
      if ((lizzieLet11_1_1_argbuf_r && writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                  1'd0};
      else if (((! lizzieLet11_1_1_argbuf_r) && (! writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet12_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet27_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet27_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet27_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet27_1_argbuf_r = ((! writeQTree_BoollizzieLet27_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet27_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet27_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet27_1_argbuf_r)
        writeQTree_BoollizzieLet27_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet27_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet27_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet27_1_argbuf_rwb_d = (writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf :
                                                      writeQTree_BoollizzieLet27_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet27_1_argbuf_rwb_r && writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet27_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet27_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet27_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet27_1_argbuf_rwb,Pointer_QTree_Bool) > (contRet_0_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet27_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet27_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet27_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_argbuf_d = (writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((contRet_0_1_argbuf_r && writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! contRet_0_1_argbuf_r) && (! writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet27_1_argbuf_rwb_bufchan_d;
  
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
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet5_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet6_1_argbuf,Pointer_QTree_Bool) */
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
  assign lizzieLet6_1_argbuf_d = (writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet6_1_argbuf_r && writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet6_1_argbuf_r) && (! writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet5_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet6_1_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet6_1_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet6_1_1_argbuf_r = ((! writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet6_1_1_argbuf_r)
        writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet6_1_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet6_1_1_argbuf_rwb_d = (writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf :
                                                       writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet6_1_1_argbuf_rwb_r && writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet6_1_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet6_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet6_1_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet7_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet6_1_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeQTree_BoollizzieLet6_1_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet6_1_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet7_1_argbuf_d = (writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((lizzieLet7_1_argbuf_r && writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! lizzieLet7_1_argbuf_r) && (! writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet6_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet7_1_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet7_1_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet7_1_1_argbuf_r = ((! writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet7_1_1_argbuf_r)
        writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet7_1_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet7_1_1_argbuf_rwb_d = (writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf :
                                                       writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet7_1_1_argbuf_rwb_r && writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet7_1_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet7_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet7_1_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet8_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet7_1_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeQTree_BoollizzieLet7_1_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet7_1_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet8_1_argbuf_d = (writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((lizzieLet8_1_argbuf_r && writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! lizzieLet8_1_argbuf_r) && (! writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet7_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet9_1_1_argbuf,Pointer_QTree_Bool) > (writeQTree_BoollizzieLet9_1_1_argbuf_rwb,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d;
  logic writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_r;
  assign writeQTree_BoollizzieLet9_1_1_argbuf_r = ((! writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d[0]) || writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_BoollizzieLet9_1_1_argbuf_r)
        writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d <= writeQTree_BoollizzieLet9_1_1_argbuf_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf;
  assign writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_r = (! writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_BoollizzieLet9_1_1_argbuf_rwb_d = (writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf[0] ? writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf :
                                                       writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_BoollizzieLet9_1_1_argbuf_rwb_r && writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf[0]))
        writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_BoollizzieLet9_1_1_argbuf_rwb_r) && (! writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf[0])))
        writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_buf <= writeQTree_BoollizzieLet9_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (writeQTree_BoollizzieLet9_1_1_argbuf_rwb,Pointer_QTree_Bool) > (lizzieLet9_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_BoollizzieLet9_1_1_argbuf_rwb_r = ((! writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeQTree_BoollizzieLet9_1_1_argbuf_rwb_r)
        writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d <= writeQTree_BoollizzieLet9_1_1_argbuf_rwb_d;
  Pointer_QTree_Bool_t writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_r = (! writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet9_1_argbuf_d = (writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((lizzieLet9_1_argbuf_r && writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! lizzieLet9_1_argbuf_r) && (! writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_buf <= writeQTree_BoollizzieLet9_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet14_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet14_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet14_1_argbuf_r = ((! writeQTree_NatlizzieLet14_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet14_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet14_1_argbuf_r)
        writeQTree_NatlizzieLet14_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet14_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet14_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet14_1_argbuf_rwb_d = (writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet14_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet14_1_argbuf_rwb_r && writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet14_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet14_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet14_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet14_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet1_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet14_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet14_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet14_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet1_1_1_argbuf_d = (writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet1_1_1_argbuf_r && writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet1_1_1_argbuf_r) && (! writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet15_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet15_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet15_1_argbuf_r = ((! writeQTree_NatlizzieLet15_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet15_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet15_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet15_1_argbuf_r)
        writeQTree_NatlizzieLet15_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet15_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet15_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet15_1_argbuf_rwb_d = (writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet15_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet15_1_argbuf_rwb_r && writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet15_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet15_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet15_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet15_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet15_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet15_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet15_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet2_1_1_argbuf_d = (writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet2_1_1_argbuf_r && writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet2_1_1_argbuf_r) && (! writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet16_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet16_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet16_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet16_1_argbuf_r = ((! writeQTree_NatlizzieLet16_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet16_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet16_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet16_1_argbuf_r)
        writeQTree_NatlizzieLet16_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet16_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet16_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet16_1_argbuf_rwb_d = (writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet16_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet16_1_argbuf_rwb_r && writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet16_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet16_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet16_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet16_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet3_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet16_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet16_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet16_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet3_1_1_argbuf_d = (writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet3_1_1_argbuf_r && writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet3_1_1_argbuf_r) && (! writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet16_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet18_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet18_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet18_1_argbuf_r = ((! writeQTree_NatlizzieLet18_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet18_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet18_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet18_1_argbuf_r)
        writeQTree_NatlizzieLet18_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet18_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet18_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet18_1_argbuf_rwb_d = (writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet18_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet18_1_argbuf_rwb_r && writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet18_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet18_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet18_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet18_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet4_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet18_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet18_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet18_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet4_1_1_argbuf_d = (writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet4_1_1_argbuf_r && writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet4_1_1_argbuf_r) && (! writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet32_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet32_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet32_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet32_1_argbuf_r = ((! writeQTree_NatlizzieLet32_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet32_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet32_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet32_1_argbuf_r)
        writeQTree_NatlizzieLet32_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet32_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet32_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet32_1_argbuf_rwb_d = (writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet32_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet32_1_argbuf_rwb_r && writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet32_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet32_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet32_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet32_1_argbuf_rwb,Pointer_QTree_Nat) > (contRet_0_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet32_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet32_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet32_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_1_argbuf_d = (writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf :
                                   writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_1_argbuf_r && writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_1_argbuf_r) && (! writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet32_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty MyDTBool_Bool_Bool) : (wskB_2_2,MyDTBool_Bool_Bool) > (wskB_2_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t wskB_2_2_bufchan_d;
  logic wskB_2_2_bufchan_r;
  assign wskB_2_2_r = ((! wskB_2_2_bufchan_d[0]) || wskB_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_2_2_bufchan_d <= 1'd0;
    else if (wskB_2_2_r) wskB_2_2_bufchan_d <= wskB_2_2_d;
  MyDTBool_Bool_Bool_t wskB_2_2_bufchan_buf;
  assign wskB_2_2_bufchan_r = (! wskB_2_2_bufchan_buf[0]);
  assign wskB_2_2_argbuf_d = (wskB_2_2_bufchan_buf[0] ? wskB_2_2_bufchan_buf :
                              wskB_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_2_2_bufchan_buf <= 1'd0;
    else
      if ((wskB_2_2_argbuf_r && wskB_2_2_bufchan_buf[0]))
        wskB_2_2_bufchan_buf <= 1'd0;
      else if (((! wskB_2_2_argbuf_r) && (! wskB_2_2_bufchan_buf[0])))
        wskB_2_2_bufchan_buf <= wskB_2_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (wskB_2_destruct,MyDTBool_Bool_Bool) > [(wskB_2_1,MyDTBool_Bool_Bool),
                                                                       (wskB_2_2,MyDTBool_Bool_Bool)] */
  logic [1:0] wskB_2_destruct_emitted;
  logic [1:0] wskB_2_destruct_done;
  assign wskB_2_1_d = (wskB_2_destruct_d[0] && (! wskB_2_destruct_emitted[0]));
  assign wskB_2_2_d = (wskB_2_destruct_d[0] && (! wskB_2_destruct_emitted[1]));
  assign wskB_2_destruct_done = (wskB_2_destruct_emitted | ({wskB_2_2_d[0],
                                                             wskB_2_1_d[0]} & {wskB_2_2_r,
                                                                               wskB_2_1_r}));
  assign wskB_2_destruct_r = (& wskB_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_2_destruct_emitted <= 2'd0;
    else
      wskB_2_destruct_emitted <= (wskB_2_destruct_r ? 2'd0 :
                                  wskB_2_destruct_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (wskB_3_2,MyDTBool_Bool_Bool) > (wskB_3_2_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t wskB_3_2_bufchan_d;
  logic wskB_3_2_bufchan_r;
  assign wskB_3_2_r = ((! wskB_3_2_bufchan_d[0]) || wskB_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_3_2_bufchan_d <= 1'd0;
    else if (wskB_3_2_r) wskB_3_2_bufchan_d <= wskB_3_2_d;
  MyDTBool_Bool_Bool_t wskB_3_2_bufchan_buf;
  assign wskB_3_2_bufchan_r = (! wskB_3_2_bufchan_buf[0]);
  assign wskB_3_2_argbuf_d = (wskB_3_2_bufchan_buf[0] ? wskB_3_2_bufchan_buf :
                              wskB_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_3_2_bufchan_buf <= 1'd0;
    else
      if ((wskB_3_2_argbuf_r && wskB_3_2_bufchan_buf[0]))
        wskB_3_2_bufchan_buf <= 1'd0;
      else if (((! wskB_3_2_argbuf_r) && (! wskB_3_2_bufchan_buf[0])))
        wskB_3_2_bufchan_buf <= wskB_3_2_bufchan_d;
  
  /* fork (Ty MyDTBool_Bool_Bool) : (wskB_3_destruct,MyDTBool_Bool_Bool) > [(wskB_3_1,MyDTBool_Bool_Bool),
                                                                       (wskB_3_2,MyDTBool_Bool_Bool)] */
  logic [1:0] wskB_3_destruct_emitted;
  logic [1:0] wskB_3_destruct_done;
  assign wskB_3_1_d = (wskB_3_destruct_d[0] && (! wskB_3_destruct_emitted[0]));
  assign wskB_3_2_d = (wskB_3_destruct_d[0] && (! wskB_3_destruct_emitted[1]));
  assign wskB_3_destruct_done = (wskB_3_destruct_emitted | ({wskB_3_2_d[0],
                                                             wskB_3_1_d[0]} & {wskB_3_2_r,
                                                                               wskB_3_1_r}));
  assign wskB_3_destruct_r = (& wskB_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_3_destruct_emitted <= 2'd0;
    else
      wskB_3_destruct_emitted <= (wskB_3_destruct_r ? 2'd0 :
                                  wskB_3_destruct_done);
  
  /* buf (Ty MyDTBool_Bool_Bool) : (wskB_4_destruct,MyDTBool_Bool_Bool) > (wskB_4_1_argbuf,MyDTBool_Bool_Bool) */
  MyDTBool_Bool_Bool_t wskB_4_destruct_bufchan_d;
  logic wskB_4_destruct_bufchan_r;
  assign wskB_4_destruct_r = ((! wskB_4_destruct_bufchan_d[0]) || wskB_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_4_destruct_bufchan_d <= 1'd0;
    else
      if (wskB_4_destruct_r)
        wskB_4_destruct_bufchan_d <= wskB_4_destruct_d;
  MyDTBool_Bool_Bool_t wskB_4_destruct_bufchan_buf;
  assign wskB_4_destruct_bufchan_r = (! wskB_4_destruct_bufchan_buf[0]);
  assign wskB_4_1_argbuf_d = (wskB_4_destruct_bufchan_buf[0] ? wskB_4_destruct_bufchan_buf :
                              wskB_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wskB_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((wskB_4_1_argbuf_r && wskB_4_destruct_bufchan_buf[0]))
        wskB_4_destruct_bufchan_buf <= 1'd0;
      else if (((! wskB_4_1_argbuf_r) && (! wskB_4_destruct_bufchan_buf[0])))
        wskB_4_destruct_bufchan_buf <= wskB_4_destruct_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (xa8d_1,Pointer_Nat) > (xa8d_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t xa8d_1_bufchan_d;
  logic xa8d_1_bufchan_r;
  assign xa8d_1_r = ((! xa8d_1_bufchan_d[0]) || xa8d_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa8d_1_bufchan_d <= {16'd0, 1'd0};
    else if (xa8d_1_r) xa8d_1_bufchan_d <= xa8d_1_d;
  Pointer_Nat_t xa8d_1_bufchan_buf;
  assign xa8d_1_bufchan_r = (! xa8d_1_bufchan_buf[0]);
  assign xa8d_1_argbuf_d = (xa8d_1_bufchan_buf[0] ? xa8d_1_bufchan_buf :
                            xa8d_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa8d_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((xa8d_1_argbuf_r && xa8d_1_bufchan_buf[0]))
        xa8d_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! xa8d_1_argbuf_r) && (! xa8d_1_bufchan_buf[0])))
        xa8d_1_bufchan_buf <= xa8d_1_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (xa96_goMux_mux,Pointer_Nat) > (xa96_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t xa96_goMux_mux_bufchan_d;
  logic xa96_goMux_mux_bufchan_r;
  assign xa96_goMux_mux_r = ((! xa96_goMux_mux_bufchan_d[0]) || xa96_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa96_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (xa96_goMux_mux_r) xa96_goMux_mux_bufchan_d <= xa96_goMux_mux_d;
  Pointer_Nat_t xa96_goMux_mux_bufchan_buf;
  assign xa96_goMux_mux_bufchan_r = (! xa96_goMux_mux_bufchan_buf[0]);
  assign xa96_1_argbuf_d = (xa96_goMux_mux_bufchan_buf[0] ? xa96_goMux_mux_bufchan_buf :
                            xa96_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa96_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((xa96_1_argbuf_r && xa96_goMux_mux_bufchan_buf[0]))
        xa96_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! xa96_1_argbuf_r) && (! xa96_goMux_mux_bufchan_buf[0])))
        xa96_goMux_mux_bufchan_buf <= xa96_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (y1a9a_destruct,Pointer_Nat) > (y1a9a_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t y1a9a_destruct_bufchan_d;
  logic y1a9a_destruct_bufchan_r;
  assign y1a9a_destruct_r = ((! y1a9a_destruct_bufchan_d[0]) || y1a9a_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) y1a9a_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (y1a9a_destruct_r) y1a9a_destruct_bufchan_d <= y1a9a_destruct_d;
  Pointer_Nat_t y1a9a_destruct_bufchan_buf;
  assign y1a9a_destruct_bufchan_r = (! y1a9a_destruct_bufchan_buf[0]);
  assign y1a9a_1_argbuf_d = (y1a9a_destruct_bufchan_buf[0] ? y1a9a_destruct_bufchan_buf :
                             y1a9a_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) y1a9a_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((y1a9a_1_argbuf_r && y1a9a_destruct_bufchan_buf[0]))
        y1a9a_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! y1a9a_1_argbuf_r) && (! y1a9a_destruct_bufchan_buf[0])))
        y1a9a_destruct_bufchan_buf <= y1a9a_destruct_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (ya97_goMux_mux,Pointer_Nat) > (ya97_1_argbuf,Pointer_Nat) */
  Pointer_Nat_t ya97_goMux_mux_bufchan_d;
  logic ya97_goMux_mux_bufchan_r;
  assign ya97_goMux_mux_r = ((! ya97_goMux_mux_bufchan_d[0]) || ya97_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ya97_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (ya97_goMux_mux_r) ya97_goMux_mux_bufchan_d <= ya97_goMux_mux_d;
  Pointer_Nat_t ya97_goMux_mux_bufchan_buf;
  assign ya97_goMux_mux_bufchan_r = (! ya97_goMux_mux_bufchan_buf[0]);
  assign ya97_1_argbuf_d = (ya97_goMux_mux_bufchan_buf[0] ? ya97_goMux_mux_bufchan_buf :
                            ya97_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ya97_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((ya97_1_argbuf_r && ya97_goMux_mux_bufchan_buf[0]))
        ya97_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! ya97_1_argbuf_r) && (! ya97_goMux_mux_bufchan_buf[0])))
        ya97_goMux_mux_bufchan_buf <= ya97_goMux_mux_bufchan_d;
endmodule