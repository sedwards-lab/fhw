`timescale 1ns/1ns
import mMapKron_package::*;

module mMapKron(
  input logic clk,
  input logic reset,
  input Go_t \\QTree_Bool_src_d ,
  output logic \\QTree_Bool_src_r ,
  input QTree_Bool_t dummy_write_QTree_Bool_d,
  output logic dummy_write_QTree_Bool_r,
  input Go_t sourceGo_d,
  output logic sourceGo_r,
  input Pointer_QTree_Bool_t m1abV_0_d,
  output logic m1abV_0_r,
  input Pointer_QTree_Bool_t m2abW_1_d,
  output logic m2abW_1_r,
  output \Word16#_t  forkHP1_QTree_Bool_snk_dout,
  input logic forkHP1_QTree_Bool_snk_rout,
  output Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_dout,
  input logic dummy_write_QTree_Bool_sink_rout,
  output Pointer_QTree_Nat_t f_resbuf_dout,
  input logic f_resbuf_rout
  );
  /* --define=INPUTS=((__05CQTree_Bool_src, 0, 1, Go), (dummy_write_QTree_Bool, 66, 73786976294838206464, QTree_Bool), (sourceGo, 0, 1, Go), (m1abV_0, 16, 65536, Pointer_QTree_Bool), (m2abW_1, 16, 65536, Pointer_QTree_Bool)) */
  /* --define=TAPS=() */
  /* --define=OUTPUTS=((forkHP1_QTree_Bool_snk, 16, 65536, Word16__023), (dummy_write_QTree_Bool_sink, 16, 65536, Pointer_QTree_Bool), (f_resbuf, 16, 65536, Pointer_QTree_Nat)) */
  /* TYPE_START
QTree_Nat 16 2 (0,[0]) (1,[16p]) (2,[16p,16p,16p,16p]) (3,[0])
CTf 16 3 (0,[0]) (1,[16p,16p,16p,16p,16p]) (2,[16p,16p,16p,16p,16p]) (3,[16p,16p,16p,16p,16p]) (4,[16p,16p,16p,16p])
CTf__027 16 3 (0,[0]) (1,[16p,16p,1,16p,16p]) (2,[16p,16p,16p,1,16p]) (3,[16p,16p,16p,16p,1]) (4,[16p,16p,16p,16p])
Nat 16 1 (0,[0]) (1,[16p])
QTree_Bool 16 2 (0,[0]) (1,[1]) (2,[16p,16p,16p,16p]) (3,[0])
TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf__027 16 0 (0,[0,16p,1,16p])
TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf 16 0 (0,[0,16p,16p,16p])
TupGo___Pointer_QTree_Bool___MyBool 16 0 (0,[0,16p,1])
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
  C9_t writeMerge_choice_QTree_Nat_d;
  logic writeMerge_choice_QTree_Nat_r;
  QTree_Nat_t writeMerge_data_QTree_Nat_d;
  logic writeMerge_data_QTree_Nat_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_d;
  logic writeQTree_NatlizzieLet10_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_d;
  logic writeQTree_NatlizzieLet1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_d;
  logic writeQTree_NatlizzieLet21_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_d;
  logic writeQTree_NatlizzieLet26_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_d;
  logic writeQTree_NatlizzieLet3_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_d;
  logic writeQTree_NatlizzieLet5_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_d;
  logic writeQTree_NatlizzieLet6_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_d;
  logic writeQTree_NatlizzieLet7_1_1_argbuf_r;
  MemIn_QTree_Nat_t dconWriteIn_QTree_Nat_d;
  logic dconWriteIn_QTree_Nat_r;
  Pointer_QTree_Nat_t dconPtr_QTree_Nat_d;
  logic dconPtr_QTree_Nat_r;
  Pointer_QTree_Nat_t _17_d;
  logic _17_r;
  assign _17_r = 1'd1;
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
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_d;
  logic writeCTflizzieLet11_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_d;
  logic writeCTflizzieLet18_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_d;
  logic writeCTflizzieLet19_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_d;
  logic writeCTflizzieLet20_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_d;
  logic writeCTflizzieLet2_1_argbuf_r;
  MemIn_CTf_t dconWriteIn_CTf_d;
  logic dconWriteIn_CTf_r;
  Pointer_CTf_t dconPtr_CTf_d;
  logic dconPtr_CTf_r;
  Pointer_CTf_t _16_d;
  logic _16_r;
  assign _16_r = 1'd1;
  Pointer_CTf_t demuxWriteResult_CTf_d;
  logic demuxWriteResult_CTf_r;
  \Word16#_t  \initHP_CTf'_d ;
  logic \initHP_CTf'_r ;
  \Word16#_t  \incrHP_CTf'_d ;
  logic \incrHP_CTf'_r ;
  Go_t \incrHP_mergeCTf'_d ;
  logic \incrHP_mergeCTf'_r ;
  Go_t \incrHP_CTf'1_d ;
  logic \incrHP_CTf'1_r ;
  Go_t \incrHP_CTf'2_d ;
  logic \incrHP_CTf'2_r ;
  \Word16#_t  \addHP_CTf'_d ;
  logic \addHP_CTf'_r ;
  \Word16#_t  \mergeHP_CTf'_d ;
  logic \mergeHP_CTf'_r ;
  Go_t \incrHP_mergeCTf'_buf_d ;
  logic \incrHP_mergeCTf'_buf_r ;
  \Word16#_t  \mergeHP_CTf'_buf_d ;
  logic \mergeHP_CTf'_buf_r ;
  \Word16#_t  \forkHP1_CTf'_d ;
  logic \forkHP1_CTf'_r ;
  \Word16#_t  forkHP1_CTf2_d;
  logic forkHP1_CTf2_r;
  \Word16#_t  forkHP1_CTf3_d;
  logic forkHP1_CTf3_r;
  C2_t \memMergeChoice_CTf'_d ;
  logic \memMergeChoice_CTf'_r ;
  \MemIn_CTf'_t  \memMergeIn_CTf'_d ;
  logic \memMergeIn_CTf'_r ;
  \MemOut_CTf'_t  \memOut_CTf'_d ;
  logic \memOut_CTf'_r ;
  \MemOut_CTf'_t  \memReadOut_CTf'_d ;
  logic \memReadOut_CTf'_r ;
  \MemOut_CTf'_t  \memWriteOut_CTf'_d ;
  logic \memWriteOut_CTf'_r ;
  \MemIn_CTf'_t  \memMergeIn_CTf'_dbuf_d ;
  logic \memMergeIn_CTf'_dbuf_r ;
  \MemIn_CTf'_t  \memMergeIn_CTf'_rbuf_d ;
  logic \memMergeIn_CTf'_rbuf_r ;
  \MemOut_CTf'_t  \memOut_CTf'_dbuf_d ;
  logic \memOut_CTf'_dbuf_r ;
  \MemOut_CTf'_t  \memOut_CTf'_rbuf_d ;
  logic \memOut_CTf'_rbuf_r ;
  \Word16#_t  \destructReadIn_CTf'_d ;
  logic \destructReadIn_CTf'_r ;
  \MemIn_CTf'_t  \dconReadIn_CTf'_d ;
  logic \dconReadIn_CTf'_r ;
  \CTf'_t  \readPointer_CTf'scfarg_0_1_1_argbuf_d ;
  logic \readPointer_CTf'scfarg_0_1_1_argbuf_r ;
  C5_t \writeMerge_choice_CTf'_d ;
  logic \writeMerge_choice_CTf'_r ;
  \CTf'_t  \writeMerge_data_CTf'_d ;
  logic \writeMerge_data_CTf'_r ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_d ;
  logic \writeCTf'lizzieLet12_1_argbuf_r ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_d ;
  logic \writeCTf'lizzieLet23_1_argbuf_r ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_d ;
  logic \writeCTf'lizzieLet24_1_argbuf_r ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_d ;
  logic \writeCTf'lizzieLet25_1_argbuf_r ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_d ;
  logic \writeCTf'lizzieLet9_1_argbuf_r ;
  \MemIn_CTf'_t  \dconWriteIn_CTf'_d ;
  logic \dconWriteIn_CTf'_r ;
  \Pointer_CTf'_t  \dconPtr_CTf'_d ;
  logic \dconPtr_CTf'_r ;
  \Pointer_CTf'_t  _15_d;
  logic _15_r;
  assign _15_r = 1'd1;
  \Pointer_CTf'_t  \demuxWriteResult_CTf'_d ;
  logic \demuxWriteResult_CTf'_r ;
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
  Pointer_Nat_t writeNatlizzieLet15_1_argbuf_d;
  logic writeNatlizzieLet15_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_d;
  logic writeNatlizzieLet16_1_argbuf_r;
  MemIn_Nat_t dconWriteIn_Nat_d;
  logic dconWriteIn_Nat_r;
  Pointer_Nat_t dconPtr_Nat_d;
  logic dconPtr_Nat_r;
  Pointer_Nat_t _14_d;
  logic _14_r;
  assign _14_r = 1'd1;
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
  C2_t readMerge_choice_QTree_Bool_d;
  logic readMerge_choice_QTree_Bool_r;
  Pointer_QTree_Bool_t readMerge_data_QTree_Bool_d;
  logic readMerge_data_QTree_Bool_r;
  QTree_Bool_t readPointer_QTree_Boolm1abX_1_argbuf_d;
  logic readPointer_QTree_Boolm1abX_1_argbuf_r;
  QTree_Bool_t readPointer_QTree_Boolm2ac4_1_argbuf_d;
  logic readPointer_QTree_Boolm2ac4_1_argbuf_r;
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
  Pointer_QTree_Bool_t _13_d;
  logic _13_r;
  assign _13_r = 1'd1;
  Pointer_QTree_Bool_t dummy_write_QTree_Bool_sink_d;
  logic dummy_write_QTree_Bool_sink_r;
  Go_t go_1_argbuf_d;
  logic go_1_argbuf_r;
  Go_t \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d ;
  logic \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_r ;
  Pointer_QTree_Bool_t \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d ;
  logic \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_r ;
  MyBool_t \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d ;
  logic \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_r ;
  \Pointer_CTf'_t  \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d ;
  logic \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_r ;
  Go_t \call_f'_initBufi_d ;
  logic \call_f'_initBufi_r ;
  C5_t go_3_goMux_choice_d;
  logic go_3_goMux_choice_r;
  Go_t go_3_goMux_data_d;
  logic go_3_goMux_data_r;
  Go_t \call_f'_unlockFork1_d ;
  logic \call_f'_unlockFork1_r ;
  Go_t \call_f'_unlockFork2_d ;
  logic \call_f'_unlockFork2_r ;
  Go_t \call_f'_unlockFork3_d ;
  logic \call_f'_unlockFork3_r ;
  Go_t \call_f'_unlockFork4_d ;
  logic \call_f'_unlockFork4_r ;
  Go_t \call_f'_initBuf_d ;
  logic \call_f'_initBuf_r ;
  Go_t \call_f'_goMux1_d ;
  logic \call_f'_goMux1_r ;
  Pointer_QTree_Bool_t \call_f'_goMux2_d ;
  logic \call_f'_goMux2_r ;
  MyBool_t \call_f'_goMux3_d ;
  logic \call_f'_goMux3_r ;
  \Pointer_CTf'_t  \call_f'_goMux4_d ;
  logic \call_f'_goMux4_r ;
  Go_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_r;
  Pointer_QTree_Bool_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_r;
  Pointer_QTree_Bool_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_r;
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
  Go_t \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_r ;
  Pointer_QTree_Bool_t \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_r ;
  MyBool_t \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_r ;
  Go_t go_5_1_d;
  logic go_5_1_r;
  Go_t go_5_2_d;
  logic go_5_2_r;
  Pointer_QTree_Bool_t m2ac4_1_1_argbuf_d;
  logic m2ac4_1_1_argbuf_r;
  MyBool_t vac5_1_1_argbuf_d;
  logic vac5_1_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet7_1_argbuf_d;
  logic lizzieLet7_1_argbuf_r;
  Go_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_r;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_r;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_r;
  Go_t go_4_1_d;
  logic go_4_1_r;
  Go_t go_4_2_d;
  logic go_4_2_r;
  Pointer_QTree_Bool_t m1abX_1_1_argbuf_d;
  logic m1abX_1_1_argbuf_r;
  Pointer_QTree_Bool_t m2abY_1_1_argbuf_d;
  logic m2abY_1_1_argbuf_r;
  TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r;
  C5_t go_2_goMux_choice_1_d;
  logic go_2_goMux_choice_1_r;
  C5_t go_2_goMux_choice_2_d;
  logic go_2_goMux_choice_2_r;
  C5_t go_2_goMux_choice_3_d;
  logic go_2_goMux_choice_3_r;
  Pointer_QTree_Bool_t m1abX_goMux_mux_d;
  logic m1abX_goMux_mux_r;
  Pointer_QTree_Bool_t m2abY_goMux_mux_d;
  logic m2abY_goMux_mux_r;
  Pointer_CTf_t sc_0_goMux_mux_d;
  logic sc_0_goMux_mux_r;
  C5_t go_3_goMux_choice_1_d;
  logic go_3_goMux_choice_1_r;
  C5_t go_3_goMux_choice_2_d;
  logic go_3_goMux_choice_2_r;
  C5_t go_3_goMux_choice_3_d;
  logic go_3_goMux_choice_3_r;
  Pointer_QTree_Bool_t m2ac4_goMux_mux_d;
  logic m2ac4_goMux_mux_r;
  MyBool_t vac5_goMux_mux_d;
  logic vac5_goMux_mux_r;
  \Pointer_CTf'_t  sc_0_1_goMux_mux_d;
  logic sc_0_1_goMux_mux_r;
  CTf_t go_4_1Lfsbos_d;
  logic go_4_1Lfsbos_r;
  CTf_t lizzieLet11_1_argbuf_d;
  logic lizzieLet11_1_argbuf_r;
  Go_t go_4_2_argbuf_d;
  logic go_4_2_argbuf_r;
  TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_t call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d;
  logic call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r;
  \CTf'_t  \go_5_1Lf'sbos_d ;
  logic \go_5_1Lf'sbos_r ;
  \CTf'_t  lizzieLet12_1_argbuf_d;
  logic lizzieLet12_1_argbuf_r;
  Go_t go_5_2_argbuf_d;
  logic go_5_2_argbuf_r;
  \TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_t  \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d ;
  logic \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_r ;
  TupGo_t \lvlrrv-44TupGo_1_d ;
  logic \lvlrrv-44TupGo_1_r ;
  Nat_t lizzieLet15_1_argbuf_d;
  logic lizzieLet15_1_argbuf_r;
  C4_t go_8_goMux_choice_1_d;
  logic go_8_goMux_choice_1_r;
  C4_t go_8_goMux_choice_2_d;
  logic go_8_goMux_choice_2_r;
  Pointer_QTree_Nat_t srtarg_0_goMux_mux_d;
  logic srtarg_0_goMux_mux_r;
  Pointer_CTf_t scfarg_0_goMux_mux_d;
  logic scfarg_0_goMux_mux_r;
  C6_t go_9_goMux_choice_1_d;
  logic go_9_goMux_choice_1_r;
  C6_t go_9_goMux_choice_2_d;
  logic go_9_goMux_choice_2_r;
  Pointer_QTree_Nat_t srtarg_0_1_goMux_mux_d;
  logic srtarg_0_1_goMux_mux_r;
  \Pointer_CTf'_t  scfarg_0_1_goMux_mux_d;
  logic scfarg_0_1_goMux_mux_r;
  Pointer_QTree_Bool_t q1ac0_destruct_d;
  logic q1ac0_destruct_r;
  Pointer_QTree_Bool_t q2ac1_destruct_d;
  logic q2ac1_destruct_r;
  Pointer_QTree_Bool_t q3ac2_destruct_d;
  logic q3ac2_destruct_r;
  Pointer_QTree_Bool_t q4ac3_destruct_d;
  logic q4ac3_destruct_r;
  MyBool_t vabZ_destruct_d;
  logic vabZ_destruct_r;
  Nat_t lizzieLet16_1_argbuf_d;
  logic lizzieLet16_1_argbuf_r;
  QTree_Bool_t _12_d;
  logic _12_r;
  assign _12_r = 1'd1;
  QTree_Bool_t lizzieLet0_1QVal_Bool_d;
  logic lizzieLet0_1QVal_Bool_r;
  QTree_Bool_t lizzieLet0_1QNode_Bool_d;
  logic lizzieLet0_1QNode_Bool_r;
  QTree_Bool_t _11_d;
  logic _11_r;
  assign _11_r = 1'd1;
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
  QTree_Nat_t lizzieLet3_1_argbuf_d;
  logic lizzieLet3_1_argbuf_r;
  Go_t lizzieLet0_3QError_Bool_2_argbuf_d;
  logic lizzieLet0_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet0_3QNode_Bool_1_argbuf_d;
  logic lizzieLet0_3QNode_Bool_1_argbuf_r;
  Go_t lizzieLet0_3QNone_Bool_1_d;
  logic lizzieLet0_3QNone_Bool_1_r;
  Go_t lizzieLet0_3QNone_Bool_2_d;
  logic lizzieLet0_3QNone_Bool_2_r;
  QTree_Nat_t lizzieLet0_3QNone_Bool_1QNone_Nat_d;
  logic lizzieLet0_3QNone_Bool_1QNone_Nat_r;
  QTree_Nat_t lizzieLet1_1_argbuf_d;
  logic lizzieLet1_1_argbuf_r;
  Go_t lizzieLet0_3QNone_Bool_2_argbuf_d;
  logic lizzieLet0_3QNone_Bool_2_argbuf_r;
  C4_t go_8_goMux_choice_d;
  logic go_8_goMux_choice_r;
  Go_t go_8_goMux_data_d;
  logic go_8_goMux_data_r;
  Go_t lizzieLet0_3QVal_Bool_1_d;
  logic lizzieLet0_3QVal_Bool_1_r;
  Go_t lizzieLet0_3QVal_Bool_2_d;
  logic lizzieLet0_3QVal_Bool_2_r;
  Go_t lizzieLet0_3QVal_Bool_1_argbuf_d;
  logic lizzieLet0_3QVal_Bool_1_argbuf_r;
  TupGo___Pointer_QTree_Bool___MyBool_t \f'TupGo___Pointer_QTree_Bool___MyBool_1_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBool_1_r ;
  Go_t lizzieLet0_3QVal_Bool_2_argbuf_d;
  logic lizzieLet0_3QVal_Bool_2_argbuf_r;
  Pointer_QTree_Bool_t _10_d;
  logic _10_r;
  assign _10_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QVal_Bool_d;
  logic lizzieLet0_4QVal_Bool_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_d;
  logic lizzieLet0_4QNode_Bool_r;
  Pointer_QTree_Bool_t _9_d;
  logic _9_r;
  assign _9_r = 1'd1;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_1_d;
  logic lizzieLet0_4QNode_Bool_1_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_2_d;
  logic lizzieLet0_4QNode_Bool_2_r;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_2_argbuf_d;
  logic lizzieLet0_4QNode_Bool_2_argbuf_r;
  Pointer_QTree_Bool_t lizzieLet0_4QVal_Bool_1_argbuf_d;
  logic lizzieLet0_4QVal_Bool_1_argbuf_r;
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
  CTf_t lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_d;
  logic lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_r;
  CTf_t lizzieLet2_1_argbuf_d;
  logic lizzieLet2_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_5QNone_Bool_1_argbuf_d;
  logic lizzieLet0_5QNone_Bool_1_argbuf_r;
  Pointer_CTf_t lizzieLet0_5QVal_Bool_1_argbuf_d;
  logic lizzieLet0_5QVal_Bool_1_argbuf_r;
  QTree_Nat_t lizzieLet14_1_argbuf_d;
  logic lizzieLet14_1_argbuf_r;
  Pointer_QTree_Nat_t es_1_destruct_d;
  logic es_1_destruct_r;
  Pointer_QTree_Nat_t es_2_1_destruct_d;
  logic es_2_1_destruct_r;
  Pointer_QTree_Nat_t es_3_2_destruct_d;
  logic es_3_2_destruct_r;
  Pointer_CTf_t sc_0_5_destruct_d;
  logic sc_0_5_destruct_r;
  Pointer_QTree_Nat_t es_2_destruct_d;
  logic es_2_destruct_r;
  Pointer_QTree_Nat_t es_3_1_destruct_d;
  logic es_3_1_destruct_r;
  Pointer_CTf_t sc_0_4_destruct_d;
  logic sc_0_4_destruct_r;
  Pointer_QTree_Bool_t q1ac0_3_destruct_d;
  logic q1ac0_3_destruct_r;
  Pointer_QTree_Bool_t m2abY_4_destruct_d;
  logic m2abY_4_destruct_r;
  Pointer_QTree_Nat_t es_3_destruct_d;
  logic es_3_destruct_r;
  Pointer_CTf_t sc_0_3_destruct_d;
  logic sc_0_3_destruct_r;
  Pointer_QTree_Bool_t q1ac0_2_destruct_d;
  logic q1ac0_2_destruct_r;
  Pointer_QTree_Bool_t m2abY_3_destruct_d;
  logic m2abY_3_destruct_r;
  Pointer_QTree_Bool_t q2ac1_2_destruct_d;
  logic q2ac1_2_destruct_r;
  Pointer_CTf_t sc_0_2_destruct_d;
  logic sc_0_2_destruct_r;
  Pointer_QTree_Bool_t q1ac0_1_destruct_d;
  logic q1ac0_1_destruct_r;
  Pointer_QTree_Bool_t m2abY_2_destruct_d;
  logic m2abY_2_destruct_r;
  Pointer_QTree_Bool_t q2ac1_1_destruct_d;
  logic q2ac1_1_destruct_r;
  Pointer_QTree_Bool_t q3ac2_1_destruct_d;
  logic q3ac2_1_destruct_r;
  CTf_t _8_d;
  logic _8_r;
  assign _8_r = 1'd1;
  CTf_t lizzieLet17_1Lcall_f3_d;
  logic lizzieLet17_1Lcall_f3_r;
  CTf_t lizzieLet17_1Lcall_f2_d;
  logic lizzieLet17_1Lcall_f2_r;
  CTf_t lizzieLet17_1Lcall_f1_d;
  logic lizzieLet17_1Lcall_f1_r;
  CTf_t lizzieLet17_1Lcall_f0_d;
  logic lizzieLet17_1Lcall_f0_r;
  Go_t _7_d;
  logic _7_r;
  assign _7_r = 1'd1;
  Go_t lizzieLet17_3Lcall_f3_d;
  logic lizzieLet17_3Lcall_f3_r;
  Go_t lizzieLet17_3Lcall_f2_d;
  logic lizzieLet17_3Lcall_f2_r;
  Go_t lizzieLet17_3Lcall_f1_d;
  logic lizzieLet17_3Lcall_f1_r;
  Go_t lizzieLet17_3Lcall_f0_d;
  logic lizzieLet17_3Lcall_f0_r;
  Go_t lizzieLet17_3Lcall_f0_1_argbuf_d;
  logic lizzieLet17_3Lcall_f0_1_argbuf_r;
  Go_t lizzieLet17_3Lcall_f1_1_argbuf_d;
  logic lizzieLet17_3Lcall_f1_1_argbuf_r;
  Go_t lizzieLet17_3Lcall_f2_1_argbuf_d;
  logic lizzieLet17_3Lcall_f2_1_argbuf_r;
  Go_t lizzieLet17_3Lcall_f3_1_argbuf_d;
  logic lizzieLet17_3Lcall_f3_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lfsbos_d;
  logic lizzieLet17_4Lfsbos_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lcall_f3_d;
  logic lizzieLet17_4Lcall_f3_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lcall_f2_d;
  logic lizzieLet17_4Lcall_f2_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lcall_f1_d;
  logic lizzieLet17_4Lcall_f1_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lcall_f0_d;
  logic lizzieLet17_4Lcall_f0_r;
  QTree_Nat_t lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_d;
  logic lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_r;
  QTree_Nat_t lizzieLet21_1_argbuf_d;
  logic lizzieLet21_1_argbuf_r;
  CTf_t lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_d;
  logic lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_r;
  CTf_t lizzieLet20_1_argbuf_d;
  logic lizzieLet20_1_argbuf_r;
  CTf_t lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_d;
  logic lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_r;
  CTf_t lizzieLet19_1_argbuf_d;
  logic lizzieLet19_1_argbuf_r;
  CTf_t lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_d;
  logic lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_r;
  CTf_t lizzieLet18_1_argbuf_d;
  logic lizzieLet18_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lfsbos_1_merge_merge_fork_1_d;
  logic lizzieLet17_4Lfsbos_1_merge_merge_fork_1_r;
  Pointer_QTree_Nat_t lizzieLet17_4Lfsbos_1_merge_merge_fork_2_d;
  logic lizzieLet17_4Lfsbos_1_merge_merge_fork_2_r;
  Go_t call_f_goConst_d;
  logic call_f_goConst_r;
  Pointer_QTree_Nat_t f_resbuf_d;
  logic f_resbuf_r;
  Pointer_QTree_Nat_t es_1_1_destruct_d;
  logic es_1_1_destruct_r;
  Pointer_QTree_Nat_t es_2_3_destruct_d;
  logic es_2_3_destruct_r;
  Pointer_QTree_Nat_t es_3_5_destruct_d;
  logic es_3_5_destruct_r;
  \Pointer_CTf'_t  sc_0_9_destruct_d;
  logic sc_0_9_destruct_r;
  Pointer_QTree_Nat_t es_2_2_destruct_d;
  logic es_2_2_destruct_r;
  Pointer_QTree_Nat_t es_3_4_destruct_d;
  logic es_3_4_destruct_r;
  \Pointer_CTf'_t  sc_0_8_destruct_d;
  logic sc_0_8_destruct_r;
  Pointer_QTree_Bool_t q1ac7_3_destruct_d;
  logic q1ac7_3_destruct_r;
  MyBool_t vac5_4_destruct_d;
  logic vac5_4_destruct_r;
  Pointer_QTree_Nat_t es_3_3_destruct_d;
  logic es_3_3_destruct_r;
  \Pointer_CTf'_t  sc_0_7_destruct_d;
  logic sc_0_7_destruct_r;
  Pointer_QTree_Bool_t q1ac7_2_destruct_d;
  logic q1ac7_2_destruct_r;
  MyBool_t vac5_3_destruct_d;
  logic vac5_3_destruct_r;
  Pointer_QTree_Bool_t q2ac8_2_destruct_d;
  logic q2ac8_2_destruct_r;
  \Pointer_CTf'_t  sc_0_6_destruct_d;
  logic sc_0_6_destruct_r;
  Pointer_QTree_Bool_t q1ac7_1_destruct_d;
  logic q1ac7_1_destruct_r;
  MyBool_t vac5_2_destruct_d;
  logic vac5_2_destruct_r;
  Pointer_QTree_Bool_t q2ac8_1_destruct_d;
  logic q2ac8_1_destruct_r;
  Pointer_QTree_Bool_t q3ac9_1_destruct_d;
  logic q3ac9_1_destruct_r;
  \CTf'_t  _6_d;
  logic _6_r;
  assign _6_r = 1'd1;
  \CTf'_t  \lizzieLet22_1Lcall_f'3_d ;
  logic \lizzieLet22_1Lcall_f'3_r ;
  \CTf'_t  \lizzieLet22_1Lcall_f'2_d ;
  logic \lizzieLet22_1Lcall_f'2_r ;
  \CTf'_t  \lizzieLet22_1Lcall_f'1_d ;
  logic \lizzieLet22_1Lcall_f'1_r ;
  \CTf'_t  \lizzieLet22_1Lcall_f'0_d ;
  logic \lizzieLet22_1Lcall_f'0_r ;
  Go_t _5_d;
  logic _5_r;
  assign _5_r = 1'd1;
  Go_t \lizzieLet22_3Lcall_f'3_d ;
  logic \lizzieLet22_3Lcall_f'3_r ;
  Go_t \lizzieLet22_3Lcall_f'2_d ;
  logic \lizzieLet22_3Lcall_f'2_r ;
  Go_t \lizzieLet22_3Lcall_f'1_d ;
  logic \lizzieLet22_3Lcall_f'1_r ;
  Go_t \lizzieLet22_3Lcall_f'0_d ;
  logic \lizzieLet22_3Lcall_f'0_r ;
  Go_t \lizzieLet22_3Lcall_f'0_1_argbuf_d ;
  logic \lizzieLet22_3Lcall_f'0_1_argbuf_r ;
  Go_t \lizzieLet22_3Lcall_f'1_1_argbuf_d ;
  logic \lizzieLet22_3Lcall_f'1_1_argbuf_r ;
  Go_t \lizzieLet22_3Lcall_f'2_1_argbuf_d ;
  logic \lizzieLet22_3Lcall_f'2_1_argbuf_r ;
  Go_t \lizzieLet22_3Lcall_f'3_1_argbuf_d ;
  logic \lizzieLet22_3Lcall_f'3_1_argbuf_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lf'sbos_d ;
  logic \lizzieLet22_4Lf'sbos_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lcall_f'3_d ;
  logic \lizzieLet22_4Lcall_f'3_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lcall_f'2_d ;
  logic \lizzieLet22_4Lcall_f'2_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lcall_f'1_d ;
  logic \lizzieLet22_4Lcall_f'1_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lcall_f'0_d ;
  logic \lizzieLet22_4Lcall_f'0_r ;
  QTree_Nat_t \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_d ;
  logic \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_r ;
  QTree_Nat_t lizzieLet26_1_argbuf_d;
  logic lizzieLet26_1_argbuf_r;
  \CTf'_t  \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_d ;
  logic \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_r ;
  \CTf'_t  lizzieLet25_1_argbuf_d;
  logic lizzieLet25_1_argbuf_r;
  \CTf'_t  \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_d ;
  logic \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_r ;
  \CTf'_t  lizzieLet24_1_argbuf_d;
  logic lizzieLet24_1_argbuf_r;
  \CTf'_t  \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_d ;
  logic \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_r ;
  \CTf'_t  lizzieLet23_1_argbuf_d;
  logic lizzieLet23_1_argbuf_r;
  Pointer_QTree_Nat_t \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_d ;
  logic \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_r ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_d ;
  logic \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_r ;
  Go_t \call_f'_goConst_d ;
  logic \call_f'_goConst_r ;
  Pointer_QTree_Nat_t \f'_resbuf_d ;
  logic \f'_resbuf_r ;
  Pointer_QTree_Bool_t q1ac7_destruct_d;
  logic q1ac7_destruct_r;
  Pointer_QTree_Bool_t q2ac8_destruct_d;
  logic q2ac8_destruct_r;
  Pointer_QTree_Bool_t q3ac9_destruct_d;
  logic q3ac9_destruct_r;
  Pointer_QTree_Bool_t q4aca_destruct_d;
  logic q4aca_destruct_r;
  MyBool_t \v'ac6_destruct_d ;
  logic \v'ac6_destruct_r ;
  QTree_Bool_t _4_d;
  logic _4_r;
  assign _4_r = 1'd1;
  QTree_Bool_t lizzieLet4_1QVal_Bool_d;
  logic lizzieLet4_1QVal_Bool_r;
  QTree_Bool_t lizzieLet4_1QNode_Bool_d;
  logic lizzieLet4_1QNode_Bool_r;
  QTree_Bool_t _3_d;
  logic _3_r;
  assign _3_r = 1'd1;
  Go_t lizzieLet4_3QNone_Bool_d;
  logic lizzieLet4_3QNone_Bool_r;
  Go_t lizzieLet4_3QVal_Bool_d;
  logic lizzieLet4_3QVal_Bool_r;
  Go_t lizzieLet4_3QNode_Bool_d;
  logic lizzieLet4_3QNode_Bool_r;
  Go_t lizzieLet4_3QError_Bool_d;
  logic lizzieLet4_3QError_Bool_r;
  Go_t lizzieLet4_3QError_Bool_1_d;
  logic lizzieLet4_3QError_Bool_1_r;
  Go_t lizzieLet4_3QError_Bool_2_d;
  logic lizzieLet4_3QError_Bool_2_r;
  QTree_Nat_t lizzieLet4_3QError_Bool_1QError_Nat_d;
  logic lizzieLet4_3QError_Bool_1QError_Nat_r;
  QTree_Nat_t lizzieLet10_1_argbuf_d;
  logic lizzieLet10_1_argbuf_r;
  Go_t lizzieLet4_3QError_Bool_2_argbuf_d;
  logic lizzieLet4_3QError_Bool_2_argbuf_r;
  Go_t lizzieLet4_3QNode_Bool_1_argbuf_d;
  logic lizzieLet4_3QNode_Bool_1_argbuf_r;
  Go_t lizzieLet4_3QNone_Bool_1_d;
  logic lizzieLet4_3QNone_Bool_1_r;
  Go_t lizzieLet4_3QNone_Bool_2_d;
  logic lizzieLet4_3QNone_Bool_2_r;
  QTree_Nat_t lizzieLet4_3QNone_Bool_1QNone_Nat_d;
  logic lizzieLet4_3QNone_Bool_1QNone_Nat_r;
  QTree_Nat_t lizzieLet5_1_argbuf_d;
  logic lizzieLet5_1_argbuf_r;
  Go_t lizzieLet4_3QNone_Bool_2_argbuf_d;
  logic lizzieLet4_3QNone_Bool_2_argbuf_r;
  C6_t go_9_goMux_choice_d;
  logic go_9_goMux_choice_r;
  Go_t go_9_goMux_data_d;
  logic go_9_goMux_data_r;
  \Pointer_CTf'_t  lizzieLet4_4QNone_Bool_d;
  logic lizzieLet4_4QNone_Bool_r;
  \Pointer_CTf'_t  lizzieLet4_4QVal_Bool_d;
  logic lizzieLet4_4QVal_Bool_r;
  \Pointer_CTf'_t  lizzieLet4_4QNode_Bool_d;
  logic lizzieLet4_4QNode_Bool_r;
  \Pointer_CTf'_t  lizzieLet4_4QError_Bool_d;
  logic lizzieLet4_4QError_Bool_r;
  \Pointer_CTf'_t  lizzieLet4_4QError_Bool_1_argbuf_d;
  logic lizzieLet4_4QError_Bool_1_argbuf_r;
  \CTf'_t  \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_d ;
  logic \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_r ;
  \CTf'_t  lizzieLet9_1_argbuf_d;
  logic lizzieLet9_1_argbuf_r;
  \Pointer_CTf'_t  lizzieLet4_4QNone_Bool_1_argbuf_d;
  logic lizzieLet4_4QNone_Bool_1_argbuf_r;
  MyBool_t _2_d;
  logic _2_r;
  assign _2_r = 1'd1;
  MyBool_t lizzieLet4_5QVal_Bool_d;
  logic lizzieLet4_5QVal_Bool_r;
  MyBool_t lizzieLet4_5QNode_Bool_d;
  logic lizzieLet4_5QNode_Bool_r;
  MyBool_t _1_d;
  logic _1_r;
  assign _1_r = 1'd1;
  MyBool_t lizzieLet4_5QNode_Bool_1_d;
  logic lizzieLet4_5QNode_Bool_1_r;
  MyBool_t lizzieLet4_5QNode_Bool_2_d;
  logic lizzieLet4_5QNode_Bool_2_r;
  MyBool_t lizzieLet4_5QNode_Bool_2_argbuf_d;
  logic lizzieLet4_5QNode_Bool_2_argbuf_r;
  MyBool_t lizzieLet4_5QVal_Bool_1_d;
  logic lizzieLet4_5QVal_Bool_1_r;
  MyBool_t lizzieLet4_5QVal_Bool_2_d;
  logic lizzieLet4_5QVal_Bool_2_r;
  MyBool_t lizzieLet4_5QVal_Bool_3_d;
  logic lizzieLet4_5QVal_Bool_3_r;
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_r;
  Go_t lizzieLet4_5QVal_Bool_1MyTrue_d;
  logic lizzieLet4_5QVal_Bool_1MyTrue_r;
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_1_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_1_r;
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_2_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_2_r;
  QTree_Nat_t lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_r;
  QTree_Nat_t lizzieLet6_1_1_argbuf_d;
  logic lizzieLet6_1_1_argbuf_r;
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_2MyFalse_d;
  logic lizzieLet4_5QVal_Bool_2MyFalse_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_2MyTrue_d;
  logic lizzieLet4_5QVal_Bool_2MyTrue_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_d;
  logic lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_r;
  MyBool_t _0_d;
  logic _0_r;
  assign _0_r = 1'd1;
  MyBool_t lizzieLet4_5QVal_Bool_3MyTrue_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_r;
  MyBool_t lizzieLet4_5QVal_Bool_3MyTrue_1_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1_r;
  MyBool_t lizzieLet4_5QVal_Bool_3MyTrue_2_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_r;
  QTree_Nat_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_r;
  QTree_Nat_t lizzieLet7_1_1_argbuf_d;
  logic lizzieLet7_1_1_argbuf_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_r;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_r;
  TupGo_t \lvl1rrw-45TupGo_1_d ;
  logic \lvl1rrw-45TupGo_1_r ;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_r;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_r;
  Go_t \lvl1rrw-45TupGogo_6_d ;
  logic \lvl1rrw-45TupGogo_6_r ;
  Go_t go_6_1_argbuf_d;
  logic go_6_1_argbuf_r;
  Pointer_QTree_Nat_t lizzieLet8_1_1_argbuf_d;
  logic lizzieLet8_1_1_argbuf_r;
  Go_t \lvlrrv-44TupGogo_7_d ;
  logic \lvlrrv-44TupGogo_7_r ;
  Nat_t go_7_1Zero_d;
  logic go_7_1Zero_r;
  QTree_Nat_t lizzieLet13_1QVal_Nat_d;
  logic lizzieLet13_1QVal_Nat_r;
  Pointer_QTree_Bool_t m1abX_1_argbuf_d;
  logic m1abX_1_argbuf_r;
  Pointer_QTree_Bool_t m2abY_2_2_argbuf_d;
  logic m2abY_2_2_argbuf_r;
  Pointer_QTree_Bool_t m2abY_2_1_d;
  logic m2abY_2_1_r;
  Pointer_QTree_Bool_t m2abY_2_2_d;
  logic m2abY_2_2_r;
  Pointer_QTree_Bool_t m2abY_3_2_argbuf_d;
  logic m2abY_3_2_argbuf_r;
  Pointer_QTree_Bool_t m2abY_3_1_d;
  logic m2abY_3_1_r;
  Pointer_QTree_Bool_t m2abY_3_2_d;
  logic m2abY_3_2_r;
  Pointer_QTree_Bool_t m2abY_4_1_argbuf_d;
  logic m2abY_4_1_argbuf_r;
  Pointer_QTree_Bool_t m2ac4_1_argbuf_d;
  logic m2ac4_1_argbuf_r;
  Pointer_QTree_Bool_t q1ac0_3_1_argbuf_d;
  logic q1ac0_3_1_argbuf_r;
  Pointer_QTree_Bool_t q1ac7_3_1_argbuf_d;
  logic q1ac7_3_1_argbuf_r;
  Pointer_QTree_Bool_t q2ac1_2_1_argbuf_d;
  logic q2ac1_2_1_argbuf_r;
  Pointer_QTree_Bool_t q2ac8_2_1_argbuf_d;
  logic q2ac8_2_1_argbuf_r;
  Pointer_QTree_Bool_t q3ac2_1_1_argbuf_d;
  logic q3ac2_1_1_argbuf_r;
  Pointer_QTree_Bool_t q3ac9_1_1_argbuf_d;
  logic q3ac9_1_1_argbuf_r;
  Pointer_QTree_Bool_t q4ac3_1_argbuf_d;
  logic q4ac3_1_argbuf_r;
  Pointer_QTree_Bool_t q4aca_1_argbuf_d;
  logic q4aca_1_argbuf_r;
  \CTf'_t  \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d ;
  logic \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_r ;
  \CTf'_t  lizzieLet22_1_d;
  logic lizzieLet22_1_r;
  \CTf'_t  lizzieLet22_2_d;
  logic lizzieLet22_2_r;
  \CTf'_t  lizzieLet22_3_d;
  logic lizzieLet22_3_r;
  \CTf'_t  lizzieLet22_4_d;
  logic lizzieLet22_4_r;
  CTf_t readPointer_CTfscfarg_0_1_argbuf_rwb_d;
  logic readPointer_CTfscfarg_0_1_argbuf_rwb_r;
  CTf_t lizzieLet17_1_d;
  logic lizzieLet17_1_r;
  CTf_t lizzieLet17_2_d;
  logic lizzieLet17_2_r;
  CTf_t lizzieLet17_3_d;
  logic lizzieLet17_3_r;
  CTf_t lizzieLet17_4_d;
  logic lizzieLet17_4_r;
  QTree_Bool_t readPointer_QTree_Boolm1abX_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm1abX_1_argbuf_rwb_r;
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
  QTree_Bool_t readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d;
  logic readPointer_QTree_Boolm2ac4_1_argbuf_rwb_r;
  QTree_Bool_t lizzieLet4_1_d;
  logic lizzieLet4_1_r;
  QTree_Bool_t lizzieLet4_2_d;
  logic lizzieLet4_2_r;
  QTree_Bool_t lizzieLet4_3_d;
  logic lizzieLet4_3_r;
  QTree_Bool_t lizzieLet4_4_d;
  logic lizzieLet4_4_r;
  QTree_Bool_t lizzieLet4_5_d;
  logic lizzieLet4_5_r;
  Pointer_CTf_t sc_0_5_1_argbuf_d;
  logic sc_0_5_1_argbuf_r;
  \Pointer_CTf'_t  sc_0_9_1_argbuf_d;
  logic sc_0_9_1_argbuf_r;
  \Pointer_CTf'_t  scfarg_0_1_1_argbuf_d;
  logic scfarg_0_1_1_argbuf_r;
  Pointer_CTf_t scfarg_0_1_argbuf_d;
  logic scfarg_0_1_argbuf_r;
  MyBool_t vabZ_1_argbuf_d;
  logic vabZ_1_argbuf_r;
  MyBool_t vac5_2_2_argbuf_d;
  logic vac5_2_2_argbuf_r;
  MyBool_t vac5_2_1_d;
  logic vac5_2_1_r;
  MyBool_t vac5_2_2_d;
  logic vac5_2_2_r;
  MyBool_t vac5_3_2_argbuf_d;
  logic vac5_3_2_argbuf_r;
  MyBool_t vac5_3_1_d;
  logic vac5_3_1_r;
  MyBool_t vac5_3_2_d;
  logic vac5_3_2_r;
  MyBool_t vac5_4_1_argbuf_d;
  logic vac5_4_1_argbuf_r;
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_rwb_d ;
  logic \writeCTf'lizzieLet12_1_argbuf_rwb_r ;
  \Pointer_CTf'_t  lizzieLet5_1_1_argbuf_d;
  logic lizzieLet5_1_1_argbuf_r;
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_rwb_d ;
  logic \writeCTf'lizzieLet23_1_argbuf_rwb_r ;
  \Pointer_CTf'_t  sca2_1_1_argbuf_d;
  logic sca2_1_1_argbuf_r;
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_rwb_d ;
  logic \writeCTf'lizzieLet24_1_argbuf_rwb_r ;
  \Pointer_CTf'_t  sca1_1_1_argbuf_d;
  logic sca1_1_1_argbuf_r;
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_rwb_d ;
  logic \writeCTf'lizzieLet25_1_argbuf_rwb_r ;
  \Pointer_CTf'_t  sca0_1_1_argbuf_d;
  logic sca0_1_1_argbuf_r;
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_rwb_d ;
  logic \writeCTf'lizzieLet9_1_argbuf_rwb_r ;
  \Pointer_CTf'_t  sca3_1_1_argbuf_d;
  logic sca3_1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_rwb_d;
  logic writeCTflizzieLet11_1_argbuf_rwb_r;
  Pointer_CTf_t lizzieLet9_1_1_argbuf_d;
  logic lizzieLet9_1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_rwb_d;
  logic writeCTflizzieLet18_1_argbuf_rwb_r;
  Pointer_CTf_t sca2_1_argbuf_d;
  logic sca2_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_rwb_d;
  logic writeCTflizzieLet19_1_argbuf_rwb_r;
  Pointer_CTf_t sca1_1_argbuf_d;
  logic sca1_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_rwb_d;
  logic writeCTflizzieLet20_1_argbuf_rwb_r;
  Pointer_CTf_t sca0_1_argbuf_d;
  logic sca0_1_argbuf_r;
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_rwb_d;
  logic writeCTflizzieLet2_1_argbuf_rwb_r;
  Pointer_CTf_t sca3_1_argbuf_d;
  logic sca3_1_argbuf_r;
  Pointer_Nat_t writeNatlizzieLet15_1_argbuf_rwb_d;
  logic writeNatlizzieLet15_1_argbuf_rwb_r;
  Nat_t lizzieLet0_1_1Succ_d;
  logic lizzieLet0_1_1Succ_r;
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_rwb_d;
  logic writeNatlizzieLet16_1_argbuf_rwb_r;
  Pointer_Nat_t \lvlrrv-44_resbuf_d ;
  logic \lvlrrv-44_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet10_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet4_1_1_argbuf_d;
  logic lizzieLet4_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet14_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet14_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t \lvl1rrw-45_resbuf_d ;
  logic \lvl1rrw-45_resbuf_r ;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet1_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet6_1_argbuf_d;
  logic lizzieLet6_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet21_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t contRet_0_1_argbuf_d;
  logic contRet_0_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet26_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t contRet_0_1_1_argbuf_d;
  logic contRet_0_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet3_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet8_1_argbuf_d;
  logic lizzieLet8_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet5_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet1_1_1_argbuf_d;
  logic lizzieLet1_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet6_1_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet2_1_1_argbuf_d;
  logic lizzieLet2_1_1_argbuf_r;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_rwb_d;
  logic writeQTree_NatlizzieLet7_1_1_argbuf_rwb_r;
  Pointer_QTree_Nat_t lizzieLet3_1_1_argbuf_d;
  logic lizzieLet3_1_1_argbuf_r;
  
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
  
  /* mergectrl (Ty C9,Ty QTree_Nat) : [(lizzieLet10_1_argbuf,QTree_Nat),
                                  (lizzieLet14_1_argbuf,QTree_Nat),
                                  (lizzieLet1_1_argbuf,QTree_Nat),
                                  (lizzieLet21_1_argbuf,QTree_Nat),
                                  (lizzieLet26_1_argbuf,QTree_Nat),
                                  (lizzieLet3_1_argbuf,QTree_Nat),
                                  (lizzieLet5_1_argbuf,QTree_Nat),
                                  (lizzieLet6_1_1_argbuf,QTree_Nat),
                                  (lizzieLet7_1_1_argbuf,QTree_Nat)] > (writeMerge_choice_QTree_Nat,C9) (writeMerge_data_QTree_Nat,QTree_Nat) */
  logic [8:0] lizzieLet10_1_argbuf_select_d;
  assign lizzieLet10_1_argbuf_select_d = ((| lizzieLet10_1_argbuf_select_q) ? lizzieLet10_1_argbuf_select_q :
                                          (lizzieLet10_1_argbuf_d[0] ? 9'd1 :
                                           (lizzieLet14_1_argbuf_d[0] ? 9'd2 :
                                            (lizzieLet1_1_argbuf_d[0] ? 9'd4 :
                                             (lizzieLet21_1_argbuf_d[0] ? 9'd8 :
                                              (lizzieLet26_1_argbuf_d[0] ? 9'd16 :
                                               (lizzieLet3_1_argbuf_d[0] ? 9'd32 :
                                                (lizzieLet5_1_argbuf_d[0] ? 9'd64 :
                                                 (lizzieLet6_1_1_argbuf_d[0] ? 9'd128 :
                                                  (lizzieLet7_1_1_argbuf_d[0] ? 9'd256 :
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
  assign lizzieLet10_1_argbuf_emit_d = (lizzieLet10_1_argbuf_emit_q | ({writeMerge_choice_QTree_Nat_d[0],
                                                                        writeMerge_data_QTree_Nat_d[0]} & {writeMerge_choice_QTree_Nat_r,
                                                                                                           writeMerge_data_QTree_Nat_r}));
  logic lizzieLet10_1_argbuf_done;
  assign lizzieLet10_1_argbuf_done = (& lizzieLet10_1_argbuf_emit_d);
  assign {lizzieLet7_1_1_argbuf_r,
          lizzieLet6_1_1_argbuf_r,
          lizzieLet5_1_argbuf_r,
          lizzieLet3_1_argbuf_r,
          lizzieLet26_1_argbuf_r,
          lizzieLet21_1_argbuf_r,
          lizzieLet1_1_argbuf_r,
          lizzieLet14_1_argbuf_r,
          lizzieLet10_1_argbuf_r} = (lizzieLet10_1_argbuf_done ? lizzieLet10_1_argbuf_select_d :
                                     9'd0);
  assign writeMerge_data_QTree_Nat_d = ((lizzieLet10_1_argbuf_select_d[0] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet10_1_argbuf_d :
                                        ((lizzieLet10_1_argbuf_select_d[1] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet14_1_argbuf_d :
                                         ((lizzieLet10_1_argbuf_select_d[2] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet1_1_argbuf_d :
                                          ((lizzieLet10_1_argbuf_select_d[3] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet21_1_argbuf_d :
                                           ((lizzieLet10_1_argbuf_select_d[4] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet26_1_argbuf_d :
                                            ((lizzieLet10_1_argbuf_select_d[5] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet3_1_argbuf_d :
                                             ((lizzieLet10_1_argbuf_select_d[6] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet5_1_argbuf_d :
                                              ((lizzieLet10_1_argbuf_select_d[7] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet6_1_1_argbuf_d :
                                               ((lizzieLet10_1_argbuf_select_d[8] && (! lizzieLet10_1_argbuf_emit_q[0])) ? lizzieLet7_1_1_argbuf_d :
                                                {66'd0, 1'd0})))))))));
  assign writeMerge_choice_QTree_Nat_d = ((lizzieLet10_1_argbuf_select_d[0] && (! lizzieLet10_1_argbuf_emit_q[1])) ? C1_9_dc(1'd1) :
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
       Ty Pointer_QTree_Nat) : (writeMerge_choice_QTree_Nat,C9) (demuxWriteResult_QTree_Nat,Pointer_QTree_Nat) > [(writeQTree_NatlizzieLet10_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet14_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet1_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet21_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet26_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet3_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet5_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet6_1_1_argbuf,Pointer_QTree_Nat),
                                                                                                                  (writeQTree_NatlizzieLet7_1_1_argbuf,Pointer_QTree_Nat)] */
  logic [8:0] demuxWriteResult_QTree_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Nat_d[0] && demuxWriteResult_QTree_Nat_d[0]))
      unique case (writeMerge_choice_QTree_Nat_d[4:1])
        4'd0: demuxWriteResult_QTree_Nat_onehotd = 9'd1;
        4'd1: demuxWriteResult_QTree_Nat_onehotd = 9'd2;
        4'd2: demuxWriteResult_QTree_Nat_onehotd = 9'd4;
        4'd3: demuxWriteResult_QTree_Nat_onehotd = 9'd8;
        4'd4: demuxWriteResult_QTree_Nat_onehotd = 9'd16;
        4'd5: demuxWriteResult_QTree_Nat_onehotd = 9'd32;
        4'd6: demuxWriteResult_QTree_Nat_onehotd = 9'd64;
        4'd7: demuxWriteResult_QTree_Nat_onehotd = 9'd128;
        4'd8: demuxWriteResult_QTree_Nat_onehotd = 9'd256;
        default: demuxWriteResult_QTree_Nat_onehotd = 9'd0;
      endcase
    else demuxWriteResult_QTree_Nat_onehotd = 9'd0;
  assign writeQTree_NatlizzieLet10_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[0]};
  assign writeQTree_NatlizzieLet14_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[1]};
  assign writeQTree_NatlizzieLet1_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                demuxWriteResult_QTree_Nat_onehotd[2]};
  assign writeQTree_NatlizzieLet21_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[3]};
  assign writeQTree_NatlizzieLet26_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                 demuxWriteResult_QTree_Nat_onehotd[4]};
  assign writeQTree_NatlizzieLet3_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                demuxWriteResult_QTree_Nat_onehotd[5]};
  assign writeQTree_NatlizzieLet5_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                demuxWriteResult_QTree_Nat_onehotd[6]};
  assign writeQTree_NatlizzieLet6_1_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                  demuxWriteResult_QTree_Nat_onehotd[7]};
  assign writeQTree_NatlizzieLet7_1_1_argbuf_d = {demuxWriteResult_QTree_Nat_d[16:1],
                                                  demuxWriteResult_QTree_Nat_onehotd[8]};
  assign demuxWriteResult_QTree_Nat_r = (| (demuxWriteResult_QTree_Nat_onehotd & {writeQTree_NatlizzieLet7_1_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet6_1_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet5_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet3_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet26_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet21_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet1_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet14_1_argbuf_r,
                                                                                  writeQTree_NatlizzieLet10_1_argbuf_r}));
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
       Ty Pointer_QTree_Nat) : (memWriteOut_QTree_Nat,MemOut_QTree_Nat) (dconPtr_QTree_Nat,Pointer_QTree_Nat) > [(_17,Pointer_QTree_Nat),
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
  assign _17_d = {dconPtr_QTree_Nat_d[16:1],
                  dconPtr_QTree_Nat_onehotd[0]};
  assign demuxWriteResult_QTree_Nat_d = {dconPtr_QTree_Nat_d[16:1],
                                         dconPtr_QTree_Nat_onehotd[1]};
  assign dconPtr_QTree_Nat_r = (| (dconPtr_QTree_Nat_onehotd & {demuxWriteResult_QTree_Nat_r,
                                                                _17_r}));
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
                              {100'd0, 1'd0}));
  assign memMergeChoice_CTf_d = ((dconReadIn_CTf_select_d[0] && (! dconReadIn_CTf_emit_q[1])) ? C1_2_dc(1'd1) :
                                 ((dconReadIn_CTf_select_d[1] && (! dconReadIn_CTf_emit_q[1])) ? C2_2_dc(1'd1) :
                                  {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTf,
      Ty MemOut_CTf) : (memMergeIn_CTf_dbuf,MemIn_CTf) > (memOut_CTf,MemOut_CTf) */
  logic [82:0] memMergeIn_CTf_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CTf_dbuf_address;
  logic [82:0] memMergeIn_CTf_dbuf_din;
  logic [82:0] memOut_CTf_q;
  logic memOut_CTf_valid;
  logic memMergeIn_CTf_dbuf_we;
  logic memOut_CTf_we;
  assign memMergeIn_CTf_dbuf_din = memMergeIn_CTf_dbuf_d[100:18];
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
  assign memReadOut_CTf_d = {memOut_CTf_dbuf_d[84:1],
                             memOut_CTf_dbuf_onehotd[0]};
  assign memWriteOut_CTf_d = {memOut_CTf_dbuf_d[84:1],
                              memOut_CTf_dbuf_onehotd[1]};
  assign memOut_CTf_dbuf_r = (| (memOut_CTf_dbuf_onehotd & {memWriteOut_CTf_r,
                                                            memReadOut_CTf_r}));
  assign memMergeChoice_CTf_r = memOut_CTf_dbuf_r;
  
  /* dbuf (Ty MemIn_CTf) : (memMergeIn_CTf_rbuf,MemIn_CTf) > (memMergeIn_CTf_dbuf,MemIn_CTf) */
  assign memMergeIn_CTf_rbuf_r = ((! memMergeIn_CTf_dbuf_d[0]) || memMergeIn_CTf_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CTf_dbuf_d <= {100'd0, 1'd0};
    else
      if (memMergeIn_CTf_rbuf_r)
        memMergeIn_CTf_dbuf_d <= memMergeIn_CTf_rbuf_d;
  
  /* rbuf (Ty MemIn_CTf) : (memMergeIn_CTf,MemIn_CTf) > (memMergeIn_CTf_rbuf,MemIn_CTf) */
  MemIn_CTf_t memMergeIn_CTf_buf;
  assign memMergeIn_CTf_r = (! memMergeIn_CTf_buf[0]);
  assign memMergeIn_CTf_rbuf_d = (memMergeIn_CTf_buf[0] ? memMergeIn_CTf_buf :
                                  memMergeIn_CTf_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CTf_buf <= {100'd0, 1'd0};
    else
      if ((memMergeIn_CTf_rbuf_r && memMergeIn_CTf_buf[0]))
        memMergeIn_CTf_buf <= {100'd0, 1'd0};
      else if (((! memMergeIn_CTf_rbuf_r) && (! memMergeIn_CTf_buf[0])))
        memMergeIn_CTf_buf <= memMergeIn_CTf_d;
  
  /* dbuf (Ty MemOut_CTf) : (memOut_CTf_rbuf,MemOut_CTf) > (memOut_CTf_dbuf,MemOut_CTf) */
  assign memOut_CTf_rbuf_r = ((! memOut_CTf_dbuf_d[0]) || memOut_CTf_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTf_dbuf_d <= {84'd0, 1'd0};
    else if (memOut_CTf_rbuf_r) memOut_CTf_dbuf_d <= memOut_CTf_rbuf_d;
  
  /* rbuf (Ty MemOut_CTf) : (memOut_CTf,MemOut_CTf) > (memOut_CTf_rbuf,MemOut_CTf) */
  MemOut_CTf_t memOut_CTf_buf;
  assign memOut_CTf_r = (! memOut_CTf_buf[0]);
  assign memOut_CTf_rbuf_d = (memOut_CTf_buf[0] ? memOut_CTf_buf :
                              memOut_CTf_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTf_buf <= {84'd0, 1'd0};
    else
      if ((memOut_CTf_rbuf_r && memOut_CTf_buf[0]))
        memOut_CTf_buf <= {84'd0, 1'd0};
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
  assign readPointer_CTfscfarg_0_1_argbuf_d = {memReadOut_CTf_d[84:2],
                                               memReadOut_CTf_d[0]};
  assign memReadOut_CTf_r = readPointer_CTfscfarg_0_1_argbuf_r;
  
  /* mergectrl (Ty C5,Ty CTf) : [(lizzieLet11_1_argbuf,CTf),
                            (lizzieLet18_1_argbuf,CTf),
                            (lizzieLet19_1_argbuf,CTf),
                            (lizzieLet20_1_argbuf,CTf),
                            (lizzieLet2_1_argbuf,CTf)] > (writeMerge_choice_CTf,C5) (writeMerge_data_CTf,CTf) */
  logic [4:0] lizzieLet11_1_argbuf_select_d;
  assign lizzieLet11_1_argbuf_select_d = ((| lizzieLet11_1_argbuf_select_q) ? lizzieLet11_1_argbuf_select_q :
                                          (lizzieLet11_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet18_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet19_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet20_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet2_1_argbuf_d[0] ? 5'd16 :
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
  assign lizzieLet11_1_argbuf_emit_d = (lizzieLet11_1_argbuf_emit_q | ({writeMerge_choice_CTf_d[0],
                                                                        writeMerge_data_CTf_d[0]} & {writeMerge_choice_CTf_r,
                                                                                                     writeMerge_data_CTf_r}));
  logic lizzieLet11_1_argbuf_done;
  assign lizzieLet11_1_argbuf_done = (& lizzieLet11_1_argbuf_emit_d);
  assign {lizzieLet2_1_argbuf_r,
          lizzieLet20_1_argbuf_r,
          lizzieLet19_1_argbuf_r,
          lizzieLet18_1_argbuf_r,
          lizzieLet11_1_argbuf_r} = (lizzieLet11_1_argbuf_done ? lizzieLet11_1_argbuf_select_d :
                                     5'd0);
  assign writeMerge_data_CTf_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet11_1_argbuf_d :
                                  ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet18_1_argbuf_d :
                                   ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet19_1_argbuf_d :
                                    ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet20_1_argbuf_d :
                                     ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[0])) ? lizzieLet2_1_argbuf_d :
                                      {83'd0, 1'd0})))));
  assign writeMerge_choice_CTf_d = ((lizzieLet11_1_argbuf_select_d[0] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                    ((lizzieLet11_1_argbuf_select_d[1] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                     ((lizzieLet11_1_argbuf_select_d[2] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                      ((lizzieLet11_1_argbuf_select_d[3] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                       ((lizzieLet11_1_argbuf_select_d[4] && (! lizzieLet11_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                        {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTf) : (writeMerge_choice_CTf,C5) (demuxWriteResult_CTf,Pointer_CTf) > [(writeCTflizzieLet11_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet18_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet19_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet20_1_argbuf,Pointer_CTf),
                                                                                          (writeCTflizzieLet2_1_argbuf,Pointer_CTf)] */
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
  assign writeCTflizzieLet11_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[0]};
  assign writeCTflizzieLet18_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[1]};
  assign writeCTflizzieLet19_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[2]};
  assign writeCTflizzieLet20_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                           demuxWriteResult_CTf_onehotd[3]};
  assign writeCTflizzieLet2_1_argbuf_d = {demuxWriteResult_CTf_d[16:1],
                                          demuxWriteResult_CTf_onehotd[4]};
  assign demuxWriteResult_CTf_r = (| (demuxWriteResult_CTf_onehotd & {writeCTflizzieLet2_1_argbuf_r,
                                                                      writeCTflizzieLet20_1_argbuf_r,
                                                                      writeCTflizzieLet19_1_argbuf_r,
                                                                      writeCTflizzieLet18_1_argbuf_r,
                                                                      writeCTflizzieLet11_1_argbuf_r}));
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
       Ty Pointer_CTf) : (memWriteOut_CTf,MemOut_CTf) (dconPtr_CTf,Pointer_CTf) > [(_16,Pointer_CTf),
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
  assign _16_d = {dconPtr_CTf_d[16:1], dconPtr_CTf_onehotd[0]};
  assign demuxWriteResult_CTf_d = {dconPtr_CTf_d[16:1],
                                   dconPtr_CTf_onehotd[1]};
  assign dconPtr_CTf_r = (| (dconPtr_CTf_onehotd & {demuxWriteResult_CTf_r,
                                                    _16_r}));
  assign memWriteOut_CTf_r = dconPtr_CTf_r;
  
  /* const (Ty Word16#,Lit 0) : (goFor_6,Go) > (initHP_CTf',Word16#) */
  assign \initHP_CTf'_d  = {16'd0, goFor_6_d[0]};
  assign goFor_6_r = \initHP_CTf'_r ;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CTf'1,Go) > (incrHP_CTf',Word16#) */
  assign \incrHP_CTf'_d  = {16'd1, \incrHP_CTf'1_d [0]};
  assign \incrHP_CTf'1_r  = \incrHP_CTf'_r ;
  
  /* merge (Ty Go) : [(goFor_7,Go),
                 (incrHP_CTf'2,Go)] > (incrHP_mergeCTf',Go) */
  logic [1:0] \incrHP_mergeCTf'_selected ;
  logic [1:0] \incrHP_mergeCTf'_select ;
  always_comb
    begin
      \incrHP_mergeCTf'_selected  = 2'd0;
      if ((| \incrHP_mergeCTf'_select ))
        \incrHP_mergeCTf'_selected  = \incrHP_mergeCTf'_select ;
      else
        if (goFor_7_d[0]) \incrHP_mergeCTf'_selected [0] = 1'd1;
        else if (\incrHP_CTf'2_d [0])
          \incrHP_mergeCTf'_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \incrHP_mergeCTf'_select  <= 2'd0;
    else
      \incrHP_mergeCTf'_select  <= (\incrHP_mergeCTf'_r  ? 2'd0 :
                                    \incrHP_mergeCTf'_selected );
  always_comb
    if (\incrHP_mergeCTf'_selected [0])
      \incrHP_mergeCTf'_d  = goFor_7_d;
    else if (\incrHP_mergeCTf'_selected [1])
      \incrHP_mergeCTf'_d  = \incrHP_CTf'2_d ;
    else \incrHP_mergeCTf'_d  = 1'd0;
  assign {\incrHP_CTf'2_r ,
          goFor_7_r} = (\incrHP_mergeCTf'_r  ? \incrHP_mergeCTf'_selected  :
                        2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTf'_buf,Go) > [(incrHP_CTf'1,Go),
                                            (incrHP_CTf'2,Go)] */
  logic [1:0] \incrHP_mergeCTf'_buf_emitted ;
  logic [1:0] \incrHP_mergeCTf'_buf_done ;
  assign \incrHP_CTf'1_d  = (\incrHP_mergeCTf'_buf_d [0] && (! \incrHP_mergeCTf'_buf_emitted [0]));
  assign \incrHP_CTf'2_d  = (\incrHP_mergeCTf'_buf_d [0] && (! \incrHP_mergeCTf'_buf_emitted [1]));
  assign \incrHP_mergeCTf'_buf_done  = (\incrHP_mergeCTf'_buf_emitted  | ({\incrHP_CTf'2_d [0],
                                                                           \incrHP_CTf'1_d [0]} & {\incrHP_CTf'2_r ,
                                                                                                   \incrHP_CTf'1_r }));
  assign \incrHP_mergeCTf'_buf_r  = (& \incrHP_mergeCTf'_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \incrHP_mergeCTf'_buf_emitted  <= 2'd0;
    else
      \incrHP_mergeCTf'_buf_emitted  <= (\incrHP_mergeCTf'_buf_r  ? 2'd0 :
                                         \incrHP_mergeCTf'_buf_done );
  
  /* op_add (Ty Word16#) : (incrHP_CTf',Word16#) (forkHP1_CTf',Word16#) > (addHP_CTf',Word16#) */
  assign \addHP_CTf'_d  = {(\incrHP_CTf'_d [16:1] + \forkHP1_CTf'_d [16:1]),
                           (\incrHP_CTf'_d [0] && \forkHP1_CTf'_d [0])};
  assign {\incrHP_CTf'_r ,
          \forkHP1_CTf'_r } = {2 {(\addHP_CTf'_r  && \addHP_CTf'_d [0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTf',Word16#),
                      (addHP_CTf',Word16#)] > (mergeHP_CTf',Word16#) */
  logic [1:0] \mergeHP_CTf'_selected ;
  logic [1:0] \mergeHP_CTf'_select ;
  always_comb
    begin
      \mergeHP_CTf'_selected  = 2'd0;
      if ((| \mergeHP_CTf'_select ))
        \mergeHP_CTf'_selected  = \mergeHP_CTf'_select ;
      else
        if (\initHP_CTf'_d [0]) \mergeHP_CTf'_selected [0] = 1'd1;
        else if (\addHP_CTf'_d [0]) \mergeHP_CTf'_selected [1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \mergeHP_CTf'_select  <= 2'd0;
    else
      \mergeHP_CTf'_select  <= (\mergeHP_CTf'_r  ? 2'd0 :
                                \mergeHP_CTf'_selected );
  always_comb
    if (\mergeHP_CTf'_selected [0]) \mergeHP_CTf'_d  = \initHP_CTf'_d ;
    else if (\mergeHP_CTf'_selected [1])
      \mergeHP_CTf'_d  = \addHP_CTf'_d ;
    else \mergeHP_CTf'_d  = {16'd0, 1'd0};
  assign {\addHP_CTf'_r ,
          \initHP_CTf'_r } = (\mergeHP_CTf'_r  ? \mergeHP_CTf'_selected  :
                              2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTf',Go) > (incrHP_mergeCTf'_buf,Go) */
  Go_t \incrHP_mergeCTf'_bufchan_d ;
  logic \incrHP_mergeCTf'_bufchan_r ;
  assign \incrHP_mergeCTf'_r  = ((! \incrHP_mergeCTf'_bufchan_d [0]) || \incrHP_mergeCTf'_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \incrHP_mergeCTf'_bufchan_d  <= 1'd0;
    else
      if (\incrHP_mergeCTf'_r )
        \incrHP_mergeCTf'_bufchan_d  <= \incrHP_mergeCTf'_d ;
  Go_t \incrHP_mergeCTf'_bufchan_buf ;
  assign \incrHP_mergeCTf'_bufchan_r  = (! \incrHP_mergeCTf'_bufchan_buf [0]);
  assign \incrHP_mergeCTf'_buf_d  = (\incrHP_mergeCTf'_bufchan_buf [0] ? \incrHP_mergeCTf'_bufchan_buf  :
                                     \incrHP_mergeCTf'_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \incrHP_mergeCTf'_bufchan_buf  <= 1'd0;
    else
      if ((\incrHP_mergeCTf'_buf_r  && \incrHP_mergeCTf'_bufchan_buf [0]))
        \incrHP_mergeCTf'_bufchan_buf  <= 1'd0;
      else if (((! \incrHP_mergeCTf'_buf_r ) && (! \incrHP_mergeCTf'_bufchan_buf [0])))
        \incrHP_mergeCTf'_bufchan_buf  <= \incrHP_mergeCTf'_bufchan_d ;
  
  /* buf (Ty Word16#) : (mergeHP_CTf',Word16#) > (mergeHP_CTf'_buf,Word16#) */
  \Word16#_t  \mergeHP_CTf'_bufchan_d ;
  logic \mergeHP_CTf'_bufchan_r ;
  assign \mergeHP_CTf'_r  = ((! \mergeHP_CTf'_bufchan_d [0]) || \mergeHP_CTf'_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \mergeHP_CTf'_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\mergeHP_CTf'_r ) \mergeHP_CTf'_bufchan_d  <= \mergeHP_CTf'_d ;
  \Word16#_t  \mergeHP_CTf'_bufchan_buf ;
  assign \mergeHP_CTf'_bufchan_r  = (! \mergeHP_CTf'_bufchan_buf [0]);
  assign \mergeHP_CTf'_buf_d  = (\mergeHP_CTf'_bufchan_buf [0] ? \mergeHP_CTf'_bufchan_buf  :
                                 \mergeHP_CTf'_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \mergeHP_CTf'_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\mergeHP_CTf'_buf_r  && \mergeHP_CTf'_bufchan_buf [0]))
        \mergeHP_CTf'_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \mergeHP_CTf'_buf_r ) && (! \mergeHP_CTf'_bufchan_buf [0])))
        \mergeHP_CTf'_bufchan_buf  <= \mergeHP_CTf'_bufchan_d ;
  
  /* fork (Ty Word16#) : (mergeHP_CTf'_buf,Word16#) > [(forkHP1_CTf',Word16#),
                                                  (forkHP1_CTf2,Word16#),
                                                  (forkHP1_CTf3,Word16#)] */
  logic [2:0] \mergeHP_CTf'_buf_emitted ;
  logic [2:0] \mergeHP_CTf'_buf_done ;
  assign \forkHP1_CTf'_d  = {\mergeHP_CTf'_buf_d [16:1],
                             (\mergeHP_CTf'_buf_d [0] && (! \mergeHP_CTf'_buf_emitted [0]))};
  assign forkHP1_CTf2_d = {\mergeHP_CTf'_buf_d [16:1],
                           (\mergeHP_CTf'_buf_d [0] && (! \mergeHP_CTf'_buf_emitted [1]))};
  assign forkHP1_CTf3_d = {\mergeHP_CTf'_buf_d [16:1],
                           (\mergeHP_CTf'_buf_d [0] && (! \mergeHP_CTf'_buf_emitted [2]))};
  assign \mergeHP_CTf'_buf_done  = (\mergeHP_CTf'_buf_emitted  | ({forkHP1_CTf3_d[0],
                                                                   forkHP1_CTf2_d[0],
                                                                   \forkHP1_CTf'_d [0]} & {forkHP1_CTf3_r,
                                                                                           forkHP1_CTf2_r,
                                                                                           \forkHP1_CTf'_r }));
  assign \mergeHP_CTf'_buf_r  = (& \mergeHP_CTf'_buf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \mergeHP_CTf'_buf_emitted  <= 3'd0;
    else
      \mergeHP_CTf'_buf_emitted  <= (\mergeHP_CTf'_buf_r  ? 3'd0 :
                                     \mergeHP_CTf'_buf_done );
  
  /* mergectrl (Ty C2,Ty MemIn_CTf') : [(dconReadIn_CTf',MemIn_CTf'),
                                   (dconWriteIn_CTf',MemIn_CTf')] > (memMergeChoice_CTf',C2) (memMergeIn_CTf',MemIn_CTf') */
  logic [1:0] \dconReadIn_CTf'_select_d ;
  assign \dconReadIn_CTf'_select_d  = ((| \dconReadIn_CTf'_select_q ) ? \dconReadIn_CTf'_select_q  :
                                       (\dconReadIn_CTf'_d [0] ? 2'd1 :
                                        (\dconWriteIn_CTf'_d [0] ? 2'd2 :
                                         2'd0)));
  logic [1:0] \dconReadIn_CTf'_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \dconReadIn_CTf'_select_q  <= 2'd0;
    else
      \dconReadIn_CTf'_select_q  <= (\dconReadIn_CTf'_done  ? 2'd0 :
                                     \dconReadIn_CTf'_select_d );
  logic [1:0] \dconReadIn_CTf'_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \dconReadIn_CTf'_emit_q  <= 2'd0;
    else
      \dconReadIn_CTf'_emit_q  <= (\dconReadIn_CTf'_done  ? 2'd0 :
                                   \dconReadIn_CTf'_emit_d );
  logic [1:0] \dconReadIn_CTf'_emit_d ;
  assign \dconReadIn_CTf'_emit_d  = (\dconReadIn_CTf'_emit_q  | ({\memMergeChoice_CTf'_d [0],
                                                                  \memMergeIn_CTf'_d [0]} & {\memMergeChoice_CTf'_r ,
                                                                                             \memMergeIn_CTf'_r }));
  logic \dconReadIn_CTf'_done ;
  assign \dconReadIn_CTf'_done  = (& \dconReadIn_CTf'_emit_d );
  assign {\dconWriteIn_CTf'_r ,
          \dconReadIn_CTf'_r } = (\dconReadIn_CTf'_done  ? \dconReadIn_CTf'_select_d  :
                                  2'd0);
  assign \memMergeIn_CTf'_d  = ((\dconReadIn_CTf'_select_d [0] && (! \dconReadIn_CTf'_emit_q [0])) ? \dconReadIn_CTf'_d  :
                                ((\dconReadIn_CTf'_select_d [1] && (! \dconReadIn_CTf'_emit_q [0])) ? \dconWriteIn_CTf'_d  :
                                 {85'd0, 1'd0}));
  assign \memMergeChoice_CTf'_d  = ((\dconReadIn_CTf'_select_d [0] && (! \dconReadIn_CTf'_emit_q [1])) ? C1_2_dc(1'd1) :
                                    ((\dconReadIn_CTf'_select_d [1] && (! \dconReadIn_CTf'_emit_q [1])) ? C2_2_dc(1'd1) :
                                     {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTf',
      Ty MemOut_CTf') : (memMergeIn_CTf'_dbuf,MemIn_CTf') > (memOut_CTf',MemOut_CTf') */
  logic [67:0] \memMergeIn_CTf'_dbuf_mem [65535:0];
  logic [15:0] \memMergeIn_CTf'_dbuf_address ;
  logic [67:0] \memMergeIn_CTf'_dbuf_din ;
  logic [67:0] \memOut_CTf'_q ;
  logic \memOut_CTf'_valid ;
  logic \memMergeIn_CTf'_dbuf_we ;
  logic \memOut_CTf'_we ;
  assign \memMergeIn_CTf'_dbuf_din  = \memMergeIn_CTf'_dbuf_d [85:18];
  assign \memMergeIn_CTf'_dbuf_address  = \memMergeIn_CTf'_dbuf_d [17:2];
  assign \memMergeIn_CTf'_dbuf_we  = (\memMergeIn_CTf'_dbuf_d [1:1] && \memMergeIn_CTf'_dbuf_d [0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        \memOut_CTf'_we  <= 1'd0;
        \memOut_CTf'_valid  <= 1'd0;
      end
    else
      begin
        \memOut_CTf'_we  <= \memMergeIn_CTf'_dbuf_we ;
        \memOut_CTf'_valid  <= \memMergeIn_CTf'_dbuf_d [0];
        if (\memMergeIn_CTf'_dbuf_we )
          begin
            \memMergeIn_CTf'_dbuf_mem [\memMergeIn_CTf'_dbuf_address ] <= \memMergeIn_CTf'_dbuf_din ;
            \memOut_CTf'_q  <= \memMergeIn_CTf'_dbuf_din ;
          end
        else
          \memOut_CTf'_q  <= \memMergeIn_CTf'_dbuf_mem [\memMergeIn_CTf'_dbuf_address ];
      end
  assign \memOut_CTf'_d  = {\memOut_CTf'_q ,
                            \memOut_CTf'_we ,
                            \memOut_CTf'_valid };
  assign \memMergeIn_CTf'_dbuf_r  = ((! \memOut_CTf'_valid ) || \memOut_CTf'_r );
  
  /* demux (Ty C2,
       Ty MemOut_CTf') : (memMergeChoice_CTf',C2) (memOut_CTf'_dbuf,MemOut_CTf') > [(memReadOut_CTf',MemOut_CTf'),
                                                                                    (memWriteOut_CTf',MemOut_CTf')] */
  logic [1:0] \memOut_CTf'_dbuf_onehotd ;
  always_comb
    if ((\memMergeChoice_CTf'_d [0] && \memOut_CTf'_dbuf_d [0]))
      unique case (\memMergeChoice_CTf'_d [1:1])
        1'd0: \memOut_CTf'_dbuf_onehotd  = 2'd1;
        1'd1: \memOut_CTf'_dbuf_onehotd  = 2'd2;
        default: \memOut_CTf'_dbuf_onehotd  = 2'd0;
      endcase
    else \memOut_CTf'_dbuf_onehotd  = 2'd0;
  assign \memReadOut_CTf'_d  = {\memOut_CTf'_dbuf_d [69:1],
                                \memOut_CTf'_dbuf_onehotd [0]};
  assign \memWriteOut_CTf'_d  = {\memOut_CTf'_dbuf_d [69:1],
                                 \memOut_CTf'_dbuf_onehotd [1]};
  assign \memOut_CTf'_dbuf_r  = (| (\memOut_CTf'_dbuf_onehotd  & {\memWriteOut_CTf'_r ,
                                                                  \memReadOut_CTf'_r }));
  assign \memMergeChoice_CTf'_r  = \memOut_CTf'_dbuf_r ;
  
  /* dbuf (Ty MemIn_CTf') : (memMergeIn_CTf'_rbuf,MemIn_CTf') > (memMergeIn_CTf'_dbuf,MemIn_CTf') */
  assign \memMergeIn_CTf'_rbuf_r  = ((! \memMergeIn_CTf'_dbuf_d [0]) || \memMergeIn_CTf'_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \memMergeIn_CTf'_dbuf_d  <= {85'd0, 1'd0};
    else
      if (\memMergeIn_CTf'_rbuf_r )
        \memMergeIn_CTf'_dbuf_d  <= \memMergeIn_CTf'_rbuf_d ;
  
  /* rbuf (Ty MemIn_CTf') : (memMergeIn_CTf',MemIn_CTf') > (memMergeIn_CTf'_rbuf,MemIn_CTf') */
  \MemIn_CTf'_t  \memMergeIn_CTf'_buf ;
  assign \memMergeIn_CTf'_r  = (! \memMergeIn_CTf'_buf [0]);
  assign \memMergeIn_CTf'_rbuf_d  = (\memMergeIn_CTf'_buf [0] ? \memMergeIn_CTf'_buf  :
                                     \memMergeIn_CTf'_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \memMergeIn_CTf'_buf  <= {85'd0, 1'd0};
    else
      if ((\memMergeIn_CTf'_rbuf_r  && \memMergeIn_CTf'_buf [0]))
        \memMergeIn_CTf'_buf  <= {85'd0, 1'd0};
      else if (((! \memMergeIn_CTf'_rbuf_r ) && (! \memMergeIn_CTf'_buf [0])))
        \memMergeIn_CTf'_buf  <= \memMergeIn_CTf'_d ;
  
  /* dbuf (Ty MemOut_CTf') : (memOut_CTf'_rbuf,MemOut_CTf') > (memOut_CTf'_dbuf,MemOut_CTf') */
  assign \memOut_CTf'_rbuf_r  = ((! \memOut_CTf'_dbuf_d [0]) || \memOut_CTf'_dbuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \memOut_CTf'_dbuf_d  <= {69'd0, 1'd0};
    else
      if (\memOut_CTf'_rbuf_r )
        \memOut_CTf'_dbuf_d  <= \memOut_CTf'_rbuf_d ;
  
  /* rbuf (Ty MemOut_CTf') : (memOut_CTf',MemOut_CTf') > (memOut_CTf'_rbuf,MemOut_CTf') */
  \MemOut_CTf'_t  \memOut_CTf'_buf ;
  assign \memOut_CTf'_r  = (! \memOut_CTf'_buf [0]);
  assign \memOut_CTf'_rbuf_d  = (\memOut_CTf'_buf [0] ? \memOut_CTf'_buf  :
                                 \memOut_CTf'_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \memOut_CTf'_buf  <= {69'd0, 1'd0};
    else
      if ((\memOut_CTf'_rbuf_r  && \memOut_CTf'_buf [0]))
        \memOut_CTf'_buf  <= {69'd0, 1'd0};
      else if (((! \memOut_CTf'_rbuf_r ) && (! \memOut_CTf'_buf [0])))
        \memOut_CTf'_buf  <= \memOut_CTf'_d ;
  
  /* destruct (Ty Pointer_CTf',
          Dcon Pointer_CTf') : (scfarg_0_1_1_argbuf,Pointer_CTf') > [(destructReadIn_CTf',Word16#)] */
  assign \destructReadIn_CTf'_d  = {scfarg_0_1_1_argbuf_d[16:1],
                                    scfarg_0_1_1_argbuf_d[0]};
  assign scfarg_0_1_1_argbuf_r = \destructReadIn_CTf'_r ;
  
  /* dcon (Ty MemIn_CTf',
      Dcon ReadIn_CTf') : [(destructReadIn_CTf',Word16#)] > (dconReadIn_CTf',MemIn_CTf') */
  assign \dconReadIn_CTf'_d  = \ReadIn_CTf'_dc ((& {\destructReadIn_CTf'_d [0]}), \destructReadIn_CTf'_d );
  assign {\destructReadIn_CTf'_r } = {1 {(\dconReadIn_CTf'_r  && \dconReadIn_CTf'_d [0])}};
  
  /* destruct (Ty MemOut_CTf',
          Dcon ReadOut_CTf') : (memReadOut_CTf',MemOut_CTf') > [(readPointer_CTf'scfarg_0_1_1_argbuf,CTf')] */
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_d  = {\memReadOut_CTf'_d [69:2],
                                                    \memReadOut_CTf'_d [0]};
  assign \memReadOut_CTf'_r  = \readPointer_CTf'scfarg_0_1_1_argbuf_r ;
  
  /* mergectrl (Ty C5,Ty CTf') : [(lizzieLet12_1_argbuf,CTf'),
                             (lizzieLet23_1_argbuf,CTf'),
                             (lizzieLet24_1_argbuf,CTf'),
                             (lizzieLet25_1_argbuf,CTf'),
                             (lizzieLet9_1_argbuf,CTf')] > (writeMerge_choice_CTf',C5) (writeMerge_data_CTf',CTf') */
  logic [4:0] lizzieLet12_1_argbuf_select_d;
  assign lizzieLet12_1_argbuf_select_d = ((| lizzieLet12_1_argbuf_select_q) ? lizzieLet12_1_argbuf_select_q :
                                          (lizzieLet12_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet23_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet24_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet25_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet9_1_argbuf_d[0] ? 5'd16 :
                                               5'd0))))));
  logic [4:0] lizzieLet12_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet12_1_argbuf_select_q <= 5'd0;
    else
      lizzieLet12_1_argbuf_select_q <= (lizzieLet12_1_argbuf_done ? 5'd0 :
                                        lizzieLet12_1_argbuf_select_d);
  logic [1:0] lizzieLet12_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet12_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet12_1_argbuf_emit_q <= (lizzieLet12_1_argbuf_done ? 2'd0 :
                                      lizzieLet12_1_argbuf_emit_d);
  logic [1:0] lizzieLet12_1_argbuf_emit_d;
  assign lizzieLet12_1_argbuf_emit_d = (lizzieLet12_1_argbuf_emit_q | ({\writeMerge_choice_CTf'_d [0],
                                                                        \writeMerge_data_CTf'_d [0]} & {\writeMerge_choice_CTf'_r ,
                                                                                                        \writeMerge_data_CTf'_r }));
  logic lizzieLet12_1_argbuf_done;
  assign lizzieLet12_1_argbuf_done = (& lizzieLet12_1_argbuf_emit_d);
  assign {lizzieLet9_1_argbuf_r,
          lizzieLet25_1_argbuf_r,
          lizzieLet24_1_argbuf_r,
          lizzieLet23_1_argbuf_r,
          lizzieLet12_1_argbuf_r} = (lizzieLet12_1_argbuf_done ? lizzieLet12_1_argbuf_select_d :
                                     5'd0);
  assign \writeMerge_data_CTf'_d  = ((lizzieLet12_1_argbuf_select_d[0] && (! lizzieLet12_1_argbuf_emit_q[0])) ? lizzieLet12_1_argbuf_d :
                                     ((lizzieLet12_1_argbuf_select_d[1] && (! lizzieLet12_1_argbuf_emit_q[0])) ? lizzieLet23_1_argbuf_d :
                                      ((lizzieLet12_1_argbuf_select_d[2] && (! lizzieLet12_1_argbuf_emit_q[0])) ? lizzieLet24_1_argbuf_d :
                                       ((lizzieLet12_1_argbuf_select_d[3] && (! lizzieLet12_1_argbuf_emit_q[0])) ? lizzieLet25_1_argbuf_d :
                                        ((lizzieLet12_1_argbuf_select_d[4] && (! lizzieLet12_1_argbuf_emit_q[0])) ? lizzieLet9_1_argbuf_d :
                                         {68'd0, 1'd0})))));
  assign \writeMerge_choice_CTf'_d  = ((lizzieLet12_1_argbuf_select_d[0] && (! lizzieLet12_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                       ((lizzieLet12_1_argbuf_select_d[1] && (! lizzieLet12_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                        ((lizzieLet12_1_argbuf_select_d[2] && (! lizzieLet12_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                         ((lizzieLet12_1_argbuf_select_d[3] && (! lizzieLet12_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                          ((lizzieLet12_1_argbuf_select_d[4] && (! lizzieLet12_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                           {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTf') : (writeMerge_choice_CTf',C5) (demuxWriteResult_CTf',Pointer_CTf') > [(writeCTf'lizzieLet12_1_argbuf,Pointer_CTf'),
                                                                                              (writeCTf'lizzieLet23_1_argbuf,Pointer_CTf'),
                                                                                              (writeCTf'lizzieLet24_1_argbuf,Pointer_CTf'),
                                                                                              (writeCTf'lizzieLet25_1_argbuf,Pointer_CTf'),
                                                                                              (writeCTf'lizzieLet9_1_argbuf,Pointer_CTf')] */
  logic [4:0] \demuxWriteResult_CTf'_onehotd ;
  always_comb
    if ((\writeMerge_choice_CTf'_d [0] && \demuxWriteResult_CTf'_d [0]))
      unique case (\writeMerge_choice_CTf'_d [3:1])
        3'd0: \demuxWriteResult_CTf'_onehotd  = 5'd1;
        3'd1: \demuxWriteResult_CTf'_onehotd  = 5'd2;
        3'd2: \demuxWriteResult_CTf'_onehotd  = 5'd4;
        3'd3: \demuxWriteResult_CTf'_onehotd  = 5'd8;
        3'd4: \demuxWriteResult_CTf'_onehotd  = 5'd16;
        default: \demuxWriteResult_CTf'_onehotd  = 5'd0;
      endcase
    else \demuxWriteResult_CTf'_onehotd  = 5'd0;
  assign \writeCTf'lizzieLet12_1_argbuf_d  = {\demuxWriteResult_CTf'_d [16:1],
                                              \demuxWriteResult_CTf'_onehotd [0]};
  assign \writeCTf'lizzieLet23_1_argbuf_d  = {\demuxWriteResult_CTf'_d [16:1],
                                              \demuxWriteResult_CTf'_onehotd [1]};
  assign \writeCTf'lizzieLet24_1_argbuf_d  = {\demuxWriteResult_CTf'_d [16:1],
                                              \demuxWriteResult_CTf'_onehotd [2]};
  assign \writeCTf'lizzieLet25_1_argbuf_d  = {\demuxWriteResult_CTf'_d [16:1],
                                              \demuxWriteResult_CTf'_onehotd [3]};
  assign \writeCTf'lizzieLet9_1_argbuf_d  = {\demuxWriteResult_CTf'_d [16:1],
                                             \demuxWriteResult_CTf'_onehotd [4]};
  assign \demuxWriteResult_CTf'_r  = (| (\demuxWriteResult_CTf'_onehotd  & {\writeCTf'lizzieLet9_1_argbuf_r ,
                                                                            \writeCTf'lizzieLet25_1_argbuf_r ,
                                                                            \writeCTf'lizzieLet24_1_argbuf_r ,
                                                                            \writeCTf'lizzieLet23_1_argbuf_r ,
                                                                            \writeCTf'lizzieLet12_1_argbuf_r }));
  assign \writeMerge_choice_CTf'_r  = \demuxWriteResult_CTf'_r ;
  
  /* dcon (Ty MemIn_CTf',Dcon WriteIn_CTf') : [(forkHP1_CTf2,Word16#),
                                          (writeMerge_data_CTf',CTf')] > (dconWriteIn_CTf',MemIn_CTf') */
  assign \dconWriteIn_CTf'_d  = \WriteIn_CTf'_dc ((& {forkHP1_CTf2_d[0],
                                                      \writeMerge_data_CTf'_d [0]}), forkHP1_CTf2_d, \writeMerge_data_CTf'_d );
  assign {forkHP1_CTf2_r,
          \writeMerge_data_CTf'_r } = {2 {(\dconWriteIn_CTf'_r  && \dconWriteIn_CTf'_d [0])}};
  
  /* dcon (Ty Pointer_CTf',
      Dcon Pointer_CTf') : [(forkHP1_CTf3,Word16#)] > (dconPtr_CTf',Pointer_CTf') */
  assign \dconPtr_CTf'_d  = \Pointer_CTf'_dc ((& {forkHP1_CTf3_d[0]}), forkHP1_CTf3_d);
  assign {forkHP1_CTf3_r} = {1 {(\dconPtr_CTf'_r  && \dconPtr_CTf'_d [0])}};
  
  /* demux (Ty MemOut_CTf',
       Ty Pointer_CTf') : (memWriteOut_CTf',MemOut_CTf') (dconPtr_CTf',Pointer_CTf') > [(_15,Pointer_CTf'),
                                                                                        (demuxWriteResult_CTf',Pointer_CTf')] */
  logic [1:0] \dconPtr_CTf'_onehotd ;
  always_comb
    if ((\memWriteOut_CTf'_d [0] && \dconPtr_CTf'_d [0]))
      unique case (\memWriteOut_CTf'_d [1:1])
        1'd0: \dconPtr_CTf'_onehotd  = 2'd1;
        1'd1: \dconPtr_CTf'_onehotd  = 2'd2;
        default: \dconPtr_CTf'_onehotd  = 2'd0;
      endcase
    else \dconPtr_CTf'_onehotd  = 2'd0;
  assign _15_d = {\dconPtr_CTf'_d [16:1], \dconPtr_CTf'_onehotd [0]};
  assign \demuxWriteResult_CTf'_d  = {\dconPtr_CTf'_d [16:1],
                                      \dconPtr_CTf'_onehotd [1]};
  assign \dconPtr_CTf'_r  = (| (\dconPtr_CTf'_onehotd  & {\demuxWriteResult_CTf'_r ,
                                                          _15_r}));
  assign \memWriteOut_CTf'_r  = \dconPtr_CTf'_r ;
  
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
  
  /* mergectrl (Ty C2,Ty Nat) : [(lizzieLet15_1_argbuf,Nat),
                            (lizzieLet16_1_argbuf,Nat)] > (writeMerge_choice_Nat,C2) (writeMerge_data_Nat,Nat) */
  logic [1:0] lizzieLet15_1_argbuf_select_d;
  assign lizzieLet15_1_argbuf_select_d = ((| lizzieLet15_1_argbuf_select_q) ? lizzieLet15_1_argbuf_select_q :
                                          (lizzieLet15_1_argbuf_d[0] ? 2'd1 :
                                           (lizzieLet16_1_argbuf_d[0] ? 2'd2 :
                                            2'd0)));
  logic [1:0] lizzieLet15_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet15_1_argbuf_select_q <= 2'd0;
    else
      lizzieLet15_1_argbuf_select_q <= (lizzieLet15_1_argbuf_done ? 2'd0 :
                                        lizzieLet15_1_argbuf_select_d);
  logic [1:0] lizzieLet15_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet15_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet15_1_argbuf_emit_q <= (lizzieLet15_1_argbuf_done ? 2'd0 :
                                      lizzieLet15_1_argbuf_emit_d);
  logic [1:0] lizzieLet15_1_argbuf_emit_d;
  assign lizzieLet15_1_argbuf_emit_d = (lizzieLet15_1_argbuf_emit_q | ({writeMerge_choice_Nat_d[0],
                                                                        writeMerge_data_Nat_d[0]} & {writeMerge_choice_Nat_r,
                                                                                                     writeMerge_data_Nat_r}));
  logic lizzieLet15_1_argbuf_done;
  assign lizzieLet15_1_argbuf_done = (& lizzieLet15_1_argbuf_emit_d);
  assign {lizzieLet16_1_argbuf_r,
          lizzieLet15_1_argbuf_r} = (lizzieLet15_1_argbuf_done ? lizzieLet15_1_argbuf_select_d :
                                     2'd0);
  assign writeMerge_data_Nat_d = ((lizzieLet15_1_argbuf_select_d[0] && (! lizzieLet15_1_argbuf_emit_q[0])) ? lizzieLet15_1_argbuf_d :
                                  ((lizzieLet15_1_argbuf_select_d[1] && (! lizzieLet15_1_argbuf_emit_q[0])) ? lizzieLet16_1_argbuf_d :
                                   {17'd0, 1'd0}));
  assign writeMerge_choice_Nat_d = ((lizzieLet15_1_argbuf_select_d[0] && (! lizzieLet15_1_argbuf_emit_q[1])) ? C1_2_dc(1'd1) :
                                    ((lizzieLet15_1_argbuf_select_d[1] && (! lizzieLet15_1_argbuf_emit_q[1])) ? C2_2_dc(1'd1) :
                                     {1'd0, 1'd0}));
  
  /* demux (Ty C2,
       Ty Pointer_Nat) : (writeMerge_choice_Nat,C2) (demuxWriteResult_Nat,Pointer_Nat) > [(writeNatlizzieLet15_1_argbuf,Pointer_Nat),
                                                                                          (writeNatlizzieLet16_1_argbuf,Pointer_Nat)] */
  logic [1:0] demuxWriteResult_Nat_onehotd;
  always_comb
    if ((writeMerge_choice_Nat_d[0] && demuxWriteResult_Nat_d[0]))
      unique case (writeMerge_choice_Nat_d[1:1])
        1'd0: demuxWriteResult_Nat_onehotd = 2'd1;
        1'd1: demuxWriteResult_Nat_onehotd = 2'd2;
        default: demuxWriteResult_Nat_onehotd = 2'd0;
      endcase
    else demuxWriteResult_Nat_onehotd = 2'd0;
  assign writeNatlizzieLet15_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[0]};
  assign writeNatlizzieLet16_1_argbuf_d = {demuxWriteResult_Nat_d[16:1],
                                           demuxWriteResult_Nat_onehotd[1]};
  assign demuxWriteResult_Nat_r = (| (demuxWriteResult_Nat_onehotd & {writeNatlizzieLet16_1_argbuf_r,
                                                                      writeNatlizzieLet15_1_argbuf_r}));
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
       Ty Pointer_Nat) : (memWriteOut_Nat,MemOut_Nat) (dconPtr_Nat,Pointer_Nat) > [(_14,Pointer_Nat),
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
  assign _14_d = {dconPtr_Nat_d[16:1], dconPtr_Nat_onehotd[0]};
  assign demuxWriteResult_Nat_d = {dconPtr_Nat_d[16:1],
                                   dconPtr_Nat_onehotd[1]};
  assign dconPtr_Nat_r = (| (dconPtr_Nat_onehotd & {demuxWriteResult_Nat_r,
                                                    _14_r}));
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
           Ty Pointer_QTree_Bool) : [(m1abX_1_argbuf,Pointer_QTree_Bool),
                                     (m2ac4_1_argbuf,Pointer_QTree_Bool)] > (readMerge_choice_QTree_Bool,C2) (readMerge_data_QTree_Bool,Pointer_QTree_Bool) */
  logic [1:0] m1abX_1_argbuf_select_d;
  assign m1abX_1_argbuf_select_d = ((| m1abX_1_argbuf_select_q) ? m1abX_1_argbuf_select_q :
                                    (m1abX_1_argbuf_d[0] ? 2'd1 :
                                     (m2ac4_1_argbuf_d[0] ? 2'd2 :
                                      2'd0)));
  logic [1:0] m1abX_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1abX_1_argbuf_select_q <= 2'd0;
    else
      m1abX_1_argbuf_select_q <= (m1abX_1_argbuf_done ? 2'd0 :
                                  m1abX_1_argbuf_select_d);
  logic [1:0] m1abX_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1abX_1_argbuf_emit_q <= 2'd0;
    else
      m1abX_1_argbuf_emit_q <= (m1abX_1_argbuf_done ? 2'd0 :
                                m1abX_1_argbuf_emit_d);
  logic [1:0] m1abX_1_argbuf_emit_d;
  assign m1abX_1_argbuf_emit_d = (m1abX_1_argbuf_emit_q | ({readMerge_choice_QTree_Bool_d[0],
                                                            readMerge_data_QTree_Bool_d[0]} & {readMerge_choice_QTree_Bool_r,
                                                                                               readMerge_data_QTree_Bool_r}));
  logic m1abX_1_argbuf_done;
  assign m1abX_1_argbuf_done = (& m1abX_1_argbuf_emit_d);
  assign {m2ac4_1_argbuf_r,
          m1abX_1_argbuf_r} = (m1abX_1_argbuf_done ? m1abX_1_argbuf_select_d :
                               2'd0);
  assign readMerge_data_QTree_Bool_d = ((m1abX_1_argbuf_select_d[0] && (! m1abX_1_argbuf_emit_q[0])) ? m1abX_1_argbuf_d :
                                        ((m1abX_1_argbuf_select_d[1] && (! m1abX_1_argbuf_emit_q[0])) ? m2ac4_1_argbuf_d :
                                         {16'd0, 1'd0}));
  assign readMerge_choice_QTree_Bool_d = ((m1abX_1_argbuf_select_d[0] && (! m1abX_1_argbuf_emit_q[1])) ? C1_2_dc(1'd1) :
                                          ((m1abX_1_argbuf_select_d[1] && (! m1abX_1_argbuf_emit_q[1])) ? C2_2_dc(1'd1) :
                                           {1'd0, 1'd0}));
  
  /* demux (Ty C2,
       Ty QTree_Bool) : (readMerge_choice_QTree_Bool,C2) (destructReadOut_QTree_Bool,QTree_Bool) > [(readPointer_QTree_Boolm1abX_1_argbuf,QTree_Bool),
                                                                                                    (readPointer_QTree_Boolm2ac4_1_argbuf,QTree_Bool)] */
  logic [1:0] destructReadOut_QTree_Bool_onehotd;
  always_comb
    if ((readMerge_choice_QTree_Bool_d[0] && destructReadOut_QTree_Bool_d[0]))
      unique case (readMerge_choice_QTree_Bool_d[1:1])
        1'd0: destructReadOut_QTree_Bool_onehotd = 2'd1;
        1'd1: destructReadOut_QTree_Bool_onehotd = 2'd2;
        default: destructReadOut_QTree_Bool_onehotd = 2'd0;
      endcase
    else destructReadOut_QTree_Bool_onehotd = 2'd0;
  assign readPointer_QTree_Boolm1abX_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[0]};
  assign readPointer_QTree_Boolm2ac4_1_argbuf_d = {destructReadOut_QTree_Bool_d[66:1],
                                                   destructReadOut_QTree_Bool_onehotd[1]};
  assign destructReadOut_QTree_Bool_r = (| (destructReadOut_QTree_Bool_onehotd & {readPointer_QTree_Boolm2ac4_1_argbuf_r,
                                                                                  readPointer_QTree_Boolm1abX_1_argbuf_r}));
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
       Ty Pointer_QTree_Bool) : (memWriteOut_QTree_Bool,MemOut_QTree_Bool) (dconPtr_QTree_Bool,Pointer_QTree_Bool) > [(_13,Pointer_QTree_Bool),
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
  assign _13_d = {dconPtr_QTree_Bool_d[16:1],
                  dconPtr_QTree_Bool_onehotd[0]};
  assign dummy_write_QTree_Bool_sink_d = {dconPtr_QTree_Bool_d[16:1],
                                          dconPtr_QTree_Bool_onehotd[1]};
  assign dconPtr_QTree_Bool_r = (| (dconPtr_QTree_Bool_onehotd & {dummy_write_QTree_Bool_sink_r,
                                                                  _13_r}));
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
  
  /* source (Ty Pointer_QTree_Bool) : > (m1abV_0,Pointer_QTree_Bool) */
  
  /* source (Ty Pointer_QTree_Bool) : > (m2abW_1,Pointer_QTree_Bool) */
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf',
          Dcon TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf') : (call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1,TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf') > [(call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3,Go),
                                                                                                                                                                                         (call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4,Pointer_QTree_Bool),
                                                                                                                                                                                         (call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5,MyBool),
                                                                                                                                                                                         (call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1,Pointer_CTf')] */
  logic [3:0] \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted ;
  logic [3:0] \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_done ;
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d  = (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [0] && (! \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted [0]));
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [16:1],
                                                                               (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [0] && (! \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted [1]))};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [17:17],
                                                                              (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [0] && (! \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted [2]))};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [33:18],
                                                                                (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [0] && (! \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted [3]))};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_done  = (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted  | ({\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d [0],
                                                                                                                                                         \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d [0],
                                                                                                                                                         \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d [0],
                                                                                                                                                         \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d [0]} & {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_r ,
                                                                                                                                                                                                                                  \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_r ,
                                                                                                                                                                                                                                  \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_r ,
                                                                                                                                                                                                                                  \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_r }));
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_r  = (& \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted  <= 4'd0;
    else
      \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_emitted  <= (\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_r  ? 4'd0 :
                                                                                \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_done );
  
  /* rbuf (Ty Go) : (call_f'_goConst,Go) > (call_f'_initBufi,Go) */
  Go_t \call_f'_goConst_buf ;
  assign \call_f'_goConst_r  = (! \call_f'_goConst_buf [0]);
  assign \call_f'_initBufi_d  = (\call_f'_goConst_buf [0] ? \call_f'_goConst_buf  :
                                 \call_f'_goConst_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_f'_goConst_buf  <= 1'd0;
    else
      if ((\call_f'_initBufi_r  && \call_f'_goConst_buf [0]))
        \call_f'_goConst_buf  <= 1'd0;
      else if (((! \call_f'_initBufi_r ) && (! \call_f'_goConst_buf [0])))
        \call_f'_goConst_buf  <= \call_f'_goConst_d ;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_f'_goMux1,Go),
                           (lizzieLet22_3Lcall_f'3_1_argbuf,Go),
                           (lizzieLet22_3Lcall_f'2_1_argbuf,Go),
                           (lizzieLet22_3Lcall_f'1_1_argbuf,Go),
                           (lizzieLet4_3QNode_Bool_1_argbuf,Go)] > (go_3_goMux_choice,C5) (go_3_goMux_data,Go) */
  logic [4:0] \call_f'_goMux1_select_d ;
  assign \call_f'_goMux1_select_d  = ((| \call_f'_goMux1_select_q ) ? \call_f'_goMux1_select_q  :
                                      (\call_f'_goMux1_d [0] ? 5'd1 :
                                       (\lizzieLet22_3Lcall_f'3_1_argbuf_d [0] ? 5'd2 :
                                        (\lizzieLet22_3Lcall_f'2_1_argbuf_d [0] ? 5'd4 :
                                         (\lizzieLet22_3Lcall_f'1_1_argbuf_d [0] ? 5'd8 :
                                          (lizzieLet4_3QNode_Bool_1_argbuf_d[0] ? 5'd16 :
                                           5'd0))))));
  logic [4:0] \call_f'_goMux1_select_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_f'_goMux1_select_q  <= 5'd0;
    else
      \call_f'_goMux1_select_q  <= (\call_f'_goMux1_done  ? 5'd0 :
                                    \call_f'_goMux1_select_d );
  logic [1:0] \call_f'_goMux1_emit_q ;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_f'_goMux1_emit_q  <= 2'd0;
    else
      \call_f'_goMux1_emit_q  <= (\call_f'_goMux1_done  ? 2'd0 :
                                  \call_f'_goMux1_emit_d );
  logic [1:0] \call_f'_goMux1_emit_d ;
  assign \call_f'_goMux1_emit_d  = (\call_f'_goMux1_emit_q  | ({go_3_goMux_choice_d[0],
                                                                go_3_goMux_data_d[0]} & {go_3_goMux_choice_r,
                                                                                         go_3_goMux_data_r}));
  logic \call_f'_goMux1_done ;
  assign \call_f'_goMux1_done  = (& \call_f'_goMux1_emit_d );
  assign {lizzieLet4_3QNode_Bool_1_argbuf_r,
          \lizzieLet22_3Lcall_f'1_1_argbuf_r ,
          \lizzieLet22_3Lcall_f'2_1_argbuf_r ,
          \lizzieLet22_3Lcall_f'3_1_argbuf_r ,
          \call_f'_goMux1_r } = (\call_f'_goMux1_done  ? \call_f'_goMux1_select_d  :
                                 5'd0);
  assign go_3_goMux_data_d = ((\call_f'_goMux1_select_d [0] && (! \call_f'_goMux1_emit_q [0])) ? \call_f'_goMux1_d  :
                              ((\call_f'_goMux1_select_d [1] && (! \call_f'_goMux1_emit_q [0])) ? \lizzieLet22_3Lcall_f'3_1_argbuf_d  :
                               ((\call_f'_goMux1_select_d [2] && (! \call_f'_goMux1_emit_q [0])) ? \lizzieLet22_3Lcall_f'2_1_argbuf_d  :
                                ((\call_f'_goMux1_select_d [3] && (! \call_f'_goMux1_emit_q [0])) ? \lizzieLet22_3Lcall_f'1_1_argbuf_d  :
                                 ((\call_f'_goMux1_select_d [4] && (! \call_f'_goMux1_emit_q [0])) ? lizzieLet4_3QNode_Bool_1_argbuf_d :
                                  1'd0)))));
  assign go_3_goMux_choice_d = ((\call_f'_goMux1_select_d [0] && (! \call_f'_goMux1_emit_q [1])) ? C1_5_dc(1'd1) :
                                ((\call_f'_goMux1_select_d [1] && (! \call_f'_goMux1_emit_q [1])) ? C2_5_dc(1'd1) :
                                 ((\call_f'_goMux1_select_d [2] && (! \call_f'_goMux1_emit_q [1])) ? C3_5_dc(1'd1) :
                                  ((\call_f'_goMux1_select_d [3] && (! \call_f'_goMux1_emit_q [1])) ? C4_5_dc(1'd1) :
                                   ((\call_f'_goMux1_select_d [4] && (! \call_f'_goMux1_emit_q [1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_f'_initBuf,Go) > [(call_f'_unlockFork1,Go),
                                       (call_f'_unlockFork2,Go),
                                       (call_f'_unlockFork3,Go),
                                       (call_f'_unlockFork4,Go)] */
  logic [3:0] \call_f'_initBuf_emitted ;
  logic [3:0] \call_f'_initBuf_done ;
  assign \call_f'_unlockFork1_d  = (\call_f'_initBuf_d [0] && (! \call_f'_initBuf_emitted [0]));
  assign \call_f'_unlockFork2_d  = (\call_f'_initBuf_d [0] && (! \call_f'_initBuf_emitted [1]));
  assign \call_f'_unlockFork3_d  = (\call_f'_initBuf_d [0] && (! \call_f'_initBuf_emitted [2]));
  assign \call_f'_unlockFork4_d  = (\call_f'_initBuf_d [0] && (! \call_f'_initBuf_emitted [3]));
  assign \call_f'_initBuf_done  = (\call_f'_initBuf_emitted  | ({\call_f'_unlockFork4_d [0],
                                                                 \call_f'_unlockFork3_d [0],
                                                                 \call_f'_unlockFork2_d [0],
                                                                 \call_f'_unlockFork1_d [0]} & {\call_f'_unlockFork4_r ,
                                                                                                \call_f'_unlockFork3_r ,
                                                                                                \call_f'_unlockFork2_r ,
                                                                                                \call_f'_unlockFork1_r }));
  assign \call_f'_initBuf_r  = (& \call_f'_initBuf_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_f'_initBuf_emitted  <= 4'd0;
    else
      \call_f'_initBuf_emitted  <= (\call_f'_initBuf_r  ? 4'd0 :
                                    \call_f'_initBuf_done );
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_f'_initBufi,Go) > (call_f'_initBuf,Go) */
  assign \call_f'_initBufi_r  = ((! \call_f'_initBuf_d [0]) || \call_f'_initBuf_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \call_f'_initBuf_d  <= Go_dc(1'd1);
    else
      if (\call_f'_initBufi_r )
        \call_f'_initBuf_d  <= \call_f'_initBufi_d ;
  
  /* mux (Ty Go,
     Ty Go) : (call_f'_unlockFork1,Go) [(call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3,Go)] > (call_f'_goMux1,Go) */
  assign \call_f'_goMux1_d  = (\call_f'_unlockFork1_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d [0]);
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_r  = (\call_f'_goMux1_r  && (\call_f'_unlockFork1_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d [0]));
  assign \call_f'_unlockFork1_r  = (\call_f'_goMux1_r  && (\call_f'_unlockFork1_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'go_3_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_f'_unlockFork2,Go) [(call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4,Pointer_QTree_Bool)] > (call_f'_goMux2,Pointer_QTree_Bool) */
  assign \call_f'_goMux2_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d [16:1],
                               (\call_f'_unlockFork2_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d [0])};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_r  = (\call_f'_goMux2_r  && (\call_f'_unlockFork2_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d [0]));
  assign \call_f'_unlockFork2_r  = (\call_f'_goMux2_r  && (\call_f'_unlockFork2_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'm2ac4_d [0]));
  
  /* mux (Ty Go,
     Ty MyBool) : (call_f'_unlockFork3,Go) [(call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5,MyBool)] > (call_f'_goMux3,MyBool) */
  assign \call_f'_goMux3_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d [1:1],
                               (\call_f'_unlockFork3_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d [0])};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_r  = (\call_f'_goMux3_r  && (\call_f'_unlockFork3_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d [0]));
  assign \call_f'_unlockFork3_r  = (\call_f'_goMux3_r  && (\call_f'_unlockFork3_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'vac5_d [0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTf') : (call_f'_unlockFork4,Go) [(call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1,Pointer_CTf')] > (call_f'_goMux4,Pointer_CTf') */
  assign \call_f'_goMux4_d  = {\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d [16:1],
                               (\call_f'_unlockFork4_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d [0])};
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_r  = (\call_f'_goMux4_r  && (\call_f'_unlockFork4_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d [0]));
  assign \call_f'_unlockFork4_r  = (\call_f'_goMux4_r  && (\call_f'_unlockFork4_d [0] && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'sc_0_1_d [0]));
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf,
          Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) : (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) > [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2,Go),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX,Pointer_QTree_Bool),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY,Pointer_QTree_Bool),
                                                                                                                                                                                                                         (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0,Pointer_CTf)] */
  logic [3:0] call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted;
  logic [3:0] call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done;
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d = (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[0]));
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[16:1],
                                                                                       (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[1]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[32:17],
                                                                                       (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[2]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[48:33],
                                                                                      (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0] && (! call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted[3]))};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_done = (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_emitted | ({call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d[0],
                                                                                                                                                                         call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfgo_2_d[0]} & {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_r,
                                                                                                                                                                                                                                                          call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_r,
                                                                                                                                                                                                                                                          call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_r,
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
                           (lizzieLet17_3Lcall_f3_1_argbuf,Go),
                           (lizzieLet17_3Lcall_f2_1_argbuf,Go),
                           (lizzieLet17_3Lcall_f1_1_argbuf,Go),
                           (lizzieLet0_3QNode_Bool_1_argbuf,Go)] > (go_2_goMux_choice,C5) (go_2_goMux_data,Go) */
  logic [4:0] call_f_goMux1_select_d;
  assign call_f_goMux1_select_d = ((| call_f_goMux1_select_q) ? call_f_goMux1_select_q :
                                   (call_f_goMux1_d[0] ? 5'd1 :
                                    (lizzieLet17_3Lcall_f3_1_argbuf_d[0] ? 5'd2 :
                                     (lizzieLet17_3Lcall_f2_1_argbuf_d[0] ? 5'd4 :
                                      (lizzieLet17_3Lcall_f1_1_argbuf_d[0] ? 5'd8 :
                                       (lizzieLet0_3QNode_Bool_1_argbuf_d[0] ? 5'd16 :
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
  assign {lizzieLet0_3QNode_Bool_1_argbuf_r,
          lizzieLet17_3Lcall_f1_1_argbuf_r,
          lizzieLet17_3Lcall_f2_1_argbuf_r,
          lizzieLet17_3Lcall_f3_1_argbuf_r,
          call_f_goMux1_r} = (call_f_goMux1_done ? call_f_goMux1_select_d :
                              5'd0);
  assign go_2_goMux_data_d = ((call_f_goMux1_select_d[0] && (! call_f_goMux1_emit_q[0])) ? call_f_goMux1_d :
                              ((call_f_goMux1_select_d[1] && (! call_f_goMux1_emit_q[0])) ? lizzieLet17_3Lcall_f3_1_argbuf_d :
                               ((call_f_goMux1_select_d[2] && (! call_f_goMux1_emit_q[0])) ? lizzieLet17_3Lcall_f2_1_argbuf_d :
                                ((call_f_goMux1_select_d[3] && (! call_f_goMux1_emit_q[0])) ? lizzieLet17_3Lcall_f1_1_argbuf_d :
                                 ((call_f_goMux1_select_d[4] && (! call_f_goMux1_emit_q[0])) ? lizzieLet0_3QNode_Bool_1_argbuf_d :
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
     Ty Pointer_QTree_Bool) : (call_f_unlockFork2,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX,Pointer_QTree_Bool)] > (call_f_goMux2,Pointer_QTree_Bool) */
  assign call_f_goMux2_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d[16:1],
                            (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_r = (call_f_goMux2_r && (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d[0]));
  assign call_f_unlockFork2_r = (call_f_goMux2_r && (call_f_unlockFork2_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm1abX_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Bool) : (call_f_unlockFork3,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY,Pointer_QTree_Bool)] > (call_f_goMux3,Pointer_QTree_Bool) */
  assign call_f_goMux3_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d[16:1],
                            (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_r = (call_f_goMux3_r && (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d[0]));
  assign call_f_unlockFork3_r = (call_f_goMux3_r && (call_f_unlockFork3_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfm2abY_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTf) : (call_f_unlockFork4,Go) [(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0,Pointer_CTf)] > (call_f_goMux4,Pointer_CTf) */
  assign call_f_goMux4_d = {call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[16:1],
                            (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0])};
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_r = (call_f_goMux4_r && (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0]));
  assign call_f_unlockFork4_r = (call_f_goMux4_r && (call_f_unlockFork4_d[0] && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTfsc_0_d[0]));
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___MyBool,
          Dcon TupGo___Pointer_QTree_Bool___MyBool) : (f'TupGo___Pointer_QTree_Bool___MyBool_1,TupGo___Pointer_QTree_Bool___MyBool) > [(f'TupGo___Pointer_QTree_Bool___MyBoolgo_5,Go),
                                                                                                                                       (f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1,Pointer_QTree_Bool),
                                                                                                                                       (f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1,MyBool)] */
  logic [2:0] \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted ;
  logic [2:0] \f'TupGo___Pointer_QTree_Bool___MyBool_1_done ;
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_d  = (\f'TupGo___Pointer_QTree_Bool___MyBool_1_d [0] && (! \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted [0]));
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_d  = {\f'TupGo___Pointer_QTree_Bool___MyBool_1_d [16:1],
                                                             (\f'TupGo___Pointer_QTree_Bool___MyBool_1_d [0] && (! \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted [1]))};
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_d  = {\f'TupGo___Pointer_QTree_Bool___MyBool_1_d [17:17],
                                                            (\f'TupGo___Pointer_QTree_Bool___MyBool_1_d [0] && (! \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted [2]))};
  assign \f'TupGo___Pointer_QTree_Bool___MyBool_1_done  = (\f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted  | ({\f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_d [0],
                                                                                                                 \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_d [0],
                                                                                                                 \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_d [0]} & {\f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_r ,
                                                                                                                                                                      \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_r ,
                                                                                                                                                                      \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_r }));
  assign \f'TupGo___Pointer_QTree_Bool___MyBool_1_r  = (& \f'TupGo___Pointer_QTree_Bool___MyBool_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted  <= 3'd0;
    else
      \f'TupGo___Pointer_QTree_Bool___MyBool_1_emitted  <= (\f'TupGo___Pointer_QTree_Bool___MyBool_1_r  ? 3'd0 :
                                                            \f'TupGo___Pointer_QTree_Bool___MyBool_1_done );
  
  /* fork (Ty Go) : (f'TupGo___Pointer_QTree_Bool___MyBoolgo_5,Go) > [(go_5_1,Go),
                                                                 (go_5_2,Go)] */
  logic [1:0] \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted ;
  logic [1:0] \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_done ;
  assign go_5_1_d = (\f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_d [0] && (! \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted [0]));
  assign go_5_2_d = (\f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_d [0] && (! \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted [1]));
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_done  = (\f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted  | ({go_5_2_d[0],
                                                                                                                     go_5_1_d[0]} & {go_5_2_r,
                                                                                                                                     go_5_1_r}));
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_r  = (& \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted  <= 2'd0;
    else
      \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_emitted  <= (\f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_r  ? 2'd0 :
                                                              \f'TupGo___Pointer_QTree_Bool___MyBoolgo_5_done );
  
  /* buf (Ty Pointer_QTree_Bool) : (f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1,Pointer_QTree_Bool) > (m2ac4_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_r ;
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_r  = ((! \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d [0]) || \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d  <= {16'd0,
                                                                   1'd0};
    else
      if (\f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_r )
        \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d  <= \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_d ;
  Pointer_QTree_Bool_t \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf ;
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_r  = (! \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf [0]);
  assign m2ac4_1_1_argbuf_d = (\f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf [0] ? \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf  :
                               \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf  <= {16'd0,
                                                                     1'd0};
    else
      if ((m2ac4_1_1_argbuf_r && \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf [0]))
        \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf  <= {16'd0,
                                                                       1'd0};
      else if (((! m2ac4_1_1_argbuf_r) && (! \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf [0])))
        \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_buf  <= \f'TupGo___Pointer_QTree_Bool___MyBoolm2ac4_1_bufchan_d ;
  
  /* buf (Ty MyBool) : (f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1,MyBool) > (vac5_1_1_argbuf,MyBool) */
  MyBool_t \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d ;
  logic \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_r ;
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_r  = ((! \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d [0]) || \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d  <= {1'd0,
                                                                  1'd0};
    else
      if (\f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_r )
        \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d  <= \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_d ;
  MyBool_t \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf ;
  assign \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_r  = (! \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf [0]);
  assign vac5_1_1_argbuf_d = (\f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf [0] ? \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf  :
                              \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf  <= {1'd0,
                                                                    1'd0};
    else
      if ((vac5_1_1_argbuf_r && \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf [0]))
        \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf  <= {1'd0,
                                                                      1'd0};
      else if (((! vac5_1_1_argbuf_r) && (! \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf [0])))
        \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_buf  <= \f'TupGo___Pointer_QTree_Bool___MyBoolvac5_1_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (f'_resbuf,Pointer_QTree_Nat) > (lizzieLet7_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \f'_resbuf_bufchan_d ;
  logic \f'_resbuf_bufchan_r ;
  assign \f'_resbuf_r  = ((! \f'_resbuf_bufchan_d [0]) || \f'_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \f'_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else if (\f'_resbuf_r ) \f'_resbuf_bufchan_d  <= \f'_resbuf_d ;
  Pointer_QTree_Nat_t \f'_resbuf_bufchan_buf ;
  assign \f'_resbuf_bufchan_r  = (! \f'_resbuf_bufchan_buf [0]);
  assign lizzieLet7_1_argbuf_d = (\f'_resbuf_bufchan_buf [0] ? \f'_resbuf_bufchan_buf  :
                                  \f'_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \f'_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet7_1_argbuf_r && \f'_resbuf_bufchan_buf [0]))
        \f'_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet7_1_argbuf_r) && (! \f'_resbuf_bufchan_buf [0])))
        \f'_resbuf_bufchan_buf  <= \f'_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool,
          Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) > [(fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4,Go),
                                                                                                                                                                          (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1,Pointer_QTree_Bool),
                                                                                                                                                                          (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1,Pointer_QTree_Bool)] */
  logic [2:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted;
  logic [2:0] fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[0]));
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_d = {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[16:1],
                                                                      (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[1]))};
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_d = {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[32:17],
                                                                      (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0] && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted[2]))};
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_done = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_emitted | ({fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_d[0],
                                                                                                                                   fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_d[0],
                                                                                                                                   fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolgo_4_d[0]} & {fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_r,
                                                                                                                                                                                                 fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_r,
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
  
  /* buf (Ty Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1,Pointer_QTree_Bool) > (m1abX_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_r;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_r = ((! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d[0]) || fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d <= {16'd0,
                                                                            1'd0};
    else
      if (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_r)
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_d;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_r = (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf[0]);
  assign m1abX_1_1_argbuf_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf[0] ? fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf :
                               fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf <= {16'd0,
                                                                              1'd0};
    else
      if ((m1abX_1_1_argbuf_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf[0]))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf <= {16'd0,
                                                                                1'd0};
      else if (((! m1abX_1_1_argbuf_r) && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf[0])))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_buf <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm1abX_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1,Pointer_QTree_Bool) > (m2abY_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d;
  logic fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_r;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_r = ((! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d[0]) || fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d <= {16'd0,
                                                                            1'd0};
    else
      if (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_r)
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_d;
  Pointer_QTree_Bool_t fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf;
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_r = (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf[0]);
  assign m2abY_1_1_argbuf_d = (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf[0] ? fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf :
                               fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf <= {16'd0,
                                                                              1'd0};
    else
      if ((m2abY_1_1_argbuf_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf[0]))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf <= {16'd0,
                                                                                1'd0};
      else if (((! m2abY_1_1_argbuf_r) && (! fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf[0])))
        fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_buf <= fTupGo___Pointer_QTree_Bool___Pointer_QTree_Boolm2abY_1_bufchan_d;
  
  /* sink (Ty Pointer_QTree_Nat) : (f_resbuf,Pointer_QTree_Nat) > */
  assign {f_resbuf_r, f_resbuf_dout} = {f_resbuf_rout, f_resbuf_d};
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool,
      Dcon TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) : [(go_1_argbuf,Go),
                                                               (m1abV_0,Pointer_QTree_Bool),
                                                               (m2abW_1,Pointer_QTree_Bool)] > (fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool) */
  assign fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d = TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_dc((& {go_1_argbuf_d[0],
                                                                                                                       m1abV_0_d[0],
                                                                                                                       m2abW_1_d[0]}), go_1_argbuf_d, m1abV_0_d, m2abW_1_d);
  assign {go_1_argbuf_r,
          m1abV_0_r,
          m2abW_1_r} = {3 {(fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_r && fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool_1_d[0])}};
  
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
                                                        (q3ac2_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2ac1_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1ac0_3_1_argbuf,Pointer_QTree_Bool),
                                                        (q4ac3_1_argbuf,Pointer_QTree_Bool)] > (m1abX_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m1abX_goMux_mux_mux;
  logic [4:0] m1abX_goMux_mux_onehot;
  always_comb
    unique case (go_2_goMux_choice_1_d[3:1])
      3'd0:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd1,
                                                         call_f_goMux2_d};
      3'd1:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd2,
                                                         q3ac2_1_1_argbuf_d};
      3'd2:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd4,
                                                         q2ac1_2_1_argbuf_d};
      3'd3:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd8,
                                                         q1ac0_3_1_argbuf_d};
      3'd4:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd16,
                                                         q4ac3_1_argbuf_d};
      default:
        {m1abX_goMux_mux_onehot, m1abX_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m1abX_goMux_mux_d = {m1abX_goMux_mux_mux[16:1],
                              (m1abX_goMux_mux_mux[0] && go_2_goMux_choice_1_d[0])};
  assign go_2_goMux_choice_1_r = (m1abX_goMux_mux_d[0] && m1abX_goMux_mux_r);
  assign {q4ac3_1_argbuf_r,
          q1ac0_3_1_argbuf_r,
          q2ac1_2_1_argbuf_r,
          q3ac2_1_1_argbuf_r,
          call_f_goMux2_r} = (go_2_goMux_choice_1_r ? m1abX_goMux_mux_onehot :
                              5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_2_goMux_choice_2,C5) [(call_f_goMux3,Pointer_QTree_Bool),
                                                        (m2abY_2_2_argbuf,Pointer_QTree_Bool),
                                                        (m2abY_3_2_argbuf,Pointer_QTree_Bool),
                                                        (m2abY_4_1_argbuf,Pointer_QTree_Bool),
                                                        (lizzieLet0_4QNode_Bool_2_argbuf,Pointer_QTree_Bool)] > (m2abY_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m2abY_goMux_mux_mux;
  logic [4:0] m2abY_goMux_mux_onehot;
  always_comb
    unique case (go_2_goMux_choice_2_d[3:1])
      3'd0:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd1,
                                                         call_f_goMux3_d};
      3'd1:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd2,
                                                         m2abY_2_2_argbuf_d};
      3'd2:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd4,
                                                         m2abY_3_2_argbuf_d};
      3'd3:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd8,
                                                         m2abY_4_1_argbuf_d};
      3'd4:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd16,
                                                         lizzieLet0_4QNode_Bool_2_argbuf_d};
      default:
        {m2abY_goMux_mux_onehot, m2abY_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m2abY_goMux_mux_d = {m2abY_goMux_mux_mux[16:1],
                              (m2abY_goMux_mux_mux[0] && go_2_goMux_choice_2_d[0])};
  assign go_2_goMux_choice_2_r = (m2abY_goMux_mux_d[0] && m2abY_goMux_mux_r);
  assign {lizzieLet0_4QNode_Bool_2_argbuf_r,
          m2abY_4_1_argbuf_r,
          m2abY_3_2_argbuf_r,
          m2abY_2_2_argbuf_r,
          call_f_goMux3_r} = (go_2_goMux_choice_2_r ? m2abY_goMux_mux_onehot :
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
                                         (go_3_goMux_choice_2,C5),
                                         (go_3_goMux_choice_3,C5)] */
  logic [2:0] go_3_goMux_choice_emitted;
  logic [2:0] go_3_goMux_choice_done;
  assign go_3_goMux_choice_1_d = {go_3_goMux_choice_d[3:1],
                                  (go_3_goMux_choice_d[0] && (! go_3_goMux_choice_emitted[0]))};
  assign go_3_goMux_choice_2_d = {go_3_goMux_choice_d[3:1],
                                  (go_3_goMux_choice_d[0] && (! go_3_goMux_choice_emitted[1]))};
  assign go_3_goMux_choice_3_d = {go_3_goMux_choice_d[3:1],
                                  (go_3_goMux_choice_d[0] && (! go_3_goMux_choice_emitted[2]))};
  assign go_3_goMux_choice_done = (go_3_goMux_choice_emitted | ({go_3_goMux_choice_3_d[0],
                                                                 go_3_goMux_choice_2_d[0],
                                                                 go_3_goMux_choice_1_d[0]} & {go_3_goMux_choice_3_r,
                                                                                              go_3_goMux_choice_2_r,
                                                                                              go_3_goMux_choice_1_r}));
  assign go_3_goMux_choice_r = (& go_3_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_3_goMux_choice_emitted <= 3'd0;
    else
      go_3_goMux_choice_emitted <= (go_3_goMux_choice_r ? 3'd0 :
                                    go_3_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Bool) : (go_3_goMux_choice_1,C5) [(call_f'_goMux2,Pointer_QTree_Bool),
                                                        (q3ac9_1_1_argbuf,Pointer_QTree_Bool),
                                                        (q2ac8_2_1_argbuf,Pointer_QTree_Bool),
                                                        (q1ac7_3_1_argbuf,Pointer_QTree_Bool),
                                                        (q4aca_1_argbuf,Pointer_QTree_Bool)] > (m2ac4_goMux_mux,Pointer_QTree_Bool) */
  logic [16:0] m2ac4_goMux_mux_mux;
  logic [4:0] m2ac4_goMux_mux_onehot;
  always_comb
    unique case (go_3_goMux_choice_1_d[3:1])
      3'd0:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd1,
                                                         \call_f'_goMux2_d };
      3'd1:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd2,
                                                         q3ac9_1_1_argbuf_d};
      3'd2:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd4,
                                                         q2ac8_2_1_argbuf_d};
      3'd3:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd8,
                                                         q1ac7_3_1_argbuf_d};
      3'd4:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd16,
                                                         q4aca_1_argbuf_d};
      default:
        {m2ac4_goMux_mux_onehot, m2ac4_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m2ac4_goMux_mux_d = {m2ac4_goMux_mux_mux[16:1],
                              (m2ac4_goMux_mux_mux[0] && go_3_goMux_choice_1_d[0])};
  assign go_3_goMux_choice_1_r = (m2ac4_goMux_mux_d[0] && m2ac4_goMux_mux_r);
  assign {q4aca_1_argbuf_r,
          q1ac7_3_1_argbuf_r,
          q2ac8_2_1_argbuf_r,
          q3ac9_1_1_argbuf_r,
          \call_f'_goMux2_r } = (go_3_goMux_choice_1_r ? m2ac4_goMux_mux_onehot :
                                 5'd0);
  
  /* mux (Ty C5,
     Ty MyBool) : (go_3_goMux_choice_2,C5) [(call_f'_goMux3,MyBool),
                                            (vac5_2_2_argbuf,MyBool),
                                            (vac5_3_2_argbuf,MyBool),
                                            (vac5_4_1_argbuf,MyBool),
                                            (lizzieLet4_5QNode_Bool_2_argbuf,MyBool)] > (vac5_goMux_mux,MyBool) */
  logic [1:0] vac5_goMux_mux_mux;
  logic [4:0] vac5_goMux_mux_onehot;
  always_comb
    unique case (go_3_goMux_choice_2_d[3:1])
      3'd0:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd1,
                                                       \call_f'_goMux3_d };
      3'd1:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd2,
                                                       vac5_2_2_argbuf_d};
      3'd2:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd4,
                                                       vac5_3_2_argbuf_d};
      3'd3:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd8,
                                                       vac5_4_1_argbuf_d};
      3'd4:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd16,
                                                       lizzieLet4_5QNode_Bool_2_argbuf_d};
      default:
        {vac5_goMux_mux_onehot, vac5_goMux_mux_mux} = {5'd0, {1'd0, 1'd0}};
    endcase
  assign vac5_goMux_mux_d = {vac5_goMux_mux_mux[1:1],
                             (vac5_goMux_mux_mux[0] && go_3_goMux_choice_2_d[0])};
  assign go_3_goMux_choice_2_r = (vac5_goMux_mux_d[0] && vac5_goMux_mux_r);
  assign {lizzieLet4_5QNode_Bool_2_argbuf_r,
          vac5_4_1_argbuf_r,
          vac5_3_2_argbuf_r,
          vac5_2_2_argbuf_r,
          \call_f'_goMux3_r } = (go_3_goMux_choice_2_r ? vac5_goMux_mux_onehot :
                                 5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTf') : (go_3_goMux_choice_3,C5) [(call_f'_goMux4,Pointer_CTf'),
                                                  (sca2_1_1_argbuf,Pointer_CTf'),
                                                  (sca1_1_1_argbuf,Pointer_CTf'),
                                                  (sca0_1_1_argbuf,Pointer_CTf'),
                                                  (sca3_1_1_argbuf,Pointer_CTf')] > (sc_0_1_goMux_mux,Pointer_CTf') */
  logic [16:0] sc_0_1_goMux_mux_mux;
  logic [4:0] sc_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_3_goMux_choice_3_d[3:1])
      3'd0:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd1,
                                                           \call_f'_goMux4_d };
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
                               (sc_0_1_goMux_mux_mux[0] && go_3_goMux_choice_3_d[0])};
  assign go_3_goMux_choice_3_r = (sc_0_1_goMux_mux_d[0] && sc_0_1_goMux_mux_r);
  assign {sca3_1_1_argbuf_r,
          sca0_1_1_argbuf_r,
          sca1_1_1_argbuf_r,
          sca2_1_1_argbuf_r,
          \call_f'_goMux4_r } = (go_3_goMux_choice_3_r ? sc_0_1_goMux_mux_onehot :
                                 5'd0);
  
  /* dcon (Ty CTf,Dcon Lfsbos) : [(go_4_1,Go)] > (go_4_1Lfsbos,CTf) */
  assign go_4_1Lfsbos_d = Lfsbos_dc((& {go_4_1_d[0]}), go_4_1_d);
  assign {go_4_1_r} = {1 {(go_4_1Lfsbos_r && go_4_1Lfsbos_d[0])}};
  
  /* buf (Ty CTf) : (go_4_1Lfsbos,CTf) > (lizzieLet11_1_argbuf,CTf) */
  CTf_t go_4_1Lfsbos_bufchan_d;
  logic go_4_1Lfsbos_bufchan_r;
  assign go_4_1Lfsbos_r = ((! go_4_1Lfsbos_bufchan_d[0]) || go_4_1Lfsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_1Lfsbos_bufchan_d <= {83'd0, 1'd0};
    else if (go_4_1Lfsbos_r) go_4_1Lfsbos_bufchan_d <= go_4_1Lfsbos_d;
  CTf_t go_4_1Lfsbos_bufchan_buf;
  assign go_4_1Lfsbos_bufchan_r = (! go_4_1Lfsbos_bufchan_buf[0]);
  assign lizzieLet11_1_argbuf_d = (go_4_1Lfsbos_bufchan_buf[0] ? go_4_1Lfsbos_bufchan_buf :
                                   go_4_1Lfsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_4_1Lfsbos_bufchan_buf <= {83'd0, 1'd0};
    else
      if ((lizzieLet11_1_argbuf_r && go_4_1Lfsbos_bufchan_buf[0]))
        go_4_1Lfsbos_bufchan_buf <= {83'd0, 1'd0};
      else if (((! lizzieLet11_1_argbuf_r) && (! go_4_1Lfsbos_bufchan_buf[0])))
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
                                                                             (m1abX_1_1_argbuf,Pointer_QTree_Bool),
                                                                             (m2abY_1_1_argbuf,Pointer_QTree_Bool),
                                                                             (lizzieLet9_1_1_argbuf,Pointer_CTf)] > (call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1,TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf) */
  assign call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d = TupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_dc((& {go_4_2_argbuf_d[0],
                                                                                                                                                        m1abX_1_1_argbuf_d[0],
                                                                                                                                                        m2abY_1_1_argbuf_d[0],
                                                                                                                                                        lizzieLet9_1_1_argbuf_d[0]}), go_4_2_argbuf_d, m1abX_1_1_argbuf_d, m2abY_1_1_argbuf_d, lizzieLet9_1_1_argbuf_d);
  assign {go_4_2_argbuf_r,
          m1abX_1_1_argbuf_r,
          m2abY_1_1_argbuf_r,
          lizzieLet9_1_1_argbuf_r} = {4 {(call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_r && call_fTupGo___Pointer_QTree_Bool___Pointer_QTree_Bool___Pointer_CTf_1_d[0])}};
  
  /* dcon (Ty CTf',Dcon Lf'sbos) : [(go_5_1,Go)] > (go_5_1Lf'sbos,CTf') */
  assign \go_5_1Lf'sbos_d  = \Lf'sbos_dc ((& {go_5_1_d[0]}), go_5_1_d);
  assign {go_5_1_r} = {1 {(\go_5_1Lf'sbos_r  && \go_5_1Lf'sbos_d [0])}};
  
  /* buf (Ty CTf') : (go_5_1Lf'sbos,CTf') > (lizzieLet12_1_argbuf,CTf') */
  \CTf'_t  \go_5_1Lf'sbos_bufchan_d ;
  logic \go_5_1Lf'sbos_bufchan_r ;
  assign \go_5_1Lf'sbos_r  = ((! \go_5_1Lf'sbos_bufchan_d [0]) || \go_5_1Lf'sbos_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_5_1Lf'sbos_bufchan_d  <= {68'd0, 1'd0};
    else
      if (\go_5_1Lf'sbos_r )
        \go_5_1Lf'sbos_bufchan_d  <= \go_5_1Lf'sbos_d ;
  \CTf'_t  \go_5_1Lf'sbos_bufchan_buf ;
  assign \go_5_1Lf'sbos_bufchan_r  = (! \go_5_1Lf'sbos_bufchan_buf [0]);
  assign lizzieLet12_1_argbuf_d = (\go_5_1Lf'sbos_bufchan_buf [0] ? \go_5_1Lf'sbos_bufchan_buf  :
                                   \go_5_1Lf'sbos_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_5_1Lf'sbos_bufchan_buf  <= {68'd0, 1'd0};
    else
      if ((lizzieLet12_1_argbuf_r && \go_5_1Lf'sbos_bufchan_buf [0]))
        \go_5_1Lf'sbos_bufchan_buf  <= {68'd0, 1'd0};
      else if (((! lizzieLet12_1_argbuf_r) && (! \go_5_1Lf'sbos_bufchan_buf [0])))
        \go_5_1Lf'sbos_bufchan_buf  <= \go_5_1Lf'sbos_bufchan_d ;
  
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
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf',
      Dcon TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf') : [(go_5_2_argbuf,Go),
                                                                  (m2ac4_1_1_argbuf,Pointer_QTree_Bool),
                                                                  (vac5_1_1_argbuf,MyBool),
                                                                  (lizzieLet5_1_1_argbuf,Pointer_CTf')] > (call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1,TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf') */
  assign \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d  = \TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_dc ((& {go_5_2_argbuf_d[0],
                                                                                                                                       m2ac4_1_1_argbuf_d[0],
                                                                                                                                       vac5_1_1_argbuf_d[0],
                                                                                                                                       lizzieLet5_1_1_argbuf_d[0]}), go_5_2_argbuf_d, m2ac4_1_1_argbuf_d, vac5_1_1_argbuf_d, lizzieLet5_1_1_argbuf_d);
  assign {go_5_2_argbuf_r,
          m2ac4_1_1_argbuf_r,
          vac5_1_1_argbuf_r,
          lizzieLet5_1_1_argbuf_r} = {4 {(\call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_r  && \call_f'TupGo___Pointer_QTree_Bool___MyBool___Pointer_CTf'_1_d [0])}};
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(go_6_1_argbuf,Go)] > (lvlrrv-44TupGo_1,TupGo) */
  assign \lvlrrv-44TupGo_1_d  = TupGo_dc((& {go_6_1_argbuf_d[0]}), go_6_1_argbuf_d);
  assign {go_6_1_argbuf_r} = {1 {(\lvlrrv-44TupGo_1_r  && \lvlrrv-44TupGo_1_d [0])}};
  
  /* buf (Ty Nat) : (go_7_1Zero,Nat) > (lizzieLet15_1_argbuf,Nat) */
  Nat_t go_7_1Zero_bufchan_d;
  logic go_7_1Zero_bufchan_r;
  assign go_7_1Zero_r = ((! go_7_1Zero_bufchan_d[0]) || go_7_1Zero_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_1Zero_bufchan_d <= {17'd0, 1'd0};
    else if (go_7_1Zero_r) go_7_1Zero_bufchan_d <= go_7_1Zero_d;
  Nat_t go_7_1Zero_bufchan_buf;
  assign go_7_1Zero_bufchan_r = (! go_7_1Zero_bufchan_buf[0]);
  assign lizzieLet15_1_argbuf_d = (go_7_1Zero_bufchan_buf[0] ? go_7_1Zero_bufchan_buf :
                                   go_7_1Zero_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_1Zero_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet15_1_argbuf_r && go_7_1Zero_bufchan_buf[0]))
        go_7_1Zero_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet15_1_argbuf_r) && (! go_7_1Zero_bufchan_buf[0])))
        go_7_1Zero_bufchan_buf <= go_7_1Zero_bufchan_d;
  
  /* fork (Ty C4) : (go_8_goMux_choice,C4) > [(go_8_goMux_choice_1,C4),
                                         (go_8_goMux_choice_2,C4)] */
  logic [1:0] go_8_goMux_choice_emitted;
  logic [1:0] go_8_goMux_choice_done;
  assign go_8_goMux_choice_1_d = {go_8_goMux_choice_d[2:1],
                                  (go_8_goMux_choice_d[0] && (! go_8_goMux_choice_emitted[0]))};
  assign go_8_goMux_choice_2_d = {go_8_goMux_choice_d[2:1],
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
  
  /* mux (Ty C4,
     Ty Pointer_QTree_Nat) : (go_8_goMux_choice_1,C4) [(lizzieLet6_1_argbuf,Pointer_QTree_Nat),
                                                       (contRet_0_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet7_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet8_1_argbuf,Pointer_QTree_Nat)] > (srtarg_0_goMux_mux,Pointer_QTree_Nat) */
  logic [16:0] srtarg_0_goMux_mux_mux;
  logic [3:0] srtarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_8_goMux_choice_1_d[2:1])
      2'd0:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd1,
                                                               lizzieLet6_1_argbuf_d};
      2'd1:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd2,
                                                               contRet_0_1_argbuf_d};
      2'd2:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd4,
                                                               lizzieLet7_1_argbuf_d};
      2'd3:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd8,
                                                               lizzieLet8_1_argbuf_d};
      default:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign srtarg_0_goMux_mux_d = {srtarg_0_goMux_mux_mux[16:1],
                                 (srtarg_0_goMux_mux_mux[0] && go_8_goMux_choice_1_d[0])};
  assign go_8_goMux_choice_1_r = (srtarg_0_goMux_mux_d[0] && srtarg_0_goMux_mux_r);
  assign {lizzieLet8_1_argbuf_r,
          lizzieLet7_1_argbuf_r,
          contRet_0_1_argbuf_r,
          lizzieLet6_1_argbuf_r} = (go_8_goMux_choice_1_r ? srtarg_0_goMux_mux_onehot :
                                    4'd0);
  
  /* mux (Ty C4,
     Ty Pointer_CTf) : (go_8_goMux_choice_2,C4) [(lizzieLet0_5QNone_Bool_1_argbuf,Pointer_CTf),
                                                 (sc_0_5_1_argbuf,Pointer_CTf),
                                                 (lizzieLet0_5QVal_Bool_1_argbuf,Pointer_CTf),
                                                 (lizzieLet0_5QError_Bool_1_argbuf,Pointer_CTf)] > (scfarg_0_goMux_mux,Pointer_CTf) */
  logic [16:0] scfarg_0_goMux_mux_mux;
  logic [3:0] scfarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_8_goMux_choice_2_d[2:1])
      2'd0:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd1,
                                                               lizzieLet0_5QNone_Bool_1_argbuf_d};
      2'd1:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd2,
                                                               sc_0_5_1_argbuf_d};
      2'd2:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd4,
                                                               lizzieLet0_5QVal_Bool_1_argbuf_d};
      2'd3:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd8,
                                                               lizzieLet0_5QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign scfarg_0_goMux_mux_d = {scfarg_0_goMux_mux_mux[16:1],
                                 (scfarg_0_goMux_mux_mux[0] && go_8_goMux_choice_2_d[0])};
  assign go_8_goMux_choice_2_r = (scfarg_0_goMux_mux_d[0] && scfarg_0_goMux_mux_r);
  assign {lizzieLet0_5QError_Bool_1_argbuf_r,
          lizzieLet0_5QVal_Bool_1_argbuf_r,
          sc_0_5_1_argbuf_r,
          lizzieLet0_5QNone_Bool_1_argbuf_r} = (go_8_goMux_choice_2_r ? scfarg_0_goMux_mux_onehot :
                                                4'd0);
  
  /* fork (Ty C6) : (go_9_goMux_choice,C6) > [(go_9_goMux_choice_1,C6),
                                         (go_9_goMux_choice_2,C6)] */
  logic [1:0] go_9_goMux_choice_emitted;
  logic [1:0] go_9_goMux_choice_done;
  assign go_9_goMux_choice_1_d = {go_9_goMux_choice_d[3:1],
                                  (go_9_goMux_choice_d[0] && (! go_9_goMux_choice_emitted[0]))};
  assign go_9_goMux_choice_2_d = {go_9_goMux_choice_d[3:1],
                                  (go_9_goMux_choice_d[0] && (! go_9_goMux_choice_emitted[1]))};
  assign go_9_goMux_choice_done = (go_9_goMux_choice_emitted | ({go_9_goMux_choice_2_d[0],
                                                                 go_9_goMux_choice_1_d[0]} & {go_9_goMux_choice_2_r,
                                                                                              go_9_goMux_choice_1_r}));
  assign go_9_goMux_choice_r = (& go_9_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_9_goMux_choice_emitted <= 2'd0;
    else
      go_9_goMux_choice_emitted <= (go_9_goMux_choice_r ? 2'd0 :
                                    go_9_goMux_choice_done);
  
  /* mux (Ty C6,
     Ty Pointer_QTree_Nat) : (go_9_goMux_choice_1,C6) [(lizzieLet1_1_1_argbuf,Pointer_QTree_Nat),
                                                       (contRet_0_1_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet3_1_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet8_1_1_argbuf,Pointer_QTree_Nat),
                                                       (lizzieLet4_1_1_argbuf,Pointer_QTree_Nat)] > (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) */
  logic [16:0] srtarg_0_1_goMux_mux_mux;
  logic [5:0] srtarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_9_goMux_choice_1_d[3:1])
      3'd0:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd1,
                                                                   lizzieLet1_1_1_argbuf_d};
      3'd1:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd2,
                                                                   contRet_0_1_1_argbuf_d};
      3'd2:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd4,
                                                                   lizzieLet2_1_1_argbuf_d};
      3'd3:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd8,
                                                                   lizzieLet3_1_1_argbuf_d};
      3'd4:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd16,
                                                                   lizzieLet8_1_1_argbuf_d};
      3'd5:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd32,
                                                                   lizzieLet4_1_1_argbuf_d};
      default:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {6'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign srtarg_0_1_goMux_mux_d = {srtarg_0_1_goMux_mux_mux[16:1],
                                   (srtarg_0_1_goMux_mux_mux[0] && go_9_goMux_choice_1_d[0])};
  assign go_9_goMux_choice_1_r = (srtarg_0_1_goMux_mux_d[0] && srtarg_0_1_goMux_mux_r);
  assign {lizzieLet4_1_1_argbuf_r,
          lizzieLet8_1_1_argbuf_r,
          lizzieLet3_1_1_argbuf_r,
          lizzieLet2_1_1_argbuf_r,
          contRet_0_1_1_argbuf_r,
          lizzieLet1_1_1_argbuf_r} = (go_9_goMux_choice_1_r ? srtarg_0_1_goMux_mux_onehot :
                                      6'd0);
  
  /* mux (Ty C6,
     Ty Pointer_CTf') : (go_9_goMux_choice_2,C6) [(lizzieLet4_4QNone_Bool_1_argbuf,Pointer_CTf'),
                                                  (sc_0_9_1_argbuf,Pointer_CTf'),
                                                  (lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf,Pointer_CTf'),
                                                  (lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf,Pointer_CTf'),
                                                  (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf,Pointer_CTf'),
                                                  (lizzieLet4_4QError_Bool_1_argbuf,Pointer_CTf')] > (scfarg_0_1_goMux_mux,Pointer_CTf') */
  logic [16:0] scfarg_0_1_goMux_mux_mux;
  logic [5:0] scfarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_9_goMux_choice_2_d[3:1])
      3'd0:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd1,
                                                                   lizzieLet4_4QNone_Bool_1_argbuf_d};
      3'd1:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd2,
                                                                   sc_0_9_1_argbuf_d};
      3'd2:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd4,
                                                                   lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_d};
      3'd3:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd8,
                                                                   lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_d};
      3'd4:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd16,
                                                                   lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_d};
      3'd5:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd32,
                                                                   lizzieLet4_4QError_Bool_1_argbuf_d};
      default:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {6'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign scfarg_0_1_goMux_mux_d = {scfarg_0_1_goMux_mux_mux[16:1],
                                   (scfarg_0_1_goMux_mux_mux[0] && go_9_goMux_choice_2_d[0])};
  assign go_9_goMux_choice_2_r = (scfarg_0_1_goMux_mux_d[0] && scfarg_0_1_goMux_mux_r);
  assign {lizzieLet4_4QError_Bool_1_argbuf_r,
          lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_r,
          lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_r,
          lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_r,
          sc_0_9_1_argbuf_r,
          lizzieLet4_4QNone_Bool_1_argbuf_r} = (go_9_goMux_choice_2_r ? scfarg_0_1_goMux_mux_onehot :
                                                6'd0);
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet0_1QNode_Bool,QTree_Bool) > [(q1ac0_destruct,Pointer_QTree_Bool),
                                                                    (q2ac1_destruct,Pointer_QTree_Bool),
                                                                    (q3ac2_destruct,Pointer_QTree_Bool),
                                                                    (q4ac3_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet0_1QNode_Bool_emitted;
  logic [3:0] lizzieLet0_1QNode_Bool_done;
  assign q1ac0_destruct_d = {lizzieLet0_1QNode_Bool_d[18:3],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[0]))};
  assign q2ac1_destruct_d = {lizzieLet0_1QNode_Bool_d[34:19],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[1]))};
  assign q3ac2_destruct_d = {lizzieLet0_1QNode_Bool_d[50:35],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[2]))};
  assign q4ac3_destruct_d = {lizzieLet0_1QNode_Bool_d[66:51],
                             (lizzieLet0_1QNode_Bool_d[0] && (! lizzieLet0_1QNode_Bool_emitted[3]))};
  assign lizzieLet0_1QNode_Bool_done = (lizzieLet0_1QNode_Bool_emitted | ({q4ac3_destruct_d[0],
                                                                           q3ac2_destruct_d[0],
                                                                           q2ac1_destruct_d[0],
                                                                           q1ac0_destruct_d[0]} & {q4ac3_destruct_r,
                                                                                                   q3ac2_destruct_r,
                                                                                                   q2ac1_destruct_r,
                                                                                                   q1ac0_destruct_r}));
  assign lizzieLet0_1QNode_Bool_r = (& lizzieLet0_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet0_1QNode_Bool_emitted <= (lizzieLet0_1QNode_Bool_r ? 4'd0 :
                                         lizzieLet0_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet0_1QVal_Bool,QTree_Bool) > [(vabZ_destruct,MyBool)] */
  assign vabZ_destruct_d = {lizzieLet0_1QVal_Bool_d[3:3],
                            lizzieLet0_1QVal_Bool_d[0]};
  assign lizzieLet0_1QVal_Bool_r = vabZ_destruct_r;
  
  /* buf (Ty Nat) : (lizzieLet0_1_1Succ,Nat) > (lizzieLet16_1_argbuf,Nat) */
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
  assign lizzieLet16_1_argbuf_d = (lizzieLet0_1_1Succ_bufchan_buf[0] ? lizzieLet0_1_1Succ_bufchan_buf :
                                   lizzieLet0_1_1Succ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
    else
      if ((lizzieLet16_1_argbuf_r && lizzieLet0_1_1Succ_bufchan_buf[0]))
        lizzieLet0_1_1Succ_bufchan_buf <= {17'd0, 1'd0};
      else if (((! lizzieLet16_1_argbuf_r) && (! lizzieLet0_1_1Succ_bufchan_buf[0])))
        lizzieLet0_1_1Succ_bufchan_buf <= lizzieLet0_1_1Succ_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet0_2,QTree_Bool) (lizzieLet0_1,QTree_Bool) > [(_12,QTree_Bool),
                                                                               (lizzieLet0_1QVal_Bool,QTree_Bool),
                                                                               (lizzieLet0_1QNode_Bool,QTree_Bool),
                                                                               (_11,QTree_Bool)] */
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
  assign _12_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[0]};
  assign lizzieLet0_1QVal_Bool_d = {lizzieLet0_1_d[66:1],
                                    lizzieLet0_1_onehotd[1]};
  assign lizzieLet0_1QNode_Bool_d = {lizzieLet0_1_d[66:1],
                                     lizzieLet0_1_onehotd[2]};
  assign _11_d = {lizzieLet0_1_d[66:1], lizzieLet0_1_onehotd[3]};
  assign lizzieLet0_1_r = (| (lizzieLet0_1_onehotd & {_11_r,
                                                      lizzieLet0_1QNode_Bool_r,
                                                      lizzieLet0_1QVal_Bool_r,
                                                      _12_r}));
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
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet3_1_argbuf,QTree_Nat) */
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
  assign lizzieLet3_1_argbuf_d = (lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf :
                                  lizzieLet0_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet3_1_argbuf_r && lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet3_1_argbuf_r) && (! lizzieLet0_3QError_Bool_1QError_Nat_bufchan_buf[0])))
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
  
  /* buf (Ty Go) : (lizzieLet0_3QNode_Bool,Go) > (lizzieLet0_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_3QNode_Bool_bufchan_d;
  logic lizzieLet0_3QNode_Bool_bufchan_r;
  assign lizzieLet0_3QNode_Bool_r = ((! lizzieLet0_3QNode_Bool_bufchan_d[0]) || lizzieLet0_3QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_3QNode_Bool_r)
        lizzieLet0_3QNode_Bool_bufchan_d <= lizzieLet0_3QNode_Bool_d;
  Go_t lizzieLet0_3QNode_Bool_bufchan_buf;
  assign lizzieLet0_3QNode_Bool_bufchan_r = (! lizzieLet0_3QNode_Bool_bufchan_buf[0]);
  assign lizzieLet0_3QNode_Bool_1_argbuf_d = (lizzieLet0_3QNode_Bool_bufchan_buf[0] ? lizzieLet0_3QNode_Bool_bufchan_buf :
                                              lizzieLet0_3QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_3QNode_Bool_1_argbuf_r && lizzieLet0_3QNode_Bool_bufchan_buf[0]))
        lizzieLet0_3QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_3QNode_Bool_1_argbuf_r) && (! lizzieLet0_3QNode_Bool_bufchan_buf[0])))
        lizzieLet0_3QNode_Bool_bufchan_buf <= lizzieLet0_3QNode_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet0_3QNone_Bool,Go) > [(lizzieLet0_3QNone_Bool_1,Go),
                                              (lizzieLet0_3QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet0_3QNone_Bool_emitted;
  logic [1:0] lizzieLet0_3QNone_Bool_done;
  assign lizzieLet0_3QNone_Bool_1_d = (lizzieLet0_3QNone_Bool_d[0] && (! lizzieLet0_3QNone_Bool_emitted[0]));
  assign lizzieLet0_3QNone_Bool_2_d = (lizzieLet0_3QNone_Bool_d[0] && (! lizzieLet0_3QNone_Bool_emitted[1]));
  assign lizzieLet0_3QNone_Bool_done = (lizzieLet0_3QNone_Bool_emitted | ({lizzieLet0_3QNone_Bool_2_d[0],
                                                                           lizzieLet0_3QNone_Bool_1_d[0]} & {lizzieLet0_3QNone_Bool_2_r,
                                                                                                             lizzieLet0_3QNone_Bool_1_r}));
  assign lizzieLet0_3QNone_Bool_r = (& lizzieLet0_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet0_3QNone_Bool_emitted <= (lizzieLet0_3QNone_Bool_r ? 2'd0 :
                                         lizzieLet0_3QNone_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet0_3QNone_Bool_1,Go)] > (lizzieLet0_3QNone_Bool_1QNone_Nat,QTree_Nat) */
  assign lizzieLet0_3QNone_Bool_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet0_3QNone_Bool_1_d[0]}), lizzieLet0_3QNone_Bool_1_d);
  assign {lizzieLet0_3QNone_Bool_1_r} = {1 {(lizzieLet0_3QNone_Bool_1QNone_Nat_r && lizzieLet0_3QNone_Bool_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet0_3QNone_Bool_1QNone_Nat,QTree_Nat) > (lizzieLet1_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d;
  logic lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_r;
  assign lizzieLet0_3QNone_Bool_1QNone_Nat_r = ((! lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d[0]) || lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet0_3QNone_Bool_1QNone_Nat_r)
        lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d <= lizzieLet0_3QNone_Bool_1QNone_Nat_d;
  QTree_Nat_t lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf;
  assign lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_r = (! lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet1_1_argbuf_d = (lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf[0] ? lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf :
                                  lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet1_1_argbuf_r && lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf[0]))
        lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet1_1_argbuf_r) && (! lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf[0])))
        lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_buf <= lizzieLet0_3QNone_Bool_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet0_3QNone_Bool_2,Go) > (lizzieLet0_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_3QNone_Bool_2_bufchan_d;
  logic lizzieLet0_3QNone_Bool_2_bufchan_r;
  assign lizzieLet0_3QNone_Bool_2_r = ((! lizzieLet0_3QNone_Bool_2_bufchan_d[0]) || lizzieLet0_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_3QNone_Bool_2_r)
        lizzieLet0_3QNone_Bool_2_bufchan_d <= lizzieLet0_3QNone_Bool_2_d;
  Go_t lizzieLet0_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet0_3QNone_Bool_2_bufchan_r = (! lizzieLet0_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_3QNone_Bool_2_argbuf_d = (lizzieLet0_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet0_3QNone_Bool_2_bufchan_buf :
                                              lizzieLet0_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_3QNone_Bool_2_argbuf_r && lizzieLet0_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet0_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_3QNone_Bool_2_argbuf_r) && (! lizzieLet0_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet0_3QNone_Bool_2_bufchan_buf <= lizzieLet0_3QNone_Bool_2_bufchan_d;
  
  /* mergectrl (Ty C4,Ty Go) : [(lizzieLet0_3QNone_Bool_2_argbuf,Go),
                           (lizzieLet17_3Lcall_f0_1_argbuf,Go),
                           (lizzieLet0_3QVal_Bool_2_argbuf,Go),
                           (lizzieLet0_3QError_Bool_2_argbuf,Go)] > (go_8_goMux_choice,C4) (go_8_goMux_data,Go) */
  logic [3:0] lizzieLet0_3QNone_Bool_2_argbuf_select_d;
  assign lizzieLet0_3QNone_Bool_2_argbuf_select_d = ((| lizzieLet0_3QNone_Bool_2_argbuf_select_q) ? lizzieLet0_3QNone_Bool_2_argbuf_select_q :
                                                     (lizzieLet0_3QNone_Bool_2_argbuf_d[0] ? 4'd1 :
                                                      (lizzieLet17_3Lcall_f0_1_argbuf_d[0] ? 4'd2 :
                                                       (lizzieLet0_3QVal_Bool_2_argbuf_d[0] ? 4'd4 :
                                                        (lizzieLet0_3QError_Bool_2_argbuf_d[0] ? 4'd8 :
                                                         4'd0)))));
  logic [3:0] lizzieLet0_3QNone_Bool_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QNone_Bool_2_argbuf_select_q <= 4'd0;
    else
      lizzieLet0_3QNone_Bool_2_argbuf_select_q <= (lizzieLet0_3QNone_Bool_2_argbuf_done ? 4'd0 :
                                                   lizzieLet0_3QNone_Bool_2_argbuf_select_d);
  logic [1:0] lizzieLet0_3QNone_Bool_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_3QNone_Bool_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet0_3QNone_Bool_2_argbuf_emit_q <= (lizzieLet0_3QNone_Bool_2_argbuf_done ? 2'd0 :
                                                 lizzieLet0_3QNone_Bool_2_argbuf_emit_d);
  logic [1:0] lizzieLet0_3QNone_Bool_2_argbuf_emit_d;
  assign lizzieLet0_3QNone_Bool_2_argbuf_emit_d = (lizzieLet0_3QNone_Bool_2_argbuf_emit_q | ({go_8_goMux_choice_d[0],
                                                                                              go_8_goMux_data_d[0]} & {go_8_goMux_choice_r,
                                                                                                                       go_8_goMux_data_r}));
  logic lizzieLet0_3QNone_Bool_2_argbuf_done;
  assign lizzieLet0_3QNone_Bool_2_argbuf_done = (& lizzieLet0_3QNone_Bool_2_argbuf_emit_d);
  assign {lizzieLet0_3QError_Bool_2_argbuf_r,
          lizzieLet0_3QVal_Bool_2_argbuf_r,
          lizzieLet17_3Lcall_f0_1_argbuf_r,
          lizzieLet0_3QNone_Bool_2_argbuf_r} = (lizzieLet0_3QNone_Bool_2_argbuf_done ? lizzieLet0_3QNone_Bool_2_argbuf_select_d :
                                                4'd0);
  assign go_8_goMux_data_d = ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_3QNone_Bool_2_argbuf_d :
                              ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet17_3Lcall_f0_1_argbuf_d :
                               ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_3QVal_Bool_2_argbuf_d :
                                ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet0_3QError_Bool_2_argbuf_d :
                                 1'd0))));
  assign go_8_goMux_choice_d = ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[1])) ? C1_4_dc(1'd1) :
                                ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[1])) ? C2_4_dc(1'd1) :
                                 ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[1])) ? C3_4_dc(1'd1) :
                                  ((lizzieLet0_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet0_3QNone_Bool_2_argbuf_emit_q[1])) ? C4_4_dc(1'd1) :
                                   {2'd0, 1'd0}))));
  
  /* fork (Ty Go) : (lizzieLet0_3QVal_Bool,Go) > [(lizzieLet0_3QVal_Bool_1,Go),
                                             (lizzieLet0_3QVal_Bool_2,Go)] */
  logic [1:0] lizzieLet0_3QVal_Bool_emitted;
  logic [1:0] lizzieLet0_3QVal_Bool_done;
  assign lizzieLet0_3QVal_Bool_1_d = (lizzieLet0_3QVal_Bool_d[0] && (! lizzieLet0_3QVal_Bool_emitted[0]));
  assign lizzieLet0_3QVal_Bool_2_d = (lizzieLet0_3QVal_Bool_d[0] && (! lizzieLet0_3QVal_Bool_emitted[1]));
  assign lizzieLet0_3QVal_Bool_done = (lizzieLet0_3QVal_Bool_emitted | ({lizzieLet0_3QVal_Bool_2_d[0],
                                                                         lizzieLet0_3QVal_Bool_1_d[0]} & {lizzieLet0_3QVal_Bool_2_r,
                                                                                                          lizzieLet0_3QVal_Bool_1_r}));
  assign lizzieLet0_3QVal_Bool_r = (& lizzieLet0_3QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QVal_Bool_emitted <= 2'd0;
    else
      lizzieLet0_3QVal_Bool_emitted <= (lizzieLet0_3QVal_Bool_r ? 2'd0 :
                                        lizzieLet0_3QVal_Bool_done);
  
  /* buf (Ty Go) : (lizzieLet0_3QVal_Bool_1,Go) > (lizzieLet0_3QVal_Bool_1_argbuf,Go) */
  Go_t lizzieLet0_3QVal_Bool_1_bufchan_d;
  logic lizzieLet0_3QVal_Bool_1_bufchan_r;
  assign lizzieLet0_3QVal_Bool_1_r = ((! lizzieLet0_3QVal_Bool_1_bufchan_d[0]) || lizzieLet0_3QVal_Bool_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QVal_Bool_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_3QVal_Bool_1_r)
        lizzieLet0_3QVal_Bool_1_bufchan_d <= lizzieLet0_3QVal_Bool_1_d;
  Go_t lizzieLet0_3QVal_Bool_1_bufchan_buf;
  assign lizzieLet0_3QVal_Bool_1_bufchan_r = (! lizzieLet0_3QVal_Bool_1_bufchan_buf[0]);
  assign lizzieLet0_3QVal_Bool_1_argbuf_d = (lizzieLet0_3QVal_Bool_1_bufchan_buf[0] ? lizzieLet0_3QVal_Bool_1_bufchan_buf :
                                             lizzieLet0_3QVal_Bool_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QVal_Bool_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_3QVal_Bool_1_argbuf_r && lizzieLet0_3QVal_Bool_1_bufchan_buf[0]))
        lizzieLet0_3QVal_Bool_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_3QVal_Bool_1_argbuf_r) && (! lizzieLet0_3QVal_Bool_1_bufchan_buf[0])))
        lizzieLet0_3QVal_Bool_1_bufchan_buf <= lizzieLet0_3QVal_Bool_1_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Bool___MyBool,
      Dcon TupGo___Pointer_QTree_Bool___MyBool) : [(lizzieLet0_3QVal_Bool_1_argbuf,Go),
                                                   (lizzieLet0_4QVal_Bool_1_argbuf,Pointer_QTree_Bool),
                                                   (vabZ_1_argbuf,MyBool)] > (f'TupGo___Pointer_QTree_Bool___MyBool_1,TupGo___Pointer_QTree_Bool___MyBool) */
  assign \f'TupGo___Pointer_QTree_Bool___MyBool_1_d  = TupGo___Pointer_QTree_Bool___MyBool_dc((& {lizzieLet0_3QVal_Bool_1_argbuf_d[0],
                                                                                                  lizzieLet0_4QVal_Bool_1_argbuf_d[0],
                                                                                                  vabZ_1_argbuf_d[0]}), lizzieLet0_3QVal_Bool_1_argbuf_d, lizzieLet0_4QVal_Bool_1_argbuf_d, vabZ_1_argbuf_d);
  assign {lizzieLet0_3QVal_Bool_1_argbuf_r,
          lizzieLet0_4QVal_Bool_1_argbuf_r,
          vabZ_1_argbuf_r} = {3 {(\f'TupGo___Pointer_QTree_Bool___MyBool_1_r  && \f'TupGo___Pointer_QTree_Bool___MyBool_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet0_3QVal_Bool_2,Go) > (lizzieLet0_3QVal_Bool_2_argbuf,Go) */
  Go_t lizzieLet0_3QVal_Bool_2_bufchan_d;
  logic lizzieLet0_3QVal_Bool_2_bufchan_r;
  assign lizzieLet0_3QVal_Bool_2_r = ((! lizzieLet0_3QVal_Bool_2_bufchan_d[0]) || lizzieLet0_3QVal_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QVal_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet0_3QVal_Bool_2_r)
        lizzieLet0_3QVal_Bool_2_bufchan_d <= lizzieLet0_3QVal_Bool_2_d;
  Go_t lizzieLet0_3QVal_Bool_2_bufchan_buf;
  assign lizzieLet0_3QVal_Bool_2_bufchan_r = (! lizzieLet0_3QVal_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_3QVal_Bool_2_argbuf_d = (lizzieLet0_3QVal_Bool_2_bufchan_buf[0] ? lizzieLet0_3QVal_Bool_2_bufchan_buf :
                                             lizzieLet0_3QVal_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_3QVal_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet0_3QVal_Bool_2_argbuf_r && lizzieLet0_3QVal_Bool_2_bufchan_buf[0]))
        lizzieLet0_3QVal_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet0_3QVal_Bool_2_argbuf_r) && (! lizzieLet0_3QVal_Bool_2_bufchan_buf[0])))
        lizzieLet0_3QVal_Bool_2_bufchan_buf <= lizzieLet0_3QVal_Bool_2_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_QTree_Bool) : (lizzieLet0_4,QTree_Bool) (m2abY_goMux_mux,Pointer_QTree_Bool) > [(_10,Pointer_QTree_Bool),
                                                                                                  (lizzieLet0_4QVal_Bool,Pointer_QTree_Bool),
                                                                                                  (lizzieLet0_4QNode_Bool,Pointer_QTree_Bool),
                                                                                                  (_9,Pointer_QTree_Bool)] */
  logic [3:0] m2abY_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet0_4_d[0] && m2abY_goMux_mux_d[0]))
      unique case (lizzieLet0_4_d[2:1])
        2'd0: m2abY_goMux_mux_onehotd = 4'd1;
        2'd1: m2abY_goMux_mux_onehotd = 4'd2;
        2'd2: m2abY_goMux_mux_onehotd = 4'd4;
        2'd3: m2abY_goMux_mux_onehotd = 4'd8;
        default: m2abY_goMux_mux_onehotd = 4'd0;
      endcase
    else m2abY_goMux_mux_onehotd = 4'd0;
  assign _10_d = {m2abY_goMux_mux_d[16:1],
                  m2abY_goMux_mux_onehotd[0]};
  assign lizzieLet0_4QVal_Bool_d = {m2abY_goMux_mux_d[16:1],
                                    m2abY_goMux_mux_onehotd[1]};
  assign lizzieLet0_4QNode_Bool_d = {m2abY_goMux_mux_d[16:1],
                                     m2abY_goMux_mux_onehotd[2]};
  assign _9_d = {m2abY_goMux_mux_d[16:1],
                 m2abY_goMux_mux_onehotd[3]};
  assign m2abY_goMux_mux_r = (| (m2abY_goMux_mux_onehotd & {_9_r,
                                                            lizzieLet0_4QNode_Bool_r,
                                                            lizzieLet0_4QVal_Bool_r,
                                                            _10_r}));
  assign lizzieLet0_4_r = m2abY_goMux_mux_r;
  
  /* fork (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool,Pointer_QTree_Bool) > [(lizzieLet0_4QNode_Bool_1,Pointer_QTree_Bool),
                                                                              (lizzieLet0_4QNode_Bool_2,Pointer_QTree_Bool)] */
  logic [1:0] lizzieLet0_4QNode_Bool_emitted;
  logic [1:0] lizzieLet0_4QNode_Bool_done;
  assign lizzieLet0_4QNode_Bool_1_d = {lizzieLet0_4QNode_Bool_d[16:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[0]))};
  assign lizzieLet0_4QNode_Bool_2_d = {lizzieLet0_4QNode_Bool_d[16:1],
                                       (lizzieLet0_4QNode_Bool_d[0] && (! lizzieLet0_4QNode_Bool_emitted[1]))};
  assign lizzieLet0_4QNode_Bool_done = (lizzieLet0_4QNode_Bool_emitted | ({lizzieLet0_4QNode_Bool_2_d[0],
                                                                           lizzieLet0_4QNode_Bool_1_d[0]} & {lizzieLet0_4QNode_Bool_2_r,
                                                                                                             lizzieLet0_4QNode_Bool_1_r}));
  assign lizzieLet0_4QNode_Bool_r = (& lizzieLet0_4QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet0_4QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet0_4QNode_Bool_emitted <= (lizzieLet0_4QNode_Bool_r ? 2'd0 :
                                         lizzieLet0_4QNode_Bool_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QNode_Bool_2,Pointer_QTree_Bool) > (lizzieLet0_4QNode_Bool_2_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_2_bufchan_d;
  logic lizzieLet0_4QNode_Bool_2_bufchan_r;
  assign lizzieLet0_4QNode_Bool_2_r = ((! lizzieLet0_4QNode_Bool_2_bufchan_d[0]) || lizzieLet0_4QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_2_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QNode_Bool_2_r)
        lizzieLet0_4QNode_Bool_2_bufchan_d <= lizzieLet0_4QNode_Bool_2_d;
  Pointer_QTree_Bool_t lizzieLet0_4QNode_Bool_2_bufchan_buf;
  assign lizzieLet0_4QNode_Bool_2_bufchan_r = (! lizzieLet0_4QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet0_4QNode_Bool_2_argbuf_d = (lizzieLet0_4QNode_Bool_2_bufchan_buf[0] ? lizzieLet0_4QNode_Bool_2_bufchan_buf :
                                              lizzieLet0_4QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QNode_Bool_2_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QNode_Bool_2_argbuf_r && lizzieLet0_4QNode_Bool_2_bufchan_buf[0]))
        lizzieLet0_4QNode_Bool_2_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QNode_Bool_2_argbuf_r) && (! lizzieLet0_4QNode_Bool_2_bufchan_buf[0])))
        lizzieLet0_4QNode_Bool_2_bufchan_buf <= lizzieLet0_4QNode_Bool_2_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (lizzieLet0_4QVal_Bool,Pointer_QTree_Bool) > (lizzieLet0_4QVal_Bool_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t lizzieLet0_4QVal_Bool_bufchan_d;
  logic lizzieLet0_4QVal_Bool_bufchan_r;
  assign lizzieLet0_4QVal_Bool_r = ((! lizzieLet0_4QVal_Bool_bufchan_d[0]) || lizzieLet0_4QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_4QVal_Bool_r)
        lizzieLet0_4QVal_Bool_bufchan_d <= lizzieLet0_4QVal_Bool_d;
  Pointer_QTree_Bool_t lizzieLet0_4QVal_Bool_bufchan_buf;
  assign lizzieLet0_4QVal_Bool_bufchan_r = (! lizzieLet0_4QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_4QVal_Bool_1_argbuf_d = (lizzieLet0_4QVal_Bool_bufchan_buf[0] ? lizzieLet0_4QVal_Bool_bufchan_buf :
                                             lizzieLet0_4QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_4QVal_Bool_1_argbuf_r && lizzieLet0_4QVal_Bool_bufchan_buf[0]))
        lizzieLet0_4QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_4QVal_Bool_1_argbuf_r) && (! lizzieLet0_4QVal_Bool_bufchan_buf[0])))
        lizzieLet0_4QVal_Bool_bufchan_buf <= lizzieLet0_4QVal_Bool_bufchan_d;
  
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
  
  /* dcon (Ty CTf,
      Dcon Lcall_f3) : [(lizzieLet0_5QNode_Bool,Pointer_CTf),
                        (q1ac0_destruct,Pointer_QTree_Bool),
                        (lizzieLet0_4QNode_Bool_1,Pointer_QTree_Bool),
                        (q2ac1_destruct,Pointer_QTree_Bool),
                        (q3ac2_destruct,Pointer_QTree_Bool)] > (lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3,CTf) */
  assign lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_d = Lcall_f3_dc((& {lizzieLet0_5QNode_Bool_d[0],
                                                                                                           q1ac0_destruct_d[0],
                                                                                                           lizzieLet0_4QNode_Bool_1_d[0],
                                                                                                           q2ac1_destruct_d[0],
                                                                                                           q3ac2_destruct_d[0]}), lizzieLet0_5QNode_Bool_d, q1ac0_destruct_d, lizzieLet0_4QNode_Bool_1_d, q2ac1_destruct_d, q3ac2_destruct_d);
  assign {lizzieLet0_5QNode_Bool_r,
          q1ac0_destruct_r,
          lizzieLet0_4QNode_Bool_1_r,
          q2ac1_destruct_r,
          q3ac2_destruct_r} = {5 {(lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_r && lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3,CTf) > (lizzieLet2_1_argbuf,CTf) */
  CTf_t lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d;
  logic lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_r;
  assign lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_r = ((! lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d[0]) || lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d <= {83'd0,
                                                                                                  1'd0};
    else
      if (lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_r)
        lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d <= lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_d;
  CTf_t lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf;
  assign lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_r = (! lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf[0]);
  assign lizzieLet2_1_argbuf_d = (lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf[0] ? lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf :
                                  lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf <= {83'd0,
                                                                                                    1'd0};
    else
      if ((lizzieLet2_1_argbuf_r && lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf[0]))
        lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf <= {83'd0,
                                                                                                      1'd0};
      else if (((! lizzieLet2_1_argbuf_r) && (! lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf[0])))
        lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_buf <= lizzieLet0_5QNode_Bool_1q1ac0_1lizzieLet0_4QNode_Bool_1q2ac1_1q3ac2_1Lcall_f3_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_5QNone_Bool,Pointer_CTf) > (lizzieLet0_5QNone_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_5QNone_Bool_bufchan_d;
  logic lizzieLet0_5QNone_Bool_bufchan_r;
  assign lizzieLet0_5QNone_Bool_r = ((! lizzieLet0_5QNone_Bool_bufchan_d[0]) || lizzieLet0_5QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_5QNone_Bool_r)
        lizzieLet0_5QNone_Bool_bufchan_d <= lizzieLet0_5QNone_Bool_d;
  Pointer_CTf_t lizzieLet0_5QNone_Bool_bufchan_buf;
  assign lizzieLet0_5QNone_Bool_bufchan_r = (! lizzieLet0_5QNone_Bool_bufchan_buf[0]);
  assign lizzieLet0_5QNone_Bool_1_argbuf_d = (lizzieLet0_5QNone_Bool_bufchan_buf[0] ? lizzieLet0_5QNone_Bool_bufchan_buf :
                                              lizzieLet0_5QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_5QNone_Bool_1_argbuf_r && lizzieLet0_5QNone_Bool_bufchan_buf[0]))
        lizzieLet0_5QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_5QNone_Bool_1_argbuf_r) && (! lizzieLet0_5QNone_Bool_bufchan_buf[0])))
        lizzieLet0_5QNone_Bool_bufchan_buf <= lizzieLet0_5QNone_Bool_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (lizzieLet0_5QVal_Bool,Pointer_CTf) > (lizzieLet0_5QVal_Bool_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t lizzieLet0_5QVal_Bool_bufchan_d;
  logic lizzieLet0_5QVal_Bool_bufchan_r;
  assign lizzieLet0_5QVal_Bool_r = ((! lizzieLet0_5QVal_Bool_bufchan_d[0]) || lizzieLet0_5QVal_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QVal_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet0_5QVal_Bool_r)
        lizzieLet0_5QVal_Bool_bufchan_d <= lizzieLet0_5QVal_Bool_d;
  Pointer_CTf_t lizzieLet0_5QVal_Bool_bufchan_buf;
  assign lizzieLet0_5QVal_Bool_bufchan_r = (! lizzieLet0_5QVal_Bool_bufchan_buf[0]);
  assign lizzieLet0_5QVal_Bool_1_argbuf_d = (lizzieLet0_5QVal_Bool_bufchan_buf[0] ? lizzieLet0_5QVal_Bool_bufchan_buf :
                                             lizzieLet0_5QVal_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet0_5QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet0_5QVal_Bool_1_argbuf_r && lizzieLet0_5QVal_Bool_bufchan_buf[0]))
        lizzieLet0_5QVal_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet0_5QVal_Bool_1_argbuf_r) && (! lizzieLet0_5QVal_Bool_bufchan_buf[0])))
        lizzieLet0_5QVal_Bool_bufchan_buf <= lizzieLet0_5QVal_Bool_bufchan_d;
  
  /* buf (Ty QTree_Nat) : (lizzieLet13_1QVal_Nat,QTree_Nat) > (lizzieLet14_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet13_1QVal_Nat_bufchan_d;
  logic lizzieLet13_1QVal_Nat_bufchan_r;
  assign lizzieLet13_1QVal_Nat_r = ((! lizzieLet13_1QVal_Nat_bufchan_d[0]) || lizzieLet13_1QVal_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_1QVal_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet13_1QVal_Nat_r)
        lizzieLet13_1QVal_Nat_bufchan_d <= lizzieLet13_1QVal_Nat_d;
  QTree_Nat_t lizzieLet13_1QVal_Nat_bufchan_buf;
  assign lizzieLet13_1QVal_Nat_bufchan_r = (! lizzieLet13_1QVal_Nat_bufchan_buf[0]);
  assign lizzieLet14_1_argbuf_d = (lizzieLet13_1QVal_Nat_bufchan_buf[0] ? lizzieLet13_1QVal_Nat_bufchan_buf :
                                   lizzieLet13_1QVal_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet13_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet14_1_argbuf_r && lizzieLet13_1QVal_Nat_bufchan_buf[0]))
        lizzieLet13_1QVal_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet14_1_argbuf_r) && (! lizzieLet13_1QVal_Nat_bufchan_buf[0])))
        lizzieLet13_1QVal_Nat_bufchan_buf <= lizzieLet13_1QVal_Nat_bufchan_d;
  
  /* destruct (Ty CTf,
          Dcon Lcall_f0) : (lizzieLet17_1Lcall_f0,CTf) > [(es_1_destruct,Pointer_QTree_Nat),
                                                          (es_2_1_destruct,Pointer_QTree_Nat),
                                                          (es_3_2_destruct,Pointer_QTree_Nat),
                                                          (sc_0_5_destruct,Pointer_CTf)] */
  logic [3:0] lizzieLet17_1Lcall_f0_emitted;
  logic [3:0] lizzieLet17_1Lcall_f0_done;
  assign es_1_destruct_d = {lizzieLet17_1Lcall_f0_d[19:4],
                            (lizzieLet17_1Lcall_f0_d[0] && (! lizzieLet17_1Lcall_f0_emitted[0]))};
  assign es_2_1_destruct_d = {lizzieLet17_1Lcall_f0_d[35:20],
                              (lizzieLet17_1Lcall_f0_d[0] && (! lizzieLet17_1Lcall_f0_emitted[1]))};
  assign es_3_2_destruct_d = {lizzieLet17_1Lcall_f0_d[51:36],
                              (lizzieLet17_1Lcall_f0_d[0] && (! lizzieLet17_1Lcall_f0_emitted[2]))};
  assign sc_0_5_destruct_d = {lizzieLet17_1Lcall_f0_d[67:52],
                              (lizzieLet17_1Lcall_f0_d[0] && (! lizzieLet17_1Lcall_f0_emitted[3]))};
  assign lizzieLet17_1Lcall_f0_done = (lizzieLet17_1Lcall_f0_emitted | ({sc_0_5_destruct_d[0],
                                                                         es_3_2_destruct_d[0],
                                                                         es_2_1_destruct_d[0],
                                                                         es_1_destruct_d[0]} & {sc_0_5_destruct_r,
                                                                                                es_3_2_destruct_r,
                                                                                                es_2_1_destruct_r,
                                                                                                es_1_destruct_r}));
  assign lizzieLet17_1Lcall_f0_r = (& lizzieLet17_1Lcall_f0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1Lcall_f0_emitted <= 4'd0;
    else
      lizzieLet17_1Lcall_f0_emitted <= (lizzieLet17_1Lcall_f0_r ? 4'd0 :
                                        lizzieLet17_1Lcall_f0_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f1) : (lizzieLet17_1Lcall_f1,CTf) > [(es_2_destruct,Pointer_QTree_Nat),
                                                          (es_3_1_destruct,Pointer_QTree_Nat),
                                                          (sc_0_4_destruct,Pointer_CTf),
                                                          (q1ac0_3_destruct,Pointer_QTree_Bool),
                                                          (m2abY_4_destruct,Pointer_QTree_Bool)] */
  logic [4:0] lizzieLet17_1Lcall_f1_emitted;
  logic [4:0] lizzieLet17_1Lcall_f1_done;
  assign es_2_destruct_d = {lizzieLet17_1Lcall_f1_d[19:4],
                            (lizzieLet17_1Lcall_f1_d[0] && (! lizzieLet17_1Lcall_f1_emitted[0]))};
  assign es_3_1_destruct_d = {lizzieLet17_1Lcall_f1_d[35:20],
                              (lizzieLet17_1Lcall_f1_d[0] && (! lizzieLet17_1Lcall_f1_emitted[1]))};
  assign sc_0_4_destruct_d = {lizzieLet17_1Lcall_f1_d[51:36],
                              (lizzieLet17_1Lcall_f1_d[0] && (! lizzieLet17_1Lcall_f1_emitted[2]))};
  assign q1ac0_3_destruct_d = {lizzieLet17_1Lcall_f1_d[67:52],
                               (lizzieLet17_1Lcall_f1_d[0] && (! lizzieLet17_1Lcall_f1_emitted[3]))};
  assign m2abY_4_destruct_d = {lizzieLet17_1Lcall_f1_d[83:68],
                               (lizzieLet17_1Lcall_f1_d[0] && (! lizzieLet17_1Lcall_f1_emitted[4]))};
  assign lizzieLet17_1Lcall_f1_done = (lizzieLet17_1Lcall_f1_emitted | ({m2abY_4_destruct_d[0],
                                                                         q1ac0_3_destruct_d[0],
                                                                         sc_0_4_destruct_d[0],
                                                                         es_3_1_destruct_d[0],
                                                                         es_2_destruct_d[0]} & {m2abY_4_destruct_r,
                                                                                                q1ac0_3_destruct_r,
                                                                                                sc_0_4_destruct_r,
                                                                                                es_3_1_destruct_r,
                                                                                                es_2_destruct_r}));
  assign lizzieLet17_1Lcall_f1_r = (& lizzieLet17_1Lcall_f1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1Lcall_f1_emitted <= 5'd0;
    else
      lizzieLet17_1Lcall_f1_emitted <= (lizzieLet17_1Lcall_f1_r ? 5'd0 :
                                        lizzieLet17_1Lcall_f1_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f2) : (lizzieLet17_1Lcall_f2,CTf) > [(es_3_destruct,Pointer_QTree_Nat),
                                                          (sc_0_3_destruct,Pointer_CTf),
                                                          (q1ac0_2_destruct,Pointer_QTree_Bool),
                                                          (m2abY_3_destruct,Pointer_QTree_Bool),
                                                          (q2ac1_2_destruct,Pointer_QTree_Bool)] */
  logic [4:0] lizzieLet17_1Lcall_f2_emitted;
  logic [4:0] lizzieLet17_1Lcall_f2_done;
  assign es_3_destruct_d = {lizzieLet17_1Lcall_f2_d[19:4],
                            (lizzieLet17_1Lcall_f2_d[0] && (! lizzieLet17_1Lcall_f2_emitted[0]))};
  assign sc_0_3_destruct_d = {lizzieLet17_1Lcall_f2_d[35:20],
                              (lizzieLet17_1Lcall_f2_d[0] && (! lizzieLet17_1Lcall_f2_emitted[1]))};
  assign q1ac0_2_destruct_d = {lizzieLet17_1Lcall_f2_d[51:36],
                               (lizzieLet17_1Lcall_f2_d[0] && (! lizzieLet17_1Lcall_f2_emitted[2]))};
  assign m2abY_3_destruct_d = {lizzieLet17_1Lcall_f2_d[67:52],
                               (lizzieLet17_1Lcall_f2_d[0] && (! lizzieLet17_1Lcall_f2_emitted[3]))};
  assign q2ac1_2_destruct_d = {lizzieLet17_1Lcall_f2_d[83:68],
                               (lizzieLet17_1Lcall_f2_d[0] && (! lizzieLet17_1Lcall_f2_emitted[4]))};
  assign lizzieLet17_1Lcall_f2_done = (lizzieLet17_1Lcall_f2_emitted | ({q2ac1_2_destruct_d[0],
                                                                         m2abY_3_destruct_d[0],
                                                                         q1ac0_2_destruct_d[0],
                                                                         sc_0_3_destruct_d[0],
                                                                         es_3_destruct_d[0]} & {q2ac1_2_destruct_r,
                                                                                                m2abY_3_destruct_r,
                                                                                                q1ac0_2_destruct_r,
                                                                                                sc_0_3_destruct_r,
                                                                                                es_3_destruct_r}));
  assign lizzieLet17_1Lcall_f2_r = (& lizzieLet17_1Lcall_f2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1Lcall_f2_emitted <= 5'd0;
    else
      lizzieLet17_1Lcall_f2_emitted <= (lizzieLet17_1Lcall_f2_r ? 5'd0 :
                                        lizzieLet17_1Lcall_f2_done);
  
  /* destruct (Ty CTf,
          Dcon Lcall_f3) : (lizzieLet17_1Lcall_f3,CTf) > [(sc_0_2_destruct,Pointer_CTf),
                                                          (q1ac0_1_destruct,Pointer_QTree_Bool),
                                                          (m2abY_2_destruct,Pointer_QTree_Bool),
                                                          (q2ac1_1_destruct,Pointer_QTree_Bool),
                                                          (q3ac2_1_destruct,Pointer_QTree_Bool)] */
  logic [4:0] lizzieLet17_1Lcall_f3_emitted;
  logic [4:0] lizzieLet17_1Lcall_f3_done;
  assign sc_0_2_destruct_d = {lizzieLet17_1Lcall_f3_d[19:4],
                              (lizzieLet17_1Lcall_f3_d[0] && (! lizzieLet17_1Lcall_f3_emitted[0]))};
  assign q1ac0_1_destruct_d = {lizzieLet17_1Lcall_f3_d[35:20],
                               (lizzieLet17_1Lcall_f3_d[0] && (! lizzieLet17_1Lcall_f3_emitted[1]))};
  assign m2abY_2_destruct_d = {lizzieLet17_1Lcall_f3_d[51:36],
                               (lizzieLet17_1Lcall_f3_d[0] && (! lizzieLet17_1Lcall_f3_emitted[2]))};
  assign q2ac1_1_destruct_d = {lizzieLet17_1Lcall_f3_d[67:52],
                               (lizzieLet17_1Lcall_f3_d[0] && (! lizzieLet17_1Lcall_f3_emitted[3]))};
  assign q3ac2_1_destruct_d = {lizzieLet17_1Lcall_f3_d[83:68],
                               (lizzieLet17_1Lcall_f3_d[0] && (! lizzieLet17_1Lcall_f3_emitted[4]))};
  assign lizzieLet17_1Lcall_f3_done = (lizzieLet17_1Lcall_f3_emitted | ({q3ac2_1_destruct_d[0],
                                                                         q2ac1_1_destruct_d[0],
                                                                         m2abY_2_destruct_d[0],
                                                                         q1ac0_1_destruct_d[0],
                                                                         sc_0_2_destruct_d[0]} & {q3ac2_1_destruct_r,
                                                                                                  q2ac1_1_destruct_r,
                                                                                                  m2abY_2_destruct_r,
                                                                                                  q1ac0_1_destruct_r,
                                                                                                  sc_0_2_destruct_r}));
  assign lizzieLet17_1Lcall_f3_r = (& lizzieLet17_1Lcall_f3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_1Lcall_f3_emitted <= 5'd0;
    else
      lizzieLet17_1Lcall_f3_emitted <= (lizzieLet17_1Lcall_f3_r ? 5'd0 :
                                        lizzieLet17_1Lcall_f3_done);
  
  /* demux (Ty CTf,
       Ty CTf) : (lizzieLet17_2,CTf) (lizzieLet17_1,CTf) > [(_8,CTf),
                                                            (lizzieLet17_1Lcall_f3,CTf),
                                                            (lizzieLet17_1Lcall_f2,CTf),
                                                            (lizzieLet17_1Lcall_f1,CTf),
                                                            (lizzieLet17_1Lcall_f0,CTf)] */
  logic [4:0] lizzieLet17_1_onehotd;
  always_comb
    if ((lizzieLet17_2_d[0] && lizzieLet17_1_d[0]))
      unique case (lizzieLet17_2_d[3:1])
        3'd0: lizzieLet17_1_onehotd = 5'd1;
        3'd1: lizzieLet17_1_onehotd = 5'd2;
        3'd2: lizzieLet17_1_onehotd = 5'd4;
        3'd3: lizzieLet17_1_onehotd = 5'd8;
        3'd4: lizzieLet17_1_onehotd = 5'd16;
        default: lizzieLet17_1_onehotd = 5'd0;
      endcase
    else lizzieLet17_1_onehotd = 5'd0;
  assign _8_d = {lizzieLet17_1_d[83:1], lizzieLet17_1_onehotd[0]};
  assign lizzieLet17_1Lcall_f3_d = {lizzieLet17_1_d[83:1],
                                    lizzieLet17_1_onehotd[1]};
  assign lizzieLet17_1Lcall_f2_d = {lizzieLet17_1_d[83:1],
                                    lizzieLet17_1_onehotd[2]};
  assign lizzieLet17_1Lcall_f1_d = {lizzieLet17_1_d[83:1],
                                    lizzieLet17_1_onehotd[3]};
  assign lizzieLet17_1Lcall_f0_d = {lizzieLet17_1_d[83:1],
                                    lizzieLet17_1_onehotd[4]};
  assign lizzieLet17_1_r = (| (lizzieLet17_1_onehotd & {lizzieLet17_1Lcall_f0_r,
                                                        lizzieLet17_1Lcall_f1_r,
                                                        lizzieLet17_1Lcall_f2_r,
                                                        lizzieLet17_1Lcall_f3_r,
                                                        _8_r}));
  assign lizzieLet17_2_r = lizzieLet17_1_r;
  
  /* demux (Ty CTf,
       Ty Go) : (lizzieLet17_3,CTf) (go_8_goMux_data,Go) > [(_7,Go),
                                                            (lizzieLet17_3Lcall_f3,Go),
                                                            (lizzieLet17_3Lcall_f2,Go),
                                                            (lizzieLet17_3Lcall_f1,Go),
                                                            (lizzieLet17_3Lcall_f0,Go)] */
  logic [4:0] go_8_goMux_data_onehotd;
  always_comb
    if ((lizzieLet17_3_d[0] && go_8_goMux_data_d[0]))
      unique case (lizzieLet17_3_d[3:1])
        3'd0: go_8_goMux_data_onehotd = 5'd1;
        3'd1: go_8_goMux_data_onehotd = 5'd2;
        3'd2: go_8_goMux_data_onehotd = 5'd4;
        3'd3: go_8_goMux_data_onehotd = 5'd8;
        3'd4: go_8_goMux_data_onehotd = 5'd16;
        default: go_8_goMux_data_onehotd = 5'd0;
      endcase
    else go_8_goMux_data_onehotd = 5'd0;
  assign _7_d = go_8_goMux_data_onehotd[0];
  assign lizzieLet17_3Lcall_f3_d = go_8_goMux_data_onehotd[1];
  assign lizzieLet17_3Lcall_f2_d = go_8_goMux_data_onehotd[2];
  assign lizzieLet17_3Lcall_f1_d = go_8_goMux_data_onehotd[3];
  assign lizzieLet17_3Lcall_f0_d = go_8_goMux_data_onehotd[4];
  assign go_8_goMux_data_r = (| (go_8_goMux_data_onehotd & {lizzieLet17_3Lcall_f0_r,
                                                            lizzieLet17_3Lcall_f1_r,
                                                            lizzieLet17_3Lcall_f2_r,
                                                            lizzieLet17_3Lcall_f3_r,
                                                            _7_r}));
  assign lizzieLet17_3_r = go_8_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet17_3Lcall_f0,Go) > (lizzieLet17_3Lcall_f0_1_argbuf,Go) */
  Go_t lizzieLet17_3Lcall_f0_bufchan_d;
  logic lizzieLet17_3Lcall_f0_bufchan_r;
  assign lizzieLet17_3Lcall_f0_r = ((! lizzieLet17_3Lcall_f0_bufchan_d[0]) || lizzieLet17_3Lcall_f0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f0_bufchan_d <= 1'd0;
    else
      if (lizzieLet17_3Lcall_f0_r)
        lizzieLet17_3Lcall_f0_bufchan_d <= lizzieLet17_3Lcall_f0_d;
  Go_t lizzieLet17_3Lcall_f0_bufchan_buf;
  assign lizzieLet17_3Lcall_f0_bufchan_r = (! lizzieLet17_3Lcall_f0_bufchan_buf[0]);
  assign lizzieLet17_3Lcall_f0_1_argbuf_d = (lizzieLet17_3Lcall_f0_bufchan_buf[0] ? lizzieLet17_3Lcall_f0_bufchan_buf :
                                             lizzieLet17_3Lcall_f0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet17_3Lcall_f0_1_argbuf_r && lizzieLet17_3Lcall_f0_bufchan_buf[0]))
        lizzieLet17_3Lcall_f0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet17_3Lcall_f0_1_argbuf_r) && (! lizzieLet17_3Lcall_f0_bufchan_buf[0])))
        lizzieLet17_3Lcall_f0_bufchan_buf <= lizzieLet17_3Lcall_f0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet17_3Lcall_f1,Go) > (lizzieLet17_3Lcall_f1_1_argbuf,Go) */
  Go_t lizzieLet17_3Lcall_f1_bufchan_d;
  logic lizzieLet17_3Lcall_f1_bufchan_r;
  assign lizzieLet17_3Lcall_f1_r = ((! lizzieLet17_3Lcall_f1_bufchan_d[0]) || lizzieLet17_3Lcall_f1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f1_bufchan_d <= 1'd0;
    else
      if (lizzieLet17_3Lcall_f1_r)
        lizzieLet17_3Lcall_f1_bufchan_d <= lizzieLet17_3Lcall_f1_d;
  Go_t lizzieLet17_3Lcall_f1_bufchan_buf;
  assign lizzieLet17_3Lcall_f1_bufchan_r = (! lizzieLet17_3Lcall_f1_bufchan_buf[0]);
  assign lizzieLet17_3Lcall_f1_1_argbuf_d = (lizzieLet17_3Lcall_f1_bufchan_buf[0] ? lizzieLet17_3Lcall_f1_bufchan_buf :
                                             lizzieLet17_3Lcall_f1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet17_3Lcall_f1_1_argbuf_r && lizzieLet17_3Lcall_f1_bufchan_buf[0]))
        lizzieLet17_3Lcall_f1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet17_3Lcall_f1_1_argbuf_r) && (! lizzieLet17_3Lcall_f1_bufchan_buf[0])))
        lizzieLet17_3Lcall_f1_bufchan_buf <= lizzieLet17_3Lcall_f1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet17_3Lcall_f2,Go) > (lizzieLet17_3Lcall_f2_1_argbuf,Go) */
  Go_t lizzieLet17_3Lcall_f2_bufchan_d;
  logic lizzieLet17_3Lcall_f2_bufchan_r;
  assign lizzieLet17_3Lcall_f2_r = ((! lizzieLet17_3Lcall_f2_bufchan_d[0]) || lizzieLet17_3Lcall_f2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f2_bufchan_d <= 1'd0;
    else
      if (lizzieLet17_3Lcall_f2_r)
        lizzieLet17_3Lcall_f2_bufchan_d <= lizzieLet17_3Lcall_f2_d;
  Go_t lizzieLet17_3Lcall_f2_bufchan_buf;
  assign lizzieLet17_3Lcall_f2_bufchan_r = (! lizzieLet17_3Lcall_f2_bufchan_buf[0]);
  assign lizzieLet17_3Lcall_f2_1_argbuf_d = (lizzieLet17_3Lcall_f2_bufchan_buf[0] ? lizzieLet17_3Lcall_f2_bufchan_buf :
                                             lizzieLet17_3Lcall_f2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet17_3Lcall_f2_1_argbuf_r && lizzieLet17_3Lcall_f2_bufchan_buf[0]))
        lizzieLet17_3Lcall_f2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet17_3Lcall_f2_1_argbuf_r) && (! lizzieLet17_3Lcall_f2_bufchan_buf[0])))
        lizzieLet17_3Lcall_f2_bufchan_buf <= lizzieLet17_3Lcall_f2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet17_3Lcall_f3,Go) > (lizzieLet17_3Lcall_f3_1_argbuf,Go) */
  Go_t lizzieLet17_3Lcall_f3_bufchan_d;
  logic lizzieLet17_3Lcall_f3_bufchan_r;
  assign lizzieLet17_3Lcall_f3_r = ((! lizzieLet17_3Lcall_f3_bufchan_d[0]) || lizzieLet17_3Lcall_f3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f3_bufchan_d <= 1'd0;
    else
      if (lizzieLet17_3Lcall_f3_r)
        lizzieLet17_3Lcall_f3_bufchan_d <= lizzieLet17_3Lcall_f3_d;
  Go_t lizzieLet17_3Lcall_f3_bufchan_buf;
  assign lizzieLet17_3Lcall_f3_bufchan_r = (! lizzieLet17_3Lcall_f3_bufchan_buf[0]);
  assign lizzieLet17_3Lcall_f3_1_argbuf_d = (lizzieLet17_3Lcall_f3_bufchan_buf[0] ? lizzieLet17_3Lcall_f3_bufchan_buf :
                                             lizzieLet17_3Lcall_f3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_3Lcall_f3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet17_3Lcall_f3_1_argbuf_r && lizzieLet17_3Lcall_f3_bufchan_buf[0]))
        lizzieLet17_3Lcall_f3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet17_3Lcall_f3_1_argbuf_r) && (! lizzieLet17_3Lcall_f3_bufchan_buf[0])))
        lizzieLet17_3Lcall_f3_bufchan_buf <= lizzieLet17_3Lcall_f3_bufchan_d;
  
  /* demux (Ty CTf,
       Ty Pointer_QTree_Nat) : (lizzieLet17_4,CTf) (srtarg_0_goMux_mux,Pointer_QTree_Nat) > [(lizzieLet17_4Lfsbos,Pointer_QTree_Nat),
                                                                                             (lizzieLet17_4Lcall_f3,Pointer_QTree_Nat),
                                                                                             (lizzieLet17_4Lcall_f2,Pointer_QTree_Nat),
                                                                                             (lizzieLet17_4Lcall_f1,Pointer_QTree_Nat),
                                                                                             (lizzieLet17_4Lcall_f0,Pointer_QTree_Nat)] */
  logic [4:0] srtarg_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet17_4_d[0] && srtarg_0_goMux_mux_d[0]))
      unique case (lizzieLet17_4_d[3:1])
        3'd0: srtarg_0_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_goMux_mux_onehotd = 5'd0;
  assign lizzieLet17_4Lfsbos_d = {srtarg_0_goMux_mux_d[16:1],
                                  srtarg_0_goMux_mux_onehotd[0]};
  assign lizzieLet17_4Lcall_f3_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[1]};
  assign lizzieLet17_4Lcall_f2_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[2]};
  assign lizzieLet17_4Lcall_f1_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[3]};
  assign lizzieLet17_4Lcall_f0_d = {srtarg_0_goMux_mux_d[16:1],
                                    srtarg_0_goMux_mux_onehotd[4]};
  assign srtarg_0_goMux_mux_r = (| (srtarg_0_goMux_mux_onehotd & {lizzieLet17_4Lcall_f0_r,
                                                                  lizzieLet17_4Lcall_f1_r,
                                                                  lizzieLet17_4Lcall_f2_r,
                                                                  lizzieLet17_4Lcall_f3_r,
                                                                  lizzieLet17_4Lfsbos_r}));
  assign lizzieLet17_4_r = srtarg_0_goMux_mux_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(lizzieLet17_4Lcall_f0,Pointer_QTree_Nat),
                         (es_1_destruct,Pointer_QTree_Nat),
                         (es_2_1_destruct,Pointer_QTree_Nat),
                         (es_3_2_destruct,Pointer_QTree_Nat)] > (lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat,QTree_Nat) */
  assign lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_d = QNode_Nat_dc((& {lizzieLet17_4Lcall_f0_d[0],
                                                                                     es_1_destruct_d[0],
                                                                                     es_2_1_destruct_d[0],
                                                                                     es_3_2_destruct_d[0]}), lizzieLet17_4Lcall_f0_d, es_1_destruct_d, es_2_1_destruct_d, es_3_2_destruct_d);
  assign {lizzieLet17_4Lcall_f0_r,
          es_1_destruct_r,
          es_2_1_destruct_r,
          es_3_2_destruct_r} = {4 {(lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_r && lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat,QTree_Nat) > (lizzieLet21_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d;
  logic lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_r;
  assign lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_r = ((! lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d[0]) || lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d <= {66'd0,
                                                                           1'd0};
    else
      if (lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_r)
        lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d <= lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_d;
  QTree_Nat_t lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf;
  assign lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_r = (! lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf[0]);
  assign lizzieLet21_1_argbuf_d = (lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf[0] ? lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf :
                                   lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf <= {66'd0,
                                                                             1'd0};
    else
      if ((lizzieLet21_1_argbuf_r && lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf[0]))
        lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf <= {66'd0,
                                                                               1'd0};
      else if (((! lizzieLet21_1_argbuf_r) && (! lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf[0])))
        lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_buf <= lizzieLet17_4Lcall_f0_1es_1_1es_2_1_1es_3_2_1QNode_Nat_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f0) : [(lizzieLet17_4Lcall_f1,Pointer_QTree_Nat),
                        (es_2_destruct,Pointer_QTree_Nat),
                        (es_3_1_destruct,Pointer_QTree_Nat),
                        (sc_0_4_destruct,Pointer_CTf)] > (lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0,CTf) */
  assign lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_d = Lcall_f0_dc((& {lizzieLet17_4Lcall_f1_d[0],
                                                                                   es_2_destruct_d[0],
                                                                                   es_3_1_destruct_d[0],
                                                                                   sc_0_4_destruct_d[0]}), lizzieLet17_4Lcall_f1_d, es_2_destruct_d, es_3_1_destruct_d, sc_0_4_destruct_d);
  assign {lizzieLet17_4Lcall_f1_r,
          es_2_destruct_r,
          es_3_1_destruct_r,
          sc_0_4_destruct_r} = {4 {(lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_r && lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0,CTf) > (lizzieLet20_1_argbuf,CTf) */
  CTf_t lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d;
  logic lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_r;
  assign lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_r = ((! lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d[0]) || lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d <= {83'd0,
                                                                          1'd0};
    else
      if (lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_r)
        lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d <= lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_d;
  CTf_t lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf;
  assign lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_r = (! lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf[0]);
  assign lizzieLet20_1_argbuf_d = (lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf[0] ? lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf :
                                   lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf <= {83'd0,
                                                                            1'd0};
    else
      if ((lizzieLet20_1_argbuf_r && lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf[0]))
        lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf <= {83'd0,
                                                                              1'd0};
      else if (((! lizzieLet20_1_argbuf_r) && (! lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf[0])))
        lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_buf <= lizzieLet17_4Lcall_f1_1es_2_1es_3_1_1sc_0_4_1Lcall_f0_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f1) : [(lizzieLet17_4Lcall_f2,Pointer_QTree_Nat),
                        (es_3_destruct,Pointer_QTree_Nat),
                        (sc_0_3_destruct,Pointer_CTf),
                        (q1ac0_2_destruct,Pointer_QTree_Bool),
                        (m2abY_3_1,Pointer_QTree_Bool)] > (lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1,CTf) */
  assign lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_d = Lcall_f1_dc((& {lizzieLet17_4Lcall_f2_d[0],
                                                                                             es_3_destruct_d[0],
                                                                                             sc_0_3_destruct_d[0],
                                                                                             q1ac0_2_destruct_d[0],
                                                                                             m2abY_3_1_d[0]}), lizzieLet17_4Lcall_f2_d, es_3_destruct_d, sc_0_3_destruct_d, q1ac0_2_destruct_d, m2abY_3_1_d);
  assign {lizzieLet17_4Lcall_f2_r,
          es_3_destruct_r,
          sc_0_3_destruct_r,
          q1ac0_2_destruct_r,
          m2abY_3_1_r} = {5 {(lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_r && lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1,CTf) > (lizzieLet19_1_argbuf,CTf) */
  CTf_t lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d;
  logic lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_r;
  assign lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_r = ((! lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d[0]) || lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d <= {83'd0,
                                                                                    1'd0};
    else
      if (lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_r)
        lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d <= lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_d;
  CTf_t lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf;
  assign lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_r = (! lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf[0]);
  assign lizzieLet19_1_argbuf_d = (lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf[0] ? lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf :
                                   lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf <= {83'd0,
                                                                                      1'd0};
    else
      if ((lizzieLet19_1_argbuf_r && lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf[0]))
        lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf <= {83'd0,
                                                                                        1'd0};
      else if (((! lizzieLet19_1_argbuf_r) && (! lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf[0])))
        lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_buf <= lizzieLet17_4Lcall_f2_1es_3_1sc_0_3_1q1ac0_2_1m2abY_3_1Lcall_f1_bufchan_d;
  
  /* dcon (Ty CTf,
      Dcon Lcall_f2) : [(lizzieLet17_4Lcall_f3,Pointer_QTree_Nat),
                        (sc_0_2_destruct,Pointer_CTf),
                        (q1ac0_1_destruct,Pointer_QTree_Bool),
                        (m2abY_2_1,Pointer_QTree_Bool),
                        (q2ac1_1_destruct,Pointer_QTree_Bool)] > (lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2,CTf) */
  assign lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_d = Lcall_f2_dc((& {lizzieLet17_4Lcall_f3_d[0],
                                                                                                sc_0_2_destruct_d[0],
                                                                                                q1ac0_1_destruct_d[0],
                                                                                                m2abY_2_1_d[0],
                                                                                                q2ac1_1_destruct_d[0]}), lizzieLet17_4Lcall_f3_d, sc_0_2_destruct_d, q1ac0_1_destruct_d, m2abY_2_1_d, q2ac1_1_destruct_d);
  assign {lizzieLet17_4Lcall_f3_r,
          sc_0_2_destruct_r,
          q1ac0_1_destruct_r,
          m2abY_2_1_r,
          q2ac1_1_destruct_r} = {5 {(lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_r && lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_d[0])}};
  
  /* buf (Ty CTf) : (lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2,CTf) > (lizzieLet18_1_argbuf,CTf) */
  CTf_t lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d;
  logic lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_r;
  assign lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_r = ((! lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d[0]) || lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d <= {83'd0,
                                                                                       1'd0};
    else
      if (lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_r)
        lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d <= lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_d;
  CTf_t lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf;
  assign lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_r = (! lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf[0]);
  assign lizzieLet18_1_argbuf_d = (lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf[0] ? lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf :
                                   lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf <= {83'd0,
                                                                                         1'd0};
    else
      if ((lizzieLet18_1_argbuf_r && lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf[0]))
        lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf <= {83'd0,
                                                                                           1'd0};
      else if (((! lizzieLet18_1_argbuf_r) && (! lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf[0])))
        lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_buf <= lizzieLet17_4Lcall_f3_1sc_0_2_1q1ac0_1_1m2abY_2_1q2ac1_1_1Lcall_f2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Nat) : (lizzieLet17_4Lfsbos,Pointer_QTree_Nat) > [(lizzieLet17_4Lfsbos_1_merge_merge_fork_1,Pointer_QTree_Nat),
                                                                         (lizzieLet17_4Lfsbos_1_merge_merge_fork_2,Pointer_QTree_Nat)] */
  logic [1:0] lizzieLet17_4Lfsbos_emitted;
  logic [1:0] lizzieLet17_4Lfsbos_done;
  assign lizzieLet17_4Lfsbos_1_merge_merge_fork_1_d = {lizzieLet17_4Lfsbos_d[16:1],
                                                       (lizzieLet17_4Lfsbos_d[0] && (! lizzieLet17_4Lfsbos_emitted[0]))};
  assign lizzieLet17_4Lfsbos_1_merge_merge_fork_2_d = {lizzieLet17_4Lfsbos_d[16:1],
                                                       (lizzieLet17_4Lfsbos_d[0] && (! lizzieLet17_4Lfsbos_emitted[1]))};
  assign lizzieLet17_4Lfsbos_done = (lizzieLet17_4Lfsbos_emitted | ({lizzieLet17_4Lfsbos_1_merge_merge_fork_2_d[0],
                                                                     lizzieLet17_4Lfsbos_1_merge_merge_fork_1_d[0]} & {lizzieLet17_4Lfsbos_1_merge_merge_fork_2_r,
                                                                                                                       lizzieLet17_4Lfsbos_1_merge_merge_fork_1_r}));
  assign lizzieLet17_4Lfsbos_r = (& lizzieLet17_4Lfsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet17_4Lfsbos_emitted <= 2'd0;
    else
      lizzieLet17_4Lfsbos_emitted <= (lizzieLet17_4Lfsbos_r ? 2'd0 :
                                      lizzieLet17_4Lfsbos_done);
  
  /* togo (Ty Pointer_QTree_Nat) : (lizzieLet17_4Lfsbos_1_merge_merge_fork_1,Pointer_QTree_Nat) > (call_f_goConst,Go) */
  assign call_f_goConst_d = lizzieLet17_4Lfsbos_1_merge_merge_fork_1_d[0];
  assign lizzieLet17_4Lfsbos_1_merge_merge_fork_1_r = call_f_goConst_r;
  
  /* buf (Ty Pointer_QTree_Nat) : (lizzieLet17_4Lfsbos_1_merge_merge_fork_2,Pointer_QTree_Nat) > (f_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d;
  logic lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_r;
  assign lizzieLet17_4Lfsbos_1_merge_merge_fork_2_r = ((! lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d[0]) || lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (lizzieLet17_4Lfsbos_1_merge_merge_fork_2_r)
        lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d <= lizzieLet17_4Lfsbos_1_merge_merge_fork_2_d;
  Pointer_QTree_Nat_t lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf;
  assign lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_r = (! lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf[0]);
  assign f_resbuf_d = (lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf[0] ? lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf :
                       lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((f_resbuf_r && lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf[0]))
        lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! f_resbuf_r) && (! lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf[0])))
        lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_buf <= lizzieLet17_4Lfsbos_1_merge_merge_fork_2_bufchan_d;
  
  /* destruct (Ty CTf',
          Dcon Lcall_f'0) : (lizzieLet22_1Lcall_f'0,CTf') > [(es_1_1_destruct,Pointer_QTree_Nat),
                                                             (es_2_3_destruct,Pointer_QTree_Nat),
                                                             (es_3_5_destruct,Pointer_QTree_Nat),
                                                             (sc_0_9_destruct,Pointer_CTf')] */
  logic [3:0] \lizzieLet22_1Lcall_f'0_emitted ;
  logic [3:0] \lizzieLet22_1Lcall_f'0_done ;
  assign es_1_1_destruct_d = {\lizzieLet22_1Lcall_f'0_d [19:4],
                              (\lizzieLet22_1Lcall_f'0_d [0] && (! \lizzieLet22_1Lcall_f'0_emitted [0]))};
  assign es_2_3_destruct_d = {\lizzieLet22_1Lcall_f'0_d [35:20],
                              (\lizzieLet22_1Lcall_f'0_d [0] && (! \lizzieLet22_1Lcall_f'0_emitted [1]))};
  assign es_3_5_destruct_d = {\lizzieLet22_1Lcall_f'0_d [51:36],
                              (\lizzieLet22_1Lcall_f'0_d [0] && (! \lizzieLet22_1Lcall_f'0_emitted [2]))};
  assign sc_0_9_destruct_d = {\lizzieLet22_1Lcall_f'0_d [67:52],
                              (\lizzieLet22_1Lcall_f'0_d [0] && (! \lizzieLet22_1Lcall_f'0_emitted [3]))};
  assign \lizzieLet22_1Lcall_f'0_done  = (\lizzieLet22_1Lcall_f'0_emitted  | ({sc_0_9_destruct_d[0],
                                                                               es_3_5_destruct_d[0],
                                                                               es_2_3_destruct_d[0],
                                                                               es_1_1_destruct_d[0]} & {sc_0_9_destruct_r,
                                                                                                        es_3_5_destruct_r,
                                                                                                        es_2_3_destruct_r,
                                                                                                        es_1_1_destruct_r}));
  assign \lizzieLet22_1Lcall_f'0_r  = (& \lizzieLet22_1Lcall_f'0_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_1Lcall_f'0_emitted  <= 4'd0;
    else
      \lizzieLet22_1Lcall_f'0_emitted  <= (\lizzieLet22_1Lcall_f'0_r  ? 4'd0 :
                                           \lizzieLet22_1Lcall_f'0_done );
  
  /* destruct (Ty CTf',
          Dcon Lcall_f'1) : (lizzieLet22_1Lcall_f'1,CTf') > [(es_2_2_destruct,Pointer_QTree_Nat),
                                                             (es_3_4_destruct,Pointer_QTree_Nat),
                                                             (sc_0_8_destruct,Pointer_CTf'),
                                                             (q1ac7_3_destruct,Pointer_QTree_Bool),
                                                             (vac5_4_destruct,MyBool)] */
  logic [4:0] \lizzieLet22_1Lcall_f'1_emitted ;
  logic [4:0] \lizzieLet22_1Lcall_f'1_done ;
  assign es_2_2_destruct_d = {\lizzieLet22_1Lcall_f'1_d [19:4],
                              (\lizzieLet22_1Lcall_f'1_d [0] && (! \lizzieLet22_1Lcall_f'1_emitted [0]))};
  assign es_3_4_destruct_d = {\lizzieLet22_1Lcall_f'1_d [35:20],
                              (\lizzieLet22_1Lcall_f'1_d [0] && (! \lizzieLet22_1Lcall_f'1_emitted [1]))};
  assign sc_0_8_destruct_d = {\lizzieLet22_1Lcall_f'1_d [51:36],
                              (\lizzieLet22_1Lcall_f'1_d [0] && (! \lizzieLet22_1Lcall_f'1_emitted [2]))};
  assign q1ac7_3_destruct_d = {\lizzieLet22_1Lcall_f'1_d [67:52],
                               (\lizzieLet22_1Lcall_f'1_d [0] && (! \lizzieLet22_1Lcall_f'1_emitted [3]))};
  assign vac5_4_destruct_d = {\lizzieLet22_1Lcall_f'1_d [68:68],
                              (\lizzieLet22_1Lcall_f'1_d [0] && (! \lizzieLet22_1Lcall_f'1_emitted [4]))};
  assign \lizzieLet22_1Lcall_f'1_done  = (\lizzieLet22_1Lcall_f'1_emitted  | ({vac5_4_destruct_d[0],
                                                                               q1ac7_3_destruct_d[0],
                                                                               sc_0_8_destruct_d[0],
                                                                               es_3_4_destruct_d[0],
                                                                               es_2_2_destruct_d[0]} & {vac5_4_destruct_r,
                                                                                                        q1ac7_3_destruct_r,
                                                                                                        sc_0_8_destruct_r,
                                                                                                        es_3_4_destruct_r,
                                                                                                        es_2_2_destruct_r}));
  assign \lizzieLet22_1Lcall_f'1_r  = (& \lizzieLet22_1Lcall_f'1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_1Lcall_f'1_emitted  <= 5'd0;
    else
      \lizzieLet22_1Lcall_f'1_emitted  <= (\lizzieLet22_1Lcall_f'1_r  ? 5'd0 :
                                           \lizzieLet22_1Lcall_f'1_done );
  
  /* destruct (Ty CTf',
          Dcon Lcall_f'2) : (lizzieLet22_1Lcall_f'2,CTf') > [(es_3_3_destruct,Pointer_QTree_Nat),
                                                             (sc_0_7_destruct,Pointer_CTf'),
                                                             (q1ac7_2_destruct,Pointer_QTree_Bool),
                                                             (vac5_3_destruct,MyBool),
                                                             (q2ac8_2_destruct,Pointer_QTree_Bool)] */
  logic [4:0] \lizzieLet22_1Lcall_f'2_emitted ;
  logic [4:0] \lizzieLet22_1Lcall_f'2_done ;
  assign es_3_3_destruct_d = {\lizzieLet22_1Lcall_f'2_d [19:4],
                              (\lizzieLet22_1Lcall_f'2_d [0] && (! \lizzieLet22_1Lcall_f'2_emitted [0]))};
  assign sc_0_7_destruct_d = {\lizzieLet22_1Lcall_f'2_d [35:20],
                              (\lizzieLet22_1Lcall_f'2_d [0] && (! \lizzieLet22_1Lcall_f'2_emitted [1]))};
  assign q1ac7_2_destruct_d = {\lizzieLet22_1Lcall_f'2_d [51:36],
                               (\lizzieLet22_1Lcall_f'2_d [0] && (! \lizzieLet22_1Lcall_f'2_emitted [2]))};
  assign vac5_3_destruct_d = {\lizzieLet22_1Lcall_f'2_d [52:52],
                              (\lizzieLet22_1Lcall_f'2_d [0] && (! \lizzieLet22_1Lcall_f'2_emitted [3]))};
  assign q2ac8_2_destruct_d = {\lizzieLet22_1Lcall_f'2_d [68:53],
                               (\lizzieLet22_1Lcall_f'2_d [0] && (! \lizzieLet22_1Lcall_f'2_emitted [4]))};
  assign \lizzieLet22_1Lcall_f'2_done  = (\lizzieLet22_1Lcall_f'2_emitted  | ({q2ac8_2_destruct_d[0],
                                                                               vac5_3_destruct_d[0],
                                                                               q1ac7_2_destruct_d[0],
                                                                               sc_0_7_destruct_d[0],
                                                                               es_3_3_destruct_d[0]} & {q2ac8_2_destruct_r,
                                                                                                        vac5_3_destruct_r,
                                                                                                        q1ac7_2_destruct_r,
                                                                                                        sc_0_7_destruct_r,
                                                                                                        es_3_3_destruct_r}));
  assign \lizzieLet22_1Lcall_f'2_r  = (& \lizzieLet22_1Lcall_f'2_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_1Lcall_f'2_emitted  <= 5'd0;
    else
      \lizzieLet22_1Lcall_f'2_emitted  <= (\lizzieLet22_1Lcall_f'2_r  ? 5'd0 :
                                           \lizzieLet22_1Lcall_f'2_done );
  
  /* destruct (Ty CTf',
          Dcon Lcall_f'3) : (lizzieLet22_1Lcall_f'3,CTf') > [(sc_0_6_destruct,Pointer_CTf'),
                                                             (q1ac7_1_destruct,Pointer_QTree_Bool),
                                                             (vac5_2_destruct,MyBool),
                                                             (q2ac8_1_destruct,Pointer_QTree_Bool),
                                                             (q3ac9_1_destruct,Pointer_QTree_Bool)] */
  logic [4:0] \lizzieLet22_1Lcall_f'3_emitted ;
  logic [4:0] \lizzieLet22_1Lcall_f'3_done ;
  assign sc_0_6_destruct_d = {\lizzieLet22_1Lcall_f'3_d [19:4],
                              (\lizzieLet22_1Lcall_f'3_d [0] && (! \lizzieLet22_1Lcall_f'3_emitted [0]))};
  assign q1ac7_1_destruct_d = {\lizzieLet22_1Lcall_f'3_d [35:20],
                               (\lizzieLet22_1Lcall_f'3_d [0] && (! \lizzieLet22_1Lcall_f'3_emitted [1]))};
  assign vac5_2_destruct_d = {\lizzieLet22_1Lcall_f'3_d [36:36],
                              (\lizzieLet22_1Lcall_f'3_d [0] && (! \lizzieLet22_1Lcall_f'3_emitted [2]))};
  assign q2ac8_1_destruct_d = {\lizzieLet22_1Lcall_f'3_d [52:37],
                               (\lizzieLet22_1Lcall_f'3_d [0] && (! \lizzieLet22_1Lcall_f'3_emitted [3]))};
  assign q3ac9_1_destruct_d = {\lizzieLet22_1Lcall_f'3_d [68:53],
                               (\lizzieLet22_1Lcall_f'3_d [0] && (! \lizzieLet22_1Lcall_f'3_emitted [4]))};
  assign \lizzieLet22_1Lcall_f'3_done  = (\lizzieLet22_1Lcall_f'3_emitted  | ({q3ac9_1_destruct_d[0],
                                                                               q2ac8_1_destruct_d[0],
                                                                               vac5_2_destruct_d[0],
                                                                               q1ac7_1_destruct_d[0],
                                                                               sc_0_6_destruct_d[0]} & {q3ac9_1_destruct_r,
                                                                                                        q2ac8_1_destruct_r,
                                                                                                        vac5_2_destruct_r,
                                                                                                        q1ac7_1_destruct_r,
                                                                                                        sc_0_6_destruct_r}));
  assign \lizzieLet22_1Lcall_f'3_r  = (& \lizzieLet22_1Lcall_f'3_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_1Lcall_f'3_emitted  <= 5'd0;
    else
      \lizzieLet22_1Lcall_f'3_emitted  <= (\lizzieLet22_1Lcall_f'3_r  ? 5'd0 :
                                           \lizzieLet22_1Lcall_f'3_done );
  
  /* demux (Ty CTf',
       Ty CTf') : (lizzieLet22_2,CTf') (lizzieLet22_1,CTf') > [(_6,CTf'),
                                                               (lizzieLet22_1Lcall_f'3,CTf'),
                                                               (lizzieLet22_1Lcall_f'2,CTf'),
                                                               (lizzieLet22_1Lcall_f'1,CTf'),
                                                               (lizzieLet22_1Lcall_f'0,CTf')] */
  logic [4:0] lizzieLet22_1_onehotd;
  always_comb
    if ((lizzieLet22_2_d[0] && lizzieLet22_1_d[0]))
      unique case (lizzieLet22_2_d[3:1])
        3'd0: lizzieLet22_1_onehotd = 5'd1;
        3'd1: lizzieLet22_1_onehotd = 5'd2;
        3'd2: lizzieLet22_1_onehotd = 5'd4;
        3'd3: lizzieLet22_1_onehotd = 5'd8;
        3'd4: lizzieLet22_1_onehotd = 5'd16;
        default: lizzieLet22_1_onehotd = 5'd0;
      endcase
    else lizzieLet22_1_onehotd = 5'd0;
  assign _6_d = {lizzieLet22_1_d[68:1], lizzieLet22_1_onehotd[0]};
  assign \lizzieLet22_1Lcall_f'3_d  = {lizzieLet22_1_d[68:1],
                                       lizzieLet22_1_onehotd[1]};
  assign \lizzieLet22_1Lcall_f'2_d  = {lizzieLet22_1_d[68:1],
                                       lizzieLet22_1_onehotd[2]};
  assign \lizzieLet22_1Lcall_f'1_d  = {lizzieLet22_1_d[68:1],
                                       lizzieLet22_1_onehotd[3]};
  assign \lizzieLet22_1Lcall_f'0_d  = {lizzieLet22_1_d[68:1],
                                       lizzieLet22_1_onehotd[4]};
  assign lizzieLet22_1_r = (| (lizzieLet22_1_onehotd & {\lizzieLet22_1Lcall_f'0_r ,
                                                        \lizzieLet22_1Lcall_f'1_r ,
                                                        \lizzieLet22_1Lcall_f'2_r ,
                                                        \lizzieLet22_1Lcall_f'3_r ,
                                                        _6_r}));
  assign lizzieLet22_2_r = lizzieLet22_1_r;
  
  /* demux (Ty CTf',
       Ty Go) : (lizzieLet22_3,CTf') (go_9_goMux_data,Go) > [(_5,Go),
                                                             (lizzieLet22_3Lcall_f'3,Go),
                                                             (lizzieLet22_3Lcall_f'2,Go),
                                                             (lizzieLet22_3Lcall_f'1,Go),
                                                             (lizzieLet22_3Lcall_f'0,Go)] */
  logic [4:0] go_9_goMux_data_onehotd;
  always_comb
    if ((lizzieLet22_3_d[0] && go_9_goMux_data_d[0]))
      unique case (lizzieLet22_3_d[3:1])
        3'd0: go_9_goMux_data_onehotd = 5'd1;
        3'd1: go_9_goMux_data_onehotd = 5'd2;
        3'd2: go_9_goMux_data_onehotd = 5'd4;
        3'd3: go_9_goMux_data_onehotd = 5'd8;
        3'd4: go_9_goMux_data_onehotd = 5'd16;
        default: go_9_goMux_data_onehotd = 5'd0;
      endcase
    else go_9_goMux_data_onehotd = 5'd0;
  assign _5_d = go_9_goMux_data_onehotd[0];
  assign \lizzieLet22_3Lcall_f'3_d  = go_9_goMux_data_onehotd[1];
  assign \lizzieLet22_3Lcall_f'2_d  = go_9_goMux_data_onehotd[2];
  assign \lizzieLet22_3Lcall_f'1_d  = go_9_goMux_data_onehotd[3];
  assign \lizzieLet22_3Lcall_f'0_d  = go_9_goMux_data_onehotd[4];
  assign go_9_goMux_data_r = (| (go_9_goMux_data_onehotd & {\lizzieLet22_3Lcall_f'0_r ,
                                                            \lizzieLet22_3Lcall_f'1_r ,
                                                            \lizzieLet22_3Lcall_f'2_r ,
                                                            \lizzieLet22_3Lcall_f'3_r ,
                                                            _5_r}));
  assign lizzieLet22_3_r = go_9_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_f'0,Go) > (lizzieLet22_3Lcall_f'0_1_argbuf,Go) */
  Go_t \lizzieLet22_3Lcall_f'0_bufchan_d ;
  logic \lizzieLet22_3Lcall_f'0_bufchan_r ;
  assign \lizzieLet22_3Lcall_f'0_r  = ((! \lizzieLet22_3Lcall_f'0_bufchan_d [0]) || \lizzieLet22_3Lcall_f'0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'0_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet22_3Lcall_f'0_r )
        \lizzieLet22_3Lcall_f'0_bufchan_d  <= \lizzieLet22_3Lcall_f'0_d ;
  Go_t \lizzieLet22_3Lcall_f'0_bufchan_buf ;
  assign \lizzieLet22_3Lcall_f'0_bufchan_r  = (! \lizzieLet22_3Lcall_f'0_bufchan_buf [0]);
  assign \lizzieLet22_3Lcall_f'0_1_argbuf_d  = (\lizzieLet22_3Lcall_f'0_bufchan_buf [0] ? \lizzieLet22_3Lcall_f'0_bufchan_buf  :
                                                \lizzieLet22_3Lcall_f'0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'0_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet22_3Lcall_f'0_1_argbuf_r  && \lizzieLet22_3Lcall_f'0_bufchan_buf [0]))
        \lizzieLet22_3Lcall_f'0_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet22_3Lcall_f'0_1_argbuf_r ) && (! \lizzieLet22_3Lcall_f'0_bufchan_buf [0])))
        \lizzieLet22_3Lcall_f'0_bufchan_buf  <= \lizzieLet22_3Lcall_f'0_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_f'1,Go) > (lizzieLet22_3Lcall_f'1_1_argbuf,Go) */
  Go_t \lizzieLet22_3Lcall_f'1_bufchan_d ;
  logic \lizzieLet22_3Lcall_f'1_bufchan_r ;
  assign \lizzieLet22_3Lcall_f'1_r  = ((! \lizzieLet22_3Lcall_f'1_bufchan_d [0]) || \lizzieLet22_3Lcall_f'1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'1_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet22_3Lcall_f'1_r )
        \lizzieLet22_3Lcall_f'1_bufchan_d  <= \lizzieLet22_3Lcall_f'1_d ;
  Go_t \lizzieLet22_3Lcall_f'1_bufchan_buf ;
  assign \lizzieLet22_3Lcall_f'1_bufchan_r  = (! \lizzieLet22_3Lcall_f'1_bufchan_buf [0]);
  assign \lizzieLet22_3Lcall_f'1_1_argbuf_d  = (\lizzieLet22_3Lcall_f'1_bufchan_buf [0] ? \lizzieLet22_3Lcall_f'1_bufchan_buf  :
                                                \lizzieLet22_3Lcall_f'1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'1_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet22_3Lcall_f'1_1_argbuf_r  && \lizzieLet22_3Lcall_f'1_bufchan_buf [0]))
        \lizzieLet22_3Lcall_f'1_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet22_3Lcall_f'1_1_argbuf_r ) && (! \lizzieLet22_3Lcall_f'1_bufchan_buf [0])))
        \lizzieLet22_3Lcall_f'1_bufchan_buf  <= \lizzieLet22_3Lcall_f'1_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_f'2,Go) > (lizzieLet22_3Lcall_f'2_1_argbuf,Go) */
  Go_t \lizzieLet22_3Lcall_f'2_bufchan_d ;
  logic \lizzieLet22_3Lcall_f'2_bufchan_r ;
  assign \lizzieLet22_3Lcall_f'2_r  = ((! \lizzieLet22_3Lcall_f'2_bufchan_d [0]) || \lizzieLet22_3Lcall_f'2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'2_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet22_3Lcall_f'2_r )
        \lizzieLet22_3Lcall_f'2_bufchan_d  <= \lizzieLet22_3Lcall_f'2_d ;
  Go_t \lizzieLet22_3Lcall_f'2_bufchan_buf ;
  assign \lizzieLet22_3Lcall_f'2_bufchan_r  = (! \lizzieLet22_3Lcall_f'2_bufchan_buf [0]);
  assign \lizzieLet22_3Lcall_f'2_1_argbuf_d  = (\lizzieLet22_3Lcall_f'2_bufchan_buf [0] ? \lizzieLet22_3Lcall_f'2_bufchan_buf  :
                                                \lizzieLet22_3Lcall_f'2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'2_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet22_3Lcall_f'2_1_argbuf_r  && \lizzieLet22_3Lcall_f'2_bufchan_buf [0]))
        \lizzieLet22_3Lcall_f'2_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet22_3Lcall_f'2_1_argbuf_r ) && (! \lizzieLet22_3Lcall_f'2_bufchan_buf [0])))
        \lizzieLet22_3Lcall_f'2_bufchan_buf  <= \lizzieLet22_3Lcall_f'2_bufchan_d ;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_f'3,Go) > (lizzieLet22_3Lcall_f'3_1_argbuf,Go) */
  Go_t \lizzieLet22_3Lcall_f'3_bufchan_d ;
  logic \lizzieLet22_3Lcall_f'3_bufchan_r ;
  assign \lizzieLet22_3Lcall_f'3_r  = ((! \lizzieLet22_3Lcall_f'3_bufchan_d [0]) || \lizzieLet22_3Lcall_f'3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'3_bufchan_d  <= 1'd0;
    else
      if (\lizzieLet22_3Lcall_f'3_r )
        \lizzieLet22_3Lcall_f'3_bufchan_d  <= \lizzieLet22_3Lcall_f'3_d ;
  Go_t \lizzieLet22_3Lcall_f'3_bufchan_buf ;
  assign \lizzieLet22_3Lcall_f'3_bufchan_r  = (! \lizzieLet22_3Lcall_f'3_bufchan_buf [0]);
  assign \lizzieLet22_3Lcall_f'3_1_argbuf_d  = (\lizzieLet22_3Lcall_f'3_bufchan_buf [0] ? \lizzieLet22_3Lcall_f'3_bufchan_buf  :
                                                \lizzieLet22_3Lcall_f'3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_3Lcall_f'3_bufchan_buf  <= 1'd0;
    else
      if ((\lizzieLet22_3Lcall_f'3_1_argbuf_r  && \lizzieLet22_3Lcall_f'3_bufchan_buf [0]))
        \lizzieLet22_3Lcall_f'3_bufchan_buf  <= 1'd0;
      else if (((! \lizzieLet22_3Lcall_f'3_1_argbuf_r ) && (! \lizzieLet22_3Lcall_f'3_bufchan_buf [0])))
        \lizzieLet22_3Lcall_f'3_bufchan_buf  <= \lizzieLet22_3Lcall_f'3_bufchan_d ;
  
  /* demux (Ty CTf',
       Ty Pointer_QTree_Nat) : (lizzieLet22_4,CTf') (srtarg_0_1_goMux_mux,Pointer_QTree_Nat) > [(lizzieLet22_4Lf'sbos,Pointer_QTree_Nat),
                                                                                                (lizzieLet22_4Lcall_f'3,Pointer_QTree_Nat),
                                                                                                (lizzieLet22_4Lcall_f'2,Pointer_QTree_Nat),
                                                                                                (lizzieLet22_4Lcall_f'1,Pointer_QTree_Nat),
                                                                                                (lizzieLet22_4Lcall_f'0,Pointer_QTree_Nat)] */
  logic [4:0] srtarg_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet22_4_d[0] && srtarg_0_1_goMux_mux_d[0]))
      unique case (lizzieLet22_4_d[3:1])
        3'd0: srtarg_0_1_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_1_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_1_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_1_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_1_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_1_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_1_goMux_mux_onehotd = 5'd0;
  assign \lizzieLet22_4Lf'sbos_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                     srtarg_0_1_goMux_mux_onehotd[0]};
  assign \lizzieLet22_4Lcall_f'3_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                       srtarg_0_1_goMux_mux_onehotd[1]};
  assign \lizzieLet22_4Lcall_f'2_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                       srtarg_0_1_goMux_mux_onehotd[2]};
  assign \lizzieLet22_4Lcall_f'1_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                       srtarg_0_1_goMux_mux_onehotd[3]};
  assign \lizzieLet22_4Lcall_f'0_d  = {srtarg_0_1_goMux_mux_d[16:1],
                                       srtarg_0_1_goMux_mux_onehotd[4]};
  assign srtarg_0_1_goMux_mux_r = (| (srtarg_0_1_goMux_mux_onehotd & {\lizzieLet22_4Lcall_f'0_r ,
                                                                      \lizzieLet22_4Lcall_f'1_r ,
                                                                      \lizzieLet22_4Lcall_f'2_r ,
                                                                      \lizzieLet22_4Lcall_f'3_r ,
                                                                      \lizzieLet22_4Lf'sbos_r }));
  assign lizzieLet22_4_r = srtarg_0_1_goMux_mux_r;
  
  /* dcon (Ty QTree_Nat,
      Dcon QNode_Nat) : [(lizzieLet22_4Lcall_f'0,Pointer_QTree_Nat),
                         (es_1_1_destruct,Pointer_QTree_Nat),
                         (es_2_3_destruct,Pointer_QTree_Nat),
                         (es_3_5_destruct,Pointer_QTree_Nat)] > (lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat,QTree_Nat) */
  assign \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_d  = QNode_Nat_dc((& {\lizzieLet22_4Lcall_f'0_d [0],
                                                                                          es_1_1_destruct_d[0],
                                                                                          es_2_3_destruct_d[0],
                                                                                          es_3_5_destruct_d[0]}), \lizzieLet22_4Lcall_f'0_d , es_1_1_destruct_d, es_2_3_destruct_d, es_3_5_destruct_d);
  assign {\lizzieLet22_4Lcall_f'0_r ,
          es_1_1_destruct_r,
          es_2_3_destruct_r,
          es_3_5_destruct_r} = {4 {(\lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_r  && \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_d [0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat,QTree_Nat) > (lizzieLet26_1_argbuf,QTree_Nat) */
  QTree_Nat_t \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d ;
  logic \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_r ;
  assign \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_r  = ((! \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d [0]) || \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d  <= {66'd0,
                                                                                1'd0};
    else
      if (\lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_r )
        \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d  <= \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_d ;
  QTree_Nat_t \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf ;
  assign \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_r  = (! \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf [0]);
  assign lizzieLet26_1_argbuf_d = (\lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf [0] ? \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf  :
                                   \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                  1'd0};
    else
      if ((lizzieLet26_1_argbuf_r && \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf [0]))
        \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf  <= {66'd0,
                                                                                    1'd0};
      else if (((! lizzieLet26_1_argbuf_r) && (! \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf [0])))
        \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_buf  <= \lizzieLet22_4Lcall_f'0_1es_1_1_1es_2_3_1es_3_5_1QNode_Nat_bufchan_d ;
  
  /* dcon (Ty CTf',
      Dcon Lcall_f'0) : [(lizzieLet22_4Lcall_f'1,Pointer_QTree_Nat),
                         (es_2_2_destruct,Pointer_QTree_Nat),
                         (es_3_4_destruct,Pointer_QTree_Nat),
                         (sc_0_8_destruct,Pointer_CTf')] > (lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0,CTf') */
  assign \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_d  = \Lcall_f'0_dc ((& {\lizzieLet22_4Lcall_f'1_d [0],
                                                                                            es_2_2_destruct_d[0],
                                                                                            es_3_4_destruct_d[0],
                                                                                            sc_0_8_destruct_d[0]}), \lizzieLet22_4Lcall_f'1_d , es_2_2_destruct_d, es_3_4_destruct_d, sc_0_8_destruct_d);
  assign {\lizzieLet22_4Lcall_f'1_r ,
          es_2_2_destruct_r,
          es_3_4_destruct_r,
          sc_0_8_destruct_r} = {4 {(\lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_r  && \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_d [0])}};
  
  /* buf (Ty CTf') : (lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0,CTf') > (lizzieLet25_1_argbuf,CTf') */
  \CTf'_t  \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d ;
  logic \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_r ;
  assign \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_r  = ((! \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d [0]) || \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d  <= {68'd0,
                                                                                1'd0};
    else
      if (\lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_r )
        \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d  <= \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_d ;
  \CTf'_t  \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf ;
  assign \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_r  = (! \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf [0]);
  assign lizzieLet25_1_argbuf_d = (\lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf [0] ? \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf  :
                                   \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf  <= {68'd0,
                                                                                  1'd0};
    else
      if ((lizzieLet25_1_argbuf_r && \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf [0]))
        \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf  <= {68'd0,
                                                                                    1'd0};
      else if (((! lizzieLet25_1_argbuf_r) && (! \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf [0])))
        \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_buf  <= \lizzieLet22_4Lcall_f'1_1es_2_2_1es_3_4_1sc_0_8_1Lcall_f'0_bufchan_d ;
  
  /* dcon (Ty CTf',
      Dcon Lcall_f'1) : [(lizzieLet22_4Lcall_f'2,Pointer_QTree_Nat),
                         (es_3_3_destruct,Pointer_QTree_Nat),
                         (sc_0_7_destruct,Pointer_CTf'),
                         (q1ac7_2_destruct,Pointer_QTree_Bool),
                         (vac5_3_1,MyBool)] > (lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1,CTf') */
  assign \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_d  = \Lcall_f'1_dc ((& {\lizzieLet22_4Lcall_f'2_d [0],
                                                                                                     es_3_3_destruct_d[0],
                                                                                                     sc_0_7_destruct_d[0],
                                                                                                     q1ac7_2_destruct_d[0],
                                                                                                     vac5_3_1_d[0]}), \lizzieLet22_4Lcall_f'2_d , es_3_3_destruct_d, sc_0_7_destruct_d, q1ac7_2_destruct_d, vac5_3_1_d);
  assign {\lizzieLet22_4Lcall_f'2_r ,
          es_3_3_destruct_r,
          sc_0_7_destruct_r,
          q1ac7_2_destruct_r,
          vac5_3_1_r} = {5 {(\lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_r  && \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_d [0])}};
  
  /* buf (Ty CTf') : (lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1,CTf') > (lizzieLet24_1_argbuf,CTf') */
  \CTf'_t  \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d ;
  logic \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_r ;
  assign \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_r  = ((! \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d [0]) || \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d  <= {68'd0,
                                                                                         1'd0};
    else
      if (\lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_r )
        \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d  <= \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_d ;
  \CTf'_t  \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf ;
  assign \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_r  = (! \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf [0]);
  assign lizzieLet24_1_argbuf_d = (\lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf [0] ? \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf  :
                                   \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf  <= {68'd0,
                                                                                           1'd0};
    else
      if ((lizzieLet24_1_argbuf_r && \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf [0]))
        \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf  <= {68'd0,
                                                                                             1'd0};
      else if (((! lizzieLet24_1_argbuf_r) && (! \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf [0])))
        \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_buf  <= \lizzieLet22_4Lcall_f'2_1es_3_3_1sc_0_7_1q1ac7_2_1vac5_3_1Lcall_f'1_bufchan_d ;
  
  /* dcon (Ty CTf',
      Dcon Lcall_f'2) : [(lizzieLet22_4Lcall_f'3,Pointer_QTree_Nat),
                         (sc_0_6_destruct,Pointer_CTf'),
                         (q1ac7_1_destruct,Pointer_QTree_Bool),
                         (vac5_2_1,MyBool),
                         (q2ac8_1_destruct,Pointer_QTree_Bool)] > (lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2,CTf') */
  assign \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_d  = \Lcall_f'2_dc ((& {\lizzieLet22_4Lcall_f'3_d [0],
                                                                                                      sc_0_6_destruct_d[0],
                                                                                                      q1ac7_1_destruct_d[0],
                                                                                                      vac5_2_1_d[0],
                                                                                                      q2ac8_1_destruct_d[0]}), \lizzieLet22_4Lcall_f'3_d , sc_0_6_destruct_d, q1ac7_1_destruct_d, vac5_2_1_d, q2ac8_1_destruct_d);
  assign {\lizzieLet22_4Lcall_f'3_r ,
          sc_0_6_destruct_r,
          q1ac7_1_destruct_r,
          vac5_2_1_r,
          q2ac8_1_destruct_r} = {5 {(\lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_r  && \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_d [0])}};
  
  /* buf (Ty CTf') : (lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2,CTf') > (lizzieLet23_1_argbuf,CTf') */
  \CTf'_t  \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d ;
  logic \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_r ;
  assign \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_r  = ((! \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d [0]) || \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d  <= {68'd0,
                                                                                          1'd0};
    else
      if (\lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_r )
        \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d  <= \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_d ;
  \CTf'_t  \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf ;
  assign \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_r  = (! \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf [0]);
  assign lizzieLet23_1_argbuf_d = (\lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf [0] ? \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf  :
                                   \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf  <= {68'd0,
                                                                                            1'd0};
    else
      if ((lizzieLet23_1_argbuf_r && \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf [0]))
        \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf  <= {68'd0,
                                                                                              1'd0};
      else if (((! lizzieLet23_1_argbuf_r) && (! \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf [0])))
        \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_buf  <= \lizzieLet22_4Lcall_f'3_1sc_0_6_1q1ac7_1_1vac5_2_1q2ac8_1_1Lcall_f'2_bufchan_d ;
  
  /* fork (Ty Pointer_QTree_Nat) : (lizzieLet22_4Lf'sbos,Pointer_QTree_Nat) > [(lizzieLet22_4Lf'sbos_1_merge_merge_fork_1,Pointer_QTree_Nat),
                                                                          (lizzieLet22_4Lf'sbos_1_merge_merge_fork_2,Pointer_QTree_Nat)] */
  logic [1:0] \lizzieLet22_4Lf'sbos_emitted ;
  logic [1:0] \lizzieLet22_4Lf'sbos_done ;
  assign \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_d  = {\lizzieLet22_4Lf'sbos_d [16:1],
                                                          (\lizzieLet22_4Lf'sbos_d [0] && (! \lizzieLet22_4Lf'sbos_emitted [0]))};
  assign \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_d  = {\lizzieLet22_4Lf'sbos_d [16:1],
                                                          (\lizzieLet22_4Lf'sbos_d [0] && (! \lizzieLet22_4Lf'sbos_emitted [1]))};
  assign \lizzieLet22_4Lf'sbos_done  = (\lizzieLet22_4Lf'sbos_emitted  | ({\lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_d [0],
                                                                           \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_d [0]} & {\lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_r ,
                                                                                                                                \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_r }));
  assign \lizzieLet22_4Lf'sbos_r  = (& \lizzieLet22_4Lf'sbos_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lizzieLet22_4Lf'sbos_emitted  <= 2'd0;
    else
      \lizzieLet22_4Lf'sbos_emitted  <= (\lizzieLet22_4Lf'sbos_r  ? 2'd0 :
                                         \lizzieLet22_4Lf'sbos_done );
  
  /* togo (Ty Pointer_QTree_Nat) : (lizzieLet22_4Lf'sbos_1_merge_merge_fork_1,Pointer_QTree_Nat) > (call_f'_goConst,Go) */
  assign \call_f'_goConst_d  = \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_d [0];
  assign \lizzieLet22_4Lf'sbos_1_merge_merge_fork_1_r  = \call_f'_goConst_r ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lizzieLet22_4Lf'sbos_1_merge_merge_fork_2,Pointer_QTree_Nat) > (f'_resbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d ;
  logic \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_r ;
  assign \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_r  = ((! \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d [0]) || \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d  <= {16'd0,
                                                                1'd0};
    else
      if (\lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_r )
        \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d  <= \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_d ;
  Pointer_QTree_Nat_t \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf ;
  assign \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_r  = (! \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf [0]);
  assign \f'_resbuf_d  = (\lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf [0] ? \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf  :
                          \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf  <= {16'd0,
                                                                  1'd0};
    else
      if ((\f'_resbuf_r  && \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf [0]))
        \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf  <= {16'd0,
                                                                    1'd0};
      else if (((! \f'_resbuf_r ) && (! \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf [0])))
        \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_buf  <= \lizzieLet22_4Lf'sbos_1_merge_merge_fork_2_bufchan_d ;
  
  /* destruct (Ty QTree_Bool,
          Dcon QNode_Bool) : (lizzieLet4_1QNode_Bool,QTree_Bool) > [(q1ac7_destruct,Pointer_QTree_Bool),
                                                                    (q2ac8_destruct,Pointer_QTree_Bool),
                                                                    (q3ac9_destruct,Pointer_QTree_Bool),
                                                                    (q4aca_destruct,Pointer_QTree_Bool)] */
  logic [3:0] lizzieLet4_1QNode_Bool_emitted;
  logic [3:0] lizzieLet4_1QNode_Bool_done;
  assign q1ac7_destruct_d = {lizzieLet4_1QNode_Bool_d[18:3],
                             (lizzieLet4_1QNode_Bool_d[0] && (! lizzieLet4_1QNode_Bool_emitted[0]))};
  assign q2ac8_destruct_d = {lizzieLet4_1QNode_Bool_d[34:19],
                             (lizzieLet4_1QNode_Bool_d[0] && (! lizzieLet4_1QNode_Bool_emitted[1]))};
  assign q3ac9_destruct_d = {lizzieLet4_1QNode_Bool_d[50:35],
                             (lizzieLet4_1QNode_Bool_d[0] && (! lizzieLet4_1QNode_Bool_emitted[2]))};
  assign q4aca_destruct_d = {lizzieLet4_1QNode_Bool_d[66:51],
                             (lizzieLet4_1QNode_Bool_d[0] && (! lizzieLet4_1QNode_Bool_emitted[3]))};
  assign lizzieLet4_1QNode_Bool_done = (lizzieLet4_1QNode_Bool_emitted | ({q4aca_destruct_d[0],
                                                                           q3ac9_destruct_d[0],
                                                                           q2ac8_destruct_d[0],
                                                                           q1ac7_destruct_d[0]} & {q4aca_destruct_r,
                                                                                                   q3ac9_destruct_r,
                                                                                                   q2ac8_destruct_r,
                                                                                                   q1ac7_destruct_r}));
  assign lizzieLet4_1QNode_Bool_r = (& lizzieLet4_1QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_1QNode_Bool_emitted <= 4'd0;
    else
      lizzieLet4_1QNode_Bool_emitted <= (lizzieLet4_1QNode_Bool_r ? 4'd0 :
                                         lizzieLet4_1QNode_Bool_done);
  
  /* destruct (Ty QTree_Bool,
          Dcon QVal_Bool) : (lizzieLet4_1QVal_Bool,QTree_Bool) > [(v'ac6_destruct,MyBool)] */
  assign \v'ac6_destruct_d  = {lizzieLet4_1QVal_Bool_d[3:3],
                               lizzieLet4_1QVal_Bool_d[0]};
  assign lizzieLet4_1QVal_Bool_r = \v'ac6_destruct_r ;
  
  /* demux (Ty QTree_Bool,
       Ty QTree_Bool) : (lizzieLet4_2,QTree_Bool) (lizzieLet4_1,QTree_Bool) > [(_4,QTree_Bool),
                                                                               (lizzieLet4_1QVal_Bool,QTree_Bool),
                                                                               (lizzieLet4_1QNode_Bool,QTree_Bool),
                                                                               (_3,QTree_Bool)] */
  logic [3:0] lizzieLet4_1_onehotd;
  always_comb
    if ((lizzieLet4_2_d[0] && lizzieLet4_1_d[0]))
      unique case (lizzieLet4_2_d[2:1])
        2'd0: lizzieLet4_1_onehotd = 4'd1;
        2'd1: lizzieLet4_1_onehotd = 4'd2;
        2'd2: lizzieLet4_1_onehotd = 4'd4;
        2'd3: lizzieLet4_1_onehotd = 4'd8;
        default: lizzieLet4_1_onehotd = 4'd0;
      endcase
    else lizzieLet4_1_onehotd = 4'd0;
  assign _4_d = {lizzieLet4_1_d[66:1], lizzieLet4_1_onehotd[0]};
  assign lizzieLet4_1QVal_Bool_d = {lizzieLet4_1_d[66:1],
                                    lizzieLet4_1_onehotd[1]};
  assign lizzieLet4_1QNode_Bool_d = {lizzieLet4_1_d[66:1],
                                     lizzieLet4_1_onehotd[2]};
  assign _3_d = {lizzieLet4_1_d[66:1], lizzieLet4_1_onehotd[3]};
  assign lizzieLet4_1_r = (| (lizzieLet4_1_onehotd & {_3_r,
                                                      lizzieLet4_1QNode_Bool_r,
                                                      lizzieLet4_1QVal_Bool_r,
                                                      _4_r}));
  assign lizzieLet4_2_r = lizzieLet4_1_r;
  
  /* demux (Ty QTree_Bool,
       Ty Go) : (lizzieLet4_3,QTree_Bool) (go_3_goMux_data,Go) > [(lizzieLet4_3QNone_Bool,Go),
                                                                  (lizzieLet4_3QVal_Bool,Go),
                                                                  (lizzieLet4_3QNode_Bool,Go),
                                                                  (lizzieLet4_3QError_Bool,Go)] */
  logic [3:0] go_3_goMux_data_onehotd;
  always_comb
    if ((lizzieLet4_3_d[0] && go_3_goMux_data_d[0]))
      unique case (lizzieLet4_3_d[2:1])
        2'd0: go_3_goMux_data_onehotd = 4'd1;
        2'd1: go_3_goMux_data_onehotd = 4'd2;
        2'd2: go_3_goMux_data_onehotd = 4'd4;
        2'd3: go_3_goMux_data_onehotd = 4'd8;
        default: go_3_goMux_data_onehotd = 4'd0;
      endcase
    else go_3_goMux_data_onehotd = 4'd0;
  assign lizzieLet4_3QNone_Bool_d = go_3_goMux_data_onehotd[0];
  assign lizzieLet4_3QVal_Bool_d = go_3_goMux_data_onehotd[1];
  assign lizzieLet4_3QNode_Bool_d = go_3_goMux_data_onehotd[2];
  assign lizzieLet4_3QError_Bool_d = go_3_goMux_data_onehotd[3];
  assign go_3_goMux_data_r = (| (go_3_goMux_data_onehotd & {lizzieLet4_3QError_Bool_r,
                                                            lizzieLet4_3QNode_Bool_r,
                                                            lizzieLet4_3QVal_Bool_r,
                                                            lizzieLet4_3QNone_Bool_r}));
  assign lizzieLet4_3_r = go_3_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet4_3QError_Bool,Go) > [(lizzieLet4_3QError_Bool_1,Go),
                                               (lizzieLet4_3QError_Bool_2,Go)] */
  logic [1:0] lizzieLet4_3QError_Bool_emitted;
  logic [1:0] lizzieLet4_3QError_Bool_done;
  assign lizzieLet4_3QError_Bool_1_d = (lizzieLet4_3QError_Bool_d[0] && (! lizzieLet4_3QError_Bool_emitted[0]));
  assign lizzieLet4_3QError_Bool_2_d = (lizzieLet4_3QError_Bool_d[0] && (! lizzieLet4_3QError_Bool_emitted[1]));
  assign lizzieLet4_3QError_Bool_done = (lizzieLet4_3QError_Bool_emitted | ({lizzieLet4_3QError_Bool_2_d[0],
                                                                             lizzieLet4_3QError_Bool_1_d[0]} & {lizzieLet4_3QError_Bool_2_r,
                                                                                                                lizzieLet4_3QError_Bool_1_r}));
  assign lizzieLet4_3QError_Bool_r = (& lizzieLet4_3QError_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Bool_emitted <= 2'd0;
    else
      lizzieLet4_3QError_Bool_emitted <= (lizzieLet4_3QError_Bool_r ? 2'd0 :
                                          lizzieLet4_3QError_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QError_Nat) : [(lizzieLet4_3QError_Bool_1,Go)] > (lizzieLet4_3QError_Bool_1QError_Nat,QTree_Nat) */
  assign lizzieLet4_3QError_Bool_1QError_Nat_d = QError_Nat_dc((& {lizzieLet4_3QError_Bool_1_d[0]}), lizzieLet4_3QError_Bool_1_d);
  assign {lizzieLet4_3QError_Bool_1_r} = {1 {(lizzieLet4_3QError_Bool_1QError_Nat_r && lizzieLet4_3QError_Bool_1QError_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet4_3QError_Bool_1QError_Nat,QTree_Nat) > (lizzieLet10_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d;
  logic lizzieLet4_3QError_Bool_1QError_Nat_bufchan_r;
  assign lizzieLet4_3QError_Bool_1QError_Nat_r = ((! lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d[0]) || lizzieLet4_3QError_Bool_1QError_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet4_3QError_Bool_1QError_Nat_r)
        lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d <= lizzieLet4_3QError_Bool_1QError_Nat_d;
  QTree_Nat_t lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf;
  assign lizzieLet4_3QError_Bool_1QError_Nat_bufchan_r = (! lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf[0]);
  assign lizzieLet10_1_argbuf_d = (lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf[0] ? lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf :
                                   lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet10_1_argbuf_r && lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf[0]))
        lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet10_1_argbuf_r) && (! lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf[0])))
        lizzieLet4_3QError_Bool_1QError_Nat_bufchan_buf <= lizzieLet4_3QError_Bool_1QError_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QError_Bool_2,Go) > (lizzieLet4_3QError_Bool_2_argbuf,Go) */
  Go_t lizzieLet4_3QError_Bool_2_bufchan_d;
  logic lizzieLet4_3QError_Bool_2_bufchan_r;
  assign lizzieLet4_3QError_Bool_2_r = ((! lizzieLet4_3QError_Bool_2_bufchan_d[0]) || lizzieLet4_3QError_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QError_Bool_2_r)
        lizzieLet4_3QError_Bool_2_bufchan_d <= lizzieLet4_3QError_Bool_2_d;
  Go_t lizzieLet4_3QError_Bool_2_bufchan_buf;
  assign lizzieLet4_3QError_Bool_2_bufchan_r = (! lizzieLet4_3QError_Bool_2_bufchan_buf[0]);
  assign lizzieLet4_3QError_Bool_2_argbuf_d = (lizzieLet4_3QError_Bool_2_bufchan_buf[0] ? lizzieLet4_3QError_Bool_2_bufchan_buf :
                                               lizzieLet4_3QError_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QError_Bool_2_argbuf_r && lizzieLet4_3QError_Bool_2_bufchan_buf[0]))
        lizzieLet4_3QError_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QError_Bool_2_argbuf_r) && (! lizzieLet4_3QError_Bool_2_bufchan_buf[0])))
        lizzieLet4_3QError_Bool_2_bufchan_buf <= lizzieLet4_3QError_Bool_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QNode_Bool,Go) > (lizzieLet4_3QNode_Bool_1_argbuf,Go) */
  Go_t lizzieLet4_3QNode_Bool_bufchan_d;
  logic lizzieLet4_3QNode_Bool_bufchan_r;
  assign lizzieLet4_3QNode_Bool_r = ((! lizzieLet4_3QNode_Bool_bufchan_d[0]) || lizzieLet4_3QNode_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNode_Bool_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QNode_Bool_r)
        lizzieLet4_3QNode_Bool_bufchan_d <= lizzieLet4_3QNode_Bool_d;
  Go_t lizzieLet4_3QNode_Bool_bufchan_buf;
  assign lizzieLet4_3QNode_Bool_bufchan_r = (! lizzieLet4_3QNode_Bool_bufchan_buf[0]);
  assign lizzieLet4_3QNode_Bool_1_argbuf_d = (lizzieLet4_3QNode_Bool_bufchan_buf[0] ? lizzieLet4_3QNode_Bool_bufchan_buf :
                                              lizzieLet4_3QNode_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNode_Bool_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QNode_Bool_1_argbuf_r && lizzieLet4_3QNode_Bool_bufchan_buf[0]))
        lizzieLet4_3QNode_Bool_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QNode_Bool_1_argbuf_r) && (! lizzieLet4_3QNode_Bool_bufchan_buf[0])))
        lizzieLet4_3QNode_Bool_bufchan_buf <= lizzieLet4_3QNode_Bool_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet4_3QNone_Bool,Go) > [(lizzieLet4_3QNone_Bool_1,Go),
                                              (lizzieLet4_3QNone_Bool_2,Go)] */
  logic [1:0] lizzieLet4_3QNone_Bool_emitted;
  logic [1:0] lizzieLet4_3QNone_Bool_done;
  assign lizzieLet4_3QNone_Bool_1_d = (lizzieLet4_3QNone_Bool_d[0] && (! lizzieLet4_3QNone_Bool_emitted[0]));
  assign lizzieLet4_3QNone_Bool_2_d = (lizzieLet4_3QNone_Bool_d[0] && (! lizzieLet4_3QNone_Bool_emitted[1]));
  assign lizzieLet4_3QNone_Bool_done = (lizzieLet4_3QNone_Bool_emitted | ({lizzieLet4_3QNone_Bool_2_d[0],
                                                                           lizzieLet4_3QNone_Bool_1_d[0]} & {lizzieLet4_3QNone_Bool_2_r,
                                                                                                             lizzieLet4_3QNone_Bool_1_r}));
  assign lizzieLet4_3QNone_Bool_r = (& lizzieLet4_3QNone_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Bool_emitted <= 2'd0;
    else
      lizzieLet4_3QNone_Bool_emitted <= (lizzieLet4_3QNone_Bool_r ? 2'd0 :
                                         lizzieLet4_3QNone_Bool_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet4_3QNone_Bool_1,Go)] > (lizzieLet4_3QNone_Bool_1QNone_Nat,QTree_Nat) */
  assign lizzieLet4_3QNone_Bool_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet4_3QNone_Bool_1_d[0]}), lizzieLet4_3QNone_Bool_1_d);
  assign {lizzieLet4_3QNone_Bool_1_r} = {1 {(lizzieLet4_3QNone_Bool_1QNone_Nat_r && lizzieLet4_3QNone_Bool_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet4_3QNone_Bool_1QNone_Nat,QTree_Nat) > (lizzieLet5_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d;
  logic lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_r;
  assign lizzieLet4_3QNone_Bool_1QNone_Nat_r = ((! lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d[0]) || lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet4_3QNone_Bool_1QNone_Nat_r)
        lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d <= lizzieLet4_3QNone_Bool_1QNone_Nat_d;
  QTree_Nat_t lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf;
  assign lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_r = (! lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet5_1_argbuf_d = (lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf[0] ? lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf :
                                  lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet5_1_argbuf_r && lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf[0]))
        lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet5_1_argbuf_r) && (! lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf[0])))
        lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_buf <= lizzieLet4_3QNone_Bool_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QNone_Bool_2,Go) > (lizzieLet4_3QNone_Bool_2_argbuf,Go) */
  Go_t lizzieLet4_3QNone_Bool_2_bufchan_d;
  logic lizzieLet4_3QNone_Bool_2_bufchan_r;
  assign lizzieLet4_3QNone_Bool_2_r = ((! lizzieLet4_3QNone_Bool_2_bufchan_d[0]) || lizzieLet4_3QNone_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Bool_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QNone_Bool_2_r)
        lizzieLet4_3QNone_Bool_2_bufchan_d <= lizzieLet4_3QNone_Bool_2_d;
  Go_t lizzieLet4_3QNone_Bool_2_bufchan_buf;
  assign lizzieLet4_3QNone_Bool_2_bufchan_r = (! lizzieLet4_3QNone_Bool_2_bufchan_buf[0]);
  assign lizzieLet4_3QNone_Bool_2_argbuf_d = (lizzieLet4_3QNone_Bool_2_bufchan_buf[0] ? lizzieLet4_3QNone_Bool_2_bufchan_buf :
                                              lizzieLet4_3QNone_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Bool_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QNone_Bool_2_argbuf_r && lizzieLet4_3QNone_Bool_2_bufchan_buf[0]))
        lizzieLet4_3QNone_Bool_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QNone_Bool_2_argbuf_r) && (! lizzieLet4_3QNone_Bool_2_bufchan_buf[0])))
        lizzieLet4_3QNone_Bool_2_bufchan_buf <= lizzieLet4_3QNone_Bool_2_bufchan_d;
  
  /* mergectrl (Ty C6,Ty Go) : [(lizzieLet4_3QNone_Bool_2_argbuf,Go),
                           (lizzieLet22_3Lcall_f'0_1_argbuf,Go),
                           (lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf,Go),
                           (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf,Go),
                           (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf,Go),
                           (lizzieLet4_3QError_Bool_2_argbuf,Go)] > (go_9_goMux_choice,C6) (go_9_goMux_data,Go) */
  logic [5:0] lizzieLet4_3QNone_Bool_2_argbuf_select_d;
  assign lizzieLet4_3QNone_Bool_2_argbuf_select_d = ((| lizzieLet4_3QNone_Bool_2_argbuf_select_q) ? lizzieLet4_3QNone_Bool_2_argbuf_select_q :
                                                     (lizzieLet4_3QNone_Bool_2_argbuf_d[0] ? 6'd1 :
                                                      (\lizzieLet22_3Lcall_f'0_1_argbuf_d [0] ? 6'd2 :
                                                       (lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_d[0] ? 6'd4 :
                                                        (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_d[0] ? 6'd8 :
                                                         (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_d[0] ? 6'd16 :
                                                          (lizzieLet4_3QError_Bool_2_argbuf_d[0] ? 6'd32 :
                                                           6'd0)))))));
  logic [5:0] lizzieLet4_3QNone_Bool_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Bool_2_argbuf_select_q <= 6'd0;
    else
      lizzieLet4_3QNone_Bool_2_argbuf_select_q <= (lizzieLet4_3QNone_Bool_2_argbuf_done ? 6'd0 :
                                                   lizzieLet4_3QNone_Bool_2_argbuf_select_d);
  logic [1:0] lizzieLet4_3QNone_Bool_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Bool_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet4_3QNone_Bool_2_argbuf_emit_q <= (lizzieLet4_3QNone_Bool_2_argbuf_done ? 2'd0 :
                                                 lizzieLet4_3QNone_Bool_2_argbuf_emit_d);
  logic [1:0] lizzieLet4_3QNone_Bool_2_argbuf_emit_d;
  assign lizzieLet4_3QNone_Bool_2_argbuf_emit_d = (lizzieLet4_3QNone_Bool_2_argbuf_emit_q | ({go_9_goMux_choice_d[0],
                                                                                              go_9_goMux_data_d[0]} & {go_9_goMux_choice_r,
                                                                                                                       go_9_goMux_data_r}));
  logic lizzieLet4_3QNone_Bool_2_argbuf_done;
  assign lizzieLet4_3QNone_Bool_2_argbuf_done = (& lizzieLet4_3QNone_Bool_2_argbuf_emit_d);
  assign {lizzieLet4_3QError_Bool_2_argbuf_r,
          lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_r,
          lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_r,
          lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_r,
          \lizzieLet22_3Lcall_f'0_1_argbuf_r ,
          lizzieLet4_3QNone_Bool_2_argbuf_r} = (lizzieLet4_3QNone_Bool_2_argbuf_done ? lizzieLet4_3QNone_Bool_2_argbuf_select_d :
                                                6'd0);
  assign go_9_goMux_data_d = ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet4_3QNone_Bool_2_argbuf_d :
                              ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? \lizzieLet22_3Lcall_f'0_1_argbuf_d  :
                               ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_d :
                                ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_d :
                                 ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_d :
                                  ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[5] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[0])) ? lizzieLet4_3QError_Bool_2_argbuf_d :
                                   1'd0))))));
  assign go_9_goMux_choice_d = ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[0] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C1_6_dc(1'd1) :
                                ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[1] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C2_6_dc(1'd1) :
                                 ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[2] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C3_6_dc(1'd1) :
                                  ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[3] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C4_6_dc(1'd1) :
                                   ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[4] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C5_6_dc(1'd1) :
                                    ((lizzieLet4_3QNone_Bool_2_argbuf_select_d[5] && (! lizzieLet4_3QNone_Bool_2_argbuf_emit_q[1])) ? C6_6_dc(1'd1) :
                                     {3'd0, 1'd0}))))));
  
  /* demux (Ty QTree_Bool,
       Ty Pointer_CTf') : (lizzieLet4_4,QTree_Bool) (sc_0_1_goMux_mux,Pointer_CTf') > [(lizzieLet4_4QNone_Bool,Pointer_CTf'),
                                                                                       (lizzieLet4_4QVal_Bool,Pointer_CTf'),
                                                                                       (lizzieLet4_4QNode_Bool,Pointer_CTf'),
                                                                                       (lizzieLet4_4QError_Bool,Pointer_CTf')] */
  logic [3:0] sc_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet4_4_d[0] && sc_0_1_goMux_mux_d[0]))
      unique case (lizzieLet4_4_d[2:1])
        2'd0: sc_0_1_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_1_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_1_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_1_goMux_mux_onehotd = 4'd8;
        default: sc_0_1_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_1_goMux_mux_onehotd = 4'd0;
  assign lizzieLet4_4QNone_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                     sc_0_1_goMux_mux_onehotd[0]};
  assign lizzieLet4_4QVal_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                    sc_0_1_goMux_mux_onehotd[1]};
  assign lizzieLet4_4QNode_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                     sc_0_1_goMux_mux_onehotd[2]};
  assign lizzieLet4_4QError_Bool_d = {sc_0_1_goMux_mux_d[16:1],
                                      sc_0_1_goMux_mux_onehotd[3]};
  assign sc_0_1_goMux_mux_r = (| (sc_0_1_goMux_mux_onehotd & {lizzieLet4_4QError_Bool_r,
                                                              lizzieLet4_4QNode_Bool_r,
                                                              lizzieLet4_4QVal_Bool_r,
                                                              lizzieLet4_4QNone_Bool_r}));
  assign lizzieLet4_4_r = sc_0_1_goMux_mux_r;
  
  /* buf (Ty Pointer_CTf') : (lizzieLet4_4QError_Bool,Pointer_CTf') > (lizzieLet4_4QError_Bool_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  lizzieLet4_4QError_Bool_bufchan_d;
  logic lizzieLet4_4QError_Bool_bufchan_r;
  assign lizzieLet4_4QError_Bool_r = ((! lizzieLet4_4QError_Bool_bufchan_d[0]) || lizzieLet4_4QError_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QError_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_4QError_Bool_r)
        lizzieLet4_4QError_Bool_bufchan_d <= lizzieLet4_4QError_Bool_d;
  \Pointer_CTf'_t  lizzieLet4_4QError_Bool_bufchan_buf;
  assign lizzieLet4_4QError_Bool_bufchan_r = (! lizzieLet4_4QError_Bool_bufchan_buf[0]);
  assign lizzieLet4_4QError_Bool_1_argbuf_d = (lizzieLet4_4QError_Bool_bufchan_buf[0] ? lizzieLet4_4QError_Bool_bufchan_buf :
                                               lizzieLet4_4QError_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_4QError_Bool_1_argbuf_r && lizzieLet4_4QError_Bool_bufchan_buf[0]))
        lizzieLet4_4QError_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_4QError_Bool_1_argbuf_r) && (! lizzieLet4_4QError_Bool_bufchan_buf[0])))
        lizzieLet4_4QError_Bool_bufchan_buf <= lizzieLet4_4QError_Bool_bufchan_d;
  
  /* dcon (Ty CTf',
      Dcon Lcall_f'3) : [(lizzieLet4_4QNode_Bool,Pointer_CTf'),
                         (q1ac7_destruct,Pointer_QTree_Bool),
                         (lizzieLet4_5QNode_Bool_1,MyBool),
                         (q2ac8_destruct,Pointer_QTree_Bool),
                         (q3ac9_destruct,Pointer_QTree_Bool)] > (lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3,CTf') */
  assign \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_d  = \Lcall_f'3_dc ((& {lizzieLet4_4QNode_Bool_d[0],
                                                                                                                 q1ac7_destruct_d[0],
                                                                                                                 lizzieLet4_5QNode_Bool_1_d[0],
                                                                                                                 q2ac8_destruct_d[0],
                                                                                                                 q3ac9_destruct_d[0]}), lizzieLet4_4QNode_Bool_d, q1ac7_destruct_d, lizzieLet4_5QNode_Bool_1_d, q2ac8_destruct_d, q3ac9_destruct_d);
  assign {lizzieLet4_4QNode_Bool_r,
          q1ac7_destruct_r,
          lizzieLet4_5QNode_Bool_1_r,
          q2ac8_destruct_r,
          q3ac9_destruct_r} = {5 {(\lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_r  && \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_d [0])}};
  
  /* buf (Ty CTf') : (lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3,CTf') > (lizzieLet9_1_argbuf,CTf') */
  \CTf'_t  \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d ;
  logic \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_r ;
  assign \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_r  = ((! \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d [0]) || \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d  <= {68'd0,
                                                                                                     1'd0};
    else
      if (\lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_r )
        \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d  <= \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_d ;
  \CTf'_t  \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf ;
  assign \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_r  = (! \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf [0]);
  assign lizzieLet9_1_argbuf_d = (\lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf [0] ? \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf  :
                                  \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf  <= {68'd0,
                                                                                                       1'd0};
    else
      if ((lizzieLet9_1_argbuf_r && \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf [0]))
        \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf  <= {68'd0,
                                                                                                         1'd0};
      else if (((! lizzieLet9_1_argbuf_r) && (! \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf [0])))
        \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_buf  <= \lizzieLet4_4QNode_Bool_1q1ac7_1lizzieLet4_5QNode_Bool_1q2ac8_1q3ac9_1Lcall_f'3_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (lizzieLet4_4QNone_Bool,Pointer_CTf') > (lizzieLet4_4QNone_Bool_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  lizzieLet4_4QNone_Bool_bufchan_d;
  logic lizzieLet4_4QNone_Bool_bufchan_r;
  assign lizzieLet4_4QNone_Bool_r = ((! lizzieLet4_4QNone_Bool_bufchan_d[0]) || lizzieLet4_4QNone_Bool_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNone_Bool_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_4QNone_Bool_r)
        lizzieLet4_4QNone_Bool_bufchan_d <= lizzieLet4_4QNone_Bool_d;
  \Pointer_CTf'_t  lizzieLet4_4QNone_Bool_bufchan_buf;
  assign lizzieLet4_4QNone_Bool_bufchan_r = (! lizzieLet4_4QNone_Bool_bufchan_buf[0]);
  assign lizzieLet4_4QNone_Bool_1_argbuf_d = (lizzieLet4_4QNone_Bool_bufchan_buf[0] ? lizzieLet4_4QNone_Bool_bufchan_buf :
                                              lizzieLet4_4QNone_Bool_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_4QNone_Bool_1_argbuf_r && lizzieLet4_4QNone_Bool_bufchan_buf[0]))
        lizzieLet4_4QNone_Bool_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_4QNone_Bool_1_argbuf_r) && (! lizzieLet4_4QNone_Bool_bufchan_buf[0])))
        lizzieLet4_4QNone_Bool_bufchan_buf <= lizzieLet4_4QNone_Bool_bufchan_d;
  
  /* demux (Ty QTree_Bool,
       Ty MyBool) : (lizzieLet4_5,QTree_Bool) (vac5_goMux_mux,MyBool) > [(_2,MyBool),
                                                                         (lizzieLet4_5QVal_Bool,MyBool),
                                                                         (lizzieLet4_5QNode_Bool,MyBool),
                                                                         (_1,MyBool)] */
  logic [3:0] vac5_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet4_5_d[0] && vac5_goMux_mux_d[0]))
      unique case (lizzieLet4_5_d[2:1])
        2'd0: vac5_goMux_mux_onehotd = 4'd1;
        2'd1: vac5_goMux_mux_onehotd = 4'd2;
        2'd2: vac5_goMux_mux_onehotd = 4'd4;
        2'd3: vac5_goMux_mux_onehotd = 4'd8;
        default: vac5_goMux_mux_onehotd = 4'd0;
      endcase
    else vac5_goMux_mux_onehotd = 4'd0;
  assign _2_d = {vac5_goMux_mux_d[1:1], vac5_goMux_mux_onehotd[0]};
  assign lizzieLet4_5QVal_Bool_d = {vac5_goMux_mux_d[1:1],
                                    vac5_goMux_mux_onehotd[1]};
  assign lizzieLet4_5QNode_Bool_d = {vac5_goMux_mux_d[1:1],
                                     vac5_goMux_mux_onehotd[2]};
  assign _1_d = {vac5_goMux_mux_d[1:1], vac5_goMux_mux_onehotd[3]};
  assign vac5_goMux_mux_r = (| (vac5_goMux_mux_onehotd & {_1_r,
                                                          lizzieLet4_5QNode_Bool_r,
                                                          lizzieLet4_5QVal_Bool_r,
                                                          _2_r}));
  assign lizzieLet4_5_r = vac5_goMux_mux_r;
  
  /* fork (Ty MyBool) : (lizzieLet4_5QNode_Bool,MyBool) > [(lizzieLet4_5QNode_Bool_1,MyBool),
                                                      (lizzieLet4_5QNode_Bool_2,MyBool)] */
  logic [1:0] lizzieLet4_5QNode_Bool_emitted;
  logic [1:0] lizzieLet4_5QNode_Bool_done;
  assign lizzieLet4_5QNode_Bool_1_d = {lizzieLet4_5QNode_Bool_d[1:1],
                                       (lizzieLet4_5QNode_Bool_d[0] && (! lizzieLet4_5QNode_Bool_emitted[0]))};
  assign lizzieLet4_5QNode_Bool_2_d = {lizzieLet4_5QNode_Bool_d[1:1],
                                       (lizzieLet4_5QNode_Bool_d[0] && (! lizzieLet4_5QNode_Bool_emitted[1]))};
  assign lizzieLet4_5QNode_Bool_done = (lizzieLet4_5QNode_Bool_emitted | ({lizzieLet4_5QNode_Bool_2_d[0],
                                                                           lizzieLet4_5QNode_Bool_1_d[0]} & {lizzieLet4_5QNode_Bool_2_r,
                                                                                                             lizzieLet4_5QNode_Bool_1_r}));
  assign lizzieLet4_5QNode_Bool_r = (& lizzieLet4_5QNode_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_5QNode_Bool_emitted <= 2'd0;
    else
      lizzieLet4_5QNode_Bool_emitted <= (lizzieLet4_5QNode_Bool_r ? 2'd0 :
                                         lizzieLet4_5QNode_Bool_done);
  
  /* buf (Ty MyBool) : (lizzieLet4_5QNode_Bool_2,MyBool) > (lizzieLet4_5QNode_Bool_2_argbuf,MyBool) */
  MyBool_t lizzieLet4_5QNode_Bool_2_bufchan_d;
  logic lizzieLet4_5QNode_Bool_2_bufchan_r;
  assign lizzieLet4_5QNode_Bool_2_r = ((! lizzieLet4_5QNode_Bool_2_bufchan_d[0]) || lizzieLet4_5QNode_Bool_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QNode_Bool_2_bufchan_d <= {1'd0, 1'd0};
    else
      if (lizzieLet4_5QNode_Bool_2_r)
        lizzieLet4_5QNode_Bool_2_bufchan_d <= lizzieLet4_5QNode_Bool_2_d;
  MyBool_t lizzieLet4_5QNode_Bool_2_bufchan_buf;
  assign lizzieLet4_5QNode_Bool_2_bufchan_r = (! lizzieLet4_5QNode_Bool_2_bufchan_buf[0]);
  assign lizzieLet4_5QNode_Bool_2_argbuf_d = (lizzieLet4_5QNode_Bool_2_bufchan_buf[0] ? lizzieLet4_5QNode_Bool_2_bufchan_buf :
                                              lizzieLet4_5QNode_Bool_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QNode_Bool_2_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((lizzieLet4_5QNode_Bool_2_argbuf_r && lizzieLet4_5QNode_Bool_2_bufchan_buf[0]))
        lizzieLet4_5QNode_Bool_2_bufchan_buf <= {1'd0, 1'd0};
      else if (((! lizzieLet4_5QNode_Bool_2_argbuf_r) && (! lizzieLet4_5QNode_Bool_2_bufchan_buf[0])))
        lizzieLet4_5QNode_Bool_2_bufchan_buf <= lizzieLet4_5QNode_Bool_2_bufchan_d;
  
  /* fork (Ty MyBool) : (lizzieLet4_5QVal_Bool,MyBool) > [(lizzieLet4_5QVal_Bool_1,MyBool),
                                                     (lizzieLet4_5QVal_Bool_2,MyBool),
                                                     (lizzieLet4_5QVal_Bool_3,MyBool)] */
  logic [2:0] lizzieLet4_5QVal_Bool_emitted;
  logic [2:0] lizzieLet4_5QVal_Bool_done;
  assign lizzieLet4_5QVal_Bool_1_d = {lizzieLet4_5QVal_Bool_d[1:1],
                                      (lizzieLet4_5QVal_Bool_d[0] && (! lizzieLet4_5QVal_Bool_emitted[0]))};
  assign lizzieLet4_5QVal_Bool_2_d = {lizzieLet4_5QVal_Bool_d[1:1],
                                      (lizzieLet4_5QVal_Bool_d[0] && (! lizzieLet4_5QVal_Bool_emitted[1]))};
  assign lizzieLet4_5QVal_Bool_3_d = {lizzieLet4_5QVal_Bool_d[1:1],
                                      (lizzieLet4_5QVal_Bool_d[0] && (! lizzieLet4_5QVal_Bool_emitted[2]))};
  assign lizzieLet4_5QVal_Bool_done = (lizzieLet4_5QVal_Bool_emitted | ({lizzieLet4_5QVal_Bool_3_d[0],
                                                                         lizzieLet4_5QVal_Bool_2_d[0],
                                                                         lizzieLet4_5QVal_Bool_1_d[0]} & {lizzieLet4_5QVal_Bool_3_r,
                                                                                                          lizzieLet4_5QVal_Bool_2_r,
                                                                                                          lizzieLet4_5QVal_Bool_1_r}));
  assign lizzieLet4_5QVal_Bool_r = (& lizzieLet4_5QVal_Bool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_5QVal_Bool_emitted <= 3'd0;
    else
      lizzieLet4_5QVal_Bool_emitted <= (lizzieLet4_5QVal_Bool_r ? 3'd0 :
                                        lizzieLet4_5QVal_Bool_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (lizzieLet4_5QVal_Bool_1,MyBool) (lizzieLet4_3QVal_Bool,Go) > [(lizzieLet4_5QVal_Bool_1MyFalse,Go),
                                                                               (lizzieLet4_5QVal_Bool_1MyTrue,Go)] */
  logic [1:0] lizzieLet4_3QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet4_5QVal_Bool_1_d[0] && lizzieLet4_3QVal_Bool_d[0]))
      unique case (lizzieLet4_5QVal_Bool_1_d[1:1])
        1'd0: lizzieLet4_3QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet4_3QVal_Bool_onehotd = 2'd2;
        default: lizzieLet4_3QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet4_3QVal_Bool_onehotd = 2'd0;
  assign lizzieLet4_5QVal_Bool_1MyFalse_d = lizzieLet4_3QVal_Bool_onehotd[0];
  assign lizzieLet4_5QVal_Bool_1MyTrue_d = lizzieLet4_3QVal_Bool_onehotd[1];
  assign lizzieLet4_3QVal_Bool_r = (| (lizzieLet4_3QVal_Bool_onehotd & {lizzieLet4_5QVal_Bool_1MyTrue_r,
                                                                        lizzieLet4_5QVal_Bool_1MyFalse_r}));
  assign lizzieLet4_5QVal_Bool_1_r = lizzieLet4_3QVal_Bool_r;
  
  /* fork (Ty Go) : (lizzieLet4_5QVal_Bool_1MyFalse,Go) > [(lizzieLet4_5QVal_Bool_1MyFalse_1,Go),
                                                      (lizzieLet4_5QVal_Bool_1MyFalse_2,Go)] */
  logic [1:0] lizzieLet4_5QVal_Bool_1MyFalse_emitted;
  logic [1:0] lizzieLet4_5QVal_Bool_1MyFalse_done;
  assign lizzieLet4_5QVal_Bool_1MyFalse_1_d = (lizzieLet4_5QVal_Bool_1MyFalse_d[0] && (! lizzieLet4_5QVal_Bool_1MyFalse_emitted[0]));
  assign lizzieLet4_5QVal_Bool_1MyFalse_2_d = (lizzieLet4_5QVal_Bool_1MyFalse_d[0] && (! lizzieLet4_5QVal_Bool_1MyFalse_emitted[1]));
  assign lizzieLet4_5QVal_Bool_1MyFalse_done = (lizzieLet4_5QVal_Bool_1MyFalse_emitted | ({lizzieLet4_5QVal_Bool_1MyFalse_2_d[0],
                                                                                           lizzieLet4_5QVal_Bool_1MyFalse_1_d[0]} & {lizzieLet4_5QVal_Bool_1MyFalse_2_r,
                                                                                                                                     lizzieLet4_5QVal_Bool_1MyFalse_1_r}));
  assign lizzieLet4_5QVal_Bool_1MyFalse_r = (& lizzieLet4_5QVal_Bool_1MyFalse_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_1MyFalse_emitted <= 2'd0;
    else
      lizzieLet4_5QVal_Bool_1MyFalse_emitted <= (lizzieLet4_5QVal_Bool_1MyFalse_r ? 2'd0 :
                                                 lizzieLet4_5QVal_Bool_1MyFalse_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet4_5QVal_Bool_1MyFalse_1,Go)] > (lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat,QTree_Nat) */
  assign lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet4_5QVal_Bool_1MyFalse_1_d[0]}), lizzieLet4_5QVal_Bool_1MyFalse_1_d);
  assign {lizzieLet4_5QVal_Bool_1MyFalse_1_r} = {1 {(lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_r && lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat,QTree_Nat) > (lizzieLet6_1_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_r;
  assign lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_r = ((! lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d[0]) || lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d <= {66'd0,
                                                              1'd0};
    else
      if (lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_r)
        lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d <= lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_d;
  QTree_Nat_t lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_r = (! lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet6_1_1_argbuf_d = (lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf :
                                    lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                1'd0};
    else
      if ((lizzieLet6_1_1_argbuf_r && lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                  1'd0};
      else if (((! lizzieLet6_1_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_buf <= lizzieLet4_5QVal_Bool_1MyFalse_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_5QVal_Bool_1MyFalse_2,Go) > (lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf,Go) */
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d;
  logic lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_r;
  assign lizzieLet4_5QVal_Bool_1MyFalse_2_r = ((! lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d[0]) || lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_5QVal_Bool_1MyFalse_2_r)
        lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d <= lizzieLet4_5QVal_Bool_1MyFalse_2_d;
  Go_t lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_r = (! lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_d = (lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf :
                                                      lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_r && lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_5QVal_Bool_1MyFalse_2_argbuf_r) && (! lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_buf <= lizzieLet4_5QVal_Bool_1MyFalse_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTf') : (lizzieLet4_5QVal_Bool_2,MyBool) (lizzieLet4_4QVal_Bool,Pointer_CTf') > [(lizzieLet4_5QVal_Bool_2MyFalse,Pointer_CTf'),
                                                                                                   (lizzieLet4_5QVal_Bool_2MyTrue,Pointer_CTf')] */
  logic [1:0] lizzieLet4_4QVal_Bool_onehotd;
  always_comb
    if ((lizzieLet4_5QVal_Bool_2_d[0] && lizzieLet4_4QVal_Bool_d[0]))
      unique case (lizzieLet4_5QVal_Bool_2_d[1:1])
        1'd0: lizzieLet4_4QVal_Bool_onehotd = 2'd1;
        1'd1: lizzieLet4_4QVal_Bool_onehotd = 2'd2;
        default: lizzieLet4_4QVal_Bool_onehotd = 2'd0;
      endcase
    else lizzieLet4_4QVal_Bool_onehotd = 2'd0;
  assign lizzieLet4_5QVal_Bool_2MyFalse_d = {lizzieLet4_4QVal_Bool_d[16:1],
                                             lizzieLet4_4QVal_Bool_onehotd[0]};
  assign lizzieLet4_5QVal_Bool_2MyTrue_d = {lizzieLet4_4QVal_Bool_d[16:1],
                                            lizzieLet4_4QVal_Bool_onehotd[1]};
  assign lizzieLet4_4QVal_Bool_r = (| (lizzieLet4_4QVal_Bool_onehotd & {lizzieLet4_5QVal_Bool_2MyTrue_r,
                                                                        lizzieLet4_5QVal_Bool_2MyFalse_r}));
  assign lizzieLet4_5QVal_Bool_2_r = lizzieLet4_4QVal_Bool_r;
  
  /* buf (Ty Pointer_CTf') : (lizzieLet4_5QVal_Bool_2MyFalse,Pointer_CTf') > (lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d;
  logic lizzieLet4_5QVal_Bool_2MyFalse_bufchan_r;
  assign lizzieLet4_5QVal_Bool_2MyFalse_r = ((! lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d[0]) || lizzieLet4_5QVal_Bool_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_5QVal_Bool_2MyFalse_r)
        lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d <= lizzieLet4_5QVal_Bool_2MyFalse_d;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_2MyFalse_bufchan_r = (! lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_d = (lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf :
                                                      lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_r && lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_5QVal_Bool_2MyFalse_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_2MyFalse_bufchan_buf <= lizzieLet4_5QVal_Bool_2MyFalse_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty MyBool) : (lizzieLet4_5QVal_Bool_3,MyBool) (v'ac6_destruct,MyBool) > [(_0,MyBool),
                                                                                (lizzieLet4_5QVal_Bool_3MyTrue,MyBool)] */
  logic [1:0] \v'ac6_destruct_onehotd ;
  always_comb
    if ((lizzieLet4_5QVal_Bool_3_d[0] && \v'ac6_destruct_d [0]))
      unique case (lizzieLet4_5QVal_Bool_3_d[1:1])
        1'd0: \v'ac6_destruct_onehotd  = 2'd1;
        1'd1: \v'ac6_destruct_onehotd  = 2'd2;
        default: \v'ac6_destruct_onehotd  = 2'd0;
      endcase
    else \v'ac6_destruct_onehotd  = 2'd0;
  assign _0_d = {\v'ac6_destruct_d [1:1],
                 \v'ac6_destruct_onehotd [0]};
  assign lizzieLet4_5QVal_Bool_3MyTrue_d = {\v'ac6_destruct_d [1:1],
                                            \v'ac6_destruct_onehotd [1]};
  assign \v'ac6_destruct_r  = (| (\v'ac6_destruct_onehotd  & {lizzieLet4_5QVal_Bool_3MyTrue_r,
                                                              _0_r}));
  assign lizzieLet4_5QVal_Bool_3_r = \v'ac6_destruct_r ;
  
  /* fork (Ty MyBool) : (lizzieLet4_5QVal_Bool_3MyTrue,MyBool) > [(lizzieLet4_5QVal_Bool_3MyTrue_1,MyBool),
                                                             (lizzieLet4_5QVal_Bool_3MyTrue_2,MyBool)] */
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_emitted;
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_done;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1_d = {lizzieLet4_5QVal_Bool_3MyTrue_d[1:1],
                                              (lizzieLet4_5QVal_Bool_3MyTrue_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_emitted[0]))};
  assign lizzieLet4_5QVal_Bool_3MyTrue_2_d = {lizzieLet4_5QVal_Bool_3MyTrue_d[1:1],
                                              (lizzieLet4_5QVal_Bool_3MyTrue_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_emitted[1]))};
  assign lizzieLet4_5QVal_Bool_3MyTrue_done = (lizzieLet4_5QVal_Bool_3MyTrue_emitted | ({lizzieLet4_5QVal_Bool_3MyTrue_2_d[0],
                                                                                         lizzieLet4_5QVal_Bool_3MyTrue_1_d[0]} & {lizzieLet4_5QVal_Bool_3MyTrue_2_r,
                                                                                                                                  lizzieLet4_5QVal_Bool_3MyTrue_1_r}));
  assign lizzieLet4_5QVal_Bool_3MyTrue_r = (& lizzieLet4_5QVal_Bool_3MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_5QVal_Bool_3MyTrue_emitted <= 2'd0;
    else
      lizzieLet4_5QVal_Bool_3MyTrue_emitted <= (lizzieLet4_5QVal_Bool_3MyTrue_r ? 2'd0 :
                                                lizzieLet4_5QVal_Bool_3MyTrue_done);
  
  /* demux (Ty MyBool,
       Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1,MyBool) (lizzieLet4_5QVal_Bool_1MyTrue,Go) > [(lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse,Go),
                                                                                               (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue,Go)] */
  logic [1:0] lizzieLet4_5QVal_Bool_1MyTrue_onehotd;
  always_comb
    if ((lizzieLet4_5QVal_Bool_3MyTrue_1_d[0] && lizzieLet4_5QVal_Bool_1MyTrue_d[0]))
      unique case (lizzieLet4_5QVal_Bool_3MyTrue_1_d[1:1])
        1'd0: lizzieLet4_5QVal_Bool_1MyTrue_onehotd = 2'd1;
        1'd1: lizzieLet4_5QVal_Bool_1MyTrue_onehotd = 2'd2;
        default: lizzieLet4_5QVal_Bool_1MyTrue_onehotd = 2'd0;
      endcase
    else lizzieLet4_5QVal_Bool_1MyTrue_onehotd = 2'd0;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_d = lizzieLet4_5QVal_Bool_1MyTrue_onehotd[0];
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_d = lizzieLet4_5QVal_Bool_1MyTrue_onehotd[1];
  assign lizzieLet4_5QVal_Bool_1MyTrue_r = (| (lizzieLet4_5QVal_Bool_1MyTrue_onehotd & {lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_r,
                                                                                        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_r}));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1_r = lizzieLet4_5QVal_Bool_1MyTrue_r;
  
  /* fork (Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse,Go) > [(lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1,Go),
                                                              (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2,Go)] */
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted;
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_done;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted[0]));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted[1]));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_done = (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted | ({lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_d[0],
                                                                                                           lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_d[0]} & {lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_r,
                                                                                                                                                             lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_r}));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_r = (& lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted <= 2'd0;
    else
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_emitted <= (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_r ? 2'd0 :
                                                         lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_done);
  
  /* dcon (Ty QTree_Nat,
      Dcon QNone_Nat) : [(lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1,Go)] > (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat,QTree_Nat) */
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_d = QNone_Nat_dc((& {lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_d[0]}), lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_d);
  assign {lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1_r} = {1 {(lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_r && lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_d[0])}};
  
  /* buf (Ty QTree_Nat) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat,QTree_Nat) > (lizzieLet7_1_1_argbuf,QTree_Nat) */
  QTree_Nat_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d <= {66'd0,
                                                                      1'd0};
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_r)
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_d;
  QTree_Nat_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf[0]);
  assign lizzieLet7_1_1_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf :
                                    lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                        1'd0};
    else
      if ((lizzieLet7_1_1_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf <= {66'd0,
                                                                          1'd0};
      else if (((! lizzieLet7_1_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_1QNone_Nat_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2,Go) > (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf,Go) */
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_r)
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_d;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf :
                                                              lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_1MyFalse_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue,Go) > [(lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1,Go),
                                                             (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2,Go)] */
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted;
  logic [1:0] lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_done;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted[0]));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_d[0] && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted[1]));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_done = (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted | ({lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_d[0],
                                                                                                         lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_d[0]} & {lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_r,
                                                                                                                                                          lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_r}));
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_r = (& lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted <= 2'd0;
    else
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_emitted <= (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_r ? 2'd0 :
                                                        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_done);
  
  /* buf (Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1,Go) > (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf,Go) */
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_r)
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_d;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf :
                                                             lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_bufchan_d;
  
  /* dcon (Ty TupGo,
      Dcon TupGo) : [(lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf,Go)] > (lvl1rrw-45TupGo_1,TupGo) */
  assign \lvl1rrw-45TupGo_1_d  = TupGo_dc((& {lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_d[0]}), lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_d);
  assign {lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_1_argbuf_r} = {1 {(\lvl1rrw-45TupGo_1_r  && \lvl1rrw-45TupGo_1_d [0])}};
  
  /* buf (Ty Go) : (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2,Go) > (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf,Go) */
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_r)
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_d;
  Go_t lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf :
                                                             lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTf') : (lizzieLet4_5QVal_Bool_3MyTrue_2,MyBool) (lizzieLet4_5QVal_Bool_2MyTrue,Pointer_CTf') > [(lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse,Pointer_CTf'),
                                                                                                                   (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue,Pointer_CTf')] */
  logic [1:0] lizzieLet4_5QVal_Bool_2MyTrue_onehotd;
  always_comb
    if ((lizzieLet4_5QVal_Bool_3MyTrue_2_d[0] && lizzieLet4_5QVal_Bool_2MyTrue_d[0]))
      unique case (lizzieLet4_5QVal_Bool_3MyTrue_2_d[1:1])
        1'd0: lizzieLet4_5QVal_Bool_2MyTrue_onehotd = 2'd1;
        1'd1: lizzieLet4_5QVal_Bool_2MyTrue_onehotd = 2'd2;
        default: lizzieLet4_5QVal_Bool_2MyTrue_onehotd = 2'd0;
      endcase
    else lizzieLet4_5QVal_Bool_2MyTrue_onehotd = 2'd0;
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_d = {lizzieLet4_5QVal_Bool_2MyTrue_d[16:1],
                                                     lizzieLet4_5QVal_Bool_2MyTrue_onehotd[0]};
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_d = {lizzieLet4_5QVal_Bool_2MyTrue_d[16:1],
                                                    lizzieLet4_5QVal_Bool_2MyTrue_onehotd[1]};
  assign lizzieLet4_5QVal_Bool_2MyTrue_r = (| (lizzieLet4_5QVal_Bool_2MyTrue_onehotd & {lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_r,
                                                                                        lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_r}));
  assign lizzieLet4_5QVal_Bool_3MyTrue_2_r = lizzieLet4_5QVal_Bool_2MyTrue_r;
  
  /* buf (Ty Pointer_CTf') : (lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse,Pointer_CTf') > (lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_r)
        lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_d;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf :
                                                              lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_2MyFalse_bufchan_d;
  
  /* buf (Ty Pointer_CTf') : (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue,Pointer_CTf') > (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d;
  logic lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_r;
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_r = ((! lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d[0]) || lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_r)
        lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d <= lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_d;
  \Pointer_CTf'_t  lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf;
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_r = (! lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf[0]);
  assign lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_d = (lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf[0] ? lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf :
                                                             lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_r && lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf[0]))
        lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_1_argbuf_r) && (! lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf[0])))
        lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_buf <= lizzieLet4_5QVal_Bool_3MyTrue_2MyTrue_bufchan_d;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvl1rrw-45TupGo_1,TupGo) > [(lvl1rrw-45TupGogo_6,Go)] */
  assign \lvl1rrw-45TupGogo_6_d  = \lvl1rrw-45TupGo_1_d [0];
  assign \lvl1rrw-45TupGo_1_r  = \lvl1rrw-45TupGogo_6_r ;
  
  /* buf (Ty Go) : (lvl1rrw-45TupGogo_6,Go) > (go_6_1_argbuf,Go) */
  Go_t \lvl1rrw-45TupGogo_6_bufchan_d ;
  logic \lvl1rrw-45TupGogo_6_bufchan_r ;
  assign \lvl1rrw-45TupGogo_6_r  = ((! \lvl1rrw-45TupGogo_6_bufchan_d [0]) || \lvl1rrw-45TupGogo_6_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl1rrw-45TupGogo_6_bufchan_d  <= 1'd0;
    else
      if (\lvl1rrw-45TupGogo_6_r )
        \lvl1rrw-45TupGogo_6_bufchan_d  <= \lvl1rrw-45TupGogo_6_d ;
  Go_t \lvl1rrw-45TupGogo_6_bufchan_buf ;
  assign \lvl1rrw-45TupGogo_6_bufchan_r  = (! \lvl1rrw-45TupGogo_6_bufchan_buf [0]);
  assign go_6_1_argbuf_d = (\lvl1rrw-45TupGogo_6_bufchan_buf [0] ? \lvl1rrw-45TupGogo_6_bufchan_buf  :
                            \lvl1rrw-45TupGogo_6_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \lvl1rrw-45TupGogo_6_bufchan_buf  <= 1'd0;
    else
      if ((go_6_1_argbuf_r && \lvl1rrw-45TupGogo_6_bufchan_buf [0]))
        \lvl1rrw-45TupGogo_6_bufchan_buf  <= 1'd0;
      else if (((! go_6_1_argbuf_r) && (! \lvl1rrw-45TupGogo_6_bufchan_buf [0])))
        \lvl1rrw-45TupGogo_6_bufchan_buf  <= \lvl1rrw-45TupGogo_6_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Nat) : (lvl1rrw-45_resbuf,Pointer_QTree_Nat) > (lizzieLet8_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t \lvl1rrw-45_resbuf_bufchan_d ;
  logic \lvl1rrw-45_resbuf_bufchan_r ;
  assign \lvl1rrw-45_resbuf_r  = ((! \lvl1rrw-45_resbuf_bufchan_d [0]) || \lvl1rrw-45_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl1rrw-45_resbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\lvl1rrw-45_resbuf_r )
        \lvl1rrw-45_resbuf_bufchan_d  <= \lvl1rrw-45_resbuf_d ;
  Pointer_QTree_Nat_t \lvl1rrw-45_resbuf_bufchan_buf ;
  assign \lvl1rrw-45_resbuf_bufchan_r  = (! \lvl1rrw-45_resbuf_bufchan_buf [0]);
  assign lizzieLet8_1_1_argbuf_d = (\lvl1rrw-45_resbuf_bufchan_buf [0] ? \lvl1rrw-45_resbuf_bufchan_buf  :
                                    \lvl1rrw-45_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \lvl1rrw-45_resbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet8_1_1_argbuf_r && \lvl1rrw-45_resbuf_bufchan_buf [0]))
        \lvl1rrw-45_resbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet8_1_1_argbuf_r) && (! \lvl1rrw-45_resbuf_bufchan_buf [0])))
        \lvl1rrw-45_resbuf_bufchan_buf  <= \lvl1rrw-45_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo,
          Dcon TupGo) : (lvlrrv-44TupGo_1,TupGo) > [(lvlrrv-44TupGogo_7,Go)] */
  assign \lvlrrv-44TupGogo_7_d  = \lvlrrv-44TupGo_1_d [0];
  assign \lvlrrv-44TupGo_1_r  = \lvlrrv-44TupGogo_7_r ;
  
  /* dcon (Ty Nat,
      Dcon Zero) : [(lvlrrv-44TupGogo_7,Go)] > (go_7_1Zero,Nat) */
  assign go_7_1Zero_d = Zero_dc((& {\lvlrrv-44TupGogo_7_d [0]}), \lvlrrv-44TupGogo_7_d );
  assign {\lvlrrv-44TupGogo_7_r } = {1 {(go_7_1Zero_r && go_7_1Zero_d[0])}};
  
  /* dcon (Ty QTree_Nat,
      Dcon QVal_Nat) : [(lvlrrv-44_resbuf,Pointer_Nat)] > (lizzieLet13_1QVal_Nat,QTree_Nat) */
  assign lizzieLet13_1QVal_Nat_d = QVal_Nat_dc((& {\lvlrrv-44_resbuf_d [0]}), \lvlrrv-44_resbuf_d );
  assign {\lvlrrv-44_resbuf_r } = {1 {(lizzieLet13_1QVal_Nat_r && lizzieLet13_1QVal_Nat_d[0])}};
  
  /* buf (Ty Pointer_QTree_Bool) : (m1abX_goMux_mux,Pointer_QTree_Bool) > (m1abX_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m1abX_goMux_mux_bufchan_d;
  logic m1abX_goMux_mux_bufchan_r;
  assign m1abX_goMux_mux_r = ((! m1abX_goMux_mux_bufchan_d[0]) || m1abX_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1abX_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (m1abX_goMux_mux_r)
        m1abX_goMux_mux_bufchan_d <= m1abX_goMux_mux_d;
  Pointer_QTree_Bool_t m1abX_goMux_mux_bufchan_buf;
  assign m1abX_goMux_mux_bufchan_r = (! m1abX_goMux_mux_bufchan_buf[0]);
  assign m1abX_1_argbuf_d = (m1abX_goMux_mux_bufchan_buf[0] ? m1abX_goMux_mux_bufchan_buf :
                             m1abX_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1abX_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m1abX_1_argbuf_r && m1abX_goMux_mux_bufchan_buf[0]))
        m1abX_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m1abX_1_argbuf_r) && (! m1abX_goMux_mux_bufchan_buf[0])))
        m1abX_goMux_mux_bufchan_buf <= m1abX_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (m2abY_2_2,Pointer_QTree_Bool) > (m2abY_2_2_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2abY_2_2_bufchan_d;
  logic m2abY_2_2_bufchan_r;
  assign m2abY_2_2_r = ((! m2abY_2_2_bufchan_d[0]) || m2abY_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_2_2_bufchan_d <= {16'd0, 1'd0};
    else if (m2abY_2_2_r) m2abY_2_2_bufchan_d <= m2abY_2_2_d;
  Pointer_QTree_Bool_t m2abY_2_2_bufchan_buf;
  assign m2abY_2_2_bufchan_r = (! m2abY_2_2_bufchan_buf[0]);
  assign m2abY_2_2_argbuf_d = (m2abY_2_2_bufchan_buf[0] ? m2abY_2_2_bufchan_buf :
                               m2abY_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_2_2_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2abY_2_2_argbuf_r && m2abY_2_2_bufchan_buf[0]))
        m2abY_2_2_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2abY_2_2_argbuf_r) && (! m2abY_2_2_bufchan_buf[0])))
        m2abY_2_2_bufchan_buf <= m2abY_2_2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (m2abY_2_destruct,Pointer_QTree_Bool) > [(m2abY_2_1,Pointer_QTree_Bool),
                                                                        (m2abY_2_2,Pointer_QTree_Bool)] */
  logic [1:0] m2abY_2_destruct_emitted;
  logic [1:0] m2abY_2_destruct_done;
  assign m2abY_2_1_d = {m2abY_2_destruct_d[16:1],
                        (m2abY_2_destruct_d[0] && (! m2abY_2_destruct_emitted[0]))};
  assign m2abY_2_2_d = {m2abY_2_destruct_d[16:1],
                        (m2abY_2_destruct_d[0] && (! m2abY_2_destruct_emitted[1]))};
  assign m2abY_2_destruct_done = (m2abY_2_destruct_emitted | ({m2abY_2_2_d[0],
                                                               m2abY_2_1_d[0]} & {m2abY_2_2_r,
                                                                                  m2abY_2_1_r}));
  assign m2abY_2_destruct_r = (& m2abY_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_2_destruct_emitted <= 2'd0;
    else
      m2abY_2_destruct_emitted <= (m2abY_2_destruct_r ? 2'd0 :
                                   m2abY_2_destruct_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (m2abY_3_2,Pointer_QTree_Bool) > (m2abY_3_2_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2abY_3_2_bufchan_d;
  logic m2abY_3_2_bufchan_r;
  assign m2abY_3_2_r = ((! m2abY_3_2_bufchan_d[0]) || m2abY_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_3_2_bufchan_d <= {16'd0, 1'd0};
    else if (m2abY_3_2_r) m2abY_3_2_bufchan_d <= m2abY_3_2_d;
  Pointer_QTree_Bool_t m2abY_3_2_bufchan_buf;
  assign m2abY_3_2_bufchan_r = (! m2abY_3_2_bufchan_buf[0]);
  assign m2abY_3_2_argbuf_d = (m2abY_3_2_bufchan_buf[0] ? m2abY_3_2_bufchan_buf :
                               m2abY_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_3_2_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2abY_3_2_argbuf_r && m2abY_3_2_bufchan_buf[0]))
        m2abY_3_2_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2abY_3_2_argbuf_r) && (! m2abY_3_2_bufchan_buf[0])))
        m2abY_3_2_bufchan_buf <= m2abY_3_2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Bool) : (m2abY_3_destruct,Pointer_QTree_Bool) > [(m2abY_3_1,Pointer_QTree_Bool),
                                                                        (m2abY_3_2,Pointer_QTree_Bool)] */
  logic [1:0] m2abY_3_destruct_emitted;
  logic [1:0] m2abY_3_destruct_done;
  assign m2abY_3_1_d = {m2abY_3_destruct_d[16:1],
                        (m2abY_3_destruct_d[0] && (! m2abY_3_destruct_emitted[0]))};
  assign m2abY_3_2_d = {m2abY_3_destruct_d[16:1],
                        (m2abY_3_destruct_d[0] && (! m2abY_3_destruct_emitted[1]))};
  assign m2abY_3_destruct_done = (m2abY_3_destruct_emitted | ({m2abY_3_2_d[0],
                                                               m2abY_3_1_d[0]} & {m2abY_3_2_r,
                                                                                  m2abY_3_1_r}));
  assign m2abY_3_destruct_r = (& m2abY_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_3_destruct_emitted <= 2'd0;
    else
      m2abY_3_destruct_emitted <= (m2abY_3_destruct_r ? 2'd0 :
                                   m2abY_3_destruct_done);
  
  /* buf (Ty Pointer_QTree_Bool) : (m2abY_4_destruct,Pointer_QTree_Bool) > (m2abY_4_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2abY_4_destruct_bufchan_d;
  logic m2abY_4_destruct_bufchan_r;
  assign m2abY_4_destruct_r = ((! m2abY_4_destruct_bufchan_d[0]) || m2abY_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_4_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (m2abY_4_destruct_r)
        m2abY_4_destruct_bufchan_d <= m2abY_4_destruct_d;
  Pointer_QTree_Bool_t m2abY_4_destruct_bufchan_buf;
  assign m2abY_4_destruct_bufchan_r = (! m2abY_4_destruct_bufchan_buf[0]);
  assign m2abY_4_1_argbuf_d = (m2abY_4_destruct_bufchan_buf[0] ? m2abY_4_destruct_bufchan_buf :
                               m2abY_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2abY_4_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2abY_4_1_argbuf_r && m2abY_4_destruct_bufchan_buf[0]))
        m2abY_4_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2abY_4_1_argbuf_r) && (! m2abY_4_destruct_bufchan_buf[0])))
        m2abY_4_destruct_bufchan_buf <= m2abY_4_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (m2ac4_goMux_mux,Pointer_QTree_Bool) > (m2ac4_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t m2ac4_goMux_mux_bufchan_d;
  logic m2ac4_goMux_mux_bufchan_r;
  assign m2ac4_goMux_mux_r = ((! m2ac4_goMux_mux_bufchan_d[0]) || m2ac4_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2ac4_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (m2ac4_goMux_mux_r)
        m2ac4_goMux_mux_bufchan_d <= m2ac4_goMux_mux_d;
  Pointer_QTree_Bool_t m2ac4_goMux_mux_bufchan_buf;
  assign m2ac4_goMux_mux_bufchan_r = (! m2ac4_goMux_mux_bufchan_buf[0]);
  assign m2ac4_1_argbuf_d = (m2ac4_goMux_mux_bufchan_buf[0] ? m2ac4_goMux_mux_bufchan_buf :
                             m2ac4_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2ac4_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2ac4_1_argbuf_r && m2ac4_goMux_mux_bufchan_buf[0]))
        m2ac4_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2ac4_1_argbuf_r) && (! m2ac4_goMux_mux_bufchan_buf[0])))
        m2ac4_goMux_mux_bufchan_buf <= m2ac4_goMux_mux_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q1ac0_3_destruct,Pointer_QTree_Bool) > (q1ac0_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1ac0_3_destruct_bufchan_d;
  logic q1ac0_3_destruct_bufchan_r;
  assign q1ac0_3_destruct_r = ((! q1ac0_3_destruct_bufchan_d[0]) || q1ac0_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1ac0_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1ac0_3_destruct_r)
        q1ac0_3_destruct_bufchan_d <= q1ac0_3_destruct_d;
  Pointer_QTree_Bool_t q1ac0_3_destruct_bufchan_buf;
  assign q1ac0_3_destruct_bufchan_r = (! q1ac0_3_destruct_bufchan_buf[0]);
  assign q1ac0_3_1_argbuf_d = (q1ac0_3_destruct_bufchan_buf[0] ? q1ac0_3_destruct_bufchan_buf :
                               q1ac0_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1ac0_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1ac0_3_1_argbuf_r && q1ac0_3_destruct_bufchan_buf[0]))
        q1ac0_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1ac0_3_1_argbuf_r) && (! q1ac0_3_destruct_bufchan_buf[0])))
        q1ac0_3_destruct_bufchan_buf <= q1ac0_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q1ac7_3_destruct,Pointer_QTree_Bool) > (q1ac7_3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q1ac7_3_destruct_bufchan_d;
  logic q1ac7_3_destruct_bufchan_r;
  assign q1ac7_3_destruct_r = ((! q1ac7_3_destruct_bufchan_d[0]) || q1ac7_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1ac7_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1ac7_3_destruct_r)
        q1ac7_3_destruct_bufchan_d <= q1ac7_3_destruct_d;
  Pointer_QTree_Bool_t q1ac7_3_destruct_bufchan_buf;
  assign q1ac7_3_destruct_bufchan_r = (! q1ac7_3_destruct_bufchan_buf[0]);
  assign q1ac7_3_1_argbuf_d = (q1ac7_3_destruct_bufchan_buf[0] ? q1ac7_3_destruct_bufchan_buf :
                               q1ac7_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1ac7_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1ac7_3_1_argbuf_r && q1ac7_3_destruct_bufchan_buf[0]))
        q1ac7_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1ac7_3_1_argbuf_r) && (! q1ac7_3_destruct_bufchan_buf[0])))
        q1ac7_3_destruct_bufchan_buf <= q1ac7_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2ac1_2_destruct,Pointer_QTree_Bool) > (q2ac1_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2ac1_2_destruct_bufchan_d;
  logic q2ac1_2_destruct_bufchan_r;
  assign q2ac1_2_destruct_r = ((! q2ac1_2_destruct_bufchan_d[0]) || q2ac1_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2ac1_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2ac1_2_destruct_r)
        q2ac1_2_destruct_bufchan_d <= q2ac1_2_destruct_d;
  Pointer_QTree_Bool_t q2ac1_2_destruct_bufchan_buf;
  assign q2ac1_2_destruct_bufchan_r = (! q2ac1_2_destruct_bufchan_buf[0]);
  assign q2ac1_2_1_argbuf_d = (q2ac1_2_destruct_bufchan_buf[0] ? q2ac1_2_destruct_bufchan_buf :
                               q2ac1_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2ac1_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2ac1_2_1_argbuf_r && q2ac1_2_destruct_bufchan_buf[0]))
        q2ac1_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2ac1_2_1_argbuf_r) && (! q2ac1_2_destruct_bufchan_buf[0])))
        q2ac1_2_destruct_bufchan_buf <= q2ac1_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q2ac8_2_destruct,Pointer_QTree_Bool) > (q2ac8_2_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q2ac8_2_destruct_bufchan_d;
  logic q2ac8_2_destruct_bufchan_r;
  assign q2ac8_2_destruct_r = ((! q2ac8_2_destruct_bufchan_d[0]) || q2ac8_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2ac8_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2ac8_2_destruct_r)
        q2ac8_2_destruct_bufchan_d <= q2ac8_2_destruct_d;
  Pointer_QTree_Bool_t q2ac8_2_destruct_bufchan_buf;
  assign q2ac8_2_destruct_bufchan_r = (! q2ac8_2_destruct_bufchan_buf[0]);
  assign q2ac8_2_1_argbuf_d = (q2ac8_2_destruct_bufchan_buf[0] ? q2ac8_2_destruct_bufchan_buf :
                               q2ac8_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2ac8_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2ac8_2_1_argbuf_r && q2ac8_2_destruct_bufchan_buf[0]))
        q2ac8_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2ac8_2_1_argbuf_r) && (! q2ac8_2_destruct_bufchan_buf[0])))
        q2ac8_2_destruct_bufchan_buf <= q2ac8_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3ac2_1_destruct,Pointer_QTree_Bool) > (q3ac2_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3ac2_1_destruct_bufchan_d;
  logic q3ac2_1_destruct_bufchan_r;
  assign q3ac2_1_destruct_r = ((! q3ac2_1_destruct_bufchan_d[0]) || q3ac2_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3ac2_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3ac2_1_destruct_r)
        q3ac2_1_destruct_bufchan_d <= q3ac2_1_destruct_d;
  Pointer_QTree_Bool_t q3ac2_1_destruct_bufchan_buf;
  assign q3ac2_1_destruct_bufchan_r = (! q3ac2_1_destruct_bufchan_buf[0]);
  assign q3ac2_1_1_argbuf_d = (q3ac2_1_destruct_bufchan_buf[0] ? q3ac2_1_destruct_bufchan_buf :
                               q3ac2_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3ac2_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3ac2_1_1_argbuf_r && q3ac2_1_destruct_bufchan_buf[0]))
        q3ac2_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3ac2_1_1_argbuf_r) && (! q3ac2_1_destruct_bufchan_buf[0])))
        q3ac2_1_destruct_bufchan_buf <= q3ac2_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q3ac9_1_destruct,Pointer_QTree_Bool) > (q3ac9_1_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q3ac9_1_destruct_bufchan_d;
  logic q3ac9_1_destruct_bufchan_r;
  assign q3ac9_1_destruct_r = ((! q3ac9_1_destruct_bufchan_d[0]) || q3ac9_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3ac9_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3ac9_1_destruct_r)
        q3ac9_1_destruct_bufchan_d <= q3ac9_1_destruct_d;
  Pointer_QTree_Bool_t q3ac9_1_destruct_bufchan_buf;
  assign q3ac9_1_destruct_bufchan_r = (! q3ac9_1_destruct_bufchan_buf[0]);
  assign q3ac9_1_1_argbuf_d = (q3ac9_1_destruct_bufchan_buf[0] ? q3ac9_1_destruct_bufchan_buf :
                               q3ac9_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3ac9_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3ac9_1_1_argbuf_r && q3ac9_1_destruct_bufchan_buf[0]))
        q3ac9_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3ac9_1_1_argbuf_r) && (! q3ac9_1_destruct_bufchan_buf[0])))
        q3ac9_1_destruct_bufchan_buf <= q3ac9_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q4ac3_destruct,Pointer_QTree_Bool) > (q4ac3_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q4ac3_destruct_bufchan_d;
  logic q4ac3_destruct_bufchan_r;
  assign q4ac3_destruct_r = ((! q4ac3_destruct_bufchan_d[0]) || q4ac3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4ac3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q4ac3_destruct_r) q4ac3_destruct_bufchan_d <= q4ac3_destruct_d;
  Pointer_QTree_Bool_t q4ac3_destruct_bufchan_buf;
  assign q4ac3_destruct_bufchan_r = (! q4ac3_destruct_bufchan_buf[0]);
  assign q4ac3_1_argbuf_d = (q4ac3_destruct_bufchan_buf[0] ? q4ac3_destruct_bufchan_buf :
                             q4ac3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4ac3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q4ac3_1_argbuf_r && q4ac3_destruct_bufchan_buf[0]))
        q4ac3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q4ac3_1_argbuf_r) && (! q4ac3_destruct_bufchan_buf[0])))
        q4ac3_destruct_bufchan_buf <= q4ac3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Bool) : (q4aca_destruct,Pointer_QTree_Bool) > (q4aca_1_argbuf,Pointer_QTree_Bool) */
  Pointer_QTree_Bool_t q4aca_destruct_bufchan_d;
  logic q4aca_destruct_bufchan_r;
  assign q4aca_destruct_r = ((! q4aca_destruct_bufchan_d[0]) || q4aca_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4aca_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q4aca_destruct_r) q4aca_destruct_bufchan_d <= q4aca_destruct_d;
  Pointer_QTree_Bool_t q4aca_destruct_bufchan_buf;
  assign q4aca_destruct_bufchan_r = (! q4aca_destruct_bufchan_buf[0]);
  assign q4aca_1_argbuf_d = (q4aca_destruct_bufchan_buf[0] ? q4aca_destruct_bufchan_buf :
                             q4aca_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4aca_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q4aca_1_argbuf_r && q4aca_destruct_bufchan_buf[0]))
        q4aca_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q4aca_1_argbuf_r) && (! q4aca_destruct_bufchan_buf[0])))
        q4aca_destruct_bufchan_buf <= q4aca_destruct_bufchan_d;
  
  /* buf (Ty CTf') : (readPointer_CTf'scfarg_0_1_1_argbuf,CTf') > (readPointer_CTf'scfarg_0_1_1_argbuf_rwb,CTf') */
  \CTf'_t  \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d ;
  logic \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_r ;
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_r  = ((! \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d [0]) || \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d  <= {68'd0, 1'd0};
    else
      if (\readPointer_CTf'scfarg_0_1_1_argbuf_r )
        \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d  <= \readPointer_CTf'scfarg_0_1_1_argbuf_d ;
  \CTf'_t  \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf ;
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_r  = (! \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf [0]);
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d  = (\readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf [0] ? \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf  :
                                                        \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf  <= {68'd0, 1'd0};
    else
      if ((\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_r  && \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf [0]))
        \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf  <= {68'd0, 1'd0};
      else if (((! \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_r ) && (! \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf [0])))
        \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_buf  <= \readPointer_CTf'scfarg_0_1_1_argbuf_bufchan_d ;
  
  /* fork (Ty CTf') : (readPointer_CTf'scfarg_0_1_1_argbuf_rwb,CTf') > [(lizzieLet22_1,CTf'),
                                                                   (lizzieLet22_2,CTf'),
                                                                   (lizzieLet22_3,CTf'),
                                                                   (lizzieLet22_4,CTf')] */
  logic [3:0] \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted ;
  logic [3:0] \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_done ;
  assign lizzieLet22_1_d = {\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [68:1],
                            (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted [0]))};
  assign lizzieLet22_2_d = {\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [68:1],
                            (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted [1]))};
  assign lizzieLet22_3_d = {\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [68:1],
                            (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted [2]))};
  assign lizzieLet22_4_d = {\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [68:1],
                            (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_d [0] && (! \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted [3]))};
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_done  = (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted  | ({lizzieLet22_4_d[0],
                                                                                                                 lizzieLet22_3_d[0],
                                                                                                                 lizzieLet22_2_d[0],
                                                                                                                 lizzieLet22_1_d[0]} & {lizzieLet22_4_r,
                                                                                                                                        lizzieLet22_3_r,
                                                                                                                                        lizzieLet22_2_r,
                                                                                                                                        lizzieLet22_1_r}));
  assign \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_r  = (& \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted  <= 4'd0;
    else
      \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_emitted  <= (\readPointer_CTf'scfarg_0_1_1_argbuf_rwb_r  ? 4'd0 :
                                                            \readPointer_CTf'scfarg_0_1_1_argbuf_rwb_done );
  
  /* buf (Ty CTf) : (readPointer_CTfscfarg_0_1_argbuf,CTf) > (readPointer_CTfscfarg_0_1_argbuf_rwb,CTf) */
  CTf_t readPointer_CTfscfarg_0_1_argbuf_bufchan_d;
  logic readPointer_CTfscfarg_0_1_argbuf_bufchan_r;
  assign readPointer_CTfscfarg_0_1_argbuf_r = ((! readPointer_CTfscfarg_0_1_argbuf_bufchan_d[0]) || readPointer_CTfscfarg_0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_bufchan_d <= {83'd0, 1'd0};
    else
      if (readPointer_CTfscfarg_0_1_argbuf_r)
        readPointer_CTfscfarg_0_1_argbuf_bufchan_d <= readPointer_CTfscfarg_0_1_argbuf_d;
  CTf_t readPointer_CTfscfarg_0_1_argbuf_bufchan_buf;
  assign readPointer_CTfscfarg_0_1_argbuf_bufchan_r = (! readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0]);
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_d = (readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0] ? readPointer_CTfscfarg_0_1_argbuf_bufchan_buf :
                                                   readPointer_CTfscfarg_0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= {83'd0, 1'd0};
    else
      if ((readPointer_CTfscfarg_0_1_argbuf_rwb_r && readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0]))
        readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= {83'd0, 1'd0};
      else if (((! readPointer_CTfscfarg_0_1_argbuf_rwb_r) && (! readPointer_CTfscfarg_0_1_argbuf_bufchan_buf[0])))
        readPointer_CTfscfarg_0_1_argbuf_bufchan_buf <= readPointer_CTfscfarg_0_1_argbuf_bufchan_d;
  
  /* fork (Ty CTf) : (readPointer_CTfscfarg_0_1_argbuf_rwb,CTf) > [(lizzieLet17_1,CTf),
                                                              (lizzieLet17_2,CTf),
                                                              (lizzieLet17_3,CTf),
                                                              (lizzieLet17_4,CTf)] */
  logic [3:0] readPointer_CTfscfarg_0_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CTfscfarg_0_1_argbuf_rwb_done;
  assign lizzieLet17_1_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[83:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet17_2_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[83:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet17_3_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[83:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet17_4_d = {readPointer_CTfscfarg_0_1_argbuf_rwb_d[83:1],
                            (readPointer_CTfscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CTfscfarg_0_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_done = (readPointer_CTfscfarg_0_1_argbuf_rwb_emitted | ({lizzieLet17_4_d[0],
                                                                                                       lizzieLet17_3_d[0],
                                                                                                       lizzieLet17_2_d[0],
                                                                                                       lizzieLet17_1_d[0]} & {lizzieLet17_4_r,
                                                                                                                              lizzieLet17_3_r,
                                                                                                                              lizzieLet17_2_r,
                                                                                                                              lizzieLet17_1_r}));
  assign readPointer_CTfscfarg_0_1_argbuf_rwb_r = (& readPointer_CTfscfarg_0_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTfscfarg_0_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CTfscfarg_0_1_argbuf_rwb_emitted <= (readPointer_CTfscfarg_0_1_argbuf_rwb_r ? 4'd0 :
                                                       readPointer_CTfscfarg_0_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm1abX_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm1abX_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm1abX_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm1abX_1_argbuf_r = ((! readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm1abX_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm1abX_1_argbuf_r)
        readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d <= readPointer_QTree_Boolm1abX_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm1abX_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm1abX_1_argbuf_rwb_d = (readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm1abX_1_argbuf_rwb_r && readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm1abX_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm1abX_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm1abX_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolm1abX_1_argbuf_rwb,QTree_Bool) > [(lizzieLet0_1,QTree_Bool),
                                                                                (lizzieLet0_2,QTree_Bool),
                                                                                (lizzieLet0_3,QTree_Bool),
                                                                                (lizzieLet0_4,QTree_Bool),
                                                                                (lizzieLet0_5,QTree_Bool)] */
  logic [4:0] readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted;
  logic [4:0] readPointer_QTree_Boolm1abX_1_argbuf_rwb_done;
  assign lizzieLet0_1_d = {readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet0_2_d = {readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet0_3_d = {readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet0_4_d = {readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet0_5_d = {readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm1abX_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted[4]))};
  assign readPointer_QTree_Boolm1abX_1_argbuf_rwb_done = (readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted | ({lizzieLet0_5_d[0],
                                                                                                               lizzieLet0_4_d[0],
                                                                                                               lizzieLet0_3_d[0],
                                                                                                               lizzieLet0_2_d[0],
                                                                                                               lizzieLet0_1_d[0]} & {lizzieLet0_5_r,
                                                                                                                                     lizzieLet0_4_r,
                                                                                                                                     lizzieLet0_3_r,
                                                                                                                                     lizzieLet0_2_r,
                                                                                                                                     lizzieLet0_1_r}));
  assign readPointer_QTree_Boolm1abX_1_argbuf_rwb_r = (& readPointer_QTree_Boolm1abX_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted <= 5'd0;
    else
      readPointer_QTree_Boolm1abX_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolm1abX_1_argbuf_rwb_r ? 5'd0 :
                                                           readPointer_QTree_Boolm1abX_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Bool) : (readPointer_QTree_Boolm2ac4_1_argbuf,QTree_Bool) > (readPointer_QTree_Boolm2ac4_1_argbuf_rwb,QTree_Bool) */
  QTree_Bool_t readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d;
  logic readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_r;
  assign readPointer_QTree_Boolm2ac4_1_argbuf_r = ((! readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d[0]) || readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Boolm2ac4_1_argbuf_r)
        readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d <= readPointer_QTree_Boolm2ac4_1_argbuf_d;
  QTree_Bool_t readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_r = (! readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d = (readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Boolm2ac4_1_argbuf_rwb_r && readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_r) && (! readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_buf <= readPointer_QTree_Boolm2ac4_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Bool) : (readPointer_QTree_Boolm2ac4_1_argbuf_rwb,QTree_Bool) > [(lizzieLet4_1,QTree_Bool),
                                                                                (lizzieLet4_2,QTree_Bool),
                                                                                (lizzieLet4_3,QTree_Bool),
                                                                                (lizzieLet4_4,QTree_Bool),
                                                                                (lizzieLet4_5,QTree_Bool)] */
  logic [4:0] readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted;
  logic [4:0] readPointer_QTree_Boolm2ac4_1_argbuf_rwb_done;
  assign lizzieLet4_1_d = {readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet4_2_d = {readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet4_3_d = {readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet4_4_d = {readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet4_5_d = {readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_d[0] && (! readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted[4]))};
  assign readPointer_QTree_Boolm2ac4_1_argbuf_rwb_done = (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted | ({lizzieLet4_5_d[0],
                                                                                                               lizzieLet4_4_d[0],
                                                                                                               lizzieLet4_3_d[0],
                                                                                                               lizzieLet4_2_d[0],
                                                                                                               lizzieLet4_1_d[0]} & {lizzieLet4_5_r,
                                                                                                                                     lizzieLet4_4_r,
                                                                                                                                     lizzieLet4_3_r,
                                                                                                                                     lizzieLet4_2_r,
                                                                                                                                     lizzieLet4_1_r}));
  assign readPointer_QTree_Boolm2ac4_1_argbuf_rwb_r = (& readPointer_QTree_Boolm2ac4_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted <= 5'd0;
    else
      readPointer_QTree_Boolm2ac4_1_argbuf_rwb_emitted <= (readPointer_QTree_Boolm2ac4_1_argbuf_rwb_r ? 5'd0 :
                                                           readPointer_QTree_Boolm2ac4_1_argbuf_rwb_done);
  
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
  
  /* buf (Ty Pointer_CTf') : (sc_0_9_destruct,Pointer_CTf') > (sc_0_9_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  sc_0_9_destruct_bufchan_d;
  logic sc_0_9_destruct_bufchan_r;
  assign sc_0_9_destruct_r = ((! sc_0_9_destruct_bufchan_d[0]) || sc_0_9_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_9_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_9_destruct_r)
        sc_0_9_destruct_bufchan_d <= sc_0_9_destruct_d;
  \Pointer_CTf'_t  sc_0_9_destruct_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTf') : (scfarg_0_1_goMux_mux,Pointer_CTf') > (scfarg_0_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  scfarg_0_1_goMux_mux_bufchan_d;
  logic scfarg_0_1_goMux_mux_bufchan_r;
  assign scfarg_0_1_goMux_mux_r = ((! scfarg_0_1_goMux_mux_bufchan_d[0]) || scfarg_0_1_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_1_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_1_goMux_mux_r)
        scfarg_0_1_goMux_mux_bufchan_d <= scfarg_0_1_goMux_mux_d;
  \Pointer_CTf'_t  scfarg_0_1_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty MyBool) : (vabZ_destruct,MyBool) > (vabZ_1_argbuf,MyBool) */
  MyBool_t vabZ_destruct_bufchan_d;
  logic vabZ_destruct_bufchan_r;
  assign vabZ_destruct_r = ((! vabZ_destruct_bufchan_d[0]) || vabZ_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vabZ_destruct_bufchan_d <= {1'd0, 1'd0};
    else
      if (vabZ_destruct_r) vabZ_destruct_bufchan_d <= vabZ_destruct_d;
  MyBool_t vabZ_destruct_bufchan_buf;
  assign vabZ_destruct_bufchan_r = (! vabZ_destruct_bufchan_buf[0]);
  assign vabZ_1_argbuf_d = (vabZ_destruct_bufchan_buf[0] ? vabZ_destruct_bufchan_buf :
                            vabZ_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vabZ_destruct_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((vabZ_1_argbuf_r && vabZ_destruct_bufchan_buf[0]))
        vabZ_destruct_bufchan_buf <= {1'd0, 1'd0};
      else if (((! vabZ_1_argbuf_r) && (! vabZ_destruct_bufchan_buf[0])))
        vabZ_destruct_bufchan_buf <= vabZ_destruct_bufchan_d;
  
  /* buf (Ty MyBool) : (vac5_2_2,MyBool) > (vac5_2_2_argbuf,MyBool) */
  MyBool_t vac5_2_2_bufchan_d;
  logic vac5_2_2_bufchan_r;
  assign vac5_2_2_r = ((! vac5_2_2_bufchan_d[0]) || vac5_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_2_2_bufchan_d <= {1'd0, 1'd0};
    else if (vac5_2_2_r) vac5_2_2_bufchan_d <= vac5_2_2_d;
  MyBool_t vac5_2_2_bufchan_buf;
  assign vac5_2_2_bufchan_r = (! vac5_2_2_bufchan_buf[0]);
  assign vac5_2_2_argbuf_d = (vac5_2_2_bufchan_buf[0] ? vac5_2_2_bufchan_buf :
                              vac5_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_2_2_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((vac5_2_2_argbuf_r && vac5_2_2_bufchan_buf[0]))
        vac5_2_2_bufchan_buf <= {1'd0, 1'd0};
      else if (((! vac5_2_2_argbuf_r) && (! vac5_2_2_bufchan_buf[0])))
        vac5_2_2_bufchan_buf <= vac5_2_2_bufchan_d;
  
  /* fork (Ty MyBool) : (vac5_2_destruct,MyBool) > [(vac5_2_1,MyBool),
                                               (vac5_2_2,MyBool)] */
  logic [1:0] vac5_2_destruct_emitted;
  logic [1:0] vac5_2_destruct_done;
  assign vac5_2_1_d = {vac5_2_destruct_d[1:1],
                       (vac5_2_destruct_d[0] && (! vac5_2_destruct_emitted[0]))};
  assign vac5_2_2_d = {vac5_2_destruct_d[1:1],
                       (vac5_2_destruct_d[0] && (! vac5_2_destruct_emitted[1]))};
  assign vac5_2_destruct_done = (vac5_2_destruct_emitted | ({vac5_2_2_d[0],
                                                             vac5_2_1_d[0]} & {vac5_2_2_r,
                                                                               vac5_2_1_r}));
  assign vac5_2_destruct_r = (& vac5_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_2_destruct_emitted <= 2'd0;
    else
      vac5_2_destruct_emitted <= (vac5_2_destruct_r ? 2'd0 :
                                  vac5_2_destruct_done);
  
  /* buf (Ty MyBool) : (vac5_3_2,MyBool) > (vac5_3_2_argbuf,MyBool) */
  MyBool_t vac5_3_2_bufchan_d;
  logic vac5_3_2_bufchan_r;
  assign vac5_3_2_r = ((! vac5_3_2_bufchan_d[0]) || vac5_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_3_2_bufchan_d <= {1'd0, 1'd0};
    else if (vac5_3_2_r) vac5_3_2_bufchan_d <= vac5_3_2_d;
  MyBool_t vac5_3_2_bufchan_buf;
  assign vac5_3_2_bufchan_r = (! vac5_3_2_bufchan_buf[0]);
  assign vac5_3_2_argbuf_d = (vac5_3_2_bufchan_buf[0] ? vac5_3_2_bufchan_buf :
                              vac5_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_3_2_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((vac5_3_2_argbuf_r && vac5_3_2_bufchan_buf[0]))
        vac5_3_2_bufchan_buf <= {1'd0, 1'd0};
      else if (((! vac5_3_2_argbuf_r) && (! vac5_3_2_bufchan_buf[0])))
        vac5_3_2_bufchan_buf <= vac5_3_2_bufchan_d;
  
  /* fork (Ty MyBool) : (vac5_3_destruct,MyBool) > [(vac5_3_1,MyBool),
                                               (vac5_3_2,MyBool)] */
  logic [1:0] vac5_3_destruct_emitted;
  logic [1:0] vac5_3_destruct_done;
  assign vac5_3_1_d = {vac5_3_destruct_d[1:1],
                       (vac5_3_destruct_d[0] && (! vac5_3_destruct_emitted[0]))};
  assign vac5_3_2_d = {vac5_3_destruct_d[1:1],
                       (vac5_3_destruct_d[0] && (! vac5_3_destruct_emitted[1]))};
  assign vac5_3_destruct_done = (vac5_3_destruct_emitted | ({vac5_3_2_d[0],
                                                             vac5_3_1_d[0]} & {vac5_3_2_r,
                                                                               vac5_3_1_r}));
  assign vac5_3_destruct_r = (& vac5_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_3_destruct_emitted <= 2'd0;
    else
      vac5_3_destruct_emitted <= (vac5_3_destruct_r ? 2'd0 :
                                  vac5_3_destruct_done);
  
  /* buf (Ty MyBool) : (vac5_4_destruct,MyBool) > (vac5_4_1_argbuf,MyBool) */
  MyBool_t vac5_4_destruct_bufchan_d;
  logic vac5_4_destruct_bufchan_r;
  assign vac5_4_destruct_r = ((! vac5_4_destruct_bufchan_d[0]) || vac5_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_4_destruct_bufchan_d <= {1'd0, 1'd0};
    else
      if (vac5_4_destruct_r)
        vac5_4_destruct_bufchan_d <= vac5_4_destruct_d;
  MyBool_t vac5_4_destruct_bufchan_buf;
  assign vac5_4_destruct_bufchan_r = (! vac5_4_destruct_bufchan_buf[0]);
  assign vac5_4_1_argbuf_d = (vac5_4_destruct_bufchan_buf[0] ? vac5_4_destruct_bufchan_buf :
                              vac5_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) vac5_4_destruct_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((vac5_4_1_argbuf_r && vac5_4_destruct_bufchan_buf[0]))
        vac5_4_destruct_bufchan_buf <= {1'd0, 1'd0};
      else if (((! vac5_4_1_argbuf_r) && (! vac5_4_destruct_bufchan_buf[0])))
        vac5_4_destruct_bufchan_buf <= vac5_4_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet12_1_argbuf,Pointer_CTf') > (writeCTf'lizzieLet12_1_argbuf_rwb,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_bufchan_d ;
  logic \writeCTf'lizzieLet12_1_argbuf_bufchan_r ;
  assign \writeCTf'lizzieLet12_1_argbuf_r  = ((! \writeCTf'lizzieLet12_1_argbuf_bufchan_d [0]) || \writeCTf'lizzieLet12_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet12_1_argbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet12_1_argbuf_r )
        \writeCTf'lizzieLet12_1_argbuf_bufchan_d  <= \writeCTf'lizzieLet12_1_argbuf_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_bufchan_buf ;
  assign \writeCTf'lizzieLet12_1_argbuf_bufchan_r  = (! \writeCTf'lizzieLet12_1_argbuf_bufchan_buf [0]);
  assign \writeCTf'lizzieLet12_1_argbuf_rwb_d  = (\writeCTf'lizzieLet12_1_argbuf_bufchan_buf [0] ? \writeCTf'lizzieLet12_1_argbuf_bufchan_buf  :
                                                  \writeCTf'lizzieLet12_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet12_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\writeCTf'lizzieLet12_1_argbuf_rwb_r  && \writeCTf'lizzieLet12_1_argbuf_bufchan_buf [0]))
        \writeCTf'lizzieLet12_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \writeCTf'lizzieLet12_1_argbuf_rwb_r ) && (! \writeCTf'lizzieLet12_1_argbuf_bufchan_buf [0])))
        \writeCTf'lizzieLet12_1_argbuf_bufchan_buf  <= \writeCTf'lizzieLet12_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet12_1_argbuf_rwb,Pointer_CTf') > (lizzieLet5_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf'lizzieLet12_1_argbuf_rwb_r  = ((! \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d [0]) || \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet12_1_argbuf_rwb_r )
        \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d  <= \writeCTf'lizzieLet12_1_argbuf_rwb_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_r  = (! \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf [0]);
  assign lizzieLet5_1_1_argbuf_d = (\writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf  :
                                    \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((lizzieLet5_1_1_argbuf_r && \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! lizzieLet5_1_1_argbuf_r) && (! \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_buf  <= \writeCTf'lizzieLet12_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet23_1_argbuf,Pointer_CTf') > (writeCTf'lizzieLet23_1_argbuf_rwb,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_bufchan_d ;
  logic \writeCTf'lizzieLet23_1_argbuf_bufchan_r ;
  assign \writeCTf'lizzieLet23_1_argbuf_r  = ((! \writeCTf'lizzieLet23_1_argbuf_bufchan_d [0]) || \writeCTf'lizzieLet23_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet23_1_argbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet23_1_argbuf_r )
        \writeCTf'lizzieLet23_1_argbuf_bufchan_d  <= \writeCTf'lizzieLet23_1_argbuf_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_bufchan_buf ;
  assign \writeCTf'lizzieLet23_1_argbuf_bufchan_r  = (! \writeCTf'lizzieLet23_1_argbuf_bufchan_buf [0]);
  assign \writeCTf'lizzieLet23_1_argbuf_rwb_d  = (\writeCTf'lizzieLet23_1_argbuf_bufchan_buf [0] ? \writeCTf'lizzieLet23_1_argbuf_bufchan_buf  :
                                                  \writeCTf'lizzieLet23_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet23_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\writeCTf'lizzieLet23_1_argbuf_rwb_r  && \writeCTf'lizzieLet23_1_argbuf_bufchan_buf [0]))
        \writeCTf'lizzieLet23_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \writeCTf'lizzieLet23_1_argbuf_rwb_r ) && (! \writeCTf'lizzieLet23_1_argbuf_bufchan_buf [0])))
        \writeCTf'lizzieLet23_1_argbuf_bufchan_buf  <= \writeCTf'lizzieLet23_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet23_1_argbuf_rwb,Pointer_CTf') > (sca2_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf'lizzieLet23_1_argbuf_rwb_r  = ((! \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d [0]) || \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet23_1_argbuf_rwb_r )
        \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d  <= \writeCTf'lizzieLet23_1_argbuf_rwb_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_r  = (! \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf [0]);
  assign sca2_1_1_argbuf_d = (\writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((sca2_1_1_argbuf_r && \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! sca2_1_1_argbuf_r) && (! \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_buf  <= \writeCTf'lizzieLet23_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet24_1_argbuf,Pointer_CTf') > (writeCTf'lizzieLet24_1_argbuf_rwb,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_bufchan_d ;
  logic \writeCTf'lizzieLet24_1_argbuf_bufchan_r ;
  assign \writeCTf'lizzieLet24_1_argbuf_r  = ((! \writeCTf'lizzieLet24_1_argbuf_bufchan_d [0]) || \writeCTf'lizzieLet24_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet24_1_argbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet24_1_argbuf_r )
        \writeCTf'lizzieLet24_1_argbuf_bufchan_d  <= \writeCTf'lizzieLet24_1_argbuf_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_bufchan_buf ;
  assign \writeCTf'lizzieLet24_1_argbuf_bufchan_r  = (! \writeCTf'lizzieLet24_1_argbuf_bufchan_buf [0]);
  assign \writeCTf'lizzieLet24_1_argbuf_rwb_d  = (\writeCTf'lizzieLet24_1_argbuf_bufchan_buf [0] ? \writeCTf'lizzieLet24_1_argbuf_bufchan_buf  :
                                                  \writeCTf'lizzieLet24_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet24_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\writeCTf'lizzieLet24_1_argbuf_rwb_r  && \writeCTf'lizzieLet24_1_argbuf_bufchan_buf [0]))
        \writeCTf'lizzieLet24_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \writeCTf'lizzieLet24_1_argbuf_rwb_r ) && (! \writeCTf'lizzieLet24_1_argbuf_bufchan_buf [0])))
        \writeCTf'lizzieLet24_1_argbuf_bufchan_buf  <= \writeCTf'lizzieLet24_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet24_1_argbuf_rwb,Pointer_CTf') > (sca1_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf'lizzieLet24_1_argbuf_rwb_r  = ((! \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d [0]) || \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet24_1_argbuf_rwb_r )
        \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d  <= \writeCTf'lizzieLet24_1_argbuf_rwb_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_r  = (! \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf [0]);
  assign sca1_1_1_argbuf_d = (\writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((sca1_1_1_argbuf_r && \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! sca1_1_1_argbuf_r) && (! \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_buf  <= \writeCTf'lizzieLet24_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet25_1_argbuf,Pointer_CTf') > (writeCTf'lizzieLet25_1_argbuf_rwb,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_bufchan_d ;
  logic \writeCTf'lizzieLet25_1_argbuf_bufchan_r ;
  assign \writeCTf'lizzieLet25_1_argbuf_r  = ((! \writeCTf'lizzieLet25_1_argbuf_bufchan_d [0]) || \writeCTf'lizzieLet25_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet25_1_argbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet25_1_argbuf_r )
        \writeCTf'lizzieLet25_1_argbuf_bufchan_d  <= \writeCTf'lizzieLet25_1_argbuf_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_bufchan_buf ;
  assign \writeCTf'lizzieLet25_1_argbuf_bufchan_r  = (! \writeCTf'lizzieLet25_1_argbuf_bufchan_buf [0]);
  assign \writeCTf'lizzieLet25_1_argbuf_rwb_d  = (\writeCTf'lizzieLet25_1_argbuf_bufchan_buf [0] ? \writeCTf'lizzieLet25_1_argbuf_bufchan_buf  :
                                                  \writeCTf'lizzieLet25_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet25_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\writeCTf'lizzieLet25_1_argbuf_rwb_r  && \writeCTf'lizzieLet25_1_argbuf_bufchan_buf [0]))
        \writeCTf'lizzieLet25_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \writeCTf'lizzieLet25_1_argbuf_rwb_r ) && (! \writeCTf'lizzieLet25_1_argbuf_bufchan_buf [0])))
        \writeCTf'lizzieLet25_1_argbuf_bufchan_buf  <= \writeCTf'lizzieLet25_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet25_1_argbuf_rwb,Pointer_CTf') > (sca0_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf'lizzieLet25_1_argbuf_rwb_r  = ((! \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d [0]) || \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet25_1_argbuf_rwb_r )
        \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d  <= \writeCTf'lizzieLet25_1_argbuf_rwb_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_r  = (! \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf [0]);
  assign sca0_1_1_argbuf_d = (\writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((sca0_1_1_argbuf_r && \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! sca0_1_1_argbuf_r) && (! \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_buf  <= \writeCTf'lizzieLet25_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet9_1_argbuf,Pointer_CTf') > (writeCTf'lizzieLet9_1_argbuf_rwb,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_bufchan_d ;
  logic \writeCTf'lizzieLet9_1_argbuf_bufchan_r ;
  assign \writeCTf'lizzieLet9_1_argbuf_r  = ((! \writeCTf'lizzieLet9_1_argbuf_bufchan_d [0]) || \writeCTf'lizzieLet9_1_argbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet9_1_argbuf_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet9_1_argbuf_r )
        \writeCTf'lizzieLet9_1_argbuf_bufchan_d  <= \writeCTf'lizzieLet9_1_argbuf_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_bufchan_buf ;
  assign \writeCTf'lizzieLet9_1_argbuf_bufchan_r  = (! \writeCTf'lizzieLet9_1_argbuf_bufchan_buf [0]);
  assign \writeCTf'lizzieLet9_1_argbuf_rwb_d  = (\writeCTf'lizzieLet9_1_argbuf_bufchan_buf [0] ? \writeCTf'lizzieLet9_1_argbuf_bufchan_buf  :
                                                 \writeCTf'lizzieLet9_1_argbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet9_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((\writeCTf'lizzieLet9_1_argbuf_rwb_r  && \writeCTf'lizzieLet9_1_argbuf_bufchan_buf [0]))
        \writeCTf'lizzieLet9_1_argbuf_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! \writeCTf'lizzieLet9_1_argbuf_rwb_r ) && (! \writeCTf'lizzieLet9_1_argbuf_bufchan_buf [0])))
        \writeCTf'lizzieLet9_1_argbuf_bufchan_buf  <= \writeCTf'lizzieLet9_1_argbuf_bufchan_d ;
  
  /* buf (Ty Pointer_CTf') : (writeCTf'lizzieLet9_1_argbuf_rwb,Pointer_CTf') > (sca3_1_1_argbuf,Pointer_CTf') */
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d ;
  logic \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_r ;
  assign \writeCTf'lizzieLet9_1_argbuf_rwb_r  = ((! \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d [0]) || \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\writeCTf'lizzieLet9_1_argbuf_rwb_r )
        \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d  <= \writeCTf'lizzieLet9_1_argbuf_rwb_d ;
  \Pointer_CTf'_t  \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf ;
  assign \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_r  = (! \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf [0]);
  assign sca3_1_1_argbuf_d = (\writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf [0] ? \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf  :
                              \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((sca3_1_1_argbuf_r && \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf [0]))
        \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! sca3_1_1_argbuf_r) && (! \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf [0])))
        \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_buf  <= \writeCTf'lizzieLet9_1_argbuf_rwb_bufchan_d ;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet11_1_argbuf,Pointer_CTf) > (writeCTflizzieLet11_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_bufchan_d;
  logic writeCTflizzieLet11_1_argbuf_bufchan_r;
  assign writeCTflizzieLet11_1_argbuf_r = ((! writeCTflizzieLet11_1_argbuf_bufchan_d[0]) || writeCTflizzieLet11_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet11_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet11_1_argbuf_r)
        writeCTflizzieLet11_1_argbuf_bufchan_d <= writeCTflizzieLet11_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet11_1_argbuf_bufchan_r = (! writeCTflizzieLet11_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet11_1_argbuf_rwb_d = (writeCTflizzieLet11_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet11_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet11_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet11_1_argbuf_rwb_r && writeCTflizzieLet11_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet11_1_argbuf_rwb_r) && (! writeCTflizzieLet11_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet11_1_argbuf_bufchan_buf <= writeCTflizzieLet11_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet11_1_argbuf_rwb,Pointer_CTf) > (lizzieLet9_1_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet11_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet11_1_argbuf_rwb_r = ((! writeCTflizzieLet11_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet11_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet11_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet11_1_argbuf_rwb_r)
        writeCTflizzieLet11_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet11_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet11_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet9_1_1_argbuf_d = (writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf :
                                    writeCTflizzieLet11_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet9_1_1_argbuf_r && writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet9_1_1_argbuf_r) && (! writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet11_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet11_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet18_1_argbuf,Pointer_CTf) > (writeCTflizzieLet18_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_bufchan_d;
  logic writeCTflizzieLet18_1_argbuf_bufchan_r;
  assign writeCTflizzieLet18_1_argbuf_r = ((! writeCTflizzieLet18_1_argbuf_bufchan_d[0]) || writeCTflizzieLet18_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet18_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet18_1_argbuf_r)
        writeCTflizzieLet18_1_argbuf_bufchan_d <= writeCTflizzieLet18_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet18_1_argbuf_bufchan_r = (! writeCTflizzieLet18_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet18_1_argbuf_rwb_d = (writeCTflizzieLet18_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet18_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet18_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet18_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet18_1_argbuf_rwb_r && writeCTflizzieLet18_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet18_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet18_1_argbuf_rwb_r) && (! writeCTflizzieLet18_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet18_1_argbuf_bufchan_buf <= writeCTflizzieLet18_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet18_1_argbuf_rwb,Pointer_CTf) > (sca2_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet18_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet18_1_argbuf_rwb_r = ((! writeCTflizzieLet18_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet18_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet18_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet18_1_argbuf_rwb_r)
        writeCTflizzieLet18_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet18_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet18_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_argbuf_d = (writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet18_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca2_1_argbuf_r && writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca2_1_argbuf_r) && (! writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet18_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet18_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet19_1_argbuf,Pointer_CTf) > (writeCTflizzieLet19_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_bufchan_d;
  logic writeCTflizzieLet19_1_argbuf_bufchan_r;
  assign writeCTflizzieLet19_1_argbuf_r = ((! writeCTflizzieLet19_1_argbuf_bufchan_d[0]) || writeCTflizzieLet19_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet19_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet19_1_argbuf_r)
        writeCTflizzieLet19_1_argbuf_bufchan_d <= writeCTflizzieLet19_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet19_1_argbuf_bufchan_r = (! writeCTflizzieLet19_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet19_1_argbuf_rwb_d = (writeCTflizzieLet19_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet19_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet19_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet19_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet19_1_argbuf_rwb_r && writeCTflizzieLet19_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet19_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet19_1_argbuf_rwb_r) && (! writeCTflizzieLet19_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet19_1_argbuf_bufchan_buf <= writeCTflizzieLet19_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet19_1_argbuf_rwb,Pointer_CTf) > (sca1_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet19_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet19_1_argbuf_rwb_r = ((! writeCTflizzieLet19_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet19_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet19_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet19_1_argbuf_rwb_r)
        writeCTflizzieLet19_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet19_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet19_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_argbuf_d = (writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet19_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca1_1_argbuf_r && writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca1_1_argbuf_r) && (! writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet19_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet19_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet20_1_argbuf,Pointer_CTf) > (writeCTflizzieLet20_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_bufchan_d;
  logic writeCTflizzieLet20_1_argbuf_bufchan_r;
  assign writeCTflizzieLet20_1_argbuf_r = ((! writeCTflizzieLet20_1_argbuf_bufchan_d[0]) || writeCTflizzieLet20_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet20_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet20_1_argbuf_r)
        writeCTflizzieLet20_1_argbuf_bufchan_d <= writeCTflizzieLet20_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet20_1_argbuf_bufchan_r = (! writeCTflizzieLet20_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet20_1_argbuf_rwb_d = (writeCTflizzieLet20_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet20_1_argbuf_bufchan_buf :
                                               writeCTflizzieLet20_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet20_1_argbuf_rwb_r && writeCTflizzieLet20_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet20_1_argbuf_rwb_r) && (! writeCTflizzieLet20_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet20_1_argbuf_bufchan_buf <= writeCTflizzieLet20_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet20_1_argbuf_rwb,Pointer_CTf) > (sca0_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet20_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet20_1_argbuf_rwb_r = ((! writeCTflizzieLet20_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet20_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet20_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet20_1_argbuf_rwb_r)
        writeCTflizzieLet20_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet20_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet20_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_argbuf_d = (writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet20_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca0_1_argbuf_r && writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca0_1_argbuf_r) && (! writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet20_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet20_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet2_1_argbuf,Pointer_CTf) > (writeCTflizzieLet2_1_argbuf_rwb,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_bufchan_d;
  logic writeCTflizzieLet2_1_argbuf_bufchan_r;
  assign writeCTflizzieLet2_1_argbuf_r = ((! writeCTflizzieLet2_1_argbuf_bufchan_d[0]) || writeCTflizzieLet2_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet2_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet2_1_argbuf_r)
        writeCTflizzieLet2_1_argbuf_bufchan_d <= writeCTflizzieLet2_1_argbuf_d;
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_bufchan_buf;
  assign writeCTflizzieLet2_1_argbuf_bufchan_r = (! writeCTflizzieLet2_1_argbuf_bufchan_buf[0]);
  assign writeCTflizzieLet2_1_argbuf_rwb_d = (writeCTflizzieLet2_1_argbuf_bufchan_buf[0] ? writeCTflizzieLet2_1_argbuf_bufchan_buf :
                                              writeCTflizzieLet2_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCTflizzieLet2_1_argbuf_rwb_r && writeCTflizzieLet2_1_argbuf_bufchan_buf[0]))
        writeCTflizzieLet2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCTflizzieLet2_1_argbuf_rwb_r) && (! writeCTflizzieLet2_1_argbuf_bufchan_buf[0])))
        writeCTflizzieLet2_1_argbuf_bufchan_buf <= writeCTflizzieLet2_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTf) : (writeCTflizzieLet2_1_argbuf_rwb,Pointer_CTf) > (sca3_1_argbuf,Pointer_CTf) */
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_rwb_bufchan_d;
  logic writeCTflizzieLet2_1_argbuf_rwb_bufchan_r;
  assign writeCTflizzieLet2_1_argbuf_rwb_r = ((! writeCTflizzieLet2_1_argbuf_rwb_bufchan_d[0]) || writeCTflizzieLet2_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet2_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCTflizzieLet2_1_argbuf_rwb_r)
        writeCTflizzieLet2_1_argbuf_rwb_bufchan_d <= writeCTflizzieLet2_1_argbuf_rwb_d;
  Pointer_CTf_t writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf;
  assign writeCTflizzieLet2_1_argbuf_rwb_bufchan_r = (! writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_argbuf_d = (writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf[0] ? writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf :
                            writeCTflizzieLet2_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca3_1_argbuf_r && writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf[0]))
        writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca3_1_argbuf_r) && (! writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf[0])))
        writeCTflizzieLet2_1_argbuf_rwb_bufchan_buf <= writeCTflizzieLet2_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet15_1_argbuf,Pointer_Nat) > (writeNatlizzieLet15_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet15_1_argbuf_bufchan_d;
  logic writeNatlizzieLet15_1_argbuf_bufchan_r;
  assign writeNatlizzieLet15_1_argbuf_r = ((! writeNatlizzieLet15_1_argbuf_bufchan_d[0]) || writeNatlizzieLet15_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet15_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet15_1_argbuf_r)
        writeNatlizzieLet15_1_argbuf_bufchan_d <= writeNatlizzieLet15_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet15_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet15_1_argbuf_bufchan_r = (! writeNatlizzieLet15_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet15_1_argbuf_rwb_d = (writeNatlizzieLet15_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet15_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet15_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet15_1_argbuf_rwb_r && writeNatlizzieLet15_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet15_1_argbuf_rwb_r) && (! writeNatlizzieLet15_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet15_1_argbuf_bufchan_buf <= writeNatlizzieLet15_1_argbuf_bufchan_d;
  
  /* dcon (Ty Nat,
      Dcon Succ) : [(writeNatlizzieLet15_1_argbuf_rwb,Pointer_Nat)] > (lizzieLet0_1_1Succ,Nat) */
  assign lizzieLet0_1_1Succ_d = Succ_dc((& {writeNatlizzieLet15_1_argbuf_rwb_d[0]}), writeNatlizzieLet15_1_argbuf_rwb_d);
  assign {writeNatlizzieLet15_1_argbuf_rwb_r} = {1 {(lizzieLet0_1_1Succ_r && lizzieLet0_1_1Succ_d[0])}};
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet16_1_argbuf,Pointer_Nat) > (writeNatlizzieLet16_1_argbuf_rwb,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_bufchan_d;
  logic writeNatlizzieLet16_1_argbuf_bufchan_r;
  assign writeNatlizzieLet16_1_argbuf_r = ((! writeNatlizzieLet16_1_argbuf_bufchan_d[0]) || writeNatlizzieLet16_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet16_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet16_1_argbuf_r)
        writeNatlizzieLet16_1_argbuf_bufchan_d <= writeNatlizzieLet16_1_argbuf_d;
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_bufchan_buf;
  assign writeNatlizzieLet16_1_argbuf_bufchan_r = (! writeNatlizzieLet16_1_argbuf_bufchan_buf[0]);
  assign writeNatlizzieLet16_1_argbuf_rwb_d = (writeNatlizzieLet16_1_argbuf_bufchan_buf[0] ? writeNatlizzieLet16_1_argbuf_bufchan_buf :
                                               writeNatlizzieLet16_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeNatlizzieLet16_1_argbuf_rwb_r && writeNatlizzieLet16_1_argbuf_bufchan_buf[0]))
        writeNatlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeNatlizzieLet16_1_argbuf_rwb_r) && (! writeNatlizzieLet16_1_argbuf_bufchan_buf[0])))
        writeNatlizzieLet16_1_argbuf_bufchan_buf <= writeNatlizzieLet16_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_Nat) : (writeNatlizzieLet16_1_argbuf_rwb,Pointer_Nat) > (lvlrrv-44_resbuf,Pointer_Nat) */
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_rwb_bufchan_d;
  logic writeNatlizzieLet16_1_argbuf_rwb_bufchan_r;
  assign writeNatlizzieLet16_1_argbuf_rwb_r = ((! writeNatlizzieLet16_1_argbuf_rwb_bufchan_d[0]) || writeNatlizzieLet16_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet16_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeNatlizzieLet16_1_argbuf_rwb_r)
        writeNatlizzieLet16_1_argbuf_rwb_bufchan_d <= writeNatlizzieLet16_1_argbuf_rwb_d;
  Pointer_Nat_t writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf;
  assign writeNatlizzieLet16_1_argbuf_rwb_bufchan_r = (! writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf[0]);
  assign \lvlrrv-44_resbuf_d  = (writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf[0] ? writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf :
                                 writeNatlizzieLet16_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((\lvlrrv-44_resbuf_r  && writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf[0]))
        writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! \lvlrrv-44_resbuf_r ) && (! writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf[0])))
        writeNatlizzieLet16_1_argbuf_rwb_bufchan_buf <= writeNatlizzieLet16_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet10_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet10_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet10_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet10_1_argbuf_r = ((! writeQTree_NatlizzieLet10_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet10_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet10_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet10_1_argbuf_r)
        writeQTree_NatlizzieLet10_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet10_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet10_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet10_1_argbuf_rwb_d = (writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet10_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet10_1_argbuf_rwb_r && writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet10_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet10_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet10_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet10_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet4_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet10_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet10_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet10_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet4_1_1_argbuf_d = (writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet4_1_1_argbuf_r && writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet4_1_1_argbuf_r) && (! writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet10_1_argbuf_rwb_bufchan_d;
  
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
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet14_1_argbuf_rwb,Pointer_QTree_Nat) > (lvl1rrw-45_resbuf,Pointer_QTree_Nat) */
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
  assign \lvl1rrw-45_resbuf_d  = (writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((\lvl1rrw-45_resbuf_r  && writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! \lvl1rrw-45_resbuf_r ) && (! writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet14_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet1_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet1_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet1_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet1_1_argbuf_r = ((! writeQTree_NatlizzieLet1_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet1_1_argbuf_r)
        writeQTree_NatlizzieLet1_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet1_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet1_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet1_1_argbuf_rwb_d = (writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf :
                                                    writeQTree_NatlizzieLet1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet1_1_argbuf_rwb_r && writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet1_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet1_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet1_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet6_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet1_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet1_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet1_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet6_1_argbuf_d = (writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_1_argbuf_r && writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_1_argbuf_r) && (! writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet21_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet21_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet21_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet21_1_argbuf_r = ((! writeQTree_NatlizzieLet21_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet21_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet21_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet21_1_argbuf_r)
        writeQTree_NatlizzieLet21_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet21_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet21_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet21_1_argbuf_rwb_d = (writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet21_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet21_1_argbuf_rwb_r && writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet21_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet21_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet21_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet21_1_argbuf_rwb,Pointer_QTree_Nat) > (contRet_0_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet21_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet21_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet21_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_argbuf_d = (writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf :
                                 writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_argbuf_r && writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_argbuf_r) && (! writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet21_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet26_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet26_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet26_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet26_1_argbuf_r = ((! writeQTree_NatlizzieLet26_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet26_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet26_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet26_1_argbuf_r)
        writeQTree_NatlizzieLet26_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet26_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet26_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet26_1_argbuf_rwb_d = (writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf :
                                                     writeQTree_NatlizzieLet26_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet26_1_argbuf_rwb_r && writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet26_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet26_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet26_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet26_1_argbuf_rwb,Pointer_QTree_Nat) > (contRet_0_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet26_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet26_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet26_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_1_argbuf_d = (writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf :
                                   writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_1_argbuf_r && writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_1_argbuf_r) && (! writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet26_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet3_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet3_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet3_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet3_1_argbuf_r = ((! writeQTree_NatlizzieLet3_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet3_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet3_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet3_1_argbuf_r)
        writeQTree_NatlizzieLet3_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet3_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet3_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet3_1_argbuf_rwb_d = (writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf :
                                                    writeQTree_NatlizzieLet3_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet3_1_argbuf_rwb_r && writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet3_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet3_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet3_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet3_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet8_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet3_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet3_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet3_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet8_1_argbuf_d = (writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf :
                                  writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet8_1_argbuf_r && writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet8_1_argbuf_r) && (! writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet3_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet5_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet5_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet5_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet5_1_argbuf_r = ((! writeQTree_NatlizzieLet5_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet5_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet5_1_argbuf_r)
        writeQTree_NatlizzieLet5_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet5_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet5_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet5_1_argbuf_rwb_d = (writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf :
                                                    writeQTree_NatlizzieLet5_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet5_1_argbuf_rwb_r && writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet5_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet5_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet5_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet5_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet1_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet5_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet5_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet5_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet1_1_1_argbuf_d = (writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet1_1_1_argbuf_r && writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet1_1_1_argbuf_r) && (! writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet5_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet6_1_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet6_1_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet6_1_1_argbuf_r = ((! writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet6_1_1_argbuf_r)
        writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet6_1_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet6_1_1_argbuf_rwb_d = (writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf :
                                                      writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet6_1_1_argbuf_rwb_r && writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet6_1_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet6_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet6_1_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet2_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet6_1_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet6_1_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet6_1_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet2_1_1_argbuf_d = (writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet2_1_1_argbuf_r && writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet2_1_1_argbuf_r) && (! writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet6_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet7_1_1_argbuf,Pointer_QTree_Nat) > (writeQTree_NatlizzieLet7_1_1_argbuf_rwb,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d;
  logic writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_r;
  assign writeQTree_NatlizzieLet7_1_1_argbuf_r = ((! writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d[0]) || writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet7_1_1_argbuf_r)
        writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d <= writeQTree_NatlizzieLet7_1_1_argbuf_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf;
  assign writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_r = (! writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_NatlizzieLet7_1_1_argbuf_rwb_d = (writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf[0] ? writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf :
                                                      writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_NatlizzieLet7_1_1_argbuf_rwb_r && writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf[0]))
        writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_NatlizzieLet7_1_1_argbuf_rwb_r) && (! writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf[0])))
        writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_buf <= writeQTree_NatlizzieLet7_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Nat) : (writeQTree_NatlizzieLet7_1_1_argbuf_rwb,Pointer_QTree_Nat) > (lizzieLet3_1_1_argbuf,Pointer_QTree_Nat) */
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_NatlizzieLet7_1_1_argbuf_rwb_r = ((! writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_NatlizzieLet7_1_1_argbuf_rwb_r)
        writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d <= writeQTree_NatlizzieLet7_1_1_argbuf_rwb_d;
  Pointer_QTree_Nat_t writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_r = (! writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet3_1_1_argbuf_d = (writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet3_1_1_argbuf_r && writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet3_1_1_argbuf_r) && (! writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_buf <= writeQTree_NatlizzieLet7_1_1_argbuf_rwb_bufchan_d;
endmodule