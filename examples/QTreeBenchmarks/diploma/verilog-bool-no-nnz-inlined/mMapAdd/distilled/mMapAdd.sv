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
  input Pointer_QTree_Bool_t m1a84_0_d,
  output logic m1a84_0_r,
  input Pointer_QTree_Bool_t m2a85_1_d,
  output logic m2a85_1_r,
  output \Word16#_t  forkHP1_QTree_Bool_snk_dout,
  input logic forkHP1_QTree_Bool_snk_rout,
  output Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout,
  input logic dummy_write_QTree_Bool_sink_rout,
  output Pointer_QTree_Nat_t f_resbuf_dout,
  input logic f_resbuf_rout
  );
  /* --define=INPUTS=((__05CQTree_Bool_src, 0, 1, Go), (dummy_write_QTree_Bool, 66, 73786976294838206464, QTree_Bool), (sourceGo, 0, 1, Go), (m1a84_0, 16, 65536, Pointer_QTree_Bool), (m2a85_1, 16, 65536, Pointer_QTree_Bool)) */
  /* --define=TAPS=() */
  /* --define=OUTPUTS=((forkHP1_QTree_Bool_snk, 16, 65536, Word16__023), (dummy_write_QTree_Bool_sink, 16, 65536, Pointer_QTree_Bool), (f_resbuf, 16, 65536, Pointer_QTree_Nat)) */
  /* TYPE_START
QTree_Nat 16 2 (0,[0]) (1,[16p]) (2,[16p,16p,16p,16p]) (3,[0])
CTf 16 3 (0,[0]) (1,[16p,16p,16p,16p,16p,16p,16p]) (2,[16p,16p,16p,16p,16p,16p]) (3,[16p,16p,16p,16p,16p]) (4,[16p,16p,16p,16p])
CTf__027__027__027__027__027__027__027__027_f__027__027__027__027__027__027__027__027_Bool 16 3 (0,[0]) (1,[16p,16p,16p,16p]) (2,[16p,16p,16p,16p]) (3,[16p,16p,16p,16p]) (4,[16p,16p,16p,16p])
Nat 16 1 (0,[0]) (1,[16p])
QTree_Bool 16 2 (0,[0]) (1,[1]) (2,[16p,16p,16p,16p]) (3,[0])
TupGo___Pointer_QTree_Bool___Pointer_CTf__027__027__027__027__027__027__027__027_f__027__027__027__027__027__027__027__027_Bool 16 0 (0,[0,16p,16p])
TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf 16 0 (0,[0,16p,16p,16p])
TupGo___Pointer_QTree_Bool 16 0 (0,[0,16p])
TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool 16 0 (0,[0,16p,16p])
TYPE_END */
  /*  */
  /*  */
  Go_t goFork_d;
  logic goFork_r;
  Go_t goFor_2_d;
  logic goFor_2_r;
  Go_t goFor_3_d;
  logic goFor_3_r;
  Go_t goFor_4_d;
  logic goFor_4_r;
  Go_t goFor_5_d;
  logic goFor_5_r;
  Go_t goFor_6_d;
  logic goFor_6_r;
  Go_t goFor_7_d;
  logic goFor_7_r;
  Go_t goFor_8_d;
  logic goFor_8_r;
  Go_t goFor_9_d;
  logic goFor_9_r;
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
  C19_t writeMerge_choice_QTree_Nat_d;
  logic writeMerge_choice_QTree_Nat_r;
  QTree_Nat_t writeMerge_data_QTree_Nat_d;
  logic writeMerge_data_QTree_Nat_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_d;
  logic writeQTree_NatlizzieLet11_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_d;
  logic writeQTree_NatlizzieLet12_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_d;
  logic writeQTree_NatlizzieLet17_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_d;
  logic writeQTree_NatlizzieLet20_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_d;
  logic writeQTree_NatlizzieLet23_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_d;
  logic writeQTree_NatlizzieLet27_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_d;
  logic writeQTree_NatlizzieLet29_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_d;
  logic writeQTree_NatlizzieLet2_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_d;
  logic writeQTree_NatlizzieLet31_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_d;
  logic writeQTree_NatlizzieLet33_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_d;
  logic writeQTree_NatlizzieLet35_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_d;
  logic writeQTree_NatlizzieLet42_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_d;
  logic writeQTree_NatlizzieLet47_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_d;
  logic writeQTree_NatlizzieLet4_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_d;
  logic writeQTree_NatlizzieLet5_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_d;
  logic writeQTree_NatlizzieLet8_1_argbuf_r;
  MemIn_QTree_Nat_t dconWriteIn_QTree_Nat_d;
  logic dconWriteIn_QTree_Nat_r;
  Pointer_QTree_Nat_t dconPtr_QTree_Nat_d;
  logic dconPtr_QTree_Nat_r;
  Pointer_QTree_Nat_t _35_d;
  logic _35_r;
  assign _35_r = 1'd1;
  Pointer_QTree_Nat_t demuxWriteResult_QTree_Nat_d;
  logic demuxWriteResult_QTree_Nat_r;
  \Word16#_t  initHP_CTf_d;
  logic initHP_CTf_r;
  \Word16#_t  incrHP_CTf_d;
  logic incrHP_CTf_r;
  Go_t incrHP_mergeCTf_d;
  logic incrHP_mergeCTf_r;
  Go_t incrHP_CTf1_d;
  logic incrHP_CTf1_r;
  Go_t incrHP_CTf2_d;
  logic incrHP_CTf2_r;
  \Word16#_t  addHP_CTf_d;
  logic addHP_CTf_r;
  \Word16#_t  mergeHP_CTf_d;
  logic mergeHP_CTf_r;
  Go_t incrHP_mergeCTf_buf_d;
  logic incrHP_mergeCTf_buf_r;
  \Word16#_t  mergeHP_CTf_buf_d;
  logic mergeHP_CTf_buf_r;
  \Word16#_t  forkHP1_CTf_d;
  logic forkHP1_CTf_r;
  \Word16#_t  forkHP1_CT2_d;
  logic forkHP1_CT2_r;
  \Word16#_t  forkHP1_CT3_d;
  logic forkHP1_CT3_r;
  C2_t memMergeChoice_CTf_d;
  logic memMergeChoice_CTf_r;
  MemIn_CTf_t memMergeIn_CTf_d;
  logic memMergeIn_CTf_r;
  MemOut_CTf_t memOut_CTf_d;
  logic memOut_CTf_r;
  MemOut_CTf_t memReadOut_CTf_d;
  logic memReadOut_CTf_r;
  MemOut_CTf_t memWriteOut_CTf_d;
  logic memWriteOut_CTf_r;
  MemIn_CTf_t memMergeIn_CTf_dbuf_d;
  logic memMergeIn_CTf_dbuf_r;
  MemIn_CTf_t memMergeIn_CTf_rbuf_d;
  logic memMergeIn_CTf_rbuf_r;
  MemOut_CTf_t memOut_CTf_dbuf_d;
  logic memOut_CTf_dbuf_r;
  MemOut_CTf_t memOut_CTf_rbuf_d;
  logic memOut_CTf_rbuf_r;
  \Word16#_t  destructReadIn_CTf_d;
  logic destructReadIn_CTf_r;
  MemIn_CTf_t dconReadIn_CTf_d;
  logic dconReadIn_CTf_r;
  CTf_t readPointer_CTfscfarg_0_1_argbuf_d;
  logic readPointer_CTfscfarg_0_1_argbuf_r;
  C5_t writeMerge_choice_CTf_d;
  logic writeMerge_choice_CTf_r;
  CTf_t writeMerge_data_CTf_d;
  logic writeMerge_data_CTf_r;
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_d;
  logic writeCTflizzieLet16_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_d;
  logic writeCTflizzieLet24_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_d;
  logic writeCTflizzieLet39_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_d;
  logic writeCTflizzieLet40_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_d;
  logic writeCTflizzieLet41_1_argbuf_r;
  MemIn_CTf_t dconWriteIn_CTf_d;
  logic dconWriteIn_CTf_r;
  Pointer_CTf_t dconPtr_CTf_d;
  logic dconPtr_CTf_r;
  Pointer_CTf_t _34_d;
  logic _34_r;
  assign _34_r = 1'd1;
  Pointer_CTf_t demuxWriteResult_CTf_d;
  logic demuxWriteResult_CTf_r;
  \Word16#_t  \initHP_CTf''''''''_f''''''''_Bool_d ;
  logic \initHP_CTf''''''''_f''''''''_Bool_r ;
  \Word16#_t  \incrHP_CTf''''''''_f''''''''_Bool_d ;
  logic \incrHP_CTf''''''''_f''''''''_Bool_r ;
  Go_t \incrHP_mergeCTf''''''''_f''''''''_Bool_d ;
  logic \incrHP_mergeCTf''''''''_f''''''''_Bool_r ;
  Go_t \incrHP_CTf''''''''_f''''''''_Bool1_d ;
  logic \incrHP_CTf''''''''_f''''''''_Bool1_r ;
  Go_t \incrHP_CTf''''''''_f''''''''_Bool2_d ;
  logic \incrHP_CTf''''''''_f''''''''_Bool2_r ;
  \Word16#_t  \addHP_CTf''''''''_f''''''''_Bool_d ;
  logic \addHP_CTf''''''''_f''''''''_Bool_r ;
  \Word16#_t  \mergeHP_CTf''''''''_f''''''''_Bool_d ;
  logic \mergeHP_CTf''''''''_f''''''''_Bool_r ;
  Go_t \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_d ;
  logic \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_r ;
  \Word16#_t  \mergeHP_CTf''''''''_f''''''''_Bool_buf_d ;
  logic \mergeHP_CTf''''''''_f''''''''_Bool_buf_r ;
  \Word16#_t  \forkHP1_CTf''''''''_f''''''''_Bool_d ;
  logic \forkHP1_CTf''''''''_f''''''''_Bool_r ;
  \Word16#_t  \forkHP1_CTf''''''''_f''''''''_Boo2_d ;
  logic \forkHP1_CTf''''''''_f''''''''_Boo2_r ;
  \Word16#_t  \forkHP1_CTf''''''''_f''''''''_Boo3_d ;
  logic \forkHP1_CTf''''''''_f''''''''_Boo3_r ;
  C2_t \memMergeChoice_CTf''''''''_f''''''''_Bool_d ;
  logic \memMergeChoice_CTf''''''''_f''''''''_Bool_r ;
  \MemIn_CTf''''''''_f''''''''_Bool_t  \memMergeIn_CTf''''''''_f''''''''_Bool_d ;
  logic \memMergeIn_CTf''''''''_f''''''''_Bool_r ;
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memOut_CTf''''''''_f''''''''_Bool_d ;
  logic \memOut_CTf''''''''_f''''''''_Bool_r ;
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memReadOut_CTf''''''''_f''''''''_Bool_d ;
  logic \memReadOut_CTf''''''''_f''''''''_Bool_r ;
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memWriteOut_CTf''''''''_f''''''''_Bool_d ;
  logic \memWriteOut_CTf''''''''_f''''''''_Bool_r ;
  \MemIn_CTf''''''''_f''''''''_Bool_t  \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d ;
  logic \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_r ;
  \MemIn_CTf''''''''_f''''''''_Bool_t  \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_d ;
  logic \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_r ;
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memOut_CTf''''''''_f''''''''_Bool_dbuf_d ;
  logic \memOut_CTf''''''''_f''''''''_Bool_dbuf_r ;
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memOut_CTf''''''''_f''''''''_Bool_rbuf_d ;
  logic \memOut_CTf''''''''_f''''''''_Bool_rbuf_r ;
  \Word16#_t  \destructReadIn_CTf''''''''_f''''''''_Bool_d ;
  logic \destructReadIn_CTf''''''''_f''''''''_Bool_r ;
  \MemIn_CTf''''''''_f''''''''_Bool_t  \dconReadIn_CTf''''''''_f''''''''_Bool_d ;
  logic \dconReadIn_CTf''''''''_f''''''''_Bool_r ;
  \CTf''''''''_f''''''''_Bool_t  \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_d ;
  logic \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_r ;
  C5_t \writeMerge_choice_CTf''''''''_f''''''''_Bool_d ;
  logic \writeMerge_choice_CTf''''''''_f''''''''_Bool_r ;
  \CTf''''''''_f''''''''_Bool_t  \writeMerge_data_CTf''''''''_f''''''''_Bool_d ;
  logic \writeMerge_data_CTf''''''''_f''''''''_Bool_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_r ;
  \MemIn_CTf''''''''_f''''''''_Bool_t  \dconWriteIn_CTf''''''''_f''''''''_Bool_d ;
  logic \dconWriteIn_CTf''''''''_f''''''''_Bool_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \dconPtr_CTf''''''''_f''''''''_Bool_d ;
  logic \dconPtr_CTf''''''''_f''''''''_Bool_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  _33_d;
  logic _33_r;
  assign _33_r = 1'd1;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \demuxWriteResult_CTf''''''''_f''''''''_Bool_d ;
  logic \demuxWriteResult_CTf''''''''_f''''''''_Bool_r ;
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
  MemOut_Nat_t memWriteOut_Nat_d;
  logic memWriteOut_Nat_r;
  C2_t writeMerge_choice_Nat_d;
  logic writeMerge_choice_Nat_r;
  Nat_t writeMerge_data_Nat_d;
  logic writeMerge_data_Nat_r;
  Pointer_Nat_t writeNatlizzieLet36_1_argbuf_d;
  logic writeNatlizzieLet36_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet37_1_argbuf_d;
  logic writeNatlizzieLet37_1_argbuf_r;
  MemIn_Nat_t dconWriteIn_Nat_d;
  logic dconWriteIn_Nat_r;
  Pointer_Nat_t dconPtr_Nat_d;
  logic dconPtr_Nat_r;
  Pointer_Nat_t _32_d;
  logic _32_r;
  assign _32_r = 1'd1;
  Pointer_Nat_t demuxWriteResult_Nat_d;
  logic demuxWriteResult_Nat_r;
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
  QTree_Bool_t readPointer_QTree_Boolm1a86_1_argbuf_d;
  logic readPointer_QTree_Boolm1a86_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolm2a87_1_argbuf_d;
  logic readPointer_QTree_Boolm2a87_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolq4a8s_1_argbuf_d;
  logic readPointer_QTree_Boolq4a8s_1_argbuf_r;
  \Word16#_t  destructReadIn_QTree_Bool_d;
  logic destructReadIn_QTree_Bool_r;
  MemIn_QTree_Bool_t dconReadIn_QTree_Bool_d;
  logic dconReadIn_QTree_Bool_r;
  QTree_Bool_t destructReadOut_QTree_Bool_d;
  logic destructReadOut_QTree_Bool_r;
  MemIn_QTree_Bool_t dconWriteIn_QTree_Bool_d;
  logic dconWriteIn_QTree_Bool_r;
  Pointer_QTree_Bool_t dconPtr_QTree_Bool_d;
  logic dconPtr_QTree_Bool_r;
  Pointer_QTree_Bool_t _31_d;
  logic _31_r;
  assign _31_r = 1'd1;
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_d;
  logic dummy_write_QTree_Bool_sink_r;
  Go_t go_1_argbuf_d;
  logic go_1_argbuf_r;
  Pointer_QTree_Bool_t bla8b_1_argbuf_d;
  logic bla8b_1_argbuf_r;
  Pointer_QTree_Bool_t bla8w_1_1_argbuf_d;
  logic bla8w_1_1_argbuf_r;
  Pointer_QTree_Bool_t bra8c_1_argbuf_d;
  logic bra8c_1_argbuf_r;
  Pointer_QTree_Bool_t bra8x_1_argbuf_d;
  logic bra8x_1_argbuf_r;
  Go_t \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d ;
  logic \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_r ;
  Pointer_QTree_Bool_t \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d ;
  logic \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d ;
  logic \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_r ;
  Go_t \call_f''''''''_f''''''''_Bool_initBufi_d ;
  logic \call_f''''''''_f''''''''_Bool_initBufi_r ;
  C5_t go_3_goMux_choice_d;
  logic go_3_goMux_choice_r;
  Go_t go_3_goMux_data_d;
  logic go_3_goMux_data_r;
  Go_t \call_f''''''''_f''''''''_Bool_unlockFork1_d ;
  logic \call_f''''''''_f''''''''_Bool_unlockFork1_r ;
  Go_t \call_f''''''''_f''''''''_Bool_unlockFork2_d ;
  logic \call_f''''''''_f''''''''_Bool_unlockFork2_r ;
  Go_t \call_f''''''''_f''''''''_Bool_unlockFork3_d ;
  logic \call_f''''''''_f''''''''_Bool_unlockFork3_r ;
  Go_t \call_f''''''''_f''''''''_Bool_initBuf_d ;
  logic \call_f''''''''_f''''''''_Bool_initBuf_r ;
  Go_t \call_f''''''''_f''''''''_Bool_goMux1_d ;
  logic \call_f''''''''_f''''''''_Bool_goMux1_r ;
  Pointer_QTree_Bool_t \call_f''''''''_f''''''''_Bool_goMux2_d ;
  logic \call_f''''''''_f''''''''_Bool_goMux2_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \call_f''''''''_f''''''''_Bool_goMux3_d ;
  logic \call_f''''''''_f''''''''_Bool_goMux3_r ;
  Go_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_r;
  Pointer_QTree_Bool_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_r;
  Pointer_QTree_Bool_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_r;
  Pointer_CTf_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_r;
  Go_t call_f_initBufi_d;
  logic call_f_initBufi_r;
  C5_t go_2_goMux_choice_d;
  logic go_2_goMux_choice_r;
  Go_t go_2_goMux_data_d;
  logic go_2_goMux_data_r;
  Go_t call_f_unlockFork1_d;
  logic call_f_unlockFork1_r;
  Go_t call_f_unlockFork2_d;
  logic call_f_unlockFork2_r;
  Go_t call_f_unlockFork3_d;
  logic call_f_unlockFork3_r;
  Go_t call_f_unlockFork4_d;
  logic call_f_unlockFork4_r;
  Go_t call_f_initBuf_d;
  logic call_f_initBuf_r;
  Go_t call_f_goMux1_d;
  logic call_f_goMux1_r;
  Pointer_QTree_Bool_t call_f_goMux2_d;
  logic call_f_goMux2_r;
  Pointer_QTree_Bool_t call_f_goMux3_d;
  logic call_f_goMux3_r;
  Pointer_CTf_t call_f_goMux4_d;
  logic call_f_goMux4_r;
  QTree_Nat_t lizzieLet4_1_1_argbuf_d;
  logic lizzieLet4_1_1_argbuf_r;
  QTree_Nat_t lizzieLet14_1_argbuf_d;
  logic lizzieLet14_1_argbuf_r;
  C8_t \f''''''''_f''''''''_Bool_choice_d ;
  logic \f''''''''_f''''''''_Bool_choice_r ;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_Bool_data_d ;
  logic \f''''''''_f''''''''_Bool_data_r ;
  Go_t go_5_1_d;
  logic go_5_1_r;
  Go_t go_5_2_d;
  logic go_5_2_r;
  Pointer_QTree_Bool_t q4a8s_1_1_argbuf_d;
  logic q4a8s_1_1_argbuf_r;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_resbuf_d ;
  logic \f''''''''_f''''''''_Bool_resbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_2_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_2_argbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_3_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_3_argbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_4_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_4_argbuf_r ;
  QTree_Nat_t es_0_1es_1_1es_2_1es_3_1QNode_Nat_d;
  logic es_0_1es_1_1es_2_1es_3_1QNode_Nat_r;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_5_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_5_argbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_6_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_6_argbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_7_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_7_argbuf_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_8_argbuf_d ;
  logic \f''''''''_f''''''''_Bool_8_argbuf_r ;
  QTree_Nat_t es_4_1es_5_1es_6_1es_7_1QNode_Nat_d;
  logic es_4_1es_5_1es_6_1es_7_1QNode_Nat_r;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_1_d ;
  logic \f''''''''_f''''''''_Bool_1_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_2_d ;
  logic \f''''''''_f''''''''_Bool_2_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_3_d ;
  logic \f''''''''_f''''''''_Bool_3_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_4_d ;
  logic \f''''''''_f''''''''_Bool_4_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_5_d ;
  logic \f''''''''_f''''''''_Bool_5_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_6_d ;
  logic \f''''''''_f''''''''_Bool_6_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_7_d ;
  logic \f''''''''_f''''''''_Bool_7_r ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_8_d ;
  logic \f''''''''_f''''''''_Bool_8_r ;
  Go_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_r ;
  Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_r ;
  Go_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_r;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_r;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_r;
  Go_t go_4_1_d;
  logic go_4_1_r;
  Go_t go_4_2_d;
  logic go_4_2_r;
  Pointer_QTree_Bool_t m1a86_1_1_argbuf_d;
  logic m1a86_1_1_argbuf_r;
  Pointer_QTree_Bool_t m2a87_1_1_argbuf_d;
  logic m2a87_1_1_argbuf_r;
  TupGo_t \lvlrbl-0TupGo_1_d ;
  logic \lvlrbl-0TupGo_1_r ;
  Nat_t lizzieLet36_1_argbuf_d;
  logic lizzieLet36_1_argbuf_r;
  C15_t go_12_goMux_choice_1_d;
  logic go_12_goMux_choice_1_r;
  C15_t go_12_goMux_choice_2_d;
  logic go_12_goMux_choice_2_r;
  Pointer_QTree_Nat_t srtarg_0_goMux_mux_d;
  logic srtarg_0_goMux_mux_r;
  Pointer_CTf_t scfarg_0_goMux_mux_d;
  logic scfarg_0_goMux_mux_r;
  C4_t go_13_goMux_choice_1_d;
  logic go_13_goMux_choice_1_r;
  C4_t go_13_goMux_choice_2_d;
  logic go_13_goMux_choice_2_r;
  Pointer_QTree_Nat_t srtarg_0_1_goMux_mux_d;
  logic srtarg_0_1_goMux_mux_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  scfarg_0_1_goMux_mux_d;
  logic scfarg_0_1_goMux_mux_r;
  TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r;
  C5_t go_2_goMux_choice_1_d;
  logic go_2_goMux_choice_1_r;
  C5_t go_2_goMux_choice_2_d;
  logic go_2_goMux_choice_2_r;
  C5_t go_2_goMux_choice_3_d;
  logic go_2_goMux_choice_3_r;
  Pointer_QTree_Bool_t m1a86_goMux_mux_d;
  logic m1a86_goMux_mux_r;
  Pointer_QTree_Bool_t m2a87_goMux_mux_d;
  logic m2a87_goMux_mux_r;
  Pointer_CTf_t sc_0_goMux_mux_d;
  logic sc_0_goMux_mux_r;
  C5_t go_3_goMux_choice_1_d;
  logic go_3_goMux_choice_1_r;
  C5_t go_3_goMux_choice_2_d;
  logic go_3_goMux_choice_2_r;
  Pointer_QTree_Bool_t q4a8s_goMux_mux_d;
  logic q4a8s_goMux_mux_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_1_goMux_mux_d;
  logic sc_0_1_goMux_mux_r;
  CTf_t go_4_1Lfsbos_d;
  logic go_4_1Lfsbos_r;
  CTf_t lizzieLet24_1_argbuf_d;
  logic lizzieLet24_1_argbuf_r;
  Go_t go_4_2_argbuf_d;
  logic go_4_2_argbuf_r;
  TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r;
  \CTf''''''''_f''''''''_Bool_t  \go_5_1Lf''''''''_f''''''''_Boolsbos_d ;
  logic \go_5_1Lf''''''''_f''''''''_Boolsbos_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet25_1_argbuf_d;
  logic lizzieLet25_1_argbuf_r;
  Go_t go_5_2_argbuf_d;
  logic go_5_2_argbuf_r;
  \TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_t  \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d ;
  logic \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_r ;
  TupGo_t \lvlrbl-0TupGo2_d ;
  logic \lvlrbl-0TupGo2_r ;
  TupGo_t \lvlrbl-0TupGo5_d ;
  logic \lvlrbl-0TupGo5_r ;
  TupGo_t \lvlrbl-0TupGo4_d ;
  logic \lvlrbl-0TupGo4_r ;
  TupGo_t \lvlrbl-0TupGo3_d ;
  logic \lvlrbl-0TupGo3_r ;
  Pointer_QTree_Bool_t q1a8j_destruct_d;
  logic q1a8j_destruct_r;
  Pointer_QTree_Bool_t q2a8k_destruct_d;
  logic q2a8k_destruct_r;
  Pointer_QTree_Bool_t q3a8l_destruct_d;
  logic q3a8l_destruct_r;
  Pointer_QTree_Bool_t q4a8m_destruct_d;
  logic q4a8m_destruct_r;
  MyBool_t v1a8d_destruct_d;
  logic v1a8d_destruct_r;
  Nat_t lizzieLet37_1_argbuf_d;
  logic lizzieLet37_1_argbuf_r;
  QTree_Bool_t _30_d;
  logic _30_r;
  assign _30_r = 1'd1;
  QTree_Bool_t lizzieLet0_1QVal_Bool_d;
  logic lizzieLet0_1QVal_Bool_r;
  QTree_Bool_t lizzieLet0_1QNode_Bool_d;
  logic lizzieLet0_1QNode_Bool_r;
  QTree_Bool_t _29_d;
  logic _29_r;
  assign _29_r = 1'd1;
  Go_t lizzieLet0_3QNone_Bool_d;
  logic lizzieLet0_3QNone_Bool_r;
  Go_t lizzieLet0_3QVal_Bool_d;
  logic lizzieLet0_3QVal_Bool_r;
  Go_t lizzieLet0_3QNode_Bool_d;
  logic lizzieLet0_3QNode_Bool_r;
  Go_t lizzieLet0_3QError_Bool_d;
  logic lizzieLet0_3QError_Bool_r;
  Go_t lizzieLet0_3QError_Bool_1_d;
  logic lizzieLet0_3QError_Bool_1_r;
  Go_t lizzieLet0_3QError_Bool_2_d;
  logic lizzieLet0_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet0_3QError_Bool_1QError_Nat_d;
  logic lizzieLet0_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet18_1_argbuf_d;
  logic lizzieLet18_1_argbuf_r;
  Go_t lizzieLet0_3QError_Bool_2_argbuf_d;
  logic lizzieLet0_3QError_Bool_2_argbuf_r;
  QTree_Bool_t lizzieLet0_4QNone_Bool_d;
  logic lizzieLet0_4QNone_Bool_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_r;
  QTree_Bool_t _28_d;
  logic _28_r;
  assign _28_r = 1'd1;
  QTree_Bool_t lizzieLet0_4QNode_Bool_1_d;
  logic lizzieLet0_4QNode_Bool_1_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_2_d;
  logic lizzieLet0_4QNode_Bool_2_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_3_d;
  logic lizzieLet0_4QNode_Bool_3_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_4_d;
  logic lizzieLet0_4QNode_Bool_4_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_5_d;
  logic lizzieLet0_4QNode_Bool_5_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_6_d;
  logic lizzieLet0_4QNode_Bool_6_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_7_d;
  logic lizzieLet0_4QNode_Bool_7_r;
  QTree_Bool_t lizzieLet0_4QNode_Bool_8_d;
  logic lizzieLet0_4QNode_Bool_8_r;
  Pointer_QTree_Bool_t t1a8o_destruct_d;
  logic t1a8o_destruct_r;
  Pointer_QTree_Bool_t t2a8p_destruct_d;
  logic t2a8p_destruct_r;
  Pointer_QTree_Bool_t t3a8q_destruct_d;
  logic t3a8q_destruct_r;
  Pointer_QTree_Bool_t t4a8r_destruct_d;
  logic t4a8r_destruct_r;
  QTree_Bool_t _27_d;
  logic _27_r;
  assign _27_r = 1'd1;
  QTree_Bool_t _26_d;
  logic _26_r;
  assign _26_r = 1'd1;
  QTree_Bool_t lizzieLet0_4QNode_Bool_1QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_1QNode_Bool_r;
  QTree_Bool_t _25_d;
  logic _25_r;
  assign _25_r = 1'd1;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_r;
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_r;
  Go_t lizzieLet0_4QNode_Bool_3QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_3QNode_Bool_r;
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_r;
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_1_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_1_r;
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_2_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet17_1_argbuf_d;
  logic lizzieLet17_1_argbuf_r;
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_1_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_1_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_2_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_2_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_3_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_3_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_4_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_4_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_5_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_5_r;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_r ;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_r ;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_r ;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_r ;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_r;
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_1_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_1_r;
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_2_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet15_1_argbuf_d;
  logic lizzieLet15_1_argbuf_r;
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_4QNone_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QVal_Bool_d;
  logic lizzieLet0_4QNode_Bool_4QVal_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_4QNode_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QError_Bool_d;
  logic lizzieLet0_4QNode_Bool_4QError_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_r;
  CTf_t lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_d;
  logic lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_r;
  CTf_t lizzieLet16_1_argbuf_d;
  logic lizzieLet16_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_5QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_5QNone_Bool_r;
  Pointer_QTree_Bool_t _24_d;
  logic _24_r;
  assign _24_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_5QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_5QNode_Bool_r;
  Pointer_QTree_Bool_t _23_d;
  logic _23_r;
  assign _23_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_6QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_6QNone_Bool_r;
  Pointer_QTree_Bool_t _22_d;
  logic _22_r;
  assign _22_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_6QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_6QNode_Bool_r;
  Pointer_QTree_Bool_t _21_d;
  logic _21_r;
  assign _21_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_7QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_7QNone_Bool_r;
  Pointer_QTree_Bool_t _20_d;
  logic _20_r;
  assign _20_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_7QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_7QNode_Bool_r;
  Pointer_QTree_Bool_t _19_d;
  logic _19_r;
  assign _19_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNone_Bool_d;
  logic lizzieLet0_4QNode_Bool_8QNone_Bool_r;
  Pointer_QTree_Bool_t _18_d;
  logic _18_r;
  assign _18_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_8QNode_Bool_r;
  Pointer_QTree_Bool_t _17_d;
  logic _17_r;
  assign _17_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_r;
  QTree_Bool_t lizzieLet0_4QNone_Bool_1_d;
  logic lizzieLet0_4QNone_Bool_1_r;
  QTree_Bool_t lizzieLet0_4QNone_Bool_2_d;
  logic lizzieLet0_4QNone_Bool_2_r;
  QTree_Bool_t lizzieLet0_4QNone_Bool_3_d;
  logic lizzieLet0_4QNone_Bool_3_r;
  QTree_Bool_t lizzieLet0_4QNone_Bool_4_d;
  logic lizzieLet0_4QNone_Bool_4_r;
  Pointer_QTree_Bool_t tla89_destruct_d;
  logic tla89_destruct_r;
  Pointer_QTree_Bool_t tra8a_destruct_d;
  logic tra8a_destruct_r;
  Pointer_QTree_Bool_t bla8b_destruct_d;
  logic bla8b_destruct_r;
  Pointer_QTree_Bool_t bra8c_destruct_d;
  logic bra8c_destruct_r;
  QTree_Bool_t _16_d;
  logic _16_r;
  assign _16_r = 1'd1;
  QTree_Bool_t _15_d;
  logic _15_r;
  assign _15_r = 1'd1;
  QTree_Bool_t lizzieLet0_4QNone_Bool_1QNode_Bool_d;
  logic lizzieLet0_4QNone_Bool_1QNode_Bool_r;
  QTree_Bool_t _14_d;
  logic _14_r;
  assign _14_r = 1'd1;
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_r;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_r;
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_r;
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_1_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_1_r;
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_2_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet5_1_1_argbuf_d;
  logic lizzieLet5_1_1_argbuf_r;
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_1_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_1_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_2_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_2_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_3_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_3_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_4_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_4_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_5_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_5_r;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_r ;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_r ;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_r ;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_r;
  TupGo___Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_r ;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_r;
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_1_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_1_r;
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_2_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_r;
  QTree_Nat_t lizzieLet2_1_argbuf_d;
  logic lizzieLet2_1_argbuf_r;
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_r;
  C15_t go_12_goMux_choice_d;
  logic go_12_goMux_choice_r;
  Go_t go_12_goMux_data_d;
  logic go_12_goMux_data_r;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_1_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_1_r;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_2_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_2_r;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_r;
  TupGo_t \lvl5rbq-5TupGo_1_d ;
  logic \lvl5rbq-5TupGo_1_r ;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNone_Bool_d;
  logic lizzieLet0_4QNone_Bool_4QNone_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QVal_Bool_d;
  logic lizzieLet0_4QNone_Bool_4QVal_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNode_Bool_d;
  logic lizzieLet0_4QNone_Bool_4QNode_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QError_Bool_d;
  logic lizzieLet0_4QNone_Bool_4QError_Bool_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_d;
  logic lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_1_d;
  logic lizzieLet0_4QVal_Bool_1_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_2_d;
  logic lizzieLet0_4QVal_Bool_2_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_3_d;
  logic lizzieLet0_4QVal_Bool_3_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_4_d;
  logic lizzieLet0_4QVal_Bool_4_r;
  QTree_Bool_t lizzieLet0_4QVal_Bool_5_d;
  logic lizzieLet0_4QVal_Bool_5_r;
  MyBool_t va8e_destruct_d;
  logic va8e_destruct_r;
  QTree_Bool_t _13_d;
  logic _13_r;
  assign _13_r = 1'd1;
  QTree_Bool_t lizzieLet0_4QVal_Bool_1QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_1QVal_Bool_r;
  QTree_Bool_t _12_d;
  logic _12_r;
  assign _12_r = 1'd1;
  QTree_Bool_t _11_d;
  logic _11_r;
  assign _11_r = 1'd1;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_r;
  Go_t lizzieLet0_4QVal_Bool_3QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_3QVal_Bool_r;
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_r;
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_r;
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_1_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_1_r;
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_2_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet12_1_argbuf_d;
  logic lizzieLet12_1_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_1_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_1_r;
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_2_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_2_r;
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet11_1_argbuf_d;
  logic lizzieLet11_1_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_1_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_1_r;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_2_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_2_r;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_r;
  TupGo_t \lvl4rbp-4TupGo_1_d ;
  logic \lvl4rbp-4TupGo_1_r ;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNone_Bool_d;
  logic lizzieLet0_4QVal_Bool_4QNone_Bool_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_4QVal_Bool_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNode_Bool_d;
  logic lizzieLet0_4QVal_Bool_4QNode_Bool_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QError_Bool_d;
  logic lizzieLet0_4QVal_Bool_4QError_Bool_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_r;
  MyBool_t _10_d;
  logic _10_r;
  assign _10_r = 1'd1;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_r;
  MyBool_t _9_d;
  logic _9_r;
  assign _9_r = 1'd1;
  MyBool_t _8_d;
  logic _8_r;
  assign _8_r = 1'd1;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_1_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1_r;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_2_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_2_r;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_3_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_r;
  TupGo_t \lvl2rbn-2TupGo_1_d ;
  logic \lvl2rbn-2TupGo_1_r ;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_r;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_r;
  MyBool_t _7_d;
  logic _7_r;
  assign _7_r = 1'd1;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_r;
  MyBool_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_r;
  QTree_Nat_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_r;
  QTree_Nat_t lizzieLet8_1_argbuf_d;
  logic lizzieLet8_1_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_r;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_r;
  TupGo_t \lvl3rbo-3TupGo_1_d ;
  logic \lvl3rbo-3TupGo_1_r ;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_5QNone_Bool_d;
  logic lizzieLet0_5QNone_Bool_r;
  Pointer_CTf_t lizzieLet0_5QVal_Bool_d;
  logic lizzieLet0_5QVal_Bool_r;
  Pointer_CTf_t lizzieLet0_5QNode_Bool_d;
  logic lizzieLet0_5QNode_Bool_r;
  Pointer_CTf_t lizzieLet0_5QError_Bool_d;
  logic lizzieLet0_5QError_Bool_r;
  Pointer_CTf_t lizzieLet0_5QError_Bool_1_argbuf_d;
  logic lizzieLet0_5QError_Bool_1_argbuf_r;
  Pointer_QTree_Bool_t tla8u_destruct_d;
  logic tla8u_destruct_r;
  Pointer_QTree_Bool_t tra8v_destruct_d;
  logic tra8v_destruct_r;
  Pointer_QTree_Bool_t bla8w_destruct_d;
  logic bla8w_destruct_r;
  Pointer_QTree_Bool_t bra8x_destruct_d;
  logic bra8x_destruct_r;
  QTree_Bool_t _6_d;
  logic _6_r;
  assign _6_r = 1'd1;
  QTree_Bool_t _5_d;
  logic _5_r;
  assign _5_r = 1'd1;
  QTree_Bool_t lizzieLet19_1QNode_Bool_d;
  logic lizzieLet19_1QNode_Bool_r;
  QTree_Bool_t _4_d;
  logic _4_r;
  assign _4_r = 1'd1;
  Go_t lizzieLet19_3QNone_Bool_d;
  logic lizzieLet19_3QNone_Bool_r;
  Go_t lizzieLet19_3QVal_Bool_d;
  logic lizzieLet19_3QVal_Bool_r;
  Go_t lizzieLet19_3QNode_Bool_d;
  logic lizzieLet19_3QNode_Bool_r;
  Go_t lizzieLet19_3QError_Bool_d;
  logic lizzieLet19_3QError_Bool_r;
  Go_t lizzieLet19_3QError_Bool_1_d;
  logic lizzieLet19_3QError_Bool_1_r;
  Go_t lizzieLet19_3QError_Bool_2_d;
  logic lizzieLet19_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet19_3QError_Bool_1QError_Nat_d;
  logic lizzieLet19_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet23_1_argbuf_d;
  logic lizzieLet23_1_argbuf_r;
  Go_t lizzieLet19_3QError_Bool_2_argbuf_d;
  logic lizzieLet19_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet19_3QNode_Bool_1_argbuf_d;
  logic lizzieLet19_3QNode_Bool_1_argbuf_r;
  Go_t lizzieLet19_3QNone_Bool_1_d;
  logic lizzieLet19_3QNone_Bool_1_r;
  Go_t lizzieLet19_3QNone_Bool_2_d;
  logic lizzieLet19_3QNone_Bool_2_r;
  QTree_Nat_t lizzieLet19_3QNone_Bool_1QNone_Nat_d;
  logic lizzieLet19_3QNone_Bool_1QNone_Nat_r;
  QTree_Nat_t lizzieLet20_1_argbuf_d;
  logic lizzieLet20_1_argbuf_r;
  Go_t lizzieLet19_3QNone_Bool_2_argbuf_d;
  logic lizzieLet19_3QNone_Bool_2_argbuf_r;
  C4_t go_13_goMux_choice_d;
  logic go_13_goMux_choice_r;
  Go_t go_13_goMux_data_d;
  logic go_13_goMux_data_r;
  Go_t lizzieLet19_3QVal_Bool_1_d;
  logic lizzieLet19_3QVal_Bool_1_r;
  Go_t lizzieLet19_3QVal_Bool_2_d;
  logic lizzieLet19_3QVal_Bool_2_r;
  Go_t lizzieLet19_3QVal_Bool_1_argbuf_d;
  logic lizzieLet19_3QVal_Bool_1_argbuf_r;
  TupGo_t \lvl1rbm-1TupGo_1_d ;
  logic \lvl1rbm-1TupGo_1_r ;
  Go_t lizzieLet19_3QVal_Bool_2_argbuf_d;
  logic lizzieLet19_3QVal_Bool_2_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QNone_Bool_d;
  logic lizzieLet19_4QNone_Bool_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QVal_Bool_d;
  logic lizzieLet19_4QVal_Bool_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QNode_Bool_d;
  logic lizzieLet19_4QNode_Bool_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QError_Bool_d;
  logic lizzieLet19_4QError_Bool_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QError_Bool_1_argbuf_d;
  logic lizzieLet19_4QError_Bool_1_argbuf_r;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_d ;
  logic \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet22_1_argbuf_d;
  logic lizzieLet22_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QNone_Bool_1_argbuf_d;
  logic lizzieLet19_4QNone_Bool_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QVal_Bool_1_argbuf_d;
  logic lizzieLet19_4QVal_Bool_1_argbuf_r;
  QTree_Nat_t lizzieLet27_1_argbuf_d;
  logic lizzieLet27_1_argbuf_r;
  QTree_Nat_t lizzieLet29_1_argbuf_d;
  logic lizzieLet29_1_argbuf_r;
  QTree_Nat_t lizzieLet31_1_argbuf_d;
  logic lizzieLet31_1_argbuf_r;
  QTree_Nat_t lizzieLet33_1_argbuf_d;
  logic lizzieLet33_1_argbuf_r;
  QTree_Nat_t lizzieLet35_1_argbuf_d;
  logic lizzieLet35_1_argbuf_r;
  Pointer_QTree_Nat_t es_9_destruct_d;
  logic es_9_destruct_r;
  Pointer_QTree_Nat_t es_10_1_destruct_d;
  logic es_10_1_destruct_r;
  Pointer_QTree_Nat_t es_11_2_destruct_d;
  logic es_11_2_destruct_r;
  Pointer_CTf_t sc_0_5_destruct_d;
  logic sc_0_5_destruct_r;
  Pointer_QTree_Nat_t es_10_destruct_d;
  logic es_10_destruct_r;
  Pointer_QTree_Nat_t es_11_1_destruct_d;
  logic es_11_1_destruct_r;
  Pointer_CTf_t sc_0_4_destruct_d;
  logic sc_0_4_destruct_r;
  Pointer_QTree_Bool_t q1a8j_3_destruct_d;
  logic q1a8j_3_destruct_r;
  Pointer_QTree_Bool_t t1a8o_3_destruct_d;
  logic t1a8o_3_destruct_r;
  Pointer_QTree_Nat_t es_11_destruct_d;
  logic es_11_destruct_r;
  Pointer_CTf_t sc_0_3_destruct_d;
  logic sc_0_3_destruct_r;
  Pointer_QTree_Bool_t q1a8j_2_destruct_d;
  logic q1a8j_2_destruct_r;
  Pointer_QTree_Bool_t t1a8o_2_destruct_d;
  logic t1a8o_2_destruct_r;
  Pointer_QTree_Bool_t q2a8k_2_destruct_d;
  logic q2a8k_2_destruct_r;
  Pointer_QTree_Bool_t t2a8p_2_destruct_d;
  logic t2a8p_2_destruct_r;
  Pointer_CTf_t sc_0_2_destruct_d;
  logic sc_0_2_destruct_r;
  Pointer_QTree_Bool_t q1a8j_1_destruct_d;
  logic q1a8j_1_destruct_r;
  Pointer_QTree_Bool_t t1a8o_1_destruct_d;
  logic t1a8o_1_destruct_r;
  Pointer_QTree_Bool_t q2a8k_1_destruct_d;
  logic q2a8k_1_destruct_r;
  Pointer_QTree_Bool_t t2a8p_1_destruct_d;
  logic t2a8p_1_destruct_r;
  Pointer_QTree_Bool_t q3a8l_1_destruct_d;
  logic q3a8l_1_destruct_r;
  Pointer_QTree_Bool_t t3a8q_1_destruct_d;
  logic t3a8q_1_destruct_r;
  CTf_t _3_d;
  logic _3_r;
  assign _3_r = 1'd1;
  CTf_t lizzieLet38_1Lcall_f3_d;
  logic lizzieLet38_1Lcall_f3_r;
  CTf_t lizzieLet38_1Lcall_f2_d;
  logic lizzieLet38_1Lcall_f2_r;
  CTf_t lizzieLet38_1Lcall_f1_d;
  logic lizzieLet38_1Lcall_f1_r;
  CTf_t lizzieLet38_1Lcall_f0_d;
  logic lizzieLet38_1Lcall_f0_r;
  Go_t _2_d;
  logic _2_r;
  assign _2_r = 1'd1;
  Go_t lizzieLet38_3Lcall_f3_d;
  logic lizzieLet38_3Lcall_f3_r;
  Go_t lizzieLet38_3Lcall_f2_d;
  logic lizzieLet38_3Lcall_f2_r;
  Go_t lizzieLet38_3Lcall_f1_d;
  logic lizzieLet38_3Lcall_f1_r;
  Go_t lizzieLet38_3Lcall_f0_d;
  logic lizzieLet38_3Lcall_f0_r;
  Go_t lizzieLet38_3Lcall_f0_1_argbuf_d;
  logic lizzieLet38_3Lcall_f0_1_argbuf_r;
  Go_t lizzieLet38_3Lcall_f1_1_argbuf_d;
  logic lizzieLet38_3Lcall_f1_1_argbuf_r;
  Go_t lizzieLet38_3Lcall_f2_1_argbuf_d;
  logic lizzieLet38_3Lcall_f2_1_argbuf_r;
  Go_t lizzieLet38_3Lcall_f3_1_argbuf_d;
  logic lizzieLet38_3Lcall_f3_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lfsbos_d;
  logic lizzieLet38_4Lfsbos_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lcall_f3_d;
  logic lizzieLet38_4Lcall_f3_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lcall_f2_d;
  logic lizzieLet38_4Lcall_f2_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lcall_f1_d;
  logic lizzieLet38_4Lcall_f1_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lcall_f0_d;
  logic lizzieLet38_4Lcall_f0_r;
  QTree_Nat_t lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_d;
  logic lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_r;
  QTree_Nat_t lizzieLet42_1_argbuf_d;
  logic lizzieLet42_1_argbuf_r;
  CTf_t lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_d;
  logic lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_r;
  CTf_t lizzieLet41_1_argbuf_d;
  logic lizzieLet41_1_argbuf_r;
  CTf_t lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_d;
  logic lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_r;
  CTf_t lizzieLet40_1_argbuf_d;
  logic lizzieLet40_1_argbuf_r;
  CTf_t lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_d;
  logic lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_r;
  CTf_t lizzieLet39_1_argbuf_d;
  logic lizzieLet39_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_d;
  logic lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_r;
  Pointer_QTree_Nat_t lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_d;
  logic lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_r;
  Go_t call_f_goConst_d;
  logic call_f_goConst_r;
  Pointer_QTree_Nat_t f_resbuf_d;
  logic f_resbuf_r;
  Pointer_QTree_Nat_t es_1_1_destruct_d;
  logic es_1_1_destruct_r;
  Pointer_QTree_Nat_t es_2_2_destruct_d;
  logic es_2_2_destruct_r;
  Pointer_QTree_Nat_t es_3_3_destruct_d;
  logic es_3_3_destruct_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_9_destruct_d;
  logic sc_0_9_destruct_r;
  Pointer_QTree_Nat_t es_2_1_destruct_d;
  logic es_2_1_destruct_r;
  Pointer_QTree_Nat_t es_3_2_destruct_d;
  logic es_3_2_destruct_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_8_destruct_d;
  logic sc_0_8_destruct_r;
  Pointer_QTree_Bool_t tla8u_3_destruct_d;
  logic tla8u_3_destruct_r;
  Pointer_QTree_Nat_t es_3_1_destruct_d;
  logic es_3_1_destruct_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_7_destruct_d;
  logic sc_0_7_destruct_r;
  Pointer_QTree_Bool_t tla8u_2_destruct_d;
  logic tla8u_2_destruct_r;
  Pointer_QTree_Bool_t tra8v_2_destruct_d;
  logic tra8v_2_destruct_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_6_destruct_d;
  logic sc_0_6_destruct_r;
  Pointer_QTree_Bool_t tla8u_1_destruct_d;
  logic tla8u_1_destruct_r;
  Pointer_QTree_Bool_t tra8v_1_destruct_d;
  logic tra8v_1_destruct_r;
  Pointer_QTree_Bool_t bla8w_1_destruct_d;
  logic bla8w_1_destruct_r;
  \CTf''''''''_f''''''''_Bool_t  _1_d;
  logic _1_r;
  assign _1_r = 1'd1;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d ;
  logic \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_r ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d ;
  logic \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_r ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d ;
  logic \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_r ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d ;
  logic \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_r ;
  Go_t _0_d;
  logic _0_r;
  assign _0_r = 1'd1;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_r ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d ;
  logic \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_r ;
  QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_r ;
  QTree_Nat_t lizzieLet47_1_argbuf_d;
  logic lizzieLet47_1_argbuf_r;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet46_1_argbuf_d;
  logic lizzieLet46_1_argbuf_r;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet45_1_argbuf_d;
  logic lizzieLet45_1_argbuf_r;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet44_1_argbuf_d;
  logic lizzieLet44_1_argbuf_r;
  Pointer_QTree_Nat_t \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_d ;
  logic \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_r ;
  Pointer_QTree_Nat_t \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d ;
  logic \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_r ;
  Go_t \call_f''''''''_f''''''''_Bool_goConst_d ;
  logic \call_f''''''''_f''''''''_Bool_goConst_r ;
  Go_t \lvl1rbm-1TupGogo_6_d ;
  logic \lvl1rbm-1TupGogo_6_r ;
  Go_t go_6_1_argbuf_d;
  logic go_6_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet21_1_argbuf_d;
  logic lizzieLet21_1_argbuf_r;
  Go_t \lvl2rbn-2TupGogo_7_d ;
  logic \lvl2rbn-2TupGogo_7_r ;
  Go_t go_7_1_argbuf_d;
  logic go_7_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet10_1_argbuf_d;
  logic lizzieLet10_1_argbuf_r;
  Go_t \lvl3rbo-3TupGogo_8_d ;
  logic \lvl3rbo-3TupGogo_8_r ;
  Go_t go_8_1_argbuf_d;
  logic go_8_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet9_1_argbuf_d;
  logic lizzieLet9_1_argbuf_r;
  Go_t \lvl4rbp-4TupGogo_9_d ;
  logic \lvl4rbp-4TupGogo_9_r ;
  Go_t go_9_1_argbuf_d;
  logic go_9_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet7_1_argbuf_d;
  logic lizzieLet7_1_argbuf_r;
  Go_t \lvl5rbq-5TupGogo_10_d ;
  logic \lvl5rbq-5TupGogo_10_r ;
  Go_t go_10_1_argbuf_d;
  logic go_10_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet3_1_argbuf_d;
  logic lizzieLet3_1_argbuf_r;
  C5_t \lvlrbl-0_choice_d ;
  logic \lvlrbl-0_choice_r ;
  TupGo_t \lvlrbl-0_data_d ;
  logic \lvlrbl-0_data_r ;
  Nat_t go_11_1Zero_d;
  logic go_11_1Zero_r;
  Pointer_Nat_t \lvlrbl-0_resbuf_d ;
  logic \lvlrbl-0_resbuf_r ;
  Pointer_Nat_t \lvlrbl-0_2_argbuf_d ;
  logic \lvlrbl-0_2_argbuf_r ;
  QTree_Nat_t lizzieLet26_1QVal_Nat_d;
  logic lizzieLet26_1QVal_Nat_r;
  Pointer_Nat_t \lvlrbl-0_3_argbuf_d ;
  logic \lvlrbl-0_3_argbuf_r ;
  QTree_Nat_t lizzieLet32_1QVal_Nat_d;
  logic lizzieLet32_1QVal_Nat_r;
  Pointer_Nat_t \lvlrbl-0_4_argbuf_d ;
  logic \lvlrbl-0_4_argbuf_r ;
  QTree_Nat_t lizzieLet30_1QVal_Nat_d;
  logic lizzieLet30_1QVal_Nat_r;
  Pointer_Nat_t \lvlrbl-0_5_argbuf_d ;
  logic \lvlrbl-0_5_argbuf_r ;
  QTree_Nat_t lizzieLet28_1QVal_Nat_d;
  logic lizzieLet28_1QVal_Nat_r;
  Pointer_Nat_t \lvlrbl-0_1_d ;
  logic \lvlrbl-0_1_r ;
  Pointer_Nat_t \lvlrbl-0_2_d ;
  logic \lvlrbl-0_2_r ;
  Pointer_Nat_t \lvlrbl-0_3_d ;
  logic \lvlrbl-0_3_r ;
  Pointer_Nat_t \lvlrbl-0_4_d ;
  logic \lvlrbl-0_4_r ;
  Pointer_Nat_t \lvlrbl-0_5_d ;
  logic \lvlrbl-0_5_r ;
  Go_t \lvlrbl-0TupGogo_11_d ;
  logic \lvlrbl-0TupGogo_11_r ;
  QTree_Nat_t lizzieLet34_1QVal_Nat_d;
  logic lizzieLet34_1QVal_Nat_r;
  Pointer_QTree_Bool_t m1a86_1_argbuf_d;
  logic m1a86_1_argbuf_r;
  Pointer_QTree_Bool_t m2a87_1_argbuf_d;
  logic m2a87_1_argbuf_r;
  Pointer_QTree_Bool_t q1a8j_3_1_argbuf_d;
  logic q1a8j_3_1_argbuf_r;
  Pointer_QTree_Bool_t q2a8k_2_1_argbuf_d;
  logic q2a8k_2_1_argbuf_r;
  Pointer_QTree_Bool_t q3a8l_1_1_argbuf_d;
  logic q3a8l_1_1_argbuf_r;
  Pointer_QTree_Bool_t q4a8s_1_argbuf_d;
  logic q4a8s_1_argbuf_r;
  \CTf''''''''_f''''''''_Bool_t  \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d ;
  logic \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_r ;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet43_1_d;
  logic lizzieLet43_1_r;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet43_2_d;
  logic lizzieLet43_2_r;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet43_3_d;
  logic lizzieLet43_3_r;
  \CTf''''''''_f''''''''_Bool_t  lizzieLet43_4_d;
  logic lizzieLet43_4_r;
  CTf_t readPointer_CTfscfarg_0_1_argbuf_rwb_d;
  logic readPointer_CTfscfarg_0_1_argbuf_rwb_r;
  CTf_t lizzieLet38_1_d;
  logic lizzieLet38_1_r;
  CTf_t lizzieLet38_2_d;
  logic lizzieLet38_2_r;
  CTf_t lizzieLet38_3_d;
  logic lizzieLet38_3_r;
  CTf_t lizzieLet38_4_d;
  logic lizzieLet38_4_r;
  QTree_Bool_t readPointer_QTree_Boolm1a86_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm1a86_1_argbuf_rwb_r;
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
  QTree_Bool_t readPointer_QTree_Boolm2a87_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm2a87_1_argbuf_rwb_r;
  QTree_Bool_t readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolq4a8s_1_argbuf_rwb_r;
  QTree_Bool_t lizzieLet19_1_d;
  logic lizzieLet19_1_r;
  QTree_Bool_t lizzieLet19_2_d;
  logic lizzieLet19_2_r;
  QTree_Bool_t lizzieLet19_3_d;
  logic lizzieLet19_3_r;
  QTree_Bool_t lizzieLet19_4_d;
  logic lizzieLet19_4_r;
  Pointer_CTf_t sc_0_5_1_argbuf_d;
  logic sc_0_5_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_9_1_argbuf_d;
  logic sc_0_9_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  scfarg_0_1_1_argbuf_d;
  logic scfarg_0_1_1_argbuf_r;
  Pointer_CTf_t scfarg_0_1_argbuf_d;
  logic scfarg_0_1_argbuf_r;
  Pointer_QTree_Bool_t t1a8o_3_1_argbuf_d;
  logic t1a8o_3_1_argbuf_r;
  Pointer_QTree_Bool_t t2a8p_2_1_argbuf_d;
  logic t2a8p_2_1_argbuf_r;
  Pointer_QTree_Bool_t t3a8q_1_1_argbuf_d;
  logic t3a8q_1_1_argbuf_r;
  Pointer_QTree_Bool_t t4a8r_1_argbuf_d;
  logic t4a8r_1_argbuf_r;
  Pointer_QTree_Bool_t tla89_1_argbuf_d;
  logic tla89_1_argbuf_r;
  Pointer_QTree_Bool_t tla8u_3_1_argbuf_d;
  logic tla8u_3_1_argbuf_r;
  Pointer_QTree_Bool_t tra8a_1_argbuf_d;
  logic tra8a_1_argbuf_r;
  Pointer_QTree_Bool_t tra8v_2_1_argbuf_d;
  logic tra8v_2_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sca3_1_1_argbuf_d;
  logic sca3_1_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet3_1_1_argbuf_d;
  logic lizzieLet3_1_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sca2_1_1_argbuf_d;
  logic sca2_1_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sca1_1_1_argbuf_d;
  logic sca1_1_1_argbuf_r;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_r ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sca0_1_1_argbuf_d;
  logic sca0_1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_rwb_d;
  logic writeCTflizzieLet16_1_argbuf_rwb_r;
  Pointer_CTf_t sca3_1_argbuf_d;
  logic sca3_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_rwb_d;
  logic writeCTflizzieLet24_1_argbuf_rwb_r;
  Pointer_CTf_t lizzieLet14_1_1_argbuf_d;
  logic lizzieLet14_1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_rwb_d;
  logic writeCTflizzieLet39_1_argbuf_rwb_r;
  Pointer_CTf_t sca2_1_argbuf_d;
  logic sca2_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_rwb_d;
  logic writeCTflizzieLet40_1_argbuf_rwb_r;
  Pointer_CTf_t sca1_1_argbuf_d;
  logic sca1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_rwb_d;
  logic writeCTflizzieLet41_1_argbuf_rwb_r;
  Pointer_CTf_t sca0_1_argbuf_d;
  logic sca0_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet36_1_argbuf_rwb_d;
  logic writeNatlizzieLet36_1_argbuf_rwb_r;
  Nat_t lizzieLet0_1_1Succ_d;
  logic lizzieLet0_1_1Succ_r;
  Pointer_Nat_t writeNatlizzieLet37_1_argbuf_rwb_d;
  logic writeNatlizzieLet37_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet11_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet8_1_1_argbuf_d;
  logic lizzieLet8_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet12_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet9_1_1_argbuf_d;
  logic lizzieLet9_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet10_1_1_argbuf_d;
  logic lizzieLet10_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet15_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet15_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet11_1_1_argbuf_d;
  logic lizzieLet11_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet17_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet12_1_1_argbuf_d;
  logic lizzieLet12_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet18_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet18_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet13_1_argbuf_d;
  logic lizzieLet13_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet20_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet1_1_1_argbuf_d;
  logic lizzieLet1_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet23_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet2_1_1_argbuf_d;
  logic lizzieLet2_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet27_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl1rbm-1_resbuf_d ;
  logic \lvl1rbm-1_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet29_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl2rbn-2_resbuf_d ;
  logic \lvl2rbn-2_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet2_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet4_1_argbuf_d;
  logic lizzieLet4_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet31_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl3rbo-3_resbuf_d ;
  logic \lvl3rbo-3_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet33_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl4rbp-4_resbuf_d ;
  logic \lvl4rbp-4_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet35_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl5rbq-5_resbuf_d ;
  logic \lvl5rbq-5_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet42_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t contRet_0_1_argbuf_d;
  logic contRet_0_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet47_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t contRet_0_1_1_argbuf_d;
  logic contRet_0_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet4_1_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet5_1_argbuf_d;
  logic lizzieLet5_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet5_1_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet6_1_argbuf_d;
  logic lizzieLet6_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet8_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet7_1_1_argbuf_d;
  logic lizzieLet7_1_1_argbuf_r;
  
  /* fork (Ty Go) : (sourceGo,Go) > [(goFork,Go),
                                (goFor_2,Go),
                                (goFor_3,Go),
                                (goFor_4,Go),
                                (goFor_5,Go),
                                (goFor_6,Go),
                                (goFor_7,Go),
                                (goFor_8,Go),
                                (goFor_9,Go)] */
  logic [8:0] sourceGo_emitted;
  logic [8:0] sourceGo_done;
  assign goFork_d = (sourceGo_d[0] && (! sourceGo_emitted[0]));
  assign goFor_2_d = (sourceGo_d[0] && (! sourceGo_emitted[1]));
  assign goFor_3_d = (sourceGo_d[0] && (! sourceGo_emitted[2]));
  assign goFor_4_d = (sourceGo_d[0] && (! sourceGo_emitted[3]));
  assign goFor_5_d = (sourceGo_d[0] && (! sourceGo_emitted[4]));
  assign goFor_6_d = (sourceGo_d[0] && (! sourceGo_emitted[5]));
  assign goFor_7_d = (sourceGo_d[0] && (! sourceGo_emitted[6]));
  assign goFor_8_d = (sourceGo_d[0] && (! sourceGo_emitted[7]));
  assign goFor_9_d = (sourceGo_d[0] && (! sourceGo_emitted[8]));
  assign sourceGo_done = (sourceGo_emitted | ({goFor_9_d[0],
                                               goFor_8_d[0],
                                               goFor_7_d[0],
                                               goFor_6_d[0],
                                               goFor_5_d[0],
                                               goFor_4_d[0],
                                               goFor_3_d[0],
                                               goFor_2_d[0],
                                               goFork_d[0]} & {goFor_9_r,
                                                               goFor_8_r,
                                                               goFor_7_r,
                                                               goFor_6_r,
                                                               goFor_5_r,
                                                               goFor_4_r,
                                                               goFor_3_r,
                                                               goFor_2_r,
                                                               goFork_r}));
  assign sourceGo_r = (& sourceGo_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sourceGo_emitted <= 9'd0;
    else
      sourceGo_emitted <= (sourceGo_r ? 9'd0 :
                           sourceGo_done);
  
  /* const (Ty Word16#,
       Lit 0) : (goFor_2,Go) > (initHP_QTree_Nat,Word16#) */
  assign initHP_QTree_Nat_d = {16'd0, goFor_2_d[0]};
  assign goFor_2_r = initHP_QTree_Nat_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_QTree_Nat1,Go) > (incrHP_QTree_Nat,Word16#) */
  assign incrHP_QTree_Nat_d = {16'd1, incrHP_QTree_Nat1_d[0]};
  assign incrHP_QTree_Nat1_r = incrHP_QTree_Nat_r;
  
  /* merge (Ty Go) : [(goFor_3,Go),
                 (incrHP_QTree_Nat2,Go)] > (incrHP_mergeQTree_Nat,Go) */
  logic [1:0] incrHP_mergeQTree_Nat_selected;
  logic [1:0] incrHP_mergeQTree_Nat_select;
  always_comb
    begin
      incrHP_mergeQTree_Nat_selected = 2'd0;
      if ((| incrHP_mergeQTree_Nat_select))
        incrHP_mergeQTree_Nat_selected = incrHP_mergeQTree_Nat_select;
      else
        if (goFor_3_d[0]) incrHP_mergeQTree_Nat_selected[0] = 1'd1;
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
      incrHP_mergeQTree_Nat_d = goFor_3_d;
    else if (incrHP_mergeQTree_Nat_selected[1])
      incrHP_mergeQTree_Nat_d = incrHP_QTree_Nat2_d;
    else incrHP_mergeQTree_Nat_d = 1'd0;
  assign {incrHP_QTree_Nat2_r,
          goFor_3_r} = (incrHP_mergeQTree_Nat_r ? incrHP_mergeQTree_Nat_selected :
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
  
  /* mergectrl (Ty C19,
           Ty QTree_Nat) : [(lizzieLet11_1_argbuf,QTree_Nat),
                            (lizzieLet12_1_argbuf,QTree_Nat),
                            (lizzieLet14_1_argbuf,QTree_Nat),
                            (lizzieLet15_1_argbuf,QTree_Nat),
                            (lizzieLet17_1_argbuf,QTree_Nat),
                            (lizzieLet18_1_argbuf,QTree_Nat),
                            (lizzieLet20_1_argbuf,QTree_Nat),
                            (lizzieLet23_1_argbuf,QTree_Nat),
                            (lizzieLet27_1_argbuf,QTree_Nat),
                            (lizzieLet29_1_argbuf,QTree_Nat),
                            (lizzieLet2_1_argbuf,QTree_Nat),
                            (lizzieLet31_1_argbuf,QTree_Nat),
                            (lizzieLet33_1_argbuf,QTree_Nat),
                            (lizzieLet35_1_argbuf,QTree_Nat),
                            (lizzieLet42_1_argbuf,QTree_Nat),
                            (lizzieLet47_1_argbuf,QTree_Nat),
                            (lizzieLet4_1_1_argbuf,QTree_Nat),
                            (lizzieLet5_1_1_argbuf,QTree_Nat),
                            (lizzieLet8_1_argbuf,QTree_Nat)] > (writeMerge_choice_QTree_Nat,C19) (writeMerge_data_QTree_Nat,QTree_Nat) */
  logic [18:0] lizzieLet11_1_argbuf_select_d;
  assign lizzieLet11_1_argbuf_select_d = ((| lizzieLet11_1_argbuf_select_q) ? lizzieLet11_1_argbuf_select_q :
                                          (lizzieLet11_1_argbuf_d[0] ? 19'd1 :
                                           (lizzieLet12_1_argbuf_d[0] ? 19'd2 :
                                            (lizzieLet14_1_argbuf_d[0] ? 19'd4 :
                                             (lizzieLet15_1_argbuf_d[0] ? 19'd8 :
                                              (lizzieLet17_1_argbuf_d[0] ? 19'd16 :
                                               (lizzieLet18_1_argbuf_d[0] ? 19'd32 :
                                                (lizzieLet20_1_argbuf_d[0] ? 19'd64 :
                                                 (lizzieLet23_1_argbuf_d[0] ? 19'd128 :
                                                  (lizzieLet27_1_argbuf_d[0] ? 19'd256 :
                                                   (lizzieLet29_1_argbuf_d[0] ? 19'd512 :
                                                    (lizzieLet2_1_argbuf_d[0] ? 19'd1024 :
                                                     (lizzieLet31_1_argbuf_d[0] ? 19'd2048 :
                                                      (lizzieLet33_1_argbuf_d[0] ? 19'd4096 :
                                                       (lizzieLet35_1_argbuf_d[0] ? 19'd8192 :
                                                        (lizzieLet42_1_argbuf_d[0] ? 19'd16384 :
                                                         (lizzieLet47_1_argbuf_d[0] ? 19'd32768 :
                                                          (lizzieLet4_1_1_argbuf_d[0] ? 19'd65536 :
                                                           (lizzieLet5_1_1_argbuf_d[0] ? 19'd131072 :
                                                            (lizzieLet8_1_argbuf_d[0] ? 19'd262144 :
                                                             19'd0))))))))))))))))))));
  logic [18:0] lizzieLet11_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_select_q <= 19'd0;
    else
      lizzieLet11_1_argbuf_select_q <= (lizzieLet11_1_argbuf_done ? 19'd0 :
                                        lizzieLet11_1_argbuf_select_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet11_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet11_1_argbuf_emit_q <= (lizzieLet11_1_argbuf_done ? 2'd0 :
                                      lizzieLet11_1_argbuf_emit_d);
  logic [1:0] lizzieLet11_1_argbuf_emit_d;
  assign lizzieLet11_1_argbuf_emit_d = (lizzieLet11_1_argbuf_emit_q | ({writeMerge_choice_QTree_Nat_d[0],
                                                                        writeMerge_data_QTree_Nat_d[0]} & {writeMerge_choice_QTree_Nat_r,
                                                                                                           writeMerge_data_QTree_Nat_r}));
  logic lizzieLet11_1_argbuf_done;
  assign lizzieLet11_1_argbuf_done = (& lizzieLet11_1_argbuf_emit_d);
  assign {lizzieLet8_1_argbuf_r,
          lizzieLet5_1_1_argbuf_r,
          lizzieLet4_1_1_argbuf_r,
          lizzieLet47_1_argbuf_r,
          lizzieLet42_1_argbuf_r,
          lizzieLet35_1_argbuf_r,
          lizzieLet33_1_argbuf_r,
          lizzieLet31_1_argbuf_r,
          lizzieLet2_1_argbuf_r,
          lizzieLet29_1_argbuf_r,
          lizzieLet27_1_argbuf_r,
          lizzieLet23_1_argbuf_r,
          lizzieLet20_1_argbuf_r,
          lizzieLet18_1_argbuf_r,
          lizzieLet17_1_argbuf_r,
          lizzieLet15_1_argbuf_r,
          lizzieLet14_1_argbuf_r,
          lizzieLet12_1_argbuf_r,
          lizzieLet11_1_argbuf_r} = (lizzieLet11_1_argbuf_done ? lizzieLet11_1_argbuf_select_d :
                                     19'd0);
  assign writeMerge_data_QTree_Nat_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet11_1_argbuf_d :
                                        ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet12_1_argbuf_d :
                                         ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet14_1_argbuf_d :
                                          ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet15_1_argbuf_d :
                                           ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet17_1_argbuf_d :
                                            ((lizzieLet11_1_argbuf_select_d[5] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet18_1_argbuf_d :
                                             ((lizzieLet11_1_argbuf_select_d[6] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet20_1_argbuf_d :
                                              ((lizzieLet11_1_argbuf_select_d[7] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet23_1_argbuf_d :
                                               ((lizzieLet11_1_argbuf_select_d[8] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet27_1_argbuf_d :
                                                ((lizzieLet11_1_argbuf_select_d[9] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet29_1_argbuf_d :
                                                 ((lizzieLet11_1_argbuf_select_d[10] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet2_1_argbuf_d :
                                                  ((lizzieLet11_1_argbuf_select_d[11] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet31_1_argbuf_d :
                                                   ((lizzieLet11_1_argbuf_select_d[12] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet33_1_argbuf_d :
                                                    ((lizzieLet11_1_argbuf_select_d[13] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet35_1_argbuf_d :
                                                     ((lizzieLet11_1_argbuf_select_d[14] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet42_1_argbuf_d :
                                                      ((lizzieLet11_1_argbuf_select_d[15] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet47_1_argbuf_d :
                                                       ((lizzieLet11_1_argbuf_select_d[16] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet4_1_1_argbuf_d :
                                                        ((lizzieLet11_1_argbuf_select_d[17] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet5_1_1_argbuf_d :
                                                         ((lizzieLet11_1_argbuf_select_d[18] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet8_1_argbuf_d :
                                                          {66'd0, 1'd0})))))))))))))))))));
  assign writeMerge_choice_QTree_Nat_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C1_19_dc(1'd1) :
                                          ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C2_19_dc(1'd1) :
                                           ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C3_19_dc(1'd1) :
                                            ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C4_19_dc(1'd1) :
                                             ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C5_19_dc(1'd1) :
                                              ((lizzieLet11_1_argbuf_select_d[5] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C6_19_dc(1'd1) :
                                               ((lizzieLet11_1_argbuf_select_d[6] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C7_19_dc(1'd1) :
                                                ((lizzieLet11_1_argbuf_select_d[7] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C8_19_dc(1'd1) :
                                                 ((lizzieLet11_1_argbuf_select_d[8] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C9_19_dc(1'd1) :
                                                  ((lizzieLet11_1_argbuf_select_d[9] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C10_19_dc(1'd1) :
                                                   ((lizzieLet11_1_argbuf_select_d[10] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C11_19_dc(1'd1) :
                                                    ((lizzieLet11_1_argbuf_select_d[11] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C12_19_dc(1'd1) :
                                                     ((lizzieLet11_1_argbuf_select_d[12] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C13_19_dc(1'd1) :
                                                      ((lizzieLet11_1_argbuf_select_d[13] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C14_19_dc(1'd1) :
                                                       ((lizzieLet11_1_argbuf_select_d[14] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C15_19_dc(1'd1) :
                                                        ((lizzieLet11_1_argbuf_select_d[15] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C16_19_dc(1'd1) :
                                                         ((lizzieLet11_1_argbuf_select_d[16] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C17_19_dc(1'd1) :
                                                          ((lizzieLet11_1_argbuf_select_d[17] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C18_19_dc(1'd1) :
                                                           ((lizzieLet11_1_argbuf_select_d[18] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C19_19_dc(1'd1) :
                                                            {5'd0, 1'd0})))))))))))))))))));
  
  /* demux (Ty C19,
       Ty Pointer_QTree_Nat) : (writeMerge_choice_QTree_Nat,C19) (demuxWriteResult_QTree_Nat,Pointer_QTree_Nat) > [(writeQTree_NatlizzieLet11_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet12_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet14_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet15_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet17_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet18_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet20_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet23_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet27_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet29_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet2_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet31_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet33_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet35_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet42_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet47_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet4_1_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet5_1_1_argbuf,Pointer_QTree_Nat),
                                                                                                                   (writeQTree_NatlizzieLet8_1_argbuf,Pointer_QTree_Nat)] */
  logic [18:0] demuxWriteResult_QTree_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Nat_d[0] && demuxWriteResult_QTree_Nat_d[0]))
      unique case (writeMerge_choice_QTree_Nat_d[5:1])
        5'd0: demuxWriteResult_QTree_Nat_onehotd = 19'd1;
        5'd1: demuxWriteResult_QTree_Nat_onehotd = 19'd2;
        5'd2: demuxWriteResult_QTree_Nat_onehotd = 19'd4;
        5'd3: demuxWriteResult_QTree_Nat_onehotd = 19'd8;
        5'd4: demuxWriteResult_QTree_Nat_onehotd = 19'd16;
        5'd5: demuxWriteResult_QTree_Nat_onehotd = 19'd32;
        5'd6: demuxWriteResult_QTree_Nat_onehotd = 19'd64;
        5'd7: demuxWriteResult_QTree_Nat_onehotd = 19'd128;
        5'd8: demuxWriteResult_QTree_Nat_onehotd = 19'd256;
        5'd9: demuxWriteResult_QTree_Nat_onehotd = 19'd512;
        5'd10: demuxWriteResult_QTree_Nat_onehotd = 19'd1024;
        5'd11: demuxWriteResult_QTree_Nat_onehotd = 19'd2048;
        5'd12: demuxWriteResult_QTree_Nat_onehotd = 19'd4096;
        5'd13: demuxWriteResult_QTree_Nat_onehotd = 19'd8192;
        5'd14: demuxWriteResult_QTree_Nat_onehotd = 19'd16384;
        5'd15: demuxWriteResult_QTree_Nat_onehotd = 19'd32768;
        5'd16: demuxWriteResult_QTree_Nat_onehotd = 19'd65536;
        5'd17: demuxWriteResult_QTree_Nat_onehotd = 19'd131072;
        5'd18: demuxWriteResult_QTree_Nat_onehotd = 19'd262144;
        default: demuxWriteResult_QTree_Nat_onehotd = 19'd0;
      endcase
    else demuxWriteResult_QTree_Nat_onehotd = 19'd0;
  assign writeQTree_NatlizzieLet11_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[0]};
  assign writeQTree_NatlizzieLet12_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[1]};
  assign writeQTree_NatlizzieLet14_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[2]};
  assign writeQTree_NatlizzieLet15_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[3]};
  assign writeQTree_NatlizzieLet17_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[4]};
  assign writeQTree_NatlizzieLet18_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[5]};
  assign writeQTree_NatlizzieLet20_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[6]};
  assign writeQTree_NatlizzieLet23_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[7]};
  assign writeQTree_NatlizzieLet27_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[8]};
  assign writeQTree_NatlizzieLet29_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[9]};
  assign writeQTree_NatlizzieLet2_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                demuxWriteResult_QTree_Nat_onehotd[10]};
  assign writeQTree_NatlizzieLet31_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[11]};
  assign writeQTree_NatlizzieLet33_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[12]};
  assign writeQTree_NatlizzieLet35_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[13]};
  assign writeQTree_NatlizzieLet42_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[14]};
  assign writeQTree_NatlizzieLet47_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[15]};
  assign writeQTree_NatlizzieLet4_1_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                  demuxWriteResult_QTree_Nat_onehotd[16]};
  assign writeQTree_NatlizzieLet5_1_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                  demuxWriteResult_QTree_Nat_onehotd[17]};
  assign writeQTree_NatlizzieLet8_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                demuxWriteResult_QTree_Nat_onehotd[18]};
  assign demuxWriteResult_QTree_Nat_r = (| (demuxWriteResult_QTree_Nat_onehotd & {writeQTree_NatlizzieLet8_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet5_1_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet4_1_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet47_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet42_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet35_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet33_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet31_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet2_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet29_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet27_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet23_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet20_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet18_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet17_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet15_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet14_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet12_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet11_1_argbuf_r}));
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
       Ty Pointer_QTree_Nat) : (memWriteOut_QTree_Nat,MemOut_QTree_Nat) (dconPtr_QTree_Nat,Pointer_QTree_Nat) > [(_35,Pointer_QTree_Nat),
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
  assign _35_d = {dconPtr_QTree_Nat_d[16:1],
                  dconPtr_QTree_Nat_onehotd[0]};
  assign demuxWriteResult_QTree_Nat_d = {dconPtr_QTree_Nat_d[16:1],
                                         dconPtr_QTree_Nat_onehotd[1]};
  assign dconPtr_QTree_Nat_r = (| (dconPtr_QTree_Nat_onehotd & {demuxWriteResult_QTree_Nat_r,
                                                                _35_r}));
  assign memWriteOut_QTree_Nat_r = dconPtr_QTree_Nat_r;
  
  /* const (Ty Word16#,Lit 0) : (goFor_4,Go) > (initHP_CTf,Word16#) */
  assign initHP_CTf_d = {16'd0, goFor_4_d[0]};
  assign goFor_4_r = initHP_CTf_r;
  
  /* const (Ty Word16#,Lit 1) : (incrHP_CTf1,Go) > (incrHP_CTf,Word16#) */
  assign incrHP_CTf_d = {16'd1, incrHP_CTf1_d[0]};
  assign incrHP_CTf1_r = incrHP_CTf_r;
  
  /* merge (Ty Go) : [(goFor_5,Go),
                 (incrHP_CTf2,Go)] > (incrHP_mergeCTf,Go) */
  logic [1:0] incrHP_mergeCTf_selected;
  logic [1:0] incrHP_mergeCTf_select;
  always_comb
    begin
      incrHP_mergeCTf_selected = 2'd0;
      if ((| incrHP_mergeCTf_select))
        incrHP_mergeCTf_selected = incrHP_mergeCTf_select;
      else
        if (goFor_5_d[0]) incrHP_mergeCTf_selected[0] = 1'd1;
        else if (incrHP_CTf2_d[0]) incrHP_mergeCTf_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTf_select <= 2'd0;
    else
      incrHP_mergeCTf_select <= (incrHP_mergeCTf_r ? 2'd0 :
                                 incrHP_mergeCTf_selected);
  always_comb
    if (incrHP_mergeCTf_selected[0]) incrHP_mergeCTf_d = goFor_5_d;
    else if (incrHP_mergeCTf_selected[1])
      incrHP_mergeCTf_d = incrHP_CTf2_d;
    else incrHP_mergeCTf_d = 1'd0;
  assign {incrHP_CTf2_r,
          goFor_5_r} = (incrHP_mergeCTf_r ? incrHP_mergeCTf_selected :
                        2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTf_buf,Go) > [(incrHP_CTf1,Go),
                                           (incrHP_CTf2,Go)] */
  logic [1:0] incrHP_mergeCTf_buf_emitted;
  logic [1:0] incrHP_mergeCTf_buf_done;
  assign incrHP_CTf1_d = (incrHP_mergeCTf_buf_d[0] && (! incrHP_mergeCTf_buf_emitted[0]));
  assign incrHP_CTf2_d = (incrHP_mergeCTf_buf_d[0] && (! incrHP_mergeCTf_buf_emitted[1]));
  assign incrHP_mergeCTf_buf_done = (incrHP_mergeCTf_buf_emitted | ({incrHP_CTf2_d[0],
                                                                     incrHP_CTf1_d[0]} & {incrHP_CTf2_r,
                                                                                          incrHP_CTf1_r}));
  assign incrHP_mergeCTf_buf_r = (& incrHP_mergeCTf_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTf_buf_emitted <= 2'd0;
    else
      incrHP_mergeCTf_buf_emitted <= (incrHP_mergeCTf_buf_r ? 2'd0 :
                                      incrHP_mergeCTf_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_CTf,Word16#) (forkHP1_CTf,Word16#) > (addHP_CTf,Word16#) */
  assign addHP_CTf_d = {(incrHP_CTf_d[16:1] + forkHP1_CTf_d[16:1]),
                        (incrHP_CTf_d[0] && forkHP1_CTf_d[0])};
  assign {incrHP_CTf_r,
          forkHP1_CTf_r} = {2 {(addHP_CTf_r && addHP_CTf_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTf,Word16#),
                      (addHP_CTf,Word16#)] > (mergeHP_CTf,Word16#) */
  logic [1:0] mergeHP_CTf_selected;
  logic [1:0] mergeHP_CTf_select;
  always_comb
    begin
      mergeHP_CTf_selected = 2'd0;
      if ((| mergeHP_CTf_select))
        mergeHP_CTf_selected = mergeHP_CTf_select;
      else
        if (initHP_CTf_d[0]) mergeHP_CTf_selected[0] = 1'd1;
        else if (addHP_CTf_d[0]) mergeHP_CTf_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTf_select <= 2'd0;
    else
      mergeHP_CTf_select <= (mergeHP_CTf_r ? 2'd0 :
                             mergeHP_CTf_selected);
  always_comb
    if (mergeHP_CTf_selected[0]) mergeHP_CTf_d = initHP_CTf_d;
    else if (mergeHP_CTf_selected[1]) mergeHP_CTf_d = addHP_CTf_d;
    else mergeHP_CTf_d = {16'd0, 1'd0};
  assign {addHP_CTf_r,
          initHP_CTf_r} = (mergeHP_CTf_r ? mergeHP_CTf_selected :
                           2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTf,Go) > (incrHP_mergeCTf_buf,Go) */
  Go_t incrHP_mergeCTf_bufchan_d;
  logic incrHP_mergeCTf_bufchan_r;
  assign incrHP_mergeCTf_r = ((! incrHP_mergeCTf_bufchan_d[0]) || incrHP_mergeCTf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTf_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeCTf_r)
        incrHP_mergeCTf_bufchan_d <= incrHP_mergeCTf_d;
  Go_t incrHP_mergeCTf_bufchan_buf;
  assign incrHP_mergeCTf_bufchan_r = (! incrHP_mergeCTf_bufchan_buf[0]);
  assign incrHP_mergeCTf_buf_d = (incrHP_mergeCTf_bufchan_buf[0] ? incrHP_mergeCTf_bufchan_buf :
                                  incrHP_mergeCTf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTf_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeCTf_buf_r && incrHP_mergeCTf_bufchan_buf[0]))
        incrHP_mergeCTf_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeCTf_buf_r) && (! incrHP_mergeCTf_bufchan_buf[0])))
        incrHP_mergeCTf_bufchan_buf <= incrHP_mergeCTf_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_CTf,Word16#) > (mergeHP_CTf_buf,Word16#) */
  \Word16#_t  mergeHP_CTf_bufchan_d;
  logic mergeHP_CTf_bufchan_r;
  assign mergeHP_CTf_r = ((! mergeHP_CTf_bufchan_d[0]) || mergeHP_CTf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTf_bufchan_d <= {16'd0, 1'd0};
    else if (mergeHP_CTf_r) mergeHP_CTf_bufchan_d <= mergeHP_CTf_d;
  \Word16#_t  mergeHP_CTf_bufchan_buf;
  assign mergeHP_CTf_bufchan_r = (! mergeHP_CTf_bufchan_buf[0]);
  assign mergeHP_CTf_buf_d = (mergeHP_CTf_bufchan_buf[0] ? mergeHP_CTf_bufchan_buf :
                              mergeHP_CTf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_CTf_buf_r && mergeHP_CTf_bufchan_buf[0]))
        mergeHP_CTf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_CTf_buf_r) && (! mergeHP_CTf_bufchan_buf[0])))
        mergeHP_CTf_bufchan_buf <= mergeHP_CTf_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_CTf_buf,Word16#) > [(forkHP1_CTf,Word16#),
                                                 (forkHP1_CT2,Word16#),
                                                 (forkHP1_CT3,Word16#)] */
  logic [2:0] mergeHP_CTf_buf_emitted;
  logic [2:0] mergeHP_CTf_buf_done;
  assign forkHP1_CTf_d = {mergeHP_CTf_buf_d[16:1],
                          (mergeHP_CTf_buf_d[0] && (! mergeHP_CTf_buf_emitted[0]))};
  assign forkHP1_CT2_d = {mergeHP_CTf_buf_d[16:1],
                          (mergeHP_CTf_buf_d[0] && (! mergeHP_CTf_buf_emitted[1]))};
  assign forkHP1_CT3_d = {mergeHP_CTf_buf_d[16:1],
                          (mergeHP_CTf_buf_d[0] && (! mergeHP_CTf_buf_emitted[2]))};
  assign mergeHP_CTf_buf_done = (mergeHP_CTf_buf_emitted | ({forkHP1_CT3_d[0],
                                                             forkHP1_CT2_d[0],
                                                             forkHP1_CTf_d[0]} & {forkHP1_CT3_r,
                                                                                  forkHP1_CT2_r,
                                                                                  forkHP1_CTf_r}));
  assign mergeHP_CTf_buf_r = (& mergeHP_CTf_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTf_buf_emitted <= 3'd0;
    else
      mergeHP_CTf_buf_emitted <= (mergeHP_CTf_buf_r ? 3'd0 :
                                  mergeHP_CTf_buf_done);
  
  /* mergectrl (Ty C2,Ty MemIn_CTf) : [(dconReadIn_CTf,MemIn_CTf),
                                  (dconWriteIn_CTf,MemIn_CTf)] > (memMergeChoice_CTf,C2) (memMergeIn_CTf,MemIn_CTf) */
  logic [1:0] dconReadIn_CTf_select_d;
  assign dconReadIn_CTf_select_d = ((| dconReadIn_CTf_select_q) ? dconReadIn_CTf_select_q :
                                    (dconReadIn_CTf_d[0] ? 2'd1 :
                                     (dconWriteIn_CTf_d[0] ? 2'd2 :
                                      2'd0)));
  logic [1:0] dconReadIn_CTf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTf_select_q <= 2'd0;
    else
      dconReadIn_CTf_select_q <= (dconReadIn_CTf_done ? 2'd0 :
                                  dconReadIn_CTf_select_d);
  logic [1:0] dconReadIn_CTf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTf_emit_q <= 2'd0;
    else
      dconReadIn_CTf_emit_q <= (dconReadIn_CTf_done ? 2'd0 :
                                dconReadIn_CTf_emit_d);
  logic [1:0] dconReadIn_CTf_emit_d;
  assign dconReadIn_CTf_emit_d = (dconReadIn_CTf_emit_q | ({memMergeChoice_CTf_d[0],
                                                            memMergeIn_CTf_d[0]} & {memMergeChoice_CTf_r,
                                                                                    memMergeIn_CTf_r}));
  logic dconReadIn_CTf_done;
  assign dconReadIn_CTf_done = (& dconReadIn_CTf_emit_d);
  assign {dconWriteIn_CTf_r,
          dconReadIn_CTf_r} = (dconReadIn_CTf_done ? dconReadIn_CTf_select_d :
                               2'd0);
  assign memMergeIn_CTf_d = ((dconReadIn_CTf_select_d[0] && (! dconReadIn_CTf_emit_q[0])) ? dconReadIn_CTf_d :
                             ((dconReadIn_CTf_select_d[1] && (! dconReadIn_CTf_emit_q[0])) ? dconWriteIn_CTf_d :
                              {132'd0, 1'd0}));
  assign memMergeChoice_CTf_d = ((dconReadIn_CTf_select_d[0] && (! dconReadIn_CTf_emit_q[1])) ? C1_2_dc(1'd1) :
                                 ((dconReadIn_CTf_select_d[1] && (! dconReadIn_CTf_emit_q[1])) ? C2_2_dc(1'd1) :
                                  {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTf,
      Ty MemOut_CTf) : (memMergeIn_CTf_dbuf,MemIn_CTf) > (memOut_CTf,MemOut_CTf) */
  logic [114:0] memMergeIn_CTf_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CTf_dbuf_address;
  logic [114:0] memMergeIn_CTf_dbuf_din;
  logic [114:0] memOut_CTf_q;
  logic memOut_CTf_valid;
  logic memMergeIn_CTf_dbuf_we;
  logic memOut_CTf_we;
  assign memMergeIn_CTf_dbuf_din = memMergeIn_CTf_dbuf_d[132:18];
  assign memMergeIn_CTf_dbuf_address = memMergeIn_CTf_dbuf_d[17:2];
  assign memMergeIn_CTf_dbuf_we = (memMergeIn_CTf_dbuf_d[1:1] && memMergeIn_CTf_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_CTf_we <= 1'd0;
        memOut_CTf_valid <= 1'd0;
      end
    else
      begin
        memOut_CTf_we <= memMergeIn_CTf_dbuf_we;
        memOut_CTf_valid <= memMergeIn_CTf_dbuf_d[0];
        if (memMergeIn_CTf_dbuf_we)
          begin
            memMergeIn_CTf_dbuf_mem[memMergeIn_CTf_dbuf_address] <= memMergeIn_CTf_dbuf_din;
            memOut_CTf_q <= memMergeIn_CTf_dbuf_din;
          end
        else
          memOut_CTf_q <= memMergeIn_CTf_dbuf_mem[memMergeIn_CTf_dbuf_address];
      end
  assign memOut_CTf_d = {memOut_CTf_q,
                         memOut_CTf_we,
                         memOut_CTf_valid};
  assign memMergeIn_CTf_dbuf_r = ((! memOut_CTf_valid) || memOut_CTf_r);
  logic [31:0] profiling_MemIn_CTf_read;
  logic [31:0] profiling_MemIn_CTf_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_CTf_write <= 0;
        profiling_MemIn_CTf_read <= 0;
      end
    else
      if ((memMergeIn_CTf_dbuf_we == 1'd1))
        profiling_MemIn_CTf_write <= (profiling_MemIn_CTf_write + 1);
      else
        if ((memOut_CTf_valid == 1'd1))
          profiling_MemIn_CTf_read <= (profiling_MemIn_CTf_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CTf) : (memMergeChoice_CTf,C2) (memOut_CTf_dbuf,MemOut_CTf) > [(memReadOut_CTf,MemOut_CTf),
                                                                                (memWriteOut_CTf,MemOut_CTf)] */
  logic [1:0] memOut_CTf_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_CTf_d[0] && memOut_CTf_dbuf_d[0]))
      unique case (memMergeChoice_CTf_d[1:1])
        1'd0: memOut_CTf_dbuf_onehotd = 2'd1;
        1'd1: memOut_CTf_dbuf_onehotd = 2'd2;
        default: memOut_CTf_dbuf_onehotd = 2'd0;
      endcase
    else memOut_CTf_dbuf_onehotd = 2'd0;
  assign memReadOut_CTf_d = {memOut_CTf_dbuf_d[116:1],
                             memOut_CTf_dbuf_onehotd[0]};
  assign memWriteOut_CTf_d = {memOut_CTf_dbuf_d[116:1],
                              memOut_CTf_dbuf_onehotd[1]};
  assign memOut_CTf_dbuf_r = (| (memOut_CTf_dbuf_onehotd & {memWriteOut_CTf_r,
                                                            memReadOut_CTf_r}));
  assign memMergeChoice_CTf_r = memOut_CTf_dbuf_r;
  
  /* dbuf (Ty MemIn_CTf) : (memMergeIn_CTf_rbuf,MemIn_CTf) > (memMergeIn_CTf_dbuf,MemIn_CTf) */
  assign memMergeIn_CTf_rbuf_r = ((! memMergeIn_CTf_dbuf_d[0]) || memMergeIn_CTf_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CTf_dbuf_d <= {132'd0, 1'd0};
    else
      if (memMergeIn_CTf_rbuf_r)
        memMergeIn_CTf_dbuf_d <= memMergeIn_CTf_rbuf_d;
  
  /* rbuf (Ty MemIn_CTf) : (memMergeIn_CTf,MemIn_CTf) > (memMergeIn_CTf_rbuf,MemIn_CTf) */
  MemIn_CTf_t memMergeIn_CTf_buf;
  assign memMergeIn_CTf_r = (! memMergeIn_CTf_buf[0]);
  assign memMergeIn_CTf_rbuf_d = (memMergeIn_CTf_buf[0] ? memMergeIn_CTf_buf :
                                  memMergeIn_CTf_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CTf_buf <= {132'd0, 1'd0};
    else
      if ((memMergeIn_CTf_rbuf_r && memMergeIn_CTf_buf[0]))
        memMergeIn_CTf_buf <= {132'd0, 1'd0};
      else if (((! memMergeIn_CTf_rbuf_r) && (! memMergeIn_CTf_buf[0])))
        memMergeIn_CTf_buf <= memMergeIn_CTf_d;
  
  /* dbuf (Ty MemOut_CTf) : (memOut_CTf_rbuf,MemOut_CTf) > (memOut_CTf_dbuf,MemOut_CTf) */
  assign memOut_CTf_rbuf_r = ((! memOut_CTf_dbuf_d[0]) || memOut_CTf_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTf_dbuf_d <= {116'd0, 1'd0};
    else if (memOut_CTf_rbuf_r) memOut_CTf_dbuf_d <= memOut_CTf_rbuf_d;
  
  /* rbuf (Ty MemOut_CTf) : (memOut_CTf,MemOut_CTf) > (memOut_CTf_rbuf,MemOut_CTf) */
  MemOut_CTf_t memOut_CTf_buf;
  assign memOut_CTf_r = (! memOut_CTf_buf[0]);
  assign memOut_CTf_rbuf_d = (memOut_CTf_buf[0] ? memOut_CTf_buf :
                              memOut_CTf_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTf_buf <= {116'd0, 1'd0};
    else
      if ((memOut_CTf_rbuf_r && memOut_CTf_buf[0]))
        memOut_CTf_buf <= {116'd0, 1'd0};
      else if (((! memOut_CTf_rbuf_r) && (! memOut_CTf_buf[0])))
        memOut_CTf_buf <= memOut_CTf_d;
  
  /* destruct (Ty Pointer_CTf,
          Dcon Pointer_CTf) : (scfarg_0_1_argbuf,Pointer_CTf) > [(destructReadIn_CTf,Word16#)] */
  assign destructReadIn_CTf_d = {scfarg_0_1_argbuf_d[16:1],
                                 scfarg_0_1_argbuf_d[0]};
  assign scfarg_0_1_argbuf_r = destructReadIn_CTf_r;
  
  /* dcon (Ty MemIn_CTf,
      Dcon ReadIn_CTf) : [(destructReadIn_CTf,Word16#)] > (dconReadIn_CTf,MemIn_CTf) */
  assign dconReadIn_CTf_d = ReadIn_CTf_dc((& {destructReadIn_CTf_d[0]}), destructReadIn_CTf_d);
  assign {destructReadIn_CTf_r} = {1 {(dconReadIn_CTf_r && dconReadIn_CTf_d[0])}};
  
  /* destruct (Ty MemOut_CTf,
          Dcon ReadOut_CTf) : (memReadOut_CTf,MemOut_CTf) > [(readPointer_CTfscfarg_0_1_argbuf,CTf)] */
  assign readPointer_CTfscfarg_0_1_argbuf_d = {memReadOut_CTf_d[116:2],
                                               memReadOut_CTf_d[0]};
  assign memReadOut_CTf_r = readPointer_CTfscfarg_0_1_argbuf_r;
  
  /* mergectrl (Ty C5,Ty CTf) : [(lizzieLet16_1_argbuf,CTf),
                            (lizzieLet24_1_argbuf,CTf),
                            (lizzieLet39_1_argbuf,CTf),
                            (lizzieLet40_1_argbuf,CTf),
                            (lizzieLet41_1_argbuf,CTf)] > (writeMerge_choice_CTf,C5) (writeMerge_data_CTf,CTf) */
  logic [4:0] lizzieLet16_1_argbuf_select_d;
  assign lizzieLet16_1_argbuf_select_d = ((| lizzieLet16_1_argbuf_select_q) ? lizzieLet16_1_argbuf_select_q :
                                          (lizzieLet16_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet24_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet39_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet40_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet41_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet16_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet16_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet16_1_argbuf_select_q <= (lizzieLet16_1_argbuf_done ? 5'd0 :
                                        lizzieLet16_1_argbuf_select_d);
  logic [1:0] lizzieLet16_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet16_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet16_1_argbuf_emit_q <= (lizzieLet16_1_argbuf_done ? 2'd0 :
                                      lizzieLet16_1_argbuf_emit_d);
  logic [1:0] lizzieLet16_1_argbuf_emit_d;
  assign lizzieLet16_1_argbuf_emit_d = (lizzieLet16_1_argbuf_emit_q | ({writeMerge_choice_CTf_d[0],
                                                                        writeMerge_data_CTf_d[0]} & {writeMerge_choice_CTf_r,
                                                                                                     writeMerge_data_CTf_r}));
  logic lizzieLet16_1_argbuf_done;
  assign lizzieLet16_1_argbuf_done = (& lizzieLet16_1_argbuf_emit_d);
  assign {lizzieLet41_1_argbuf_r,
          lizzieLet40_1_argbuf_r,
          lizzieLet39_1_argbuf_r,
          lizzieLet24_1_argbuf_r,
          lizzieLet16_1_argbuf_r} = (lizzieLet16_1_argbuf_done ? lizzieLet16_1_argbuf_select_d :
                                     5'd0);
  assign writeMerge_data_CTf_d = ((lizzieLet16_1_argbuf_select_d[0] && (! lizzieLet16_1_argbuf_emit_q[0])) ? lizzieLet16_1_argbuf_d :
                                  ((lizzieLet16_1_argbuf_select_d[1] && (! lizzieLet16_1_argbuf_emit_q[0])) ? lizzieLet24_1_argbuf_d :
                                   ((lizzieLet16_1_argbuf_select_d[2] && (! lizzieLet16_1_argbuf_emit_q[0])) ? lizzieLet39_1_argbuf_d :
                                    ((lizzieLet16_1_argbuf_select_d[3] && (! lizzieLet16_1_argbuf_emit_q[0])) ? lizzieLet40_1_argbuf_d :
                                     ((lizzieLet16_1_argbuf_select_d[4] && (! lizzieLet16_1_argbuf_emit_q[0])) ? lizzieLet41_1_argbuf_d :
                                      {115'd0, 1'd0})))));
  assign writeMerge_choice_CTf_d = ((lizzieLet16_1_argbuf_select_d[0] && (! lizzieLet16_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                    ((lizzieLet16_1_argbuf_select_d[1] && (! lizzieLet16_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                     ((lizzieLet16_1_argbuf_select_d[2] && (! lizzieLet16_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                      ((lizzieLet16_1_argbuf_select_d[3] && (! lizzieLet16_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                       ((lizzieLet16_1_argbuf_select_d[4] && (! lizzieLet16_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                        {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTf) : (writeMerge_choice_CTf,C5) (demuxWriteResult_CTf,Pointer_CTf) > [(writeCTflizzieLet16_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet24_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet39_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet40_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet41_1_argbuf,Pointer_CTf)] */
  logic [4:0] demuxWriteResult_CTf_onehotd;
  always_comb
    if ((writeMerge_choice_CTf_d[0] && demuxWriteResult_CTf_d[0]))
      unique case (writeMerge_choice_CTf_d[3:1])
        3'd0: demuxWriteResult_CTf_onehotd = 5'd1;
        3'd1: demuxWriteResult_CTf_onehotd = 5'd2;
        3'd2: demuxWriteResult_CTf_onehotd = 5'd4;
        3'd3: demuxWriteResult_CTf_onehotd = 5'd8;
        3'd4: demuxWriteResult_CTf_onehotd = 5'd16;
        default: demuxWriteResult_CTf_onehotd = 5'd0;
      endcase
    else demuxWriteResult_CTf_onehotd = 5'd0;
  assign writeCTflizzieLet16_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[0]};
  assign writeCTflizzieLet24_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[1]};
  assign writeCTflizzieLet39_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[2]};
  assign writeCTflizzieLet40_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[3]};
  assign writeCTflizzieLet41_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[4]};
  assign demuxWriteResult_CTf_r = (| (demuxWriteResult_CTf_onehotd & {writeCTflizzieLet41_1_argbuf_r,
                                                                      writeCTflizzieLet40_1_argbuf_r,
                                                                      writeCTflizzieLet39_1_argbuf_r,
                                                                      writeCTflizzieLet24_1_argbuf_r,
                                                                      writeCTflizzieLet16_1_argbuf_r}));
  assign writeMerge_choice_CTf_r = demuxWriteResult_CTf_r;
  
  /* dcon (Ty MemIn_CTf,Dcon WriteIn_CTf) : [(forkHP1_CT2,Word16#),
                                        (writeMerge_data_CTf,CTf)] > (dconWriteIn_CTf,MemIn_CTf) */
  assign dconWriteIn_CTf_d = WriteIn_CTf_dc((& {forkHP1_CT2_d[0],
                                                writeMerge_data_CTf_d[0]}), forkHP1_CT2_d, writeMerge_data_CTf_d);
  assign {forkHP1_CT2_r,
          writeMerge_data_CTf_r} = {2 {(dconWriteIn_CTf_r && dconWriteIn_CTf_d[0])}};
  
  /* dcon (Ty Pointer_CTf,
      Dcon Pointer_CTf) : [(forkHP1_CT3,Word16#)] > (dconPtr_CTf,Pointer_CTf) */
  assign dconPtr_CTf_d = Pointer_CTf_dc((& {forkHP1_CT3_d[0]}), forkHP1_CT3_d);
  assign {forkHP1_CT3_r} = {1 {(dconPtr_CTf_r && dconPtr_CTf_d[0])}};
  
  /* demux (Ty MemOut_CTf,
       Ty Pointer_CTf) : (memWriteOut_CTf,MemOut_CTf) (dconPtr_CTf,Pointer_CTf) > [(_34,Pointer_CTf),
                                                                                   (demuxWriteResult_CTf,Pointer_CTf)] */
  logic [1:0] dconPtr_CTf_onehotd;
  always_comb
    if ((memWriteOut_CTf_d[0] && dconPtr_CTf_d[0]))
      unique case (memWriteOut_CTf_d[1:1])
        1'd0: dconPtr_CTf_onehotd = 2'd1;
        1'd1: dconPtr_CTf_onehotd = 2'd2;
        default: dconPtr_CTf_onehotd = 2'd0;
      endcase
    else dconPtr_CTf_onehotd = 2'd0;
  assign _34_d = {dconPtr_CTf_d[16:1], dconPtr_CTf_onehotd[0]};
  assign demuxWriteResult_CTf_d = {dconPtr_CTf_d[16:1],
                                   dconPtr_CTf_onehotd[1]};
  assign dconPtr_CTf_r = (| (dconPtr_CTf_onehotd & {demuxWriteResult_CTf_r,
                                                    _34_r}));
  assign memWriteOut_CTf_r = dconPtr_CTf_r;
  
  /* const (Ty Word16#,
       Lit 0) : (goFor_6,Go) > (initHP_CTf''''''''_f''''''''_Bool,Word16#) */
  assign \initHP_CTf''''''''_f''''''''_Bool_d  = {16'd0,
                                                  goFor_6_d[0]};
  assign goFor_6_r = \initHP_CTf''''''''_f''''''''_Bool_r ;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CTf''''''''_f''''''''_Bool1,Go) > (incrHP_CTf''''''''_f''''''''_Bool,Word16#) */
  assign \incrHP_CTf''''''''_f''''''''_Bool_d  = {16'd1,
                                                  \incrHP_CTf''''''''_f''''''''_Bool1_d [0]};
  assign \incrHP_CTf''''''''_f''''''''_Bool1_r  = \incrHP_CTf''''''''_f''''''''_Bool_r ;
  
  /* merge (Ty Go) : [(goFor_7,Go),
                 (incrHP_CTf''''''''_f''''''''_Bool2,Go)] > (incrHP_mergeCTf''''''''_f''''''''_Bool,Go) */
  logic [1:0] \incrHP_mergeCTf''''''''_f''''''''_Bool_selected ;
  logic [1:0] \incrHP_mergeCTf''''''''_f''''''''_Bool_select ;
  always_comb
    begin
      \incrHP_mergeCTf''''''''_f''''''''_Bool_selected  = 2'd0;
      if ((| \incrHP_mergeCTf''''''''_f''''''''_Bool_select ))
        \incrHP_mergeCTf''''''''_f''''''''_Bool_selected  = \incrHP_mergeCTf''''''''_f''''''''_Bool_select ;
      else
        if (goFor_7_d[0])
          \incrHP_mergeCTf''''''''_f''''''''_Bool_selected [0] = 1'd1;
        else if (\incrHP_CTf''''''''_f''''''''_Bool2_d [0])
          \incrHP_mergeCTf''''''''_f''''''''_Bool_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTf''''''''_f''''''''_Bool_select  <= 2'd0;
    else
      \incrHP_mergeCTf''''''''_f''''''''_Bool_select  <= (\incrHP_mergeCTf''''''''_f''''''''_Bool_r  ? 2'd0 :
                                                          \incrHP_mergeCTf''''''''_f''''''''_Bool_selected );
  always_comb
    if (\incrHP_mergeCTf''''''''_f''''''''_Bool_selected [0])
      \incrHP_mergeCTf''''''''_f''''''''_Bool_d  = goFor_7_d;
    else if (\incrHP_mergeCTf''''''''_f''''''''_Bool_selected [1])
      \incrHP_mergeCTf''''''''_f''''''''_Bool_d  = \incrHP_CTf''''''''_f''''''''_Bool2_d ;
    else \incrHP_mergeCTf''''''''_f''''''''_Bool_d  = 1'd0;
  assign {\incrHP_CTf''''''''_f''''''''_Bool2_r ,
          goFor_7_r} = (\incrHP_mergeCTf''''''''_f''''''''_Bool_r  ? \incrHP_mergeCTf''''''''_f''''''''_Bool_selected  :
                        2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTf''''''''_f''''''''_Bool_buf,Go) > [(incrHP_CTf''''''''_f''''''''_Bool1,Go),
                                                                  (incrHP_CTf''''''''_f''''''''_Bool2,Go)] */
  logic [1:0] \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted ;
  logic [1:0] \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_done ;
  assign \incrHP_CTf''''''''_f''''''''_Bool1_d  = (\incrHP_mergeCTf''''''''_f''''''''_Bool_buf_d [0] && (! \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted [0]));
  assign \incrHP_CTf''''''''_f''''''''_Bool2_d  = (\incrHP_mergeCTf''''''''_f''''''''_Bool_buf_d [0] && (! \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted [1]));
  assign \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_done  = (\incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted  | ({\incrHP_CTf''''''''_f''''''''_Bool2_d [0],
                                                                                                                       \incrHP_CTf''''''''_f''''''''_Bool1_d [0]} & {\incrHP_CTf''''''''_f''''''''_Bool2_r ,
                                                                                                                                                                     \incrHP_CTf''''''''_f''''''''_Bool1_r }));
  assign \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_r  = (& \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted  <= 2'd0;
    else
      \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_emitted  <= (\incrHP_mergeCTf''''''''_f''''''''_Bool_buf_r  ? 2'd0 :
                                                               \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_done );
  
  /* op_add (Ty Word16#) : (incrHP_CTf''''''''_f''''''''_Bool,Word16#) (forkHP1_CTf''''''''_f''''''''_Bool,Word16#) > (addHP_CTf''''''''_f''''''''_Bool,Word16#) */
  assign \addHP_CTf''''''''_f''''''''_Bool_d  = {(\incrHP_CTf''''''''_f''''''''_Bool_d [16:1] + \forkHP1_CTf''''''''_f''''''''_Bool_d [16:1]),
                                                 (\incrHP_CTf''''''''_f''''''''_Bool_d [0] && \forkHP1_CTf''''''''_f''''''''_Bool_d [0])};
  assign {\incrHP_CTf''''''''_f''''''''_Bool_r ,
          \forkHP1_CTf''''''''_f''''''''_Bool_r } = {2 {(\addHP_CTf''''''''_f''''''''_Bool_r  && \addHP_CTf''''''''_f''''''''_Bool_d [0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTf''''''''_f''''''''_Bool,Word16#),
                      (addHP_CTf''''''''_f''''''''_Bool,Word16#)] > (mergeHP_CTf''''''''_f''''''''_Bool,Word16#) */
  logic [1:0] \mergeHP_CTf''''''''_f''''''''_Bool_selected ;
  logic [1:0] \mergeHP_CTf''''''''_f''''''''_Bool_select ;
  always_comb
    begin
      \mergeHP_CTf''''''''_f''''''''_Bool_selected  = 2'd0;
      if ((| \mergeHP_CTf''''''''_f''''''''_Bool_select ))
        \mergeHP_CTf''''''''_f''''''''_Bool_selected  = \mergeHP_CTf''''''''_f''''''''_Bool_select ;
      else
        if (\initHP_CTf''''''''_f''''''''_Bool_d [0])
          \mergeHP_CTf''''''''_f''''''''_Bool_selected [0] = 1'd1;
        else if (\addHP_CTf''''''''_f''''''''_Bool_d [0])
          \mergeHP_CTf''''''''_f''''''''_Bool_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTf''''''''_f''''''''_Bool_select  <= 2'd0;
    else
      \mergeHP_CTf''''''''_f''''''''_Bool_select  <= (\mergeHP_CTf''''''''_f''''''''_Bool_r  ? 2'd0 :
                                                      \mergeHP_CTf''''''''_f''''''''_Bool_selected );
  always_comb
    if (\mergeHP_CTf''''''''_f''''''''_Bool_selected [0])
      \mergeHP_CTf''''''''_f''''''''_Bool_d  = \initHP_CTf''''''''_f''''''''_Bool_d ;
    else if (\mergeHP_CTf''''''''_f''''''''_Bool_selected [1])
      \mergeHP_CTf''''''''_f''''''''_Bool_d  = \addHP_CTf''''''''_f''''''''_Bool_d ;
    else \mergeHP_CTf''''''''_f''''''''_Bool_d  = {16'd0, 1'd0};
  assign {\addHP_CTf''''''''_f''''''''_Bool_r ,
          \initHP_CTf''''''''_f''''''''_Bool_r } = (\mergeHP_CTf''''''''_f''''''''_Bool_r  ? \mergeHP_CTf''''''''_f''''''''_Bool_selected  :
                                                    2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTf''''''''_f''''''''_Bool,Go) > (incrHP_mergeCTf''''''''_f''''''''_Bool_buf,Go) */
  Go_t \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d ;
  logic \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_r ;
  assign \incrHP_mergeCTf''''''''_f''''''''_Bool_r  = ((! \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d [0]) || \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d  <= 1'd0;
    else
      if (\incrHP_mergeCTf''''''''_f''''''''_Bool_r )
        \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d  <= \incrHP_mergeCTf''''''''_f''''''''_Bool_d ;
  Go_t \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf ;
  assign \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_r  = (! \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf [0]);
  assign \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_d  = (\incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf [0] ? \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf  :
                                                           \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf  <= 1'd0;
    else
      if ((\incrHP_mergeCTf''''''''_f''''''''_Bool_buf_r  && \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf [0]))
        \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf  <= 1'd0;
      else if (((! \incrHP_mergeCTf''''''''_f''''''''_Bool_buf_r ) && (! \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf [0])))
        \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_buf  <= \incrHP_mergeCTf''''''''_f''''''''_Bool_bufchan_d ;
  
  /* buf (Ty Word16#) : (mergeHP_CTf''''''''_f''''''''_Bool,Word16#) > (mergeHP_CTf''''''''_f''''''''_Bool_buf,Word16#) */
  \Word16#_t  \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d ;
  logic \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_r ;
  assign \mergeHP_CTf''''''''_f''''''''_Bool_r  = ((! \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d [0]) || \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\mergeHP_CTf''''''''_f''''''''_Bool_r )
        \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d  <= \mergeHP_CTf''''''''_f''''''''_Bool_d ;
  \Word16#_t  \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf ;
  assign \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_r  = (! \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf [0]);
  assign \mergeHP_CTf''''''''_f''''''''_Bool_buf_d  = (\mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf [0] ? \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf  :
                                                       \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\mergeHP_CTf''''''''_f''''''''_Bool_buf_r  && \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf [0]))
        \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \mergeHP_CTf''''''''_f''''''''_Bool_buf_r ) && (! \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf [0])))
        \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_buf  <= \mergeHP_CTf''''''''_f''''''''_Bool_bufchan_d ;
  
  /* fork (Ty Word16#) : (mergeHP_CTf''''''''_f''''''''_Bool_buf,Word16#) > [(forkHP1_CTf''''''''_f''''''''_Bool,Word16#),
                                                                        (forkHP1_CTf''''''''_f''''''''_Boo2,Word16#),
                                                                        (forkHP1_CTf''''''''_f''''''''_Boo3,Word16#)] */
  logic [2:0] \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted ;
  logic [2:0] \mergeHP_CTf''''''''_f''''''''_Bool_buf_done ;
  assign \forkHP1_CTf''''''''_f''''''''_Bool_d  = {\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [16:1],
                                                   (\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [0] && (! \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted [0]))};
  assign \forkHP1_CTf''''''''_f''''''''_Boo2_d  = {\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [16:1],
                                                   (\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [0] && (! \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted [1]))};
  assign \forkHP1_CTf''''''''_f''''''''_Boo3_d  = {\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [16:1],
                                                   (\mergeHP_CTf''''''''_f''''''''_Bool_buf_d [0] && (! \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted [2]))};
  assign \mergeHP_CTf''''''''_f''''''''_Bool_buf_done  = (\mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted  | ({\forkHP1_CTf''''''''_f''''''''_Boo3_d [0],
                                                                                                               \forkHP1_CTf''''''''_f''''''''_Boo2_d [0],
                                                                                                               \forkHP1_CTf''''''''_f''''''''_Bool_d [0]} & {\forkHP1_CTf''''''''_f''''''''_Boo3_r ,
                                                                                                                                                             \forkHP1_CTf''''''''_f''''''''_Boo2_r ,
                                                                                                                                                             \forkHP1_CTf''''''''_f''''''''_Bool_r }));
  assign \mergeHP_CTf''''''''_f''''''''_Bool_buf_r  = (& \mergeHP_CTf''''''''_f''''''''_Bool_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted  <= 3'd0;
    else
      \mergeHP_CTf''''''''_f''''''''_Bool_buf_emitted  <= (\mergeHP_CTf''''''''_f''''''''_Bool_buf_r  ? 3'd0 :
                                                           \mergeHP_CTf''''''''_f''''''''_Bool_buf_done );
  
  /* mergectrl (Ty C2,
           Ty MemIn_CTf''''''''_f''''''''_Bool) : [(dconReadIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool),
                                                   (dconWriteIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool)] > (memMergeChoice_CTf''''''''_f''''''''_Bool,C2) (memMergeIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool) */
  logic [1:0] \dconReadIn_CTf''''''''_f''''''''_Bool_select_d ;
  assign \dconReadIn_CTf''''''''_f''''''''_Bool_select_d  = ((| \dconReadIn_CTf''''''''_f''''''''_Bool_select_q ) ? \dconReadIn_CTf''''''''_f''''''''_Bool_select_q  :
                                                             (\dconReadIn_CTf''''''''_f''''''''_Bool_d [0] ? 2'd1 :
                                                              (\dconWriteIn_CTf''''''''_f''''''''_Bool_d [0] ? 2'd2 :
                                                               2'd0)));
  logic [1:0] \dconReadIn_CTf''''''''_f''''''''_Bool_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \dconReadIn_CTf''''''''_f''''''''_Bool_select_q  <= 2'd0;
    else
      \dconReadIn_CTf''''''''_f''''''''_Bool_select_q  <= (\dconReadIn_CTf''''''''_f''''''''_Bool_done  ? 2'd0 :
                                                           \dconReadIn_CTf''''''''_f''''''''_Bool_select_d );
  logic [1:0] \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q  <= 2'd0;
    else
      \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q  <= (\dconReadIn_CTf''''''''_f''''''''_Bool_done  ? 2'd0 :
                                                         \dconReadIn_CTf''''''''_f''''''''_Bool_emit_d );
  logic [1:0] \dconReadIn_CTf''''''''_f''''''''_Bool_emit_d ;
  assign \dconReadIn_CTf''''''''_f''''''''_Bool_emit_d  = (\dconReadIn_CTf''''''''_f''''''''_Bool_emit_q  | ({\memMergeChoice_CTf''''''''_f''''''''_Bool_d [0],
                                                                                                              \memMergeIn_CTf''''''''_f''''''''_Bool_d [0]} & {\memMergeChoice_CTf''''''''_f''''''''_Bool_r ,
                                                                                                                                                               \memMergeIn_CTf''''''''_f''''''''_Bool_r }));
  logic \dconReadIn_CTf''''''''_f''''''''_Bool_done ;
  assign \dconReadIn_CTf''''''''_f''''''''_Bool_done  = (& \dconReadIn_CTf''''''''_f''''''''_Bool_emit_d );
  assign {\dconWriteIn_CTf''''''''_f''''''''_Bool_r ,
          \dconReadIn_CTf''''''''_f''''''''_Bool_r } = (\dconReadIn_CTf''''''''_f''''''''_Bool_done  ? \dconReadIn_CTf''''''''_f''''''''_Bool_select_d  :
                                                        2'd0);
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_d  = ((\dconReadIn_CTf''''''''_f''''''''_Bool_select_d [0] && (! \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q [0])) ? \dconReadIn_CTf''''''''_f''''''''_Bool_d  :
                                                      ((\dconReadIn_CTf''''''''_f''''''''_Bool_select_d [1] && (! \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q [0])) ? \dconWriteIn_CTf''''''''_f''''''''_Bool_d  :
                                                       {84'd0, 1'd0}));
  assign \memMergeChoice_CTf''''''''_f''''''''_Bool_d  = ((\dconReadIn_CTf''''''''_f''''''''_Bool_select_d [0] && (! \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q [1])) ? C1_2_dc(1'd1) :
                                                          ((\dconReadIn_CTf''''''''_f''''''''_Bool_select_d [1] && (! \dconReadIn_CTf''''''''_f''''''''_Bool_emit_q [1])) ? C2_2_dc(1'd1) :
                                                           {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTf''''''''_f''''''''_Bool,
      Ty MemOut_CTf''''''''_f''''''''_Bool) : (memMergeIn_CTf''''''''_f''''''''_Bool_dbuf,MemIn_CTf''''''''_f''''''''_Bool) > (memOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool) */
  logic [66:0] \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_mem [65535:0];
  logic [15:0] \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_address ;
  logic [66:0] \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_din ;
  logic [66:0] \memOut_CTf''''''''_f''''''''_Bool_q ;
  logic \memOut_CTf''''''''_f''''''''_Bool_valid ;
  logic \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_we ;
  logic \memOut_CTf''''''''_f''''''''_Bool_we ;
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_din  = \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [84:18];
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_address  = \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [17:2];
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_we  = (\memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [1:1] && \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        \memOut_CTf''''''''_f''''''''_Bool_we  <= 1'd0;
        \memOut_CTf''''''''_f''''''''_Bool_valid  <= 1'd0;
      end
    else
      begin
        \memOut_CTf''''''''_f''''''''_Bool_we  <= \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_we ;
        \memOut_CTf''''''''_f''''''''_Bool_valid  <= \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [0];
        if (\memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_we )
          begin
            \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_mem [\memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_address ] <= \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_din ;
            \memOut_CTf''''''''_f''''''''_Bool_q  <= \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_din ;
          end
        else
          \memOut_CTf''''''''_f''''''''_Bool_q  <= \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_mem [\memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_address ];
      end
  assign \memOut_CTf''''''''_f''''''''_Bool_d  = {\memOut_CTf''''''''_f''''''''_Bool_q ,
                                                  \memOut_CTf''''''''_f''''''''_Bool_we ,
                                                  \memOut_CTf''''''''_f''''''''_Bool_valid };
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_r  = ((! \memOut_CTf''''''''_f''''''''_Bool_valid ) || \memOut_CTf''''''''_f''''''''_Bool_r );
  logic [31:0] \profiling_MemIn_CTf''''''''_f''''''''_Bool_read ;
  logic [31:0] \profiling_MemIn_CTf''''''''_f''''''''_Bool_write ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        \profiling_MemIn_CTf''''''''_f''''''''_Bool_write  <= 0;
        \profiling_MemIn_CTf''''''''_f''''''''_Bool_read  <= 0;
      end
    else
      if ((\memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_we  == 1'd1))
        \profiling_MemIn_CTf''''''''_f''''''''_Bool_write  <= (\profiling_MemIn_CTf''''''''_f''''''''_Bool_write  + 1);
      else
        if ((\memOut_CTf''''''''_f''''''''_Bool_valid  == 1'd1))
          \profiling_MemIn_CTf''''''''_f''''''''_Bool_read  <= (\profiling_MemIn_CTf''''''''_f''''''''_Bool_read  + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CTf''''''''_f''''''''_Bool) : (memMergeChoice_CTf''''''''_f''''''''_Bool,C2) (memOut_CTf''''''''_f''''''''_Bool_dbuf,MemOut_CTf''''''''_f''''''''_Bool) > [(memReadOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                            (memWriteOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool)] */
  logic [1:0] \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd ;
  always_comb
    if ((\memMergeChoice_CTf''''''''_f''''''''_Bool_d [0] && \memOut_CTf''''''''_f''''''''_Bool_dbuf_d [0]))
      unique case (\memMergeChoice_CTf''''''''_f''''''''_Bool_d [1:1])
        1'd0: \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd  = 2'd1;
        1'd1: \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd  = 2'd2;
        default: \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd  = 2'd0;
      endcase
    else \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd  = 2'd0;
  assign \memReadOut_CTf''''''''_f''''''''_Bool_d  = {\memOut_CTf''''''''_f''''''''_Bool_dbuf_d [68:1],
                                                      \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd [0]};
  assign \memWriteOut_CTf''''''''_f''''''''_Bool_d  = {\memOut_CTf''''''''_f''''''''_Bool_dbuf_d [68:1],
                                                       \memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd [1]};
  assign \memOut_CTf''''''''_f''''''''_Bool_dbuf_r  = (| (\memOut_CTf''''''''_f''''''''_Bool_dbuf_onehotd  & {\memWriteOut_CTf''''''''_f''''''''_Bool_r ,
                                                                                                              \memReadOut_CTf''''''''_f''''''''_Bool_r }));
  assign \memMergeChoice_CTf''''''''_f''''''''_Bool_r  = \memOut_CTf''''''''_f''''''''_Bool_dbuf_r ;
  
  /* dbuf (Ty MemIn_CTf''''''''_f''''''''_Bool) : (memMergeIn_CTf''''''''_f''''''''_Bool_rbuf,MemIn_CTf''''''''_f''''''''_Bool) > (memMergeIn_CTf''''''''_f''''''''_Bool_dbuf,MemIn_CTf''''''''_f''''''''_Bool) */
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_r  = ((! \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d [0]) || \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d  <= {84'd0, 1'd0};
    else
      if (\memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_r )
        \memMergeIn_CTf''''''''_f''''''''_Bool_dbuf_d  <= \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_d ;
  
  /* rbuf (Ty MemIn_CTf''''''''_f''''''''_Bool) : (memMergeIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool) > (memMergeIn_CTf''''''''_f''''''''_Bool_rbuf,MemIn_CTf''''''''_f''''''''_Bool) */
  \MemIn_CTf''''''''_f''''''''_Bool_t  \memMergeIn_CTf''''''''_f''''''''_Bool_buf ;
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_r  = (! \memMergeIn_CTf''''''''_f''''''''_Bool_buf [0]);
  assign \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_d  = (\memMergeIn_CTf''''''''_f''''''''_Bool_buf [0] ? \memMergeIn_CTf''''''''_f''''''''_Bool_buf  :
                                                           \memMergeIn_CTf''''''''_f''''''''_Bool_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memMergeIn_CTf''''''''_f''''''''_Bool_buf  <= {84'd0, 1'd0};
    else
      if ((\memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_r  && \memMergeIn_CTf''''''''_f''''''''_Bool_buf [0]))
        \memMergeIn_CTf''''''''_f''''''''_Bool_buf  <= {84'd0, 1'd0};
      else if (((! \memMergeIn_CTf''''''''_f''''''''_Bool_rbuf_r ) && (! \memMergeIn_CTf''''''''_f''''''''_Bool_buf [0])))
        \memMergeIn_CTf''''''''_f''''''''_Bool_buf  <= \memMergeIn_CTf''''''''_f''''''''_Bool_d ;
  
  /* dbuf (Ty MemOut_CTf''''''''_f''''''''_Bool) : (memOut_CTf''''''''_f''''''''_Bool_rbuf,MemOut_CTf''''''''_f''''''''_Bool) > (memOut_CTf''''''''_f''''''''_Bool_dbuf,MemOut_CTf''''''''_f''''''''_Bool) */
  assign \memOut_CTf''''''''_f''''''''_Bool_rbuf_r  = ((! \memOut_CTf''''''''_f''''''''_Bool_dbuf_d [0]) || \memOut_CTf''''''''_f''''''''_Bool_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memOut_CTf''''''''_f''''''''_Bool_dbuf_d  <= {68'd0, 1'd0};
    else
      if (\memOut_CTf''''''''_f''''''''_Bool_rbuf_r )
        \memOut_CTf''''''''_f''''''''_Bool_dbuf_d  <= \memOut_CTf''''''''_f''''''''_Bool_rbuf_d ;
  
  /* rbuf (Ty MemOut_CTf''''''''_f''''''''_Bool) : (memOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool) > (memOut_CTf''''''''_f''''''''_Bool_rbuf,MemOut_CTf''''''''_f''''''''_Bool) */
  \MemOut_CTf''''''''_f''''''''_Bool_t  \memOut_CTf''''''''_f''''''''_Bool_buf ;
  assign \memOut_CTf''''''''_f''''''''_Bool_r  = (! \memOut_CTf''''''''_f''''''''_Bool_buf [0]);
  assign \memOut_CTf''''''''_f''''''''_Bool_rbuf_d  = (\memOut_CTf''''''''_f''''''''_Bool_buf [0] ? \memOut_CTf''''''''_f''''''''_Bool_buf  :
                                                       \memOut_CTf''''''''_f''''''''_Bool_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \memOut_CTf''''''''_f''''''''_Bool_buf  <= {68'd0, 1'd0};
    else
      if ((\memOut_CTf''''''''_f''''''''_Bool_rbuf_r  && \memOut_CTf''''''''_f''''''''_Bool_buf [0]))
        \memOut_CTf''''''''_f''''''''_Bool_buf  <= {68'd0, 1'd0};
      else if (((! \memOut_CTf''''''''_f''''''''_Bool_rbuf_r ) && (! \memOut_CTf''''''''_f''''''''_Bool_buf [0])))
        \memOut_CTf''''''''_f''''''''_Bool_buf  <= \memOut_CTf''''''''_f''''''''_Bool_d ;
  
  /* destruct (Ty Pointer_CTf''''''''_f''''''''_Bool,
          Dcon Pointer_CTf''''''''_f''''''''_Bool) : (scfarg_0_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > [(destructReadIn_CTf''''''''_f''''''''_Bool,Word16#)] */
  assign \destructReadIn_CTf''''''''_f''''''''_Bool_d  = {scfarg_0_1_1_argbuf_d[16:1],
                                                          scfarg_0_1_1_argbuf_d[0]};
  assign scfarg_0_1_1_argbuf_r = \destructReadIn_CTf''''''''_f''''''''_Bool_r ;
  
  /* dcon (Ty MemIn_CTf''''''''_f''''''''_Bool,
      Dcon ReadIn_CTf''''''''_f''''''''_Bool) : [(destructReadIn_CTf''''''''_f''''''''_Bool,Word16#)] > (dconReadIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool) */
  assign \dconReadIn_CTf''''''''_f''''''''_Bool_d  = \ReadIn_CTf''''''''_f''''''''_Bool_dc ((& {\destructReadIn_CTf''''''''_f''''''''_Bool_d [0]}), \destructReadIn_CTf''''''''_f''''''''_Bool_d );
  assign {\destructReadIn_CTf''''''''_f''''''''_Bool_r } = {1 {(\dconReadIn_CTf''''''''_f''''''''_Bool_r  && \dconReadIn_CTf''''''''_f''''''''_Bool_d [0])}};
  
  /* destruct (Ty MemOut_CTf''''''''_f''''''''_Bool,
          Dcon ReadOut_CTf''''''''_f''''''''_Bool) : (memReadOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool) > [(readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf,CTf''''''''_f''''''''_Bool)] */
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_d  = {\memReadOut_CTf''''''''_f''''''''_Bool_d [68:2],
                                                                          \memReadOut_CTf''''''''_f''''''''_Bool_d [0]};
  assign \memReadOut_CTf''''''''_f''''''''_Bool_r  = \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_r ;
  
  /* mergectrl (Ty C5,
           Ty CTf''''''''_f''''''''_Bool) : [(lizzieLet22_1_argbuf,CTf''''''''_f''''''''_Bool),
                                             (lizzieLet25_1_argbuf,CTf''''''''_f''''''''_Bool),
                                             (lizzieLet44_1_argbuf,CTf''''''''_f''''''''_Bool),
                                             (lizzieLet45_1_argbuf,CTf''''''''_f''''''''_Bool),
                                             (lizzieLet46_1_argbuf,CTf''''''''_f''''''''_Bool)] > (writeMerge_choice_CTf''''''''_f''''''''_Bool,C5) (writeMerge_data_CTf''''''''_f''''''''_Bool,CTf''''''''_f''''''''_Bool) */
  logic [4:0] lizzieLet22_1_argbuf_select_d;
  assign lizzieLet22_1_argbuf_select_d = ((| lizzieLet22_1_argbuf_select_q) ? lizzieLet22_1_argbuf_select_q :
                                          (lizzieLet22_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet25_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet44_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet45_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet46_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet22_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet22_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet22_1_argbuf_select_q <= (lizzieLet22_1_argbuf_done ? 5'd0 :
                                        lizzieLet22_1_argbuf_select_d);
  logic [1:0] lizzieLet22_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet22_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet22_1_argbuf_emit_q <= (lizzieLet22_1_argbuf_done ? 2'd0 :
                                      lizzieLet22_1_argbuf_emit_d);
  logic [1:0] lizzieLet22_1_argbuf_emit_d;
  assign lizzieLet22_1_argbuf_emit_d = (lizzieLet22_1_argbuf_emit_q | ({\writeMerge_choice_CTf''''''''_f''''''''_Bool_d [0],
                                                                        \writeMerge_data_CTf''''''''_f''''''''_Bool_d [0]} & {\writeMerge_choice_CTf''''''''_f''''''''_Bool_r ,
                                                                                                                              \writeMerge_data_CTf''''''''_f''''''''_Bool_r }));
  logic lizzieLet22_1_argbuf_done;
  assign lizzieLet22_1_argbuf_done = (& lizzieLet22_1_argbuf_emit_d);
  assign {lizzieLet46_1_argbuf_r,
          lizzieLet45_1_argbuf_r,
          lizzieLet44_1_argbuf_r,
          lizzieLet25_1_argbuf_r,
          lizzieLet22_1_argbuf_r} = (lizzieLet22_1_argbuf_done ? lizzieLet22_1_argbuf_select_d :
                                     5'd0);
  assign \writeMerge_data_CTf''''''''_f''''''''_Bool_d  = ((lizzieLet22_1_argbuf_select_d[0] && (! lizzieLet22_1_argbuf_emit_q[0])) ? lizzieLet22_1_argbuf_d :
                                                           ((lizzieLet22_1_argbuf_select_d[1] && (! lizzieLet22_1_argbuf_emit_q[0])) ? lizzieLet25_1_argbuf_d :
                                                            ((lizzieLet22_1_argbuf_select_d[2] && (! lizzieLet22_1_argbuf_emit_q[0])) ? lizzieLet44_1_argbuf_d :
                                                             ((lizzieLet22_1_argbuf_select_d[3] && (! lizzieLet22_1_argbuf_emit_q[0])) ? lizzieLet45_1_argbuf_d :
                                                              ((lizzieLet22_1_argbuf_select_d[4] && (! lizzieLet22_1_argbuf_emit_q[0])) ? lizzieLet46_1_argbuf_d :
                                                               {67'd0, 1'd0})))));
  assign \writeMerge_choice_CTf''''''''_f''''''''_Bool_d  = ((lizzieLet22_1_argbuf_select_d[0] && (! lizzieLet22_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                                             ((lizzieLet22_1_argbuf_select_d[1] && (! lizzieLet22_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                                              ((lizzieLet22_1_argbuf_select_d[2] && (! lizzieLet22_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                                               ((lizzieLet22_1_argbuf_select_d[3] && (! lizzieLet22_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                                                ((lizzieLet22_1_argbuf_select_d[4] && (! lizzieLet22_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                                                 {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeMerge_choice_CTf''''''''_f''''''''_Bool,C5) (demuxWriteResult_CTf''''''''_f''''''''_Bool,Pointer_CTf''''''''_f''''''''_Bool) > [(writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                                      (writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                                      (writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                                      (writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                                      (writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool)] */
  logic [4:0] \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd ;
  always_comb
    if ((\writeMerge_choice_CTf''''''''_f''''''''_Bool_d [0] && \demuxWriteResult_CTf''''''''_f''''''''_Bool_d [0]))
      unique case (\writeMerge_choice_CTf''''''''_f''''''''_Bool_d [3:1])
        3'd0: \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd1;
        3'd1: \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd2;
        3'd2: \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd4;
        3'd3: \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd8;
        3'd4:
          \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd16;
        default:
          \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd0;
      endcase
    else \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  = 5'd0;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_d  = {\demuxWriteResult_CTf''''''''_f''''''''_Bool_d [16:1],
                                                                    \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd [0]};
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_d  = {\demuxWriteResult_CTf''''''''_f''''''''_Bool_d [16:1],
                                                                    \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd [1]};
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_d  = {\demuxWriteResult_CTf''''''''_f''''''''_Bool_d [16:1],
                                                                    \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd [2]};
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_d  = {\demuxWriteResult_CTf''''''''_f''''''''_Bool_d [16:1],
                                                                    \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd [3]};
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_d  = {\demuxWriteResult_CTf''''''''_f''''''''_Bool_d [16:1],
                                                                    \demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd [4]};
  assign \demuxWriteResult_CTf''''''''_f''''''''_Bool_r  = (| (\demuxWriteResult_CTf''''''''_f''''''''_Bool_onehotd  & {\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_r ,
                                                                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_r ,
                                                                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_r ,
                                                                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_r ,
                                                                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_r }));
  assign \writeMerge_choice_CTf''''''''_f''''''''_Bool_r  = \demuxWriteResult_CTf''''''''_f''''''''_Bool_r ;
  
  /* dcon (Ty MemIn_CTf''''''''_f''''''''_Bool,
      Dcon WriteIn_CTf''''''''_f''''''''_Bool) : [(forkHP1_CTf''''''''_f''''''''_Boo2,Word16#),
                                                  (writeMerge_data_CTf''''''''_f''''''''_Bool,CTf''''''''_f''''''''_Bool)] > (dconWriteIn_CTf''''''''_f''''''''_Bool,MemIn_CTf''''''''_f''''''''_Bool) */
  assign \dconWriteIn_CTf''''''''_f''''''''_Bool_d  = \WriteIn_CTf''''''''_f''''''''_Bool_dc ((& {\forkHP1_CTf''''''''_f''''''''_Boo2_d [0],
                                                                                                  \writeMerge_data_CTf''''''''_f''''''''_Bool_d [0]}), \forkHP1_CTf''''''''_f''''''''_Boo2_d , \writeMerge_data_CTf''''''''_f''''''''_Bool_d );
  assign {\forkHP1_CTf''''''''_f''''''''_Boo2_r ,
          \writeMerge_data_CTf''''''''_f''''''''_Bool_r } = {2 {(\dconWriteIn_CTf''''''''_f''''''''_Bool_r  && \dconWriteIn_CTf''''''''_f''''''''_Bool_d [0])}};
  
  /* dcon (Ty Pointer_CTf''''''''_f''''''''_Bool,
      Dcon Pointer_CTf''''''''_f''''''''_Bool) : [(forkHP1_CTf''''''''_f''''''''_Boo3,Word16#)] > (dconPtr_CTf''''''''_f''''''''_Bool,Pointer_CTf''''''''_f''''''''_Bool) */
  assign \dconPtr_CTf''''''''_f''''''''_Bool_d  = \Pointer_CTf''''''''_f''''''''_Bool_dc ((& {\forkHP1_CTf''''''''_f''''''''_Boo3_d [0]}), \forkHP1_CTf''''''''_f''''''''_Boo3_d );
  assign {\forkHP1_CTf''''''''_f''''''''_Boo3_r } = {1 {(\dconPtr_CTf''''''''_f''''''''_Bool_r  && \dconPtr_CTf''''''''_f''''''''_Bool_d [0])}};
  
  /* demux (Ty MemOut_CTf''''''''_f''''''''_Bool,
       Ty Pointer_CTf''''''''_f''''''''_Bool) : (memWriteOut_CTf''''''''_f''''''''_Bool,MemOut_CTf''''''''_f''''''''_Bool) (dconPtr_CTf''''''''_f''''''''_Bool,Pointer_CTf''''''''_f''''''''_Bool) > [(_33,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                                                                                      (demuxWriteResult_CTf''''''''_f''''''''_Bool,Pointer_CTf''''''''_f''''''''_Bool)] */
  logic [1:0] \dconPtr_CTf''''''''_f''''''''_Bool_onehotd ;
  always_comb
    if ((\memWriteOut_CTf''''''''_f''''''''_Bool_d [0] && \dconPtr_CTf''''''''_f''''''''_Bool_d [0]))
      unique case (\memWriteOut_CTf''''''''_f''''''''_Bool_d [1:1])
        1'd0: \dconPtr_CTf''''''''_f''''''''_Bool_onehotd  = 2'd1;
        1'd1: \dconPtr_CTf''''''''_f''''''''_Bool_onehotd  = 2'd2;
        default: \dconPtr_CTf''''''''_f''''''''_Bool_onehotd  = 2'd0;
      endcase
    else \dconPtr_CTf''''''''_f''''''''_Bool_onehotd  = 2'd0;
  assign _33_d = {\dconPtr_CTf''''''''_f''''''''_Bool_d [16:1],
                  \dconPtr_CTf''''''''_f''''''''_Bool_onehotd [0]};
  assign \demuxWriteResult_CTf''''''''_f''''''''_Bool_d  = {\dconPtr_CTf''''''''_f''''''''_Bool_d [16:1],
                                                            \dconPtr_CTf''''''''_f''''''''_Bool_onehotd [1]};
  assign \dconPtr_CTf''''''''_f''''''''_Bool_r  = (| (\dconPtr_CTf''''''''_f''''''''_Bool_onehotd  & {\demuxWriteResult_CTf''''''''_f''''''''_Bool_r ,
                                                                                                      _33_r}));
  assign \memWriteOut_CTf''''''''_f''''''''_Bool_r  = \dconPtr_CTf''''''''_f''''''''_Bool_r ;
  
  /* const (Ty Word16#,Lit 0) : (goFor_8,Go) > (initHP_Nat,Word16#) */
  assign initHP_Nat_d = {16'd0, goFor_8_d[0]};
  assign goFor_8_r = initHP_Nat_r;
  
  /* const (Ty Word16#,Lit 1) : (incrHP_Nat1,Go) > (incrHP_Nat,Word16#) */
  assign incrHP_Nat_d = {16'd1, incrHP_Nat1_d[0]};
  assign incrHP_Nat1_r = incrHP_Nat_r;
  
  /* merge (Ty Go) : [(goFor_9,Go),
                 (incrHP_Nat2,Go)] > (incrHP_mergeNat,Go) */
  logic [1:0] incrHP_mergeNat_selected;
  logic [1:0] incrHP_mergeNat_select;
  always_comb
    begin
      incrHP_mergeNat_selected = 2'd0;
      if ((| incrHP_mergeNat_select))
        incrHP_mergeNat_selected = incrHP_mergeNat_select;
      else
        if (goFor_9_d[0]) incrHP_mergeNat_selected[0] = 1'd1;
        else if (incrHP_Nat2_d[0]) incrHP_mergeNat_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeNat_select <= 2'd0;
    else
      incrHP_mergeNat_select <= (incrHP_mergeNat_r ? 2'd0 :
                                 incrHP_mergeNat_selected);
  always_comb
    if (incrHP_mergeNat_selected[0]) incrHP_mergeNat_d = goFor_9_d;
    else if (incrHP_mergeNat_selected[1])
      incrHP_mergeNat_d = incrHP_Nat2_d;
    else incrHP_mergeNat_d = 1'd0;
  assign {incrHP_Nat2_r,
          goFor_9_r} = (incrHP_mergeNat_r ? incrHP_mergeNat_selected :
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
  
  /* bram (Ty MemIn_Nat,
      Ty MemOut_Nat) : (dconWriteIn_Nat,MemIn_Nat) > (memWriteOut_Nat,MemOut_Nat) */
  logic [16:0] dconWriteIn_Nat_mem[65535:0];
  logic [15:0] dconWriteIn_Nat_address;
  logic [16:0] dconWriteIn_Nat_din;
  logic [16:0] memWriteOut_Nat_q;
  logic memWriteOut_Nat_valid;
  logic dconWriteIn_Nat_we;
  logic memWriteOut_Nat_we;
  assign dconWriteIn_Nat_din = dconWriteIn_Nat_d[34:18];
  assign dconWriteIn_Nat_address = dconWriteIn_Nat_d[17:2];
  assign dconWriteIn_Nat_we = (dconWriteIn_Nat_d[1:1] && dconWriteIn_Nat_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memWriteOut_Nat_we <= 1'd0;
        memWriteOut_Nat_valid <= 1'd0;
      end
    else
      begin
        memWriteOut_Nat_we <= dconWriteIn_Nat_we;
        memWriteOut_Nat_valid <= dconWriteIn_Nat_d[0];
        if (dconWriteIn_Nat_we)
          begin
            dconWriteIn_Nat_mem[dconWriteIn_Nat_address] <= dconWriteIn_Nat_din;
            memWriteOut_Nat_q <= dconWriteIn_Nat_din;
          end
        else
          memWriteOut_Nat_q <= dconWriteIn_Nat_mem[dconWriteIn_Nat_address];
      end
  assign memWriteOut_Nat_d = {memWriteOut_Nat_q,
                              memWriteOut_Nat_we,
                              memWriteOut_Nat_valid};
  assign dconWriteIn_Nat_r = ((! memWriteOut_Nat_valid) || memWriteOut_Nat_r);
  logic [31:0] profiling_MemIn_Nat_read;
  logic [31:0] profiling_MemIn_Nat_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_Nat_write <= 0;
        profiling_MemIn_Nat_read <= 0;
      end
    else
      if ((dconWriteIn_Nat_we == 1'd1))
        profiling_MemIn_Nat_write <= (profiling_MemIn_Nat_write + 1);
      else
        if ((memWriteOut_Nat_valid == 1'd1))
          profiling_MemIn_Nat_read <= (profiling_MemIn_Nat_read + 1);
  
  /* mergectrl (Ty C2,Ty Nat) : [(lizzieLet36_1_argbuf,Nat),
                            (lizzieLet37_1_argbuf,Nat)] > (writeMerge_choice_Nat,C2) (writeMerge_data_Nat,Nat) */
  logic [1:0] lizzieLet36_1_argbuf_select_d;
  assign lizzieLet36_1_argbuf_select_d = ((| lizzieLet36_1_argbuf_select_q) ? lizzieLet36_1_argbuf_select_q :
                                          (lizzieLet36_1_argbuf_d[0] ? 2'd1 :
                                           (lizzieLet37_1_argbuf_d[0] ? 2'd2 :
                                            2'd0)));
  logic [1:0] lizzieLet36_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet36_1_argbuf_select_q <= 2'd0;
    else
      lizzieLet36_1_argbuf_select_q <= (lizzieLet36_1_argbuf_done ? 2'd0 :
                                        lizzieLet36_1_argbuf_select_d);
  logic [1:0] lizzieLet36_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet36_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet36_1_argbuf_emit_q <= (lizzieLet36_1_argbuf_done ? 2'd0 :
                                      lizzieLet36_1_argbuf_emit_d);
  logic [1:0] lizzieLet36_1_argbuf_emit_d;
  assign lizzieLet36_1_argbuf_emit_d = (lizzieLet36_1_argbuf_emit_q | ({writeMerge_choice_Nat_d[0],
                                                                        writeMerge_data_Nat_d[0]} & {writeMerge_choice_Nat_r,
                                                                                                     writeMerge_data_Nat_r}));
  logic lizzieLet36_1_argbuf_done;
  assign lizzieLet36_1_argbuf_done = (& lizzieLet36_1_argbuf_emit_d);
  assign {lizzieLet37_1_argbuf_r,
          lizzieLet36_1_argbuf_r} = (lizzieLet36_1_argbuf_done ? lizzieLet36_1_argbuf_select_d :
                                     2'd0);
  assign writeMerge_data_Nat_d = ((lizzieLet36_1_argbuf_select_d[0] && (! lizzieLet36_1_argbuf_emit_q[0])) ? lizzieLet36_1_argbuf_d :
                                  ((lizzieLet36_1_argbuf_select_d[1] && (! lizzieLet36_1_argbuf_emit_q[0])) ? lizzieLet37_1_argbuf_d :
                                   {17'd0, 1'd0}));
  assign writeMerge_choice_Nat_d = ((lizzieLet36_1_argbuf_select_d[0] && (! lizzieLet36_1_argbuf_emit_q[1])) ? C1_2_dc(1'd1) :
                                    ((lizzieLet36_1_argbuf_select_d[1] && (! lizzieLet36_1_argbuf_emit_q[1])) ? C2_2_dc(1'd1) :
                                     {1'd0, 1'd0}));
  
  /* demux (Ty C2,
       Ty Pointer_Nat) : (writeMerge_choice_Nat,C2) (demuxWriteResult_Nat,Pointer_Nat) > [(writeNatlizzieLet36_1_argbuf,Pointer_Nat),
                                                                                          (writeNatlizzieLet37_1_argbuf,Pointer_Nat)] */
  logic [1:0] demuxWriteResult_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_Nat_d[0] && demuxWriteResult_Nat_d[0]))
      unique case (writeMerge_choice_Nat_d[1:1])
        1'd0: demuxWriteResult_Nat_onehotd = 2'd1;
        1'd1: demuxWriteResult_Nat_onehotd = 2'd2;
        default: demuxWriteResult_Nat_onehotd = 2'd0;
      endcase
    else demuxWriteResult_Nat_onehotd = 2'd0;
  assign writeNatlizzieLet36_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[0]};
  assign writeNatlizzieLet37_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[1]};
  assign demuxWriteResult_Nat_r = (| (demuxWriteResult_Nat_onehotd & {writeNatlizzieLet37_1_argbuf_r,
                                                                      writeNatlizzieLet36_1_argbuf_r}));
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
       Ty Pointer_Nat) : (memWriteOut_Nat,MemOut_Nat) (dconPtr_Nat,Pointer_Nat) > [(_32,Pointer_Nat),
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
  assign _32_d = {dconPtr_Nat_d[16:1], dconPtr_Nat_onehotd[0]};
  assign demuxWriteResult_Nat_d = {dconPtr_Nat_d[16:1],
                                   dconPtr_Nat_onehotd[1]};
  assign dconPtr_Nat_r = (| (dconPtr_Nat_onehotd & {demuxWriteResult_Nat_r,
                                                    _32_r}));
  assign memWriteOut_Nat_r = dconPtr_Nat_r;
  
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
           Ty Pointer_QTree_Bool) : [(m1a86_1_argbuf,Pointer_QTree_Bool),
                                     (m2a87_1_argbuf,Pointer_QTree_Bool),
                                     (q4a8s_1_argbuf,Pointer_QTree_Bool)] > (readMerge_choice_QTree_Bool,C3) (readMerge_data_QTree_Bool,Pointer_QTree_Bool) */
  logic [2:0] m1a86_1_argbuf_select_d;
  assign m1a86_1_argbuf_select_d = ((| m1a86_1_argbuf_select_q) ? m1a86_1_argbuf_select_q :
                                    (m1a86_1_argbuf_d[0] ? 3'd1 :
                                     (m2a87_1_argbuf_d[0] ? 3'd2 :
                                      (q4a8s_1_argbuf_d[0] ? 3'd4 :
                                       3'd0))));
  logic [2:0] m1a86_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a86_1_argbuf_select_q <= 3'd0;
    else
      m1a86_1_argbuf_select_q <= (m1a86_1_argbuf_done ? 3'd0 :
                                  m1a86_1_argbuf_select_d);
  logic [1:0] m1a86_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a86_1_argbuf_emit_q <= 2'd0;
    else
      m1a86_1_argbuf_emit_q <= (m1a86_1_argbuf_done ? 2'd0 :
                                m1a86_1_argbuf_emit_d);
  logic [1:0] m1a86_1_argbuf_emit_d;
  assign m1a86_1_argbuf_emit_d = (m1a86_1_argbuf_emit_q | ({readMerge_choice_QTree_Bool_d[0],
                                                            readMerge_data_QTree_Bool_d[0]} & {readMerge_choice_QTree_Bool_r,
                                                                                               readMerge_data_QTree_Bool_r}));
  logic m1a86_1_argbuf_done;
  assign m1a86_1_argbuf_done = (& m1a86_1_argbuf_emit_d);
  assign {q4a8s_1_argbuf_r,
          m2a87_1_argbuf_r,
          m1a86_1_argbuf_r} = (m1a86_1_argbuf_done ? m1a86_1_argbuf_select_d :
                               3'd0);
  assign readMerge_data_QTree_Bool_d = ((m1a86_1_argbuf_select_d[0] && (! m1a86_1_argbuf_emit_q[0])) ? m1a86_1_argbuf_d :
                                        ((m1a86_1_argbuf_select_d[1] && (! m1a86_1_argbuf_emit_q[0])) ? m2a87_1_argbuf_d :
                                         ((m1a86_1_argbuf_select_d[2] && (! m1a86_1_argbuf_emit_q[0])) ? q4a8s_1_argbuf_d :
                                          {16'd0, 1'd0})));
  assign readMerge_choice_QTree_Bool_d = ((m1a86_1_argbuf_select_d[0] && (! m1a86_1_argbuf_emit_q[1])) ? C1_3_dc(1'd1) :
                                          ((m1a86_1_argbuf_select_d[1] && (! m1a86_1_argbuf_emit_q[1])) ? C2_3_dc(1'd1) :
                                           ((m1a86_1_argbuf_select_d[2] && (! m1a86_1_argbuf_emit_q[1])) ? C3_3_dc(1'd1) :
                                            {2'd0, 1'd0})));
  
  /* demux (Ty C3,
       Ty QTree_Bool) : (readMerge_choice_QTree_Bool,C3) (destructReadOut_QTree_Bool,QTree_Bool) > [(readPointer_QTree_Boolm1a86_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolm2a87_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolq4a8s_1_argbuf,QTree_Bool)] */
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
  assign readPointer_QTree_Boolm1a86_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[0]};
  assign readPointer_QTree_Boolm2a87_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[1]};
  assign readPointer_QTree_Boolq4a8s_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[2]};
  assign destructReadOut_QTree_Bool_r = (| (destructReadOut_QTree_Bool_onehotd & {readPointer_QTree_Boolq4a8s_1_argbuf_r,
                                                                                  readPointer_QTree_Boolm2a87_1_argbuf_r,
                                                                                  readPointer_QTree_Boolm1a86_1_argbuf_r}));
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
  
  /* dcon (Ty MemIn_QTree_Bool,
      Dcon WriteIn_QTree_Bool) : [(forkHP1_QTree_Boo3,Word16#),
                                  (dummy_write_QTree_Bool,QTree_Bool)] > (dconWriteIn_QTree_Bool,MemIn_QTree_Bool) */
  assign dconWriteIn_QTree_Bool_d = WriteIn_QTree_Bool_dc((& {forkHP1_QTree_Boo3_d[0],
                                                              dummy_write_QTree_Bool_d[0]}), forkHP1_QTree_Boo3_d, dummy_write_QTree_Bool_d);
  assign {forkHP1_QTree_Boo3_r,
          dummy_write_QTree_Bool_r} = {2 {(dconWriteIn_QTree_Bool_r && dconWriteIn_QTree_Bool_d[0])}};
  
  /* dcon (Ty Pointer_QTree_Bool,
      Dcon Pointer_QTree_Bool) : [(forkHP1_QTree_Boo4,Word16#)] > (dconPtr_QTree_Bool,Pointer_QTree_Bool) */
  assign dconPtr_QTree_Bool_d = Pointer_QTree_Bool_dc((& {forkHP1_QTree_Boo4_d[0]}), forkHP1_QTree_Boo4_d);
  assign {forkHP1_QTree_Boo4_r} = {1 {(dconPtr_QTree_Bool_r && dconPtr_QTree_Bool_d[0])}};
  
  /* demux (Ty MemOut_QTree_Bool,
       Ty Pointer_QTree_Bool) : (memWriteOut_QTree_Bool,MemOut_QTree_Bool) (dconPtr_QTree_Bool,Pointer_QTree_Bool) > [(_31,Pointer_QTree_Bool),
                                                                                                                      (dummy_write_QTree_Bool_sink,Pointer_QTree_Bool)] */
  logic [1:0] dconPtr_QTree_Bool_onehotd;
  always_comb
    if ((memWriteOut_QTree_Bool_d[0] && dconPtr_QTree_Bool_d[0]))
      unique case (memWriteOut_QTree_Bool_d[1:1])
        1'd0: dconPtr_QTree_Bool_onehotd = 2'd1;
        1'd1: dconPtr_QTree_Bool_onehotd = 2'd2;
        default: dconPtr_QTree_Bool_onehotd = 2'd0;
      endcase
    else dconPtr_QTree_Bool_onehotd = 2'd0;
  assign _31_d = {dconPtr_QTree_Bool_d[16:1],
                  dconPtr_QTree_Bool_onehotd[0]};
  assign dummy_write_QTree_Bool_sink_d = {dconPtr_QTree_Bool_d[16:1],
                                          dconPtr_QTree_Bool_onehotd[1]};
  assign dconPtr_QTree_Bool_r = (| (dconPtr_QTree_Bool_onehotd & {dummy_write_QTree_Bool_sink_r,
                                                                  _31_r}));
  assign memWriteOut_QTree_Bool_r = dconPtr_QTree_Bool_r;
  
  /* buf (Ty Go) : (goFork,Go) > (go_1_argbuf,Go) */
  Go_t goFork_bufchan_d;
  logic goFork_bufchan_r;
  assign goFork_r = ((! goFork_bufchan_d[0]) || goFork_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) goFork_bufchan_d <= 1'd0;
    else if (goFork_r) goFork_bufchan_d <= goFork_d;
  Go_t goFork_bufchan_buf;
  assign goFork_bufchan_r = (! goFork_bufchan_buf[0]);
  assign go_1_argbuf_d = (goFork_bufchan_buf[0] ? goFork_bufchan_buf :
                          goFork_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) goFork_bufchan_buf <= 1'd0;
    else
      if ((go_1_argbuf_r && goFork_bufchan_buf[0]))
        goFork_bufchan_buf <= 1'd0;
      else if (((! go_1_argbuf_r) && (! goFork_bufchan_buf[0])))
        goFork_bufchan_buf <= goFork_bufchan_d;
  
  /* source (Ty Go) : > (sourceGo,Go) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m1a84_0,Pointer_QTree_Bool) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m2a85_1,Pointer_QTree_Bool) */
  
  /* buf (Ty Pointer_QTree_Bool) : (bla8b_destruct,Pointer_QTree_Bool) > (bla8b_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t bla8b_destruct_bufchan_d;
  logic bla8b_destruct_bufchan_r;
  assign bla8b_destruct_r = ((! bla8b_destruct_bufchan_d[0]) || bla8b_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bla8b_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (bla8b_destruct_r) bla8b_destruct_bufchan_d <= bla8b_destruct_d;
  Pointer_QTree_Bool_t bla8b_destruct_bufchan_buf;
  assign bla8b_destruct_bufchan_r = (! bla8b_destruct_bufchan_buf[0]);
  assign bla8b_1_argbuf_d = (bla8b_destruct_bufchan_buf[0] ? bla8b_destruct_bufchan_buf :
                             bla8b_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bla8b_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((bla8b_1_argbuf_r && bla8b_destruct_bufchan_buf[0]))
        bla8b_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! bla8b_1_argbuf_r) && (! bla8b_destruct_bufchan_buf[0])))
        bla8b_destruct_bufchan_buf <= bla8b_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (bla8w_1_destruct,Pointer_QTree_Bool) > (bla8w_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t bla8w_1_destruct_bufchan_d;
  logic bla8w_1_destruct_bufchan_r;
  assign bla8w_1_destruct_r = ((! bla8w_1_destruct_bufchan_d[0]) || bla8w_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bla8w_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (bla8w_1_destruct_r)
        bla8w_1_destruct_bufchan_d <= bla8w_1_destruct_d;
  Pointer_QTree_Bool_t bla8w_1_destruct_bufchan_buf;
  assign bla8w_1_destruct_bufchan_r = (! bla8w_1_destruct_bufchan_buf[0]);
  assign bla8w_1_1_argbuf_d = (bla8w_1_destruct_bufchan_buf[0] ? bla8w_1_destruct_bufchan_buf :
                               bla8w_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bla8w_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((bla8w_1_1_argbuf_r && bla8w_1_destruct_bufchan_buf[0]))
        bla8w_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! bla8w_1_1_argbuf_r) && (! bla8w_1_destruct_bufchan_buf[0])))
        bla8w_1_destruct_bufchan_buf <= bla8w_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (bra8c_destruct,Pointer_QTree_Bool) > (bra8c_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t bra8c_destruct_bufchan_d;
  logic bra8c_destruct_bufchan_r;
  assign bra8c_destruct_r = ((! bra8c_destruct_bufchan_d[0]) || bra8c_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bra8c_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (bra8c_destruct_r) bra8c_destruct_bufchan_d <= bra8c_destruct_d;
  Pointer_QTree_Bool_t bra8c_destruct_bufchan_buf;
  assign bra8c_destruct_bufchan_r = (! bra8c_destruct_bufchan_buf[0]);
  assign bra8c_1_argbuf_d = (bra8c_destruct_bufchan_buf[0] ? bra8c_destruct_bufchan_buf :
                             bra8c_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bra8c_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((bra8c_1_argbuf_r && bra8c_destruct_bufchan_buf[0]))
        bra8c_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! bra8c_1_argbuf_r) && (! bra8c_destruct_bufchan_buf[0])))
        bra8c_destruct_bufchan_buf <= bra8c_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (bra8x_destruct,Pointer_QTree_Bool) > (bra8x_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t bra8x_destruct_bufchan_d;
  logic bra8x_destruct_bufchan_r;
  assign bra8x_destruct_r = ((! bra8x_destruct_bufchan_d[0]) || bra8x_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bra8x_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (bra8x_destruct_r) bra8x_destruct_bufchan_d <= bra8x_destruct_d;
  Pointer_QTree_Bool_t bra8x_destruct_bufchan_buf;
  assign bra8x_destruct_bufchan_r = (! bra8x_destruct_bufchan_buf[0]);
  assign bra8x_1_argbuf_d = (bra8x_destruct_bufchan_buf[0] ? bra8x_destruct_bufchan_buf :
                             bra8x_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) bra8x_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((bra8x_1_argbuf_r && bra8x_destruct_bufchan_buf[0]))
        bra8x_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! bra8x_1_argbuf_r) && (! bra8x_destruct_bufchan_buf[0])))
        bra8x_destruct_bufchan_buf <= bra8x_destruct_bufchan_d;
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool,
          Dcon TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool) : (call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool) > [(call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3,Go),
                                                                                                                                                                                                                                                      (call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s,Pointer_QTree_Bool),
                                                                                                                                                                                                                                                      (call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1,Pointer_CTf''''''''_f''''''''_Bool)] */
  logic [2:0] \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted ;
  logic [2:0] \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_done ;
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d  = (\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [0] && (! \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted [0]));
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d  = {\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [16:1],
                                                                                                                  (\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [0] && (! \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted [1]))};
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d  = {\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [32:17],
                                                                                                                   (\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [0] && (! \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted [2]))};
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_done  = (\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted  | ({\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d [0],
                                                                                                                                                                                                                               \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d [0],
                                                                                                                                                                                                                               \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d [0]} & {\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_r ,
                                                                                                                                                                                                                                                                                                                                           \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_r ,
                                                                                                                                                                                                                                                                                                                                           \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_r }));
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_r  = (& \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted  <= 3'd0;
    else
      \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_emitted  <= (\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_r  ? 3'd0 :
                                                                                                                   \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_done );
  
  /* rbuf (Ty Go) : (call_f''''''''_f''''''''_Bool_goConst,Go) > (call_f''''''''_f''''''''_Bool_initBufi,Go) */
  Go_t \call_f''''''''_f''''''''_Bool_goConst_buf ;
  assign \call_f''''''''_f''''''''_Bool_goConst_r  = (! \call_f''''''''_f''''''''_Bool_goConst_buf [0]);
  assign \call_f''''''''_f''''''''_Bool_initBufi_d  = (\call_f''''''''_f''''''''_Bool_goConst_buf [0] ? \call_f''''''''_f''''''''_Bool_goConst_buf  :
                                                       \call_f''''''''_f''''''''_Bool_goConst_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_Bool_goConst_buf  <= 1'd0;
    else
      if ((\call_f''''''''_f''''''''_Bool_initBufi_r  && \call_f''''''''_f''''''''_Bool_goConst_buf [0]))
        \call_f''''''''_f''''''''_Bool_goConst_buf  <= 1'd0;
      else if (((! \call_f''''''''_f''''''''_Bool_initBufi_r ) && (! \call_f''''''''_f''''''''_Bool_goConst_buf [0])))
        \call_f''''''''_f''''''''_Bool_goConst_buf  <= \call_f''''''''_f''''''''_Bool_goConst_d ;
  
  /* mergectrl (Ty C5,
           Ty Go) : [(call_f''''''''_f''''''''_Bool_goMux1,Go),
                     (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf,Go),
                     (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf,Go),
                     (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf,Go),
                     (lizzieLet19_3QNode_Bool_1_argbuf,Go)] > (go_3_goMux_choice,C5) (go_3_goMux_data,Go) */
  logic [4:0] \call_f''''''''_f''''''''_Bool_goMux1_select_d ;
  assign \call_f''''''''_f''''''''_Bool_goMux1_select_d  = ((| \call_f''''''''_f''''''''_Bool_goMux1_select_q ) ? \call_f''''''''_f''''''''_Bool_goMux1_select_q  :
                                                            (\call_f''''''''_f''''''''_Bool_goMux1_d [0] ? 5'd1 :
                                                             (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_d [0] ? 5'd2 :
                                                              (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_d [0] ? 5'd4 :
                                                               (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_d [0] ? 5'd8 :
                                                                (lizzieLet19_3QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                                                 5'd0))))));
  logic [4:0] \call_f''''''''_f''''''''_Bool_goMux1_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_Bool_goMux1_select_q  <= 5'd0;
    else
      \call_f''''''''_f''''''''_Bool_goMux1_select_q  <= (\call_f''''''''_f''''''''_Bool_goMux1_done  ? 5'd0 :
                                                          \call_f''''''''_f''''''''_Bool_goMux1_select_d );
  logic [1:0] \call_f''''''''_f''''''''_Bool_goMux1_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_Bool_goMux1_emit_q  <= 2'd0;
    else
      \call_f''''''''_f''''''''_Bool_goMux1_emit_q  <= (\call_f''''''''_f''''''''_Bool_goMux1_done  ? 2'd0 :
                                                        \call_f''''''''_f''''''''_Bool_goMux1_emit_d );
  logic [1:0] \call_f''''''''_f''''''''_Bool_goMux1_emit_d ;
  assign \call_f''''''''_f''''''''_Bool_goMux1_emit_d  = (\call_f''''''''_f''''''''_Bool_goMux1_emit_q  | ({go_3_goMux_choice_d[0],
                                                                                                            go_3_goMux_data_d[0]} & {go_3_goMux_choice_r,
                                                                                                                                     go_3_goMux_data_r}));
  logic \call_f''''''''_f''''''''_Bool_goMux1_done ;
  assign \call_f''''''''_f''''''''_Bool_goMux1_done  = (& \call_f''''''''_f''''''''_Bool_goMux1_emit_d );
  assign {lizzieLet19_3QNode_Bool_1_argbuf_r,
          \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_r ,
          \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_r ,
          \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_r ,
          \call_f''''''''_f''''''''_Bool_goMux1_r } = (\call_f''''''''_f''''''''_Bool_goMux1_done  ? \call_f''''''''_f''''''''_Bool_goMux1_select_d  :
                                                       5'd0);
  assign go_3_goMux_data_d = ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [0] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [0])) ? \call_f''''''''_f''''''''_Bool_goMux1_d  :
                              ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [1] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [0])) ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_d  :
                               ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [2] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [0])) ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_d  :
                                ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [3] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [0])) ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_d  :
                                 ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [4] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [0])) ? lizzieLet19_3QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_3_goMux_choice_d = ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [0] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [1])) ? C1_5_dc(1'd1) :
                                ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [1] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [1])) ? C2_5_dc(1'd1) :
                                 ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [2] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [1])) ? C3_5_dc(1'd1) :
                                  ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [3] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [1])) ? C4_5_dc(1'd1) :
                                   ((\call_f''''''''_f''''''''_Bool_goMux1_select_d [4] && (! \call_f''''''''_f''''''''_Bool_goMux1_emit_q [1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_f''''''''_f''''''''_Bool_initBuf,Go) > [(call_f''''''''_f''''''''_Bool_unlockFork1,Go),
                                                             (call_f''''''''_f''''''''_Bool_unlockFork2,Go),
                                                             (call_f''''''''_f''''''''_Bool_unlockFork3,Go)] */
  logic [2:0] \call_f''''''''_f''''''''_Bool_initBuf_emitted ;
  logic [2:0] \call_f''''''''_f''''''''_Bool_initBuf_done ;
  assign \call_f''''''''_f''''''''_Bool_unlockFork1_d  = (\call_f''''''''_f''''''''_Bool_initBuf_d [0] && (! \call_f''''''''_f''''''''_Bool_initBuf_emitted [0]));
  assign \call_f''''''''_f''''''''_Bool_unlockFork2_d  = (\call_f''''''''_f''''''''_Bool_initBuf_d [0] && (! \call_f''''''''_f''''''''_Bool_initBuf_emitted [1]));
  assign \call_f''''''''_f''''''''_Bool_unlockFork3_d  = (\call_f''''''''_f''''''''_Bool_initBuf_d [0] && (! \call_f''''''''_f''''''''_Bool_initBuf_emitted [2]));
  assign \call_f''''''''_f''''''''_Bool_initBuf_done  = (\call_f''''''''_f''''''''_Bool_initBuf_emitted  | ({\call_f''''''''_f''''''''_Bool_unlockFork3_d [0],
                                                                                                             \call_f''''''''_f''''''''_Bool_unlockFork2_d [0],
                                                                                                             \call_f''''''''_f''''''''_Bool_unlockFork1_d [0]} & {\call_f''''''''_f''''''''_Bool_unlockFork3_r ,
                                                                                                                                                                  \call_f''''''''_f''''''''_Bool_unlockFork2_r ,
                                                                                                                                                                  \call_f''''''''_f''''''''_Bool_unlockFork1_r }));
  assign \call_f''''''''_f''''''''_Bool_initBuf_r  = (& \call_f''''''''_f''''''''_Bool_initBuf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_Bool_initBuf_emitted  <= 3'd0;
    else
      \call_f''''''''_f''''''''_Bool_initBuf_emitted  <= (\call_f''''''''_f''''''''_Bool_initBuf_r  ? 3'd0 :
                                                          \call_f''''''''_f''''''''_Bool_initBuf_done );
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_f''''''''_f''''''''_Bool_initBufi,Go) > (call_f''''''''_f''''''''_Bool_initBuf,Go) */
  assign \call_f''''''''_f''''''''_Bool_initBufi_r  = ((! \call_f''''''''_f''''''''_Bool_initBuf_d [0]) || \call_f''''''''_f''''''''_Bool_initBuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f''''''''_f''''''''_Bool_initBuf_d  <= Go_dc(1'd1);
    else
      if (\call_f''''''''_f''''''''_Bool_initBufi_r )
        \call_f''''''''_f''''''''_Bool_initBuf_d  <= \call_f''''''''_f''''''''_Bool_initBufi_d ;
  
  /* mux (Ty Go,
     Ty Go) : (call_f''''''''_f''''''''_Bool_unlockFork1,Go) [(call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3,Go)] > (call_f''''''''_f''''''''_Bool_goMux1,Go) */
  assign \call_f''''''''_f''''''''_Bool_goMux1_d  = (\call_f''''''''_f''''''''_Bool_unlockFork1_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d [0]);
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_r  = (\call_f''''''''_f''''''''_Bool_goMux1_r  && (\call_f''''''''_f''''''''_Bool_unlockFork1_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d [0]));
  assign \call_f''''''''_f''''''''_Bool_unlockFork1_r  = (\call_f''''''''_f''''''''_Bool_goMux1_r  && (\call_f''''''''_f''''''''_Bool_unlockFork1_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolgo_3_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_f''''''''_f''''''''_Bool_unlockFork2,Go) [(call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s,Pointer_QTree_Bool)] > (call_f''''''''_f''''''''_Bool_goMux2,Pointer_QTree_Bool) */
  assign \call_f''''''''_f''''''''_Bool_goMux2_d  = {\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d [16:1],
                                                     (\call_f''''''''_f''''''''_Bool_unlockFork2_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d [0])};
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_r  = (\call_f''''''''_f''''''''_Bool_goMux2_r  && (\call_f''''''''_f''''''''_Bool_unlockFork2_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d [0]));
  assign \call_f''''''''_f''''''''_Bool_unlockFork2_r  = (\call_f''''''''_f''''''''_Bool_goMux2_r  && (\call_f''''''''_f''''''''_Bool_unlockFork2_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolq4a8s_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTf''''''''_f''''''''_Bool) : (call_f''''''''_f''''''''_Bool_unlockFork3,Go) [(call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1,Pointer_CTf''''''''_f''''''''_Bool)] > (call_f''''''''_f''''''''_Bool_goMux3,Pointer_CTf''''''''_f''''''''_Bool) */
  assign \call_f''''''''_f''''''''_Bool_goMux3_d  = {\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d [16:1],
                                                     (\call_f''''''''_f''''''''_Bool_unlockFork3_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d [0])};
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_r  = (\call_f''''''''_f''''''''_Bool_goMux3_r  && (\call_f''''''''_f''''''''_Bool_unlockFork3_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d [0]));
  assign \call_f''''''''_f''''''''_Bool_unlockFork3_r  = (\call_f''''''''_f''''''''_Bool_goMux3_r  && (\call_f''''''''_f''''''''_Bool_unlockFork3_d [0] && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Boolsc_0_1_d [0]));
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf,
          Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) : (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) > [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2,Go),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86,Pointer_QTree_Bool),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87,Pointer_QTree_Bool),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0,Pointer_CTf)] */
  logic [3:0] call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted;
  logic [3:0] call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done;
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d = (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[0]));
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[16:1],
                                                                                       (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[1]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[32:17],
                                                                                       (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[2]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[48:33],
                                                                                      (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[3]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done = (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted | ({call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d[0]} & {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_r,
                                                                                                                                                                                                                                                          call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_r,
                                                                                                                                                                                                                                                          call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_r,
                                                                                                                                                                                                                                                          call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_r}));
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r = (& call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted <= 4'd0;
    else
      call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted <= (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r ? 4'd0 :
                                                                                        call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done);
  
  /* rbuf (Ty Go) : (call_f_goConst,Go) > (call_f_initBufi,Go) */
  Go_t call_f_goConst_buf;
  assign call_f_goConst_r = (! call_f_goConst_buf[0]);
  assign call_f_initBufi_d = (call_f_goConst_buf[0] ? call_f_goConst_buf :
                              call_f_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_f_goConst_buf <= 1'd0;
    else
      if ((call_f_initBufi_r && call_f_goConst_buf[0]))
        call_f_goConst_buf <= 1'd0;
      else if (((! call_f_initBufi_r) && (! call_f_goConst_buf[0])))
        call_f_goConst_buf <= call_f_goConst_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_f_goMux1,Go),
                           (lizzieLet38_3Lcall_f3_1_argbuf,Go),
                           (lizzieLet38_3Lcall_f2_1_argbuf,Go),
                           (lizzieLet38_3Lcall_f1_1_argbuf,Go),
                           (lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf,Go)] > (go_2_goMux_choice,C5) (go_2_goMux_data,Go) */
  logic [4:0] call_f_goMux1_select_d;
  assign call_f_goMux1_select_d = ((| call_f_goMux1_select_q) ? call_f_goMux1_select_q :
                                   (call_f_goMux1_d[0] ? 5'd1 :
                                    (lizzieLet38_3Lcall_f3_1_argbuf_d[0] ? 5'd2 :
                                     (lizzieLet38_3Lcall_f2_1_argbuf_d[0] ? 5'd4 :
                                      (lizzieLet38_3Lcall_f1_1_argbuf_d[0] ? 5'd8 :
                                       (lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                        5'd0))))));
  logic [4:0] call_f_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_f_goMux1_select_q <= 5'd0;
    else
      call_f_goMux1_select_q <= (call_f_goMux1_done ? 5'd0 :
                                 call_f_goMux1_select_d);
  logic [1:0] call_f_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_f_goMux1_emit_q <= 2'd0;
    else
      call_f_goMux1_emit_q <= (call_f_goMux1_done ? 2'd0 :
                               call_f_goMux1_emit_d);
  logic [1:0] call_f_goMux1_emit_d;
  assign call_f_goMux1_emit_d = (call_f_goMux1_emit_q | ({go_2_goMux_choice_d[0],
                                                          go_2_goMux_data_d[0]} & {go_2_goMux_choice_r,
                                                                                   go_2_goMux_data_r}));
  logic call_f_goMux1_done;
  assign call_f_goMux1_done = (& call_f_goMux1_emit_d);
  assign {lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_r,
          lizzieLet38_3Lcall_f1_1_argbuf_r,
          lizzieLet38_3Lcall_f2_1_argbuf_r,
          lizzieLet38_3Lcall_f3_1_argbuf_r,
          call_f_goMux1_r} = (call_f_goMux1_done ? call_f_goMux1_select_d :
                              5'd0);
  assign go_2_goMux_data_d = ((call_f_goMux1_select_d[0] && (! call_f_goMux1_emit_q[0])) ? call_f_goMux1_d :
                              ((call_f_goMux1_select_d[1] && (! call_f_goMux1_emit_q[0])) ? lizzieLet38_3Lcall_f3_1_argbuf_d :
                               ((call_f_goMux1_select_d[2] && (! call_f_goMux1_emit_q[0])) ? lizzieLet38_3Lcall_f2_1_argbuf_d :
                                ((call_f_goMux1_select_d[3] && (! call_f_goMux1_emit_q[0])) ? lizzieLet38_3Lcall_f1_1_argbuf_d :
                                 ((call_f_goMux1_select_d[4] && (! call_f_goMux1_emit_q[0])) ? lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_2_goMux_choice_d = ((call_f_goMux1_select_d[0] && (! call_f_goMux1_emit_q[1])) ? C1_5_dc(1'd1) :
                                ((call_f_goMux1_select_d[1] && (! call_f_goMux1_emit_q[1])) ? C2_5_dc(1'd1) :
                                 ((call_f_goMux1_select_d[2] && (! call_f_goMux1_emit_q[1])) ? C3_5_dc(1'd1) :
                                  ((call_f_goMux1_select_d[3] && (! call_f_goMux1_emit_q[1])) ? C4_5_dc(1'd1) :
                                   ((call_f_goMux1_select_d[4] && (! call_f_goMux1_emit_q[1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_f_initBuf,Go) > [(call_f_unlockFork1,Go),
                                      (call_f_unlockFork2,Go),
                                      (call_f_unlockFork3,Go),
                                      (call_f_unlockFork4,Go)] */
  logic [3:0] call_f_initBuf_emitted;
  logic [3:0] call_f_initBuf_done;
  assign call_f_unlockFork1_d = (call_f_initBuf_d[0] && (! call_f_initBuf_emitted[0]));
  assign call_f_unlockFork2_d = (call_f_initBuf_d[0] && (! call_f_initBuf_emitted[1]));
  assign call_f_unlockFork3_d = (call_f_initBuf_d[0] && (! call_f_initBuf_emitted[2]));
  assign call_f_unlockFork4_d = (call_f_initBuf_d[0] && (! call_f_initBuf_emitted[3]));
  assign call_f_initBuf_done = (call_f_initBuf_emitted | ({call_f_unlockFork4_d[0],
                                                           call_f_unlockFork3_d[0],
                                                           call_f_unlockFork2_d[0],
                                                           call_f_unlockFork1_d[0]} & {call_f_unlockFork4_r,
                                                                                       call_f_unlockFork3_r,
                                                                                       call_f_unlockFork2_r,
                                                                                       call_f_unlockFork1_r}));
  assign call_f_initBuf_r = (& call_f_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_f_initBuf_emitted <= 4'd0;
    else
      call_f_initBuf_emitted <= (call_f_initBuf_r ? 4'd0 :
                                 call_f_initBuf_done);
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_f_initBufi,Go) > (call_f_initBuf,Go) */
  assign call_f_initBufi_r = ((! call_f_initBuf_d[0]) || call_f_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_f_initBuf_d <= Go_dc(1'd1);
    else if (call_f_initBufi_r) call_f_initBuf_d <= call_f_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (call_f_unlockFork1,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2,Go)] > (call_f_goMux1,Go) */
  assign call_f_goMux1_d = (call_f_unlockFork1_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d[0]);
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_r = (call_f_goMux1_r && (call_f_unlockFork1_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d[0]));
  assign call_f_unlockFork1_r = (call_f_goMux1_r && (call_f_unlockFork1_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_f_unlockFork2,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86,Pointer_QTree_Bool)] > (call_f_goMux2,Pointer_QTree_Bool) */
  assign call_f_goMux2_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d[16:1],
                            (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_r = (call_f_goMux2_r && (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d[0]));
  assign call_f_unlockFork2_r = (call_f_goMux2_r && (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1a86_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_f_unlockFork3,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87,Pointer_QTree_Bool)] > (call_f_goMux3,Pointer_QTree_Bool) */
  assign call_f_goMux3_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d[16:1],
                            (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_r = (call_f_goMux3_r && (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d[0]));
  assign call_f_unlockFork3_r = (call_f_goMux3_r && (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2a87_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTf) : (call_f_unlockFork4,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0,Pointer_CTf)] > (call_f_goMux4,Pointer_CTf) */
  assign call_f_goMux4_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[16:1],
                            (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_r = (call_f_goMux4_r && (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0]));
  assign call_f_unlockFork4_r = (call_f_goMux4_r && (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0]));
  
  /* buf (Ty QTree_Nat) : (es_0_1es_1_1es_2_1es_3_1QNode_Nat,QTree_Nat) > (lizzieLet4_1_1_argbuf,QTree_Nat) */
  QTree_Nat_t es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d;
  logic es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_r;
  assign es_0_1es_1_1es_2_1es_3_1QNode_Nat_r = ((! es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d[0]) || es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_1es_1_1es_2_1es_3_1QNode_Nat_r)
        es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d <= es_0_1es_1_1es_2_1es_3_1QNode_Nat_d;
  QTree_Nat_t es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf;
  assign es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_r = (! es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf[0]);
  assign lizzieLet4_1_1_argbuf_d = (es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf[0] ? es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf :
                                    es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet4_1_1_argbuf_r && es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf[0]))
        es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet4_1_1_argbuf_r) && (! es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf[0])))
        es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_buf <= es_0_1es_1_1es_2_1es_3_1QNode_Nat_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (es_4_1es_5_1es_6_1es_7_1QNode_Nat,QTree_Nat) > (lizzieLet14_1_argbuf,QTree_Nat) */
  QTree_Nat_t es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d;
  logic es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_r;
  assign es_4_1es_5_1es_6_1es_7_1QNode_Nat_r = ((! es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d[0]) || es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_4_1es_5_1es_6_1es_7_1QNode_Nat_r)
        es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d <= es_4_1es_5_1es_6_1es_7_1QNode_Nat_d;
  QTree_Nat_t es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf;
  assign es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_r = (! es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf[0]);
  assign lizzieLet14_1_argbuf_d = (es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf[0] ? es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf :
                                   es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet14_1_argbuf_r && es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf[0]))
        es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet14_1_argbuf_r) && (! es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf[0])))
        es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_buf <= es_4_1es_5_1es_6_1es_7_1QNode_Nat_bufchan_d;
  
  /* mergectrl (Ty C8,
           Ty TupGo___Pointer_QTree_Bool) : [(f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7,TupGo___Pointer_QTree_Bool),
                                             (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8,TupGo___Pointer_QTree_Bool)] > (f''''''''_f''''''''_Bool_choice,C8) (f''''''''_f''''''''_Bool_data,TupGo___Pointer_QTree_Bool) */
  logic [7:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d  = ((| \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_q ) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_q  :
                                                                            (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_d [0] ? 8'd1 :
                                                                             (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_d [0] ? 8'd2 :
                                                                              (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_d [0] ? 8'd4 :
                                                                               (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_d [0] ? 8'd8 :
                                                                                (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_d [0] ? 8'd16 :
                                                                                 (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_d [0] ? 8'd32 :
                                                                                  (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_d [0] ? 8'd64 :
                                                                                   (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_d [0] ? 8'd128 :
                                                                                    8'd0)))))))));
  logic [7:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_q  <= 8'd0;
    else
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_q  <= (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_done  ? 8'd0 :
                                                                          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d );
  logic [1:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q  <= 2'd0;
    else
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q  <= (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_done  ? 2'd0 :
                                                                        \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_d );
  logic [1:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_d ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_d  = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q  | ({\f''''''''_f''''''''_Bool_choice_d [0],
                                                                                                                                            \f''''''''_f''''''''_Bool_data_d [0]} & {\f''''''''_f''''''''_Bool_choice_r ,
                                                                                                                                                                                     \f''''''''_f''''''''_Bool_data_r }));
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_done ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_done  = (& \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_d );
  assign {\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_r ,
          \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_r } = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_done  ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d  :
                                                                       8'd0);
  assign \f''''''''_f''''''''_Bool_data_d  = ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [0] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_d  :
                                              ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [1] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_d  :
                                               ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [2] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_d  :
                                                ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [3] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_d  :
                                                 ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [4] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_d  :
                                                  ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [5] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_d  :
                                                   ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [6] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_d  :
                                                    ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [7] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [0])) ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_d  :
                                                     {16'd0, 1'd0}))))))));
  assign \f''''''''_f''''''''_Bool_choice_d  = ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [0] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C1_8_dc(1'd1) :
                                                ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [1] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C2_8_dc(1'd1) :
                                                 ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [2] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C3_8_dc(1'd1) :
                                                  ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [3] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C4_8_dc(1'd1) :
                                                   ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [4] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C5_8_dc(1'd1) :
                                                    ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [5] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C6_8_dc(1'd1) :
                                                     ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [6] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C7_8_dc(1'd1) :
                                                      ((\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_select_d [7] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_emit_q [1])) ? C8_8_dc(1'd1) :
                                                       {3'd0, 1'd0}))))))));
  
  /* fork (Ty Go) : (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5,Go) > [(go_5_1,Go),
                                                                              (go_5_2,Go)] */
  logic [1:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted ;
  logic [1:0] \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_done ;
  assign go_5_1_d = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_d [0] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted [0]));
  assign go_5_2_d = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_d [0] && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted [1]));
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_done  = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted  | ({go_5_2_d[0],
                                                                                                                                               go_5_1_d[0]} & {go_5_2_r,
                                                                                                                                                               go_5_1_r}));
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_r  = (& \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted  <= 2'd0;
    else
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_emitted  <= (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_r  ? 2'd0 :
                                                                           \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_done );
  
  /* buf (Ty Pointer_QTree_Bool) : (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1,Pointer_QTree_Bool) > (q4a8s_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d ;
  logic \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_r ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_r  = ((! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d [0]) || \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d  <= {16'd0,
                                                                                1'd0};
    else
      if (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_r )
        \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d  <= \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_d ;
  Pointer_QTree_Bool_t \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_r  = (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf [0]);
  assign q4a8s_1_1_argbuf_d = (\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf [0] ? \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf  :
                               \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
    else
      if ((q4a8s_1_1_argbuf_r && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf [0]))
        \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf  <= {16'd0,
                                                                                    1'd0};
      else if (((! q4a8s_1_1_argbuf_r) && (! \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf [0])))
        \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_buf  <= \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_1,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_1_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_1_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_1_r  = ((! \f''''''''_f''''''''_Bool_1_bufchan_d [0]) || \f''''''''_f''''''''_Bool_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_1_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_1_r )
        \f''''''''_f''''''''_Bool_1_bufchan_d  <= \f''''''''_f''''''''_Bool_1_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_1_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_1_bufchan_r  = (! \f''''''''_f''''''''_Bool_1_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_resbuf_d  = (\f''''''''_f''''''''_Bool_1_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_1_bufchan_buf  :
                                                \f''''''''_f''''''''_Bool_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_1_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_resbuf_r  && \f''''''''_f''''''''_Bool_1_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_1_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_resbuf_r ) && (! \f''''''''_f''''''''_Bool_1_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_1_bufchan_buf  <= \f''''''''_f''''''''_Bool_1_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_2,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_2_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_2_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_2_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_2_r  = ((! \f''''''''_f''''''''_Bool_2_bufchan_d [0]) || \f''''''''_f''''''''_Bool_2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_2_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_2_r )
        \f''''''''_f''''''''_Bool_2_bufchan_d  <= \f''''''''_f''''''''_Bool_2_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_2_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_2_bufchan_r  = (! \f''''''''_f''''''''_Bool_2_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_2_argbuf_d  = (\f''''''''_f''''''''_Bool_2_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_2_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_2_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_2_argbuf_r  && \f''''''''_f''''''''_Bool_2_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_2_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_2_argbuf_r ) && (! \f''''''''_f''''''''_Bool_2_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_2_bufchan_buf  <= \f''''''''_f''''''''_Bool_2_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_3,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_3_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_3_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_3_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_3_r  = ((! \f''''''''_f''''''''_Bool_3_bufchan_d [0]) || \f''''''''_f''''''''_Bool_3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_3_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_3_r )
        \f''''''''_f''''''''_Bool_3_bufchan_d  <= \f''''''''_f''''''''_Bool_3_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_3_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_3_bufchan_r  = (! \f''''''''_f''''''''_Bool_3_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_3_argbuf_d  = (\f''''''''_f''''''''_Bool_3_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_3_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_3_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_3_argbuf_r  && \f''''''''_f''''''''_Bool_3_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_3_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_3_argbuf_r ) && (! \f''''''''_f''''''''_Bool_3_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_3_bufchan_buf  <= \f''''''''_f''''''''_Bool_3_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_4,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_4_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_4_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_4_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_4_r  = ((! \f''''''''_f''''''''_Bool_4_bufchan_d [0]) || \f''''''''_f''''''''_Bool_4_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_4_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_4_r )
        \f''''''''_f''''''''_Bool_4_bufchan_d  <= \f''''''''_f''''''''_Bool_4_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_4_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_4_bufchan_r  = (! \f''''''''_f''''''''_Bool_4_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_4_argbuf_d  = (\f''''''''_f''''''''_Bool_4_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_4_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_4_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_4_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_4_argbuf_r  && \f''''''''_f''''''''_Bool_4_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_4_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_4_argbuf_r ) && (! \f''''''''_f''''''''_Bool_4_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_4_bufchan_buf  <= \f''''''''_f''''''''_Bool_4_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(f''''''''_f''''''''_Bool_4_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_3_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_2_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_resbuf,Pointer_QTree_Nat)] > (es_0_1es_1_1es_2_1es_3_1QNode_Nat,QTree_Nat) */
  assign es_0_1es_1_1es_2_1es_3_1QNode_Nat_d = QNode_Nat_dc((& {\f''''''''_f''''''''_Bool_4_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_3_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_2_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_resbuf_d [0]}), \f''''''''_f''''''''_Bool_4_argbuf_d , \f''''''''_f''''''''_Bool_3_argbuf_d , \f''''''''_f''''''''_Bool_2_argbuf_d , \f''''''''_f''''''''_Bool_resbuf_d );
  assign {\f''''''''_f''''''''_Bool_4_argbuf_r ,
          \f''''''''_f''''''''_Bool_3_argbuf_r ,
          \f''''''''_f''''''''_Bool_2_argbuf_r ,
          \f''''''''_f''''''''_Bool_resbuf_r } = {4 {(es_0_1es_1_1es_2_1es_3_1QNode_Nat_r && es_0_1es_1_1es_2_1es_3_1QNode_Nat_d[0])}};
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_5,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_5_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_5_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_5_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_5_r  = ((! \f''''''''_f''''''''_Bool_5_bufchan_d [0]) || \f''''''''_f''''''''_Bool_5_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_5_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_5_r )
        \f''''''''_f''''''''_Bool_5_bufchan_d  <= \f''''''''_f''''''''_Bool_5_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_5_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_5_bufchan_r  = (! \f''''''''_f''''''''_Bool_5_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_5_argbuf_d  = (\f''''''''_f''''''''_Bool_5_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_5_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_5_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_5_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_5_argbuf_r  && \f''''''''_f''''''''_Bool_5_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_5_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_5_argbuf_r ) && (! \f''''''''_f''''''''_Bool_5_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_5_bufchan_buf  <= \f''''''''_f''''''''_Bool_5_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_6,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_6_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_6_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_6_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_6_r  = ((! \f''''''''_f''''''''_Bool_6_bufchan_d [0]) || \f''''''''_f''''''''_Bool_6_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_6_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_6_r )
        \f''''''''_f''''''''_Bool_6_bufchan_d  <= \f''''''''_f''''''''_Bool_6_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_6_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_6_bufchan_r  = (! \f''''''''_f''''''''_Bool_6_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_6_argbuf_d  = (\f''''''''_f''''''''_Bool_6_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_6_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_6_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_6_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_6_argbuf_r  && \f''''''''_f''''''''_Bool_6_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_6_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_6_argbuf_r ) && (! \f''''''''_f''''''''_Bool_6_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_6_bufchan_buf  <= \f''''''''_f''''''''_Bool_6_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_7,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_7_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_7_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_7_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_7_r  = ((! \f''''''''_f''''''''_Bool_7_bufchan_d [0]) || \f''''''''_f''''''''_Bool_7_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_7_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_7_r )
        \f''''''''_f''''''''_Bool_7_bufchan_d  <= \f''''''''_f''''''''_Bool_7_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_7_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_7_bufchan_r  = (! \f''''''''_f''''''''_Bool_7_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_7_argbuf_d  = (\f''''''''_f''''''''_Bool_7_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_7_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_7_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_7_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_7_argbuf_r  && \f''''''''_f''''''''_Bool_7_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_7_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_7_argbuf_r ) && (! \f''''''''_f''''''''_Bool_7_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_7_bufchan_buf  <= \f''''''''_f''''''''_Bool_7_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_8,Pointer_QTree_Nat) > (f''''''''_f''''''''_Bool_8_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_8_bufchan_d ;
  logic \f''''''''_f''''''''_Bool_8_bufchan_r ;
  assign \f''''''''_f''''''''_Bool_8_r  = ((! \f''''''''_f''''''''_Bool_8_bufchan_d [0]) || \f''''''''_f''''''''_Bool_8_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_8_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\f''''''''_f''''''''_Bool_8_r )
        \f''''''''_f''''''''_Bool_8_bufchan_d  <= \f''''''''_f''''''''_Bool_8_d ;
  Pointer_QTree_Nat_t \f''''''''_f''''''''_Bool_8_bufchan_buf ;
  assign \f''''''''_f''''''''_Bool_8_bufchan_r  = (! \f''''''''_f''''''''_Bool_8_bufchan_buf [0]);
  assign \f''''''''_f''''''''_Bool_8_argbuf_d  = (\f''''''''_f''''''''_Bool_8_bufchan_buf [0] ? \f''''''''_f''''''''_Bool_8_bufchan_buf  :
                                                  \f''''''''_f''''''''_Bool_8_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_8_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\f''''''''_f''''''''_Bool_8_argbuf_r  && \f''''''''_f''''''''_Bool_8_bufchan_buf [0]))
        \f''''''''_f''''''''_Bool_8_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \f''''''''_f''''''''_Bool_8_argbuf_r ) && (! \f''''''''_f''''''''_Bool_8_bufchan_buf [0])))
        \f''''''''_f''''''''_Bool_8_bufchan_buf  <= \f''''''''_f''''''''_Bool_8_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(f''''''''_f''''''''_Bool_8_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_7_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_6_argbuf,Pointer_QTree_Nat),
                         (f''''''''_f''''''''_Bool_5_argbuf,Pointer_QTree_Nat)] > (es_4_1es_5_1es_6_1es_7_1QNode_Nat,QTree_Nat) */
  assign es_4_1es_5_1es_6_1es_7_1QNode_Nat_d = QNode_Nat_dc((& {\f''''''''_f''''''''_Bool_8_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_7_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_6_argbuf_d [0],
                                                                \f''''''''_f''''''''_Bool_5_argbuf_d [0]}), \f''''''''_f''''''''_Bool_8_argbuf_d , \f''''''''_f''''''''_Bool_7_argbuf_d , \f''''''''_f''''''''_Bool_6_argbuf_d , \f''''''''_f''''''''_Bool_5_argbuf_d );
  assign {\f''''''''_f''''''''_Bool_8_argbuf_r ,
          \f''''''''_f''''''''_Bool_7_argbuf_r ,
          \f''''''''_f''''''''_Bool_6_argbuf_r ,
          \f''''''''_f''''''''_Bool_5_argbuf_r } = {4 {(es_4_1es_5_1es_6_1es_7_1QNode_Nat_r && es_4_1es_5_1es_6_1es_7_1QNode_Nat_d[0])}};
  
  /* demux (Ty C8,
       Ty Pointer_QTree_Nat) : (f''''''''_f''''''''_Bool_choice,C8) (lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Nat) > [(f''''''''_f''''''''_Bool_1,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_2,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_3,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_4,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_5,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_6,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_7,Pointer_QTree_Nat),
                                                                                                                                                           (f''''''''_f''''''''_Bool_8,Pointer_QTree_Nat)] */
  logic [7:0] \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd ;
  always_comb
    if ((\f''''''''_f''''''''_Bool_choice_d [0] && \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [0]))
      unique case (\f''''''''_f''''''''_Bool_choice_d [3:1])
        3'd0:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd1;
        3'd1:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd2;
        3'd2:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd4;
        3'd3:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd8;
        3'd4:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd16;
        3'd5:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd32;
        3'd6:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd64;
        3'd7:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd128;
        default:
          \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd0;
      endcase
    else
      \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  = 8'd0;
  assign \f''''''''_f''''''''_Bool_1_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [0]};
  assign \f''''''''_f''''''''_Bool_2_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [1]};
  assign \f''''''''_f''''''''_Bool_3_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [2]};
  assign \f''''''''_f''''''''_Bool_4_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [3]};
  assign \f''''''''_f''''''''_Bool_5_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [4]};
  assign \f''''''''_f''''''''_Bool_6_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [5]};
  assign \f''''''''_f''''''''_Bool_7_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [6]};
  assign \f''''''''_f''''''''_Bool_8_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [16:1],
                                           \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd [7]};
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_r  = (| (\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_onehotd  & {\f''''''''_f''''''''_Bool_8_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_7_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_6_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_5_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_4_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_3_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_2_r ,
                                                                                                                                                                \f''''''''_f''''''''_Bool_1_r }));
  assign \f''''''''_f''''''''_Bool_choice_r  = \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_r ;
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool,
          Dcon TupGo___Pointer_QTree_Bool) : (f''''''''_f''''''''_Bool_data,TupGo___Pointer_QTree_Bool) > [(f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5,Go),
                                                                                                           (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1,Pointer_QTree_Bool)] */
  logic [1:0] \f''''''''_f''''''''_Bool_data_emitted ;
  logic [1:0] \f''''''''_f''''''''_Bool_data_done ;
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_d  = (\f''''''''_f''''''''_Bool_data_d [0] && (! \f''''''''_f''''''''_Bool_data_emitted [0]));
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_d  = {\f''''''''_f''''''''_Bool_data_d [16:1],
                                                                          (\f''''''''_f''''''''_Bool_data_d [0] && (! \f''''''''_f''''''''_Bool_data_emitted [1]))};
  assign \f''''''''_f''''''''_Bool_data_done  = (\f''''''''_f''''''''_Bool_data_emitted  | ({\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_d [0],
                                                                                             \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_d [0]} & {\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolq4a8s_1_r ,
                                                                                                                                                               \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Boolgo_5_r }));
  assign \f''''''''_f''''''''_Bool_data_r  = (& \f''''''''_f''''''''_Bool_data_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f''''''''_f''''''''_Bool_data_emitted  <= 2'd0;
    else
      \f''''''''_f''''''''_Bool_data_emitted  <= (\f''''''''_f''''''''_Bool_data_r  ? 2'd0 :
                                                  \f''''''''_f''''''''_Bool_data_done );
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool,
          Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) > [(fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4,Go),
                                                                                                                                                                          (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1,Pointer_QTree_Bool),
                                                                                                                                                                          (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1,Pointer_QTree_Bool)] */
  logic [2:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted;
  logic [2:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[0]));
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_d = {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[16:1],
                                                                      (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[1]))};
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_d = {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[32:17],
                                                                      (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[2]))};
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted | ({fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_d[0],
                                                                                                                                   fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_d[0],
                                                                                                                                   fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d[0]} & {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_r,
                                                                                                                                                                                                 fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_r,
                                                                                                                                                                                                 fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_r}));
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r = (& fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted <= 3'd0;
    else
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted <= (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r ? 3'd0 :
                                                                     fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done);
  
  /* fork (Ty Go) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4,Go) > [(go_4_1,Go),
                                                                            (go_4_2,Go)] */
  logic [1:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted;
  logic [1:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_done;
  assign go_4_1_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted[0]));
  assign go_4_2_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted[1]));
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_done = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted | ({go_4_2_d[0],
                                                                                                                                       go_4_1_d[0]} & {go_4_2_r,
                                                                                                                                                       go_4_1_r}));
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_r = (& fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted <= 2'd0;
    else
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_emitted <= (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_r ? 2'd0 :
                                                                       fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1,Pointer_QTree_Bool) > (m1a86_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_r;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_r = ((! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d[0]) || fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d <= {16'd0,
                                                                            1'd0};
    else
      if (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_r)
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_d;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_r = (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf[0]);
  assign m1a86_1_1_argbuf_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf[0] ? fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf :
                               fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf <= {16'd0,
                                                                              1'd0};
    else
      if ((m1a86_1_1_argbuf_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf[0]))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf <= {16'd0,
                                                                                1'd0};
      else if (((! m1a86_1_1_argbuf_r) && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf[0])))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_buf <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1a86_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1,Pointer_QTree_Bool) > (m2a87_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_r;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_r = ((! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d[0]) || fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d <= {16'd0,
                                                                            1'd0};
    else
      if (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_r)
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_d;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_r = (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf[0]);
  assign m2a87_1_1_argbuf_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf[0] ? fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf :
                               fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf <= {16'd0,
                                                                              1'd0};
    else
      if ((m2a87_1_1_argbuf_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf[0]))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf <= {16'd0,
                                                                                1'd0};
      else if (((! m2a87_1_1_argbuf_r) && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf[0])))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_buf <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2a87_1_bufchan_d;
  
  /* sink (Ty Pointer_QTree_Nat) : (f_resbuf,Pointer_QTree_Nat) > */
  assign {f_resbuf_r, f_resbuf_dout} = {f_resbuf_rout, f_resbuf_d};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_10_1_argbuf,Go)] > (lvlrbl-0TupGo_1,TupGo) */
  assign \lvlrbl-0TupGo_1_d  = TupGo_dc((& {go_10_1_argbuf_d[0]}), go_10_1_argbuf_d);
  assign {go_10_1_argbuf_r} = {1 {(\lvlrbl-0TupGo_1_r  && \lvlrbl-0TupGo_1_d [0])}};
  
  /* buf (Ty Nat) : (go_11_1Zero,Nat) > (lizzieLet36_1_argbuf,Nat) */
  Nat_t go_11_1Zero_bufchan_d;
  logic go_11_1Zero_bufchan_r;
  assign go_11_1Zero_r = ((! go_11_1Zero_bufchan_d[0]) || go_11_1Zero_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_11_1Zero_bufchan_d <= {17'd0, 1'd0};
    else if (go_11_1Zero_r) go_11_1Zero_bufchan_d <= go_11_1Zero_d;
  Nat_t go_11_1Zero_bufchan_buf;
  assign go_11_1Zero_bufchan_r = (! go_11_1Zero_bufchan_buf[0]);
  assign lizzieLet36_1_argbuf_d = (go_11_1Zero_bufchan_buf[0] ? go_11_1Zero_bufchan_buf :
                                   go_11_1Zero_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_11_1Zero_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet36_1_argbuf_r && go_11_1Zero_bufchan_buf[0]))
        go_11_1Zero_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet36_1_argbuf_r) && (! go_11_1Zero_bufchan_buf[0])))
        go_11_1Zero_bufchan_buf <= go_11_1Zero_bufchan_d;
  
  /* fork (Ty C15) : (go_12_goMux_choice,C15) > [(go_12_goMux_choice_1,C15),
                                            (go_12_goMux_choice_2,C15)] */
  logic [1:0] go_12_goMux_choice_emitted;
  logic [1:0] go_12_goMux_choice_done;
  assign go_12_goMux_choice_1_d = {go_12_goMux_choice_d[4:1],
                                   (go_12_goMux_choice_d[0] && (! go_12_goMux_choice_emitted[0]))};
  assign go_12_goMux_choice_2_d = {go_12_goMux_choice_d[4:1],
                                   (go_12_goMux_choice_d[0] && (! go_12_goMux_choice_emitted[1]))};
  assign go_12_goMux_choice_done = (go_12_goMux_choice_emitted | ({go_12_goMux_choice_2_d[0],
                                                                   go_12_goMux_choice_1_d[0]} & {go_12_goMux_choice_2_r,
                                                                                                 go_12_goMux_choice_1_r}));
  assign go_12_goMux_choice_r = (& go_12_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_12_goMux_choice_emitted <= 2'd0;
    else
      go_12_goMux_choice_emitted <= (go_12_goMux_choice_r ? 2'd0 :
                                     go_12_goMux_choice_done);
  
  /* mux (Ty C15,
     Ty Pointer_QTree_Nat) : (go_12_goMux_choice_1,C15) [(lizzieLet4_1_argbuf,Pointer_QTree_Nat),
                                                         (contRet_0_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet3_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet5_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet6_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet7_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet7_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet9_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet10_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet8_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet9_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet10_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet11_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet12_1_1_argbuf,Pointer_QTree_Nat),
                                                         (lizzieLet13_1_argbuf,Pointer_QTree_Nat)] > (srtarg_0_goMux_mux,Pointer_QTree_Nat) */
  logic [16:0] srtarg_0_goMux_mux_mux;
  logic [14:0] srtarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_12_goMux_choice_1_d[4:1])
      4'd0:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd1,
                                                               lizzieLet4_1_argbuf_d};
      4'd1:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd2,
                                                               contRet_0_1_argbuf_d};
      4'd2:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd4,
                                                               lizzieLet3_1_argbuf_d};
      4'd3:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd8,
                                                               lizzieLet5_1_argbuf_d};
      4'd4:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd16,
                                                               lizzieLet6_1_argbuf_d};
      4'd5:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd32,
                                                               lizzieLet7_1_argbuf_d};
      4'd6:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd64,
                                                               lizzieLet7_1_1_argbuf_d};
      4'd7:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd128,
                                                               lizzieLet9_1_argbuf_d};
      4'd8:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd256,
                                                               lizzieLet10_1_argbuf_d};
      4'd9:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd512,
                                                               lizzieLet8_1_1_argbuf_d};
      4'd10:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd1024,
                                                               lizzieLet9_1_1_argbuf_d};
      4'd11:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd2048,
                                                               lizzieLet10_1_1_argbuf_d};
      4'd12:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd4096,
                                                               lizzieLet11_1_1_argbuf_d};
      4'd13:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd8192,
                                                               lizzieLet12_1_1_argbuf_d};
      4'd14:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd16384,
                                                               lizzieLet13_1_argbuf_d};
      default:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {15'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign srtarg_0_goMux_mux_d = {srtarg_0_goMux_mux_mux[16:1],
                                 (srtarg_0_goMux_mux_mux[0] && go_12_goMux_choice_1_d[0])};
  assign go_12_goMux_choice_1_r = (srtarg_0_goMux_mux_d[0] && srtarg_0_goMux_mux_r);
  assign {lizzieLet13_1_argbuf_r,
          lizzieLet12_1_1_argbuf_r,
          lizzieLet11_1_1_argbuf_r,
          lizzieLet10_1_1_argbuf_r,
          lizzieLet9_1_1_argbuf_r,
          lizzieLet8_1_1_argbuf_r,
          lizzieLet10_1_argbuf_r,
          lizzieLet9_1_argbuf_r,
          lizzieLet7_1_1_argbuf_r,
          lizzieLet7_1_argbuf_r,
          lizzieLet6_1_argbuf_r,
          lizzieLet5_1_argbuf_r,
          lizzieLet3_1_argbuf_r,
          contRet_0_1_argbuf_r,
          lizzieLet4_1_argbuf_r} = (go_12_goMux_choice_1_r ? srtarg_0_goMux_mux_onehot :
                                    15'd0);
  
  /* mux (Ty C15,
     Ty Pointer_CTf) : (go_12_goMux_choice_2,C15) [(lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf,Pointer_CTf),
                                                   (sc_0_5_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf,Pointer_CTf),
                                                   (lizzieLet0_5QError_Bool_1_argbuf,Pointer_CTf)] > (scfarg_0_goMux_mux,Pointer_CTf) */
  logic [16:0] scfarg_0_goMux_mux_mux;
  logic [14:0] scfarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_12_goMux_choice_2_d[4:1])
      4'd0:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd1,
                                                               lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_d};
      4'd1:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd2,
                                                               sc_0_5_1_argbuf_d};
      4'd2:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd4,
                                                               lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_d};
      4'd3:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd8,
                                                               lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_d};
      4'd4:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd16,
                                                               lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_d};
      4'd5:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd32,
                                                               lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_d};
      4'd6:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd64,
                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_d};
      4'd7:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd128,
                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_d};
      4'd8:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd256,
                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_d};
      4'd9:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd512,
                                                               lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_d};
      4'd10:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd1024,
                                                               lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_d};
      4'd11:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd2048,
                                                               lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_d};
      4'd12:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd4096,
                                                               lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_d};
      4'd13:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd8192,
                                                               lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_d};
      4'd14:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd16384,
                                                               lizzieLet0_5QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {15'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign scfarg_0_goMux_mux_d = {scfarg_0_goMux_mux_mux[16:1],
                                 (scfarg_0_goMux_mux_mux[0] && go_12_goMux_choice_2_d[0])};
  assign go_12_goMux_choice_2_r = (scfarg_0_goMux_mux_d[0] && scfarg_0_goMux_mux_r);
  assign {lizzieLet0_5QError_Bool_1_argbuf_r,
          lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_r,
          lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_r,
          lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_r,
          lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_r,
          lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_r,
          lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_r,
          lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_r,
          lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_r,
          lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_r,
          sc_0_5_1_argbuf_r,
          lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_r} = (go_12_goMux_choice_2_r ? scfarg_0_goMux_mux_onehot :
                                                            15'd0);
  
  /* fork (Ty C4) : (go_13_goMux_choice,C4) > [(go_13_goMux_choice_1,C4),
                                          (go_13_goMux_choice_2,C4)] */
  logic [1:0] go_13_goMux_choice_emitted;
  logic [1:0] go_13_goMux_choice_done;
  assign go_13_goMux_choice_1_d = {go_13_goMux_choice_d[2:1],
                                   (go_13_goMux_choice_d[0] && (! go_13_goMux_choice_emitted[0]))};
  assign go_13_goMux_choice_2_d = {go_13_goMux_choice_d[2:1],
                                   (go_13_goMux_choice_d[0] && (! go_13_goMux_choice_emitted[1]))};
  assign go_13_goMux_choice_done = (go_13_goMux_choice_emitted | ({go_13_goMux_choice_2_d[0],
                                                                   go_13_goMux_choice_1_d[0]} & {go_13_goMux_choice_2_r,
                                                                                                 go_13_goMux_choice_1_r}));
  assign go_13_goMux_choice_r = (& go_13_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_13_goMux_choice_emitted <= 2'd0;
    else
      go_13_goMux_choice_emitted <= (go_13_goMux_choice_r ? 2'd0 :
                                     go_13_goMux_choice_done);
  
  /* mux (Ty C4,
     Ty Pointer_QTree_Nat) : (go_13_goMux_choice_1,C4) [(lizzieLet1_1_1_argbuf,Pointer_QTree_Nat),
                                                        (contRet_0_1_1_argbuf,Pointer_QTree_Nat),
                                                        (lizzieLet21_1_argbuf,Pointer_QTree_Nat),
                                                        (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat)] > (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) */
  logic [16:0] srtarg_0_1_goMux_mux_mux;
  logic [3:0] srtarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_13_goMux_choice_1_d[2:1])
      2'd0:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {4'd1,
                                                                   lizzieLet1_1_1_argbuf_d};
      2'd1:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {4'd2,
                                                                   contRet_0_1_1_argbuf_d};
      2'd2:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {4'd4,
                                                                   lizzieLet21_1_argbuf_d};
      2'd3:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {4'd8,
                                                                   lizzieLet2_1_1_argbuf_d};
      default:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {4'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign srtarg_0_1_goMux_mux_d = {srtarg_0_1_goMux_mux_mux[16:1],
                                   (srtarg_0_1_goMux_mux_mux[0] && go_13_goMux_choice_1_d[0])};
  assign go_13_goMux_choice_1_r = (srtarg_0_1_goMux_mux_d[0] && srtarg_0_1_goMux_mux_r);
  assign {lizzieLet2_1_1_argbuf_r,
          lizzieLet21_1_argbuf_r,
          contRet_0_1_1_argbuf_r,
          lizzieLet1_1_1_argbuf_r} = (go_13_goMux_choice_1_r ? srtarg_0_1_goMux_mux_onehot :
                                      4'd0);
  
  /* mux (Ty C4,
     Ty Pointer_CTf''''''''_f''''''''_Bool) : (go_13_goMux_choice_2,C4) [(lizzieLet19_4QNone_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                         (sc_0_9_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                         (lizzieLet19_4QVal_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                         (lizzieLet19_4QError_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool)] > (scfarg_0_1_goMux_mux,Pointer_CTf''''''''_f''''''''_Bool) */
  logic [16:0] scfarg_0_1_goMux_mux_mux;
  logic [3:0] scfarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_13_goMux_choice_2_d[2:1])
      2'd0:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {4'd1,
                                                                   lizzieLet19_4QNone_Bool_1_argbuf_d};
      2'd1:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {4'd2,
                                                                   sc_0_9_1_argbuf_d};
      2'd2:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {4'd4,
                                                                   lizzieLet19_4QVal_Bool_1_argbuf_d};
      2'd3:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {4'd8,
                                                                   lizzieLet19_4QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {4'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign scfarg_0_1_goMux_mux_d = {scfarg_0_1_goMux_mux_mux[16:1],
                                   (scfarg_0_1_goMux_mux_mux[0] && go_13_goMux_choice_2_d[0])};
  assign go_13_goMux_choice_2_r = (scfarg_0_1_goMux_mux_d[0] && scfarg_0_1_goMux_mux_r);
  assign {lizzieLet19_4QError_Bool_1_argbuf_r,
          lizzieLet19_4QVal_Bool_1_argbuf_r,
          sc_0_9_1_argbuf_r,
          lizzieLet19_4QNone_Bool_1_argbuf_r} = (go_13_goMux_choice_2_r ? scfarg_0_1_goMux_mux_onehot :
                                                 4'd0);
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(go_1_argbuf,Go),
                                                               (m1a84_0,Pointer_QTree_Bool),
                                                               (m2a85_1,Pointer_QTree_Bool)] > (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d = TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_dc((& {go_1_argbuf_d[0],
                                                                                                                       m1a84_0_d[0],
                                                                                                                       m2a85_1_d[0]}), go_1_argbuf_d, m1a84_0_d, m2a85_1_d);
  assign {go_1_argbuf_r,
          m1a84_0_r,
          m2a85_1_r} = {3 {(fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0])}};
  
  /* fork (Ty C5) : (go_2_goMux_choice,C5) > [(go_2_goMux_choice_1,C5),
                                         (go_2_goMux_choice_2,C5),
                                         (go_2_goMux_choice_3,C5)] */
  logic [2:0] go_2_goMux_choice_emitted;
  logic [2:0] go_2_goMux_choice_done;
  assign go_2_goMux_choice_1_d = {go_2_goMux_choice_d[3:1],
                                  (go_2_goMux_choice_d[0] && (! go_2_goMux_choice_emitted[0]))};
  assign go_2_goMux_choice_2_d = {go_2_goMux_choice_d[3:1],
                                  (go_2_goMux_choice_d[0] && (! go_2_goMux_choice_emitted[1]))};
  assign go_2_goMux_choice_3_d = {go_2_goMux_choice_d[3:1],
                                  (go_2_goMux_choice_d[0] && (! go_2_goMux_choice_emitted[2]))};
  assign go_2_goMux_choice_done = (go_2_goMux_choice_emitted | ({go_2_goMux_choice_3_d[0],
                                                                 go_2_goMux_choice_2_d[0],
                                                                 go_2_goMux_choice_1_d[0]} & {go_2_goMux_choice_3_r,
                                                                                              go_2_goMux_choice_2_r,
                                                                                              go_2_goMux_choice_1_r}));
  assign go_2_goMux_choice_r = (& go_2_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_2_goMux_choice_emitted <= 3'd0;
    else
      go_2_goMux_choice_emitted <= (go_2_goMux_choice_r ? 3'd0 :
                                    go_2_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_2_goMux_choice_1,C5) [(call_f_goMux2,Pointer_QTree_Bool),
                                                        (q3a8l_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2a8k_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1a8j_3_1_argbuf,Pointer_QTree_Bool),
                                                        (lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf,Pointer_QTree_Bool)] > (m1a86_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m1a86_goMux_mux_mux;
  logic [4:0] m1a86_goMux_mux_onehot;
  always_comb
    unique case (go_2_goMux_choice_1_d[3:1])
      3'd0:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd1,
                                                         call_f_goMux2_d};
      3'd1:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd2,
                                                         q3a8l_1_1_argbuf_d};
      3'd2:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd4,
                                                         q2a8k_2_1_argbuf_d};
      3'd3:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd8,
                                                         q1a8j_3_1_argbuf_d};
      3'd4:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd16,
                                                         lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_d};
      default:
        {m1a86_goMux_mux_onehot, m1a86_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m1a86_goMux_mux_d = {m1a86_goMux_mux_mux[16:1],
                              (m1a86_goMux_mux_mux[0] && go_2_goMux_choice_1_d[0])};
  assign go_2_goMux_choice_1_r = (m1a86_goMux_mux_d[0] && m1a86_goMux_mux_r);
  assign {lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_r,
          q1a8j_3_1_argbuf_r,
          q2a8k_2_1_argbuf_r,
          q3a8l_1_1_argbuf_r,
          call_f_goMux2_r} = (go_2_goMux_choice_1_r ? m1a86_goMux_mux_onehot :
                              5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_2_goMux_choice_2,C5) [(call_f_goMux3,Pointer_QTree_Bool),
                                                        (t3a8q_1_1_argbuf,Pointer_QTree_Bool),
                                                        (t2a8p_2_1_argbuf,Pointer_QTree_Bool),
                                                        (t1a8o_3_1_argbuf,Pointer_QTree_Bool),
                                                        (t4a8r_1_argbuf,Pointer_QTree_Bool)] > (m2a87_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m2a87_goMux_mux_mux;
  logic [4:0] m2a87_goMux_mux_onehot;
  always_comb
    unique case (go_2_goMux_choice_2_d[3:1])
      3'd0:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd1,
                                                         call_f_goMux3_d};
      3'd1:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd2,
                                                         t3a8q_1_1_argbuf_d};
      3'd2:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd4,
                                                         t2a8p_2_1_argbuf_d};
      3'd3:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd8,
                                                         t1a8o_3_1_argbuf_d};
      3'd4:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd16,
                                                         t4a8r_1_argbuf_d};
      default:
        {m2a87_goMux_mux_onehot, m2a87_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m2a87_goMux_mux_d = {m2a87_goMux_mux_mux[16:1],
                              (m2a87_goMux_mux_mux[0] && go_2_goMux_choice_2_d[0])};
  assign go_2_goMux_choice_2_r = (m2a87_goMux_mux_d[0] && m2a87_goMux_mux_r);
  assign {t4a8r_1_argbuf_r,
          t1a8o_3_1_argbuf_r,
          t2a8p_2_1_argbuf_r,
          t3a8q_1_1_argbuf_r,
          call_f_goMux3_r} = (go_2_goMux_choice_2_r ? m2a87_goMux_mux_onehot :
                              5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTf) : (go_2_goMux_choice_3,C5) [(call_f_goMux4,Pointer_CTf),
                                                 (sca2_1_argbuf,Pointer_CTf),
                                                 (sca1_1_argbuf,Pointer_CTf),
                                                 (sca0_1_argbuf,Pointer_CTf),
                                                 (sca3_1_argbuf,Pointer_CTf)] > (sc_0_goMux_mux,Pointer_CTf) */
  logic [16:0] sc_0_goMux_mux_mux;
  logic [4:0] sc_0_goMux_mux_onehot;
  always_comb
    unique case (go_2_goMux_choice_3_d[3:1])
      3'd0:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd1,
                                                       call_f_goMux4_d};
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
                             (sc_0_goMux_mux_mux[0] && go_2_goMux_choice_3_d[0])};
  assign go_2_goMux_choice_3_r = (sc_0_goMux_mux_d[0] && sc_0_goMux_mux_r);
  assign {sca3_1_argbuf_r,
          sca0_1_argbuf_r,
          sca1_1_argbuf_r,
          sca2_1_argbuf_r,
          call_f_goMux4_r} = (go_2_goMux_choice_3_r ? sc_0_goMux_mux_onehot :
                              5'd0);
  
  /* fork (Ty C5) : (go_3_goMux_choice,C5) > [(go_3_goMux_choice_1,C5),
                                         (go_3_goMux_choice_2,C5)] */
  logic [1:0] go_3_goMux_choice_emitted;
  logic [1:0] go_3_goMux_choice_done;
  assign go_3_goMux_choice_1_d = {go_3_goMux_choice_d[3:1],
                                  (go_3_goMux_choice_d[0] && (! go_3_goMux_choice_emitted[0]))};
  assign go_3_goMux_choice_2_d = {go_3_goMux_choice_d[3:1],
                                  (go_3_goMux_choice_d[0] && (! go_3_goMux_choice_emitted[1]))};
  assign go_3_goMux_choice_done = (go_3_goMux_choice_emitted | ({go_3_goMux_choice_2_d[0],
                                                                 go_3_goMux_choice_1_d[0]} & {go_3_goMux_choice_2_r,
                                                                                              go_3_goMux_choice_1_r}));
  assign go_3_goMux_choice_r = (& go_3_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_3_goMux_choice_emitted <= 2'd0;
    else
      go_3_goMux_choice_emitted <= (go_3_goMux_choice_r ? 2'd0 :
                                    go_3_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_3_goMux_choice_1,C5) [(call_f''''''''_f''''''''_Bool_goMux2,Pointer_QTree_Bool),
                                                        (bla8w_1_1_argbuf,Pointer_QTree_Bool),
                                                        (tra8v_2_1_argbuf,Pointer_QTree_Bool),
                                                        (tla8u_3_1_argbuf,Pointer_QTree_Bool),
                                                        (bra8x_1_argbuf,Pointer_QTree_Bool)] > (q4a8s_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] q4a8s_goMux_mux_mux;
  logic [4:0] q4a8s_goMux_mux_onehot;
  always_comb
    unique case (go_3_goMux_choice_1_d[3:1])
      3'd0:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd1,
                                                         \call_f''''''''_f''''''''_Bool_goMux2_d };
      3'd1:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd2,
                                                         bla8w_1_1_argbuf_d};
      3'd2:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd4,
                                                         tra8v_2_1_argbuf_d};
      3'd3:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd8,
                                                         tla8u_3_1_argbuf_d};
      3'd4:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd16,
                                                         bra8x_1_argbuf_d};
      default:
        {q4a8s_goMux_mux_onehot, q4a8s_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign q4a8s_goMux_mux_d = {q4a8s_goMux_mux_mux[16:1],
                              (q4a8s_goMux_mux_mux[0] && go_3_goMux_choice_1_d[0])};
  assign go_3_goMux_choice_1_r = (q4a8s_goMux_mux_d[0] && q4a8s_goMux_mux_r);
  assign {bra8x_1_argbuf_r,
          tla8u_3_1_argbuf_r,
          tra8v_2_1_argbuf_r,
          bla8w_1_1_argbuf_r,
          \call_f''''''''_f''''''''_Bool_goMux2_r } = (go_3_goMux_choice_1_r ? q4a8s_goMux_mux_onehot :
                                                       5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTf''''''''_f''''''''_Bool) : (go_3_goMux_choice_2,C5) [(call_f''''''''_f''''''''_Bool_goMux3,Pointer_CTf''''''''_f''''''''_Bool),
                                                                        (sca2_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                        (sca1_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                        (sca0_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool),
                                                                        (sca3_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool)] > (sc_0_1_goMux_mux,Pointer_CTf''''''''_f''''''''_Bool) */
  logic [16:0] sc_0_1_goMux_mux_mux;
  logic [4:0] sc_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_3_goMux_choice_2_d[3:1])
      3'd0:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd1,
                                                           \call_f''''''''_f''''''''_Bool_goMux3_d };
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
                               (sc_0_1_goMux_mux_mux[0] && go_3_goMux_choice_2_d[0])};
  assign go_3_goMux_choice_2_r = (sc_0_1_goMux_mux_d[0] && sc_0_1_goMux_mux_r);
  assign {sca3_1_1_argbuf_r,
          sca0_1_1_argbuf_r,
          sca1_1_1_argbuf_r,
          sca2_1_1_argbuf_r,
          \call_f''''''''_f''''''''_Bool_goMux3_r } = (go_3_goMux_choice_2_r ? sc_0_1_goMux_mux_onehot :
                                                       5'd0);
  
  /* dcon (Ty CTf,Dcon Lfsbos) : [(go_4_1,Go)] > (go_4_1Lfsbos,CTf) */
  assign go_4_1Lfsbos_d = Lfsbos_dc((& {go_4_1_d[0]}), go_4_1_d);
  assign {go_4_1_r} = {1 {(go_4_1Lfsbos_r && go_4_1Lfsbos_d[0])}};
  
  /* buf (Ty CTf) : (go_4_1Lfsbos,CTf) > (lizzieLet24_1_argbuf,CTf) */
  CTf_t go_4_1Lfsbos_bufchan_d;
  logic go_4_1Lfsbos_bufchan_r;
  assign go_4_1Lfsbos_r = ((! go_4_1Lfsbos_bufchan_d[0]) || go_4_1Lfsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_1Lfsbos_bufchan_d <= {115'd0, 1'd0};
    else if (go_4_1Lfsbos_r) go_4_1Lfsbos_bufchan_d <= go_4_1Lfsbos_d;
  CTf_t go_4_1Lfsbos_bufchan_buf;
  assign go_4_1Lfsbos_bufchan_r = (! go_4_1Lfsbos_bufchan_buf[0]);
  assign lizzieLet24_1_argbuf_d = (go_4_1Lfsbos_bufchan_buf[0] ? go_4_1Lfsbos_bufchan_buf :
                                   go_4_1Lfsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_1Lfsbos_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((lizzieLet24_1_argbuf_r && go_4_1Lfsbos_bufchan_buf[0]))
        go_4_1Lfsbos_bufchan_buf <= {115'd0, 1'd0};
      else if (((! lizzieLet24_1_argbuf_r) && (! go_4_1Lfsbos_bufchan_buf[0])))
        go_4_1Lfsbos_bufchan_buf <= go_4_1Lfsbos_bufchan_d;
  
  /* buf (Ty Go) : (go_4_2,Go) > (go_4_2_argbuf,Go) */
  Go_t go_4_2_bufchan_d;
  logic go_4_2_bufchan_r;
  assign go_4_2_r = ((! go_4_2_bufchan_d[0]) || go_4_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_2_bufchan_d <= 1'd0;
    else if (go_4_2_r) go_4_2_bufchan_d <= go_4_2_d;
  Go_t go_4_2_bufchan_buf;
  assign go_4_2_bufchan_r = (! go_4_2_bufchan_buf[0]);
  assign go_4_2_argbuf_d = (go_4_2_bufchan_buf[0] ? go_4_2_bufchan_buf :
                            go_4_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_2_bufchan_buf <= 1'd0;
    else
      if ((go_4_2_argbuf_r && go_4_2_bufchan_buf[0]))
        go_4_2_bufchan_buf <= 1'd0;
      else if (((! go_4_2_argbuf_r) && (! go_4_2_bufchan_buf[0])))
        go_4_2_bufchan_buf <= go_4_2_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf,
      Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) : [(go_4_2_argbuf,Go),
                                                                             (m1a86_1_1_argbuf,Pointer_QTree_Bool),
                                                                             (m2a87_1_1_argbuf,Pointer_QTree_Bool),
                                                                             (lizzieLet14_1_1_argbuf,Pointer_CTf)] > (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) */
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d = TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_dc((& {go_4_2_argbuf_d[0],
                                                                                                                                                        m1a86_1_1_argbuf_d[0],
                                                                                                                                                        m2a87_1_1_argbuf_d[0],
                                                                                                                                                        lizzieLet14_1_1_argbuf_d[0]}), go_4_2_argbuf_d, m1a86_1_1_argbuf_d, m2a87_1_1_argbuf_d, lizzieLet14_1_1_argbuf_d);
  assign {go_4_2_argbuf_r,
          m1a86_1_1_argbuf_r,
          m2a87_1_1_argbuf_r,
          lizzieLet14_1_1_argbuf_r} = {4 {(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0])}};
  
  /* dcon (Ty CTf''''''''_f''''''''_Bool,
      Dcon Lf''''''''_f''''''''_Boolsbos) : [(go_5_1,Go)] > (go_5_1Lf''''''''_f''''''''_Boolsbos,CTf''''''''_f''''''''_Bool) */
  assign \go_5_1Lf''''''''_f''''''''_Boolsbos_d  = \Lf''''''''_f''''''''_Boolsbos_dc ((& {go_5_1_d[0]}), go_5_1_d);
  assign {go_5_1_r} = {1 {(\go_5_1Lf''''''''_f''''''''_Boolsbos_r  && \go_5_1Lf''''''''_f''''''''_Boolsbos_d [0])}};
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (go_5_1Lf''''''''_f''''''''_Boolsbos,CTf''''''''_f''''''''_Bool) > (lizzieLet25_1_argbuf,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d ;
  logic \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_r ;
  assign \go_5_1Lf''''''''_f''''''''_Boolsbos_r  = ((! \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d [0]) || \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d  <= {67'd0, 1'd0};
    else
      if (\go_5_1Lf''''''''_f''''''''_Boolsbos_r )
        \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d  <= \go_5_1Lf''''''''_f''''''''_Boolsbos_d ;
  \CTf''''''''_f''''''''_Bool_t  \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf ;
  assign \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_r  = (! \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf [0]);
  assign lizzieLet25_1_argbuf_d = (\go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf [0] ? \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf  :
                                   \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf  <= {67'd0, 1'd0};
    else
      if ((lizzieLet25_1_argbuf_r && \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf [0]))
        \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf  <= {67'd0, 1'd0};
      else if (((! lizzieLet25_1_argbuf_r) && (! \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf [0])))
        \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_buf  <= \go_5_1Lf''''''''_f''''''''_Boolsbos_bufchan_d ;
  
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
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool,
      Dcon TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool) : [(go_5_2_argbuf,Go),
                                                                               (q4a8s_1_1_argbuf,Pointer_QTree_Bool),
                                                                               (lizzieLet3_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool)] > (call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool) */
  assign \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d  = \TupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_dc ((& {go_5_2_argbuf_d[0],
                                                                                                                                                                                       q4a8s_1_1_argbuf_d[0],
                                                                                                                                                                                       lizzieLet3_1_1_argbuf_d[0]}), go_5_2_argbuf_d, q4a8s_1_1_argbuf_d, lizzieLet3_1_1_argbuf_d);
  assign {go_5_2_argbuf_r,
          q4a8s_1_1_argbuf_r,
          lizzieLet3_1_1_argbuf_r} = {3 {(\call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_r  && \call_f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool___Pointer_CTf''''''''_f''''''''_Bool_1_d [0])}};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_6_1_argbuf,Go)] > (lvlrbl-0TupGo2,TupGo) */
  assign \lvlrbl-0TupGo2_d  = TupGo_dc((& {go_6_1_argbuf_d[0]}), go_6_1_argbuf_d);
  assign {go_6_1_argbuf_r} = {1 {(\lvlrbl-0TupGo2_r  && \lvlrbl-0TupGo2_d [0])}};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_7_1_argbuf,Go)] > (lvlrbl-0TupGo5,TupGo) */
  assign \lvlrbl-0TupGo5_d  = TupGo_dc((& {go_7_1_argbuf_d[0]}), go_7_1_argbuf_d);
  assign {go_7_1_argbuf_r} = {1 {(\lvlrbl-0TupGo5_r  && \lvlrbl-0TupGo5_d [0])}};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_8_1_argbuf,Go)] > (lvlrbl-0TupGo4,TupGo) */
  assign \lvlrbl-0TupGo4_d  = TupGo_dc((& {go_8_1_argbuf_d[0]}), go_8_1_argbuf_d);
  assign {go_8_1_argbuf_r} = {1 {(\lvlrbl-0TupGo4_r  && \lvlrbl-0TupGo4_d [0])}};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_9_1_argbuf,Go)] > (lvlrbl-0TupGo3,TupGo) */
  assign \lvlrbl-0TupGo3_d  = TupGo_dc((& {go_9_1_argbuf_d[0]}), go_9_1_argbuf_d);
  assign {go_9_1_argbuf_r} = {1 {(\lvlrbl-0TupGo3_r  && \lvlrbl-0TupGo3_d [0])}};
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_1QNode_Bool,QTree_Bool) > [(q1a8j_destruct,Pointer_QTree_Bool),
                                                                    (q2a8k_destruct,Pointer_QTree_Bool),
                                                                    (q3a8l_destruct,Pointer_QTree_Bool),
                                                                    (q4a8m_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_1QNode_Bool_done;
  assign q1a8j_destruct_d = {lizzieLet0_1QNode_Bool_d[18:3],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[0]))};
  assign q2a8k_destruct_d = {lizzieLet0_1QNode_Bool_d[34:19],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[1]))};
  assign q3a8l_destruct_d = {lizzieLet0_1QNode_Bool_d[50:35],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[2]))};
  assign q4a8m_destruct_d = {lizzieLet0_1QNode_Bool_d[66:51],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_1QNode_Bool_done = (lizzieLet0_1QNode_Bool_emitted | ({q4a8m_destruct_d[0],
                                                                           q3a8l_destruct_d[0],
                                                                           q2a8k_destruct_d[0],
                                                                           q1a8j_destruct_d[0]} & {q4a8m_destruct_r,
                                                                                                   q3a8l_destruct_r,
                                                                                                   q2a8k_destruct_r,
                                                                                                   q1a8j_destruct_r}));
  assign lizzieLet0_1QNode_Bool_r = (& lizzieLet0_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_1QNode_Bool_emitted <= (lizzieLet0_1QNode_Bool_r ? 4'd0 :
                                         lizzieLet0_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet0_1QVal_Bool,QTree_Bool) > [(v1a8d_destruct,MyBool)] */
  assign v1a8d_destruct_d = {lizzieLet0_1QVal_Bool_d[3:3],
                             lizzieLet0_1QVal_Bool_d[0]};
  assign lizzieLet0_1QVal_Bool_r = v1a8d_destruct_r;
  
  /* buf (Ty Nat) : (lizzieLet0_1_1Succ,Nat) > (lizzieLet37_1_argbuf,Nat) */
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
  assign lizzieLet37_1_argbuf_d = (lizzieLet0_1_1Succ_bufchan_buf[0] ? lizzieLet0_1_1Succ_bufchan_buf :
                                   lizzieLet0_1_1Succ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet37_1_argbuf_r && lizzieLet0_1_1Succ_bufchan_buf[0]))
        lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet37_1_argbuf_r) && (! lizzieLet0_1_1Succ_bufchan_buf[0])))
        lizzieLet0_1_1Succ_bufchan_buf <= lizzieLet0_1_1Succ_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_2,QTree_Bool) (lizzieLet0_1,QTree_Bool) > [(_30,QTree_Bool),
                                                                               (lizzieLet0_1QVal_Bool,QTree_Bool),
                                                                               (lizzieLet0_1QNode_Bool,QTree_Bool),
                                                                               (_29,QTree_Bool)] */
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
  assign _30_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[0]};
  assign lizzieLet0_1QVal_Bool_d = {lizzieLet0_1_d[66:1],
                                    lizzieLet0_1_onehotd[1]};
  assign lizzieLet0_1QNode_Bool_d = {lizzieLet0_1_d[66:1],
                                     lizzieLet0_1_onehotd[2]};
  assign _29_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[3]};
  assign lizzieLet0_1_r = (| (lizzieLet0_1_onehotd & {_29_r,
                                                      lizzieLet0_1QNode_Bool_r,
                                                      lizzieLet0_1QVal_Bool_r,
                                                      _30_r}));
  assign lizzieLet0_2_r = lizzieLet0_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_3,QTree_Bool) (go_2_goMux_data,Go) > [(lizzieLet0_3QNone_Bool,Go),
                                                                  (lizzieLet0_3QVal_Bool,Go),
                                                                  (lizzieLet0_3QNode_Bool,Go),
                                                                  (lizzieLet0_3QError_Bool,Go)] */
  logic [3:0] go_2_goMux_data_onehotd;
  always_comb
    if ((lizzieLet0_3_d[0] && go_2_goMux_data_d[0]))
      unique case (lizzieLet0_3_d[2:1])
        2'd0: go_2_goMux_data_onehotd = 4'd1;
        2'd1: go_2_goMux_data_onehotd = 4'd2;
        2'd2: go_2_goMux_data_onehotd = 4'd4;
        2'd3: go_2_goMux_data_onehotd = 4'd8;
        default: go_2_goMux_data_onehotd = 4'd0;
      endcase
    else go_2_goMux_data_onehotd = 4'd0;
  assign lizzieLet0_3QNone_Bool_d = go_2_goMux_data_onehotd[0];
  assign lizzieLet0_3QVal_Bool_d = go_2_goMux_data_onehotd[1];
  assign lizzieLet0_3QNode_Bool_d = go_2_goMux_data_onehotd[2];
  assign lizzieLet0_3QError_Bool_d = go_2_goMux_data_onehotd[3];
  assign go_2_goMux_data_r = (| (go_2_goMux_data_onehotd & {lizzieLet0_3QError_Bool_r,
                                                            lizzieLet0_3QNode_Bool_r,
                                                            lizzieLet0_3QVal_Bool_r,
                                                            lizzieLet0_3QNone_Bool_r}));
  assign lizzieLet0_3_r = go_2_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet0_3QError_Bool,Go) > [(lizzieLet0_3QError_Bool_1,Go),
                                               (lizzieLet0_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_3QError_Bool_emitted;
  logic [1:0] lizzieLet0_3QError_Bool_done;
  assign lizzieLet0_3QError_Bool_1_d = (lizzieLet0_3QError_Bool_d[0] && (! lizzieLet0_3QError_Bool_emitted[0]));
  assign lizzieLet0_3QError_Bool_2_d = (lizzieLet0_3QError_Bool_d[0] && (! lizzieLet0_3QError_Bool_emitted[1]));
  assign lizzieLet0_3QError_Bool_done = (lizzieLet0_3QError_Bool_emitted | ({lizzieLet0_3QError_Bool_2_d[0],
                                                                             lizzieLet0_3QError_Bool_1_d[0]} & {lizzieLet0_3QError_Bool_2_r,
                                                                                                                lizzieLet0_3QError_Bool_1_r}));
  assign lizzieLet0_3QError_Bool_r = (& lizzieLet0_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_3QError_Bool_emitted <= (lizzieLet0_3QError_Bool_r ? 2'd0 :
                                          lizzieLet0_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_3QError_Bool_1,Go)] > (lizzieLet0_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_3QError_Bool_1_d[0]}), lizzieLet0_3QError_Bool_1_d);
  assign {lizzieLet0_3QError_Bool_1_r} = {1 {(lizzieLet0_3QError_Bool_1QError_Nat_r && lizzieLet0_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet18_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_3QError_Bool_1QError_Nat_r = ((! lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet0_3QError_Bool_1QError_Nat_r)
        lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet0_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet18_1_argbuf_d = (lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet18_1_argbuf_r && lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet18_1_argbuf_r) && (! lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_3QError_Bool_2,Go) > (lizzieLet0_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_3QError_Bool_2_bufchan_d;
  logic lizzieLet0_3QError_Bool_2_bufchan_r;
  assign lizzieLet0_3QError_Bool_2_r = ((! lizzieLet0_3QError_Bool_2_bufchan_d[0]) || lizzieLet0_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_3QError_Bool_2_r)
        lizzieLet0_3QError_Bool_2_bufchan_d <= lizzieLet0_3QError_Bool_2_d;
  Go_t lizzieLet0_3QError_Bool_2_bufchan_buf;
  assign lizzieLet0_3QError_Bool_2_bufchan_r = (! lizzieLet0_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_3QError_Bool_2_argbuf_d = (lizzieLet0_3QError_Bool_2_bufchan_buf[0] ? lizzieLet0_3QError_Bool_2_bufchan_buf :
                                               lizzieLet0_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_3QError_Bool_2_argbuf_r && lizzieLet0_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_3QError_Bool_2_argbuf_r) && (! lizzieLet0_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_3QError_Bool_2_bufchan_buf <= lizzieLet0_3QError_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_4,QTree_Bool) (readPointer_QTree_Boolm2a87_1_argbuf_rwb,QTree_Bool) > [(lizzieLet0_4QNone_Bool,QTree_Bool),
                                                                                                           (lizzieLet0_4QVal_Bool,QTree_Bool),
                                                                                                           (lizzieLet0_4QNode_Bool,QTree_Bool),
                                                                                                           (_28,QTree_Bool)] */
  logic [3:0] readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd;
  always_comb
    if ((lizzieLet0_4_d[0] && readPointer_QTree_Boolm2a87_1_argbuf_rwb_d[0]))
      unique case (lizzieLet0_4_d[2:1])
        2'd0: readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd1;
        2'd1: readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd2;
        2'd2: readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd4;
        2'd3: readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd8;
        default: readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd0;
      endcase
    else readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd = 4'd0;
  assign lizzieLet0_4QNone_Bool_d = {readPointer_QTree_Boolm2a87_1_argbuf_rwb_d[66:1],
                                     readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_d = {readPointer_QTree_Boolm2a87_1_argbuf_rwb_d[66:1],
                                    readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_d = {readPointer_QTree_Boolm2a87_1_argbuf_rwb_d[66:1],
                                     readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd[2]};
  assign _28_d = {readPointer_QTree_Boolm2a87_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd[3]};
  assign readPointer_QTree_Boolm2a87_1_argbuf_rwb_r = (| (readPointer_QTree_Boolm2a87_1_argbuf_rwb_onehotd & {_28_r,
                                                                                                              lizzieLet0_4QNode_Bool_r,
                                                                                                              lizzieLet0_4QVal_Bool_r,
                                                                                                              lizzieLet0_4QNone_Bool_r}));
  assign lizzieLet0_4_r = readPointer_QTree_Boolm2a87_1_argbuf_rwb_r;
  
  /* fork (Ty QTree_Bool) : (lizzieLet0_4QNode_Bool,QTree_Bool) > [(lizzieLet0_4QNode_Bool_1,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_2,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_3,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_4,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_5,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_6,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_7,QTree_Bool),
                                                              (lizzieLet0_4QNode_Bool_8,QTree_Bool)] */
  logic [7:0] lizzieLet0_4QNode_Bool_emitted;
  logic [7:0] lizzieLet0_4QNode_Bool_done;
  assign lizzieLet0_4QNode_Bool_1_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[0]))};
  assign lizzieLet0_4QNode_Bool_2_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[1]))};
  assign lizzieLet0_4QNode_Bool_3_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[2]))};
  assign lizzieLet0_4QNode_Bool_4_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[3]))};
  assign lizzieLet0_4QNode_Bool_5_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[4]))};
  assign lizzieLet0_4QNode_Bool_6_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[5]))};
  assign lizzieLet0_4QNode_Bool_7_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[6]))};
  assign lizzieLet0_4QNode_Bool_8_d = {lizzieLet0_4QNode_Bool_d[66:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[7]))};
  assign lizzieLet0_4QNode_Bool_done = (lizzieLet0_4QNode_Bool_emitted | ({lizzieLet0_4QNode_Bool_8_d[0],
                                                                           lizzieLet0_4QNode_Bool_7_d[0],
                                                                           lizzieLet0_4QNode_Bool_6_d[0],
                                                                           lizzieLet0_4QNode_Bool_5_d[0],
                                                                           lizzieLet0_4QNode_Bool_4_d[0],
                                                                           lizzieLet0_4QNode_Bool_3_d[0],
                                                                           lizzieLet0_4QNode_Bool_2_d[0],
                                                                           lizzieLet0_4QNode_Bool_1_d[0]} & {lizzieLet0_4QNode_Bool_8_r,
                                                                                                             lizzieLet0_4QNode_Bool_7_r,
                                                                                                             lizzieLet0_4QNode_Bool_6_r,
                                                                                                             lizzieLet0_4QNode_Bool_5_r,
                                                                                                             lizzieLet0_4QNode_Bool_4_r,
                                                                                                             lizzieLet0_4QNode_Bool_3_r,
                                                                                                             lizzieLet0_4QNode_Bool_2_r,
                                                                                                             lizzieLet0_4QNode_Bool_1_r}));
  assign lizzieLet0_4QNode_Bool_r = (& lizzieLet0_4QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QNode_Bool_emitted <= 8'd0;
    else
      lizzieLet0_4QNode_Bool_emitted <= (lizzieLet0_4QNode_Bool_r ? 8'd0 :
                                         lizzieLet0_4QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_4QNode_Bool_1QNode_Bool,QTree_Bool) > [(t1a8o_destruct,Pointer_QTree_Bool),
                                                                                (t2a8p_destruct,Pointer_QTree_Bool),
                                                                                (t3a8q_destruct,Pointer_QTree_Bool),
                                                                                (t4a8r_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_4QNode_Bool_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_4QNode_Bool_1QNode_Bool_done;
  assign t1a8o_destruct_d = {lizzieLet0_4QNode_Bool_1QNode_Bool_d[18:3],
                             (lizzieLet0_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_1QNode_Bool_emitted[0]))};
  assign t2a8p_destruct_d = {lizzieLet0_4QNode_Bool_1QNode_Bool_d[34:19],
                             (lizzieLet0_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_1QNode_Bool_emitted[1]))};
  assign t3a8q_destruct_d = {lizzieLet0_4QNode_Bool_1QNode_Bool_d[50:35],
                             (lizzieLet0_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_1QNode_Bool_emitted[2]))};
  assign t4a8r_destruct_d = {lizzieLet0_4QNode_Bool_1QNode_Bool_d[66:51],
                             (lizzieLet0_4QNode_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_4QNode_Bool_1QNode_Bool_done = (lizzieLet0_4QNode_Bool_1QNode_Bool_emitted | ({t4a8r_destruct_d[0],
                                                                                                   t3a8q_destruct_d[0],
                                                                                                   t2a8p_destruct_d[0],
                                                                                                   t1a8o_destruct_d[0]} & {t4a8r_destruct_r,
                                                                                                                           t3a8q_destruct_r,
                                                                                                                           t2a8p_destruct_r,
                                                                                                                           t1a8o_destruct_r}));
  assign lizzieLet0_4QNode_Bool_1QNode_Bool_r = (& lizzieLet0_4QNode_Bool_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_4QNode_Bool_1QNode_Bool_emitted <= (lizzieLet0_4QNode_Bool_1QNode_Bool_r ? 4'd0 :
                                                     lizzieLet0_4QNode_Bool_1QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_4QNode_Bool_2,QTree_Bool) (lizzieLet0_4QNode_Bool_1,QTree_Bool) > [(_27,QTree_Bool),
                                                                                                       (_26,QTree_Bool),
                                                                                                       (lizzieLet0_4QNode_Bool_1QNode_Bool,QTree_Bool),
                                                                                                       (_25,QTree_Bool)] */
  logic [3:0] lizzieLet0_4QNode_Bool_1_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_2_d[0] && lizzieLet0_4QNode_Bool_1_d[0]))
      unique case (lizzieLet0_4QNode_Bool_2_d[2:1])
        2'd0: lizzieLet0_4QNode_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet0_4QNode_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet0_4QNode_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet0_4QNode_Bool_1_onehotd = 4'd8;
        default: lizzieLet0_4QNode_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_4QNode_Bool_1_onehotd = 4'd0;
  assign _27_d = {lizzieLet0_4QNode_Bool_1_d[66:1],
                  lizzieLet0_4QNode_Bool_1_onehotd[0]};
  assign _26_d = {lizzieLet0_4QNode_Bool_1_d[66:1],
                  lizzieLet0_4QNode_Bool_1_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_1QNode_Bool_d = {lizzieLet0_4QNode_Bool_1_d[66:1],
                                                 lizzieLet0_4QNode_Bool_1_onehotd[2]};
  assign _25_d = {lizzieLet0_4QNode_Bool_1_d[66:1],
                  lizzieLet0_4QNode_Bool_1_onehotd[3]};
  assign lizzieLet0_4QNode_Bool_1_r = (| (lizzieLet0_4QNode_Bool_1_onehotd & {_25_r,
                                                                              lizzieLet0_4QNode_Bool_1QNode_Bool_r,
                                                                              _26_r,
                                                                              _27_r}));
  assign lizzieLet0_4QNode_Bool_2_r = lizzieLet0_4QNode_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_4QNode_Bool_3,QTree_Bool) (lizzieLet0_3QNode_Bool,Go) > [(lizzieLet0_4QNode_Bool_3QNone_Bool,Go),
                                                                                     (lizzieLet0_4QNode_Bool_3QVal_Bool,Go),
                                                                                     (lizzieLet0_4QNode_Bool_3QNode_Bool,Go),
                                                                                     (lizzieLet0_4QNode_Bool_3QError_Bool,Go)] */
  logic [3:0] lizzieLet0_3QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_3_d[0] && lizzieLet0_3QNode_Bool_d[0]))
      unique case (lizzieLet0_4QNode_Bool_3_d[2:1])
        2'd0: lizzieLet0_3QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_3QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_3QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_3QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_3QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_3QNode_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_d = lizzieLet0_3QNode_Bool_onehotd[0];
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_d = lizzieLet0_3QNode_Bool_onehotd[1];
  assign lizzieLet0_4QNode_Bool_3QNode_Bool_d = lizzieLet0_3QNode_Bool_onehotd[2];
  assign lizzieLet0_4QNode_Bool_3QError_Bool_d = lizzieLet0_3QNode_Bool_onehotd[3];
  assign lizzieLet0_3QNode_Bool_r = (| (lizzieLet0_3QNode_Bool_onehotd & {lizzieLet0_4QNode_Bool_3QError_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_3QNode_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_3QVal_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_3_r = lizzieLet0_3QNode_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QNode_Bool_3QError_Bool,Go) > [(lizzieLet0_4QNode_Bool_3QError_Bool_1,Go),
                                                           (lizzieLet0_4QNode_Bool_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QNode_Bool_3QError_Bool_emitted;
  logic [1:0] lizzieLet0_4QNode_Bool_3QError_Bool_done;
  assign lizzieLet0_4QNode_Bool_3QError_Bool_1_d = (lizzieLet0_4QNode_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QError_Bool_emitted[0]));
  assign lizzieLet0_4QNode_Bool_3QError_Bool_2_d = (lizzieLet0_4QNode_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QError_Bool_emitted[1]));
  assign lizzieLet0_4QNode_Bool_3QError_Bool_done = (lizzieLet0_4QNode_Bool_3QError_Bool_emitted | ({lizzieLet0_4QNode_Bool_3QError_Bool_2_d[0],
                                                                                                     lizzieLet0_4QNode_Bool_3QError_Bool_1_d[0]} & {lizzieLet0_4QNode_Bool_3QError_Bool_2_r,
                                                                                                                                                    lizzieLet0_4QNode_Bool_3QError_Bool_1_r}));
  assign lizzieLet0_4QNode_Bool_3QError_Bool_r = (& lizzieLet0_4QNode_Bool_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNode_Bool_3QError_Bool_emitted <= (lizzieLet0_4QNode_Bool_3QError_Bool_r ? 2'd0 :
                                                      lizzieLet0_4QNode_Bool_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_4QNode_Bool_3QError_Bool_1,Go)] > (lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_4QNode_Bool_3QError_Bool_1_d[0]}), lizzieLet0_4QNode_Bool_3QError_Bool_1_d);
  assign {lizzieLet0_4QNode_Bool_3QError_Bool_1_r} = {1 {(lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_r && lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet17_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_r = ((! lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0,
                                                                    1'd0};
    else
      if (lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_r)
        lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet17_1_argbuf_d = (lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                      1'd0};
    else
      if ((lizzieLet17_1_argbuf_r && lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                        1'd0};
      else if (((! lizzieLet17_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_4QNode_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QError_Bool_2,Go) > (lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QError_Bool_2_r = ((! lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QError_Bool_2_r)
        lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d <= lizzieLet0_4QNode_Bool_3QError_Bool_2_d;
  Go_t lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_r = (! lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_d = (lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf :
                                                           lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_r && lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_buf <= lizzieLet0_4QNode_Bool_3QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNode_Bool,Go) > (lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNode_Bool_r = ((! lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNode_Bool_r)
        lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_3QNode_Bool_d;
  Go_t lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNode_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNode_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool,Go) > [(lizzieLet0_4QNode_Bool_3QNone_Bool_1,Go),
                                                          (lizzieLet0_4QNode_Bool_3QNone_Bool_2,Go),
                                                          (lizzieLet0_4QNode_Bool_3QNone_Bool_3,Go),
                                                          (lizzieLet0_4QNode_Bool_3QNone_Bool_4,Go),
                                                          (lizzieLet0_4QNode_Bool_3QNone_Bool_5,Go)] */
  logic [4:0] lizzieLet0_4QNode_Bool_3QNone_Bool_emitted;
  logic [4:0] lizzieLet0_4QNode_Bool_3QNone_Bool_done;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_1_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QNone_Bool_emitted[0]));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_2_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QNone_Bool_emitted[1]));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_3_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QNone_Bool_emitted[2]));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_4_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QNone_Bool_emitted[3]));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_5_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QNone_Bool_emitted[4]));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_done = (lizzieLet0_4QNode_Bool_3QNone_Bool_emitted | ({lizzieLet0_4QNode_Bool_3QNone_Bool_5_d[0],
                                                                                                   lizzieLet0_4QNode_Bool_3QNone_Bool_4_d[0],
                                                                                                   lizzieLet0_4QNode_Bool_3QNone_Bool_3_d[0],
                                                                                                   lizzieLet0_4QNode_Bool_3QNone_Bool_2_d[0],
                                                                                                   lizzieLet0_4QNode_Bool_3QNone_Bool_1_d[0]} & {lizzieLet0_4QNode_Bool_3QNone_Bool_5_r,
                                                                                                                                                 lizzieLet0_4QNode_Bool_3QNone_Bool_4_r,
                                                                                                                                                 lizzieLet0_4QNode_Bool_3QNone_Bool_3_r,
                                                                                                                                                 lizzieLet0_4QNode_Bool_3QNone_Bool_2_r,
                                                                                                                                                 lizzieLet0_4QNode_Bool_3QNone_Bool_1_r}));
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_r = (& lizzieLet0_4QNode_Bool_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_emitted <= 5'd0;
    else
      lizzieLet0_4QNode_Bool_3QNone_Bool_emitted <= (lizzieLet0_4QNode_Bool_3QNone_Bool_r ? 5'd0 :
                                                     lizzieLet0_4QNode_Bool_3QNone_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool_1,Go) > (lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_1_r = ((! lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNone_Bool_1_r)
        lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d <= lizzieLet0_4QNode_Bool_3QNone_Bool_1_d;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNone_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf,Go),
                                          (lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_d[0],
                                                                                                     lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_d[0]}), lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_d, lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_d);
  assign {lizzieLet0_4QNode_Bool_3QNone_Bool_1_argbuf_r,
          lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool5_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool_2,Go) > (lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_2_r = ((! lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNone_Bool_2_r)
        lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d <= lizzieLet0_4QNode_Bool_3QNone_Bool_2_d;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_r && lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNone_Bool_2_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf,Go),
                                          (lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_d[0],
                                                                                                     lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_d[0]}), lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_d, lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_d);
  assign {lizzieLet0_4QNode_Bool_3QNone_Bool_2_argbuf_r,
          lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool6_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool_3,Go) > (lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_3_r = ((! lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNone_Bool_3_r)
        lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d <= lizzieLet0_4QNode_Bool_3QNone_Bool_3_d;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_r && lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNone_Bool_3_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf,Go),
                                          (lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_d[0],
                                                                                                     lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_d[0]}), lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_d, lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_d);
  assign {lizzieLet0_4QNode_Bool_3QNone_Bool_3_argbuf_r,
          lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool7_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool_4,Go) > (lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_4_r = ((! lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNone_Bool_4_r)
        lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d <= lizzieLet0_4QNode_Bool_3QNone_Bool_4_d;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_r && lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNone_Bool_4_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf,Go),
                                          (lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_d[0],
                                                                                                     lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_d[0]}), lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_d, lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_d);
  assign {lizzieLet0_4QNode_Bool_3QNone_Bool_4_argbuf_r,
          lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool8_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QNone_Bool_5,Go) > (lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_5_r = ((! lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QNone_Bool_5_r)
        lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d <= lizzieLet0_4QNode_Bool_3QNone_Bool_5_d;
  Go_t lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_r = (! lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_d = (lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_r && lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_buf <= lizzieLet0_4QNode_Bool_3QNone_Bool_5_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QNode_Bool_3QVal_Bool,Go) > [(lizzieLet0_4QNode_Bool_3QVal_Bool_1,Go),
                                                         (lizzieLet0_4QNode_Bool_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QNode_Bool_3QVal_Bool_emitted;
  logic [1:0] lizzieLet0_4QNode_Bool_3QVal_Bool_done;
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_1_d = (lizzieLet0_4QNode_Bool_3QVal_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QVal_Bool_emitted[0]));
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_2_d = (lizzieLet0_4QNode_Bool_3QVal_Bool_d[0] && (! lizzieLet0_4QNode_Bool_3QVal_Bool_emitted[1]));
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_done = (lizzieLet0_4QNode_Bool_3QVal_Bool_emitted | ({lizzieLet0_4QNode_Bool_3QVal_Bool_2_d[0],
                                                                                                 lizzieLet0_4QNode_Bool_3QVal_Bool_1_d[0]} & {lizzieLet0_4QNode_Bool_3QVal_Bool_2_r,
                                                                                                                                              lizzieLet0_4QNode_Bool_3QVal_Bool_1_r}));
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_r = (& lizzieLet0_4QNode_Bool_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNode_Bool_3QVal_Bool_emitted <= (lizzieLet0_4QNode_Bool_3QVal_Bool_r ? 2'd0 :
                                                    lizzieLet0_4QNode_Bool_3QVal_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_4QNode_Bool_3QVal_Bool_1,Go)] > (lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_4QNode_Bool_3QVal_Bool_1_d[0]}), lizzieLet0_4QNode_Bool_3QVal_Bool_1_d);
  assign {lizzieLet0_4QNode_Bool_3QVal_Bool_1_r} = {1 {(lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_r && lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat,QTree_Nat) > (lizzieLet15_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_r = ((! lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d <= {66'd0,
                                                                  1'd0};
    else
      if (lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_r)
        lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d <= lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet15_1_argbuf_d = (lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                    1'd0};
    else
      if ((lizzieLet15_1_argbuf_r && lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                      1'd0};
      else if (((! lizzieLet15_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_4QNode_Bool_3QVal_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNode_Bool_3QVal_Bool_2,Go) > (lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d;
  logic lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_r;
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_2_r = ((! lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d[0]) || lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNode_Bool_3QVal_Bool_2_r)
        lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d <= lizzieLet0_4QNode_Bool_3QVal_Bool_2_d;
  Go_t lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_r = (! lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_d = (lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf :
                                                         lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_r && lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_r) && (! lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_buf <= lizzieLet0_4QNode_Bool_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf) : (lizzieLet0_4QNode_Bool_4,QTree_Bool) (lizzieLet0_5QNode_Bool,Pointer_CTf) > [(lizzieLet0_4QNode_Bool_4QNone_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNode_Bool_4QVal_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNode_Bool_4QNode_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNode_Bool_4QError_Bool,Pointer_CTf)] */
  logic [3:0] lizzieLet0_5QNode_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_4_d[0] && lizzieLet0_5QNode_Bool_d[0]))
      unique case (lizzieLet0_4QNode_Bool_4_d[2:1])
        2'd0: lizzieLet0_5QNode_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_5QNode_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_5QNode_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_5QNode_Bool_onehotd = 4'd8;
        default: lizzieLet0_5QNode_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_5QNode_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_4QNone_Bool_d = {lizzieLet0_5QNode_Bool_d[16:1],
                                                 lizzieLet0_5QNode_Bool_onehotd[0]};
  assign lizzieLet0_4QNode_Bool_4QVal_Bool_d = {lizzieLet0_5QNode_Bool_d[16:1],
                                                lizzieLet0_5QNode_Bool_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_4QNode_Bool_d = {lizzieLet0_5QNode_Bool_d[16:1],
                                                 lizzieLet0_5QNode_Bool_onehotd[2]};
  assign lizzieLet0_4QNode_Bool_4QError_Bool_d = {lizzieLet0_5QNode_Bool_d[16:1],
                                                  lizzieLet0_5QNode_Bool_onehotd[3]};
  assign lizzieLet0_5QNode_Bool_r = (| (lizzieLet0_5QNode_Bool_onehotd & {lizzieLet0_4QNode_Bool_4QError_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_4QNode_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_4QVal_Bool_r,
                                                                          lizzieLet0_4QNode_Bool_4QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_4_r = lizzieLet0_5QNode_Bool_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNode_Bool_4QError_Bool,Pointer_CTf) > (lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_4QError_Bool_r = ((! lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_4QError_Bool_r)
        lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_4QError_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf :
                                                           lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_4QError_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_4QError_Bool_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f3) : [(lizzieLet0_4QNode_Bool_4QNode_Bool,Pointer_CTf),
                        (lizzieLet0_4QNode_Bool_5QNode_Bool,Pointer_QTree_Bool),
                        (t1a8o_destruct,Pointer_QTree_Bool),
                        (lizzieLet0_4QNode_Bool_6QNode_Bool,Pointer_QTree_Bool),
                        (t2a8p_destruct,Pointer_QTree_Bool),
                        (lizzieLet0_4QNode_Bool_7QNode_Bool,Pointer_QTree_Bool),
                        (t3a8q_destruct,Pointer_QTree_Bool)] > (lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3,CTf) */
  assign lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_d = Lcall_f3_dc((& {lizzieLet0_4QNode_Bool_4QNode_Bool_d[0],
                                                                                                                                                                                                           lizzieLet0_4QNode_Bool_5QNode_Bool_d[0],
                                                                                                                                                                                                           t1a8o_destruct_d[0],
                                                                                                                                                                                                           lizzieLet0_4QNode_Bool_6QNode_Bool_d[0],
                                                                                                                                                                                                           t2a8p_destruct_d[0],
                                                                                                                                                                                                           lizzieLet0_4QNode_Bool_7QNode_Bool_d[0],
                                                                                                                                                                                                           t3a8q_destruct_d[0]}), lizzieLet0_4QNode_Bool_4QNode_Bool_d, lizzieLet0_4QNode_Bool_5QNode_Bool_d, t1a8o_destruct_d, lizzieLet0_4QNode_Bool_6QNode_Bool_d, t2a8p_destruct_d, lizzieLet0_4QNode_Bool_7QNode_Bool_d, t3a8q_destruct_d);
  assign {lizzieLet0_4QNode_Bool_4QNode_Bool_r,
          lizzieLet0_4QNode_Bool_5QNode_Bool_r,
          t1a8o_destruct_r,
          lizzieLet0_4QNode_Bool_6QNode_Bool_r,
          t2a8p_destruct_r,
          lizzieLet0_4QNode_Bool_7QNode_Bool_r,
          t3a8q_destruct_r} = {7 {(lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_r && lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3,CTf) > (lizzieLet16_1_argbuf,CTf) */
  CTf_t lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d;
  logic lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_r;
  assign lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_r = ((! lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d[0]) || lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d <= {115'd0,
                                                                                                                                                                                                  1'd0};
    else
      if (lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_r)
        lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d <= lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_d;
  CTf_t lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_r = (! lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf[0]);
  assign lizzieLet16_1_argbuf_d = (lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf :
                                   lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                    1'd0};
    else
      if ((lizzieLet16_1_argbuf_r && lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                      1'd0};
      else if (((! lizzieLet16_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_buf <= lizzieLet0_4QNode_Bool_4QNode_Bool_1lizzieLet0_4QNode_Bool_5QNode_Bool_1t1a8o_1lizzieLet0_4QNode_Bool_6QNode_Bool_1t2a8p_1lizzieLet0_4QNode_Bool_7QNode_Bool_1t3a8q_1Lcall_f3_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNode_Bool_4QNone_Bool,Pointer_CTf) > (lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_4QNone_Bool_r = ((! lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_4QNone_Bool_r)
        lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_4QNone_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_4QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNode_Bool_4QVal_Bool,Pointer_CTf) > (lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_4QVal_Bool_r = ((! lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_4QVal_Bool_r)
        lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_4QVal_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf :
                                                         lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_4QVal_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_4QVal_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_5,QTree_Bool) (q1a8j_destruct,Pointer_QTree_Bool) > [(lizzieLet0_4QNode_Bool_5QNone_Bool,Pointer_QTree_Bool),
                                                                                                             (_24,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_4QNode_Bool_5QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_23,Pointer_QTree_Bool)] */
  logic [3:0] q1a8j_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_5_d[0] && q1a8j_destruct_d[0]))
      unique case (lizzieLet0_4QNode_Bool_5_d[2:1])
        2'd0: q1a8j_destruct_onehotd = 4'd1;
        2'd1: q1a8j_destruct_onehotd = 4'd2;
        2'd2: q1a8j_destruct_onehotd = 4'd4;
        2'd3: q1a8j_destruct_onehotd = 4'd8;
        default: q1a8j_destruct_onehotd = 4'd0;
      endcase
    else q1a8j_destruct_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_5QNone_Bool_d = {q1a8j_destruct_d[16:1],
                                                 q1a8j_destruct_onehotd[0]};
  assign _24_d = {q1a8j_destruct_d[16:1], q1a8j_destruct_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_5QNode_Bool_d = {q1a8j_destruct_d[16:1],
                                                 q1a8j_destruct_onehotd[2]};
  assign _23_d = {q1a8j_destruct_d[16:1], q1a8j_destruct_onehotd[3]};
  assign q1a8j_destruct_r = (| (q1a8j_destruct_onehotd & {_23_r,
                                                          lizzieLet0_4QNode_Bool_5QNode_Bool_r,
                                                          _24_r,
                                                          lizzieLet0_4QNode_Bool_5QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_5_r = q1a8j_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_5QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_5QNone_Bool_r = ((! lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_5QNone_Bool_r)
        lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_5QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_5QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_5QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_6,QTree_Bool) (q2a8k_destruct,Pointer_QTree_Bool) > [(lizzieLet0_4QNode_Bool_6QNone_Bool,Pointer_QTree_Bool),
                                                                                                             (_22,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_4QNode_Bool_6QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_21,Pointer_QTree_Bool)] */
  logic [3:0] q2a8k_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_6_d[0] && q2a8k_destruct_d[0]))
      unique case (lizzieLet0_4QNode_Bool_6_d[2:1])
        2'd0: q2a8k_destruct_onehotd = 4'd1;
        2'd1: q2a8k_destruct_onehotd = 4'd2;
        2'd2: q2a8k_destruct_onehotd = 4'd4;
        2'd3: q2a8k_destruct_onehotd = 4'd8;
        default: q2a8k_destruct_onehotd = 4'd0;
      endcase
    else q2a8k_destruct_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_6QNone_Bool_d = {q2a8k_destruct_d[16:1],
                                                 q2a8k_destruct_onehotd[0]};
  assign _22_d = {q2a8k_destruct_d[16:1], q2a8k_destruct_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_6QNode_Bool_d = {q2a8k_destruct_d[16:1],
                                                 q2a8k_destruct_onehotd[2]};
  assign _21_d = {q2a8k_destruct_d[16:1], q2a8k_destruct_onehotd[3]};
  assign q2a8k_destruct_r = (| (q2a8k_destruct_onehotd & {_21_r,
                                                          lizzieLet0_4QNode_Bool_6QNode_Bool_r,
                                                          _22_r,
                                                          lizzieLet0_4QNode_Bool_6QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_6_r = q2a8k_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_6QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_6QNone_Bool_r = ((! lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_6QNone_Bool_r)
        lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_6QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_6QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_6QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_7,QTree_Bool) (q3a8l_destruct,Pointer_QTree_Bool) > [(lizzieLet0_4QNode_Bool_7QNone_Bool,Pointer_QTree_Bool),
                                                                                                             (_20,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_4QNode_Bool_7QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_19,Pointer_QTree_Bool)] */
  logic [3:0] q3a8l_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_7_d[0] && q3a8l_destruct_d[0]))
      unique case (lizzieLet0_4QNode_Bool_7_d[2:1])
        2'd0: q3a8l_destruct_onehotd = 4'd1;
        2'd1: q3a8l_destruct_onehotd = 4'd2;
        2'd2: q3a8l_destruct_onehotd = 4'd4;
        2'd3: q3a8l_destruct_onehotd = 4'd8;
        default: q3a8l_destruct_onehotd = 4'd0;
      endcase
    else q3a8l_destruct_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_7QNone_Bool_d = {q3a8l_destruct_d[16:1],
                                                 q3a8l_destruct_onehotd[0]};
  assign _20_d = {q3a8l_destruct_d[16:1], q3a8l_destruct_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_7QNode_Bool_d = {q3a8l_destruct_d[16:1],
                                                 q3a8l_destruct_onehotd[2]};
  assign _19_d = {q3a8l_destruct_d[16:1], q3a8l_destruct_onehotd[3]};
  assign q3a8l_destruct_r = (| (q3a8l_destruct_onehotd & {_19_r,
                                                          lizzieLet0_4QNode_Bool_7QNode_Bool_r,
                                                          _20_r,
                                                          lizzieLet0_4QNode_Bool_7QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_7_r = q3a8l_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_7QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_7QNone_Bool_r = ((! lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_7QNone_Bool_r)
        lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_7QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_7QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_7QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_8,QTree_Bool) (q4a8m_destruct,Pointer_QTree_Bool) > [(lizzieLet0_4QNode_Bool_8QNone_Bool,Pointer_QTree_Bool),
                                                                                                             (_18,Pointer_QTree_Bool),
                                                                                                             (lizzieLet0_4QNode_Bool_8QNode_Bool,Pointer_QTree_Bool),
                                                                                                             (_17,Pointer_QTree_Bool)] */
  logic [3:0] q4a8m_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QNode_Bool_8_d[0] && q4a8m_destruct_d[0]))
      unique case (lizzieLet0_4QNode_Bool_8_d[2:1])
        2'd0: q4a8m_destruct_onehotd = 4'd1;
        2'd1: q4a8m_destruct_onehotd = 4'd2;
        2'd2: q4a8m_destruct_onehotd = 4'd4;
        2'd3: q4a8m_destruct_onehotd = 4'd8;
        default: q4a8m_destruct_onehotd = 4'd0;
      endcase
    else q4a8m_destruct_onehotd = 4'd0;
  assign lizzieLet0_4QNode_Bool_8QNone_Bool_d = {q4a8m_destruct_d[16:1],
                                                 q4a8m_destruct_onehotd[0]};
  assign _18_d = {q4a8m_destruct_d[16:1], q4a8m_destruct_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_8QNode_Bool_d = {q4a8m_destruct_d[16:1],
                                                 q4a8m_destruct_onehotd[2]};
  assign _17_d = {q4a8m_destruct_d[16:1], q4a8m_destruct_onehotd[3]};
  assign q4a8m_destruct_r = (| (q4a8m_destruct_onehotd & {_17_r,
                                                          lizzieLet0_4QNode_Bool_8QNode_Bool_r,
                                                          _18_r,
                                                          lizzieLet0_4QNode_Bool_8QNone_Bool_r}));
  assign lizzieLet0_4QNode_Bool_8_r = q4a8m_destruct_r;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_8QNode_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_8QNode_Bool_r = ((! lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_8QNode_Bool_r)
        lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_8QNode_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_8QNode_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_8QNode_Bool_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_8QNone_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNode_Bool_8QNone_Bool_r = ((! lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_8QNone_Bool_r)
        lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d <= lizzieLet0_4QNode_Bool_8QNone_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_r = (! lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_d = (lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_r && lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_8QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_buf <= lizzieLet0_4QNode_Bool_8QNone_Bool_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (lizzieLet0_4QNone_Bool,QTree_Bool) > [(lizzieLet0_4QNone_Bool_1,QTree_Bool),
                                                              (lizzieLet0_4QNone_Bool_2,QTree_Bool),
                                                              (lizzieLet0_4QNone_Bool_3,QTree_Bool),
                                                              (lizzieLet0_4QNone_Bool_4,QTree_Bool)] */
  logic [3:0] lizzieLet0_4QNone_Bool_emitted;
  logic [3:0] lizzieLet0_4QNone_Bool_done;
  assign lizzieLet0_4QNone_Bool_1_d = {lizzieLet0_4QNone_Bool_d[66:1],
                                       (lizzieLet0_4QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_emitted[0]))};
  assign lizzieLet0_4QNone_Bool_2_d = {lizzieLet0_4QNone_Bool_d[66:1],
                                       (lizzieLet0_4QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_emitted[1]))};
  assign lizzieLet0_4QNone_Bool_3_d = {lizzieLet0_4QNone_Bool_d[66:1],
                                       (lizzieLet0_4QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_emitted[2]))};
  assign lizzieLet0_4QNone_Bool_4_d = {lizzieLet0_4QNone_Bool_d[66:1],
                                       (lizzieLet0_4QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_emitted[3]))};
  assign lizzieLet0_4QNone_Bool_done = (lizzieLet0_4QNone_Bool_emitted | ({lizzieLet0_4QNone_Bool_4_d[0],
                                                                           lizzieLet0_4QNone_Bool_3_d[0],
                                                                           lizzieLet0_4QNone_Bool_2_d[0],
                                                                           lizzieLet0_4QNone_Bool_1_d[0]} & {lizzieLet0_4QNone_Bool_4_r,
                                                                                                             lizzieLet0_4QNone_Bool_3_r,
                                                                                                             lizzieLet0_4QNone_Bool_2_r,
                                                                                                             lizzieLet0_4QNone_Bool_1_r}));
  assign lizzieLet0_4QNone_Bool_r = (& lizzieLet0_4QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QNone_Bool_emitted <= 4'd0;
    else
      lizzieLet0_4QNone_Bool_emitted <= (lizzieLet0_4QNone_Bool_r ? 4'd0 :
                                         lizzieLet0_4QNone_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_4QNone_Bool_1QNode_Bool,QTree_Bool) > [(tla89_destruct,Pointer_QTree_Bool),
                                                                                (tra8a_destruct,Pointer_QTree_Bool),
                                                                                (bla8b_destruct,Pointer_QTree_Bool),
                                                                                (bra8c_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_4QNone_Bool_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_4QNone_Bool_1QNode_Bool_done;
  assign tla89_destruct_d = {lizzieLet0_4QNone_Bool_1QNode_Bool_d[18:3],
                             (lizzieLet0_4QNone_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_1QNode_Bool_emitted[0]))};
  assign tra8a_destruct_d = {lizzieLet0_4QNone_Bool_1QNode_Bool_d[34:19],
                             (lizzieLet0_4QNone_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_1QNode_Bool_emitted[1]))};
  assign bla8b_destruct_d = {lizzieLet0_4QNone_Bool_1QNode_Bool_d[50:35],
                             (lizzieLet0_4QNone_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_1QNode_Bool_emitted[2]))};
  assign bra8c_destruct_d = {lizzieLet0_4QNone_Bool_1QNode_Bool_d[66:51],
                             (lizzieLet0_4QNone_Bool_1QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_4QNone_Bool_1QNode_Bool_done = (lizzieLet0_4QNone_Bool_1QNode_Bool_emitted | ({bra8c_destruct_d[0],
                                                                                                   bla8b_destruct_d[0],
                                                                                                   tra8a_destruct_d[0],
                                                                                                   tla89_destruct_d[0]} & {bra8c_destruct_r,
                                                                                                                           bla8b_destruct_r,
                                                                                                                           tra8a_destruct_r,
                                                                                                                           tla89_destruct_r}));
  assign lizzieLet0_4QNone_Bool_1QNode_Bool_r = (& lizzieLet0_4QNone_Bool_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_4QNone_Bool_1QNode_Bool_emitted <= (lizzieLet0_4QNone_Bool_1QNode_Bool_r ? 4'd0 :
                                                     lizzieLet0_4QNone_Bool_1QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_4QNone_Bool_2,QTree_Bool) (lizzieLet0_4QNone_Bool_1,QTree_Bool) > [(_16,QTree_Bool),
                                                                                                       (_15,QTree_Bool),
                                                                                                       (lizzieLet0_4QNone_Bool_1QNode_Bool,QTree_Bool),
                                                                                                       (_14,QTree_Bool)] */
  logic [3:0] lizzieLet0_4QNone_Bool_1_onehotd;
  always_comb
    if ((lizzieLet0_4QNone_Bool_2_d[0] && lizzieLet0_4QNone_Bool_1_d[0]))
      unique case (lizzieLet0_4QNone_Bool_2_d[2:1])
        2'd0: lizzieLet0_4QNone_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet0_4QNone_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet0_4QNone_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet0_4QNone_Bool_1_onehotd = 4'd8;
        default: lizzieLet0_4QNone_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_4QNone_Bool_1_onehotd = 4'd0;
  assign _16_d = {lizzieLet0_4QNone_Bool_1_d[66:1],
                  lizzieLet0_4QNone_Bool_1_onehotd[0]};
  assign _15_d = {lizzieLet0_4QNone_Bool_1_d[66:1],
                  lizzieLet0_4QNone_Bool_1_onehotd[1]};
  assign lizzieLet0_4QNone_Bool_1QNode_Bool_d = {lizzieLet0_4QNone_Bool_1_d[66:1],
                                                 lizzieLet0_4QNone_Bool_1_onehotd[2]};
  assign _14_d = {lizzieLet0_4QNone_Bool_1_d[66:1],
                  lizzieLet0_4QNone_Bool_1_onehotd[3]};
  assign lizzieLet0_4QNone_Bool_1_r = (| (lizzieLet0_4QNone_Bool_1_onehotd & {_14_r,
                                                                              lizzieLet0_4QNone_Bool_1QNode_Bool_r,
                                                                              _15_r,
                                                                              _16_r}));
  assign lizzieLet0_4QNone_Bool_2_r = lizzieLet0_4QNone_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_4QNone_Bool_3,QTree_Bool) (lizzieLet0_3QNone_Bool,Go) > [(lizzieLet0_4QNone_Bool_3QNone_Bool,Go),
                                                                                     (lizzieLet0_4QNone_Bool_3QVal_Bool,Go),
                                                                                     (lizzieLet0_4QNone_Bool_3QNode_Bool,Go),
                                                                                     (lizzieLet0_4QNone_Bool_3QError_Bool,Go)] */
  logic [3:0] lizzieLet0_3QNone_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QNone_Bool_3_d[0] && lizzieLet0_3QNone_Bool_d[0]))
      unique case (lizzieLet0_4QNone_Bool_3_d[2:1])
        2'd0: lizzieLet0_3QNone_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_3QNone_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_3QNone_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_3QNone_Bool_onehotd = 4'd8;
        default: lizzieLet0_3QNone_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_3QNone_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_d = lizzieLet0_3QNone_Bool_onehotd[0];
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_d = lizzieLet0_3QNone_Bool_onehotd[1];
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_d = lizzieLet0_3QNone_Bool_onehotd[2];
  assign lizzieLet0_4QNone_Bool_3QError_Bool_d = lizzieLet0_3QNone_Bool_onehotd[3];
  assign lizzieLet0_3QNone_Bool_r = (| (lizzieLet0_3QNone_Bool_onehotd & {lizzieLet0_4QNone_Bool_3QError_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_3QVal_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_3QNone_Bool_r}));
  assign lizzieLet0_4QNone_Bool_3_r = lizzieLet0_3QNone_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QNone_Bool_3QError_Bool,Go) > [(lizzieLet0_4QNone_Bool_3QError_Bool_1,Go),
                                                           (lizzieLet0_4QNone_Bool_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QNone_Bool_3QError_Bool_emitted;
  logic [1:0] lizzieLet0_4QNone_Bool_3QError_Bool_done;
  assign lizzieLet0_4QNone_Bool_3QError_Bool_1_d = (lizzieLet0_4QNone_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QError_Bool_emitted[0]));
  assign lizzieLet0_4QNone_Bool_3QError_Bool_2_d = (lizzieLet0_4QNone_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QError_Bool_emitted[1]));
  assign lizzieLet0_4QNone_Bool_3QError_Bool_done = (lizzieLet0_4QNone_Bool_3QError_Bool_emitted | ({lizzieLet0_4QNone_Bool_3QError_Bool_2_d[0],
                                                                                                     lizzieLet0_4QNone_Bool_3QError_Bool_1_d[0]} & {lizzieLet0_4QNone_Bool_3QError_Bool_2_r,
                                                                                                                                                    lizzieLet0_4QNone_Bool_3QError_Bool_1_r}));
  assign lizzieLet0_4QNone_Bool_3QError_Bool_r = (& lizzieLet0_4QNone_Bool_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNone_Bool_3QError_Bool_emitted <= (lizzieLet0_4QNone_Bool_3QError_Bool_r ? 2'd0 :
                                                      lizzieLet0_4QNone_Bool_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_4QNone_Bool_3QError_Bool_1,Go)] > (lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_4QNone_Bool_3QError_Bool_1_d[0]}), lizzieLet0_4QNone_Bool_3QError_Bool_1_d);
  assign {lizzieLet0_4QNone_Bool_3QError_Bool_1_r} = {1 {(lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_r && lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet5_1_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_r = ((! lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0,
                                                                    1'd0};
    else
      if (lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_r)
        lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet5_1_1_argbuf_d = (lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf :
                                    lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                      1'd0};
    else
      if ((lizzieLet5_1_1_argbuf_r && lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                        1'd0};
      else if (((! lizzieLet5_1_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_4QNone_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QError_Bool_2,Go) > (lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QError_Bool_2_r = ((! lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QError_Bool_2_r)
        lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d <= lizzieLet0_4QNone_Bool_3QError_Bool_2_d;
  Go_t lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_r = (! lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_d = (lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf :
                                                           lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_r && lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_buf <= lizzieLet0_4QNone_Bool_3QError_Bool_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool,Go) > [(lizzieLet0_4QNone_Bool_3QNode_Bool_1,Go),
                                                          (lizzieLet0_4QNone_Bool_3QNode_Bool_2,Go),
                                                          (lizzieLet0_4QNone_Bool_3QNode_Bool_3,Go),
                                                          (lizzieLet0_4QNone_Bool_3QNode_Bool_4,Go),
                                                          (lizzieLet0_4QNone_Bool_3QNode_Bool_5,Go)] */
  logic [4:0] lizzieLet0_4QNone_Bool_3QNode_Bool_emitted;
  logic [4:0] lizzieLet0_4QNone_Bool_3QNode_Bool_done;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_1_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNode_Bool_emitted[0]));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_2_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNode_Bool_emitted[1]));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_3_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNode_Bool_emitted[2]));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_4_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNode_Bool_emitted[3]));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_5_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNode_Bool_emitted[4]));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_done = (lizzieLet0_4QNone_Bool_3QNode_Bool_emitted | ({lizzieLet0_4QNone_Bool_3QNode_Bool_5_d[0],
                                                                                                   lizzieLet0_4QNone_Bool_3QNode_Bool_4_d[0],
                                                                                                   lizzieLet0_4QNone_Bool_3QNode_Bool_3_d[0],
                                                                                                   lizzieLet0_4QNone_Bool_3QNode_Bool_2_d[0],
                                                                                                   lizzieLet0_4QNone_Bool_3QNode_Bool_1_d[0]} & {lizzieLet0_4QNone_Bool_3QNode_Bool_5_r,
                                                                                                                                                 lizzieLet0_4QNone_Bool_3QNode_Bool_4_r,
                                                                                                                                                 lizzieLet0_4QNone_Bool_3QNode_Bool_3_r,
                                                                                                                                                 lizzieLet0_4QNone_Bool_3QNode_Bool_2_r,
                                                                                                                                                 lizzieLet0_4QNone_Bool_3QNode_Bool_1_r}));
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_r = (& lizzieLet0_4QNone_Bool_3QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_emitted <= 5'd0;
    else
      lizzieLet0_4QNone_Bool_3QNode_Bool_emitted <= (lizzieLet0_4QNone_Bool_3QNode_Bool_r ? 5'd0 :
                                                     lizzieLet0_4QNone_Bool_3QNode_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool_1,Go) > (lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_1_r = ((! lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNode_Bool_1_r)
        lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d <= lizzieLet0_4QNone_Bool_3QNode_Bool_1_d;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNode_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf,Go),
                                          (bra8c_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_d[0],
                                                                                                      bra8c_1_argbuf_d[0]}), lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_d, bra8c_1_argbuf_d);
  assign {lizzieLet0_4QNone_Bool_3QNode_Bool_1_argbuf_r,
          bra8c_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool_2,Go) > (lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_2_r = ((! lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNode_Bool_2_r)
        lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d <= lizzieLet0_4QNone_Bool_3QNode_Bool_2_d;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_r && lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNode_Bool_2_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf,Go),
                                          (bla8b_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_d[0],
                                                                                                     bla8b_1_argbuf_d[0]}), lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_d, bla8b_1_argbuf_d);
  assign {lizzieLet0_4QNone_Bool_3QNode_Bool_2_argbuf_r,
          bla8b_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool2_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool_3,Go) > (lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_3_r = ((! lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNode_Bool_3_r)
        lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d <= lizzieLet0_4QNone_Bool_3QNode_Bool_3_d;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_r && lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNode_Bool_3_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf,Go),
                                          (tra8a_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_d[0],
                                                                                                     tra8a_1_argbuf_d[0]}), lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_d, tra8a_1_argbuf_d);
  assign {lizzieLet0_4QNone_Bool_3QNode_Bool_3_argbuf_r,
          tra8a_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool3_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool_4,Go) > (lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_4_r = ((! lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNode_Bool_4_r)
        lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d <= lizzieLet0_4QNone_Bool_3QNode_Bool_4_d;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_r && lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNode_Bool_4_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool) : [(lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf,Go),
                                          (tla89_1_argbuf,Pointer_QTree_Bool)] > (f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4,TupGo___Pointer_QTree_Bool) */
  assign \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_d  = TupGo___Pointer_QTree_Bool_dc((& {lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_d[0],
                                                                                                     tla89_1_argbuf_d[0]}), lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_d, tla89_1_argbuf_d);
  assign {lizzieLet0_4QNone_Bool_3QNode_Bool_4_argbuf_r,
          tla89_1_argbuf_r} = {2 {(\f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_r  && \f''''''''_f''''''''_BoolTupGo___Pointer_QTree_Bool4_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNode_Bool_5,Go) > (lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_5_r = ((! lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNode_Bool_5_r)
        lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d <= lizzieLet0_4QNone_Bool_3QNode_Bool_5_d;
  Go_t lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_d = (lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_r && lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNode_Bool_5_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QNone_Bool_3QNone_Bool,Go) > [(lizzieLet0_4QNone_Bool_3QNone_Bool_1,Go),
                                                          (lizzieLet0_4QNone_Bool_3QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QNone_Bool_3QNone_Bool_emitted;
  logic [1:0] lizzieLet0_4QNone_Bool_3QNone_Bool_done;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_1_d = (lizzieLet0_4QNone_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_emitted[0]));
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_d = (lizzieLet0_4QNone_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_emitted[1]));
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_done = (lizzieLet0_4QNone_Bool_3QNone_Bool_emitted | ({lizzieLet0_4QNone_Bool_3QNone_Bool_2_d[0],
                                                                                                   lizzieLet0_4QNone_Bool_3QNone_Bool_1_d[0]} & {lizzieLet0_4QNone_Bool_3QNone_Bool_2_r,
                                                                                                                                                 lizzieLet0_4QNone_Bool_3QNone_Bool_1_r}));
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_r = (& lizzieLet0_4QNone_Bool_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNone_Bool_3QNone_Bool_emitted <= (lizzieLet0_4QNone_Bool_3QNone_Bool_r ? 2'd0 :
                                                     lizzieLet0_4QNone_Bool_3QNone_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet0_4QNone_Bool_3QNone_Bool_1,Go)] > (lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat,QTree_Nat) */
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet0_4QNone_Bool_3QNone_Bool_1_d[0]}), lizzieLet0_4QNone_Bool_3QNone_Bool_1_d);
  assign {lizzieLet0_4QNone_Bool_3QNone_Bool_1_r} = {1 {(lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_r && lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat,QTree_Nat) > (lizzieLet2_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_r = ((! lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d <= {66'd0,
                                                                  1'd0};
    else
      if (lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_r)
        lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d <= lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_d;
  QTree_Nat_t lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet2_1_argbuf_d = (lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf :
                                  lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                    1'd0};
    else
      if ((lizzieLet2_1_argbuf_r && lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                      1'd0};
      else if (((! lizzieLet2_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNone_Bool_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QNone_Bool_2,Go) > (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_r = ((! lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QNone_Bool_2_r)
        lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d <= lizzieLet0_4QNone_Bool_3QNone_Bool_2_d;
  Go_t lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_r = (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_d = (lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_r && lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_buf <= lizzieLet0_4QNone_Bool_3QNone_Bool_2_bufchan_d;
  
  /* mergectrl (Ty C15,
           Ty Go) : [(lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf,Go),
                     (lizzieLet38_3Lcall_f0_1_argbuf,Go),
                     (lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf,Go),
                     (lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf,Go),
                     (lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf,Go),
                     (lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf,Go),
                     (lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf,Go),
                     (lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf,Go),
                     (lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf,Go),
                     (lizzieLet0_3QError_Bool_2_argbuf,Go)] > (go_12_goMux_choice,C15) (go_12_goMux_data,Go) */
  logic [14:0] lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d = ((| lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_q) ? lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_q :
                                                                 (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_d[0] ? 15'd1 :
                                                                  (lizzieLet38_3Lcall_f0_1_argbuf_d[0] ? 15'd2 :
                                                                   (lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_d[0] ? 15'd4 :
                                                                    (lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_d[0] ? 15'd8 :
                                                                     (lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_d[0] ? 15'd16 :
                                                                      (lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_d[0] ? 15'd32 :
                                                                       (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_d[0] ? 15'd64 :
                                                                        (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_d[0] ? 15'd128 :
                                                                         (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_d[0] ? 15'd256 :
                                                                          (lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_d[0] ? 15'd512 :
                                                                           (lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_d[0] ? 15'd1024 :
                                                                            (lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_d[0] ? 15'd2048 :
                                                                             (lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_d[0] ? 15'd4096 :
                                                                              (lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_d[0] ? 15'd8192 :
                                                                               (lizzieLet0_3QError_Bool_2_argbuf_d[0] ? 15'd16384 :
                                                                                15'd0))))))))))))))));
  logic [14:0] lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_q <= 15'd0;
    else
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_q <= (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_done ? 15'd0 :
                                                               lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d);
  logic [1:0] lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q <= (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_done ? 2'd0 :
                                                             lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_d);
  logic [1:0] lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_d;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_d = (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q | ({go_12_goMux_choice_d[0],
                                                                                                                      go_12_goMux_data_d[0]} & {go_12_goMux_choice_r,
                                                                                                                                                go_12_goMux_data_r}));
  logic lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_done;
  assign lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_done = (& lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_d);
  assign {lizzieLet0_3QError_Bool_2_argbuf_r,
          lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_r,
          lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_r,
          lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_r,
          lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_r,
          lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_r,
          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_r,
          lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_r,
          lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_r,
          lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_r,
          lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_r,
          lizzieLet38_3Lcall_f0_1_argbuf_r,
          lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_r} = (lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_done ? lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d :
                                                            15'd0);
  assign go_12_goMux_data_d = ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_d :
                               ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet38_3Lcall_f0_1_argbuf_d :
                                ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_d :
                                 ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNone_Bool_3QNode_Bool_5_argbuf_d :
                                  ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNone_Bool_3QError_Bool_2_argbuf_d :
                                   ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[5] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_d :
                                    ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[6] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_d :
                                     ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[7] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_d :
                                      ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[8] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_d :
                                       ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[9] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_d :
                                        ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[10] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_d :
                                         ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[11] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNode_Bool_3QNone_Bool_5_argbuf_d :
                                          ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[12] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNode_Bool_3QVal_Bool_2_argbuf_d :
                                           ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[13] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_4QNode_Bool_3QError_Bool_2_argbuf_d :
                                            ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[14] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_3QError_Bool_2_argbuf_d :
                                             1'd0)))))))))))))));
  assign go_12_goMux_choice_d = ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C1_15_dc(1'd1) :
                                 ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C2_15_dc(1'd1) :
                                  ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C3_15_dc(1'd1) :
                                   ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C4_15_dc(1'd1) :
                                    ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C5_15_dc(1'd1) :
                                     ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[5] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C6_15_dc(1'd1) :
                                      ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[6] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C7_15_dc(1'd1) :
                                       ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[7] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C8_15_dc(1'd1) :
                                        ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[8] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C9_15_dc(1'd1) :
                                         ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[9] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C10_15_dc(1'd1) :
                                          ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[10] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C11_15_dc(1'd1) :
                                           ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[11] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C12_15_dc(1'd1) :
                                            ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[12] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C13_15_dc(1'd1) :
                                             ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[13] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C14_15_dc(1'd1) :
                                              ((lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_select_d[14] && (! lizzieLet0_4QNone_Bool_3QNone_Bool_2_argbuf_emit_q[1])) ? C15_15_dc(1'd1) :
                                               {4'd0, 1'd0})))))))))))))));
  
  /* fork (Ty Go) : (lizzieLet0_4QNone_Bool_3QVal_Bool,Go) > [(lizzieLet0_4QNone_Bool_3QVal_Bool_1,Go),
                                                         (lizzieLet0_4QNone_Bool_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QNone_Bool_3QVal_Bool_emitted;
  logic [1:0] lizzieLet0_4QNone_Bool_3QVal_Bool_done;
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_1_d = (lizzieLet0_4QNone_Bool_3QVal_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QVal_Bool_emitted[0]));
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_2_d = (lizzieLet0_4QNone_Bool_3QVal_Bool_d[0] && (! lizzieLet0_4QNone_Bool_3QVal_Bool_emitted[1]));
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_done = (lizzieLet0_4QNone_Bool_3QVal_Bool_emitted | ({lizzieLet0_4QNone_Bool_3QVal_Bool_2_d[0],
                                                                                                 lizzieLet0_4QNone_Bool_3QVal_Bool_1_d[0]} & {lizzieLet0_4QNone_Bool_3QVal_Bool_2_r,
                                                                                                                                              lizzieLet0_4QNone_Bool_3QVal_Bool_1_r}));
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_r = (& lizzieLet0_4QNone_Bool_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNone_Bool_3QVal_Bool_emitted <= (lizzieLet0_4QNone_Bool_3QVal_Bool_r ? 2'd0 :
                                                    lizzieLet0_4QNone_Bool_3QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QVal_Bool_1,Go) > (lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_1_r = ((! lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QVal_Bool_1_r)
        lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d <= lizzieLet0_4QNone_Bool_3QVal_Bool_1_d;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_r = (! lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf :
                                                         lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_buf <= lizzieLet0_4QNone_Bool_3QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf,Go)] > (lvl5rbq-5TupGo_1,TupGo) */
  assign \lvl5rbq-5TupGo_1_d  = TupGo_dc((& {lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_d[0]}), lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_d);
  assign {lizzieLet0_4QNone_Bool_3QVal_Bool_1_argbuf_r} = {1 {(\lvl5rbq-5TupGo_1_r  && \lvl5rbq-5TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QNone_Bool_3QVal_Bool_2,Go) > (lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d;
  logic lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_r;
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_2_r = ((! lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d[0]) || lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QNone_Bool_3QVal_Bool_2_r)
        lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d <= lizzieLet0_4QNone_Bool_3QVal_Bool_2_d;
  Go_t lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_r = (! lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_d = (lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf :
                                                         lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_r && lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QNone_Bool_3QVal_Bool_2_argbuf_r) && (! lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_buf <= lizzieLet0_4QNone_Bool_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf) : (lizzieLet0_4QNone_Bool_4,QTree_Bool) (lizzieLet0_5QNone_Bool,Pointer_CTf) > [(lizzieLet0_4QNone_Bool_4QNone_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNone_Bool_4QVal_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNone_Bool_4QNode_Bool,Pointer_CTf),
                                                                                                       (lizzieLet0_4QNone_Bool_4QError_Bool,Pointer_CTf)] */
  logic [3:0] lizzieLet0_5QNone_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QNone_Bool_4_d[0] && lizzieLet0_5QNone_Bool_d[0]))
      unique case (lizzieLet0_4QNone_Bool_4_d[2:1])
        2'd0: lizzieLet0_5QNone_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_5QNone_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_5QNone_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_5QNone_Bool_onehotd = 4'd8;
        default: lizzieLet0_5QNone_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_5QNone_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QNone_Bool_4QNone_Bool_d = {lizzieLet0_5QNone_Bool_d[16:1],
                                                 lizzieLet0_5QNone_Bool_onehotd[0]};
  assign lizzieLet0_4QNone_Bool_4QVal_Bool_d = {lizzieLet0_5QNone_Bool_d[16:1],
                                                lizzieLet0_5QNone_Bool_onehotd[1]};
  assign lizzieLet0_4QNone_Bool_4QNode_Bool_d = {lizzieLet0_5QNone_Bool_d[16:1],
                                                 lizzieLet0_5QNone_Bool_onehotd[2]};
  assign lizzieLet0_4QNone_Bool_4QError_Bool_d = {lizzieLet0_5QNone_Bool_d[16:1],
                                                  lizzieLet0_5QNone_Bool_onehotd[3]};
  assign lizzieLet0_5QNone_Bool_r = (| (lizzieLet0_5QNone_Bool_onehotd & {lizzieLet0_4QNone_Bool_4QError_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_4QNode_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_4QVal_Bool_r,
                                                                          lizzieLet0_4QNone_Bool_4QNone_Bool_r}));
  assign lizzieLet0_4QNone_Bool_4_r = lizzieLet0_5QNone_Bool_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNone_Bool_4QError_Bool,Pointer_CTf) > (lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d;
  logic lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_r;
  assign lizzieLet0_4QNone_Bool_4QError_Bool_r = ((! lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d[0]) || lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNone_Bool_4QError_Bool_r)
        lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d <= lizzieLet0_4QNone_Bool_4QError_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_r = (! lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf :
                                                           lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNone_Bool_4QError_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_buf <= lizzieLet0_4QNone_Bool_4QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNone_Bool_4QNode_Bool,Pointer_CTf) > (lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d;
  logic lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_r;
  assign lizzieLet0_4QNone_Bool_4QNode_Bool_r = ((! lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d[0]) || lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNone_Bool_4QNode_Bool_r)
        lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d <= lizzieLet0_4QNone_Bool_4QNode_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_r = (! lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNone_Bool_4QNode_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_buf <= lizzieLet0_4QNone_Bool_4QNode_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNone_Bool_4QNone_Bool,Pointer_CTf) > (lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet0_4QNone_Bool_4QNone_Bool_r = ((! lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNone_Bool_4QNone_Bool_r)
        lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d <= lizzieLet0_4QNone_Bool_4QNone_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_r = (! lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf :
                                                          lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNone_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_buf <= lizzieLet0_4QNone_Bool_4QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QNone_Bool_4QVal_Bool,Pointer_CTf) > (lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d;
  logic lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_r;
  assign lizzieLet0_4QNone_Bool_4QVal_Bool_r = ((! lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d[0]) || lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNone_Bool_4QVal_Bool_r)
        lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d <= lizzieLet0_4QNone_Bool_4QVal_Bool_d;
  Pointer_CTf_t lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf;
  assign lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_r = (! lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_d = (lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf[0] ? lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf :
                                                         lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_r && lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf[0]))
        lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNone_Bool_4QVal_Bool_1_argbuf_r) && (! lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf[0])))
        lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_buf <= lizzieLet0_4QNone_Bool_4QVal_Bool_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (lizzieLet0_4QVal_Bool,QTree_Bool) > [(lizzieLet0_4QVal_Bool_1,QTree_Bool),
                                                             (lizzieLet0_4QVal_Bool_2,QTree_Bool),
                                                             (lizzieLet0_4QVal_Bool_3,QTree_Bool),
                                                             (lizzieLet0_4QVal_Bool_4,QTree_Bool),
                                                             (lizzieLet0_4QVal_Bool_5,QTree_Bool)] */
  logic [4:0] lizzieLet0_4QVal_Bool_emitted;
  logic [4:0] lizzieLet0_4QVal_Bool_done;
  assign lizzieLet0_4QVal_Bool_1_d = {lizzieLet0_4QVal_Bool_d[66:1],
                                      (lizzieLet0_4QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_emitted[0]))};
  assign lizzieLet0_4QVal_Bool_2_d = {lizzieLet0_4QVal_Bool_d[66:1],
                                      (lizzieLet0_4QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_emitted[1]))};
  assign lizzieLet0_4QVal_Bool_3_d = {lizzieLet0_4QVal_Bool_d[66:1],
                                      (lizzieLet0_4QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_emitted[2]))};
  assign lizzieLet0_4QVal_Bool_4_d = {lizzieLet0_4QVal_Bool_d[66:1],
                                      (lizzieLet0_4QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_emitted[3]))};
  assign lizzieLet0_4QVal_Bool_5_d = {lizzieLet0_4QVal_Bool_d[66:1],
                                      (lizzieLet0_4QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_emitted[4]))};
  assign lizzieLet0_4QVal_Bool_done = (lizzieLet0_4QVal_Bool_emitted | ({lizzieLet0_4QVal_Bool_5_d[0],
                                                                         lizzieLet0_4QVal_Bool_4_d[0],
                                                                         lizzieLet0_4QVal_Bool_3_d[0],
                                                                         lizzieLet0_4QVal_Bool_2_d[0],
                                                                         lizzieLet0_4QVal_Bool_1_d[0]} & {lizzieLet0_4QVal_Bool_5_r,
                                                                                                          lizzieLet0_4QVal_Bool_4_r,
                                                                                                          lizzieLet0_4QVal_Bool_3_r,
                                                                                                          lizzieLet0_4QVal_Bool_2_r,
                                                                                                          lizzieLet0_4QVal_Bool_1_r}));
  assign lizzieLet0_4QVal_Bool_r = (& lizzieLet0_4QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QVal_Bool_emitted <= 5'd0;
    else
      lizzieLet0_4QVal_Bool_emitted <= (lizzieLet0_4QVal_Bool_r ? 5'd0 :
                                        lizzieLet0_4QVal_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet0_4QVal_Bool_1QVal_Bool,QTree_Bool) > [(va8e_destruct,MyBool)] */
  assign va8e_destruct_d = {lizzieLet0_4QVal_Bool_1QVal_Bool_d[3:3],
                            lizzieLet0_4QVal_Bool_1QVal_Bool_d[0]};
  assign lizzieLet0_4QVal_Bool_1QVal_Bool_r = va8e_destruct_r;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_4QVal_Bool_2,QTree_Bool) (lizzieLet0_4QVal_Bool_1,QTree_Bool) > [(_13,QTree_Bool),
                                                                                                     (lizzieLet0_4QVal_Bool_1QVal_Bool,QTree_Bool),
                                                                                                     (_12,QTree_Bool),
                                                                                                     (_11,QTree_Bool)] */
  logic [3:0] lizzieLet0_4QVal_Bool_1_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_2_d[0] && lizzieLet0_4QVal_Bool_1_d[0]))
      unique case (lizzieLet0_4QVal_Bool_2_d[2:1])
        2'd0: lizzieLet0_4QVal_Bool_1_onehotd = 4'd1;
        2'd1: lizzieLet0_4QVal_Bool_1_onehotd = 4'd2;
        2'd2: lizzieLet0_4QVal_Bool_1_onehotd = 4'd4;
        2'd3: lizzieLet0_4QVal_Bool_1_onehotd = 4'd8;
        default: lizzieLet0_4QVal_Bool_1_onehotd = 4'd0;
      endcase
    else lizzieLet0_4QVal_Bool_1_onehotd = 4'd0;
  assign _13_d = {lizzieLet0_4QVal_Bool_1_d[66:1],
                  lizzieLet0_4QVal_Bool_1_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_1QVal_Bool_d = {lizzieLet0_4QVal_Bool_1_d[66:1],
                                               lizzieLet0_4QVal_Bool_1_onehotd[1]};
  assign _12_d = {lizzieLet0_4QVal_Bool_1_d[66:1],
                  lizzieLet0_4QVal_Bool_1_onehotd[2]};
  assign _11_d = {lizzieLet0_4QVal_Bool_1_d[66:1],
                  lizzieLet0_4QVal_Bool_1_onehotd[3]};
  assign lizzieLet0_4QVal_Bool_1_r = (| (lizzieLet0_4QVal_Bool_1_onehotd & {_11_r,
                                                                            _12_r,
                                                                            lizzieLet0_4QVal_Bool_1QVal_Bool_r,
                                                                            _13_r}));
  assign lizzieLet0_4QVal_Bool_2_r = lizzieLet0_4QVal_Bool_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet0_4QVal_Bool_3,QTree_Bool) (lizzieLet0_3QVal_Bool,Go) > [(lizzieLet0_4QVal_Bool_3QNone_Bool,Go),
                                                                                   (lizzieLet0_4QVal_Bool_3QVal_Bool,Go),
                                                                                   (lizzieLet0_4QVal_Bool_3QNode_Bool,Go),
                                                                                   (lizzieLet0_4QVal_Bool_3QError_Bool,Go)] */
  logic [3:0] lizzieLet0_3QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_3_d[0] && lizzieLet0_3QVal_Bool_d[0]))
      unique case (lizzieLet0_4QVal_Bool_3_d[2:1])
        2'd0: lizzieLet0_3QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_3QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_3QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_3QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_3QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_3QVal_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_d = lizzieLet0_3QVal_Bool_onehotd[0];
  assign lizzieLet0_4QVal_Bool_3QVal_Bool_d = lizzieLet0_3QVal_Bool_onehotd[1];
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_d = lizzieLet0_3QVal_Bool_onehotd[2];
  assign lizzieLet0_4QVal_Bool_3QError_Bool_d = lizzieLet0_3QVal_Bool_onehotd[3];
  assign lizzieLet0_3QVal_Bool_r = (| (lizzieLet0_3QVal_Bool_onehotd & {lizzieLet0_4QVal_Bool_3QError_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_3QNode_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_3QVal_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_3QNone_Bool_r}));
  assign lizzieLet0_4QVal_Bool_3_r = lizzieLet0_3QVal_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_3QError_Bool,Go) > [(lizzieLet0_4QVal_Bool_3QError_Bool_1,Go),
                                                          (lizzieLet0_4QVal_Bool_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_3QError_Bool_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_3QError_Bool_done;
  assign lizzieLet0_4QVal_Bool_3QError_Bool_1_d = (lizzieLet0_4QVal_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QError_Bool_emitted[0]));
  assign lizzieLet0_4QVal_Bool_3QError_Bool_2_d = (lizzieLet0_4QVal_Bool_3QError_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QError_Bool_emitted[1]));
  assign lizzieLet0_4QVal_Bool_3QError_Bool_done = (lizzieLet0_4QVal_Bool_3QError_Bool_emitted | ({lizzieLet0_4QVal_Bool_3QError_Bool_2_d[0],
                                                                                                   lizzieLet0_4QVal_Bool_3QError_Bool_1_d[0]} & {lizzieLet0_4QVal_Bool_3QError_Bool_2_r,
                                                                                                                                                 lizzieLet0_4QVal_Bool_3QError_Bool_1_r}));
  assign lizzieLet0_4QVal_Bool_3QError_Bool_r = (& lizzieLet0_4QVal_Bool_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_3QError_Bool_emitted <= (lizzieLet0_4QVal_Bool_3QError_Bool_r ? 2'd0 :
                                                     lizzieLet0_4QVal_Bool_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_4QVal_Bool_3QError_Bool_1,Go)] > (lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_4QVal_Bool_3QError_Bool_1_d[0]}), lizzieLet0_4QVal_Bool_3QError_Bool_1_d);
  assign {lizzieLet0_4QVal_Bool_3QError_Bool_1_r} = {1 {(lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_r && lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet12_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_r = ((! lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0,
                                                                   1'd0};
    else
      if (lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_r)
        lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet12_1_argbuf_d = (lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                     1'd0};
    else
      if ((lizzieLet12_1_argbuf_r && lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                       1'd0};
      else if (((! lizzieLet12_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_4QVal_Bool_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_3QError_Bool_2,Go) > (lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QError_Bool_2_r = ((! lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_3QError_Bool_2_r)
        lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d <= lizzieLet0_4QVal_Bool_3QError_Bool_2_d;
  Go_t lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_r = (! lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_d = (lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf :
                                                          lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_r && lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_3QError_Bool_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_buf <= lizzieLet0_4QVal_Bool_3QError_Bool_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_3QNode_Bool,Go) > [(lizzieLet0_4QVal_Bool_3QNode_Bool_1,Go),
                                                         (lizzieLet0_4QVal_Bool_3QNode_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_3QNode_Bool_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_3QNode_Bool_done;
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_1_d = (lizzieLet0_4QVal_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QNode_Bool_emitted[0]));
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_2_d = (lizzieLet0_4QVal_Bool_3QNode_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QNode_Bool_emitted[1]));
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_done = (lizzieLet0_4QVal_Bool_3QNode_Bool_emitted | ({lizzieLet0_4QVal_Bool_3QNode_Bool_2_d[0],
                                                                                                 lizzieLet0_4QVal_Bool_3QNode_Bool_1_d[0]} & {lizzieLet0_4QVal_Bool_3QNode_Bool_2_r,
                                                                                                                                              lizzieLet0_4QVal_Bool_3QNode_Bool_1_r}));
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_r = (& lizzieLet0_4QVal_Bool_3QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_3QNode_Bool_emitted <= (lizzieLet0_4QVal_Bool_3QNode_Bool_r ? 2'd0 :
                                                    lizzieLet0_4QVal_Bool_3QNode_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet0_4QVal_Bool_3QNode_Bool_1,Go)] > (lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet0_4QVal_Bool_3QNode_Bool_1_d[0]}), lizzieLet0_4QVal_Bool_3QNode_Bool_1_d);
  assign {lizzieLet0_4QVal_Bool_3QNode_Bool_1_r} = {1 {(lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_r && lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat,QTree_Nat) > (lizzieLet11_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_r = ((! lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d <= {66'd0,
                                                                  1'd0};
    else
      if (lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_r)
        lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d <= lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_r = (! lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet11_1_argbuf_d = (lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                    1'd0};
    else
      if ((lizzieLet11_1_argbuf_r && lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf <= {66'd0,
                                                                      1'd0};
      else if (((! lizzieLet11_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_buf <= lizzieLet0_4QVal_Bool_3QNode_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_3QNode_Bool_2,Go) > (lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_2_r = ((! lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_3QNode_Bool_2_r)
        lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d <= lizzieLet0_4QVal_Bool_3QNode_Bool_2_d;
  Go_t lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_r = (! lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_d = (lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf :
                                                         lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_r && lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_3QNode_Bool_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_buf <= lizzieLet0_4QVal_Bool_3QNode_Bool_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_3QNone_Bool,Go) > [(lizzieLet0_4QVal_Bool_3QNone_Bool_1,Go),
                                                         (lizzieLet0_4QVal_Bool_3QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_3QNone_Bool_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_3QNone_Bool_done;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_1_d = (lizzieLet0_4QVal_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QNone_Bool_emitted[0]));
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_2_d = (lizzieLet0_4QVal_Bool_3QNone_Bool_d[0] && (! lizzieLet0_4QVal_Bool_3QNone_Bool_emitted[1]));
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_done = (lizzieLet0_4QVal_Bool_3QNone_Bool_emitted | ({lizzieLet0_4QVal_Bool_3QNone_Bool_2_d[0],
                                                                                                 lizzieLet0_4QVal_Bool_3QNone_Bool_1_d[0]} & {lizzieLet0_4QVal_Bool_3QNone_Bool_2_r,
                                                                                                                                              lizzieLet0_4QVal_Bool_3QNone_Bool_1_r}));
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_r = (& lizzieLet0_4QVal_Bool_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_3QNone_Bool_emitted <= (lizzieLet0_4QVal_Bool_3QNone_Bool_r ? 2'd0 :
                                                    lizzieLet0_4QVal_Bool_3QNone_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_3QNone_Bool_1,Go) > (lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_1_r = ((! lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_3QNone_Bool_1_r)
        lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d <= lizzieLet0_4QVal_Bool_3QNone_Bool_1_d;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_r = (! lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_d = (lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf :
                                                         lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_r && lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_buf <= lizzieLet0_4QVal_Bool_3QNone_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf,Go)] > (lvl4rbp-4TupGo_1,TupGo) */
  assign \lvl4rbp-4TupGo_1_d  = TupGo_dc((& {lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_d[0]}), lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_d);
  assign {lizzieLet0_4QVal_Bool_3QNone_Bool_1_argbuf_r} = {1 {(\lvl4rbp-4TupGo_1_r  && \lvl4rbp-4TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_3QNone_Bool_2,Go) > (lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_2_r = ((! lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_3QNone_Bool_2_r)
        lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d <= lizzieLet0_4QVal_Bool_3QNone_Bool_2_d;
  Go_t lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_r = (! lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_d = (lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf :
                                                         lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_r && lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_3QNone_Bool_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_buf <= lizzieLet0_4QVal_Bool_3QNone_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_4,QTree_Bool) (lizzieLet0_5QVal_Bool,Pointer_CTf) > [(lizzieLet0_4QVal_Bool_4QNone_Bool,Pointer_CTf),
                                                                                                     (lizzieLet0_4QVal_Bool_4QVal_Bool,Pointer_CTf),
                                                                                                     (lizzieLet0_4QVal_Bool_4QNode_Bool,Pointer_CTf),
                                                                                                     (lizzieLet0_4QVal_Bool_4QError_Bool,Pointer_CTf)] */
  logic [3:0] lizzieLet0_5QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_4_d[0] && lizzieLet0_5QVal_Bool_d[0]))
      unique case (lizzieLet0_4QVal_Bool_4_d[2:1])
        2'd0: lizzieLet0_5QVal_Bool_onehotd = 4'd1;
        2'd1: lizzieLet0_5QVal_Bool_onehotd = 4'd2;
        2'd2: lizzieLet0_5QVal_Bool_onehotd = 4'd4;
        2'd3: lizzieLet0_5QVal_Bool_onehotd = 4'd8;
        default: lizzieLet0_5QVal_Bool_onehotd = 4'd0;
      endcase
    else lizzieLet0_5QVal_Bool_onehotd = 4'd0;
  assign lizzieLet0_4QVal_Bool_4QNone_Bool_d = {lizzieLet0_5QVal_Bool_d[16:1],
                                                lizzieLet0_5QVal_Bool_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_4QVal_Bool_d = {lizzieLet0_5QVal_Bool_d[16:1],
                                               lizzieLet0_5QVal_Bool_onehotd[1]};
  assign lizzieLet0_4QVal_Bool_4QNode_Bool_d = {lizzieLet0_5QVal_Bool_d[16:1],
                                                lizzieLet0_5QVal_Bool_onehotd[2]};
  assign lizzieLet0_4QVal_Bool_4QError_Bool_d = {lizzieLet0_5QVal_Bool_d[16:1],
                                                 lizzieLet0_5QVal_Bool_onehotd[3]};
  assign lizzieLet0_5QVal_Bool_r = (| (lizzieLet0_5QVal_Bool_onehotd & {lizzieLet0_4QVal_Bool_4QError_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_4QNode_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_4QVal_Bool_r,
                                                                        lizzieLet0_4QVal_Bool_4QNone_Bool_r}));
  assign lizzieLet0_4QVal_Bool_4_r = lizzieLet0_5QVal_Bool_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_4QError_Bool,Pointer_CTf) > (lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d;
  logic lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_r;
  assign lizzieLet0_4QVal_Bool_4QError_Bool_r = ((! lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d[0]) || lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QVal_Bool_4QError_Bool_r)
        lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d <= lizzieLet0_4QVal_Bool_4QError_Bool_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_r = (! lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_d = (lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf :
                                                          lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_r && lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QVal_Bool_4QError_Bool_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_buf <= lizzieLet0_4QVal_Bool_4QError_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_4QNode_Bool,Pointer_CTf) > (lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d;
  logic lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_r;
  assign lizzieLet0_4QVal_Bool_4QNode_Bool_r = ((! lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d[0]) || lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QVal_Bool_4QNode_Bool_r)
        lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d <= lizzieLet0_4QVal_Bool_4QNode_Bool_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_r = (! lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_d = (lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf :
                                                         lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_r && lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QVal_Bool_4QNode_Bool_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_buf <= lizzieLet0_4QVal_Bool_4QNode_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_4QNone_Bool,Pointer_CTf) > (lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d;
  logic lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_r;
  assign lizzieLet0_4QVal_Bool_4QNone_Bool_r = ((! lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d[0]) || lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QVal_Bool_4QNone_Bool_r)
        lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d <= lizzieLet0_4QVal_Bool_4QNone_Bool_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_r = (! lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_d = (lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf :
                                                         lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_r && lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QVal_Bool_4QNone_Bool_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_buf <= lizzieLet0_4QVal_Bool_4QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyBool) : (lizzieLet0_4QVal_Bool_5,QTree_Bool) (v1a8d_destruct,MyBool) > [(_10,MyBool),
                                                                                    (lizzieLet0_4QVal_Bool_5QVal_Bool,MyBool),
                                                                                    (_9,MyBool),
                                                                                    (_8,MyBool)] */
  logic [3:0] v1a8d_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5_d[0] && v1a8d_destruct_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5_d[2:1])
        2'd0: v1a8d_destruct_onehotd = 4'd1;
        2'd1: v1a8d_destruct_onehotd = 4'd2;
        2'd2: v1a8d_destruct_onehotd = 4'd4;
        2'd3: v1a8d_destruct_onehotd = 4'd8;
        default: v1a8d_destruct_onehotd = 4'd0;
      endcase
    else v1a8d_destruct_onehotd = 4'd0;
  assign _10_d = {v1a8d_destruct_d[1:1], v1a8d_destruct_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_d = {v1a8d_destruct_d[1:1],
                                               v1a8d_destruct_onehotd[1]};
  assign _9_d = {v1a8d_destruct_d[1:1], v1a8d_destruct_onehotd[2]};
  assign _8_d = {v1a8d_destruct_d[1:1], v1a8d_destruct_onehotd[3]};
  assign v1a8d_destruct_r = (| (v1a8d_destruct_onehotd & {_8_r,
                                                          _9_r,
                                                          lizzieLet0_4QVal_Bool_5QVal_Bool_r,
                                                          _10_r}));
  assign lizzieLet0_4QVal_Bool_5_r = v1a8d_destruct_r;
  
  /* fork (Ty MyBool) : (lizzieLet0_4QVal_Bool_5QVal_Bool,MyBool) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_1,MyBool),
                                                                (lizzieLet0_4QVal_Bool_5QVal_Bool_2,MyBool),
                                                                (lizzieLet0_4QVal_Bool_5QVal_Bool_3,MyBool)] */
  logic [2:0] lizzieLet0_4QVal_Bool_5QVal_Bool_emitted;
  logic [2:0] lizzieLet0_4QVal_Bool_5QVal_Bool_done;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_d[1:1],
                                                 (lizzieLet0_4QVal_Bool_5QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_emitted[0]))};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_d[1:1],
                                                 (lizzieLet0_4QVal_Bool_5QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_emitted[1]))};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_d[1:1],
                                                 (lizzieLet0_4QVal_Bool_5QVal_Bool_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_emitted[2]))};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_done = (lizzieLet0_4QVal_Bool_5QVal_Bool_emitted | ({lizzieLet0_4QVal_Bool_5QVal_Bool_3_d[0],
                                                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_2_d[0],
                                                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_1_d[0]} & {lizzieLet0_4QVal_Bool_5QVal_Bool_3_r,
                                                                                                                                           lizzieLet0_4QVal_Bool_5QVal_Bool_2_r,
                                                                                                                                           lizzieLet0_4QVal_Bool_5QVal_Bool_1_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_r = (& lizzieLet0_4QVal_Bool_5QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_emitted <= 3'd0;
    else
      lizzieLet0_4QVal_Bool_5QVal_Bool_emitted <= (lizzieLet0_4QVal_Bool_5QVal_Bool_r ? 3'd0 :
                                                   lizzieLet0_4QVal_Bool_5QVal_Bool_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_1,MyBool) (lizzieLet0_4QVal_Bool_3QVal_Bool,Go) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse,Go),
                                                                                                     (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5QVal_Bool_1_d[0] && lizzieLet0_4QVal_Bool_3QVal_Bool_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5QVal_Bool_1_d[1:1])
        1'd0: lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd = 2'd2;
        default: lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd = 2'd0;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_d = lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd[0];
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_d = lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd[1];
  assign lizzieLet0_4QVal_Bool_3QVal_Bool_r = (| (lizzieLet0_4QVal_Bool_3QVal_Bool_onehotd & {lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_r,
                                                                                              lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1_r = lizzieLet0_4QVal_Bool_3QVal_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue,Go) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1,Go),
                                                                (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_done;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted[0]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted[1]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_done = (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted | ({lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_d[0],
                                                                                                               lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_d[0]} & {lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_r,
                                                                                                                                                                   lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_r = (& lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_emitted <= (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_r ? 2'd0 :
                                                           lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1,Go) > (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_d;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf :
                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf,Go)] > (lvl2rbn-2TupGo_1,TupGo) */
  assign \lvl2rbn-2TupGo_1_d  = TupGo_dc((& {lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_d[0]}), lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_d);
  assign {lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_1_argbuf_r} = {1 {(\lvl2rbn-2TupGo_1_r  && \lvl2rbn-2TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2,Go) > (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_d;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf :
                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_5QVal_Bool_2,MyBool) (lizzieLet0_4QVal_Bool_4QVal_Bool,Pointer_CTf) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse,Pointer_CTf),
                                                                                                                       (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue,Pointer_CTf)] */
  logic [1:0] lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5QVal_Bool_2_d[0] && lizzieLet0_4QVal_Bool_4QVal_Bool_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5QVal_Bool_2_d[1:1])
        1'd0: lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd = 2'd2;
        default: lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd = 2'd0;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_d = {lizzieLet0_4QVal_Bool_4QVal_Bool_d[16:1],
                                                        lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_d = {lizzieLet0_4QVal_Bool_4QVal_Bool_d[16:1],
                                                       lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd[1]};
  assign lizzieLet0_4QVal_Bool_4QVal_Bool_r = (| (lizzieLet0_4QVal_Bool_4QVal_Bool_onehotd & {lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_r,
                                                                                              lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2_r = lizzieLet0_4QVal_Bool_4QVal_Bool_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue,Pointer_CTf) > (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf :
                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_2MyTrue_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty MyBool) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3,MyBool) (va8e_destruct,MyBool) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse,MyBool),
                                                                                          (_7,MyBool)] */
  logic [1:0] va8e_destruct_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3_d[0] && va8e_destruct_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5QVal_Bool_3_d[1:1])
        1'd0: va8e_destruct_onehotd = 2'd1;
        1'd1: va8e_destruct_onehotd = 2'd2;
        default: va8e_destruct_onehotd = 2'd0;
      endcase
    else va8e_destruct_onehotd = 2'd0;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d = {va8e_destruct_d[1:1],
                                                        va8e_destruct_onehotd[0]};
  assign _7_d = {va8e_destruct_d[1:1], va8e_destruct_onehotd[1]};
  assign va8e_destruct_r = (| (va8e_destruct_onehotd & {_7_r,
                                                        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3_r = va8e_destruct_r;
  
  /* fork (Ty MyBool) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse,MyBool) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1,MyBool),
                                                                         (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2,MyBool)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_done;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d[1:1],
                                                          (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted[0]))};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d[1:1],
                                                          (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted[1]))};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_done = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted | ({lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_d[0],
                                                                                                                 lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_d[0]} & {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_r,
                                                                                                                                                                      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_r = (& lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_emitted <= (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_r ? 2'd0 :
                                                            lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1,MyBool) (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse,Go) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse,Go),
                                                                                                                       (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_d[0] && lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_d[1:1])
        1'd0: lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd = 2'd1;
        1'd1: lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd = 2'd2;
        default: lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd = 2'd0;
      endcase
    else lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd = 2'd0;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_d = lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd[0];
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_d = lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd[1];
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_r = (| (lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_onehotd & {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_r,
                                                                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1_r = lizzieLet0_4QVal_Bool_5QVal_Bool_1MyFalse_r;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse,Go) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1,Go),
                                                                          (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_done;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted[0]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted[1]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_done = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted | ({lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_d[0],
                                                                                                                                   lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_d[0]} & {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_r,
                                                                                                                                                                                                 lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_r = (& lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_emitted <= (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_r ? 2'd0 :
                                                                     lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1,Go)] > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat,QTree_Nat) */
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_d[0]}), lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_d);
  assign {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1_r} = {1 {(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat,QTree_Nat) > (lizzieLet8_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d <= {66'd0,
                                                                                  1'd0};
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_d;
  QTree_Nat_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet8_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf :
                                  lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                                    1'd0};
    else
      if ((lizzieLet8_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                                      1'd0};
      else if (((! lizzieLet8_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2,Go) > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_d;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf :
                                                                          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyFalse_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue,Go) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1,Go),
                                                                         (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2,Go)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted;
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_done;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted[0]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_d[0] && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted[1]));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_done = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted | ({lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_d[0],
                                                                                                                                 lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_d[0]} & {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_r,
                                                                                                                                                                                              lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_r = (& lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted <= 2'd0;
    else
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_emitted <= (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_r ? 2'd0 :
                                                                    lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_done);
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1,Go) > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_d;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf :
                                                                         lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf,Go)] > (lvl3rbo-3TupGo_1,TupGo) */
  assign \lvl3rbo-3TupGo_1_d  = TupGo_dc((& {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_d[0]}), lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_d);
  assign {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_1_argbuf_r} = {1 {(\lvl3rbo-3TupGo_1_r  && \lvl3rbo-3TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2,Go) > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf,Go) */
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_d;
  Go_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf :
                                                                         lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2,MyBool) (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse,Pointer_CTf) > [(lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse,Pointer_CTf),
                                                                                                                                         (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue,Pointer_CTf)] */
  logic [1:0] lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd;
  always_comb
    if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_d[0] && lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_d[0]))
      unique case (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_d[1:1])
        1'd0: lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd = 2'd1;
        1'd1: lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd = 2'd2;
        default: lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd = 2'd0;
      endcase
    else lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd = 2'd0;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_d[16:1],
                                                                 lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_d = {lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_d[16:1],
                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd[1]};
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_r = (| (lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_onehotd & {lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_r,
                                                                                                                lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_r}));
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2_r = lizzieLet0_4QVal_Bool_5QVal_Bool_2MyFalse_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse,Pointer_CTf) > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d <= {16'd0,
                                                                       1'd0};
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf :
                                                                          lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf <= {16'd0,
                                                                         1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf <= {16'd0,
                                                                           1'd0};
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyFalse_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue,Pointer_CTf) > (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d;
  logic lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_r;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_r = ((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d[0]) || lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d <= {16'd0,
                                                                      1'd0};
    else
      if (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_r)
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_d;
  Pointer_CTf_t lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_r = (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_d = (lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf :
                                                                         lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf <= {16'd0,
                                                                        1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_r && lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf <= {16'd0,
                                                                          1'd0};
      else if (((! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_buf <= lizzieLet0_4QVal_Bool_5QVal_Bool_3MyFalse_2MyTrue_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf) : (lizzieLet0_5,QTree_Bool) (sc_0_goMux_mux,Pointer_CTf) > [(lizzieLet0_5QNone_Bool,Pointer_CTf),
                                                                                   (lizzieLet0_5QVal_Bool,Pointer_CTf),
                                                                                   (lizzieLet0_5QNode_Bool,Pointer_CTf),
                                                                                   (lizzieLet0_5QError_Bool,Pointer_CTf)] */
  logic [3:0] sc_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet0_5_d[0] && sc_0_goMux_mux_d[0]))
      unique case (lizzieLet0_5_d[2:1])
        2'd0: sc_0_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_goMux_mux_onehotd = 4'd8;
        default: sc_0_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_goMux_mux_onehotd = 4'd0;
  assign lizzieLet0_5QNone_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[0]};
  assign lizzieLet0_5QVal_Bool_d = {sc_0_goMux_mux_d[16:1],
                                    sc_0_goMux_mux_onehotd[1]};
  assign lizzieLet0_5QNode_Bool_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[2]};
  assign lizzieLet0_5QError_Bool_d = {sc_0_goMux_mux_d[16:1],
                                      sc_0_goMux_mux_onehotd[3]};
  assign sc_0_goMux_mux_r = (| (sc_0_goMux_mux_onehotd & {lizzieLet0_5QError_Bool_r,
                                                          lizzieLet0_5QNode_Bool_r,
                                                          lizzieLet0_5QVal_Bool_r,
                                                          lizzieLet0_5QNone_Bool_r}));
  assign lizzieLet0_5_r = sc_0_goMux_mux_r;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_5QError_Bool,Pointer_CTf) > (lizzieLet0_5QError_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_5QError_Bool_bufchan_d;
  logic lizzieLet0_5QError_Bool_bufchan_r;
  assign lizzieLet0_5QError_Bool_r = ((! lizzieLet0_5QError_Bool_bufchan_d[0]) || lizzieLet0_5QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_5QError_Bool_r)
        lizzieLet0_5QError_Bool_bufchan_d <= lizzieLet0_5QError_Bool_d;
  Pointer_CTf_t lizzieLet0_5QError_Bool_bufchan_buf;
  assign lizzieLet0_5QError_Bool_bufchan_r = (! lizzieLet0_5QError_Bool_bufchan_buf[0]);
  assign lizzieLet0_5QError_Bool_1_argbuf_d = (lizzieLet0_5QError_Bool_bufchan_buf[0] ? lizzieLet0_5QError_Bool_bufchan_buf :
                                               lizzieLet0_5QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_5QError_Bool_1_argbuf_r && lizzieLet0_5QError_Bool_bufchan_buf[0]))
        lizzieLet0_5QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_5QError_Bool_1_argbuf_r) && (! lizzieLet0_5QError_Bool_bufchan_buf[0])))
        lizzieLet0_5QError_Bool_bufchan_buf <= lizzieLet0_5QError_Bool_bufchan_d;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet19_1QNode_Bool,QTree_Bool) > [(tla8u_destruct,Pointer_QTree_Bool),
                                                                     (tra8v_destruct,Pointer_QTree_Bool),
                                                                     (bla8w_destruct,Pointer_QTree_Bool),
                                                                     (bra8x_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet19_1QNode_Bool_emitted;
  logic [3:0] lizzieLet19_1QNode_Bool_done;
  assign tla8u_destruct_d = {lizzieLet19_1QNode_Bool_d[18:3],
                             (lizzieLet19_1QNode_Bool_d[0] && (! lizzieLet19_1QNode_Bool_emitted[0]))};
  assign tra8v_destruct_d = {lizzieLet19_1QNode_Bool_d[34:19],
                             (lizzieLet19_1QNode_Bool_d[0] && (! lizzieLet19_1QNode_Bool_emitted[1]))};
  assign bla8w_destruct_d = {lizzieLet19_1QNode_Bool_d[50:35],
                             (lizzieLet19_1QNode_Bool_d[0] && (! lizzieLet19_1QNode_Bool_emitted[2]))};
  assign bra8x_destruct_d = {lizzieLet19_1QNode_Bool_d[66:51],
                             (lizzieLet19_1QNode_Bool_d[0] && (! lizzieLet19_1QNode_Bool_emitted[3]))};
  assign lizzieLet19_1QNode_Bool_done = (lizzieLet19_1QNode_Bool_emitted | ({bra8x_destruct_d[0],
                                                                             bla8w_destruct_d[0],
                                                                             tra8v_destruct_d[0],
                                                                             tla8u_destruct_d[0]} & {bra8x_destruct_r,
                                                                                                     bla8w_destruct_r,
                                                                                                     tra8v_destruct_r,
                                                                                                     tla8u_destruct_r}));
  assign lizzieLet19_1QNode_Bool_r = (& lizzieLet19_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet19_1QNode_Bool_emitted <= (lizzieLet19_1QNode_Bool_r ? 4'd0 :
                                          lizzieLet19_1QNode_Bool_done);
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet19_2,QTree_Bool) (lizzieLet19_1,QTree_Bool) > [(_6,QTree_Bool),
                                                                                 (_5,QTree_Bool),
                                                                                 (lizzieLet19_1QNode_Bool,QTree_Bool),
                                                                                 (_4,QTree_Bool)] */
  logic [3:0] lizzieLet19_1_onehotd;
  always_comb
    if ((lizzieLet19_2_d[0] && lizzieLet19_1_d[0]))
      unique case (lizzieLet19_2_d[2:1])
        2'd0: lizzieLet19_1_onehotd = 4'd1;
        2'd1: lizzieLet19_1_onehotd = 4'd2;
        2'd2: lizzieLet19_1_onehotd = 4'd4;
        2'd3: lizzieLet19_1_onehotd = 4'd8;
        default: lizzieLet19_1_onehotd = 4'd0;
      endcase
    else lizzieLet19_1_onehotd = 4'd0;
  assign _6_d = {lizzieLet19_1_d[66:1], lizzieLet19_1_onehotd[0]};
  assign _5_d = {lizzieLet19_1_d[66:1], lizzieLet19_1_onehotd[1]};
  assign lizzieLet19_1QNode_Bool_d = {lizzieLet19_1_d[66:1],
                                      lizzieLet19_1_onehotd[2]};
  assign _4_d = {lizzieLet19_1_d[66:1], lizzieLet19_1_onehotd[3]};
  assign lizzieLet19_1_r = (| (lizzieLet19_1_onehotd & {_4_r,
                                                        lizzieLet19_1QNode_Bool_r,
                                                        _5_r,
                                                        _6_r}));
  assign lizzieLet19_2_r = lizzieLet19_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet19_3,QTree_Bool) (go_3_goMux_data,Go) > [(lizzieLet19_3QNone_Bool,Go),
                                                                   (lizzieLet19_3QVal_Bool,Go),
                                                                   (lizzieLet19_3QNode_Bool,Go),
                                                                   (lizzieLet19_3QError_Bool,Go)] */
  logic [3:0] go_3_goMux_data_onehotd;
  always_comb
    if ((lizzieLet19_3_d[0] && go_3_goMux_data_d[0]))
      unique case (lizzieLet19_3_d[2:1])
        2'd0: go_3_goMux_data_onehotd = 4'd1;
        2'd1: go_3_goMux_data_onehotd = 4'd2;
        2'd2: go_3_goMux_data_onehotd = 4'd4;
        2'd3: go_3_goMux_data_onehotd = 4'd8;
        default: go_3_goMux_data_onehotd = 4'd0;
      endcase
    else go_3_goMux_data_onehotd = 4'd0;
  assign lizzieLet19_3QNone_Bool_d = go_3_goMux_data_onehotd[0];
  assign lizzieLet19_3QVal_Bool_d = go_3_goMux_data_onehotd[1];
  assign lizzieLet19_3QNode_Bool_d = go_3_goMux_data_onehotd[2];
  assign lizzieLet19_3QError_Bool_d = go_3_goMux_data_onehotd[3];
  assign go_3_goMux_data_r = (| (go_3_goMux_data_onehotd & {lizzieLet19_3QError_Bool_r,
                                                            lizzieLet19_3QNode_Bool_r,
                                                            lizzieLet19_3QVal_Bool_r,
                                                            lizzieLet19_3QNone_Bool_r}));
  assign lizzieLet19_3_r = go_3_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet19_3QError_Bool,Go) > [(lizzieLet19_3QError_Bool_1,Go),
                                                (lizzieLet19_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet19_3QError_Bool_emitted;
  logic [1:0] lizzieLet19_3QError_Bool_done;
  assign lizzieLet19_3QError_Bool_1_d = (lizzieLet19_3QError_Bool_d[0] && (! lizzieLet19_3QError_Bool_emitted[0]));
  assign lizzieLet19_3QError_Bool_2_d = (lizzieLet19_3QError_Bool_d[0] && (! lizzieLet19_3QError_Bool_emitted[1]));
  assign lizzieLet19_3QError_Bool_done = (lizzieLet19_3QError_Bool_emitted | ({lizzieLet19_3QError_Bool_2_d[0],
                                                                               lizzieLet19_3QError_Bool_1_d[0]} & {lizzieLet19_3QError_Bool_2_r,
                                                                                                                   lizzieLet19_3QError_Bool_1_r}));
  assign lizzieLet19_3QError_Bool_r = (& lizzieLet19_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet19_3QError_Bool_emitted <= (lizzieLet19_3QError_Bool_r ? 2'd0 :
                                           lizzieLet19_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet19_3QError_Bool_1,Go)] > (lizzieLet19_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet19_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet19_3QError_Bool_1_d[0]}), lizzieLet19_3QError_Bool_1_d);
  assign {lizzieLet19_3QError_Bool_1_r} = {1 {(lizzieLet19_3QError_Bool_1QError_Nat_r && lizzieLet19_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet19_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet23_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet19_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet19_3QError_Bool_1QError_Nat_r = ((! lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet19_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet19_3QError_Bool_1QError_Nat_r)
        lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet19_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet19_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet23_1_argbuf_d = (lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet23_1_argbuf_r && lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet23_1_argbuf_r) && (! lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet19_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet19_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet19_3QError_Bool_2,Go) > (lizzieLet19_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet19_3QError_Bool_2_bufchan_d;
  logic lizzieLet19_3QError_Bool_2_bufchan_r;
  assign lizzieLet19_3QError_Bool_2_r = ((! lizzieLet19_3QError_Bool_2_bufchan_d[0]) || lizzieLet19_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_3QError_Bool_2_r)
        lizzieLet19_3QError_Bool_2_bufchan_d <= lizzieLet19_3QError_Bool_2_d;
  Go_t lizzieLet19_3QError_Bool_2_bufchan_buf;
  assign lizzieLet19_3QError_Bool_2_bufchan_r = (! lizzieLet19_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet19_3QError_Bool_2_argbuf_d = (lizzieLet19_3QError_Bool_2_bufchan_buf[0] ? lizzieLet19_3QError_Bool_2_bufchan_buf :
                                                lizzieLet19_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_3QError_Bool_2_argbuf_r && lizzieLet19_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet19_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_3QError_Bool_2_argbuf_r) && (! lizzieLet19_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet19_3QError_Bool_2_bufchan_buf <= lizzieLet19_3QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet19_3QNode_Bool,Go) > (lizzieLet19_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet19_3QNode_Bool_bufchan_d;
  logic lizzieLet19_3QNode_Bool_bufchan_r;
  assign lizzieLet19_3QNode_Bool_r = ((! lizzieLet19_3QNode_Bool_bufchan_d[0]) || lizzieLet19_3QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_3QNode_Bool_r)
        lizzieLet19_3QNode_Bool_bufchan_d <= lizzieLet19_3QNode_Bool_d;
  Go_t lizzieLet19_3QNode_Bool_bufchan_buf;
  assign lizzieLet19_3QNode_Bool_bufchan_r = (! lizzieLet19_3QNode_Bool_bufchan_buf[0]);
  assign lizzieLet19_3QNode_Bool_1_argbuf_d = (lizzieLet19_3QNode_Bool_bufchan_buf[0] ? lizzieLet19_3QNode_Bool_bufchan_buf :
                                               lizzieLet19_3QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_3QNode_Bool_1_argbuf_r && lizzieLet19_3QNode_Bool_bufchan_buf[0]))
        lizzieLet19_3QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_3QNode_Bool_1_argbuf_r) && (! lizzieLet19_3QNode_Bool_bufchan_buf[0])))
        lizzieLet19_3QNode_Bool_bufchan_buf <= lizzieLet19_3QNode_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet19_3QNone_Bool,Go) > [(lizzieLet19_3QNone_Bool_1,Go),
                                               (lizzieLet19_3QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet19_3QNone_Bool_emitted;
  logic [1:0] lizzieLet19_3QNone_Bool_done;
  assign lizzieLet19_3QNone_Bool_1_d = (lizzieLet19_3QNone_Bool_d[0] && (! lizzieLet19_3QNone_Bool_emitted[0]));
  assign lizzieLet19_3QNone_Bool_2_d = (lizzieLet19_3QNone_Bool_d[0] && (! lizzieLet19_3QNone_Bool_emitted[1]));
  assign lizzieLet19_3QNone_Bool_done = (lizzieLet19_3QNone_Bool_emitted | ({lizzieLet19_3QNone_Bool_2_d[0],
                                                                             lizzieLet19_3QNone_Bool_1_d[0]} & {lizzieLet19_3QNone_Bool_2_r,
                                                                                                                lizzieLet19_3QNone_Bool_1_r}));
  assign lizzieLet19_3QNone_Bool_r = (& lizzieLet19_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet19_3QNone_Bool_emitted <= (lizzieLet19_3QNone_Bool_r ? 2'd0 :
                                          lizzieLet19_3QNone_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet19_3QNone_Bool_1,Go)] > (lizzieLet19_3QNone_Bool_1QNone_Nat,QTree_Nat) */
  assign lizzieLet19_3QNone_Bool_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet19_3QNone_Bool_1_d[0]}), lizzieLet19_3QNone_Bool_1_d);
  assign {lizzieLet19_3QNone_Bool_1_r} = {1 {(lizzieLet19_3QNone_Bool_1QNone_Nat_r && lizzieLet19_3QNone_Bool_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet19_3QNone_Bool_1QNone_Nat,QTree_Nat) > (lizzieLet20_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d;
  logic lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_r;
  assign lizzieLet19_3QNone_Bool_1QNone_Nat_r = ((! lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d[0]) || lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet19_3QNone_Bool_1QNone_Nat_r)
        lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d <= lizzieLet19_3QNone_Bool_1QNone_Nat_d;
  QTree_Nat_t lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf;
  assign lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_r = (! lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet20_1_argbuf_d = (lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf[0] ? lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf :
                                   lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet20_1_argbuf_r && lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf[0]))
        lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet20_1_argbuf_r) && (! lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf[0])))
        lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_buf <= lizzieLet19_3QNone_Bool_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet19_3QNone_Bool_2,Go) > (lizzieLet19_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet19_3QNone_Bool_2_bufchan_d;
  logic lizzieLet19_3QNone_Bool_2_bufchan_r;
  assign lizzieLet19_3QNone_Bool_2_r = ((! lizzieLet19_3QNone_Bool_2_bufchan_d[0]) || lizzieLet19_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_3QNone_Bool_2_r)
        lizzieLet19_3QNone_Bool_2_bufchan_d <= lizzieLet19_3QNone_Bool_2_d;
  Go_t lizzieLet19_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet19_3QNone_Bool_2_bufchan_r = (! lizzieLet19_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet19_3QNone_Bool_2_argbuf_d = (lizzieLet19_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet19_3QNone_Bool_2_bufchan_buf :
                                               lizzieLet19_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_3QNone_Bool_2_argbuf_r && lizzieLet19_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet19_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_3QNone_Bool_2_argbuf_r) && (! lizzieLet19_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet19_3QNone_Bool_2_bufchan_buf <= lizzieLet19_3QNone_Bool_2_bufchan_d;
  
  /* mergectrl (Ty C4,Ty Go) : [(lizzieLet19_3QNone_Bool_2_argbuf,Go),
                           (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf,Go),
                           (lizzieLet19_3QVal_Bool_2_argbuf,Go),
                           (lizzieLet19_3QError_Bool_2_argbuf,Go)] > (go_13_goMux_choice,C4) (go_13_goMux_data,Go) */
  logic [3:0] lizzieLet19_3QNone_Bool_2_argbuf_select_d;
  assign lizzieLet19_3QNone_Bool_2_argbuf_select_d = ((| lizzieLet19_3QNone_Bool_2_argbuf_select_q) ? lizzieLet19_3QNone_Bool_2_argbuf_select_q :
                                                      (lizzieLet19_3QNone_Bool_2_argbuf_d[0] ? 4'd1 :
                                                       (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_d [0] ? 4'd2 :
                                                        (lizzieLet19_3QVal_Bool_2_argbuf_d[0] ? 4'd4 :
                                                         (lizzieLet19_3QError_Bool_2_argbuf_d[0] ? 4'd8 :
                                                          4'd0)))));
  logic [3:0] lizzieLet19_3QNone_Bool_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QNone_Bool_2_argbuf_select_q <= 4'd0;
    else
      lizzieLet19_3QNone_Bool_2_argbuf_select_q <= (lizzieLet19_3QNone_Bool_2_argbuf_done ? 4'd0 :
                                                    lizzieLet19_3QNone_Bool_2_argbuf_select_d);
  logic [1:0] lizzieLet19_3QNone_Bool_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_3QNone_Bool_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet19_3QNone_Bool_2_argbuf_emit_q <= (lizzieLet19_3QNone_Bool_2_argbuf_done ? 2'd0 :
                                                  lizzieLet19_3QNone_Bool_2_argbuf_emit_d);
  logic [1:0] lizzieLet19_3QNone_Bool_2_argbuf_emit_d;
  assign lizzieLet19_3QNone_Bool_2_argbuf_emit_d = (lizzieLet19_3QNone_Bool_2_argbuf_emit_q | ({go_13_goMux_choice_d[0],
                                                                                                go_13_goMux_data_d[0]} & {go_13_goMux_choice_r,
                                                                                                                          go_13_goMux_data_r}));
  logic lizzieLet19_3QNone_Bool_2_argbuf_done;
  assign lizzieLet19_3QNone_Bool_2_argbuf_done = (& lizzieLet19_3QNone_Bool_2_argbuf_emit_d);
  assign {lizzieLet19_3QError_Bool_2_argbuf_r,
          lizzieLet19_3QVal_Bool_2_argbuf_r,
          \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_r ,
          lizzieLet19_3QNone_Bool_2_argbuf_r} = (lizzieLet19_3QNone_Bool_2_argbuf_done ? lizzieLet19_3QNone_Bool_2_argbuf_select_d :
                                                 4'd0);
  assign go_13_goMux_data_d = ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet19_3QNone_Bool_2_argbuf_d :
                               ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[0])) ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_d  :
                                ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet19_3QVal_Bool_2_argbuf_d :
                                 ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet19_3QError_Bool_2_argbuf_d :
                                  1'd0))));
  assign go_13_goMux_choice_d = ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[1])) ? C1_4_dc(1'd1) :
                                 ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[1])) ? C2_4_dc(1'd1) :
                                  ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[1])) ? C3_4_dc(1'd1) :
                                   ((lizzieLet19_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet19_3QNone_Bool_2_argbuf_emit_q[1])) ? C4_4_dc(1'd1) :
                                    {2'd0, 1'd0}))));
  
  /* fork (Ty Go) : (lizzieLet19_3QVal_Bool,Go) > [(lizzieLet19_3QVal_Bool_1,Go),
                                              (lizzieLet19_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet19_3QVal_Bool_emitted;
  logic [1:0] lizzieLet19_3QVal_Bool_done;
  assign lizzieLet19_3QVal_Bool_1_d = (lizzieLet19_3QVal_Bool_d[0] && (! lizzieLet19_3QVal_Bool_emitted[0]));
  assign lizzieLet19_3QVal_Bool_2_d = (lizzieLet19_3QVal_Bool_d[0] && (! lizzieLet19_3QVal_Bool_emitted[1]));
  assign lizzieLet19_3QVal_Bool_done = (lizzieLet19_3QVal_Bool_emitted | ({lizzieLet19_3QVal_Bool_2_d[0],
                                                                           lizzieLet19_3QVal_Bool_1_d[0]} & {lizzieLet19_3QVal_Bool_2_r,
                                                                                                             lizzieLet19_3QVal_Bool_1_r}));
  assign lizzieLet19_3QVal_Bool_r = (& lizzieLet19_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet19_3QVal_Bool_emitted <= (lizzieLet19_3QVal_Bool_r ? 2'd0 :
                                         lizzieLet19_3QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet19_3QVal_Bool_1,Go) > (lizzieLet19_3QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet19_3QVal_Bool_1_bufchan_d;
  logic lizzieLet19_3QVal_Bool_1_bufchan_r;
  assign lizzieLet19_3QVal_Bool_1_r = ((! lizzieLet19_3QVal_Bool_1_bufchan_d[0]) || lizzieLet19_3QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_3QVal_Bool_1_r)
        lizzieLet19_3QVal_Bool_1_bufchan_d <= lizzieLet19_3QVal_Bool_1_d;
  Go_t lizzieLet19_3QVal_Bool_1_bufchan_buf;
  assign lizzieLet19_3QVal_Bool_1_bufchan_r = (! lizzieLet19_3QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet19_3QVal_Bool_1_argbuf_d = (lizzieLet19_3QVal_Bool_1_bufchan_buf[0] ? lizzieLet19_3QVal_Bool_1_bufchan_buf :
                                              lizzieLet19_3QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_3QVal_Bool_1_argbuf_r && lizzieLet19_3QVal_Bool_1_bufchan_buf[0]))
        lizzieLet19_3QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_3QVal_Bool_1_argbuf_r) && (! lizzieLet19_3QVal_Bool_1_bufchan_buf[0])))
        lizzieLet19_3QVal_Bool_1_bufchan_buf <= lizzieLet19_3QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet19_3QVal_Bool_1_argbuf,Go)] > (lvl1rbm-1TupGo_1,TupGo) */
  assign \lvl1rbm-1TupGo_1_d  = TupGo_dc((& {lizzieLet19_3QVal_Bool_1_argbuf_d[0]}), lizzieLet19_3QVal_Bool_1_argbuf_d);
  assign {lizzieLet19_3QVal_Bool_1_argbuf_r} = {1 {(\lvl1rbm-1TupGo_1_r  && \lvl1rbm-1TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet19_3QVal_Bool_2,Go) > (lizzieLet19_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet19_3QVal_Bool_2_bufchan_d;
  logic lizzieLet19_3QVal_Bool_2_bufchan_r;
  assign lizzieLet19_3QVal_Bool_2_r = ((! lizzieLet19_3QVal_Bool_2_bufchan_d[0]) || lizzieLet19_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet19_3QVal_Bool_2_r)
        lizzieLet19_3QVal_Bool_2_bufchan_d <= lizzieLet19_3QVal_Bool_2_d;
  Go_t lizzieLet19_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet19_3QVal_Bool_2_bufchan_r = (! lizzieLet19_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet19_3QVal_Bool_2_argbuf_d = (lizzieLet19_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet19_3QVal_Bool_2_bufchan_buf :
                                              lizzieLet19_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet19_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet19_3QVal_Bool_2_argbuf_r && lizzieLet19_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet19_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet19_3QVal_Bool_2_argbuf_r) && (! lizzieLet19_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet19_3QVal_Bool_2_bufchan_buf <= lizzieLet19_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf''''''''_f''''''''_Bool) : (lizzieLet19_4,QTree_Bool) (sc_0_1_goMux_mux,Pointer_CTf''''''''_f''''''''_Bool) > [(lizzieLet19_4QNone_Bool,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                    (lizzieLet19_4QVal_Bool,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                    (lizzieLet19_4QNode_Bool,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                                    (lizzieLet19_4QError_Bool,Pointer_CTf''''''''_f''''''''_Bool)] */
  logic [3:0] sc_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet19_4_d[0] && sc_0_1_goMux_mux_d[0]))
      unique case (lizzieLet19_4_d[2:1])
        2'd0: sc_0_1_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_1_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_1_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_1_goMux_mux_onehotd = 4'd8;
        default: sc_0_1_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_1_goMux_mux_onehotd = 4'd0;
  assign lizzieLet19_4QNone_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                      sc_0_1_goMux_mux_onehotd[0]};
  assign lizzieLet19_4QVal_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                     sc_0_1_goMux_mux_onehotd[1]};
  assign lizzieLet19_4QNode_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                      sc_0_1_goMux_mux_onehotd[2]};
  assign lizzieLet19_4QError_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                       sc_0_1_goMux_mux_onehotd[3]};
  assign sc_0_1_goMux_mux_r = (| (sc_0_1_goMux_mux_onehotd & {lizzieLet19_4QError_Bool_r,
                                                              lizzieLet19_4QNode_Bool_r,
                                                              lizzieLet19_4QVal_Bool_r,
                                                              lizzieLet19_4QNone_Bool_r}));
  assign lizzieLet19_4_r = sc_0_1_goMux_mux_r;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (lizzieLet19_4QError_Bool,Pointer_CTf''''''''_f''''''''_Bool) > (lizzieLet19_4QError_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QError_Bool_bufchan_d;
  logic lizzieLet19_4QError_Bool_bufchan_r;
  assign lizzieLet19_4QError_Bool_r = ((! lizzieLet19_4QError_Bool_bufchan_d[0]) || lizzieLet19_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet19_4QError_Bool_r)
        lizzieLet19_4QError_Bool_bufchan_d <= lizzieLet19_4QError_Bool_d;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QError_Bool_bufchan_buf;
  assign lizzieLet19_4QError_Bool_bufchan_r = (! lizzieLet19_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet19_4QError_Bool_1_argbuf_d = (lizzieLet19_4QError_Bool_bufchan_buf[0] ? lizzieLet19_4QError_Bool_bufchan_buf :
                                                lizzieLet19_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet19_4QError_Bool_1_argbuf_r && lizzieLet19_4QError_Bool_bufchan_buf[0]))
        lizzieLet19_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet19_4QError_Bool_1_argbuf_r) && (! lizzieLet19_4QError_Bool_bufchan_buf[0])))
        lizzieLet19_4QError_Bool_bufchan_buf <= lizzieLet19_4QError_Bool_bufchan_d;
  
  /* dcon (Ty CTf''''''''_f''''''''_Bool,
      Dcon Lcall_f''''''''_f''''''''_Bool3) : [(lizzieLet19_4QNode_Bool,Pointer_CTf''''''''_f''''''''_Bool),
                                               (tla8u_destruct,Pointer_QTree_Bool),
                                               (tra8v_destruct,Pointer_QTree_Bool),
                                               (bla8w_destruct,Pointer_QTree_Bool)] > (lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3,CTf''''''''_f''''''''_Bool) */
  assign \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_d  = \Lcall_f''''''''_f''''''''_Bool3_dc ((& {lizzieLet19_4QNode_Bool_d[0],
                                                                                                                                      tla8u_destruct_d[0],
                                                                                                                                      tra8v_destruct_d[0],
                                                                                                                                      bla8w_destruct_d[0]}), lizzieLet19_4QNode_Bool_d, tla8u_destruct_d, tra8v_destruct_d, bla8w_destruct_d);
  assign {lizzieLet19_4QNode_Bool_r,
          tla8u_destruct_r,
          tra8v_destruct_r,
          bla8w_destruct_r} = {4 {(\lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_r  && \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_d [0])}};
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3,CTf''''''''_f''''''''_Bool) > (lizzieLet22_1_argbuf,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d ;
  logic \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_r ;
  assign \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_r  = ((! \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d [0]) || \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d  <= {67'd0,
                                                                                                    1'd0};
    else
      if (\lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_r )
        \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d  <= \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_d ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf ;
  assign \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_r  = (! \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0]);
  assign lizzieLet22_1_argbuf_d = (\lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0] ? \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  :
                                   \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= {67'd0,
                                                                                                      1'd0};
    else
      if ((lizzieLet22_1_argbuf_r && \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0]))
        \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= {67'd0,
                                                                                                        1'd0};
      else if (((! lizzieLet22_1_argbuf_r) && (! \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0])))
        \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= \lizzieLet19_4QNode_Bool_1tla8u_1tra8v_1bla8w_1Lcall_f''''''''_f''''''''_Bool3_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (lizzieLet19_4QNone_Bool,Pointer_CTf''''''''_f''''''''_Bool) > (lizzieLet19_4QNone_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QNone_Bool_bufchan_d;
  logic lizzieLet19_4QNone_Bool_bufchan_r;
  assign lizzieLet19_4QNone_Bool_r = ((! lizzieLet19_4QNone_Bool_bufchan_d[0]) || lizzieLet19_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet19_4QNone_Bool_r)
        lizzieLet19_4QNone_Bool_bufchan_d <= lizzieLet19_4QNone_Bool_d;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QNone_Bool_bufchan_buf;
  assign lizzieLet19_4QNone_Bool_bufchan_r = (! lizzieLet19_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet19_4QNone_Bool_1_argbuf_d = (lizzieLet19_4QNone_Bool_bufchan_buf[0] ? lizzieLet19_4QNone_Bool_bufchan_buf :
                                               lizzieLet19_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet19_4QNone_Bool_1_argbuf_r && lizzieLet19_4QNone_Bool_bufchan_buf[0]))
        lizzieLet19_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet19_4QNone_Bool_1_argbuf_r) && (! lizzieLet19_4QNone_Bool_bufchan_buf[0])))
        lizzieLet19_4QNone_Bool_bufchan_buf <= lizzieLet19_4QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (lizzieLet19_4QVal_Bool,Pointer_CTf''''''''_f''''''''_Bool) > (lizzieLet19_4QVal_Bool_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QVal_Bool_bufchan_d;
  logic lizzieLet19_4QVal_Bool_bufchan_r;
  assign lizzieLet19_4QVal_Bool_r = ((! lizzieLet19_4QVal_Bool_bufchan_d[0]) || lizzieLet19_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet19_4QVal_Bool_r)
        lizzieLet19_4QVal_Bool_bufchan_d <= lizzieLet19_4QVal_Bool_d;
  \Pointer_CTf''''''''_f''''''''_Bool_t  lizzieLet19_4QVal_Bool_bufchan_buf;
  assign lizzieLet19_4QVal_Bool_bufchan_r = (! lizzieLet19_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet19_4QVal_Bool_1_argbuf_d = (lizzieLet19_4QVal_Bool_bufchan_buf[0] ? lizzieLet19_4QVal_Bool_bufchan_buf :
                                              lizzieLet19_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet19_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet19_4QVal_Bool_1_argbuf_r && lizzieLet19_4QVal_Bool_bufchan_buf[0]))
        lizzieLet19_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet19_4QVal_Bool_1_argbuf_r) && (! lizzieLet19_4QVal_Bool_bufchan_buf[0])))
        lizzieLet19_4QVal_Bool_bufchan_buf <= lizzieLet19_4QVal_Bool_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet26_1QVal_Nat,QTree_Nat) > (lizzieLet27_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet26_1QVal_Nat_bufchan_d;
  logic lizzieLet26_1QVal_Nat_bufchan_r;
  assign lizzieLet26_1QVal_Nat_r = ((! lizzieLet26_1QVal_Nat_bufchan_d[0]) || lizzieLet26_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet26_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet26_1QVal_Nat_r)
        lizzieLet26_1QVal_Nat_bufchan_d <= lizzieLet26_1QVal_Nat_d;
  QTree_Nat_t lizzieLet26_1QVal_Nat_bufchan_buf;
  assign lizzieLet26_1QVal_Nat_bufchan_r = (! lizzieLet26_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet27_1_argbuf_d = (lizzieLet26_1QVal_Nat_bufchan_buf[0] ? lizzieLet26_1QVal_Nat_bufchan_buf :
                                   lizzieLet26_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet26_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet27_1_argbuf_r && lizzieLet26_1QVal_Nat_bufchan_buf[0]))
        lizzieLet26_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet27_1_argbuf_r) && (! lizzieLet26_1QVal_Nat_bufchan_buf[0])))
        lizzieLet26_1QVal_Nat_bufchan_buf <= lizzieLet26_1QVal_Nat_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet28_1QVal_Nat,QTree_Nat) > (lizzieLet29_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet28_1QVal_Nat_bufchan_d;
  logic lizzieLet28_1QVal_Nat_bufchan_r;
  assign lizzieLet28_1QVal_Nat_r = ((! lizzieLet28_1QVal_Nat_bufchan_d[0]) || lizzieLet28_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet28_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet28_1QVal_Nat_r)
        lizzieLet28_1QVal_Nat_bufchan_d <= lizzieLet28_1QVal_Nat_d;
  QTree_Nat_t lizzieLet28_1QVal_Nat_bufchan_buf;
  assign lizzieLet28_1QVal_Nat_bufchan_r = (! lizzieLet28_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet29_1_argbuf_d = (lizzieLet28_1QVal_Nat_bufchan_buf[0] ? lizzieLet28_1QVal_Nat_bufchan_buf :
                                   lizzieLet28_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet28_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet29_1_argbuf_r && lizzieLet28_1QVal_Nat_bufchan_buf[0]))
        lizzieLet28_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet29_1_argbuf_r) && (! lizzieLet28_1QVal_Nat_bufchan_buf[0])))
        lizzieLet28_1QVal_Nat_bufchan_buf <= lizzieLet28_1QVal_Nat_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet30_1QVal_Nat,QTree_Nat) > (lizzieLet31_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet30_1QVal_Nat_bufchan_d;
  logic lizzieLet30_1QVal_Nat_bufchan_r;
  assign lizzieLet30_1QVal_Nat_r = ((! lizzieLet30_1QVal_Nat_bufchan_d[0]) || lizzieLet30_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet30_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet30_1QVal_Nat_r)
        lizzieLet30_1QVal_Nat_bufchan_d <= lizzieLet30_1QVal_Nat_d;
  QTree_Nat_t lizzieLet30_1QVal_Nat_bufchan_buf;
  assign lizzieLet30_1QVal_Nat_bufchan_r = (! lizzieLet30_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet31_1_argbuf_d = (lizzieLet30_1QVal_Nat_bufchan_buf[0] ? lizzieLet30_1QVal_Nat_bufchan_buf :
                                   lizzieLet30_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet30_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet31_1_argbuf_r && lizzieLet30_1QVal_Nat_bufchan_buf[0]))
        lizzieLet30_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet31_1_argbuf_r) && (! lizzieLet30_1QVal_Nat_bufchan_buf[0])))
        lizzieLet30_1QVal_Nat_bufchan_buf <= lizzieLet30_1QVal_Nat_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet32_1QVal_Nat,QTree_Nat) > (lizzieLet33_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet32_1QVal_Nat_bufchan_d;
  logic lizzieLet32_1QVal_Nat_bufchan_r;
  assign lizzieLet32_1QVal_Nat_r = ((! lizzieLet32_1QVal_Nat_bufchan_d[0]) || lizzieLet32_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet32_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet32_1QVal_Nat_r)
        lizzieLet32_1QVal_Nat_bufchan_d <= lizzieLet32_1QVal_Nat_d;
  QTree_Nat_t lizzieLet32_1QVal_Nat_bufchan_buf;
  assign lizzieLet32_1QVal_Nat_bufchan_r = (! lizzieLet32_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet33_1_argbuf_d = (lizzieLet32_1QVal_Nat_bufchan_buf[0] ? lizzieLet32_1QVal_Nat_bufchan_buf :
                                   lizzieLet32_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet32_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet33_1_argbuf_r && lizzieLet32_1QVal_Nat_bufchan_buf[0]))
        lizzieLet32_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet33_1_argbuf_r) && (! lizzieLet32_1QVal_Nat_bufchan_buf[0])))
        lizzieLet32_1QVal_Nat_bufchan_buf <= lizzieLet32_1QVal_Nat_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet34_1QVal_Nat,QTree_Nat) > (lizzieLet35_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet34_1QVal_Nat_bufchan_d;
  logic lizzieLet34_1QVal_Nat_bufchan_r;
  assign lizzieLet34_1QVal_Nat_r = ((! lizzieLet34_1QVal_Nat_bufchan_d[0]) || lizzieLet34_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet34_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet34_1QVal_Nat_r)
        lizzieLet34_1QVal_Nat_bufchan_d <= lizzieLet34_1QVal_Nat_d;
  QTree_Nat_t lizzieLet34_1QVal_Nat_bufchan_buf;
  assign lizzieLet34_1QVal_Nat_bufchan_r = (! lizzieLet34_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet35_1_argbuf_d = (lizzieLet34_1QVal_Nat_bufchan_buf[0] ? lizzieLet34_1QVal_Nat_bufchan_buf :
                                   lizzieLet34_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet34_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet35_1_argbuf_r && lizzieLet34_1QVal_Nat_bufchan_buf[0]))
        lizzieLet34_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet35_1_argbuf_r) && (! lizzieLet34_1QVal_Nat_bufchan_buf[0])))
        lizzieLet34_1QVal_Nat_bufchan_buf <= lizzieLet34_1QVal_Nat_bufchan_d;
  
  /* destruct (Ty CTf,
          Dcon Lcall_f0) : (lizzieLet38_1Lcall_f0,CTf) > [(es_9_destruct,Pointer_QTree_Nat),
                                                          (es_10_1_destruct,Pointer_QTree_Nat),
                                                          (es_11_2_destruct,Pointer_QTree_Nat),
                                                          (sc_0_5_destruct,Pointer_CTf)] */
  logic [3:0] lizzieLet38_1Lcall_f0_emitted;
  logic [3:0] lizzieLet38_1Lcall_f0_done;
  assign es_9_destruct_d = {lizzieLet38_1Lcall_f0_d[19:4],
                            (lizzieLet38_1Lcall_f0_d[0] && (! lizzieLet38_1Lcall_f0_emitted[0]))};
  assign es_10_1_destruct_d = {lizzieLet38_1Lcall_f0_d[35:20],
                               (lizzieLet38_1Lcall_f0_d[0] && (! lizzieLet38_1Lcall_f0_emitted[1]))};
  assign es_11_2_destruct_d = {lizzieLet38_1Lcall_f0_d[51:36],
                               (lizzieLet38_1Lcall_f0_d[0] && (! lizzieLet38_1Lcall_f0_emitted[2]))};
  assign sc_0_5_destruct_d = {lizzieLet38_1Lcall_f0_d[67:52],
                              (lizzieLet38_1Lcall_f0_d[0] && (! lizzieLet38_1Lcall_f0_emitted[3]))};
  assign lizzieLet38_1Lcall_f0_done = (lizzieLet38_1Lcall_f0_emitted | ({sc_0_5_destruct_d[0],
                                                                         es_11_2_destruct_d[0],
                                                                         es_10_1_destruct_d[0],
                                                                         es_9_destruct_d[0]} & {sc_0_5_destruct_r,
                                                                                                es_11_2_destruct_r,
                                                                                                es_10_1_destruct_r,
                                                                                                es_9_destruct_r}));
  assign lizzieLet38_1Lcall_f0_r = (& lizzieLet38_1Lcall_f0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_1Lcall_f0_emitted <= 4'd0;
    else
      lizzieLet38_1Lcall_f0_emitted <= (lizzieLet38_1Lcall_f0_r ? 4'd0 :
                                        lizzieLet38_1Lcall_f0_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f1) : (lizzieLet38_1Lcall_f1,CTf) > [(es_10_destruct,Pointer_QTree_Nat),
                                                          (es_11_1_destruct,Pointer_QTree_Nat),
                                                          (sc_0_4_destruct,Pointer_CTf),
                                                          (q1a8j_3_destruct,Pointer_QTree_Bool),
                                                          (t1a8o_3_destruct,Pointer_QTree_Bool)] */
  logic [4:0] lizzieLet38_1Lcall_f1_emitted;
  logic [4:0] lizzieLet38_1Lcall_f1_done;
  assign es_10_destruct_d = {lizzieLet38_1Lcall_f1_d[19:4],
                             (lizzieLet38_1Lcall_f1_d[0] && (! lizzieLet38_1Lcall_f1_emitted[0]))};
  assign es_11_1_destruct_d = {lizzieLet38_1Lcall_f1_d[35:20],
                               (lizzieLet38_1Lcall_f1_d[0] && (! lizzieLet38_1Lcall_f1_emitted[1]))};
  assign sc_0_4_destruct_d = {lizzieLet38_1Lcall_f1_d[51:36],
                              (lizzieLet38_1Lcall_f1_d[0] && (! lizzieLet38_1Lcall_f1_emitted[2]))};
  assign q1a8j_3_destruct_d = {lizzieLet38_1Lcall_f1_d[67:52],
                               (lizzieLet38_1Lcall_f1_d[0] && (! lizzieLet38_1Lcall_f1_emitted[3]))};
  assign t1a8o_3_destruct_d = {lizzieLet38_1Lcall_f1_d[83:68],
                               (lizzieLet38_1Lcall_f1_d[0] && (! lizzieLet38_1Lcall_f1_emitted[4]))};
  assign lizzieLet38_1Lcall_f1_done = (lizzieLet38_1Lcall_f1_emitted | ({t1a8o_3_destruct_d[0],
                                                                         q1a8j_3_destruct_d[0],
                                                                         sc_0_4_destruct_d[0],
                                                                         es_11_1_destruct_d[0],
                                                                         es_10_destruct_d[0]} & {t1a8o_3_destruct_r,
                                                                                                 q1a8j_3_destruct_r,
                                                                                                 sc_0_4_destruct_r,
                                                                                                 es_11_1_destruct_r,
                                                                                                 es_10_destruct_r}));
  assign lizzieLet38_1Lcall_f1_r = (& lizzieLet38_1Lcall_f1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_1Lcall_f1_emitted <= 5'd0;
    else
      lizzieLet38_1Lcall_f1_emitted <= (lizzieLet38_1Lcall_f1_r ? 5'd0 :
                                        lizzieLet38_1Lcall_f1_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f2) : (lizzieLet38_1Lcall_f2,CTf) > [(es_11_destruct,Pointer_QTree_Nat),
                                                          (sc_0_3_destruct,Pointer_CTf),
                                                          (q1a8j_2_destruct,Pointer_QTree_Bool),
                                                          (t1a8o_2_destruct,Pointer_QTree_Bool),
                                                          (q2a8k_2_destruct,Pointer_QTree_Bool),
                                                          (t2a8p_2_destruct,Pointer_QTree_Bool)] */
  logic [5:0] lizzieLet38_1Lcall_f2_emitted;
  logic [5:0] lizzieLet38_1Lcall_f2_done;
  assign es_11_destruct_d = {lizzieLet38_1Lcall_f2_d[19:4],
                             (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[0]))};
  assign sc_0_3_destruct_d = {lizzieLet38_1Lcall_f2_d[35:20],
                              (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[1]))};
  assign q1a8j_2_destruct_d = {lizzieLet38_1Lcall_f2_d[51:36],
                               (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[2]))};
  assign t1a8o_2_destruct_d = {lizzieLet38_1Lcall_f2_d[67:52],
                               (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[3]))};
  assign q2a8k_2_destruct_d = {lizzieLet38_1Lcall_f2_d[83:68],
                               (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[4]))};
  assign t2a8p_2_destruct_d = {lizzieLet38_1Lcall_f2_d[99:84],
                               (lizzieLet38_1Lcall_f2_d[0] && (! lizzieLet38_1Lcall_f2_emitted[5]))};
  assign lizzieLet38_1Lcall_f2_done = (lizzieLet38_1Lcall_f2_emitted | ({t2a8p_2_destruct_d[0],
                                                                         q2a8k_2_destruct_d[0],
                                                                         t1a8o_2_destruct_d[0],
                                                                         q1a8j_2_destruct_d[0],
                                                                         sc_0_3_destruct_d[0],
                                                                         es_11_destruct_d[0]} & {t2a8p_2_destruct_r,
                                                                                                 q2a8k_2_destruct_r,
                                                                                                 t1a8o_2_destruct_r,
                                                                                                 q1a8j_2_destruct_r,
                                                                                                 sc_0_3_destruct_r,
                                                                                                 es_11_destruct_r}));
  assign lizzieLet38_1Lcall_f2_r = (& lizzieLet38_1Lcall_f2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_1Lcall_f2_emitted <= 6'd0;
    else
      lizzieLet38_1Lcall_f2_emitted <= (lizzieLet38_1Lcall_f2_r ? 6'd0 :
                                        lizzieLet38_1Lcall_f2_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f3) : (lizzieLet38_1Lcall_f3,CTf) > [(sc_0_2_destruct,Pointer_CTf),
                                                          (q1a8j_1_destruct,Pointer_QTree_Bool),
                                                          (t1a8o_1_destruct,Pointer_QTree_Bool),
                                                          (q2a8k_1_destruct,Pointer_QTree_Bool),
                                                          (t2a8p_1_destruct,Pointer_QTree_Bool),
                                                          (q3a8l_1_destruct,Pointer_QTree_Bool),
                                                          (t3a8q_1_destruct,Pointer_QTree_Bool)] */
  logic [6:0] lizzieLet38_1Lcall_f3_emitted;
  logic [6:0] lizzieLet38_1Lcall_f3_done;
  assign sc_0_2_destruct_d = {lizzieLet38_1Lcall_f3_d[19:4],
                              (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[0]))};
  assign q1a8j_1_destruct_d = {lizzieLet38_1Lcall_f3_d[35:20],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[1]))};
  assign t1a8o_1_destruct_d = {lizzieLet38_1Lcall_f3_d[51:36],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[2]))};
  assign q2a8k_1_destruct_d = {lizzieLet38_1Lcall_f3_d[67:52],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[3]))};
  assign t2a8p_1_destruct_d = {lizzieLet38_1Lcall_f3_d[83:68],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[4]))};
  assign q3a8l_1_destruct_d = {lizzieLet38_1Lcall_f3_d[99:84],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[5]))};
  assign t3a8q_1_destruct_d = {lizzieLet38_1Lcall_f3_d[115:100],
                               (lizzieLet38_1Lcall_f3_d[0] && (! lizzieLet38_1Lcall_f3_emitted[6]))};
  assign lizzieLet38_1Lcall_f3_done = (lizzieLet38_1Lcall_f3_emitted | ({t3a8q_1_destruct_d[0],
                                                                         q3a8l_1_destruct_d[0],
                                                                         t2a8p_1_destruct_d[0],
                                                                         q2a8k_1_destruct_d[0],
                                                                         t1a8o_1_destruct_d[0],
                                                                         q1a8j_1_destruct_d[0],
                                                                         sc_0_2_destruct_d[0]} & {t3a8q_1_destruct_r,
                                                                                                  q3a8l_1_destruct_r,
                                                                                                  t2a8p_1_destruct_r,
                                                                                                  q2a8k_1_destruct_r,
                                                                                                  t1a8o_1_destruct_r,
                                                                                                  q1a8j_1_destruct_r,
                                                                                                  sc_0_2_destruct_r}));
  assign lizzieLet38_1Lcall_f3_r = (& lizzieLet38_1Lcall_f3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_1Lcall_f3_emitted <= 7'd0;
    else
      lizzieLet38_1Lcall_f3_emitted <= (lizzieLet38_1Lcall_f3_r ? 7'd0 :
                                        lizzieLet38_1Lcall_f3_done);
  
  /* demux (Ty CTf,
       Ty CTf) : (lizzieLet38_2,CTf) (lizzieLet38_1,CTf) > [(_3,CTf),
                                                            (lizzieLet38_1Lcall_f3,CTf),
                                                            (lizzieLet38_1Lcall_f2,CTf),
                                                            (lizzieLet38_1Lcall_f1,CTf),
                                                            (lizzieLet38_1Lcall_f0,CTf)] */
  logic [4:0] lizzieLet38_1_onehotd;
  always_comb
    if ((lizzieLet38_2_d[0] && lizzieLet38_1_d[0]))
      unique case (lizzieLet38_2_d[3:1])
        3'd0: lizzieLet38_1_onehotd = 5'd1;
        3'd1: lizzieLet38_1_onehotd = 5'd2;
        3'd2: lizzieLet38_1_onehotd = 5'd4;
        3'd3: lizzieLet38_1_onehotd = 5'd8;
        3'd4: lizzieLet38_1_onehotd = 5'd16;
        default: lizzieLet38_1_onehotd = 5'd0;
      endcase
    else lizzieLet38_1_onehotd = 5'd0;
  assign _3_d = {lizzieLet38_1_d[115:1], lizzieLet38_1_onehotd[0]};
  assign lizzieLet38_1Lcall_f3_d = {lizzieLet38_1_d[115:1],
                                    lizzieLet38_1_onehotd[1]};
  assign lizzieLet38_1Lcall_f2_d = {lizzieLet38_1_d[115:1],
                                    lizzieLet38_1_onehotd[2]};
  assign lizzieLet38_1Lcall_f1_d = {lizzieLet38_1_d[115:1],
                                    lizzieLet38_1_onehotd[3]};
  assign lizzieLet38_1Lcall_f0_d = {lizzieLet38_1_d[115:1],
                                    lizzieLet38_1_onehotd[4]};
  assign lizzieLet38_1_r = (| (lizzieLet38_1_onehotd & {lizzieLet38_1Lcall_f0_r,
                                                        lizzieLet38_1Lcall_f1_r,
                                                        lizzieLet38_1Lcall_f2_r,
                                                        lizzieLet38_1Lcall_f3_r,
                                                        _3_r}));
  assign lizzieLet38_2_r = lizzieLet38_1_r;
  
  /* demux (Ty CTf,
       Ty Go) : (lizzieLet38_3,CTf) (go_12_goMux_data,Go) > [(_2,Go),
                                                             (lizzieLet38_3Lcall_f3,Go),
                                                             (lizzieLet38_3Lcall_f2,Go),
                                                             (lizzieLet38_3Lcall_f1,Go),
                                                             (lizzieLet38_3Lcall_f0,Go)] */
  logic [4:0] go_12_goMux_data_onehotd;
  always_comb
    if ((lizzieLet38_3_d[0] && go_12_goMux_data_d[0]))
      unique case (lizzieLet38_3_d[3:1])
        3'd0: go_12_goMux_data_onehotd = 5'd1;
        3'd1: go_12_goMux_data_onehotd = 5'd2;
        3'd2: go_12_goMux_data_onehotd = 5'd4;
        3'd3: go_12_goMux_data_onehotd = 5'd8;
        3'd4: go_12_goMux_data_onehotd = 5'd16;
        default: go_12_goMux_data_onehotd = 5'd0;
      endcase
    else go_12_goMux_data_onehotd = 5'd0;
  assign _2_d = go_12_goMux_data_onehotd[0];
  assign lizzieLet38_3Lcall_f3_d = go_12_goMux_data_onehotd[1];
  assign lizzieLet38_3Lcall_f2_d = go_12_goMux_data_onehotd[2];
  assign lizzieLet38_3Lcall_f1_d = go_12_goMux_data_onehotd[3];
  assign lizzieLet38_3Lcall_f0_d = go_12_goMux_data_onehotd[4];
  assign go_12_goMux_data_r = (| (go_12_goMux_data_onehotd & {lizzieLet38_3Lcall_f0_r,
                                                              lizzieLet38_3Lcall_f1_r,
                                                              lizzieLet38_3Lcall_f2_r,
                                                              lizzieLet38_3Lcall_f3_r,
                                                              _2_r}));
  assign lizzieLet38_3_r = go_12_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet38_3Lcall_f0,Go) > (lizzieLet38_3Lcall_f0_1_argbuf,Go) */
  Go_t lizzieLet38_3Lcall_f0_bufchan_d;
  logic lizzieLet38_3Lcall_f0_bufchan_r;
  assign lizzieLet38_3Lcall_f0_r = ((! lizzieLet38_3Lcall_f0_bufchan_d[0]) || lizzieLet38_3Lcall_f0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f0_bufchan_d <= 1'd0;
    else
      if (lizzieLet38_3Lcall_f0_r)
        lizzieLet38_3Lcall_f0_bufchan_d <= lizzieLet38_3Lcall_f0_d;
  Go_t lizzieLet38_3Lcall_f0_bufchan_buf;
  assign lizzieLet38_3Lcall_f0_bufchan_r = (! lizzieLet38_3Lcall_f0_bufchan_buf[0]);
  assign lizzieLet38_3Lcall_f0_1_argbuf_d = (lizzieLet38_3Lcall_f0_bufchan_buf[0] ? lizzieLet38_3Lcall_f0_bufchan_buf :
                                             lizzieLet38_3Lcall_f0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet38_3Lcall_f0_1_argbuf_r && lizzieLet38_3Lcall_f0_bufchan_buf[0]))
        lizzieLet38_3Lcall_f0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet38_3Lcall_f0_1_argbuf_r) && (! lizzieLet38_3Lcall_f0_bufchan_buf[0])))
        lizzieLet38_3Lcall_f0_bufchan_buf <= lizzieLet38_3Lcall_f0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet38_3Lcall_f1,Go) > (lizzieLet38_3Lcall_f1_1_argbuf,Go) */
  Go_t lizzieLet38_3Lcall_f1_bufchan_d;
  logic lizzieLet38_3Lcall_f1_bufchan_r;
  assign lizzieLet38_3Lcall_f1_r = ((! lizzieLet38_3Lcall_f1_bufchan_d[0]) || lizzieLet38_3Lcall_f1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f1_bufchan_d <= 1'd0;
    else
      if (lizzieLet38_3Lcall_f1_r)
        lizzieLet38_3Lcall_f1_bufchan_d <= lizzieLet38_3Lcall_f1_d;
  Go_t lizzieLet38_3Lcall_f1_bufchan_buf;
  assign lizzieLet38_3Lcall_f1_bufchan_r = (! lizzieLet38_3Lcall_f1_bufchan_buf[0]);
  assign lizzieLet38_3Lcall_f1_1_argbuf_d = (lizzieLet38_3Lcall_f1_bufchan_buf[0] ? lizzieLet38_3Lcall_f1_bufchan_buf :
                                             lizzieLet38_3Lcall_f1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet38_3Lcall_f1_1_argbuf_r && lizzieLet38_3Lcall_f1_bufchan_buf[0]))
        lizzieLet38_3Lcall_f1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet38_3Lcall_f1_1_argbuf_r) && (! lizzieLet38_3Lcall_f1_bufchan_buf[0])))
        lizzieLet38_3Lcall_f1_bufchan_buf <= lizzieLet38_3Lcall_f1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet38_3Lcall_f2,Go) > (lizzieLet38_3Lcall_f2_1_argbuf,Go) */
  Go_t lizzieLet38_3Lcall_f2_bufchan_d;
  logic lizzieLet38_3Lcall_f2_bufchan_r;
  assign lizzieLet38_3Lcall_f2_r = ((! lizzieLet38_3Lcall_f2_bufchan_d[0]) || lizzieLet38_3Lcall_f2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f2_bufchan_d <= 1'd0;
    else
      if (lizzieLet38_3Lcall_f2_r)
        lizzieLet38_3Lcall_f2_bufchan_d <= lizzieLet38_3Lcall_f2_d;
  Go_t lizzieLet38_3Lcall_f2_bufchan_buf;
  assign lizzieLet38_3Lcall_f2_bufchan_r = (! lizzieLet38_3Lcall_f2_bufchan_buf[0]);
  assign lizzieLet38_3Lcall_f2_1_argbuf_d = (lizzieLet38_3Lcall_f2_bufchan_buf[0] ? lizzieLet38_3Lcall_f2_bufchan_buf :
                                             lizzieLet38_3Lcall_f2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet38_3Lcall_f2_1_argbuf_r && lizzieLet38_3Lcall_f2_bufchan_buf[0]))
        lizzieLet38_3Lcall_f2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet38_3Lcall_f2_1_argbuf_r) && (! lizzieLet38_3Lcall_f2_bufchan_buf[0])))
        lizzieLet38_3Lcall_f2_bufchan_buf <= lizzieLet38_3Lcall_f2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet38_3Lcall_f3,Go) > (lizzieLet38_3Lcall_f3_1_argbuf,Go) */
  Go_t lizzieLet38_3Lcall_f3_bufchan_d;
  logic lizzieLet38_3Lcall_f3_bufchan_r;
  assign lizzieLet38_3Lcall_f3_r = ((! lizzieLet38_3Lcall_f3_bufchan_d[0]) || lizzieLet38_3Lcall_f3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f3_bufchan_d <= 1'd0;
    else
      if (lizzieLet38_3Lcall_f3_r)
        lizzieLet38_3Lcall_f3_bufchan_d <= lizzieLet38_3Lcall_f3_d;
  Go_t lizzieLet38_3Lcall_f3_bufchan_buf;
  assign lizzieLet38_3Lcall_f3_bufchan_r = (! lizzieLet38_3Lcall_f3_bufchan_buf[0]);
  assign lizzieLet38_3Lcall_f3_1_argbuf_d = (lizzieLet38_3Lcall_f3_bufchan_buf[0] ? lizzieLet38_3Lcall_f3_bufchan_buf :
                                             lizzieLet38_3Lcall_f3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_3Lcall_f3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet38_3Lcall_f3_1_argbuf_r && lizzieLet38_3Lcall_f3_bufchan_buf[0]))
        lizzieLet38_3Lcall_f3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet38_3Lcall_f3_1_argbuf_r) && (! lizzieLet38_3Lcall_f3_bufchan_buf[0])))
        lizzieLet38_3Lcall_f3_bufchan_buf <= lizzieLet38_3Lcall_f3_bufchan_d;
  
  /* demux (Ty CTf,
       Ty Pointer_QTree_Nat) : (lizzieLet38_4,CTf) (srtarg_0_goMux_mux,Pointer_QTree_Nat) > [(lizzieLet38_4Lfsbos,Pointer_QTree_Nat),
                                                                                             (lizzieLet38_4Lcall_f3,Pointer_QTree_Nat),
                                                                                             (lizzieLet38_4Lcall_f2,Pointer_QTree_Nat),
                                                                                             (lizzieLet38_4Lcall_f1,Pointer_QTree_Nat),
                                                                                             (lizzieLet38_4Lcall_f0,Pointer_QTree_Nat)] */
  logic [4:0] srtarg_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet38_4_d[0] && srtarg_0_goMux_mux_d[0]))
      unique case (lizzieLet38_4_d[3:1])
        3'd0: srtarg_0_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_goMux_mux_onehotd = 5'd0;
  assign lizzieLet38_4Lfsbos_d = {srtarg_0_goMux_mux_d[16:1],
                                  srtarg_0_goMux_mux_onehotd[0]};
  assign lizzieLet38_4Lcall_f3_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[1]};
  assign lizzieLet38_4Lcall_f2_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[2]};
  assign lizzieLet38_4Lcall_f1_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[3]};
  assign lizzieLet38_4Lcall_f0_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[4]};
  assign srtarg_0_goMux_mux_r = (| (srtarg_0_goMux_mux_onehotd & {lizzieLet38_4Lcall_f0_r,
                                                                  lizzieLet38_4Lcall_f1_r,
                                                                  lizzieLet38_4Lcall_f2_r,
                                                                  lizzieLet38_4Lcall_f3_r,
                                                                  lizzieLet38_4Lfsbos_r}));
  assign lizzieLet38_4_r = srtarg_0_goMux_mux_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(lizzieLet38_4Lcall_f0,Pointer_QTree_Nat),
                         (es_9_destruct,Pointer_QTree_Nat),
                         (es_10_1_destruct,Pointer_QTree_Nat),
                         (es_11_2_destruct,Pointer_QTree_Nat)] > (lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat,QTree_Nat) */
  assign lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_d = QNode_Nat_dc((& {lizzieLet38_4Lcall_f0_d[0],
                                                                                       es_9_destruct_d[0],
                                                                                       es_10_1_destruct_d[0],
                                                                                       es_11_2_destruct_d[0]}), lizzieLet38_4Lcall_f0_d, es_9_destruct_d, es_10_1_destruct_d, es_11_2_destruct_d);
  assign {lizzieLet38_4Lcall_f0_r,
          es_9_destruct_r,
          es_10_1_destruct_r,
          es_11_2_destruct_r} = {4 {(lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_r && lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat,QTree_Nat) > (lizzieLet42_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d;
  logic lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_r;
  assign lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_r = ((! lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d[0]) || lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d <= {66'd0,
                                                                             1'd0};
    else
      if (lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_r)
        lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d <= lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_d;
  QTree_Nat_t lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf;
  assign lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_r = (! lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf[0]);
  assign lizzieLet42_1_argbuf_d = (lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf[0] ? lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf :
                                   lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf <= {66'd0,
                                                                               1'd0};
    else
      if ((lizzieLet42_1_argbuf_r && lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf[0]))
        lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf <= {66'd0,
                                                                                 1'd0};
      else if (((! lizzieLet42_1_argbuf_r) && (! lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf[0])))
        lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_buf <= lizzieLet38_4Lcall_f0_1es_9_1es_10_1_1es_11_2_1QNode_Nat_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f0) : [(lizzieLet38_4Lcall_f1,Pointer_QTree_Nat),
                        (es_10_destruct,Pointer_QTree_Nat),
                        (es_11_1_destruct,Pointer_QTree_Nat),
                        (sc_0_4_destruct,Pointer_CTf)] > (lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0,CTf) */
  assign lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_d = Lcall_f0_dc((& {lizzieLet38_4Lcall_f1_d[0],
                                                                                     es_10_destruct_d[0],
                                                                                     es_11_1_destruct_d[0],
                                                                                     sc_0_4_destruct_d[0]}), lizzieLet38_4Lcall_f1_d, es_10_destruct_d, es_11_1_destruct_d, sc_0_4_destruct_d);
  assign {lizzieLet38_4Lcall_f1_r,
          es_10_destruct_r,
          es_11_1_destruct_r,
          sc_0_4_destruct_r} = {4 {(lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_r && lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0,CTf) > (lizzieLet41_1_argbuf,CTf) */
  CTf_t lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d;
  logic lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_r;
  assign lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_r = ((! lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d[0]) || lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d <= {115'd0,
                                                                            1'd0};
    else
      if (lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_r)
        lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d <= lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_d;
  CTf_t lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf;
  assign lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_r = (! lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf[0]);
  assign lizzieLet41_1_argbuf_d = (lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf[0] ? lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf :
                                   lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf <= {115'd0,
                                                                              1'd0};
    else
      if ((lizzieLet41_1_argbuf_r && lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf[0]))
        lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf <= {115'd0,
                                                                                1'd0};
      else if (((! lizzieLet41_1_argbuf_r) && (! lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf[0])))
        lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_buf <= lizzieLet38_4Lcall_f1_1es_10_1es_11_1_1sc_0_4_1Lcall_f0_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f1) : [(lizzieLet38_4Lcall_f2,Pointer_QTree_Nat),
                        (es_11_destruct,Pointer_QTree_Nat),
                        (sc_0_3_destruct,Pointer_CTf),
                        (q1a8j_2_destruct,Pointer_QTree_Bool),
                        (t1a8o_2_destruct,Pointer_QTree_Bool)] > (lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1,CTf) */
  assign lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_d = Lcall_f1_dc((& {lizzieLet38_4Lcall_f2_d[0],
                                                                                              es_11_destruct_d[0],
                                                                                              sc_0_3_destruct_d[0],
                                                                                              q1a8j_2_destruct_d[0],
                                                                                              t1a8o_2_destruct_d[0]}), lizzieLet38_4Lcall_f2_d, es_11_destruct_d, sc_0_3_destruct_d, q1a8j_2_destruct_d, t1a8o_2_destruct_d);
  assign {lizzieLet38_4Lcall_f2_r,
          es_11_destruct_r,
          sc_0_3_destruct_r,
          q1a8j_2_destruct_r,
          t1a8o_2_destruct_r} = {5 {(lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_r && lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1,CTf) > (lizzieLet40_1_argbuf,CTf) */
  CTf_t lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d;
  logic lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_r;
  assign lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_r = ((! lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d[0]) || lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d <= {115'd0,
                                                                                     1'd0};
    else
      if (lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_r)
        lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d <= lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_d;
  CTf_t lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf;
  assign lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_r = (! lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf[0]);
  assign lizzieLet40_1_argbuf_d = (lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf[0] ? lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf :
                                   lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf <= {115'd0,
                                                                                       1'd0};
    else
      if ((lizzieLet40_1_argbuf_r && lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf[0]))
        lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf <= {115'd0,
                                                                                         1'd0};
      else if (((! lizzieLet40_1_argbuf_r) && (! lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf[0])))
        lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_buf <= lizzieLet38_4Lcall_f2_1es_11_1sc_0_3_1q1a8j_2_1t1a8o_2_1Lcall_f1_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f2) : [(lizzieLet38_4Lcall_f3,Pointer_QTree_Nat),
                        (sc_0_2_destruct,Pointer_CTf),
                        (q1a8j_1_destruct,Pointer_QTree_Bool),
                        (t1a8o_1_destruct,Pointer_QTree_Bool),
                        (q2a8k_1_destruct,Pointer_QTree_Bool),
                        (t2a8p_1_destruct,Pointer_QTree_Bool)] > (lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2,CTf) */
  assign lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_d = Lcall_f2_dc((& {lizzieLet38_4Lcall_f3_d[0],
                                                                                                         sc_0_2_destruct_d[0],
                                                                                                         q1a8j_1_destruct_d[0],
                                                                                                         t1a8o_1_destruct_d[0],
                                                                                                         q2a8k_1_destruct_d[0],
                                                                                                         t2a8p_1_destruct_d[0]}), lizzieLet38_4Lcall_f3_d, sc_0_2_destruct_d, q1a8j_1_destruct_d, t1a8o_1_destruct_d, q2a8k_1_destruct_d, t2a8p_1_destruct_d);
  assign {lizzieLet38_4Lcall_f3_r,
          sc_0_2_destruct_r,
          q1a8j_1_destruct_r,
          t1a8o_1_destruct_r,
          q2a8k_1_destruct_r,
          t2a8p_1_destruct_r} = {6 {(lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_r && lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2,CTf) > (lizzieLet39_1_argbuf,CTf) */
  CTf_t lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d;
  logic lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_r;
  assign lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_r = ((! lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d[0]) || lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d <= {115'd0,
                                                                                                1'd0};
    else
      if (lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_r)
        lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d <= lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_d;
  CTf_t lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf;
  assign lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_r = (! lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf[0]);
  assign lizzieLet39_1_argbuf_d = (lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf[0] ? lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf :
                                   lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf <= {115'd0,
                                                                                                  1'd0};
    else
      if ((lizzieLet39_1_argbuf_r && lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf[0]))
        lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf <= {115'd0,
                                                                                                    1'd0};
      else if (((! lizzieLet39_1_argbuf_r) && (! lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf[0])))
        lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_buf <= lizzieLet38_4Lcall_f3_1sc_0_2_1q1a8j_1_1t1a8o_1_1q2a8k_1_1t2a8p_1_1Lcall_f2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Nat) : (lizzieLet38_4Lfsbos,Pointer_QTree_Nat) > [(lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1,Pointer_QTree_Nat),
                                                                         (lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2,Pointer_QTree_Nat)] */
  logic [1:0] lizzieLet38_4Lfsbos_emitted;
  logic [1:0] lizzieLet38_4Lfsbos_done;
  assign lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_d = {lizzieLet38_4Lfsbos_d[16:1],
                                                             (lizzieLet38_4Lfsbos_d[0] && (! lizzieLet38_4Lfsbos_emitted[0]))};
  assign lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_d = {lizzieLet38_4Lfsbos_d[16:1],
                                                             (lizzieLet38_4Lfsbos_d[0] && (! lizzieLet38_4Lfsbos_emitted[1]))};
  assign lizzieLet38_4Lfsbos_done = (lizzieLet38_4Lfsbos_emitted | ({lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_d[0],
                                                                     lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_d[0]} & {lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_r,
                                                                                                                             lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_r}));
  assign lizzieLet38_4Lfsbos_r = (& lizzieLet38_4Lfsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet38_4Lfsbos_emitted <= 2'd0;
    else
      lizzieLet38_4Lfsbos_emitted <= (lizzieLet38_4Lfsbos_r ? 2'd0 :
                                      lizzieLet38_4Lfsbos_done);
  
  /* togo (Ty Pointer_QTree_Nat) : (lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1,Pointer_QTree_Nat) > (call_f_goConst,Go) */
  assign call_f_goConst_d = lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_d[0];
  assign lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_1_r = call_f_goConst_r;
  
  /* buf (Ty Pointer_QTree_Nat) : (lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2,Pointer_QTree_Nat) > (f_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d;
  logic lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_r;
  assign lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_r = ((! lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d[0]) || lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d <= {16'd0,
                                                                   1'd0};
    else
      if (lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_r)
        lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d <= lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_d;
  Pointer_QTree_Nat_t lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf;
  assign lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_r = (! lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf[0]);
  assign f_resbuf_d = (lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf[0] ? lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf :
                       lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                                     1'd0};
    else
      if ((f_resbuf_r && lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf[0]))
        lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                                       1'd0};
      else if (((! f_resbuf_r) && (! lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf[0])))
        lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_buf <= lizzieLet38_4Lfsbos_1_merge_merge_merge_fork_2_bufchan_d;
  
  /* destruct (Ty CTf''''''''_f''''''''_Bool,
          Dcon Lcall_f''''''''_f''''''''_Bool0) : (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0,CTf''''''''_f''''''''_Bool) > [(es_1_1_destruct,Pointer_QTree_Nat),
                                                                                                                               (es_2_2_destruct,Pointer_QTree_Nat),
                                                                                                                               (es_3_3_destruct,Pointer_QTree_Nat),
                                                                                                                               (sc_0_9_destruct,Pointer_CTf''''''''_f''''''''_Bool)] */
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted ;
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_done ;
  assign es_1_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [19:4],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted [0]))};
  assign es_2_2_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [35:20],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted [1]))};
  assign es_3_3_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [51:36],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted [2]))};
  assign sc_0_9_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [67:52],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted [3]))};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_done  = (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted  | ({sc_0_9_destruct_d[0],
                                                                                                                           es_3_3_destruct_d[0],
                                                                                                                           es_2_2_destruct_d[0],
                                                                                                                           es_1_1_destruct_d[0]} & {sc_0_9_destruct_r,
                                                                                                                                                    es_3_3_destruct_r,
                                                                                                                                                    es_2_2_destruct_r,
                                                                                                                                                    es_1_1_destruct_r}));
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_r  = (& \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted  <= 4'd0;
    else
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_emitted  <= (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_r  ? 4'd0 :
                                                                 \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_done );
  
  /* destruct (Ty CTf''''''''_f''''''''_Bool,
          Dcon Lcall_f''''''''_f''''''''_Bool1) : (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1,CTf''''''''_f''''''''_Bool) > [(es_2_1_destruct,Pointer_QTree_Nat),
                                                                                                                               (es_3_2_destruct,Pointer_QTree_Nat),
                                                                                                                               (sc_0_8_destruct,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                               (tla8u_3_destruct,Pointer_QTree_Bool)] */
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted ;
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_done ;
  assign es_2_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [19:4],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted [0]))};
  assign es_3_2_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [35:20],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted [1]))};
  assign sc_0_8_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [51:36],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted [2]))};
  assign tla8u_3_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [67:52],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted [3]))};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_done  = (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted  | ({tla8u_3_destruct_d[0],
                                                                                                                           sc_0_8_destruct_d[0],
                                                                                                                           es_3_2_destruct_d[0],
                                                                                                                           es_2_1_destruct_d[0]} & {tla8u_3_destruct_r,
                                                                                                                                                    sc_0_8_destruct_r,
                                                                                                                                                    es_3_2_destruct_r,
                                                                                                                                                    es_2_1_destruct_r}));
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_r  = (& \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted  <= 4'd0;
    else
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_emitted  <= (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_r  ? 4'd0 :
                                                                 \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_done );
  
  /* destruct (Ty CTf''''''''_f''''''''_Bool,
          Dcon Lcall_f''''''''_f''''''''_Bool2) : (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2,CTf''''''''_f''''''''_Bool) > [(es_3_1_destruct,Pointer_QTree_Nat),
                                                                                                                               (sc_0_7_destruct,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                               (tla8u_2_destruct,Pointer_QTree_Bool),
                                                                                                                               (tra8v_2_destruct,Pointer_QTree_Bool)] */
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted ;
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_done ;
  assign es_3_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [19:4],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted [0]))};
  assign sc_0_7_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [35:20],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted [1]))};
  assign tla8u_2_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [51:36],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted [2]))};
  assign tra8v_2_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [67:52],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted [3]))};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_done  = (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted  | ({tra8v_2_destruct_d[0],
                                                                                                                           tla8u_2_destruct_d[0],
                                                                                                                           sc_0_7_destruct_d[0],
                                                                                                                           es_3_1_destruct_d[0]} & {tra8v_2_destruct_r,
                                                                                                                                                    tla8u_2_destruct_r,
                                                                                                                                                    sc_0_7_destruct_r,
                                                                                                                                                    es_3_1_destruct_r}));
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_r  = (& \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted  <= 4'd0;
    else
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_emitted  <= (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_r  ? 4'd0 :
                                                                 \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_done );
  
  /* destruct (Ty CTf''''''''_f''''''''_Bool,
          Dcon Lcall_f''''''''_f''''''''_Bool3) : (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3,CTf''''''''_f''''''''_Bool) > [(sc_0_6_destruct,Pointer_CTf''''''''_f''''''''_Bool),
                                                                                                                               (tla8u_1_destruct,Pointer_QTree_Bool),
                                                                                                                               (tra8v_1_destruct,Pointer_QTree_Bool),
                                                                                                                               (bla8w_1_destruct,Pointer_QTree_Bool)] */
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted ;
  logic [3:0] \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_done ;
  assign sc_0_6_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [19:4],
                              (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted [0]))};
  assign tla8u_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [35:20],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted [1]))};
  assign tra8v_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [51:36],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted [2]))};
  assign bla8w_1_destruct_d = {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [67:52],
                               (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d [0] && (! \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted [3]))};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_done  = (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted  | ({bla8w_1_destruct_d[0],
                                                                                                                           tra8v_1_destruct_d[0],
                                                                                                                           tla8u_1_destruct_d[0],
                                                                                                                           sc_0_6_destruct_d[0]} & {bla8w_1_destruct_r,
                                                                                                                                                    tra8v_1_destruct_r,
                                                                                                                                                    tla8u_1_destruct_r,
                                                                                                                                                    sc_0_6_destruct_r}));
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_r  = (& \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted  <= 4'd0;
    else
      \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_emitted  <= (\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_r  ? 4'd0 :
                                                                 \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_done );
  
  /* demux (Ty CTf''''''''_f''''''''_Bool,
       Ty CTf''''''''_f''''''''_Bool) : (lizzieLet43_2,CTf''''''''_f''''''''_Bool) (lizzieLet43_1,CTf''''''''_f''''''''_Bool) > [(_1,CTf''''''''_f''''''''_Bool),
                                                                                                                                 (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3,CTf''''''''_f''''''''_Bool),
                                                                                                                                 (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2,CTf''''''''_f''''''''_Bool),
                                                                                                                                 (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1,CTf''''''''_f''''''''_Bool),
                                                                                                                                 (lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0,CTf''''''''_f''''''''_Bool)] */
  logic [4:0] lizzieLet43_1_onehotd;
  always_comb
    if ((lizzieLet43_2_d[0] && lizzieLet43_1_d[0]))
      unique case (lizzieLet43_2_d[3:1])
        3'd0: lizzieLet43_1_onehotd = 5'd1;
        3'd1: lizzieLet43_1_onehotd = 5'd2;
        3'd2: lizzieLet43_1_onehotd = 5'd4;
        3'd3: lizzieLet43_1_onehotd = 5'd8;
        3'd4: lizzieLet43_1_onehotd = 5'd16;
        default: lizzieLet43_1_onehotd = 5'd0;
      endcase
    else lizzieLet43_1_onehotd = 5'd0;
  assign _1_d = {lizzieLet43_1_d[67:1], lizzieLet43_1_onehotd[0]};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_d  = {lizzieLet43_1_d[67:1],
                                                             lizzieLet43_1_onehotd[1]};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_d  = {lizzieLet43_1_d[67:1],
                                                             lizzieLet43_1_onehotd[2]};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_d  = {lizzieLet43_1_d[67:1],
                                                             lizzieLet43_1_onehotd[3]};
  assign \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_d  = {lizzieLet43_1_d[67:1],
                                                             lizzieLet43_1_onehotd[4]};
  assign lizzieLet43_1_r = (| (lizzieLet43_1_onehotd & {\lizzieLet43_1Lcall_f''''''''_f''''''''_Bool0_r ,
                                                        \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool1_r ,
                                                        \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool2_r ,
                                                        \lizzieLet43_1Lcall_f''''''''_f''''''''_Bool3_r ,
                                                        _1_r}));
  assign lizzieLet43_2_r = lizzieLet43_1_r;
  
  /* demux (Ty CTf''''''''_f''''''''_Bool,
       Ty Go) : (lizzieLet43_3,CTf''''''''_f''''''''_Bool) (go_13_goMux_data,Go) > [(_0,Go),
                                                                                    (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3,Go),
                                                                                    (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2,Go),
                                                                                    (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1,Go),
                                                                                    (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0,Go)] */
  logic [4:0] go_13_goMux_data_onehotd;
  always_comb
    if ((lizzieLet43_3_d[0] && go_13_goMux_data_d[0]))
      unique case (lizzieLet43_3_d[3:1])
        3'd0: go_13_goMux_data_onehotd = 5'd1;
        3'd1: go_13_goMux_data_onehotd = 5'd2;
        3'd2: go_13_goMux_data_onehotd = 5'd4;
        3'd3: go_13_goMux_data_onehotd = 5'd8;
        3'd4: go_13_goMux_data_onehotd = 5'd16;
        default: go_13_goMux_data_onehotd = 5'd0;
      endcase
    else go_13_goMux_data_onehotd = 5'd0;
  assign _0_d = go_13_goMux_data_onehotd[0];
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_d  = go_13_goMux_data_onehotd[1];
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_d  = go_13_goMux_data_onehotd[2];
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_d  = go_13_goMux_data_onehotd[3];
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_d  = go_13_goMux_data_onehotd[4];
  assign go_13_goMux_data_r = (| (go_13_goMux_data_onehotd & {\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_r ,
                                                              \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_r ,
                                                              \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_r ,
                                                              \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_r ,
                                                              _0_r}));
  assign lizzieLet43_3_r = go_13_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0,Go) > (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf,Go) */
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_r ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_r  = ((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d [0]) || \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_r )
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_d ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_r  = (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0]);
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_d  = (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0] ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  :
                                                                      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_r  && \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0]))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_1_argbuf_r ) && (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0])))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool0_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1,Go) > (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf,Go) */
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_r ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_r  = ((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d [0]) || \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_r )
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_d ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_r  = (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0]);
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_d  = (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0] ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  :
                                                                      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_r  && \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0]))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_1_argbuf_r ) && (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0])))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool1_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2,Go) > (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf,Go) */
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_r ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_r  = ((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d [0]) || \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_r )
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_d ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_r  = (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0]);
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_d  = (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0] ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  :
                                                                      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_r  && \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0]))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_1_argbuf_r ) && (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0])))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool2_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3,Go) > (lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf,Go) */
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d ;
  logic \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_r ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_r  = ((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d [0]) || \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_r )
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_d ;
  Go_t \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf ;
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_r  = (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0]);
  assign \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_d  = (\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0] ? \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  :
                                                                      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_r  && \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0]))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_1_argbuf_r ) && (! \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf [0])))
        \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_buf  <= \lizzieLet43_3Lcall_f''''''''_f''''''''_Bool3_bufchan_d ;
  
  /* demux (Ty CTf''''''''_f''''''''_Bool,
       Ty Pointer_QTree_Nat) : (lizzieLet43_4,CTf''''''''_f''''''''_Bool) (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) > [(lizzieLet43_4Lf''''''''_f''''''''_Boolsbos,Pointer_QTree_Nat),
                                                                                                                      (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3,Pointer_QTree_Nat),
                                                                                                                      (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2,Pointer_QTree_Nat),
                                                                                                                      (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1,Pointer_QTree_Nat),
                                                                                                                      (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0,Pointer_QTree_Nat)] */
  logic [4:0] srtarg_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet43_4_d[0] && srtarg_0_1_goMux_mux_d[0]))
      unique case (lizzieLet43_4_d[3:1])
        3'd0: srtarg_0_1_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_1_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_1_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_1_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_1_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_1_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_1_goMux_mux_onehotd = 5'd0;
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                           srtarg_0_1_goMux_mux_onehotd[0]};
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                             srtarg_0_1_goMux_mux_onehotd[1]};
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                             srtarg_0_1_goMux_mux_onehotd[2]};
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                             srtarg_0_1_goMux_mux_onehotd[3]};
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                                             srtarg_0_1_goMux_mux_onehotd[4]};
  assign srtarg_0_1_goMux_mux_r = (| (srtarg_0_1_goMux_mux_onehotd & {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_r ,
                                                                      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_r ,
                                                                      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_r ,
                                                                      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_r ,
                                                                      \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_r }));
  assign lizzieLet43_4_r = srtarg_0_1_goMux_mux_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0,Pointer_QTree_Nat),
                         (es_1_1_destruct,Pointer_QTree_Nat),
                         (es_2_2_destruct,Pointer_QTree_Nat),
                         (es_3_3_destruct,Pointer_QTree_Nat)] > (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat,QTree_Nat) */
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_d  = QNode_Nat_dc((& {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_d [0],
                                                                                                                es_1_1_destruct_d[0],
                                                                                                                es_2_2_destruct_d[0],
                                                                                                                es_3_3_destruct_d[0]}), \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_d , es_1_1_destruct_d, es_2_2_destruct_d, es_3_3_destruct_d);
  assign {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_r ,
          es_1_1_destruct_r,
          es_2_2_destruct_r,
          es_3_3_destruct_r} = {4 {(\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_r  && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_d [0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat,QTree_Nat) > (lizzieLet47_1_argbuf,QTree_Nat) */
  QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_r ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_r  = ((! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d [0]) || \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d  <= {66'd0,
                                                                                                      1'd0};
    else
      if (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_r )
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_d ;
  QTree_Nat_t \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_r  = (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf [0]);
  assign lizzieLet47_1_argbuf_d = (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf [0] ? \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf  :
                                   \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                                        1'd0};
    else
      if ((lizzieLet47_1_argbuf_r && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf [0]))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                                          1'd0};
      else if (((! lizzieLet47_1_argbuf_r) && (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf [0])))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_buf  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool0_1es_1_1_1es_2_2_1es_3_3_1QNode_Nat_bufchan_d ;
  
  /* dcon (Ty CTf''''''''_f''''''''_Bool,
      Dcon Lcall_f''''''''_f''''''''_Bool0) : [(lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1,Pointer_QTree_Nat),
                                               (es_2_1_destruct,Pointer_QTree_Nat),
                                               (es_3_2_destruct,Pointer_QTree_Nat),
                                               (sc_0_8_destruct,Pointer_CTf''''''''_f''''''''_Bool)] > (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0,CTf''''''''_f''''''''_Bool) */
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_d  = \Lcall_f''''''''_f''''''''_Bool0_dc ((& {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_d [0],
                                                                                                                                                              es_2_1_destruct_d[0],
                                                                                                                                                              es_3_2_destruct_d[0],
                                                                                                                                                              sc_0_8_destruct_d[0]}), \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_d , es_2_1_destruct_d, es_3_2_destruct_d, sc_0_8_destruct_d);
  assign {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_r ,
          es_2_1_destruct_r,
          es_3_2_destruct_r,
          sc_0_8_destruct_r} = {4 {(\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_r  && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_d [0])}};
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0,CTf''''''''_f''''''''_Bool) > (lizzieLet46_1_argbuf,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_r ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_r  = ((! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d [0]) || \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d  <= {67'd0,
                                                                                                                            1'd0};
    else
      if (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_r )
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_d ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_r  = (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0]);
  assign lizzieLet46_1_argbuf_d = (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0] ? \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  :
                                   \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= {67'd0,
                                                                                                                              1'd0};
    else
      if ((lizzieLet46_1_argbuf_r && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0]))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= {67'd0,
                                                                                                                                1'd0};
      else if (((! lizzieLet46_1_argbuf_r) && (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf [0])))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_buf  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool1_1es_2_1_1es_3_2_1sc_0_8_1Lcall_f''''''''_f''''''''_Bool0_bufchan_d ;
  
  /* dcon (Ty CTf''''''''_f''''''''_Bool,
      Dcon Lcall_f''''''''_f''''''''_Bool1) : [(lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2,Pointer_QTree_Nat),
                                               (es_3_1_destruct,Pointer_QTree_Nat),
                                               (sc_0_7_destruct,Pointer_CTf''''''''_f''''''''_Bool),
                                               (tla8u_2_destruct,Pointer_QTree_Bool)] > (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1,CTf''''''''_f''''''''_Bool) */
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_d  = \Lcall_f''''''''_f''''''''_Bool1_dc ((& {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_d [0],
                                                                                                                                                               es_3_1_destruct_d[0],
                                                                                                                                                               sc_0_7_destruct_d[0],
                                                                                                                                                               tla8u_2_destruct_d[0]}), \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_d , es_3_1_destruct_d, sc_0_7_destruct_d, tla8u_2_destruct_d);
  assign {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_r ,
          es_3_1_destruct_r,
          sc_0_7_destruct_r,
          tla8u_2_destruct_r} = {4 {(\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_r  && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_d [0])}};
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1,CTf''''''''_f''''''''_Bool) > (lizzieLet45_1_argbuf,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_r ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_r  = ((! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d [0]) || \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d  <= {67'd0,
                                                                                                                             1'd0};
    else
      if (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_r )
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_d ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_r  = (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0]);
  assign lizzieLet45_1_argbuf_d = (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0] ? \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  :
                                   \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= {67'd0,
                                                                                                                               1'd0};
    else
      if ((lizzieLet45_1_argbuf_r && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0]))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= {67'd0,
                                                                                                                                 1'd0};
      else if (((! lizzieLet45_1_argbuf_r) && (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf [0])))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_buf  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool2_1es_3_1_1sc_0_7_1tla8u_2_1Lcall_f''''''''_f''''''''_Bool1_bufchan_d ;
  
  /* dcon (Ty CTf''''''''_f''''''''_Bool,
      Dcon Lcall_f''''''''_f''''''''_Bool2) : [(lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3,Pointer_QTree_Nat),
                                               (sc_0_6_destruct,Pointer_CTf''''''''_f''''''''_Bool),
                                               (tla8u_1_destruct,Pointer_QTree_Bool),
                                               (tra8v_1_destruct,Pointer_QTree_Bool)] > (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2,CTf''''''''_f''''''''_Bool) */
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_d  = \Lcall_f''''''''_f''''''''_Bool2_dc ((& {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_d [0],
                                                                                                                                                                sc_0_6_destruct_d[0],
                                                                                                                                                                tla8u_1_destruct_d[0],
                                                                                                                                                                tra8v_1_destruct_d[0]}), \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_d , sc_0_6_destruct_d, tla8u_1_destruct_d, tra8v_1_destruct_d);
  assign {\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_r ,
          sc_0_6_destruct_r,
          tla8u_1_destruct_r,
          tra8v_1_destruct_r} = {4 {(\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_r  && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_d [0])}};
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2,CTf''''''''_f''''''''_Bool) > (lizzieLet44_1_argbuf,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d ;
  logic \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_r ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_r  = ((! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d [0]) || \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d  <= {67'd0,
                                                                                                                              1'd0};
    else
      if (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_r )
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_d ;
  \CTf''''''''_f''''''''_Bool_t  \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf ;
  assign \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_r  = (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0]);
  assign lizzieLet44_1_argbuf_d = (\lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0] ? \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  :
                                   \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= {67'd0,
                                                                                                                                1'd0};
    else
      if ((lizzieLet44_1_argbuf_r && \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0]))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= {67'd0,
                                                                                                                                  1'd0};
      else if (((! lizzieLet44_1_argbuf_r) && (! \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf [0])))
        \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_buf  <= \lizzieLet43_4Lcall_f''''''''_f''''''''_Bool3_1sc_0_6_1tla8u_1_1tra8v_1_1Lcall_f''''''''_f''''''''_Bool2_bufchan_d ;
  
  /* fork (Ty Pointer_QTree_Nat) : (lizzieLet43_4Lf''''''''_f''''''''_Boolsbos,Pointer_QTree_Nat) > [(lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Nat),
                                                                                                (lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2,Pointer_QTree_Nat)] */
  logic [1:0] \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted ;
  logic [1:0] \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_done ;
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d [16:1],
                                                                                (\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d [0] && (! \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted [0]))};
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d  = {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d [16:1],
                                                                                (\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_d [0] && (! \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted [1]))};
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_done  = (\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted  | ({\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_d [0],
                                                                                                                       \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_d [0]} & {\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_2_r ,
                                                                                                                                                                                                  \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_r }));
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_r  = (& \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted  <= 2'd0;
    else
      \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_emitted  <= (\lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_r  ? 2'd0 :
                                                               \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_done );
  
  /* togo (Ty Pointer_QTree_Nat) : (lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1,Pointer_QTree_Nat) > (call_f''''''''_f''''''''_Bool_goConst,Go) */
  assign \call_f''''''''_f''''''''_Bool_goConst_d  = \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_d [0];
  assign \lizzieLet43_4Lf''''''''_f''''''''_Boolsbos_1_merge_merge_fork_1_r  = \call_f''''''''_f''''''''_Bool_goConst_r ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl1rbm-1TupGo_1,TupGo) > [(lvl1rbm-1TupGogo_6,Go)] */
  assign \lvl1rbm-1TupGogo_6_d  = \lvl1rbm-1TupGo_1_d [0];
  assign \lvl1rbm-1TupGo_1_r  = \lvl1rbm-1TupGogo_6_r ;
  
  /* buf (Ty Go) : (lvl1rbm-1TupGogo_6,Go) > (go_6_1_argbuf,Go) */
  Go_t \lvl1rbm-1TupGogo_6_bufchan_d ;
  logic \lvl1rbm-1TupGogo_6_bufchan_r ;
  assign \lvl1rbm-1TupGogo_6_r  = ((! \lvl1rbm-1TupGogo_6_bufchan_d [0]) || \lvl1rbm-1TupGogo_6_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl1rbm-1TupGogo_6_bufchan_d  <= 1'd0;
    else
      if (\lvl1rbm-1TupGogo_6_r )
        \lvl1rbm-1TupGogo_6_bufchan_d  <= \lvl1rbm-1TupGogo_6_d ;
  Go_t \lvl1rbm-1TupGogo_6_bufchan_buf ;
  assign \lvl1rbm-1TupGogo_6_bufchan_r  = (! \lvl1rbm-1TupGogo_6_bufchan_buf [0]);
  assign go_6_1_argbuf_d = (\lvl1rbm-1TupGogo_6_bufchan_buf [0] ? \lvl1rbm-1TupGogo_6_bufchan_buf  :
                            \lvl1rbm-1TupGogo_6_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl1rbm-1TupGogo_6_bufchan_buf  <= 1'd0;
    else
      if ((go_6_1_argbuf_r && \lvl1rbm-1TupGogo_6_bufchan_buf [0]))
        \lvl1rbm-1TupGogo_6_bufchan_buf  <= 1'd0;
      else if (((! go_6_1_argbuf_r) && (! \lvl1rbm-1TupGogo_6_bufchan_buf [0])))
        \lvl1rbm-1TupGogo_6_bufchan_buf  <= \lvl1rbm-1TupGogo_6_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl1rbm-1_resbuf,Pointer_QTree_Nat) > (lizzieLet21_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl1rbm-1_resbuf_bufchan_d ;
  logic \lvl1rbm-1_resbuf_bufchan_r ;
  assign \lvl1rbm-1_resbuf_r  = ((! \lvl1rbm-1_resbuf_bufchan_d [0]) || \lvl1rbm-1_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl1rbm-1_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl1rbm-1_resbuf_r )
        \lvl1rbm-1_resbuf_bufchan_d  <= \lvl1rbm-1_resbuf_d ;
  Pointer_QTree_Nat_t \lvl1rbm-1_resbuf_bufchan_buf ;
  assign \lvl1rbm-1_resbuf_bufchan_r  = (! \lvl1rbm-1_resbuf_bufchan_buf [0]);
  assign lizzieLet21_1_argbuf_d = (\lvl1rbm-1_resbuf_bufchan_buf [0] ? \lvl1rbm-1_resbuf_bufchan_buf  :
                                   \lvl1rbm-1_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl1rbm-1_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet21_1_argbuf_r && \lvl1rbm-1_resbuf_bufchan_buf [0]))
        \lvl1rbm-1_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet21_1_argbuf_r) && (! \lvl1rbm-1_resbuf_bufchan_buf [0])))
        \lvl1rbm-1_resbuf_bufchan_buf  <= \lvl1rbm-1_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl2rbn-2TupGo_1,TupGo) > [(lvl2rbn-2TupGogo_7,Go)] */
  assign \lvl2rbn-2TupGogo_7_d  = \lvl2rbn-2TupGo_1_d [0];
  assign \lvl2rbn-2TupGo_1_r  = \lvl2rbn-2TupGogo_7_r ;
  
  /* buf (Ty Go) : (lvl2rbn-2TupGogo_7,Go) > (go_7_1_argbuf,Go) */
  Go_t \lvl2rbn-2TupGogo_7_bufchan_d ;
  logic \lvl2rbn-2TupGogo_7_bufchan_r ;
  assign \lvl2rbn-2TupGogo_7_r  = ((! \lvl2rbn-2TupGogo_7_bufchan_d [0]) || \lvl2rbn-2TupGogo_7_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl2rbn-2TupGogo_7_bufchan_d  <= 1'd0;
    else
      if (\lvl2rbn-2TupGogo_7_r )
        \lvl2rbn-2TupGogo_7_bufchan_d  <= \lvl2rbn-2TupGogo_7_d ;
  Go_t \lvl2rbn-2TupGogo_7_bufchan_buf ;
  assign \lvl2rbn-2TupGogo_7_bufchan_r  = (! \lvl2rbn-2TupGogo_7_bufchan_buf [0]);
  assign go_7_1_argbuf_d = (\lvl2rbn-2TupGogo_7_bufchan_buf [0] ? \lvl2rbn-2TupGogo_7_bufchan_buf  :
                            \lvl2rbn-2TupGogo_7_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl2rbn-2TupGogo_7_bufchan_buf  <= 1'd0;
    else
      if ((go_7_1_argbuf_r && \lvl2rbn-2TupGogo_7_bufchan_buf [0]))
        \lvl2rbn-2TupGogo_7_bufchan_buf  <= 1'd0;
      else if (((! go_7_1_argbuf_r) && (! \lvl2rbn-2TupGogo_7_bufchan_buf [0])))
        \lvl2rbn-2TupGogo_7_bufchan_buf  <= \lvl2rbn-2TupGogo_7_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl2rbn-2_resbuf,Pointer_QTree_Nat) > (lizzieLet10_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl2rbn-2_resbuf_bufchan_d ;
  logic \lvl2rbn-2_resbuf_bufchan_r ;
  assign \lvl2rbn-2_resbuf_r  = ((! \lvl2rbn-2_resbuf_bufchan_d [0]) || \lvl2rbn-2_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl2rbn-2_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl2rbn-2_resbuf_r )
        \lvl2rbn-2_resbuf_bufchan_d  <= \lvl2rbn-2_resbuf_d ;
  Pointer_QTree_Nat_t \lvl2rbn-2_resbuf_bufchan_buf ;
  assign \lvl2rbn-2_resbuf_bufchan_r  = (! \lvl2rbn-2_resbuf_bufchan_buf [0]);
  assign lizzieLet10_1_argbuf_d = (\lvl2rbn-2_resbuf_bufchan_buf [0] ? \lvl2rbn-2_resbuf_bufchan_buf  :
                                   \lvl2rbn-2_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl2rbn-2_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet10_1_argbuf_r && \lvl2rbn-2_resbuf_bufchan_buf [0]))
        \lvl2rbn-2_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet10_1_argbuf_r) && (! \lvl2rbn-2_resbuf_bufchan_buf [0])))
        \lvl2rbn-2_resbuf_bufchan_buf  <= \lvl2rbn-2_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl3rbo-3TupGo_1,TupGo) > [(lvl3rbo-3TupGogo_8,Go)] */
  assign \lvl3rbo-3TupGogo_8_d  = \lvl3rbo-3TupGo_1_d [0];
  assign \lvl3rbo-3TupGo_1_r  = \lvl3rbo-3TupGogo_8_r ;
  
  /* buf (Ty Go) : (lvl3rbo-3TupGogo_8,Go) > (go_8_1_argbuf,Go) */
  Go_t \lvl3rbo-3TupGogo_8_bufchan_d ;
  logic \lvl3rbo-3TupGogo_8_bufchan_r ;
  assign \lvl3rbo-3TupGogo_8_r  = ((! \lvl3rbo-3TupGogo_8_bufchan_d [0]) || \lvl3rbo-3TupGogo_8_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl3rbo-3TupGogo_8_bufchan_d  <= 1'd0;
    else
      if (\lvl3rbo-3TupGogo_8_r )
        \lvl3rbo-3TupGogo_8_bufchan_d  <= \lvl3rbo-3TupGogo_8_d ;
  Go_t \lvl3rbo-3TupGogo_8_bufchan_buf ;
  assign \lvl3rbo-3TupGogo_8_bufchan_r  = (! \lvl3rbo-3TupGogo_8_bufchan_buf [0]);
  assign go_8_1_argbuf_d = (\lvl3rbo-3TupGogo_8_bufchan_buf [0] ? \lvl3rbo-3TupGogo_8_bufchan_buf  :
                            \lvl3rbo-3TupGogo_8_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl3rbo-3TupGogo_8_bufchan_buf  <= 1'd0;
    else
      if ((go_8_1_argbuf_r && \lvl3rbo-3TupGogo_8_bufchan_buf [0]))
        \lvl3rbo-3TupGogo_8_bufchan_buf  <= 1'd0;
      else if (((! go_8_1_argbuf_r) && (! \lvl3rbo-3TupGogo_8_bufchan_buf [0])))
        \lvl3rbo-3TupGogo_8_bufchan_buf  <= \lvl3rbo-3TupGogo_8_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl3rbo-3_resbuf,Pointer_QTree_Nat) > (lizzieLet9_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl3rbo-3_resbuf_bufchan_d ;
  logic \lvl3rbo-3_resbuf_bufchan_r ;
  assign \lvl3rbo-3_resbuf_r  = ((! \lvl3rbo-3_resbuf_bufchan_d [0]) || \lvl3rbo-3_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl3rbo-3_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl3rbo-3_resbuf_r )
        \lvl3rbo-3_resbuf_bufchan_d  <= \lvl3rbo-3_resbuf_d ;
  Pointer_QTree_Nat_t \lvl3rbo-3_resbuf_bufchan_buf ;
  assign \lvl3rbo-3_resbuf_bufchan_r  = (! \lvl3rbo-3_resbuf_bufchan_buf [0]);
  assign lizzieLet9_1_argbuf_d = (\lvl3rbo-3_resbuf_bufchan_buf [0] ? \lvl3rbo-3_resbuf_bufchan_buf  :
                                  \lvl3rbo-3_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl3rbo-3_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet9_1_argbuf_r && \lvl3rbo-3_resbuf_bufchan_buf [0]))
        \lvl3rbo-3_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet9_1_argbuf_r) && (! \lvl3rbo-3_resbuf_bufchan_buf [0])))
        \lvl3rbo-3_resbuf_bufchan_buf  <= \lvl3rbo-3_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl4rbp-4TupGo_1,TupGo) > [(lvl4rbp-4TupGogo_9,Go)] */
  assign \lvl4rbp-4TupGogo_9_d  = \lvl4rbp-4TupGo_1_d [0];
  assign \lvl4rbp-4TupGo_1_r  = \lvl4rbp-4TupGogo_9_r ;
  
  /* buf (Ty Go) : (lvl4rbp-4TupGogo_9,Go) > (go_9_1_argbuf,Go) */
  Go_t \lvl4rbp-4TupGogo_9_bufchan_d ;
  logic \lvl4rbp-4TupGogo_9_bufchan_r ;
  assign \lvl4rbp-4TupGogo_9_r  = ((! \lvl4rbp-4TupGogo_9_bufchan_d [0]) || \lvl4rbp-4TupGogo_9_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl4rbp-4TupGogo_9_bufchan_d  <= 1'd0;
    else
      if (\lvl4rbp-4TupGogo_9_r )
        \lvl4rbp-4TupGogo_9_bufchan_d  <= \lvl4rbp-4TupGogo_9_d ;
  Go_t \lvl4rbp-4TupGogo_9_bufchan_buf ;
  assign \lvl4rbp-4TupGogo_9_bufchan_r  = (! \lvl4rbp-4TupGogo_9_bufchan_buf [0]);
  assign go_9_1_argbuf_d = (\lvl4rbp-4TupGogo_9_bufchan_buf [0] ? \lvl4rbp-4TupGogo_9_bufchan_buf  :
                            \lvl4rbp-4TupGogo_9_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl4rbp-4TupGogo_9_bufchan_buf  <= 1'd0;
    else
      if ((go_9_1_argbuf_r && \lvl4rbp-4TupGogo_9_bufchan_buf [0]))
        \lvl4rbp-4TupGogo_9_bufchan_buf  <= 1'd0;
      else if (((! go_9_1_argbuf_r) && (! \lvl4rbp-4TupGogo_9_bufchan_buf [0])))
        \lvl4rbp-4TupGogo_9_bufchan_buf  <= \lvl4rbp-4TupGogo_9_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl4rbp-4_resbuf,Pointer_QTree_Nat) > (lizzieLet7_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl4rbp-4_resbuf_bufchan_d ;
  logic \lvl4rbp-4_resbuf_bufchan_r ;
  assign \lvl4rbp-4_resbuf_r  = ((! \lvl4rbp-4_resbuf_bufchan_d [0]) || \lvl4rbp-4_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl4rbp-4_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl4rbp-4_resbuf_r )
        \lvl4rbp-4_resbuf_bufchan_d  <= \lvl4rbp-4_resbuf_d ;
  Pointer_QTree_Nat_t \lvl4rbp-4_resbuf_bufchan_buf ;
  assign \lvl4rbp-4_resbuf_bufchan_r  = (! \lvl4rbp-4_resbuf_bufchan_buf [0]);
  assign lizzieLet7_1_argbuf_d = (\lvl4rbp-4_resbuf_bufchan_buf [0] ? \lvl4rbp-4_resbuf_bufchan_buf  :
                                  \lvl4rbp-4_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl4rbp-4_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet7_1_argbuf_r && \lvl4rbp-4_resbuf_bufchan_buf [0]))
        \lvl4rbp-4_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet7_1_argbuf_r) && (! \lvl4rbp-4_resbuf_bufchan_buf [0])))
        \lvl4rbp-4_resbuf_bufchan_buf  <= \lvl4rbp-4_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl5rbq-5TupGo_1,TupGo) > [(lvl5rbq-5TupGogo_10,Go)] */
  assign \lvl5rbq-5TupGogo_10_d  = \lvl5rbq-5TupGo_1_d [0];
  assign \lvl5rbq-5TupGo_1_r  = \lvl5rbq-5TupGogo_10_r ;
  
  /* buf (Ty Go) : (lvl5rbq-5TupGogo_10,Go) > (go_10_1_argbuf,Go) */
  Go_t \lvl5rbq-5TupGogo_10_bufchan_d ;
  logic \lvl5rbq-5TupGogo_10_bufchan_r ;
  assign \lvl5rbq-5TupGogo_10_r  = ((! \lvl5rbq-5TupGogo_10_bufchan_d [0]) || \lvl5rbq-5TupGogo_10_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl5rbq-5TupGogo_10_bufchan_d  <= 1'd0;
    else
      if (\lvl5rbq-5TupGogo_10_r )
        \lvl5rbq-5TupGogo_10_bufchan_d  <= \lvl5rbq-5TupGogo_10_d ;
  Go_t \lvl5rbq-5TupGogo_10_bufchan_buf ;
  assign \lvl5rbq-5TupGogo_10_bufchan_r  = (! \lvl5rbq-5TupGogo_10_bufchan_buf [0]);
  assign go_10_1_argbuf_d = (\lvl5rbq-5TupGogo_10_bufchan_buf [0] ? \lvl5rbq-5TupGogo_10_bufchan_buf  :
                             \lvl5rbq-5TupGogo_10_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl5rbq-5TupGogo_10_bufchan_buf  <= 1'd0;
    else
      if ((go_10_1_argbuf_r && \lvl5rbq-5TupGogo_10_bufchan_buf [0]))
        \lvl5rbq-5TupGogo_10_bufchan_buf  <= 1'd0;
      else if (((! go_10_1_argbuf_r) && (! \lvl5rbq-5TupGogo_10_bufchan_buf [0])))
        \lvl5rbq-5TupGogo_10_bufchan_buf  <= \lvl5rbq-5TupGogo_10_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl5rbq-5_resbuf,Pointer_QTree_Nat) > (lizzieLet3_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl5rbq-5_resbuf_bufchan_d ;
  logic \lvl5rbq-5_resbuf_bufchan_r ;
  assign \lvl5rbq-5_resbuf_r  = ((! \lvl5rbq-5_resbuf_bufchan_d [0]) || \lvl5rbq-5_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl5rbq-5_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl5rbq-5_resbuf_r )
        \lvl5rbq-5_resbuf_bufchan_d  <= \lvl5rbq-5_resbuf_d ;
  Pointer_QTree_Nat_t \lvl5rbq-5_resbuf_bufchan_buf ;
  assign \lvl5rbq-5_resbuf_bufchan_r  = (! \lvl5rbq-5_resbuf_bufchan_buf [0]);
  assign lizzieLet3_1_argbuf_d = (\lvl5rbq-5_resbuf_bufchan_buf [0] ? \lvl5rbq-5_resbuf_bufchan_buf  :
                                  \lvl5rbq-5_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl5rbq-5_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet3_1_argbuf_r && \lvl5rbq-5_resbuf_bufchan_buf [0]))
        \lvl5rbq-5_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet3_1_argbuf_r) && (! \lvl5rbq-5_resbuf_bufchan_buf [0])))
        \lvl5rbq-5_resbuf_bufchan_buf  <= \lvl5rbq-5_resbuf_bufchan_d ;
  
  /* mergectrl (Ty C5,Ty TupGo) : [(lvlrbl-0TupGo_1,TupGo),
                              (lvlrbl-0TupGo2,TupGo),
                              (lvlrbl-0TupGo3,TupGo),
                              (lvlrbl-0TupGo4,TupGo),
                              (lvlrbl-0TupGo5,TupGo)] > (lvlrbl-0_choice,C5) (lvlrbl-0_data,TupGo) */
  logic [4:0] \lvlrbl-0TupGo_1_select_d ;
  assign \lvlrbl-0TupGo_1_select_d  = ((| \lvlrbl-0TupGo_1_select_q ) ? \lvlrbl-0TupGo_1_select_q  :
                                       (\lvlrbl-0TupGo_1_d [0] ? 5'd1 :
                                        (\lvlrbl-0TupGo2_d [0] ? 5'd2 :
                                         (\lvlrbl-0TupGo3_d [0] ? 5'd4 :
                                          (\lvlrbl-0TupGo4_d [0] ? 5'd8 :
                                           (\lvlrbl-0TupGo5_d [0] ? 5'd16 :
                                            5'd0))))));
  logic [4:0] \lvlrbl-0TupGo_1_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0TupGo_1_select_q  <= 5'd0;
    else
      \lvlrbl-0TupGo_1_select_q  <= (\lvlrbl-0TupGo_1_done  ? 5'd0 :
                                     \lvlrbl-0TupGo_1_select_d );
  logic [1:0] \lvlrbl-0TupGo_1_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0TupGo_1_emit_q  <= 2'd0;
    else
      \lvlrbl-0TupGo_1_emit_q  <= (\lvlrbl-0TupGo_1_done  ? 2'd0 :
                                   \lvlrbl-0TupGo_1_emit_d );
  logic [1:0] \lvlrbl-0TupGo_1_emit_d ;
  assign \lvlrbl-0TupGo_1_emit_d  = (\lvlrbl-0TupGo_1_emit_q  | ({\lvlrbl-0_choice_d [0],
                                                                  \lvlrbl-0_data_d [0]} & {\lvlrbl-0_choice_r ,
                                                                                           \lvlrbl-0_data_r }));
  logic \lvlrbl-0TupGo_1_done ;
  assign \lvlrbl-0TupGo_1_done  = (& \lvlrbl-0TupGo_1_emit_d );
  assign {\lvlrbl-0TupGo5_r ,
          \lvlrbl-0TupGo4_r ,
          \lvlrbl-0TupGo3_r ,
          \lvlrbl-0TupGo2_r ,
          \lvlrbl-0TupGo_1_r } = (\lvlrbl-0TupGo_1_done  ? \lvlrbl-0TupGo_1_select_d  :
                                  5'd0);
  assign \lvlrbl-0_data_d  = ((\lvlrbl-0TupGo_1_select_d [0] && (! \lvlrbl-0TupGo_1_emit_q [0])) ? \lvlrbl-0TupGo_1_d  :
                              ((\lvlrbl-0TupGo_1_select_d [1] && (! \lvlrbl-0TupGo_1_emit_q [0])) ? \lvlrbl-0TupGo2_d  :
                               ((\lvlrbl-0TupGo_1_select_d [2] && (! \lvlrbl-0TupGo_1_emit_q [0])) ? \lvlrbl-0TupGo3_d  :
                                ((\lvlrbl-0TupGo_1_select_d [3] && (! \lvlrbl-0TupGo_1_emit_q [0])) ? \lvlrbl-0TupGo4_d  :
                                 ((\lvlrbl-0TupGo_1_select_d [4] && (! \lvlrbl-0TupGo_1_emit_q [0])) ? \lvlrbl-0TupGo5_d  :
                                  1'd0)))));
  assign \lvlrbl-0_choice_d  = ((\lvlrbl-0TupGo_1_select_d [0] && (! \lvlrbl-0TupGo_1_emit_q [1])) ? C1_5_dc(1'd1) :
                                ((\lvlrbl-0TupGo_1_select_d [1] && (! \lvlrbl-0TupGo_1_emit_q [1])) ? C2_5_dc(1'd1) :
                                 ((\lvlrbl-0TupGo_1_select_d [2] && (! \lvlrbl-0TupGo_1_emit_q [1])) ? C3_5_dc(1'd1) :
                                  ((\lvlrbl-0TupGo_1_select_d [3] && (! \lvlrbl-0TupGo_1_emit_q [1])) ? C4_5_dc(1'd1) :
                                   ((\lvlrbl-0TupGo_1_select_d [4] && (! \lvlrbl-0TupGo_1_emit_q [1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* dcon (Ty Nat,
      Dcon Zero) : [(lvlrbl-0TupGogo_11,Go)] > (go_11_1Zero,Nat) */
  assign go_11_1Zero_d = Zero_dc((& {\lvlrbl-0TupGogo_11_d [0]}), \lvlrbl-0TupGogo_11_d );
  assign {\lvlrbl-0TupGogo_11_r } = {1 {(go_11_1Zero_r && go_11_1Zero_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (lvlrbl-0_1,Pointer_Nat) > (lvlrbl-0_resbuf,Pointer_Nat) */
  Pointer_Nat_t \lvlrbl-0_1_bufchan_d ;
  logic \lvlrbl-0_1_bufchan_r ;
  assign \lvlrbl-0_1_r  = ((! \lvlrbl-0_1_bufchan_d [0]) || \lvlrbl-0_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_1_bufchan_d  <= {16'd0, 1'd0};
    else if (\lvlrbl-0_1_r ) \lvlrbl-0_1_bufchan_d  <= \lvlrbl-0_1_d ;
  Pointer_Nat_t \lvlrbl-0_1_bufchan_buf ;
  assign \lvlrbl-0_1_bufchan_r  = (! \lvlrbl-0_1_bufchan_buf [0]);
  assign \lvlrbl-0_resbuf_d  = (\lvlrbl-0_1_bufchan_buf [0] ? \lvlrbl-0_1_bufchan_buf  :
                                \lvlrbl-0_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_1_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\lvlrbl-0_resbuf_r  && \lvlrbl-0_1_bufchan_buf [0]))
        \lvlrbl-0_1_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \lvlrbl-0_resbuf_r ) && (! \lvlrbl-0_1_bufchan_buf [0])))
        \lvlrbl-0_1_bufchan_buf  <= \lvlrbl-0_1_bufchan_d ;
  
  /* buf (Ty Pointer_Nat) : (lvlrbl-0_2,Pointer_Nat) > (lvlrbl-0_2_argbuf,Pointer_Nat) */
  Pointer_Nat_t \lvlrbl-0_2_bufchan_d ;
  logic \lvlrbl-0_2_bufchan_r ;
  assign \lvlrbl-0_2_r  = ((! \lvlrbl-0_2_bufchan_d [0]) || \lvlrbl-0_2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_2_bufchan_d  <= {16'd0, 1'd0};
    else if (\lvlrbl-0_2_r ) \lvlrbl-0_2_bufchan_d  <= \lvlrbl-0_2_d ;
  Pointer_Nat_t \lvlrbl-0_2_bufchan_buf ;
  assign \lvlrbl-0_2_bufchan_r  = (! \lvlrbl-0_2_bufchan_buf [0]);
  assign \lvlrbl-0_2_argbuf_d  = (\lvlrbl-0_2_bufchan_buf [0] ? \lvlrbl-0_2_bufchan_buf  :
                                  \lvlrbl-0_2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_2_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\lvlrbl-0_2_argbuf_r  && \lvlrbl-0_2_bufchan_buf [0]))
        \lvlrbl-0_2_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \lvlrbl-0_2_argbuf_r ) && (! \lvlrbl-0_2_bufchan_buf [0])))
        \lvlrbl-0_2_bufchan_buf  <= \lvlrbl-0_2_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrbl-0_2_argbuf,Pointer_Nat)] > (lizzieLet26_1QVal_Nat,QTree_Nat) */
  assign lizzieLet26_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrbl-0_2_argbuf_d [0]}), \lvlrbl-0_2_argbuf_d );
  assign {\lvlrbl-0_2_argbuf_r } = {1 {(lizzieLet26_1QVal_Nat_r && lizzieLet26_1QVal_Nat_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (lvlrbl-0_3,Pointer_Nat) > (lvlrbl-0_3_argbuf,Pointer_Nat) */
  Pointer_Nat_t \lvlrbl-0_3_bufchan_d ;
  logic \lvlrbl-0_3_bufchan_r ;
  assign \lvlrbl-0_3_r  = ((! \lvlrbl-0_3_bufchan_d [0]) || \lvlrbl-0_3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_3_bufchan_d  <= {16'd0, 1'd0};
    else if (\lvlrbl-0_3_r ) \lvlrbl-0_3_bufchan_d  <= \lvlrbl-0_3_d ;
  Pointer_Nat_t \lvlrbl-0_3_bufchan_buf ;
  assign \lvlrbl-0_3_bufchan_r  = (! \lvlrbl-0_3_bufchan_buf [0]);
  assign \lvlrbl-0_3_argbuf_d  = (\lvlrbl-0_3_bufchan_buf [0] ? \lvlrbl-0_3_bufchan_buf  :
                                  \lvlrbl-0_3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_3_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\lvlrbl-0_3_argbuf_r  && \lvlrbl-0_3_bufchan_buf [0]))
        \lvlrbl-0_3_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \lvlrbl-0_3_argbuf_r ) && (! \lvlrbl-0_3_bufchan_buf [0])))
        \lvlrbl-0_3_bufchan_buf  <= \lvlrbl-0_3_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrbl-0_3_argbuf,Pointer_Nat)] > (lizzieLet32_1QVal_Nat,QTree_Nat) */
  assign lizzieLet32_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrbl-0_3_argbuf_d [0]}), \lvlrbl-0_3_argbuf_d );
  assign {\lvlrbl-0_3_argbuf_r } = {1 {(lizzieLet32_1QVal_Nat_r && lizzieLet32_1QVal_Nat_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (lvlrbl-0_4,Pointer_Nat) > (lvlrbl-0_4_argbuf,Pointer_Nat) */
  Pointer_Nat_t \lvlrbl-0_4_bufchan_d ;
  logic \lvlrbl-0_4_bufchan_r ;
  assign \lvlrbl-0_4_r  = ((! \lvlrbl-0_4_bufchan_d [0]) || \lvlrbl-0_4_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_4_bufchan_d  <= {16'd0, 1'd0};
    else if (\lvlrbl-0_4_r ) \lvlrbl-0_4_bufchan_d  <= \lvlrbl-0_4_d ;
  Pointer_Nat_t \lvlrbl-0_4_bufchan_buf ;
  assign \lvlrbl-0_4_bufchan_r  = (! \lvlrbl-0_4_bufchan_buf [0]);
  assign \lvlrbl-0_4_argbuf_d  = (\lvlrbl-0_4_bufchan_buf [0] ? \lvlrbl-0_4_bufchan_buf  :
                                  \lvlrbl-0_4_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_4_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\lvlrbl-0_4_argbuf_r  && \lvlrbl-0_4_bufchan_buf [0]))
        \lvlrbl-0_4_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \lvlrbl-0_4_argbuf_r ) && (! \lvlrbl-0_4_bufchan_buf [0])))
        \lvlrbl-0_4_bufchan_buf  <= \lvlrbl-0_4_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrbl-0_4_argbuf,Pointer_Nat)] > (lizzieLet30_1QVal_Nat,QTree_Nat) */
  assign lizzieLet30_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrbl-0_4_argbuf_d [0]}), \lvlrbl-0_4_argbuf_d );
  assign {\lvlrbl-0_4_argbuf_r } = {1 {(lizzieLet30_1QVal_Nat_r && lizzieLet30_1QVal_Nat_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (lvlrbl-0_5,Pointer_Nat) > (lvlrbl-0_5_argbuf,Pointer_Nat) */
  Pointer_Nat_t \lvlrbl-0_5_bufchan_d ;
  logic \lvlrbl-0_5_bufchan_r ;
  assign \lvlrbl-0_5_r  = ((! \lvlrbl-0_5_bufchan_d [0]) || \lvlrbl-0_5_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_5_bufchan_d  <= {16'd0, 1'd0};
    else if (\lvlrbl-0_5_r ) \lvlrbl-0_5_bufchan_d  <= \lvlrbl-0_5_d ;
  Pointer_Nat_t \lvlrbl-0_5_bufchan_buf ;
  assign \lvlrbl-0_5_bufchan_r  = (! \lvlrbl-0_5_bufchan_buf [0]);
  assign \lvlrbl-0_5_argbuf_d  = (\lvlrbl-0_5_bufchan_buf [0] ? \lvlrbl-0_5_bufchan_buf  :
                                  \lvlrbl-0_5_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvlrbl-0_5_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\lvlrbl-0_5_argbuf_r  && \lvlrbl-0_5_bufchan_buf [0]))
        \lvlrbl-0_5_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \lvlrbl-0_5_argbuf_r ) && (! \lvlrbl-0_5_bufchan_buf [0])))
        \lvlrbl-0_5_bufchan_buf  <= \lvlrbl-0_5_bufchan_d ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrbl-0_5_argbuf,Pointer_Nat)] > (lizzieLet28_1QVal_Nat,QTree_Nat) */
  assign lizzieLet28_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrbl-0_5_argbuf_d [0]}), \lvlrbl-0_5_argbuf_d );
  assign {\lvlrbl-0_5_argbuf_r } = {1 {(lizzieLet28_1QVal_Nat_r && lizzieLet28_1QVal_Nat_d[0])}};
  
  /* demux (Ty C5,
       Ty Pointer_Nat) : (lvlrbl-0_choice,C5) (writeNatlizzieLet37_1_argbuf_rwb,Pointer_Nat) > [(lvlrbl-0_1,Pointer_Nat),
                                                                                                (lvlrbl-0_2,Pointer_Nat),
                                                                                                (lvlrbl-0_3,Pointer_Nat),
                                                                                                (lvlrbl-0_4,Pointer_Nat),
                                                                                                (lvlrbl-0_5,Pointer_Nat)] */
  logic [4:0] writeNatlizzieLet37_1_argbuf_rwb_onehotd;
  always_comb
    if ((\lvlrbl-0_choice_d [0] && writeNatlizzieLet37_1_argbuf_rwb_d[0]))
      unique case (\lvlrbl-0_choice_d [3:1])
        3'd0: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd1;
        3'd1: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd2;
        3'd2: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd4;
        3'd3: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd8;
        3'd4: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd16;
        default: writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd0;
      endcase
    else writeNatlizzieLet37_1_argbuf_rwb_onehotd = 5'd0;
  assign \lvlrbl-0_1_d  = {writeNatlizzieLet37_1_argbuf_rwb_d[16:1],
                           writeNatlizzieLet37_1_argbuf_rwb_onehotd[0]};
  assign \lvlrbl-0_2_d  = {writeNatlizzieLet37_1_argbuf_rwb_d[16:1],
                           writeNatlizzieLet37_1_argbuf_rwb_onehotd[1]};
  assign \lvlrbl-0_3_d  = {writeNatlizzieLet37_1_argbuf_rwb_d[16:1],
                           writeNatlizzieLet37_1_argbuf_rwb_onehotd[2]};
  assign \lvlrbl-0_4_d  = {writeNatlizzieLet37_1_argbuf_rwb_d[16:1],
                           writeNatlizzieLet37_1_argbuf_rwb_onehotd[3]};
  assign \lvlrbl-0_5_d  = {writeNatlizzieLet37_1_argbuf_rwb_d[16:1],
                           writeNatlizzieLet37_1_argbuf_rwb_onehotd[4]};
  assign writeNatlizzieLet37_1_argbuf_rwb_r = (| (writeNatlizzieLet37_1_argbuf_rwb_onehotd & {\lvlrbl-0_5_r ,
                                                                                              \lvlrbl-0_4_r ,
                                                                                              \lvlrbl-0_3_r ,
                                                                                              \lvlrbl-0_2_r ,
                                                                                              \lvlrbl-0_1_r }));
  assign \lvlrbl-0_choice_r  = writeNatlizzieLet37_1_argbuf_rwb_r;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvlrbl-0_data,TupGo) > [(lvlrbl-0TupGogo_11,Go)] */
  assign \lvlrbl-0TupGogo_11_d  = \lvlrbl-0_data_d [0];
  assign \lvlrbl-0_data_r  = \lvlrbl-0TupGogo_11_r ;
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrbl-0_resbuf,Pointer_Nat)] > (lizzieLet34_1QVal_Nat,QTree_Nat) */
  assign lizzieLet34_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrbl-0_resbuf_d [0]}), \lvlrbl-0_resbuf_d );
  assign {\lvlrbl-0_resbuf_r } = {1 {(lizzieLet34_1QVal_Nat_r && lizzieLet34_1QVal_Nat_d[0])}};
  
  /* buf (Ty Pointer_QTree_Bool) : (m1a86_goMux_mux,Pointer_QTree_Bool) > (m1a86_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m1a86_goMux_mux_bufchan_d;
  logic m1a86_goMux_mux_bufchan_r;
  assign m1a86_goMux_mux_r = ((! m1a86_goMux_mux_bufchan_d[0]) || m1a86_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a86_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (m1a86_goMux_mux_r)
        m1a86_goMux_mux_bufchan_d <= m1a86_goMux_mux_d;
  Pointer_QTree_Bool_t m1a86_goMux_mux_bufchan_buf;
  assign m1a86_goMux_mux_bufchan_r = (! m1a86_goMux_mux_bufchan_buf[0]);
  assign m1a86_1_argbuf_d = (m1a86_goMux_mux_bufchan_buf[0] ? m1a86_goMux_mux_bufchan_buf :
                             m1a86_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a86_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m1a86_1_argbuf_r && m1a86_goMux_mux_bufchan_buf[0]))
        m1a86_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m1a86_1_argbuf_r) && (! m1a86_goMux_mux_bufchan_buf[0])))
        m1a86_goMux_mux_bufchan_buf <= m1a86_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (m2a87_goMux_mux,Pointer_QTree_Bool) > (m2a87_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2a87_goMux_mux_bufchan_d;
  logic m2a87_goMux_mux_bufchan_r;
  assign m2a87_goMux_mux_r = ((! m2a87_goMux_mux_bufchan_d[0]) || m2a87_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a87_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (m2a87_goMux_mux_r)
        m2a87_goMux_mux_bufchan_d <= m2a87_goMux_mux_d;
  Pointer_QTree_Bool_t m2a87_goMux_mux_bufchan_buf;
  assign m2a87_goMux_mux_bufchan_r = (! m2a87_goMux_mux_bufchan_buf[0]);
  assign m2a87_1_argbuf_d = (m2a87_goMux_mux_bufchan_buf[0] ? m2a87_goMux_mux_bufchan_buf :
                             m2a87_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a87_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2a87_1_argbuf_r && m2a87_goMux_mux_bufchan_buf[0]))
        m2a87_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2a87_1_argbuf_r) && (! m2a87_goMux_mux_bufchan_buf[0])))
        m2a87_goMux_mux_bufchan_buf <= m2a87_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q1a8j_3_destruct,Pointer_QTree_Bool) > (q1a8j_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1a8j_3_destruct_bufchan_d;
  logic q1a8j_3_destruct_bufchan_r;
  assign q1a8j_3_destruct_r = ((! q1a8j_3_destruct_bufchan_d[0]) || q1a8j_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8j_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8j_3_destruct_r)
        q1a8j_3_destruct_bufchan_d <= q1a8j_3_destruct_d;
  Pointer_QTree_Bool_t q1a8j_3_destruct_bufchan_buf;
  assign q1a8j_3_destruct_bufchan_r = (! q1a8j_3_destruct_bufchan_buf[0]);
  assign q1a8j_3_1_argbuf_d = (q1a8j_3_destruct_bufchan_buf[0] ? q1a8j_3_destruct_bufchan_buf :
                               q1a8j_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8j_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8j_3_1_argbuf_r && q1a8j_3_destruct_bufchan_buf[0]))
        q1a8j_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8j_3_1_argbuf_r) && (! q1a8j_3_destruct_bufchan_buf[0])))
        q1a8j_3_destruct_bufchan_buf <= q1a8j_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2a8k_2_destruct,Pointer_QTree_Bool) > (q2a8k_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2a8k_2_destruct_bufchan_d;
  logic q2a8k_2_destruct_bufchan_r;
  assign q2a8k_2_destruct_r = ((! q2a8k_2_destruct_bufchan_d[0]) || q2a8k_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8k_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8k_2_destruct_r)
        q2a8k_2_destruct_bufchan_d <= q2a8k_2_destruct_d;
  Pointer_QTree_Bool_t q2a8k_2_destruct_bufchan_buf;
  assign q2a8k_2_destruct_bufchan_r = (! q2a8k_2_destruct_bufchan_buf[0]);
  assign q2a8k_2_1_argbuf_d = (q2a8k_2_destruct_bufchan_buf[0] ? q2a8k_2_destruct_bufchan_buf :
                               q2a8k_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8k_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8k_2_1_argbuf_r && q2a8k_2_destruct_bufchan_buf[0]))
        q2a8k_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8k_2_1_argbuf_r) && (! q2a8k_2_destruct_bufchan_buf[0])))
        q2a8k_2_destruct_bufchan_buf <= q2a8k_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3a8l_1_destruct,Pointer_QTree_Bool) > (q3a8l_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3a8l_1_destruct_bufchan_d;
  logic q3a8l_1_destruct_bufchan_r;
  assign q3a8l_1_destruct_r = ((! q3a8l_1_destruct_bufchan_d[0]) || q3a8l_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8l_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8l_1_destruct_r)
        q3a8l_1_destruct_bufchan_d <= q3a8l_1_destruct_d;
  Pointer_QTree_Bool_t q3a8l_1_destruct_bufchan_buf;
  assign q3a8l_1_destruct_bufchan_r = (! q3a8l_1_destruct_bufchan_buf[0]);
  assign q3a8l_1_1_argbuf_d = (q3a8l_1_destruct_bufchan_buf[0] ? q3a8l_1_destruct_bufchan_buf :
                               q3a8l_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8l_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8l_1_1_argbuf_r && q3a8l_1_destruct_bufchan_buf[0]))
        q3a8l_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8l_1_1_argbuf_r) && (! q3a8l_1_destruct_bufchan_buf[0])))
        q3a8l_1_destruct_bufchan_buf <= q3a8l_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q4a8s_goMux_mux,Pointer_QTree_Bool) > (q4a8s_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q4a8s_goMux_mux_bufchan_d;
  logic q4a8s_goMux_mux_bufchan_r;
  assign q4a8s_goMux_mux_r = ((! q4a8s_goMux_mux_bufchan_d[0]) || q4a8s_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8s_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (q4a8s_goMux_mux_r)
        q4a8s_goMux_mux_bufchan_d <= q4a8s_goMux_mux_d;
  Pointer_QTree_Bool_t q4a8s_goMux_mux_bufchan_buf;
  assign q4a8s_goMux_mux_bufchan_r = (! q4a8s_goMux_mux_bufchan_buf[0]);
  assign q4a8s_1_argbuf_d = (q4a8s_goMux_mux_bufchan_buf[0] ? q4a8s_goMux_mux_bufchan_buf :
                             q4a8s_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8s_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q4a8s_1_argbuf_r && q4a8s_goMux_mux_bufchan_buf[0]))
        q4a8s_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q4a8s_1_argbuf_r) && (! q4a8s_goMux_mux_bufchan_buf[0])))
        q4a8s_goMux_mux_bufchan_buf <= q4a8s_goMux_mux_bufchan_d;
  
  /* buf (Ty CTf''''''''_f''''''''_Bool) : (readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf,CTf''''''''_f''''''''_Bool) > (readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb,CTf''''''''_f''''''''_Bool) */
  \CTf''''''''_f''''''''_Bool_t  \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d ;
  logic \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_r ;
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_r  = ((! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d [0]) || \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d  <= {67'd0,
                                                                                1'd0};
    else
      if (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_r )
        \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d  <= \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_d ;
  \CTf''''''''_f''''''''_Bool_t  \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf ;
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_r  = (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf [0]);
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d  = (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf [0] ? \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf  :
                                                                              \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf  <= {67'd0,
                                                                                  1'd0};
    else
      if ((\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_r  && \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf [0]))
        \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf  <= {67'd0,
                                                                                    1'd0};
      else if (((! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_r ) && (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf [0])))
        \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_buf  <= \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_bufchan_d ;
  
  /* fork (Ty CTf''''''''_f''''''''_Bool) : (readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb,CTf''''''''_f''''''''_Bool) > [(lizzieLet43_1,CTf''''''''_f''''''''_Bool),
                                                                                                                                     (lizzieLet43_2,CTf''''''''_f''''''''_Bool),
                                                                                                                                     (lizzieLet43_3,CTf''''''''_f''''''''_Bool),
                                                                                                                                     (lizzieLet43_4,CTf''''''''_f''''''''_Bool)] */
  logic [3:0] \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted ;
  logic [3:0] \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_done ;
  assign lizzieLet43_1_d = {\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted [0]))};
  assign lizzieLet43_2_d = {\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted [1]))};
  assign lizzieLet43_3_d = {\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted [2]))};
  assign lizzieLet43_4_d = {\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [67:1],
                            (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted [3]))};
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_done  = (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted  | ({lizzieLet43_4_d[0],
                                                                                                                                                             lizzieLet43_3_d[0],
                                                                                                                                                             lizzieLet43_2_d[0],
                                                                                                                                                             lizzieLet43_1_d[0]} & {lizzieLet43_4_r,
                                                                                                                                                                                    lizzieLet43_3_r,
                                                                                                                                                                                    lizzieLet43_2_r,
                                                                                                                                                                                    lizzieLet43_1_r}));
  assign \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_r  = (& \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted  <= 4'd0;
    else
      \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_emitted  <= (\readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_r  ? 4'd0 :
                                                                                  \readPointer_CTf''''''''_f''''''''_Boolscfarg_0_1_1_argbuf_rwb_done );
  
  /* buf (Ty CTf) : (readPointer_CTfscfarg_0_1_argbuf,CTf) > (readPointer_CTfscfarg_0_1_argbuf_rwb,CTf) */
  CTf_t readPointer_CTfscfarg_0_1_argbuf_bufchan_d;
  logic readPointer_CTfscfarg_0_1_argbuf_bufchan_r;
  assign readPointer_CTfscfarg_0_1_argbuf_r = ((! readPointer_CTfscfarg_0_1_argbuf_bufchan_d[0]) || readPointer_CTfscfarg_0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_bufchan_d <= {115'd0, 1'd0};
    else
      if (readPointer_CTfscfarg_0_1_argbuf_r)
        readPointer_CTfscfarg_0_1_argbuf_bufchan_d <= readPointer_CTfscfarg_0_1_argbuf_d;
  CTf_t readPointer_CTfscfarg_0_1_argbuf_bufchan_buf;
  assign readPointer_CTfscfarg_0_1_argbuf_bufchan_r = (! readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0]);
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_d = (readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0] ? readPointer_CTfscfarg_0_1_argbuf_bufchan_buf :
                                                   readPointer_CTfscfarg_0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((readPointer_CTfscfarg_0_1_argbuf_rwb_r && readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0]))
        readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= {115'd0, 1'd0};
      else if (((! readPointer_CTfscfarg_0_1_argbuf_rwb_r) && (! readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0])))
        readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= readPointer_CTfscfarg_0_1_argbuf_bufchan_d;
  
  /* fork (Ty CTf) : (readPointer_CTfscfarg_0_1_argbuf_rwb,CTf) > [(lizzieLet38_1,CTf),
                                                              (lizzieLet38_2,CTf),
                                                              (lizzieLet38_3,CTf),
                                                              (lizzieLet38_4,CTf)] */
  logic [3:0] readPointer_CTfscfarg_0_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CTfscfarg_0_1_argbuf_rwb_done;
  assign lizzieLet38_1_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet38_2_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet38_3_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet38_4_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_done = (readPointer_CTfscfarg_0_1_argbuf_rwb_emitted | ({lizzieLet38_4_d[0],
                                                                                                       lizzieLet38_3_d[0],
                                                                                                       lizzieLet38_2_d[0],
                                                                                                       lizzieLet38_1_d[0]} & {lizzieLet38_4_r,
                                                                                                                              lizzieLet38_3_r,
                                                                                                                              lizzieLet38_2_r,
                                                                                                                              lizzieLet38_1_r}));
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_r = (& readPointer_CTfscfarg_0_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CTfscfarg_0_1_argbuf_rwb_emitted <= (readPointer_CTfscfarg_0_1_argbuf_rwb_r ? 4'd0 :
                                                       readPointer_CTfscfarg_0_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm1a86_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm1a86_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm1a86_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm1a86_1_argbuf_r = ((! readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm1a86_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm1a86_1_argbuf_r)
        readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d <= readPointer_QTree_Boolm1a86_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm1a86_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm1a86_1_argbuf_rwb_d = (readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm1a86_1_argbuf_rwb_r && readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm1a86_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm1a86_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm1a86_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolm1a86_1_argbuf_rwb,QTree_Bool) > [(lizzieLet0_1,QTree_Bool),
                                                                                (lizzieLet0_2,QTree_Bool),
                                                                                (lizzieLet0_3,QTree_Bool),
                                                                                (lizzieLet0_4,QTree_Bool),
                                                                                (lizzieLet0_5,QTree_Bool)] */
  logic [4:0] readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted;
  logic [4:0] readPointer_QTree_Boolm1a86_1_argbuf_rwb_done;
  assign lizzieLet0_1_d = {readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet0_2_d = {readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet0_3_d = {readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet0_4_d = {readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet0_5_d = {readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1a86_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted[4]))};
  assign readPointer_QTree_Boolm1a86_1_argbuf_rwb_done = (readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted | ({lizzieLet0_5_d[0],
                                                                                                               lizzieLet0_4_d[0],
                                                                                                               lizzieLet0_3_d[0],
                                                                                                               lizzieLet0_2_d[0],
                                                                                                               lizzieLet0_1_d[0]} & {lizzieLet0_5_r,
                                                                                                                                     lizzieLet0_4_r,
                                                                                                                                     lizzieLet0_3_r,
                                                                                                                                     lizzieLet0_2_r,
                                                                                                                                     lizzieLet0_1_r}));
  assign readPointer_QTree_Boolm1a86_1_argbuf_rwb_r = (& readPointer_QTree_Boolm1a86_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted <= 5'd0;
    else
      readPointer_QTree_Boolm1a86_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolm1a86_1_argbuf_rwb_r ? 5'd0 :
                                                           readPointer_QTree_Boolm1a86_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm2a87_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm2a87_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm2a87_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm2a87_1_argbuf_r = ((! readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm2a87_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm2a87_1_argbuf_r)
        readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d <= readPointer_QTree_Boolm2a87_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm2a87_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm2a87_1_argbuf_rwb_d = (readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm2a87_1_argbuf_rwb_r && readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm2a87_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm2a87_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm2a87_1_argbuf_bufchan_d;
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolq4a8s_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolq4a8s_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolq4a8s_1_argbuf_r = ((! readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolq4a8s_1_argbuf_r)
        readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d <= readPointer_QTree_Boolq4a8s_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_r = (! readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d = (readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolq4a8s_1_argbuf_rwb_r && readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolq4a8s_1_argbuf_rwb_r) && (! readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_buf <= readPointer_QTree_Boolq4a8s_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolq4a8s_1_argbuf_rwb,QTree_Bool) > [(lizzieLet19_1,QTree_Bool),
                                                                                (lizzieLet19_2,QTree_Bool),
                                                                                (lizzieLet19_3,QTree_Bool),
                                                                                (lizzieLet19_4,QTree_Bool)] */
  logic [3:0] readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_QTree_Boolq4a8s_1_argbuf_rwb_done;
  assign lizzieLet19_1_d = {readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet19_2_d = {readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet19_3_d = {readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet19_4_d = {readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[66:1],
                            (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted[3]))};
  assign readPointer_QTree_Boolq4a8s_1_argbuf_rwb_done = (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted | ({lizzieLet19_4_d[0],
                                                                                                               lizzieLet19_3_d[0],
                                                                                                               lizzieLet19_2_d[0],
                                                                                                               lizzieLet19_1_d[0]} & {lizzieLet19_4_r,
                                                                                                                                      lizzieLet19_3_r,
                                                                                                                                      lizzieLet19_2_r,
                                                                                                                                      lizzieLet19_1_r}));
  assign readPointer_QTree_Boolq4a8s_1_argbuf_rwb_r = (& readPointer_QTree_Boolq4a8s_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_QTree_Boolq4a8s_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolq4a8s_1_argbuf_rwb_r ? 4'd0 :
                                                           readPointer_QTree_Boolq4a8s_1_argbuf_rwb_done);
  
  /* buf (Ty Pointer_CTf) : (sc_0_5_destruct,Pointer_CTf) > (sc_0_5_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t sc_0_5_destruct_bufchan_d;
  logic sc_0_5_destruct_bufchan_r;
  assign sc_0_5_destruct_r = ((! sc_0_5_destruct_bufchan_d[0]) || sc_0_5_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_5_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_5_destruct_r)
        sc_0_5_destruct_bufchan_d <= sc_0_5_destruct_d;
  Pointer_CTf_t sc_0_5_destruct_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (sc_0_9_destruct,Pointer_CTf''''''''_f''''''''_Bool) > (sc_0_9_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_9_destruct_bufchan_d;
  logic sc_0_9_destruct_bufchan_r;
  assign sc_0_9_destruct_r = ((! sc_0_9_destruct_bufchan_d[0]) || sc_0_9_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_9_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_9_destruct_r)
        sc_0_9_destruct_bufchan_d <= sc_0_9_destruct_d;
  \Pointer_CTf''''''''_f''''''''_Bool_t  sc_0_9_destruct_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (scfarg_0_1_goMux_mux,Pointer_CTf''''''''_f''''''''_Bool) > (scfarg_0_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  scfarg_0_1_goMux_mux_bufchan_d;
  logic scfarg_0_1_goMux_mux_bufchan_r;
  assign scfarg_0_1_goMux_mux_r = ((! scfarg_0_1_goMux_mux_bufchan_d[0]) || scfarg_0_1_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_1_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_1_goMux_mux_r)
        scfarg_0_1_goMux_mux_bufchan_d <= scfarg_0_1_goMux_mux_d;
  \Pointer_CTf''''''''_f''''''''_Bool_t  scfarg_0_1_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTf) : (scfarg_0_goMux_mux,Pointer_CTf) > (scfarg_0_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t scfarg_0_goMux_mux_bufchan_d;
  logic scfarg_0_goMux_mux_bufchan_r;
  assign scfarg_0_goMux_mux_r = ((! scfarg_0_goMux_mux_bufchan_d[0]) || scfarg_0_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) scfarg_0_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_goMux_mux_r)
        scfarg_0_goMux_mux_bufchan_d <= scfarg_0_goMux_mux_d;
  Pointer_CTf_t scfarg_0_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty Pointer_QTree_Bool) : (t1a8o_3_destruct,Pointer_QTree_Bool) > (t1a8o_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t1a8o_3_destruct_bufchan_d;
  logic t1a8o_3_destruct_bufchan_r;
  assign t1a8o_3_destruct_r = ((! t1a8o_3_destruct_bufchan_d[0]) || t1a8o_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8o_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t1a8o_3_destruct_r)
        t1a8o_3_destruct_bufchan_d <= t1a8o_3_destruct_d;
  Pointer_QTree_Bool_t t1a8o_3_destruct_bufchan_buf;
  assign t1a8o_3_destruct_bufchan_r = (! t1a8o_3_destruct_bufchan_buf[0]);
  assign t1a8o_3_1_argbuf_d = (t1a8o_3_destruct_bufchan_buf[0] ? t1a8o_3_destruct_bufchan_buf :
                               t1a8o_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8o_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t1a8o_3_1_argbuf_r && t1a8o_3_destruct_bufchan_buf[0]))
        t1a8o_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t1a8o_3_1_argbuf_r) && (! t1a8o_3_destruct_bufchan_buf[0])))
        t1a8o_3_destruct_bufchan_buf <= t1a8o_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t2a8p_2_destruct,Pointer_QTree_Bool) > (t2a8p_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t2a8p_2_destruct_bufchan_d;
  logic t2a8p_2_destruct_bufchan_r;
  assign t2a8p_2_destruct_r = ((! t2a8p_2_destruct_bufchan_d[0]) || t2a8p_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8p_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t2a8p_2_destruct_r)
        t2a8p_2_destruct_bufchan_d <= t2a8p_2_destruct_d;
  Pointer_QTree_Bool_t t2a8p_2_destruct_bufchan_buf;
  assign t2a8p_2_destruct_bufchan_r = (! t2a8p_2_destruct_bufchan_buf[0]);
  assign t2a8p_2_1_argbuf_d = (t2a8p_2_destruct_bufchan_buf[0] ? t2a8p_2_destruct_bufchan_buf :
                               t2a8p_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8p_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t2a8p_2_1_argbuf_r && t2a8p_2_destruct_bufchan_buf[0]))
        t2a8p_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t2a8p_2_1_argbuf_r) && (! t2a8p_2_destruct_bufchan_buf[0])))
        t2a8p_2_destruct_bufchan_buf <= t2a8p_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t3a8q_1_destruct,Pointer_QTree_Bool) > (t3a8q_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t3a8q_1_destruct_bufchan_d;
  logic t3a8q_1_destruct_bufchan_r;
  assign t3a8q_1_destruct_r = ((! t3a8q_1_destruct_bufchan_d[0]) || t3a8q_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8q_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t3a8q_1_destruct_r)
        t3a8q_1_destruct_bufchan_d <= t3a8q_1_destruct_d;
  Pointer_QTree_Bool_t t3a8q_1_destruct_bufchan_buf;
  assign t3a8q_1_destruct_bufchan_r = (! t3a8q_1_destruct_bufchan_buf[0]);
  assign t3a8q_1_1_argbuf_d = (t3a8q_1_destruct_bufchan_buf[0] ? t3a8q_1_destruct_bufchan_buf :
                               t3a8q_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8q_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t3a8q_1_1_argbuf_r && t3a8q_1_destruct_bufchan_buf[0]))
        t3a8q_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t3a8q_1_1_argbuf_r) && (! t3a8q_1_destruct_bufchan_buf[0])))
        t3a8q_1_destruct_bufchan_buf <= t3a8q_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (t4a8r_destruct,Pointer_QTree_Bool) > (t4a8r_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t t4a8r_destruct_bufchan_d;
  logic t4a8r_destruct_bufchan_r;
  assign t4a8r_destruct_r = ((! t4a8r_destruct_bufchan_d[0]) || t4a8r_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8r_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t4a8r_destruct_r) t4a8r_destruct_bufchan_d <= t4a8r_destruct_d;
  Pointer_QTree_Bool_t t4a8r_destruct_bufchan_buf;
  assign t4a8r_destruct_bufchan_r = (! t4a8r_destruct_bufchan_buf[0]);
  assign t4a8r_1_argbuf_d = (t4a8r_destruct_bufchan_buf[0] ? t4a8r_destruct_bufchan_buf :
                             t4a8r_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8r_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t4a8r_1_argbuf_r && t4a8r_destruct_bufchan_buf[0]))
        t4a8r_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t4a8r_1_argbuf_r) && (! t4a8r_destruct_bufchan_buf[0])))
        t4a8r_destruct_bufchan_buf <= t4a8r_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (tla89_destruct,Pointer_QTree_Bool) > (tla89_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t tla89_destruct_bufchan_d;
  logic tla89_destruct_bufchan_r;
  assign tla89_destruct_r = ((! tla89_destruct_bufchan_d[0]) || tla89_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tla89_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (tla89_destruct_r) tla89_destruct_bufchan_d <= tla89_destruct_d;
  Pointer_QTree_Bool_t tla89_destruct_bufchan_buf;
  assign tla89_destruct_bufchan_r = (! tla89_destruct_bufchan_buf[0]);
  assign tla89_1_argbuf_d = (tla89_destruct_bufchan_buf[0] ? tla89_destruct_bufchan_buf :
                             tla89_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tla89_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((tla89_1_argbuf_r && tla89_destruct_bufchan_buf[0]))
        tla89_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! tla89_1_argbuf_r) && (! tla89_destruct_bufchan_buf[0])))
        tla89_destruct_bufchan_buf <= tla89_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (tla8u_3_destruct,Pointer_QTree_Bool) > (tla8u_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t tla8u_3_destruct_bufchan_d;
  logic tla8u_3_destruct_bufchan_r;
  assign tla8u_3_destruct_r = ((! tla8u_3_destruct_bufchan_d[0]) || tla8u_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tla8u_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (tla8u_3_destruct_r)
        tla8u_3_destruct_bufchan_d <= tla8u_3_destruct_d;
  Pointer_QTree_Bool_t tla8u_3_destruct_bufchan_buf;
  assign tla8u_3_destruct_bufchan_r = (! tla8u_3_destruct_bufchan_buf[0]);
  assign tla8u_3_1_argbuf_d = (tla8u_3_destruct_bufchan_buf[0] ? tla8u_3_destruct_bufchan_buf :
                               tla8u_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tla8u_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((tla8u_3_1_argbuf_r && tla8u_3_destruct_bufchan_buf[0]))
        tla8u_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! tla8u_3_1_argbuf_r) && (! tla8u_3_destruct_bufchan_buf[0])))
        tla8u_3_destruct_bufchan_buf <= tla8u_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (tra8a_destruct,Pointer_QTree_Bool) > (tra8a_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t tra8a_destruct_bufchan_d;
  logic tra8a_destruct_bufchan_r;
  assign tra8a_destruct_r = ((! tra8a_destruct_bufchan_d[0]) || tra8a_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tra8a_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (tra8a_destruct_r) tra8a_destruct_bufchan_d <= tra8a_destruct_d;
  Pointer_QTree_Bool_t tra8a_destruct_bufchan_buf;
  assign tra8a_destruct_bufchan_r = (! tra8a_destruct_bufchan_buf[0]);
  assign tra8a_1_argbuf_d = (tra8a_destruct_bufchan_buf[0] ? tra8a_destruct_bufchan_buf :
                             tra8a_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tra8a_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((tra8a_1_argbuf_r && tra8a_destruct_bufchan_buf[0]))
        tra8a_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! tra8a_1_argbuf_r) && (! tra8a_destruct_bufchan_buf[0])))
        tra8a_destruct_bufchan_buf <= tra8a_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (tra8v_2_destruct,Pointer_QTree_Bool) > (tra8v_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t tra8v_2_destruct_bufchan_d;
  logic tra8v_2_destruct_bufchan_r;
  assign tra8v_2_destruct_r = ((! tra8v_2_destruct_bufchan_d[0]) || tra8v_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tra8v_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (tra8v_2_destruct_r)
        tra8v_2_destruct_bufchan_d <= tra8v_2_destruct_d;
  Pointer_QTree_Bool_t tra8v_2_destruct_bufchan_buf;
  assign tra8v_2_destruct_bufchan_r = (! tra8v_2_destruct_bufchan_buf[0]);
  assign tra8v_2_1_argbuf_d = (tra8v_2_destruct_bufchan_buf[0] ? tra8v_2_destruct_bufchan_buf :
                               tra8v_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) tra8v_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((tra8v_2_1_argbuf_r && tra8v_2_destruct_bufchan_buf[0]))
        tra8v_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! tra8v_2_1_argbuf_r) && (! tra8v_2_destruct_bufchan_buf[0])))
        tra8v_2_destruct_bufchan_buf <= tra8v_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > (writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d  <= {16'd0,
                                                                          1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf [0]);
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_d  = (\writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf  :
                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf  <= {16'd0,
                                                                            1'd0};
    else
      if ((\writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_r  && \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf  <= {16'd0,
                                                                              1'd0};
      else if (((! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_r ) && (! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) > (sca3_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                              1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf [0]);
  assign sca3_1_1_argbuf_d = (\writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                1'd0};
    else
      if ((sca3_1_1_argbuf_r && \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
      else if (((! sca3_1_1_argbuf_r) && (! \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet22_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > (writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d  <= {16'd0,
                                                                          1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf [0]);
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_d  = (\writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf  :
                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf  <= {16'd0,
                                                                            1'd0};
    else
      if ((\writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_r  && \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf  <= {16'd0,
                                                                              1'd0};
      else if (((! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_r ) && (! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) > (lizzieLet3_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                              1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf [0]);
  assign lizzieLet3_1_1_argbuf_d = (\writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf  :
                                    \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                1'd0};
    else
      if ((lizzieLet3_1_1_argbuf_r && \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
      else if (((! lizzieLet3_1_1_argbuf_r) && (! \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet25_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > (writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d  <= {16'd0,
                                                                          1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf [0]);
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_d  = (\writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf  :
                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf  <= {16'd0,
                                                                            1'd0};
    else
      if ((\writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_r  && \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf  <= {16'd0,
                                                                              1'd0};
      else if (((! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_r ) && (! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) > (sca2_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                              1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf [0]);
  assign sca2_1_1_argbuf_d = (\writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                1'd0};
    else
      if ((sca2_1_1_argbuf_r && \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
      else if (((! sca2_1_1_argbuf_r) && (! \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet44_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > (writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d  <= {16'd0,
                                                                          1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf [0]);
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_d  = (\writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf  :
                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf  <= {16'd0,
                                                                            1'd0};
    else
      if ((\writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_r  && \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf  <= {16'd0,
                                                                              1'd0};
      else if (((! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_r ) && (! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) > (sca1_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                              1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf [0]);
  assign sca1_1_1_argbuf_d = (\writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                1'd0};
    else
      if ((sca1_1_1_argbuf_r && \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
      else if (((! sca1_1_1_argbuf_r) && (! \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet45_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) > (writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d  <= {16'd0,
                                                                          1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf [0]);
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_d  = (\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf  :
                                                                        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf  <= {16'd0,
                                                                            1'd0};
    else
      if ((\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_r  && \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf  <= {16'd0,
                                                                              1'd0};
      else if (((! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_r ) && (! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf''''''''_f''''''''_Bool) : (writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb,Pointer_CTf''''''''_f''''''''_Bool) > (sca0_1_1_argbuf,Pointer_CTf''''''''_f''''''''_Bool) */
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_r  = ((! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d [0]) || \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d  <= {16'd0,
                                                                              1'd0};
    else
      if (\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_r )
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d  <= \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_d ;
  \Pointer_CTf''''''''_f''''''''_Bool_t  \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_r  = (! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf [0]);
  assign sca0_1_1_argbuf_d = (\writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                1'd0};
    else
      if ((sca0_1_1_argbuf_r && \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf  <= {16'd0,
                                                                                  1'd0};
      else if (((! sca0_1_1_argbuf_r) && (! \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_buf  <= \writeCTf''''''''_f''''''''_BoollizzieLet46_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet16_1_argbuf,Pointer_CTf) > (writeCTflizzieLet16_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_bufchan_d;
  logic writeCTflizzieLet16_1_argbuf_bufchan_r;
  assign writeCTflizzieLet16_1_argbuf_r = ((! writeCTflizzieLet16_1_argbuf_bufchan_d[0]) || writeCTflizzieLet16_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet16_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet16_1_argbuf_r)
        writeCTflizzieLet16_1_argbuf_bufchan_d <= writeCTflizzieLet16_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet16_1_argbuf_bufchan_r = (! writeCTflizzieLet16_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet16_1_argbuf_rwb_d = (writeCTflizzieLet16_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet16_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet16_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet16_1_argbuf_rwb_r && writeCTflizzieLet16_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet16_1_argbuf_rwb_r) && (! writeCTflizzieLet16_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet16_1_argbuf_bufchan_buf <= writeCTflizzieLet16_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet16_1_argbuf_rwb,Pointer_CTf) > (sca3_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet16_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet16_1_argbuf_rwb_r = ((! writeCTflizzieLet16_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet16_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet16_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet16_1_argbuf_rwb_r)
        writeCTflizzieLet16_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet16_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet16_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_argbuf_d = (writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet16_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca3_1_argbuf_r && writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca3_1_argbuf_r) && (! writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet16_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet16_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet24_1_argbuf,Pointer_CTf) > (writeCTflizzieLet24_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_bufchan_d;
  logic writeCTflizzieLet24_1_argbuf_bufchan_r;
  assign writeCTflizzieLet24_1_argbuf_r = ((! writeCTflizzieLet24_1_argbuf_bufchan_d[0]) || writeCTflizzieLet24_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet24_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet24_1_argbuf_r)
        writeCTflizzieLet24_1_argbuf_bufchan_d <= writeCTflizzieLet24_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet24_1_argbuf_bufchan_r = (! writeCTflizzieLet24_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet24_1_argbuf_rwb_d = (writeCTflizzieLet24_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet24_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet24_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet24_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet24_1_argbuf_rwb_r && writeCTflizzieLet24_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet24_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet24_1_argbuf_rwb_r) && (! writeCTflizzieLet24_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet24_1_argbuf_bufchan_buf <= writeCTflizzieLet24_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet24_1_argbuf_rwb,Pointer_CTf) > (lizzieLet14_1_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet24_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet24_1_argbuf_rwb_r = ((! writeCTflizzieLet24_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet24_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet24_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet24_1_argbuf_rwb_r)
        writeCTflizzieLet24_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet24_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet24_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet14_1_1_argbuf_d = (writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf :
                                     writeCTflizzieLet24_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet14_1_1_argbuf_r && writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet14_1_1_argbuf_r) && (! writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet24_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet24_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet39_1_argbuf,Pointer_CTf) > (writeCTflizzieLet39_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_bufchan_d;
  logic writeCTflizzieLet39_1_argbuf_bufchan_r;
  assign writeCTflizzieLet39_1_argbuf_r = ((! writeCTflizzieLet39_1_argbuf_bufchan_d[0]) || writeCTflizzieLet39_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet39_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet39_1_argbuf_r)
        writeCTflizzieLet39_1_argbuf_bufchan_d <= writeCTflizzieLet39_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet39_1_argbuf_bufchan_r = (! writeCTflizzieLet39_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet39_1_argbuf_rwb_d = (writeCTflizzieLet39_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet39_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet39_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet39_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet39_1_argbuf_rwb_r && writeCTflizzieLet39_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet39_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet39_1_argbuf_rwb_r) && (! writeCTflizzieLet39_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet39_1_argbuf_bufchan_buf <= writeCTflizzieLet39_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet39_1_argbuf_rwb,Pointer_CTf) > (sca2_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet39_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet39_1_argbuf_rwb_r = ((! writeCTflizzieLet39_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet39_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet39_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet39_1_argbuf_rwb_r)
        writeCTflizzieLet39_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet39_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet39_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_argbuf_d = (writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet39_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca2_1_argbuf_r && writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca2_1_argbuf_r) && (! writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet39_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet39_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet40_1_argbuf,Pointer_CTf) > (writeCTflizzieLet40_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_bufchan_d;
  logic writeCTflizzieLet40_1_argbuf_bufchan_r;
  assign writeCTflizzieLet40_1_argbuf_r = ((! writeCTflizzieLet40_1_argbuf_bufchan_d[0]) || writeCTflizzieLet40_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet40_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet40_1_argbuf_r)
        writeCTflizzieLet40_1_argbuf_bufchan_d <= writeCTflizzieLet40_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet40_1_argbuf_bufchan_r = (! writeCTflizzieLet40_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet40_1_argbuf_rwb_d = (writeCTflizzieLet40_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet40_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet40_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet40_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet40_1_argbuf_rwb_r && writeCTflizzieLet40_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet40_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet40_1_argbuf_rwb_r) && (! writeCTflizzieLet40_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet40_1_argbuf_bufchan_buf <= writeCTflizzieLet40_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet40_1_argbuf_rwb,Pointer_CTf) > (sca1_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet40_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet40_1_argbuf_rwb_r = ((! writeCTflizzieLet40_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet40_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet40_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet40_1_argbuf_rwb_r)
        writeCTflizzieLet40_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet40_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet40_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_argbuf_d = (writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet40_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca1_1_argbuf_r && writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca1_1_argbuf_r) && (! writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet40_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet40_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet41_1_argbuf,Pointer_CTf) > (writeCTflizzieLet41_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_bufchan_d;
  logic writeCTflizzieLet41_1_argbuf_bufchan_r;
  assign writeCTflizzieLet41_1_argbuf_r = ((! writeCTflizzieLet41_1_argbuf_bufchan_d[0]) || writeCTflizzieLet41_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet41_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet41_1_argbuf_r)
        writeCTflizzieLet41_1_argbuf_bufchan_d <= writeCTflizzieLet41_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet41_1_argbuf_bufchan_r = (! writeCTflizzieLet41_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet41_1_argbuf_rwb_d = (writeCTflizzieLet41_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet41_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet41_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet41_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet41_1_argbuf_rwb_r && writeCTflizzieLet41_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet41_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet41_1_argbuf_rwb_r) && (! writeCTflizzieLet41_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet41_1_argbuf_bufchan_buf <= writeCTflizzieLet41_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet41_1_argbuf_rwb,Pointer_CTf) > (sca0_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet41_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet41_1_argbuf_rwb_r = ((! writeCTflizzieLet41_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet41_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet41_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet41_1_argbuf_rwb_r)
        writeCTflizzieLet41_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet41_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet41_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_argbuf_d = (writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet41_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca0_1_argbuf_r && writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca0_1_argbuf_r) && (! writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet41_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet41_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet36_1_argbuf,Pointer_Nat) > (writeNatlizzieLet36_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet36_1_argbuf_bufchan_d;
  logic writeNatlizzieLet36_1_argbuf_bufchan_r;
  assign writeNatlizzieLet36_1_argbuf_r = ((! writeNatlizzieLet36_1_argbuf_bufchan_d[0]) || writeNatlizzieLet36_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet36_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet36_1_argbuf_r)
        writeNatlizzieLet36_1_argbuf_bufchan_d <= writeNatlizzieLet36_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet36_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet36_1_argbuf_bufchan_r = (! writeNatlizzieLet36_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet36_1_argbuf_rwb_d = (writeNatlizzieLet36_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet36_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet36_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet36_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet36_1_argbuf_rwb_r && writeNatlizzieLet36_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet36_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet36_1_argbuf_rwb_r) && (! writeNatlizzieLet36_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet36_1_argbuf_bufchan_buf <= writeNatlizzieLet36_1_argbuf_bufchan_d;
  
  /* dcon (Ty Nat,
      Dcon Succ) : [(writeNatlizzieLet36_1_argbuf_rwb,Pointer_Nat)] > (lizzieLet0_1_1Succ,Nat) */
  assign lizzieLet0_1_1Succ_d = Succ_dc((& {writeNatlizzieLet36_1_argbuf_rwb_d[0]}), writeNatlizzieLet36_1_argbuf_rwb_d);
  assign {writeNatlizzieLet36_1_argbuf_rwb_r} = {1 {(lizzieLet0_1_1Succ_r && lizzieLet0_1_1Succ_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet37_1_argbuf,Pointer_Nat) > (writeNatlizzieLet37_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet37_1_argbuf_bufchan_d;
  logic writeNatlizzieLet37_1_argbuf_bufchan_r;
  assign writeNatlizzieLet37_1_argbuf_r = ((! writeNatlizzieLet37_1_argbuf_bufchan_d[0]) || writeNatlizzieLet37_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet37_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet37_1_argbuf_r)
        writeNatlizzieLet37_1_argbuf_bufchan_d <= writeNatlizzieLet37_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet37_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet37_1_argbuf_bufchan_r = (! writeNatlizzieLet37_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet37_1_argbuf_rwb_d = (writeNatlizzieLet37_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet37_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet37_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet37_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet37_1_argbuf_rwb_r && writeNatlizzieLet37_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet37_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet37_1_argbuf_rwb_r) && (! writeNatlizzieLet37_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet37_1_argbuf_bufchan_buf <= writeNatlizzieLet37_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet11_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet11_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet11_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet11_1_argbuf_r = ((! writeQTree_NatlizzieLet11_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet11_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet11_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet11_1_argbuf_r)
        writeQTree_NatlizzieLet11_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet11_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet11_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet11_1_argbuf_rwb_d = (writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet11_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet11_1_argbuf_rwb_r && writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet11_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet11_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet11_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet11_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet8_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet11_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet11_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet11_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet8_1_1_argbuf_d = (writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet8_1_1_argbuf_r && writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet8_1_1_argbuf_r) && (! writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet11_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet12_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet12_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet12_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet12_1_argbuf_r = ((! writeQTree_NatlizzieLet12_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet12_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet12_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet12_1_argbuf_r)
        writeQTree_NatlizzieLet12_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet12_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet12_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet12_1_argbuf_rwb_d = (writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet12_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet12_1_argbuf_rwb_r && writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet12_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet12_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet12_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet12_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet9_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet12_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet12_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet12_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet9_1_1_argbuf_d = (writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet9_1_1_argbuf_r && writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet9_1_1_argbuf_r) && (! writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet12_1_argbuf_rwb_bufchan_d;
  
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
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet14_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet10_1_1_argbuf,Pointer_QTree_Nat) */
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
  assign lizzieLet10_1_1_argbuf_d = (writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf :
                                     writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet10_1_1_argbuf_r && writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet10_1_1_argbuf_r) && (! writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0])))
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
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet15_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet11_1_1_argbuf,Pointer_QTree_Nat) */
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
  assign lizzieLet11_1_1_argbuf_d = (writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf :
                                     writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet11_1_1_argbuf_r && writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet11_1_1_argbuf_r) && (! writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet15_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet17_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet17_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet17_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet17_1_argbuf_r = ((! writeQTree_NatlizzieLet17_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet17_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet17_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet17_1_argbuf_r)
        writeQTree_NatlizzieLet17_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet17_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet17_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet17_1_argbuf_rwb_d = (writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet17_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet17_1_argbuf_rwb_r && writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet17_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet17_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet17_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet17_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet12_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet17_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet17_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet17_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet12_1_1_argbuf_d = (writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf :
                                     writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet12_1_1_argbuf_r && writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet12_1_1_argbuf_r) && (! writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet17_1_argbuf_rwb_bufchan_d;
  
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
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet18_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet13_1_argbuf,Pointer_QTree_Nat) */
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
  assign lizzieLet13_1_argbuf_d = (writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf :
                                   writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet13_1_argbuf_r && writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet13_1_argbuf_r) && (! writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet18_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet20_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet20_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet20_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet20_1_argbuf_r = ((! writeQTree_NatlizzieLet20_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet20_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet20_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet20_1_argbuf_r)
        writeQTree_NatlizzieLet20_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet20_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet20_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet20_1_argbuf_rwb_d = (writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet20_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet20_1_argbuf_rwb_r && writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet20_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet20_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet20_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet20_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet1_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet20_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet20_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet20_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet1_1_1_argbuf_d = (writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet1_1_1_argbuf_r && writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet1_1_1_argbuf_r) && (! writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet20_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet23_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet23_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet23_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet23_1_argbuf_r = ((! writeQTree_NatlizzieLet23_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet23_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet23_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet23_1_argbuf_r)
        writeQTree_NatlizzieLet23_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet23_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet23_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet23_1_argbuf_rwb_d = (writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet23_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet23_1_argbuf_rwb_r && writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet23_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet23_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet23_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet23_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet23_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet23_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet23_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet2_1_1_argbuf_d = (writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet2_1_1_argbuf_r && writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet2_1_1_argbuf_r) && (! writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet23_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet27_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet27_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet27_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet27_1_argbuf_r = ((! writeQTree_NatlizzieLet27_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet27_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet27_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet27_1_argbuf_r)
        writeQTree_NatlizzieLet27_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet27_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet27_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet27_1_argbuf_rwb_d = (writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet27_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet27_1_argbuf_rwb_r && writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet27_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet27_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet27_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet27_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl1rbm-1_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet27_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet27_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet27_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvl1rbm-1_resbuf_d  = (writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl1rbm-1_resbuf_r  && writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl1rbm-1_resbuf_r ) && (! writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet27_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet29_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet29_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet29_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet29_1_argbuf_r = ((! writeQTree_NatlizzieLet29_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet29_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet29_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet29_1_argbuf_r)
        writeQTree_NatlizzieLet29_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet29_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet29_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet29_1_argbuf_rwb_d = (writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet29_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet29_1_argbuf_rwb_r && writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet29_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet29_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet29_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet29_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl2rbn-2_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet29_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet29_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet29_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvl2rbn-2_resbuf_d  = (writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl2rbn-2_resbuf_r  && writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl2rbn-2_resbuf_r ) && (! writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet29_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet2_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet2_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet2_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet2_1_argbuf_r = ((! writeQTree_NatlizzieLet2_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet2_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet2_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet2_1_argbuf_r)
        writeQTree_NatlizzieLet2_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet2_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet2_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet2_1_argbuf_rwb_d = (writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf :
                                                    writeQTree_NatlizzieLet2_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet2_1_argbuf_rwb_r && writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet2_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet2_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet2_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet2_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet4_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet2_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet2_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet2_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet4_1_argbuf_d = (writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_1_argbuf_r && writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_1_argbuf_r) && (! writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet2_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet31_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet31_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet31_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet31_1_argbuf_r = ((! writeQTree_NatlizzieLet31_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet31_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet31_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet31_1_argbuf_r)
        writeQTree_NatlizzieLet31_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet31_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet31_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet31_1_argbuf_rwb_d = (writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet31_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet31_1_argbuf_rwb_r && writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet31_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet31_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet31_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet31_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl3rbo-3_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet31_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet31_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet31_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvl3rbo-3_resbuf_d  = (writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl3rbo-3_resbuf_r  && writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl3rbo-3_resbuf_r ) && (! writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet31_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet33_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet33_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet33_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet33_1_argbuf_r = ((! writeQTree_NatlizzieLet33_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet33_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet33_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet33_1_argbuf_r)
        writeQTree_NatlizzieLet33_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet33_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet33_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet33_1_argbuf_rwb_d = (writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet33_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet33_1_argbuf_rwb_r && writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet33_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet33_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet33_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet33_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl4rbp-4_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet33_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet33_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet33_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvl4rbp-4_resbuf_d  = (writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl4rbp-4_resbuf_r  && writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl4rbp-4_resbuf_r ) && (! writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet33_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet35_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet35_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet35_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet35_1_argbuf_r = ((! writeQTree_NatlizzieLet35_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet35_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet35_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet35_1_argbuf_r)
        writeQTree_NatlizzieLet35_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet35_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet35_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet35_1_argbuf_rwb_d = (writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet35_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet35_1_argbuf_rwb_r && writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet35_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet35_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet35_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet35_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl5rbq-5_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet35_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet35_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet35_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvl5rbq-5_resbuf_d  = (writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl5rbq-5_resbuf_r  && writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl5rbq-5_resbuf_r ) && (! writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet35_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet42_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet42_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet42_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet42_1_argbuf_r = ((! writeQTree_NatlizzieLet42_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet42_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet42_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet42_1_argbuf_r)
        writeQTree_NatlizzieLet42_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet42_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet42_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet42_1_argbuf_rwb_d = (writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet42_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet42_1_argbuf_rwb_r && writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet42_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet42_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet42_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet42_1_argbuf_rwb,Pointer_QTree_Nat) > (contRet_0_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet42_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet42_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet42_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_argbuf_d = (writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_argbuf_r && writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_argbuf_r) && (! writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet42_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet47_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet47_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet47_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet47_1_argbuf_r = ((! writeQTree_NatlizzieLet47_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet47_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet47_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet47_1_argbuf_r)
        writeQTree_NatlizzieLet47_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet47_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet47_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet47_1_argbuf_rwb_d = (writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet47_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet47_1_argbuf_rwb_r && writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet47_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet47_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet47_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet47_1_argbuf_rwb,Pointer_QTree_Nat) > (contRet_0_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet47_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet47_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet47_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_1_argbuf_d = (writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf :
                                   writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_1_argbuf_r && writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_1_argbuf_r) && (! writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet47_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet4_1_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet4_1_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet4_1_1_argbuf_r = ((! writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet4_1_1_argbuf_r)
        writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet4_1_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet4_1_1_argbuf_rwb_d = (writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf :
                                                      writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet4_1_1_argbuf_rwb_r && writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet4_1_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet4_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet4_1_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet5_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet4_1_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet4_1_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet4_1_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet5_1_argbuf_d = (writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet5_1_argbuf_r && writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet5_1_argbuf_r) && (! writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet4_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet5_1_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet5_1_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet5_1_1_argbuf_r = ((! writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet5_1_1_argbuf_r)
        writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet5_1_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet5_1_1_argbuf_rwb_d = (writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf :
                                                      writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet5_1_1_argbuf_rwb_r && writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet5_1_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet5_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet5_1_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet6_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet5_1_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet5_1_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet5_1_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet6_1_argbuf_d = (writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet6_1_argbuf_r && writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet6_1_argbuf_r) && (! writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet5_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet8_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet8_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet8_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet8_1_argbuf_r = ((! writeQTree_NatlizzieLet8_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet8_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet8_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet8_1_argbuf_r)
        writeQTree_NatlizzieLet8_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet8_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet8_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet8_1_argbuf_rwb_d = (writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf :
                                                    writeQTree_NatlizzieLet8_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet8_1_argbuf_rwb_r && writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet8_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet8_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet8_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet8_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet7_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet8_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet8_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet8_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet7_1_1_argbuf_d = (writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet7_1_1_argbuf_r && writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet7_1_1_argbuf_r) && (! writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet8_1_argbuf_rwb_bufchan_d;
endmodule