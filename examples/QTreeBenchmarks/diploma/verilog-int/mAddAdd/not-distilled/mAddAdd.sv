`timescale 1ns/1ns
import mAddAdd_package::*;

module mAddAdd(
  input logic clk,
  input logic reset,
  input Go_t \\QTree_Int_src_d ,
  output logic \\QTree_Int_src_r ,
  input QTree_Int_t dummy_write_QTree_Int_d,
  output logic dummy_write_QTree_Int_r,
  input Go_t sourceGo_d,
  output logic sourceGo_r,
  input Pointer_QTree_Int_t w1shM_1_1_d,
  output logic w1shM_1_1_r,
  input Pointer_QTree_Int_t w2shN_1_2_d,
  output logic w2shN_1_2_r,
  input Pointer_QTree_Int_t wshL_1_0_d,
  output logic wshL_1_0_r,
  output \Word16#_t  forkHP1_QTree_Int_snk_dout,
  input logic forkHP1_QTree_Int_snk_rout,
  output Pointer_QTree_Int_t dummy_write_QTree_Int_sink_dout,
  input logic dummy_write_QTree_Int_sink_rout,
  output Int_t \es_0_1I#_dout ,
  input logic \es_0_1I#_rout 
  );
  /* --define=INPUTS=((__05CQTree_Int_src, 0, 1, Go), (dummy_write_QTree_Int, 66, 73786976294838206464, QTree_Int), (sourceGo, 0, 1, Go), (w1shM_1_1, 16, 65536, Pointer_QTree_Int), (w2shN_1_2, 16, 65536, Pointer_QTree_Int), (wshL_1_0, 16, 65536, Pointer_QTree_Int)) */
  /* --define=TAPS=() */
  /* --define=OUTPUTS=((forkHP1_QTree_Int_snk, 16, 65536, Word16__023), (dummy_write_QTree_Int_sink, 16, 65536, Pointer_QTree_Int), (es_0_1I__023, 32, 4294967296, Int)) */
  /* TYPE_START
CT__024wnnz 16 3 (0,[0]) (1,[16p,16p,16p,16p]) (2,[32,16p,16p,16p]) (3,[32,32,16p,16p]) (4,[32,32,32,16p])
QTree_Int 16 2 (0,[0]) (1,[32]) (2,[16p,16p,16p,16p]) (3,[0])
CTmAdd_mAdd_Int 16 3 (0,[0]) (1,[16p,0,0,16p,16p,16p,16p,16p,16p]) (2,[16p,16p,0,0,16p,16p,16p,16p]) (3,[16p,16p,16p,0,0,16p,16p]) (4,[16p,16p,16p,16p])
TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int 16 0 (0,[0,16p,16p,16p])
TupGo___Pointer_QTree_Int 16 0 (0,[0,16p])
TupGo___Pointer_QTree_Int___Pointer_CT__024wnnz 16 0 (0,[0,16p,16p])
TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int 16 0 (0,[0,0,0,16p,16p,16p])
TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int 16 0 (0,[0,0,0,16p,16p])
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
  \Word16#_t  initHP_CT$wnnz_d;
  logic initHP_CT$wnnz_r;
  \Word16#_t  incrHP_CT$wnnz_d;
  logic incrHP_CT$wnnz_r;
  Go_t incrHP_mergeCT$wnnz_d;
  logic incrHP_mergeCT$wnnz_r;
  Go_t incrHP_CT$wnnz1_d;
  logic incrHP_CT$wnnz1_r;
  Go_t incrHP_CT$wnnz2_d;
  logic incrHP_CT$wnnz2_r;
  \Word16#_t  addHP_CT$wnnz_d;
  logic addHP_CT$wnnz_r;
  \Word16#_t  mergeHP_CT$wnnz_d;
  logic mergeHP_CT$wnnz_r;
  Go_t incrHP_mergeCT$wnnz_buf_d;
  logic incrHP_mergeCT$wnnz_buf_r;
  \Word16#_t  mergeHP_CT$wnnz_buf_d;
  logic mergeHP_CT$wnnz_buf_r;
  \Word16#_t  forkHP1_CT$wnnz_d;
  logic forkHP1_CT$wnnz_r;
  \Word16#_t  forkHP1_CT$wnn2_d;
  logic forkHP1_CT$wnn2_r;
  \Word16#_t  forkHP1_CT$wnn3_d;
  logic forkHP1_CT$wnn3_r;
  C2_t memMergeChoice_CT$wnnz_d;
  logic memMergeChoice_CT$wnnz_r;
  MemIn_CT$wnnz_t memMergeIn_CT$wnnz_d;
  logic memMergeIn_CT$wnnz_r;
  MemOut_CT$wnnz_t memOut_CT$wnnz_d;
  logic memOut_CT$wnnz_r;
  MemOut_CT$wnnz_t memReadOut_CT$wnnz_d;
  logic memReadOut_CT$wnnz_r;
  MemOut_CT$wnnz_t memWriteOut_CT$wnnz_d;
  logic memWriteOut_CT$wnnz_r;
  MemIn_CT$wnnz_t memMergeIn_CT$wnnz_dbuf_d;
  logic memMergeIn_CT$wnnz_dbuf_r;
  MemIn_CT$wnnz_t memMergeIn_CT$wnnz_rbuf_d;
  logic memMergeIn_CT$wnnz_rbuf_r;
  MemOut_CT$wnnz_t memOut_CT$wnnz_dbuf_d;
  logic memOut_CT$wnnz_dbuf_r;
  MemOut_CT$wnnz_t memOut_CT$wnnz_rbuf_d;
  logic memOut_CT$wnnz_rbuf_r;
  \Word16#_t  destructReadIn_CT$wnnz_d;
  logic destructReadIn_CT$wnnz_r;
  MemIn_CT$wnnz_t dconReadIn_CT$wnnz_d;
  logic dconReadIn_CT$wnnz_r;
  CT$wnnz_t readPointer_CT$wnnzscfarg_0_1_argbuf_d;
  logic readPointer_CT$wnnzscfarg_0_1_argbuf_r;
  C5_t writeMerge_choice_CT$wnnz_d;
  logic writeMerge_choice_CT$wnnz_r;
  CT$wnnz_t writeMerge_data_CT$wnnz_d;
  logic writeMerge_data_CT$wnnz_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_d;
  logic writeCT$wnnzlizzieLet0_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_d;
  logic writeCT$wnnzlizzieLet19_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_d;
  logic writeCT$wnnzlizzieLet20_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_d;
  logic writeCT$wnnzlizzieLet21_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_d;
  logic writeCT$wnnzlizzieLet5_1_argbuf_r;
  MemIn_CT$wnnz_t dconWriteIn_CT$wnnz_d;
  logic dconWriteIn_CT$wnnz_r;
  Pointer_CT$wnnz_t dconPtr_CT$wnnz_d;
  logic dconPtr_CT$wnnz_r;
  Pointer_CT$wnnz_t _62_d;
  logic _62_r;
  assign _62_r = 1'd1;
  Pointer_CT$wnnz_t demuxWriteResult_CT$wnnz_d;
  logic demuxWriteResult_CT$wnnz_r;
  \Word16#_t  initHP_QTree_Int_d;
  logic initHP_QTree_Int_r;
  \Word16#_t  incrHP_QTree_Int_d;
  logic incrHP_QTree_Int_r;
  Go_t incrHP_mergeQTree_Int_d;
  logic incrHP_mergeQTree_Int_r;
  Go_t incrHP_QTree_Int1_d;
  logic incrHP_QTree_Int1_r;
  Go_t incrHP_QTree_Int2_d;
  logic incrHP_QTree_Int2_r;
  \Word16#_t  addHP_QTree_Int_d;
  logic addHP_QTree_Int_r;
  \Word16#_t  mergeHP_QTree_Int_d;
  logic mergeHP_QTree_Int_r;
  Go_t incrHP_mergeQTree_Int_buf_d;
  logic incrHP_mergeQTree_Int_buf_r;
  \Word16#_t  mergeHP_QTree_Int_buf_d;
  logic mergeHP_QTree_Int_buf_r;
  Go_t go_1_dummy_write_QTree_Int_d;
  logic go_1_dummy_write_QTree_Int_r;
  Go_t go_2_dummy_write_QTree_Int_d;
  logic go_2_dummy_write_QTree_Int_r;
  \Word16#_t  forkHP1_QTree_Int_d;
  logic forkHP1_QTree_Int_r;
  \Word16#_t  forkHP1_QTree_Int_snk_d;
  logic forkHP1_QTree_Int_snk_r;
  \Word16#_t  forkHP1_QTree_In3_d;
  logic forkHP1_QTree_In3_r;
  \Word16#_t  forkHP1_QTree_In4_d;
  logic forkHP1_QTree_In4_r;
  C2_t memMergeChoice_QTree_Int_d;
  logic memMergeChoice_QTree_Int_r;
  MemIn_QTree_Int_t memMergeIn_QTree_Int_d;
  logic memMergeIn_QTree_Int_r;
  MemOut_QTree_Int_t memOut_QTree_Int_d;
  logic memOut_QTree_Int_r;
  MemOut_QTree_Int_t memReadOut_QTree_Int_d;
  logic memReadOut_QTree_Int_r;
  MemOut_QTree_Int_t memWriteOut_QTree_Int_d;
  logic memWriteOut_QTree_Int_r;
  MemIn_QTree_Int_t memMergeIn_QTree_Int_dbuf_d;
  logic memMergeIn_QTree_Int_dbuf_r;
  MemIn_QTree_Int_t memMergeIn_QTree_Int_rbuf_d;
  logic memMergeIn_QTree_Int_rbuf_r;
  MemOut_QTree_Int_t memOut_QTree_Int_dbuf_d;
  logic memOut_QTree_Int_dbuf_r;
  MemOut_QTree_Int_t memOut_QTree_Int_rbuf_d;
  logic memOut_QTree_Int_rbuf_r;
  C3_t readMerge_choice_QTree_Int_d;
  logic readMerge_choice_QTree_Int_r;
  Pointer_QTree_Int_t readMerge_data_QTree_Int_d;
  logic readMerge_data_QTree_Int_r;
  QTree_Int_t readPointer_QTree_Intm1a8d_1_argbuf_d;
  logic readPointer_QTree_Intm1a8d_1_argbuf_r;
  QTree_Int_t readPointer_QTree_Intm2a8e_1_argbuf_d;
  logic readPointer_QTree_Intm2a8e_1_argbuf_r;
  QTree_Int_t readPointer_QTree_IntwshD_1_1_argbuf_d;
  logic readPointer_QTree_IntwshD_1_1_argbuf_r;
  \Word16#_t  destructReadIn_QTree_Int_d;
  logic destructReadIn_QTree_Int_r;
  MemIn_QTree_Int_t dconReadIn_QTree_Int_d;
  logic dconReadIn_QTree_Int_r;
  QTree_Int_t destructReadOut_QTree_Int_d;
  logic destructReadOut_QTree_Int_r;
  C9_t writeMerge_choice_QTree_Int_d;
  logic writeMerge_choice_QTree_Int_r;
  QTree_Int_t writeMerge_data_QTree_Int_d;
  logic writeMerge_data_QTree_Int_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_d;
  logic writeQTree_IntlizzieLet10_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_d;
  logic writeQTree_IntlizzieLet11_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_d;
  logic writeQTree_IntlizzieLet13_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_d;
  logic writeQTree_IntlizzieLet15_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_d;
  logic writeQTree_IntlizzieLet16_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_d;
  logic writeQTree_IntlizzieLet26_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_d;
  logic writeQTree_IntlizzieLet8_2_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_d;
  logic writeQTree_IntlizzieLet9_1_1_argbuf_r;
  Pointer_QTree_Int_t dummy_write_QTree_Int_sink_d;
  logic dummy_write_QTree_Int_sink_r;
  MemIn_QTree_Int_t dconWriteIn_QTree_Int_d;
  logic dconWriteIn_QTree_Int_r;
  Pointer_QTree_Int_t dconPtr_QTree_Int_d;
  logic dconPtr_QTree_Int_r;
  Pointer_QTree_Int_t _61_d;
  logic _61_r;
  assign _61_r = 1'd1;
  Pointer_QTree_Int_t demuxWriteResult_QTree_Int_d;
  logic demuxWriteResult_QTree_Int_r;
  \Word16#_t  initHP_CTmAdd_mAdd_Int_d;
  logic initHP_CTmAdd_mAdd_Int_r;
  \Word16#_t  incrHP_CTmAdd_mAdd_Int_d;
  logic incrHP_CTmAdd_mAdd_Int_r;
  Go_t incrHP_mergeCTmAdd_mAdd_Int_d;
  logic incrHP_mergeCTmAdd_mAdd_Int_r;
  Go_t incrHP_CTmAdd_mAdd_Int1_d;
  logic incrHP_CTmAdd_mAdd_Int1_r;
  Go_t incrHP_CTmAdd_mAdd_Int2_d;
  logic incrHP_CTmAdd_mAdd_Int2_r;
  \Word16#_t  addHP_CTmAdd_mAdd_Int_d;
  logic addHP_CTmAdd_mAdd_Int_r;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Int_d;
  logic mergeHP_CTmAdd_mAdd_Int_r;
  Go_t incrHP_mergeCTmAdd_mAdd_Int_buf_d;
  logic incrHP_mergeCTmAdd_mAdd_Int_buf_r;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Int_buf_d;
  logic mergeHP_CTmAdd_mAdd_Int_buf_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_Int_d;
  logic forkHP1_CTmAdd_mAdd_Int_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_In2_d;
  logic forkHP1_CTmAdd_mAdd_In2_r;
  \Word16#_t  forkHP1_CTmAdd_mAdd_In3_d;
  logic forkHP1_CTmAdd_mAdd_In3_r;
  C2_t memMergeChoice_CTmAdd_mAdd_Int_d;
  logic memMergeChoice_CTmAdd_mAdd_Int_r;
  MemIn_CTmAdd_mAdd_Int_t memMergeIn_CTmAdd_mAdd_Int_d;
  logic memMergeIn_CTmAdd_mAdd_Int_r;
  MemOut_CTmAdd_mAdd_Int_t memOut_CTmAdd_mAdd_Int_d;
  logic memOut_CTmAdd_mAdd_Int_r;
  MemOut_CTmAdd_mAdd_Int_t memReadOut_CTmAdd_mAdd_Int_d;
  logic memReadOut_CTmAdd_mAdd_Int_r;
  MemOut_CTmAdd_mAdd_Int_t memWriteOut_CTmAdd_mAdd_Int_d;
  logic memWriteOut_CTmAdd_mAdd_Int_r;
  MemIn_CTmAdd_mAdd_Int_t memMergeIn_CTmAdd_mAdd_Int_dbuf_d;
  logic memMergeIn_CTmAdd_mAdd_Int_dbuf_r;
  MemIn_CTmAdd_mAdd_Int_t memMergeIn_CTmAdd_mAdd_Int_rbuf_d;
  logic memMergeIn_CTmAdd_mAdd_Int_rbuf_r;
  MemOut_CTmAdd_mAdd_Int_t memOut_CTmAdd_mAdd_Int_dbuf_d;
  logic memOut_CTmAdd_mAdd_Int_dbuf_r;
  MemOut_CTmAdd_mAdd_Int_t memOut_CTmAdd_mAdd_Int_rbuf_d;
  logic memOut_CTmAdd_mAdd_Int_rbuf_r;
  \Word16#_t  destructReadIn_CTmAdd_mAdd_Int_d;
  logic destructReadIn_CTmAdd_mAdd_Int_r;
  MemIn_CTmAdd_mAdd_Int_t dconReadIn_CTmAdd_mAdd_Int_d;
  logic dconReadIn_CTmAdd_mAdd_Int_r;
  CTmAdd_mAdd_Int_t readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_d;
  logic readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_r;
  C5_t writeMerge_choice_CTmAdd_mAdd_Int_d;
  logic writeMerge_choice_CTmAdd_mAdd_Int_r;
  CTmAdd_mAdd_Int_t writeMerge_data_CTmAdd_mAdd_Int_d;
  logic writeMerge_data_CTmAdd_mAdd_Int_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_d;
  logic writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_d;
  logic writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_d;
  logic writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_d;
  logic writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_d;
  logic writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_r;
  MemIn_CTmAdd_mAdd_Int_t dconWriteIn_CTmAdd_mAdd_Int_d;
  logic dconWriteIn_CTmAdd_mAdd_Int_r;
  Pointer_CTmAdd_mAdd_Int_t dconPtr_CTmAdd_mAdd_Int_d;
  logic dconPtr_CTmAdd_mAdd_Int_r;
  Pointer_CTmAdd_mAdd_Int_t _60_d;
  logic _60_r;
  assign _60_r = 1'd1;
  Pointer_CTmAdd_mAdd_Int_t demuxWriteResult_CTmAdd_mAdd_Int_d;
  logic demuxWriteResult_CTmAdd_mAdd_Int_r;
  Go_t go_1_argbuf_d;
  logic go_1_argbuf_r;
  Go_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_r ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_r ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_r ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_r ;
  Go_t go_6_1_d;
  logic go_6_1_r;
  Go_t go_6_2_d;
  logic go_6_2_r;
  Go_t go_6_3_d;
  logic go_6_3_r;
  Go_t go_6_4_d;
  logic go_6_4_r;
  Go_t go_6_5_d;
  logic go_6_5_r;
  Go_t go_6_6_d;
  logic go_6_6_r;
  Go_t go_6_7_d;
  logic go_6_7_r;
  Pointer_QTree_Int_t w1shM_1_argbuf_d;
  logic w1shM_1_argbuf_r;
  Pointer_QTree_Int_t w2shN_1_argbuf_d;
  logic w2shN_1_argbuf_r;
  Pointer_QTree_Int_t wshL_1_argbuf_d;
  logic wshL_1_argbuf_r;
  Int_t \es_0_1I#_d ;
  logic \es_0_1I#_r ;
  Go_t \$wnnzTupGo___Pointer_QTree_Intgo_7_d ;
  logic \$wnnzTupGo___Pointer_QTree_Intgo_7_r ;
  Pointer_QTree_Int_t \$wnnzTupGo___Pointer_QTree_IntwshD_d ;
  logic \$wnnzTupGo___Pointer_QTree_IntwshD_r ;
  Go_t go_7_1_d;
  logic go_7_1_r;
  Go_t go_7_2_d;
  logic go_7_2_r;
  Pointer_QTree_Int_t wshD_1_argbuf_d;
  logic wshD_1_argbuf_r;
  \Int#_t  \$wmain_resbuf_d ;
  logic \$wmain_resbuf_r ;
  Go_t applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d;
  logic applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_r;
  MyDTInt_Bool_t applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d;
  logic applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_r;
  Int_t applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d;
  logic applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_r;
  MyDTInt_Bool_t arg0_1_d;
  logic arg0_1_r;
  MyDTInt_Bool_t arg0_2_d;
  logic arg0_2_r;
  MyDTInt_Bool_t arg0_3_d;
  logic arg0_3_r;
  MyBool_t es_0_3_1_d;
  logic es_0_3_1_r;
  MyBool_t es_0_3_2_d;
  logic es_0_3_2_r;
  MyBool_t es_0_3_3_d;
  logic es_0_3_3_r;
  MyDTInt_Int_Int_t applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d;
  logic applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_r;
  Int_t applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d;
  logic applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_r;
  Int_t applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d;
  logic applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_r;
  MyDTInt_Int_Int_t arg0_2_1_d;
  logic arg0_2_1_r;
  MyDTInt_Int_Int_t arg0_2_2_d;
  logic arg0_2_2_r;
  MyDTInt_Int_Int_t arg0_2_3_d;
  logic arg0_2_3_r;
  Int_t xa8a_1_d;
  logic xa8a_1_r;
  Int_t xa8a_2_d;
  logic xa8a_2_r;
  Int_t arg0_1Dcon_isZ_d;
  logic arg0_1Dcon_isZ_r;
  Int_t arg0_1Dcon_isZ_1_d;
  logic arg0_1Dcon_isZ_1_r;
  Int_t arg0_1Dcon_isZ_2_d;
  logic arg0_1Dcon_isZ_2_r;
  Int_t arg0_1Dcon_isZ_3_d;
  logic arg0_1Dcon_isZ_3_r;
  Int_t arg0_1Dcon_isZ_4_d;
  logic arg0_1Dcon_isZ_4_r;
  \Int#_t  x1agg_destruct_d;
  logic x1agg_destruct_r;
  Int_t \arg0_1Dcon_isZ_1I#_d ;
  logic \arg0_1Dcon_isZ_1I#_r ;
  Go_t \arg0_1Dcon_isZ_3I#_d ;
  logic \arg0_1Dcon_isZ_3I#_r ;
  Go_t \arg0_1Dcon_isZ_3I#_1_d ;
  logic \arg0_1Dcon_isZ_3I#_1_r ;
  Go_t \arg0_1Dcon_isZ_3I#_2_d ;
  logic \arg0_1Dcon_isZ_3I#_2_r ;
  Go_t \arg0_1Dcon_isZ_3I#_3_d ;
  logic \arg0_1Dcon_isZ_3I#_3_r ;
  Go_t \arg0_1Dcon_isZ_3I#_1_argbuf_d ;
  logic \arg0_1Dcon_isZ_3I#_1_argbuf_r ;
  \Int#_t  \arg0_1Dcon_isZ_3I#_1_argbuf_0_d ;
  logic \arg0_1Dcon_isZ_3I#_1_argbuf_0_r ;
  Bool_t lizzieLet1_1wild1Xn_1_Eq_d;
  logic lizzieLet1_1wild1Xn_1_Eq_r;
  Go_t \arg0_1Dcon_isZ_3I#_2_argbuf_d ;
  logic \arg0_1Dcon_isZ_3I#_2_argbuf_r ;
  TupGo___Bool_t boolConvert_1TupGo___Bool_1_d;
  logic boolConvert_1TupGo___Bool_1_r;
  MyBool_t lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d;
  logic lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_r;
  Go_t arg0_2Dcon_isZ_d;
  logic arg0_2Dcon_isZ_r;
  Int_t \arg0_2_1Dcon_$fNumInt_$c+_d ;
  logic \arg0_2_1Dcon_$fNumInt_$c+_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_1_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_1_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_2_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_2_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_4_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_4_r ;
  \Int#_t  xa1lV_destruct_d;
  logic xa1lV_destruct_r;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_1I#_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_1I#_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_r ;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_4_r ;
  \Int#_t  ya1lW_destruct_d;
  logic ya1lW_destruct_r;
  Int_t \arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_r ;
  \Int#_t  \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_r ;
  \Int#_t  \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_d ;
  logic \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_r ;
  Int_t \es_0_2_1I#_d ;
  logic \es_0_2_1I#_r ;
  Int_t \es_0_2_1I#_mux_d ;
  logic \es_0_2_1I#_mux_r ;
  Int_t \es_0_2_1I#_mux_mux_d ;
  logic \es_0_2_1I#_mux_mux_r ;
  Int_t \es_0_2_1I#_mux_mux_mux_d ;
  logic \es_0_2_1I#_mux_mux_mux_r ;
  MyBool_t lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_d;
  logic lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_r;
  Go_t boolConvert_1TupGo___Boolgo_1_d;
  logic boolConvert_1TupGo___Boolgo_1_r;
  Bool_t boolConvert_1TupGo___Boolbool_d;
  logic boolConvert_1TupGo___Boolbool_r;
  Bool_t bool_1_d;
  logic bool_1_r;
  Bool_t bool_2_d;
  logic bool_2_r;
  MyBool_t lizzieLet3_1_d;
  logic lizzieLet3_1_r;
  MyBool_t lizzieLet3_2_d;
  logic lizzieLet3_2_r;
  Go_t bool_1False_d;
  logic bool_1False_r;
  Go_t bool_1True_d;
  logic bool_1True_r;
  MyBool_t bool_1False_1MyFalse_d;
  logic bool_1False_1MyFalse_r;
  MyBool_t boolConvert_1_resbuf_d;
  logic boolConvert_1_resbuf_r;
  MyBool_t bool_1True_1MyTrue_d;
  logic bool_1True_1MyTrue_r;
  MyBool_t bool_1False_1MyFalsebool_1True_1MyTrue_mux_d;
  logic bool_1False_1MyFalsebool_1True_1MyTrue_mux_r;
  Go_t call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d;
  logic call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_r;
  Pointer_QTree_Int_t call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d;
  logic call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_r;
  Pointer_CT$wnnz_t call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d;
  logic call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_r;
  Go_t call_$wnnz_initBufi_d;
  logic call_$wnnz_initBufi_r;
  C5_t go_9_goMux_choice_d;
  logic go_9_goMux_choice_r;
  Go_t go_9_goMux_data_d;
  logic go_9_goMux_data_r;
  Go_t call_$wnnz_unlockFork1_d;
  logic call_$wnnz_unlockFork1_r;
  Go_t call_$wnnz_unlockFork2_d;
  logic call_$wnnz_unlockFork2_r;
  Go_t call_$wnnz_unlockFork3_d;
  logic call_$wnnz_unlockFork3_r;
  Go_t call_$wnnz_initBuf_d;
  logic call_$wnnz_initBuf_r;
  Go_t call_$wnnz_goMux1_d;
  logic call_$wnnz_goMux1_r;
  Pointer_QTree_Int_t call_$wnnz_goMux2_d;
  logic call_$wnnz_goMux2_r;
  Pointer_CT$wnnz_t call_$wnnz_goMux3_d;
  logic call_$wnnz_goMux3_r;
  Go_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_r;
  MyDTInt_Bool_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_r;
  MyDTInt_Int_Int_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_r;
  Pointer_QTree_Int_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_r;
  Pointer_QTree_Int_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_r;
  Pointer_CTmAdd_mAdd_Int_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_r;
  Go_t call_mAdd_mAdd_Int_initBufi_d;
  logic call_mAdd_mAdd_Int_initBufi_r;
  C5_t go_10_goMux_choice_d;
  logic go_10_goMux_choice_r;
  Go_t go_10_goMux_data_d;
  logic go_10_goMux_data_r;
  Go_t call_mAdd_mAdd_Int_unlockFork1_d;
  logic call_mAdd_mAdd_Int_unlockFork1_r;
  Go_t call_mAdd_mAdd_Int_unlockFork2_d;
  logic call_mAdd_mAdd_Int_unlockFork2_r;
  Go_t call_mAdd_mAdd_Int_unlockFork3_d;
  logic call_mAdd_mAdd_Int_unlockFork3_r;
  Go_t call_mAdd_mAdd_Int_unlockFork4_d;
  logic call_mAdd_mAdd_Int_unlockFork4_r;
  Go_t call_mAdd_mAdd_Int_unlockFork5_d;
  logic call_mAdd_mAdd_Int_unlockFork5_r;
  Go_t call_mAdd_mAdd_Int_unlockFork6_d;
  logic call_mAdd_mAdd_Int_unlockFork6_r;
  Go_t call_mAdd_mAdd_Int_initBuf_d;
  logic call_mAdd_mAdd_Int_initBuf_r;
  Go_t call_mAdd_mAdd_Int_goMux1_d;
  logic call_mAdd_mAdd_Int_goMux1_r;
  MyDTInt_Bool_t call_mAdd_mAdd_Int_goMux2_d;
  logic call_mAdd_mAdd_Int_goMux2_r;
  MyDTInt_Int_Int_t call_mAdd_mAdd_Int_goMux3_d;
  logic call_mAdd_mAdd_Int_goMux3_r;
  Pointer_QTree_Int_t call_mAdd_mAdd_Int_goMux4_d;
  logic call_mAdd_mAdd_Int_goMux4_r;
  Pointer_QTree_Int_t call_mAdd_mAdd_Int_goMux5_d;
  logic call_mAdd_mAdd_Int_goMux5_r;
  Pointer_CTmAdd_mAdd_Int_t call_mAdd_mAdd_Int_goMux6_d;
  logic call_mAdd_mAdd_Int_goMux6_r;
  Int_t applyfnInt_Int_Int_5_resbuf_d;
  logic applyfnInt_Int_Int_5_resbuf_r;
  Go_t es_0_3_1MyFalse_d;
  logic es_0_3_1MyFalse_r;
  Go_t es_0_3_1MyTrue_d;
  logic es_0_3_1MyTrue_r;
  Go_t es_0_3_1MyFalse_1_argbuf_d;
  logic es_0_3_1MyFalse_1_argbuf_r;
  Go_t es_0_3_1MyTrue_1_d;
  logic es_0_3_1MyTrue_1_r;
  Go_t es_0_3_1MyTrue_2_d;
  logic es_0_3_1MyTrue_2_r;
  QTree_Int_t es_0_3_1MyTrue_1QNone_Int_d;
  logic es_0_3_1MyTrue_1QNone_Int_r;
  QTree_Int_t lizzieLet9_1_1_argbuf_d;
  logic lizzieLet9_1_1_argbuf_r;
  Go_t es_0_3_1MyTrue_2_argbuf_d;
  logic es_0_3_1MyTrue_2_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyFalse_d;
  logic es_0_3_2MyFalse_r;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyTrue_d;
  logic es_0_3_2MyTrue_r;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyFalse_1_argbuf_d;
  logic es_0_3_2MyFalse_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyTrue_1_argbuf_d;
  logic es_0_3_2MyTrue_1_argbuf_r;
  Int_t es_0_3_3MyFalse_d;
  logic es_0_3_3MyFalse_r;
  Int_t _59_d;
  logic _59_r;
  assign _59_r = 1'd1;
  QTree_Int_t es_0_3_3MyFalse_1QVal_Int_d;
  logic es_0_3_3MyFalse_1QVal_Int_r;
  QTree_Int_t lizzieLet8_2_1_argbuf_d;
  logic lizzieLet8_2_1_argbuf_r;
  \Int#_t  contRet_0_1_argbuf_d;
  logic contRet_0_1_argbuf_r;
  \Int#_t  es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_d;
  logic es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_r;
  MyDTInt_Int_Int_t ga8c_2_2_argbuf_d;
  logic ga8c_2_2_argbuf_r;
  MyDTInt_Int_Int_t ga8c_2_1_d;
  logic ga8c_2_1_r;
  MyDTInt_Int_Int_t ga8c_2_2_d;
  logic ga8c_2_2_r;
  MyDTInt_Int_Int_t ga8c_3_2_argbuf_d;
  logic ga8c_3_2_argbuf_r;
  MyDTInt_Int_Int_t ga8c_3_1_d;
  logic ga8c_3_1_r;
  MyDTInt_Int_Int_t ga8c_3_2_d;
  logic ga8c_3_2_r;
  MyDTInt_Int_Int_t ga8c_4_1_argbuf_d;
  logic ga8c_4_1_argbuf_r;
  C5_t go_10_goMux_choice_1_d;
  logic go_10_goMux_choice_1_r;
  C5_t go_10_goMux_choice_2_d;
  logic go_10_goMux_choice_2_r;
  C5_t go_10_goMux_choice_3_d;
  logic go_10_goMux_choice_3_r;
  C5_t go_10_goMux_choice_4_d;
  logic go_10_goMux_choice_4_r;
  C5_t go_10_goMux_choice_5_d;
  logic go_10_goMux_choice_5_r;
  MyDTInt_Bool_t isZ1a8b_goMux_mux_d;
  logic isZ1a8b_goMux_mux_r;
  MyDTInt_Int_Int_t ga8c_goMux_mux_d;
  logic ga8c_goMux_mux_r;
  Pointer_QTree_Int_t m1a8d_goMux_mux_d;
  logic m1a8d_goMux_mux_r;
  Pointer_QTree_Int_t m2a8e_goMux_mux_d;
  logic m2a8e_goMux_mux_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_1_goMux_mux_d;
  logic sc_0_1_goMux_mux_r;
  CTmAdd_mAdd_Int_t go_11_1LmAdd_mAdd_Intsbos_d;
  logic go_11_1LmAdd_mAdd_Intsbos_r;
  CTmAdd_mAdd_Int_t lizzieLet17_1_argbuf_d;
  logic lizzieLet17_1_argbuf_r;
  Go_t go_11_2_argbuf_d;
  logic go_11_2_argbuf_r;
  TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_t call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d;
  logic call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_r;
  C4_t go_12_goMux_choice_1_d;
  logic go_12_goMux_choice_1_r;
  C4_t go_12_goMux_choice_2_d;
  logic go_12_goMux_choice_2_r;
  \Int#_t  srtarg_0_goMux_mux_d;
  logic srtarg_0_goMux_mux_r;
  Pointer_CT$wnnz_t scfarg_0_goMux_mux_d;
  logic scfarg_0_goMux_mux_r;
  C11_t go_13_goMux_choice_1_d;
  logic go_13_goMux_choice_1_r;
  C11_t go_13_goMux_choice_2_d;
  logic go_13_goMux_choice_2_r;
  Pointer_QTree_Int_t srtarg_0_1_goMux_mux_d;
  logic srtarg_0_1_goMux_mux_r;
  Pointer_CTmAdd_mAdd_Int_t scfarg_0_1_goMux_mux_d;
  logic scfarg_0_1_goMux_mux_r;
  TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r ;
  MyDTInt_Int_Int_t \go_6_1Dcon_$fNumInt_$c+_d ;
  logic \go_6_1Dcon_$fNumInt_$c+_r ;
  MyDTInt_Int_Int_t es_2_1_argbuf_d;
  logic es_2_1_argbuf_r;
  MyDTInt_Bool_t go_6_2Dcon_isZ_d;
  logic go_6_2Dcon_isZ_r;
  MyDTInt_Bool_t es_1_1_argbuf_d;
  logic es_1_1_argbuf_r;
  MyDTInt_Int_Int_t \go_6_3Dcon_$fNumInt_$c+_d ;
  logic \go_6_3Dcon_$fNumInt_$c+_r ;
  MyDTInt_Int_Int_t es_6_1_argbuf_d;
  logic es_6_1_argbuf_r;
  MyDTInt_Bool_t go_6_4Dcon_isZ_d;
  logic go_6_4Dcon_isZ_r;
  MyDTInt_Bool_t es_5_1_argbuf_d;
  logic es_5_1_argbuf_r;
  Go_t go_6_5_argbuf_d;
  logic go_6_5_argbuf_r;
  TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r;
  Go_t go_6_6_argbuf_d;
  logic go_6_6_argbuf_r;
  TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_r;
  Go_t go_6_7_argbuf_d;
  logic go_6_7_argbuf_r;
  TupGo___Pointer_QTree_Int_t \$wnnzTupGo___Pointer_QTree_Int_1_d ;
  logic \$wnnzTupGo___Pointer_QTree_Int_1_r ;
  CT$wnnz_t go_7_1L$wnnzsbos_d;
  logic go_7_1L$wnnzsbos_r;
  CT$wnnz_t lizzieLet0_1_argbuf_d;
  logic lizzieLet0_1_argbuf_r;
  Go_t go_7_2_argbuf_d;
  logic go_7_2_argbuf_r;
  TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_t call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d;
  logic call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_r;
  C5_t go_9_goMux_choice_1_d;
  logic go_9_goMux_choice_1_r;
  C5_t go_9_goMux_choice_2_d;
  logic go_9_goMux_choice_2_r;
  Pointer_QTree_Int_t wshD_1_goMux_mux_d;
  logic wshD_1_goMux_mux_r;
  Pointer_CT$wnnz_t sc_0_goMux_mux_d;
  logic sc_0_goMux_mux_r;
  MyDTInt_Bool_t isZ1a8b_2_2_argbuf_d;
  logic isZ1a8b_2_2_argbuf_r;
  MyDTInt_Bool_t isZ1a8b_2_1_d;
  logic isZ1a8b_2_1_r;
  MyDTInt_Bool_t isZ1a8b_2_2_d;
  logic isZ1a8b_2_2_r;
  MyDTInt_Bool_t isZ1a8b_3_2_argbuf_d;
  logic isZ1a8b_3_2_argbuf_r;
  MyDTInt_Bool_t isZ1a8b_3_1_d;
  logic isZ1a8b_3_1_r;
  MyDTInt_Bool_t isZ1a8b_3_2_d;
  logic isZ1a8b_3_2_r;
  MyDTInt_Bool_t isZ1a8b_4_1_argbuf_d;
  logic isZ1a8b_4_1_argbuf_r;
  \Int#_t  wwshG_3_destruct_d;
  logic wwshG_3_destruct_r;
  \Int#_t  ww1Xi8_2_destruct_d;
  logic ww1Xi8_2_destruct_r;
  \Int#_t  ww2Xib_1_destruct_d;
  logic ww2Xib_1_destruct_r;
  Pointer_CT$wnnz_t sc_0_5_destruct_d;
  logic sc_0_5_destruct_r;
  \Int#_t  wwshG_2_destruct_d;
  logic wwshG_2_destruct_r;
  \Int#_t  ww1Xi8_1_destruct_d;
  logic ww1Xi8_1_destruct_r;
  Pointer_CT$wnnz_t sc_0_4_destruct_d;
  logic sc_0_4_destruct_r;
  Pointer_QTree_Int_t q4a8y_3_destruct_d;
  logic q4a8y_3_destruct_r;
  \Int#_t  wwshG_1_destruct_d;
  logic wwshG_1_destruct_r;
  Pointer_CT$wnnz_t sc_0_3_destruct_d;
  logic sc_0_3_destruct_r;
  Pointer_QTree_Int_t q4a8y_2_destruct_d;
  logic q4a8y_2_destruct_r;
  Pointer_QTree_Int_t q3a8x_2_destruct_d;
  logic q3a8x_2_destruct_r;
  Pointer_CT$wnnz_t sc_0_2_destruct_d;
  logic sc_0_2_destruct_r;
  Pointer_QTree_Int_t q4a8y_1_destruct_d;
  logic q4a8y_1_destruct_r;
  Pointer_QTree_Int_t q3a8x_1_destruct_d;
  logic q3a8x_1_destruct_r;
  Pointer_QTree_Int_t q2a8w_1_destruct_d;
  logic q2a8w_1_destruct_r;
  CT$wnnz_t _58_d;
  logic _58_r;
  assign _58_r = 1'd1;
  CT$wnnz_t lizzieLet18_1Lcall_$wnnz3_d;
  logic lizzieLet18_1Lcall_$wnnz3_r;
  CT$wnnz_t lizzieLet18_1Lcall_$wnnz2_d;
  logic lizzieLet18_1Lcall_$wnnz2_r;
  CT$wnnz_t lizzieLet18_1Lcall_$wnnz1_d;
  logic lizzieLet18_1Lcall_$wnnz1_r;
  CT$wnnz_t lizzieLet18_1Lcall_$wnnz0_d;
  logic lizzieLet18_1Lcall_$wnnz0_r;
  Go_t _57_d;
  logic _57_r;
  assign _57_r = 1'd1;
  Go_t lizzieLet18_3Lcall_$wnnz3_d;
  logic lizzieLet18_3Lcall_$wnnz3_r;
  Go_t lizzieLet18_3Lcall_$wnnz2_d;
  logic lizzieLet18_3Lcall_$wnnz2_r;
  Go_t lizzieLet18_3Lcall_$wnnz1_d;
  logic lizzieLet18_3Lcall_$wnnz1_r;
  Go_t lizzieLet18_3Lcall_$wnnz0_d;
  logic lizzieLet18_3Lcall_$wnnz0_r;
  Go_t lizzieLet18_3Lcall_$wnnz0_1_argbuf_d;
  logic lizzieLet18_3Lcall_$wnnz0_1_argbuf_r;
  Go_t lizzieLet18_3Lcall_$wnnz1_1_argbuf_d;
  logic lizzieLet18_3Lcall_$wnnz1_1_argbuf_r;
  Go_t lizzieLet18_3Lcall_$wnnz2_1_argbuf_d;
  logic lizzieLet18_3Lcall_$wnnz2_1_argbuf_r;
  Go_t lizzieLet18_3Lcall_$wnnz3_1_argbuf_d;
  logic lizzieLet18_3Lcall_$wnnz3_1_argbuf_r;
  \Int#_t  lizzieLet18_4L$wnnzsbos_d;
  logic lizzieLet18_4L$wnnzsbos_r;
  \Int#_t  lizzieLet18_4Lcall_$wnnz3_d;
  logic lizzieLet18_4Lcall_$wnnz3_r;
  \Int#_t  lizzieLet18_4Lcall_$wnnz2_d;
  logic lizzieLet18_4Lcall_$wnnz2_r;
  \Int#_t  lizzieLet18_4Lcall_$wnnz1_d;
  logic lizzieLet18_4Lcall_$wnnz1_r;
  \Int#_t  lizzieLet18_4Lcall_$wnnz0_d;
  logic lizzieLet18_4Lcall_$wnnz0_r;
  \Int#_t  lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_d;
  logic lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_r;
  \Int#_t  lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_d;
  logic lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_r;
  Go_t call_$wnnz_goConst_d;
  logic call_$wnnz_goConst_r;
  \Int#_t  \$wnnz_resbuf_d ;
  logic \$wnnz_resbuf_r ;
  CT$wnnz_t lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_d;
  logic lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_r;
  CT$wnnz_t lizzieLet19_1_argbuf_d;
  logic lizzieLet19_1_argbuf_r;
  Bool_t lizzieLet2_1_argbuf_d;
  logic lizzieLet2_1_argbuf_r;
  Pointer_QTree_Int_t es_2_1_destruct_d;
  logic es_2_1_destruct_r;
  Pointer_QTree_Int_t es_3_2_destruct_d;
  logic es_3_2_destruct_r;
  Pointer_QTree_Int_t es_4_3_destruct_d;
  logic es_4_3_destruct_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_9_destruct_d;
  logic sc_0_9_destruct_r;
  Pointer_QTree_Int_t es_3_1_destruct_d;
  logic es_3_1_destruct_r;
  Pointer_QTree_Int_t es_4_2_destruct_d;
  logic es_4_2_destruct_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_8_destruct_d;
  logic sc_0_8_destruct_r;
  MyDTInt_Bool_t isZ1a8b_4_destruct_d;
  logic isZ1a8b_4_destruct_r;
  MyDTInt_Int_Int_t ga8c_4_destruct_d;
  logic ga8c_4_destruct_r;
  Pointer_QTree_Int_t q1a8l_3_destruct_d;
  logic q1a8l_3_destruct_r;
  Pointer_QTree_Int_t t1a8q_3_destruct_d;
  logic t1a8q_3_destruct_r;
  Pointer_QTree_Int_t es_4_1_destruct_d;
  logic es_4_1_destruct_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_7_destruct_d;
  logic sc_0_7_destruct_r;
  MyDTInt_Bool_t isZ1a8b_3_destruct_d;
  logic isZ1a8b_3_destruct_r;
  MyDTInt_Int_Int_t ga8c_3_destruct_d;
  logic ga8c_3_destruct_r;
  Pointer_QTree_Int_t q1a8l_2_destruct_d;
  logic q1a8l_2_destruct_r;
  Pointer_QTree_Int_t t1a8q_2_destruct_d;
  logic t1a8q_2_destruct_r;
  Pointer_QTree_Int_t q2a8m_2_destruct_d;
  logic q2a8m_2_destruct_r;
  Pointer_QTree_Int_t t2a8r_2_destruct_d;
  logic t2a8r_2_destruct_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_6_destruct_d;
  logic sc_0_6_destruct_r;
  MyDTInt_Bool_t isZ1a8b_2_destruct_d;
  logic isZ1a8b_2_destruct_r;
  MyDTInt_Int_Int_t ga8c_2_destruct_d;
  logic ga8c_2_destruct_r;
  Pointer_QTree_Int_t q1a8l_1_destruct_d;
  logic q1a8l_1_destruct_r;
  Pointer_QTree_Int_t t1a8q_1_destruct_d;
  logic t1a8q_1_destruct_r;
  Pointer_QTree_Int_t q2a8m_1_destruct_d;
  logic q2a8m_1_destruct_r;
  Pointer_QTree_Int_t t2a8r_1_destruct_d;
  logic t2a8r_1_destruct_r;
  Pointer_QTree_Int_t q3a8n_1_destruct_d;
  logic q3a8n_1_destruct_r;
  Pointer_QTree_Int_t t3a8s_1_destruct_d;
  logic t3a8s_1_destruct_r;
  CTmAdd_mAdd_Int_t _56_d;
  logic _56_r;
  assign _56_r = 1'd1;
  CTmAdd_mAdd_Int_t lizzieLet22_1Lcall_mAdd_mAdd_Int3_d;
  logic lizzieLet22_1Lcall_mAdd_mAdd_Int3_r;
  CTmAdd_mAdd_Int_t lizzieLet22_1Lcall_mAdd_mAdd_Int2_d;
  logic lizzieLet22_1Lcall_mAdd_mAdd_Int2_r;
  CTmAdd_mAdd_Int_t lizzieLet22_1Lcall_mAdd_mAdd_Int1_d;
  logic lizzieLet22_1Lcall_mAdd_mAdd_Int1_r;
  CTmAdd_mAdd_Int_t lizzieLet22_1Lcall_mAdd_mAdd_Int0_d;
  logic lizzieLet22_1Lcall_mAdd_mAdd_Int0_r;
  Go_t _55_d;
  logic _55_r;
  assign _55_r = 1'd1;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int3_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int3_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int2_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int2_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int1_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int1_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int0_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int0_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_r;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_r;
  Pointer_QTree_Int_t lizzieLet22_4LmAdd_mAdd_Intsbos_d;
  logic lizzieLet22_4LmAdd_mAdd_Intsbos_r;
  Pointer_QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int3_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int3_r;
  Pointer_QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int2_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int2_r;
  Pointer_QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int1_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int1_r;
  Pointer_QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int0_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int0_r;
  QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_r;
  QTree_Int_t lizzieLet26_1_argbuf_d;
  logic lizzieLet26_1_argbuf_r;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_r;
  CTmAdd_mAdd_Int_t lizzieLet25_1_argbuf_d;
  logic lizzieLet25_1_argbuf_r;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_r;
  CTmAdd_mAdd_Int_t lizzieLet24_1_argbuf_d;
  logic lizzieLet24_1_argbuf_r;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_r;
  CTmAdd_mAdd_Int_t lizzieLet23_1_argbuf_d;
  logic lizzieLet23_1_argbuf_r;
  Pointer_QTree_Int_t lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_d;
  logic lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_r;
  Pointer_QTree_Int_t lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d;
  logic lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_r;
  Go_t call_mAdd_mAdd_Int_goConst_d;
  logic call_mAdd_mAdd_Int_goConst_r;
  Go_t lizzieLet3_1MyFalse_d;
  logic lizzieLet3_1MyFalse_r;
  Go_t lizzieLet3_1MyTrue_d;
  logic lizzieLet3_1MyTrue_r;
  MyBool_t lizzieLet3_1MyFalse_1MyFalse_d;
  logic lizzieLet3_1MyFalse_1MyFalse_r;
  MyBool_t applyfnInt_Bool_5_resbuf_d;
  logic applyfnInt_Bool_5_resbuf_r;
  MyBool_t lizzieLet3_1MyTrue_1MyTrue_d;
  logic lizzieLet3_1MyTrue_1MyTrue_r;
  MyBool_t lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d;
  logic lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_r;
  Pointer_QTree_Int_t q1a8v_destruct_d;
  logic q1a8v_destruct_r;
  Pointer_QTree_Int_t q2a8w_destruct_d;
  logic q2a8w_destruct_r;
  Pointer_QTree_Int_t q3a8x_destruct_d;
  logic q3a8x_destruct_r;
  Pointer_QTree_Int_t q4a8y_destruct_d;
  logic q4a8y_destruct_r;
  QTree_Int_t _54_d;
  logic _54_r;
  assign _54_r = 1'd1;
  QTree_Int_t _53_d;
  logic _53_r;
  assign _53_r = 1'd1;
  QTree_Int_t lizzieLet4_1QNode_Int_d;
  logic lizzieLet4_1QNode_Int_r;
  QTree_Int_t _52_d;
  logic _52_r;
  assign _52_r = 1'd1;
  Go_t lizzieLet4_3QNone_Int_d;
  logic lizzieLet4_3QNone_Int_r;
  Go_t lizzieLet4_3QVal_Int_d;
  logic lizzieLet4_3QVal_Int_r;
  Go_t lizzieLet4_3QNode_Int_d;
  logic lizzieLet4_3QNode_Int_r;
  Go_t lizzieLet4_3QError_Int_d;
  logic lizzieLet4_3QError_Int_r;
  Go_t lizzieLet4_3QError_Int_1_d;
  logic lizzieLet4_3QError_Int_1_r;
  Go_t lizzieLet4_3QError_Int_2_d;
  logic lizzieLet4_3QError_Int_2_r;
  Go_t lizzieLet4_3QError_Int_1_argbuf_d;
  logic lizzieLet4_3QError_Int_1_argbuf_r;
  \Int#_t  lizzieLet4_3QError_Int_1_argbuf_0_d;
  logic lizzieLet4_3QError_Int_1_argbuf_0_r;
  \Int#_t  lizzieLet8_1_1_argbuf_d;
  logic lizzieLet8_1_1_argbuf_r;
  Go_t lizzieLet4_3QError_Int_2_argbuf_d;
  logic lizzieLet4_3QError_Int_2_argbuf_r;
  Go_t lizzieLet4_3QNode_Int_1_argbuf_d;
  logic lizzieLet4_3QNode_Int_1_argbuf_r;
  Go_t lizzieLet4_3QNone_Int_1_d;
  logic lizzieLet4_3QNone_Int_1_r;
  Go_t lizzieLet4_3QNone_Int_2_d;
  logic lizzieLet4_3QNone_Int_2_r;
  Go_t lizzieLet4_3QNone_Int_1_argbuf_d;
  logic lizzieLet4_3QNone_Int_1_argbuf_r;
  \Int#_t  lizzieLet4_3QNone_Int_1_argbuf_0_d;
  logic lizzieLet4_3QNone_Int_1_argbuf_0_r;
  \Int#_t  lizzieLet8_1_argbuf_d;
  logic lizzieLet8_1_argbuf_r;
  Go_t lizzieLet4_3QNone_Int_2_argbuf_d;
  logic lizzieLet4_3QNone_Int_2_argbuf_r;
  C4_t go_12_goMux_choice_d;
  logic go_12_goMux_choice_r;
  Go_t go_12_goMux_data_d;
  logic go_12_goMux_data_r;
  Go_t lizzieLet4_3QVal_Int_1_d;
  logic lizzieLet4_3QVal_Int_1_r;
  Go_t lizzieLet4_3QVal_Int_2_d;
  logic lizzieLet4_3QVal_Int_2_r;
  Go_t lizzieLet4_3QVal_Int_1_argbuf_d;
  logic lizzieLet4_3QVal_Int_1_argbuf_r;
  \Int#_t  lizzieLet4_3QVal_Int_1_argbuf_1_d;
  logic lizzieLet4_3QVal_Int_1_argbuf_1_r;
  \Int#_t  lizzieLet9_1_argbuf_d;
  logic lizzieLet9_1_argbuf_r;
  Go_t lizzieLet4_3QVal_Int_2_argbuf_d;
  logic lizzieLet4_3QVal_Int_2_argbuf_r;
  Pointer_CT$wnnz_t lizzieLet4_4QNone_Int_d;
  logic lizzieLet4_4QNone_Int_r;
  Pointer_CT$wnnz_t lizzieLet4_4QVal_Int_d;
  logic lizzieLet4_4QVal_Int_r;
  Pointer_CT$wnnz_t lizzieLet4_4QNode_Int_d;
  logic lizzieLet4_4QNode_Int_r;
  Pointer_CT$wnnz_t lizzieLet4_4QError_Int_d;
  logic lizzieLet4_4QError_Int_r;
  Pointer_CT$wnnz_t lizzieLet4_4QError_Int_1_argbuf_d;
  logic lizzieLet4_4QError_Int_1_argbuf_r;
  CT$wnnz_t lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_d;
  logic lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_r;
  CT$wnnz_t lizzieLet5_1_argbuf_d;
  logic lizzieLet5_1_argbuf_r;
  Pointer_CT$wnnz_t lizzieLet4_4QNone_Int_1_argbuf_d;
  logic lizzieLet4_4QNone_Int_1_argbuf_r;
  Pointer_CT$wnnz_t lizzieLet4_4QVal_Int_1_argbuf_d;
  logic lizzieLet4_4QVal_Int_1_argbuf_r;
  Pointer_QTree_Int_t q1a8l_destruct_d;
  logic q1a8l_destruct_r;
  Pointer_QTree_Int_t q2a8m_destruct_d;
  logic q2a8m_destruct_r;
  Pointer_QTree_Int_t q3a8n_destruct_d;
  logic q3a8n_destruct_r;
  Pointer_QTree_Int_t q4a8o_destruct_d;
  logic q4a8o_destruct_r;
  Int_t v1a8f_destruct_d;
  logic v1a8f_destruct_r;
  QTree_Int_t _51_d;
  logic _51_r;
  assign _51_r = 1'd1;
  QTree_Int_t lizzieLet6_1QVal_Int_d;
  logic lizzieLet6_1QVal_Int_r;
  QTree_Int_t lizzieLet6_1QNode_Int_d;
  logic lizzieLet6_1QNode_Int_r;
  QTree_Int_t _50_d;
  logic _50_r;
  assign _50_r = 1'd1;
  MyDTInt_Int_Int_t _49_d;
  logic _49_r;
  assign _49_r = 1'd1;
  MyDTInt_Int_Int_t lizzieLet6_3QVal_Int_d;
  logic lizzieLet6_3QVal_Int_r;
  MyDTInt_Int_Int_t lizzieLet6_3QNode_Int_d;
  logic lizzieLet6_3QNode_Int_r;
  MyDTInt_Int_Int_t _48_d;
  logic _48_r;
  assign _48_r = 1'd1;
  Go_t lizzieLet6_4QNone_Int_d;
  logic lizzieLet6_4QNone_Int_r;
  Go_t lizzieLet6_4QVal_Int_d;
  logic lizzieLet6_4QVal_Int_r;
  Go_t lizzieLet6_4QNode_Int_d;
  logic lizzieLet6_4QNode_Int_r;
  Go_t lizzieLet6_4QError_Int_d;
  logic lizzieLet6_4QError_Int_r;
  Go_t lizzieLet6_4QError_Int_1_d;
  logic lizzieLet6_4QError_Int_1_r;
  Go_t lizzieLet6_4QError_Int_2_d;
  logic lizzieLet6_4QError_Int_2_r;
  QTree_Int_t lizzieLet6_4QError_Int_1QError_Int_d;
  logic lizzieLet6_4QError_Int_1QError_Int_r;
  QTree_Int_t lizzieLet16_1_argbuf_d;
  logic lizzieLet16_1_argbuf_r;
  Go_t lizzieLet6_4QError_Int_2_argbuf_d;
  logic lizzieLet6_4QError_Int_2_argbuf_r;
  Go_t lizzieLet6_4QNone_Int_1_argbuf_d;
  logic lizzieLet6_4QNone_Int_1_argbuf_r;
  C11_t go_13_goMux_choice_d;
  logic go_13_goMux_choice_r;
  Go_t go_13_goMux_data_d;
  logic go_13_goMux_data_r;
  MyDTInt_Bool_t _47_d;
  logic _47_r;
  assign _47_r = 1'd1;
  MyDTInt_Bool_t lizzieLet6_5QVal_Int_d;
  logic lizzieLet6_5QVal_Int_r;
  MyDTInt_Bool_t lizzieLet6_5QNode_Int_d;
  logic lizzieLet6_5QNode_Int_r;
  MyDTInt_Bool_t _46_d;
  logic _46_r;
  assign _46_r = 1'd1;
  QTree_Int_t _45_d;
  logic _45_r;
  assign _45_r = 1'd1;
  QTree_Int_t lizzieLet6_6QVal_Int_d;
  logic lizzieLet6_6QVal_Int_r;
  QTree_Int_t lizzieLet6_6QNode_Int_d;
  logic lizzieLet6_6QNode_Int_r;
  QTree_Int_t _44_d;
  logic _44_r;
  assign _44_r = 1'd1;
  QTree_Int_t lizzieLet6_6QNode_Int_1_d;
  logic lizzieLet6_6QNode_Int_1_r;
  QTree_Int_t lizzieLet6_6QNode_Int_2_d;
  logic lizzieLet6_6QNode_Int_2_r;
  QTree_Int_t lizzieLet6_6QNode_Int_3_d;
  logic lizzieLet6_6QNode_Int_3_r;
  QTree_Int_t lizzieLet6_6QNode_Int_4_d;
  logic lizzieLet6_6QNode_Int_4_r;
  QTree_Int_t lizzieLet6_6QNode_Int_5_d;
  logic lizzieLet6_6QNode_Int_5_r;
  QTree_Int_t lizzieLet6_6QNode_Int_6_d;
  logic lizzieLet6_6QNode_Int_6_r;
  QTree_Int_t lizzieLet6_6QNode_Int_7_d;
  logic lizzieLet6_6QNode_Int_7_r;
  QTree_Int_t lizzieLet6_6QNode_Int_8_d;
  logic lizzieLet6_6QNode_Int_8_r;
  QTree_Int_t lizzieLet6_6QNode_Int_9_d;
  logic lizzieLet6_6QNode_Int_9_r;
  QTree_Int_t lizzieLet6_6QNode_Int_10_d;
  logic lizzieLet6_6QNode_Int_10_r;
  QTree_Int_t lizzieLet6_6QNode_Int_11_d;
  logic lizzieLet6_6QNode_Int_11_r;
  Pointer_QTree_Int_t _43_d;
  logic _43_r;
  assign _43_r = 1'd1;
  Pointer_QTree_Int_t _42_d;
  logic _42_r;
  assign _42_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_10QNode_Int_d;
  logic lizzieLet6_6QNode_Int_10QNode_Int_r;
  Pointer_QTree_Int_t _41_d;
  logic _41_r;
  assign _41_r = 1'd1;
  Pointer_QTree_Int_t _40_d;
  logic _40_r;
  assign _40_r = 1'd1;
  Pointer_QTree_Int_t _39_d;
  logic _39_r;
  assign _39_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_11QNode_Int_d;
  logic lizzieLet6_6QNode_Int_11QNode_Int_r;
  Pointer_QTree_Int_t _38_d;
  logic _38_r;
  assign _38_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_r;
  Pointer_QTree_Int_t t1a8q_destruct_d;
  logic t1a8q_destruct_r;
  Pointer_QTree_Int_t t2a8r_destruct_d;
  logic t2a8r_destruct_r;
  Pointer_QTree_Int_t t3a8s_destruct_d;
  logic t3a8s_destruct_r;
  Pointer_QTree_Int_t t4a8t_destruct_d;
  logic t4a8t_destruct_r;
  QTree_Int_t _37_d;
  logic _37_r;
  assign _37_r = 1'd1;
  QTree_Int_t _36_d;
  logic _36_r;
  assign _36_r = 1'd1;
  QTree_Int_t lizzieLet6_6QNode_Int_1QNode_Int_d;
  logic lizzieLet6_6QNode_Int_1QNode_Int_r;
  QTree_Int_t _35_d;
  logic _35_r;
  assign _35_r = 1'd1;
  MyDTInt_Int_Int_t _34_d;
  logic _34_r;
  assign _34_r = 1'd1;
  MyDTInt_Int_Int_t _33_d;
  logic _33_r;
  assign _33_r = 1'd1;
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_d;
  logic lizzieLet6_6QNode_Int_3QNode_Int_r;
  MyDTInt_Int_Int_t _32_d;
  logic _32_r;
  assign _32_r = 1'd1;
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_1_d;
  logic lizzieLet6_6QNode_Int_3QNode_Int_1_r;
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_2_d;
  logic lizzieLet6_6QNode_Int_3QNode_Int_2_r;
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_d;
  logic lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QNone_Int_d;
  logic lizzieLet6_6QNode_Int_4QNone_Int_r;
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_r;
  Go_t lizzieLet6_6QNode_Int_4QNode_Int_d;
  logic lizzieLet6_6QNode_Int_4QNode_Int_r;
  Go_t lizzieLet6_6QNode_Int_4QError_Int_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_r;
  Go_t lizzieLet6_6QNode_Int_4QError_Int_1_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_1_r;
  Go_t lizzieLet6_6QNode_Int_4QError_Int_2_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_2_r;
  QTree_Int_t lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_r;
  QTree_Int_t lizzieLet15_1_argbuf_d;
  logic lizzieLet15_1_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_1_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_1_r;
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_2_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_2_r;
  QTree_Int_t lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_r;
  QTree_Int_t lizzieLet13_1_argbuf_d;
  logic lizzieLet13_1_argbuf_r;
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_r;
  MyDTInt_Bool_t _31_d;
  logic _31_r;
  assign _31_r = 1'd1;
  MyDTInt_Bool_t _30_d;
  logic _30_r;
  assign _30_r = 1'd1;
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_d;
  logic lizzieLet6_6QNode_Int_5QNode_Int_r;
  MyDTInt_Bool_t _29_d;
  logic _29_r;
  assign _29_r = 1'd1;
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_1_d;
  logic lizzieLet6_6QNode_Int_5QNode_Int_1_r;
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_2_d;
  logic lizzieLet6_6QNode_Int_5QNode_Int_2_r;
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_d;
  logic lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_r;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_6QNone_Int_d;
  logic lizzieLet6_6QNode_Int_6QNone_Int_r;
  Pointer_QTree_Int_t _28_d;
  logic _28_r;
  assign _28_r = 1'd1;
  Pointer_QTree_Int_t _27_d;
  logic _27_r;
  assign _27_r = 1'd1;
  Pointer_QTree_Int_t _26_d;
  logic _26_r;
  assign _26_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNone_Int_d;
  logic lizzieLet6_6QNode_Int_7QNone_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QVal_Int_d;
  logic lizzieLet6_6QNode_Int_7QVal_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNode_Int_d;
  logic lizzieLet6_6QNode_Int_7QNode_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QError_Int_d;
  logic lizzieLet6_6QNode_Int_7QError_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_r;
  CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_d;
  logic lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_r;
  CTmAdd_mAdd_Int_t lizzieLet14_1_argbuf_d;
  logic lizzieLet14_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_d;
  logic lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_r;
  Pointer_QTree_Int_t _25_d;
  logic _25_r;
  assign _25_r = 1'd1;
  Pointer_QTree_Int_t _24_d;
  logic _24_r;
  assign _24_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_8QNode_Int_d;
  logic lizzieLet6_6QNode_Int_8QNode_Int_r;
  Pointer_QTree_Int_t _23_d;
  logic _23_r;
  assign _23_r = 1'd1;
  Pointer_QTree_Int_t _22_d;
  logic _22_r;
  assign _22_r = 1'd1;
  Pointer_QTree_Int_t _21_d;
  logic _21_r;
  assign _21_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_9QNode_Int_d;
  logic lizzieLet6_6QNode_Int_9QNode_Int_r;
  Pointer_QTree_Int_t _20_d;
  logic _20_r;
  assign _20_r = 1'd1;
  QTree_Int_t lizzieLet6_6QVal_Int_1_d;
  logic lizzieLet6_6QVal_Int_1_r;
  QTree_Int_t lizzieLet6_6QVal_Int_2_d;
  logic lizzieLet6_6QVal_Int_2_r;
  QTree_Int_t lizzieLet6_6QVal_Int_3_d;
  logic lizzieLet6_6QVal_Int_3_r;
  QTree_Int_t lizzieLet6_6QVal_Int_4_d;
  logic lizzieLet6_6QVal_Int_4_r;
  QTree_Int_t lizzieLet6_6QVal_Int_5_d;
  logic lizzieLet6_6QVal_Int_5_r;
  QTree_Int_t lizzieLet6_6QVal_Int_6_d;
  logic lizzieLet6_6QVal_Int_6_r;
  QTree_Int_t lizzieLet6_6QVal_Int_7_d;
  logic lizzieLet6_6QVal_Int_7_r;
  QTree_Int_t lizzieLet6_6QVal_Int_8_d;
  logic lizzieLet6_6QVal_Int_8_r;
  Int_t va8g_destruct_d;
  logic va8g_destruct_r;
  QTree_Int_t _19_d;
  logic _19_r;
  assign _19_r = 1'd1;
  QTree_Int_t lizzieLet6_6QVal_Int_1QVal_Int_d;
  logic lizzieLet6_6QVal_Int_1QVal_Int_r;
  QTree_Int_t _18_d;
  logic _18_r;
  assign _18_r = 1'd1;
  QTree_Int_t _17_d;
  logic _17_r;
  assign _17_r = 1'd1;
  MyDTInt_Int_Int_t _16_d;
  logic _16_r;
  assign _16_r = 1'd1;
  MyDTInt_Int_Int_t lizzieLet6_6QVal_Int_3QVal_Int_d;
  logic lizzieLet6_6QVal_Int_3QVal_Int_r;
  MyDTInt_Int_Int_t _15_d;
  logic _15_r;
  assign _15_r = 1'd1;
  MyDTInt_Int_Int_t _14_d;
  logic _14_r;
  assign _14_r = 1'd1;
  MyDTInt_Int_Int_t lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_r;
  TupMyDTInt_Int_Int___Int___Int_t applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d;
  logic applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_r;
  Go_t lizzieLet6_6QVal_Int_4QNone_Int_d;
  logic lizzieLet6_6QVal_Int_4QNone_Int_r;
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_d;
  logic lizzieLet6_6QVal_Int_4QVal_Int_r;
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_r;
  Go_t lizzieLet6_6QVal_Int_4QError_Int_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_r;
  Go_t lizzieLet6_6QVal_Int_4QError_Int_1_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_1_r;
  Go_t lizzieLet6_6QVal_Int_4QError_Int_2_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_2_r;
  QTree_Int_t lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_r;
  QTree_Int_t lizzieLet11_1_argbuf_d;
  logic lizzieLet11_1_argbuf_r;
  Go_t lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_r;
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_1_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_1_r;
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_2_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_2_r;
  QTree_Int_t lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_r;
  QTree_Int_t lizzieLet10_1_1_argbuf_d;
  logic lizzieLet10_1_1_argbuf_r;
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_r;
  Go_t lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_r;
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_1_d;
  logic lizzieLet6_6QVal_Int_4QVal_Int_1_r;
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_2_d;
  logic lizzieLet6_6QVal_Int_4QVal_Int_2_r;
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_r;
  TupGo___MyDTInt_Bool___Int_t applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d;
  logic applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_r;
  MyDTInt_Bool_t _13_d;
  logic _13_r;
  assign _13_r = 1'd1;
  MyDTInt_Bool_t lizzieLet6_6QVal_Int_5QVal_Int_d;
  logic lizzieLet6_6QVal_Int_5QVal_Int_r;
  MyDTInt_Bool_t _12_d;
  logic _12_r;
  assign _12_r = 1'd1;
  MyDTInt_Bool_t _11_d;
  logic _11_r;
  assign _11_r = 1'd1;
  MyDTInt_Bool_t lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_r;
  Pointer_QTree_Int_t lizzieLet6_6QVal_Int_6QNone_Int_d;
  logic lizzieLet6_6QVal_Int_6QNone_Int_r;
  Pointer_QTree_Int_t _10_d;
  logic _10_r;
  assign _10_r = 1'd1;
  Pointer_QTree_Int_t _9_d;
  logic _9_r;
  assign _9_r = 1'd1;
  Pointer_QTree_Int_t _8_d;
  logic _8_r;
  assign _8_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNone_Int_d;
  logic lizzieLet6_6QVal_Int_7QNone_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QVal_Int_d;
  logic lizzieLet6_6QVal_Int_7QVal_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNode_Int_d;
  logic lizzieLet6_6QVal_Int_7QNode_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QError_Int_d;
  logic lizzieLet6_6QVal_Int_7QError_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_r;
  Int_t _7_d;
  logic _7_r;
  assign _7_r = 1'd1;
  Int_t lizzieLet6_6QVal_Int_8QVal_Int_d;
  logic lizzieLet6_6QVal_Int_8QVal_Int_r;
  Int_t _6_d;
  logic _6_r;
  assign _6_r = 1'd1;
  Int_t _5_d;
  logic _5_r;
  assign _5_r = 1'd1;
  Int_t lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_d;
  logic lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_r;
  Pointer_QTree_Int_t _4_d;
  logic _4_r;
  assign _4_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_7QVal_Int_d;
  logic lizzieLet6_7QVal_Int_r;
  Pointer_QTree_Int_t lizzieLet6_7QNode_Int_d;
  logic lizzieLet6_7QNode_Int_r;
  Pointer_QTree_Int_t _3_d;
  logic _3_r;
  assign _3_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_8QNone_Int_d;
  logic lizzieLet6_8QNone_Int_r;
  Pointer_QTree_Int_t _2_d;
  logic _2_r;
  assign _2_r = 1'd1;
  Pointer_QTree_Int_t _1_d;
  logic _1_r;
  assign _1_r = 1'd1;
  Pointer_QTree_Int_t _0_d;
  logic _0_r;
  assign _0_r = 1'd1;
  Pointer_QTree_Int_t lizzieLet6_8QNone_Int_1_argbuf_d;
  logic lizzieLet6_8QNone_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QNone_Int_d;
  logic lizzieLet6_9QNone_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QVal_Int_d;
  logic lizzieLet6_9QVal_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QNode_Int_d;
  logic lizzieLet6_9QNode_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QError_Int_d;
  logic lizzieLet6_9QError_Int_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QError_Int_1_argbuf_d;
  logic lizzieLet6_9QError_Int_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QNone_Int_1_argbuf_d;
  logic lizzieLet6_9QNone_Int_1_argbuf_r;
  Pointer_QTree_Int_t m1a8d_1_argbuf_d;
  logic m1a8d_1_argbuf_r;
  Pointer_QTree_Int_t m1a8d_1_d;
  logic m1a8d_1_r;
  Pointer_QTree_Int_t m1a8d_2_d;
  logic m1a8d_2_r;
  Pointer_QTree_Int_t m2a8e_1_argbuf_d;
  logic m2a8e_1_argbuf_r;
  Pointer_QTree_Int_t m2a8e_1_d;
  logic m2a8e_1_r;
  Pointer_QTree_Int_t m2a8e_2_d;
  logic m2a8e_2_r;
  C2_t mAdd_mAdd_Int_choice_d;
  logic mAdd_mAdd_Int_choice_r;
  TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_t mAdd_mAdd_Int_data_d;
  logic mAdd_mAdd_Int_data_r;
  MyDTInt_Int_Int_t ga8c_1_1_argbuf_d;
  logic ga8c_1_1_argbuf_r;
  Go_t go_11_1_d;
  logic go_11_1_r;
  Go_t go_11_2_d;
  logic go_11_2_r;
  MyDTInt_Bool_t isZ1a8b_1_1_argbuf_d;
  logic isZ1a8b_1_1_argbuf_r;
  Pointer_QTree_Int_t m1a8d_1_1_argbuf_d;
  logic m1a8d_1_1_argbuf_r;
  Pointer_QTree_Int_t m2a8e_1_1_argbuf_d;
  logic m2a8e_1_1_argbuf_r;
  Pointer_QTree_Int_t mAdd_mAdd_Int_resbuf_d;
  logic mAdd_mAdd_Int_resbuf_r;
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_argbuf_d;
  logic mAdd_mAdd_Int_2_argbuf_r;
  Pointer_QTree_Int_t es_0_1_1_argbuf_d;
  logic es_0_1_1_argbuf_r;
  Pointer_QTree_Int_t mAdd_mAdd_Int_1_d;
  logic mAdd_mAdd_Int_1_r;
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_d;
  logic mAdd_mAdd_Int_2_r;
  Go_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_r;
  MyDTInt_Bool_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_r;
  MyDTInt_Int_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_r;
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_r;
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_r;
  Pointer_QTree_Int_t es_3_1_argbuf_d;
  logic es_3_1_argbuf_r;
  Pointer_QTree_Int_t q1a8l_3_1_argbuf_d;
  logic q1a8l_3_1_argbuf_r;
  Pointer_QTree_Int_t q1a8v_1_argbuf_d;
  logic q1a8v_1_argbuf_r;
  Pointer_QTree_Int_t q2a8m_2_1_argbuf_d;
  logic q2a8m_2_1_argbuf_r;
  Pointer_QTree_Int_t q2a8w_1_1_argbuf_d;
  logic q2a8w_1_1_argbuf_r;
  Pointer_QTree_Int_t q3a8n_1_1_argbuf_d;
  logic q3a8n_1_1_argbuf_r;
  Pointer_QTree_Int_t q3a8x_2_1_argbuf_d;
  logic q3a8x_2_1_argbuf_r;
  Pointer_QTree_Int_t q4a8y_3_1_argbuf_d;
  logic q4a8y_3_1_argbuf_r;
  CT$wnnz_t readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d;
  logic readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_r;
  CT$wnnz_t lizzieLet18_1_d;
  logic lizzieLet18_1_r;
  CT$wnnz_t lizzieLet18_2_d;
  logic lizzieLet18_2_r;
  CT$wnnz_t lizzieLet18_3_d;
  logic lizzieLet18_3_r;
  CT$wnnz_t lizzieLet18_4_d;
  logic lizzieLet18_4_r;
  CTmAdd_mAdd_Int_t readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d;
  logic readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_r;
  CTmAdd_mAdd_Int_t lizzieLet22_1_d;
  logic lizzieLet22_1_r;
  CTmAdd_mAdd_Int_t lizzieLet22_2_d;
  logic lizzieLet22_2_r;
  CTmAdd_mAdd_Int_t lizzieLet22_3_d;
  logic lizzieLet22_3_r;
  CTmAdd_mAdd_Int_t lizzieLet22_4_d;
  logic lizzieLet22_4_r;
  QTree_Int_t readPointer_QTree_Intm1a8d_1_argbuf_rwb_d;
  logic readPointer_QTree_Intm1a8d_1_argbuf_rwb_r;
  QTree_Int_t lizzieLet6_1_d;
  logic lizzieLet6_1_r;
  QTree_Int_t lizzieLet6_2_d;
  logic lizzieLet6_2_r;
  QTree_Int_t lizzieLet6_3_d;
  logic lizzieLet6_3_r;
  QTree_Int_t lizzieLet6_4_d;
  logic lizzieLet6_4_r;
  QTree_Int_t lizzieLet6_5_d;
  logic lizzieLet6_5_r;
  QTree_Int_t lizzieLet6_6_d;
  logic lizzieLet6_6_r;
  QTree_Int_t lizzieLet6_7_d;
  logic lizzieLet6_7_r;
  QTree_Int_t lizzieLet6_8_d;
  logic lizzieLet6_8_r;
  QTree_Int_t lizzieLet6_9_d;
  logic lizzieLet6_9_r;
  QTree_Int_t readPointer_QTree_Intm2a8e_1_argbuf_rwb_d;
  logic readPointer_QTree_Intm2a8e_1_argbuf_rwb_r;
  QTree_Int_t readPointer_QTree_IntwshD_1_1_argbuf_rwb_d;
  logic readPointer_QTree_IntwshD_1_1_argbuf_rwb_r;
  QTree_Int_t lizzieLet4_1_d;
  logic lizzieLet4_1_r;
  QTree_Int_t lizzieLet4_2_d;
  logic lizzieLet4_2_r;
  QTree_Int_t lizzieLet4_3_d;
  logic lizzieLet4_3_r;
  QTree_Int_t lizzieLet4_4_d;
  logic lizzieLet4_4_r;
  Pointer_CT$wnnz_t sc_0_5_1_argbuf_d;
  logic sc_0_5_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t sc_0_9_1_argbuf_d;
  logic sc_0_9_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t scfarg_0_1_1_argbuf_d;
  logic scfarg_0_1_1_argbuf_r;
  Pointer_CT$wnnz_t scfarg_0_1_argbuf_d;
  logic scfarg_0_1_argbuf_r;
  Pointer_QTree_Int_t t1a8q_3_1_argbuf_d;
  logic t1a8q_3_1_argbuf_r;
  Pointer_QTree_Int_t t2a8r_2_1_argbuf_d;
  logic t2a8r_2_1_argbuf_r;
  Pointer_QTree_Int_t t3a8s_1_1_argbuf_d;
  logic t3a8s_1_1_argbuf_r;
  Pointer_QTree_Int_t t4a8t_1_argbuf_d;
  logic t4a8t_1_argbuf_r;
  Int_t va8g_1_argbuf_d;
  logic va8g_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_rwb_d;
  logic writeCT$wnnzlizzieLet0_1_argbuf_rwb_r;
  Pointer_CT$wnnz_t lizzieLet10_1_argbuf_d;
  logic lizzieLet10_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_rwb_d;
  logic writeCT$wnnzlizzieLet19_1_argbuf_rwb_r;
  Pointer_CT$wnnz_t sca2_1_argbuf_d;
  logic sca2_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_rwb_d;
  logic writeCT$wnnzlizzieLet20_1_argbuf_rwb_r;
  Pointer_CT$wnnz_t sca1_1_argbuf_d;
  logic sca1_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_rwb_d;
  logic writeCT$wnnzlizzieLet21_1_argbuf_rwb_r;
  Pointer_CT$wnnz_t sca0_1_argbuf_d;
  logic sca0_1_argbuf_r;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_rwb_d;
  logic writeCT$wnnzlizzieLet5_1_argbuf_rwb_r;
  Pointer_CT$wnnz_t sca3_1_argbuf_d;
  logic sca3_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Int_t sca3_1_1_argbuf_d;
  logic sca3_1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet7_1_1_argbuf_d;
  logic lizzieLet7_1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Int_t sca2_1_1_argbuf_d;
  logic sca2_1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Int_t sca1_1_1_argbuf_d;
  logic sca1_1_1_argbuf_r;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_d;
  logic writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_r;
  Pointer_CTmAdd_mAdd_Int_t sca0_1_1_argbuf_d;
  logic sca0_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet10_1_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet2_1_1_argbuf_d;
  logic lizzieLet2_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet11_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet3_1_1_argbuf_d;
  logic lizzieLet3_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet13_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet4_1_1_argbuf_d;
  logic lizzieLet4_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet15_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet5_1_1_argbuf_d;
  logic lizzieLet5_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet16_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet6_1_1_argbuf_d;
  logic lizzieLet6_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet26_1_argbuf_rwb_r;
  Pointer_QTree_Int_t contRet_0_1_1_argbuf_d;
  logic contRet_0_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet8_2_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet0_1_1_argbuf_d;
  logic lizzieLet0_1_1_argbuf_r;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_rwb_d;
  logic writeQTree_IntlizzieLet9_1_1_argbuf_rwb_r;
  Pointer_QTree_Int_t lizzieLet1_1_1_argbuf_d;
  logic lizzieLet1_1_1_argbuf_r;
  Pointer_QTree_Int_t wshD_1_1_argbuf_d;
  logic wshD_1_1_argbuf_r;
  CT$wnnz_t lizzieLet20_1_argbuf_d;
  logic lizzieLet20_1_argbuf_r;
  CT$wnnz_t wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_d;
  logic wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_r;
  CT$wnnz_t lizzieLet21_1_argbuf_d;
  logic lizzieLet21_1_argbuf_r;
  CT$wnnz_t wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_d;
  logic wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_r;
  \Int#_t  es_6_1_1ww2Xib_1_1_Add32_d;
  logic es_6_1_1ww2Xib_1_1_Add32_r;
  \Int#_t  wwshG_3_1ww1Xi8_2_1_Add32_d;
  logic wwshG_3_1ww1Xi8_2_1_Add32_r;
  Int_t xa8a_1_argbuf_d;
  logic xa8a_1_argbuf_r;
  
  /* fork (Ty Go) : (sourceGo,Go) > [(goFork,Go),
                                (goFor_2,Go),
                                (goFor_3,Go),
                                (goFor_4,Go),
                                (goFor_5,Go)] */
  logic [4:0] sourceGo_emitted;
  logic [4:0] sourceGo_done;
  assign goFork_d = (sourceGo_d[0] && (! sourceGo_emitted[0]));
  assign goFor_2_d = (sourceGo_d[0] && (! sourceGo_emitted[1]));
  assign goFor_3_d = (sourceGo_d[0] && (! sourceGo_emitted[2]));
  assign goFor_4_d = (sourceGo_d[0] && (! sourceGo_emitted[3]));
  assign goFor_5_d = (sourceGo_d[0] && (! sourceGo_emitted[4]));
  assign sourceGo_done = (sourceGo_emitted | ({goFor_5_d[0],
                                               goFor_4_d[0],
                                               goFor_3_d[0],
                                               goFor_2_d[0],
                                               goFork_d[0]} & {goFor_5_r,
                                                               goFor_4_r,
                                                               goFor_3_r,
                                                               goFor_2_r,
                                                               goFork_r}));
  assign sourceGo_r = (& sourceGo_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sourceGo_emitted <= 5'd0;
    else
      sourceGo_emitted <= (sourceGo_r ? 5'd0 :
                           sourceGo_done);
  
  /* const (Ty Word16#,Lit 0) : (goFor_2,Go) > (initHP_CT$wnnz,Word16#) */
  assign initHP_CT$wnnz_d = {16'd0, goFor_2_d[0]};
  assign goFor_2_r = initHP_CT$wnnz_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CT$wnnz1,Go) > (incrHP_CT$wnnz,Word16#) */
  assign incrHP_CT$wnnz_d = {16'd1, incrHP_CT$wnnz1_d[0]};
  assign incrHP_CT$wnnz1_r = incrHP_CT$wnnz_r;
  
  /* merge (Ty Go) : [(goFor_3,Go),
                 (incrHP_CT$wnnz2,Go)] > (incrHP_mergeCT$wnnz,Go) */
  logic [1:0] incrHP_mergeCT$wnnz_selected;
  logic [1:0] incrHP_mergeCT$wnnz_select;
  always_comb
    begin
      incrHP_mergeCT$wnnz_selected = 2'd0;
      if ((| incrHP_mergeCT$wnnz_select))
        incrHP_mergeCT$wnnz_selected = incrHP_mergeCT$wnnz_select;
      else
        if (goFor_3_d[0]) incrHP_mergeCT$wnnz_selected[0] = 1'd1;
        else if (incrHP_CT$wnnz2_d[0])
          incrHP_mergeCT$wnnz_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wnnz_select <= 2'd0;
    else
      incrHP_mergeCT$wnnz_select <= (incrHP_mergeCT$wnnz_r ? 2'd0 :
                                     incrHP_mergeCT$wnnz_selected);
  always_comb
    if (incrHP_mergeCT$wnnz_selected[0])
      incrHP_mergeCT$wnnz_d = goFor_3_d;
    else if (incrHP_mergeCT$wnnz_selected[1])
      incrHP_mergeCT$wnnz_d = incrHP_CT$wnnz2_d;
    else incrHP_mergeCT$wnnz_d = 1'd0;
  assign {incrHP_CT$wnnz2_r,
          goFor_3_r} = (incrHP_mergeCT$wnnz_r ? incrHP_mergeCT$wnnz_selected :
                        2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCT$wnnz_buf,Go) > [(incrHP_CT$wnnz1,Go),
                                               (incrHP_CT$wnnz2,Go)] */
  logic [1:0] incrHP_mergeCT$wnnz_buf_emitted;
  logic [1:0] incrHP_mergeCT$wnnz_buf_done;
  assign incrHP_CT$wnnz1_d = (incrHP_mergeCT$wnnz_buf_d[0] && (! incrHP_mergeCT$wnnz_buf_emitted[0]));
  assign incrHP_CT$wnnz2_d = (incrHP_mergeCT$wnnz_buf_d[0] && (! incrHP_mergeCT$wnnz_buf_emitted[1]));
  assign incrHP_mergeCT$wnnz_buf_done = (incrHP_mergeCT$wnnz_buf_emitted | ({incrHP_CT$wnnz2_d[0],
                                                                             incrHP_CT$wnnz1_d[0]} & {incrHP_CT$wnnz2_r,
                                                                                                      incrHP_CT$wnnz1_r}));
  assign incrHP_mergeCT$wnnz_buf_r = (& incrHP_mergeCT$wnnz_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wnnz_buf_emitted <= 2'd0;
    else
      incrHP_mergeCT$wnnz_buf_emitted <= (incrHP_mergeCT$wnnz_buf_r ? 2'd0 :
                                          incrHP_mergeCT$wnnz_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_CT$wnnz,Word16#) (forkHP1_CT$wnnz,Word16#) > (addHP_CT$wnnz,Word16#) */
  assign addHP_CT$wnnz_d = {(incrHP_CT$wnnz_d[16:1] + forkHP1_CT$wnnz_d[16:1]),
                            (incrHP_CT$wnnz_d[0] && forkHP1_CT$wnnz_d[0])};
  assign {incrHP_CT$wnnz_r,
          forkHP1_CT$wnnz_r} = {2 {(addHP_CT$wnnz_r && addHP_CT$wnnz_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_CT$wnnz,Word16#),
                      (addHP_CT$wnnz,Word16#)] > (mergeHP_CT$wnnz,Word16#) */
  logic [1:0] mergeHP_CT$wnnz_selected;
  logic [1:0] mergeHP_CT$wnnz_select;
  always_comb
    begin
      mergeHP_CT$wnnz_selected = 2'd0;
      if ((| mergeHP_CT$wnnz_select))
        mergeHP_CT$wnnz_selected = mergeHP_CT$wnnz_select;
      else
        if (initHP_CT$wnnz_d[0]) mergeHP_CT$wnnz_selected[0] = 1'd1;
        else if (addHP_CT$wnnz_d[0]) mergeHP_CT$wnnz_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wnnz_select <= 2'd0;
    else
      mergeHP_CT$wnnz_select <= (mergeHP_CT$wnnz_r ? 2'd0 :
                                 mergeHP_CT$wnnz_selected);
  always_comb
    if (mergeHP_CT$wnnz_selected[0])
      mergeHP_CT$wnnz_d = initHP_CT$wnnz_d;
    else if (mergeHP_CT$wnnz_selected[1])
      mergeHP_CT$wnnz_d = addHP_CT$wnnz_d;
    else mergeHP_CT$wnnz_d = {16'd0, 1'd0};
  assign {addHP_CT$wnnz_r,
          initHP_CT$wnnz_r} = (mergeHP_CT$wnnz_r ? mergeHP_CT$wnnz_selected :
                               2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCT$wnnz,Go) > (incrHP_mergeCT$wnnz_buf,Go) */
  Go_t incrHP_mergeCT$wnnz_bufchan_d;
  logic incrHP_mergeCT$wnnz_bufchan_r;
  assign incrHP_mergeCT$wnnz_r = ((! incrHP_mergeCT$wnnz_bufchan_d[0]) || incrHP_mergeCT$wnnz_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wnnz_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeCT$wnnz_r)
        incrHP_mergeCT$wnnz_bufchan_d <= incrHP_mergeCT$wnnz_d;
  Go_t incrHP_mergeCT$wnnz_bufchan_buf;
  assign incrHP_mergeCT$wnnz_bufchan_r = (! incrHP_mergeCT$wnnz_bufchan_buf[0]);
  assign incrHP_mergeCT$wnnz_buf_d = (incrHP_mergeCT$wnnz_bufchan_buf[0] ? incrHP_mergeCT$wnnz_bufchan_buf :
                                      incrHP_mergeCT$wnnz_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCT$wnnz_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeCT$wnnz_buf_r && incrHP_mergeCT$wnnz_bufchan_buf[0]))
        incrHP_mergeCT$wnnz_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeCT$wnnz_buf_r) && (! incrHP_mergeCT$wnnz_bufchan_buf[0])))
        incrHP_mergeCT$wnnz_bufchan_buf <= incrHP_mergeCT$wnnz_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_CT$wnnz,Word16#) > (mergeHP_CT$wnnz_buf,Word16#) */
  \Word16#_t  mergeHP_CT$wnnz_bufchan_d;
  logic mergeHP_CT$wnnz_bufchan_r;
  assign mergeHP_CT$wnnz_r = ((! mergeHP_CT$wnnz_bufchan_d[0]) || mergeHP_CT$wnnz_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wnnz_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_CT$wnnz_r)
        mergeHP_CT$wnnz_bufchan_d <= mergeHP_CT$wnnz_d;
  \Word16#_t  mergeHP_CT$wnnz_bufchan_buf;
  assign mergeHP_CT$wnnz_bufchan_r = (! mergeHP_CT$wnnz_bufchan_buf[0]);
  assign mergeHP_CT$wnnz_buf_d = (mergeHP_CT$wnnz_bufchan_buf[0] ? mergeHP_CT$wnnz_bufchan_buf :
                                  mergeHP_CT$wnnz_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wnnz_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_CT$wnnz_buf_r && mergeHP_CT$wnnz_bufchan_buf[0]))
        mergeHP_CT$wnnz_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_CT$wnnz_buf_r) && (! mergeHP_CT$wnnz_bufchan_buf[0])))
        mergeHP_CT$wnnz_bufchan_buf <= mergeHP_CT$wnnz_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_CT$wnnz_buf,Word16#) > [(forkHP1_CT$wnnz,Word16#),
                                                     (forkHP1_CT$wnn2,Word16#),
                                                     (forkHP1_CT$wnn3,Word16#)] */
  logic [2:0] mergeHP_CT$wnnz_buf_emitted;
  logic [2:0] mergeHP_CT$wnnz_buf_done;
  assign forkHP1_CT$wnnz_d = {mergeHP_CT$wnnz_buf_d[16:1],
                              (mergeHP_CT$wnnz_buf_d[0] && (! mergeHP_CT$wnnz_buf_emitted[0]))};
  assign forkHP1_CT$wnn2_d = {mergeHP_CT$wnnz_buf_d[16:1],
                              (mergeHP_CT$wnnz_buf_d[0] && (! mergeHP_CT$wnnz_buf_emitted[1]))};
  assign forkHP1_CT$wnn3_d = {mergeHP_CT$wnnz_buf_d[16:1],
                              (mergeHP_CT$wnnz_buf_d[0] && (! mergeHP_CT$wnnz_buf_emitted[2]))};
  assign mergeHP_CT$wnnz_buf_done = (mergeHP_CT$wnnz_buf_emitted | ({forkHP1_CT$wnn3_d[0],
                                                                     forkHP1_CT$wnn2_d[0],
                                                                     forkHP1_CT$wnnz_d[0]} & {forkHP1_CT$wnn3_r,
                                                                                              forkHP1_CT$wnn2_r,
                                                                                              forkHP1_CT$wnnz_r}));
  assign mergeHP_CT$wnnz_buf_r = (& mergeHP_CT$wnnz_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CT$wnnz_buf_emitted <= 3'd0;
    else
      mergeHP_CT$wnnz_buf_emitted <= (mergeHP_CT$wnnz_buf_r ? 3'd0 :
                                      mergeHP_CT$wnnz_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_CT$wnnz) : [(dconReadIn_CT$wnnz,MemIn_CT$wnnz),
                                (dconWriteIn_CT$wnnz,MemIn_CT$wnnz)] > (memMergeChoice_CT$wnnz,C2) (memMergeIn_CT$wnnz,MemIn_CT$wnnz) */
  logic [1:0] dconReadIn_CT$wnnz_select_d;
  assign dconReadIn_CT$wnnz_select_d = ((| dconReadIn_CT$wnnz_select_q) ? dconReadIn_CT$wnnz_select_q :
                                        (dconReadIn_CT$wnnz_d[0] ? 2'd1 :
                                         (dconWriteIn_CT$wnnz_d[0] ? 2'd2 :
                                          2'd0)));
  logic [1:0] dconReadIn_CT$wnnz_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CT$wnnz_select_q <= 2'd0;
    else
      dconReadIn_CT$wnnz_select_q <= (dconReadIn_CT$wnnz_done ? 2'd0 :
                                      dconReadIn_CT$wnnz_select_d);
  logic [1:0] dconReadIn_CT$wnnz_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CT$wnnz_emit_q <= 2'd0;
    else
      dconReadIn_CT$wnnz_emit_q <= (dconReadIn_CT$wnnz_done ? 2'd0 :
                                    dconReadIn_CT$wnnz_emit_d);
  logic [1:0] dconReadIn_CT$wnnz_emit_d;
  assign dconReadIn_CT$wnnz_emit_d = (dconReadIn_CT$wnnz_emit_q | ({memMergeChoice_CT$wnnz_d[0],
                                                                    memMergeIn_CT$wnnz_d[0]} & {memMergeChoice_CT$wnnz_r,
                                                                                                memMergeIn_CT$wnnz_r}));
  logic dconReadIn_CT$wnnz_done;
  assign dconReadIn_CT$wnnz_done = (& dconReadIn_CT$wnnz_emit_d);
  assign {dconWriteIn_CT$wnnz_r,
          dconReadIn_CT$wnnz_r} = (dconReadIn_CT$wnnz_done ? dconReadIn_CT$wnnz_select_d :
                                   2'd0);
  assign memMergeIn_CT$wnnz_d = ((dconReadIn_CT$wnnz_select_d[0] && (! dconReadIn_CT$wnnz_emit_q[0])) ? dconReadIn_CT$wnnz_d :
                                 ((dconReadIn_CT$wnnz_select_d[1] && (! dconReadIn_CT$wnnz_emit_q[0])) ? dconWriteIn_CT$wnnz_d :
                                  {132'd0, 1'd0}));
  assign memMergeChoice_CT$wnnz_d = ((dconReadIn_CT$wnnz_select_d[0] && (! dconReadIn_CT$wnnz_emit_q[1])) ? C1_2_dc(1'd1) :
                                     ((dconReadIn_CT$wnnz_select_d[1] && (! dconReadIn_CT$wnnz_emit_q[1])) ? C2_2_dc(1'd1) :
                                      {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CT$wnnz,
      Ty MemOut_CT$wnnz) : (memMergeIn_CT$wnnz_dbuf,MemIn_CT$wnnz) > (memOut_CT$wnnz,MemOut_CT$wnnz) */
  logic [114:0] memMergeIn_CT$wnnz_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CT$wnnz_dbuf_address;
  logic [114:0] memMergeIn_CT$wnnz_dbuf_din;
  logic [114:0] memOut_CT$wnnz_q;
  logic memOut_CT$wnnz_valid;
  logic memMergeIn_CT$wnnz_dbuf_we;
  logic memOut_CT$wnnz_we;
  assign memMergeIn_CT$wnnz_dbuf_din = memMergeIn_CT$wnnz_dbuf_d[132:18];
  assign memMergeIn_CT$wnnz_dbuf_address = memMergeIn_CT$wnnz_dbuf_d[17:2];
  assign memMergeIn_CT$wnnz_dbuf_we = (memMergeIn_CT$wnnz_dbuf_d[1:1] && memMergeIn_CT$wnnz_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_CT$wnnz_we <= 1'd0;
        memOut_CT$wnnz_valid <= 1'd0;
      end
    else
      begin
        memOut_CT$wnnz_we <= memMergeIn_CT$wnnz_dbuf_we;
        memOut_CT$wnnz_valid <= memMergeIn_CT$wnnz_dbuf_d[0];
        if (memMergeIn_CT$wnnz_dbuf_we)
          begin
            memMergeIn_CT$wnnz_dbuf_mem[memMergeIn_CT$wnnz_dbuf_address] <= memMergeIn_CT$wnnz_dbuf_din;
            memOut_CT$wnnz_q <= memMergeIn_CT$wnnz_dbuf_din;
          end
        else
          memOut_CT$wnnz_q <= memMergeIn_CT$wnnz_dbuf_mem[memMergeIn_CT$wnnz_dbuf_address];
      end
  assign memOut_CT$wnnz_d = {memOut_CT$wnnz_q,
                             memOut_CT$wnnz_we,
                             memOut_CT$wnnz_valid};
  assign memMergeIn_CT$wnnz_dbuf_r = ((! memOut_CT$wnnz_valid) || memOut_CT$wnnz_r);
  logic [31:0] profiling_MemIn_CT$wnnz_read;
  logic [31:0] profiling_MemIn_CT$wnnz_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_CT$wnnz_write <= 0;
        profiling_MemIn_CT$wnnz_read <= 0;
      end
    else
      if ((memMergeIn_CT$wnnz_dbuf_we == 1'd1))
        profiling_MemIn_CT$wnnz_write <= (profiling_MemIn_CT$wnnz_write + 1);
      else
        if ((memOut_CT$wnnz_valid == 1'd1))
          profiling_MemIn_CT$wnnz_read <= (profiling_MemIn_CT$wnnz_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CT$wnnz) : (memMergeChoice_CT$wnnz,C2) (memOut_CT$wnnz_dbuf,MemOut_CT$wnnz) > [(memReadOut_CT$wnnz,MemOut_CT$wnnz),
                                                                                                (memWriteOut_CT$wnnz,MemOut_CT$wnnz)] */
  logic [1:0] memOut_CT$wnnz_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_CT$wnnz_d[0] && memOut_CT$wnnz_dbuf_d[0]))
      unique case (memMergeChoice_CT$wnnz_d[1:1])
        1'd0: memOut_CT$wnnz_dbuf_onehotd = 2'd1;
        1'd1: memOut_CT$wnnz_dbuf_onehotd = 2'd2;
        default: memOut_CT$wnnz_dbuf_onehotd = 2'd0;
      endcase
    else memOut_CT$wnnz_dbuf_onehotd = 2'd0;
  assign memReadOut_CT$wnnz_d = {memOut_CT$wnnz_dbuf_d[116:1],
                                 memOut_CT$wnnz_dbuf_onehotd[0]};
  assign memWriteOut_CT$wnnz_d = {memOut_CT$wnnz_dbuf_d[116:1],
                                  memOut_CT$wnnz_dbuf_onehotd[1]};
  assign memOut_CT$wnnz_dbuf_r = (| (memOut_CT$wnnz_dbuf_onehotd & {memWriteOut_CT$wnnz_r,
                                                                    memReadOut_CT$wnnz_r}));
  assign memMergeChoice_CT$wnnz_r = memOut_CT$wnnz_dbuf_r;
  
  /* dbuf (Ty MemIn_CT$wnnz) : (memMergeIn_CT$wnnz_rbuf,MemIn_CT$wnnz) > (memMergeIn_CT$wnnz_dbuf,MemIn_CT$wnnz) */
  assign memMergeIn_CT$wnnz_rbuf_r = ((! memMergeIn_CT$wnnz_dbuf_d[0]) || memMergeIn_CT$wnnz_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CT$wnnz_dbuf_d <= {132'd0, 1'd0};
    else
      if (memMergeIn_CT$wnnz_rbuf_r)
        memMergeIn_CT$wnnz_dbuf_d <= memMergeIn_CT$wnnz_rbuf_d;
  
  /* rbuf (Ty MemIn_CT$wnnz) : (memMergeIn_CT$wnnz,MemIn_CT$wnnz) > (memMergeIn_CT$wnnz_rbuf,MemIn_CT$wnnz) */
  MemIn_CT$wnnz_t memMergeIn_CT$wnnz_buf;
  assign memMergeIn_CT$wnnz_r = (! memMergeIn_CT$wnnz_buf[0]);
  assign memMergeIn_CT$wnnz_rbuf_d = (memMergeIn_CT$wnnz_buf[0] ? memMergeIn_CT$wnnz_buf :
                                      memMergeIn_CT$wnnz_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_CT$wnnz_buf <= {132'd0, 1'd0};
    else
      if ((memMergeIn_CT$wnnz_rbuf_r && memMergeIn_CT$wnnz_buf[0]))
        memMergeIn_CT$wnnz_buf <= {132'd0, 1'd0};
      else if (((! memMergeIn_CT$wnnz_rbuf_r) && (! memMergeIn_CT$wnnz_buf[0])))
        memMergeIn_CT$wnnz_buf <= memMergeIn_CT$wnnz_d;
  
  /* dbuf (Ty MemOut_CT$wnnz) : (memOut_CT$wnnz_rbuf,MemOut_CT$wnnz) > (memOut_CT$wnnz_dbuf,MemOut_CT$wnnz) */
  assign memOut_CT$wnnz_rbuf_r = ((! memOut_CT$wnnz_dbuf_d[0]) || memOut_CT$wnnz_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CT$wnnz_dbuf_d <= {116'd0, 1'd0};
    else
      if (memOut_CT$wnnz_rbuf_r)
        memOut_CT$wnnz_dbuf_d <= memOut_CT$wnnz_rbuf_d;
  
  /* rbuf (Ty MemOut_CT$wnnz) : (memOut_CT$wnnz,MemOut_CT$wnnz) > (memOut_CT$wnnz_rbuf,MemOut_CT$wnnz) */
  MemOut_CT$wnnz_t memOut_CT$wnnz_buf;
  assign memOut_CT$wnnz_r = (! memOut_CT$wnnz_buf[0]);
  assign memOut_CT$wnnz_rbuf_d = (memOut_CT$wnnz_buf[0] ? memOut_CT$wnnz_buf :
                                  memOut_CT$wnnz_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CT$wnnz_buf <= {116'd0, 1'd0};
    else
      if ((memOut_CT$wnnz_rbuf_r && memOut_CT$wnnz_buf[0]))
        memOut_CT$wnnz_buf <= {116'd0, 1'd0};
      else if (((! memOut_CT$wnnz_rbuf_r) && (! memOut_CT$wnnz_buf[0])))
        memOut_CT$wnnz_buf <= memOut_CT$wnnz_d;
  
  /* destruct (Ty Pointer_CT$wnnz,
          Dcon Pointer_CT$wnnz) : (scfarg_0_1_argbuf,Pointer_CT$wnnz) > [(destructReadIn_CT$wnnz,Word16#)] */
  assign destructReadIn_CT$wnnz_d = {scfarg_0_1_argbuf_d[16:1],
                                     scfarg_0_1_argbuf_d[0]};
  assign scfarg_0_1_argbuf_r = destructReadIn_CT$wnnz_r;
  
  /* dcon (Ty MemIn_CT$wnnz,
      Dcon ReadIn_CT$wnnz) : [(destructReadIn_CT$wnnz,Word16#)] > (dconReadIn_CT$wnnz,MemIn_CT$wnnz) */
  assign dconReadIn_CT$wnnz_d = ReadIn_CT$wnnz_dc((& {destructReadIn_CT$wnnz_d[0]}), destructReadIn_CT$wnnz_d);
  assign {destructReadIn_CT$wnnz_r} = {1 {(dconReadIn_CT$wnnz_r && dconReadIn_CT$wnnz_d[0])}};
  
  /* destruct (Ty MemOut_CT$wnnz,
          Dcon ReadOut_CT$wnnz) : (memReadOut_CT$wnnz,MemOut_CT$wnnz) > [(readPointer_CT$wnnzscfarg_0_1_argbuf,CT$wnnz)] */
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_d = {memReadOut_CT$wnnz_d[116:2],
                                                   memReadOut_CT$wnnz_d[0]};
  assign memReadOut_CT$wnnz_r = readPointer_CT$wnnzscfarg_0_1_argbuf_r;
  
  /* mergectrl (Ty C5,Ty CT$wnnz) : [(lizzieLet0_1_argbuf,CT$wnnz),
                                (lizzieLet19_1_argbuf,CT$wnnz),
                                (lizzieLet20_1_argbuf,CT$wnnz),
                                (lizzieLet21_1_argbuf,CT$wnnz),
                                (lizzieLet5_1_argbuf,CT$wnnz)] > (writeMerge_choice_CT$wnnz,C5) (writeMerge_data_CT$wnnz,CT$wnnz) */
  logic [4:0] lizzieLet0_1_argbuf_select_d;
  assign lizzieLet0_1_argbuf_select_d = ((| lizzieLet0_1_argbuf_select_q) ? lizzieLet0_1_argbuf_select_q :
                                         (lizzieLet0_1_argbuf_d[0] ? 5'd1 :
                                          (lizzieLet19_1_argbuf_d[0] ? 5'd2 :
                                           (lizzieLet20_1_argbuf_d[0] ? 5'd4 :
                                            (lizzieLet21_1_argbuf_d[0] ? 5'd8 :
                                             (lizzieLet5_1_argbuf_d[0] ? 5'd16 :
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
  assign lizzieLet0_1_argbuf_emit_d = (lizzieLet0_1_argbuf_emit_q | ({writeMerge_choice_CT$wnnz_d[0],
                                                                      writeMerge_data_CT$wnnz_d[0]} & {writeMerge_choice_CT$wnnz_r,
                                                                                                       writeMerge_data_CT$wnnz_r}));
  logic lizzieLet0_1_argbuf_done;
  assign lizzieLet0_1_argbuf_done = (& lizzieLet0_1_argbuf_emit_d);
  assign {lizzieLet5_1_argbuf_r,
          lizzieLet21_1_argbuf_r,
          lizzieLet20_1_argbuf_r,
          lizzieLet19_1_argbuf_r,
          lizzieLet0_1_argbuf_r} = (lizzieLet0_1_argbuf_done ? lizzieLet0_1_argbuf_select_d :
                                    5'd0);
  assign writeMerge_data_CT$wnnz_d = ((lizzieLet0_1_argbuf_select_d[0] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet0_1_argbuf_d :
                                      ((lizzieLet0_1_argbuf_select_d[1] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet19_1_argbuf_d :
                                       ((lizzieLet0_1_argbuf_select_d[2] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet20_1_argbuf_d :
                                        ((lizzieLet0_1_argbuf_select_d[3] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet21_1_argbuf_d :
                                         ((lizzieLet0_1_argbuf_select_d[4] && (! lizzieLet0_1_argbuf_emit_q[0])) ? lizzieLet5_1_argbuf_d :
                                          {115'd0, 1'd0})))));
  assign writeMerge_choice_CT$wnnz_d = ((lizzieLet0_1_argbuf_select_d[0] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                        ((lizzieLet0_1_argbuf_select_d[1] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                         ((lizzieLet0_1_argbuf_select_d[2] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                          ((lizzieLet0_1_argbuf_select_d[3] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                           ((lizzieLet0_1_argbuf_select_d[4] && (! lizzieLet0_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                            {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CT$wnnz) : (writeMerge_choice_CT$wnnz,C5) (demuxWriteResult_CT$wnnz,Pointer_CT$wnnz) > [(writeCT$wnnzlizzieLet0_1_argbuf,Pointer_CT$wnnz),
                                                                                                          (writeCT$wnnzlizzieLet19_1_argbuf,Pointer_CT$wnnz),
                                                                                                          (writeCT$wnnzlizzieLet20_1_argbuf,Pointer_CT$wnnz),
                                                                                                          (writeCT$wnnzlizzieLet21_1_argbuf,Pointer_CT$wnnz),
                                                                                                          (writeCT$wnnzlizzieLet5_1_argbuf,Pointer_CT$wnnz)] */
  logic [4:0] demuxWriteResult_CT$wnnz_onehotd;
  always_comb
    if ((writeMerge_choice_CT$wnnz_d[0] && demuxWriteResult_CT$wnnz_d[0]))
      unique case (writeMerge_choice_CT$wnnz_d[3:1])
        3'd0: demuxWriteResult_CT$wnnz_onehotd = 5'd1;
        3'd1: demuxWriteResult_CT$wnnz_onehotd = 5'd2;
        3'd2: demuxWriteResult_CT$wnnz_onehotd = 5'd4;
        3'd3: demuxWriteResult_CT$wnnz_onehotd = 5'd8;
        3'd4: demuxWriteResult_CT$wnnz_onehotd = 5'd16;
        default: demuxWriteResult_CT$wnnz_onehotd = 5'd0;
      endcase
    else demuxWriteResult_CT$wnnz_onehotd = 5'd0;
  assign writeCT$wnnzlizzieLet0_1_argbuf_d = {demuxWriteResult_CT$wnnz_d[16:1],
                                              demuxWriteResult_CT$wnnz_onehotd[0]};
  assign writeCT$wnnzlizzieLet19_1_argbuf_d = {demuxWriteResult_CT$wnnz_d[16:1],
                                               demuxWriteResult_CT$wnnz_onehotd[1]};
  assign writeCT$wnnzlizzieLet20_1_argbuf_d = {demuxWriteResult_CT$wnnz_d[16:1],
                                               demuxWriteResult_CT$wnnz_onehotd[2]};
  assign writeCT$wnnzlizzieLet21_1_argbuf_d = {demuxWriteResult_CT$wnnz_d[16:1],
                                               demuxWriteResult_CT$wnnz_onehotd[3]};
  assign writeCT$wnnzlizzieLet5_1_argbuf_d = {demuxWriteResult_CT$wnnz_d[16:1],
                                              demuxWriteResult_CT$wnnz_onehotd[4]};
  assign demuxWriteResult_CT$wnnz_r = (| (demuxWriteResult_CT$wnnz_onehotd & {writeCT$wnnzlizzieLet5_1_argbuf_r,
                                                                              writeCT$wnnzlizzieLet21_1_argbuf_r,
                                                                              writeCT$wnnzlizzieLet20_1_argbuf_r,
                                                                              writeCT$wnnzlizzieLet19_1_argbuf_r,
                                                                              writeCT$wnnzlizzieLet0_1_argbuf_r}));
  assign writeMerge_choice_CT$wnnz_r = demuxWriteResult_CT$wnnz_r;
  
  /* dcon (Ty MemIn_CT$wnnz,
      Dcon WriteIn_CT$wnnz) : [(forkHP1_CT$wnn2,Word16#),
                               (writeMerge_data_CT$wnnz,CT$wnnz)] > (dconWriteIn_CT$wnnz,MemIn_CT$wnnz) */
  assign dconWriteIn_CT$wnnz_d = WriteIn_CT$wnnz_dc((& {forkHP1_CT$wnn2_d[0],
                                                        writeMerge_data_CT$wnnz_d[0]}), forkHP1_CT$wnn2_d, writeMerge_data_CT$wnnz_d);
  assign {forkHP1_CT$wnn2_r,
          writeMerge_data_CT$wnnz_r} = {2 {(dconWriteIn_CT$wnnz_r && dconWriteIn_CT$wnnz_d[0])}};
  
  /* dcon (Ty Pointer_CT$wnnz,
      Dcon Pointer_CT$wnnz) : [(forkHP1_CT$wnn3,Word16#)] > (dconPtr_CT$wnnz,Pointer_CT$wnnz) */
  assign dconPtr_CT$wnnz_d = Pointer_CT$wnnz_dc((& {forkHP1_CT$wnn3_d[0]}), forkHP1_CT$wnn3_d);
  assign {forkHP1_CT$wnn3_r} = {1 {(dconPtr_CT$wnnz_r && dconPtr_CT$wnnz_d[0])}};
  
  /* demux (Ty MemOut_CT$wnnz,
       Ty Pointer_CT$wnnz) : (memWriteOut_CT$wnnz,MemOut_CT$wnnz) (dconPtr_CT$wnnz,Pointer_CT$wnnz) > [(_62,Pointer_CT$wnnz),
                                                                                                       (demuxWriteResult_CT$wnnz,Pointer_CT$wnnz)] */
  logic [1:0] dconPtr_CT$wnnz_onehotd;
  always_comb
    if ((memWriteOut_CT$wnnz_d[0] && dconPtr_CT$wnnz_d[0]))
      unique case (memWriteOut_CT$wnnz_d[1:1])
        1'd0: dconPtr_CT$wnnz_onehotd = 2'd1;
        1'd1: dconPtr_CT$wnnz_onehotd = 2'd2;
        default: dconPtr_CT$wnnz_onehotd = 2'd0;
      endcase
    else dconPtr_CT$wnnz_onehotd = 2'd0;
  assign _62_d = {dconPtr_CT$wnnz_d[16:1],
                  dconPtr_CT$wnnz_onehotd[0]};
  assign demuxWriteResult_CT$wnnz_d = {dconPtr_CT$wnnz_d[16:1],
                                       dconPtr_CT$wnnz_onehotd[1]};
  assign dconPtr_CT$wnnz_r = (| (dconPtr_CT$wnnz_onehotd & {demuxWriteResult_CT$wnnz_r,
                                                            _62_r}));
  assign memWriteOut_CT$wnnz_r = dconPtr_CT$wnnz_r;
  
  /* const (Ty Word16#,
       Lit 0) : (go_1_dummy_write_QTree_Int,Go) > (initHP_QTree_Int,Word16#) */
  assign initHP_QTree_Int_d = {16'd0,
                               go_1_dummy_write_QTree_Int_d[0]};
  assign go_1_dummy_write_QTree_Int_r = initHP_QTree_Int_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_QTree_Int1,Go) > (incrHP_QTree_Int,Word16#) */
  assign incrHP_QTree_Int_d = {16'd1, incrHP_QTree_Int1_d[0]};
  assign incrHP_QTree_Int1_r = incrHP_QTree_Int_r;
  
  /* merge (Ty Go) : [(go_2_dummy_write_QTree_Int,Go),
                 (incrHP_QTree_Int2,Go)] > (incrHP_mergeQTree_Int,Go) */
  logic [1:0] incrHP_mergeQTree_Int_selected;
  logic [1:0] incrHP_mergeQTree_Int_select;
  always_comb
    begin
      incrHP_mergeQTree_Int_selected = 2'd0;
      if ((| incrHP_mergeQTree_Int_select))
        incrHP_mergeQTree_Int_selected = incrHP_mergeQTree_Int_select;
      else
        if (go_2_dummy_write_QTree_Int_d[0])
          incrHP_mergeQTree_Int_selected[0] = 1'd1;
        else if (incrHP_QTree_Int2_d[0])
          incrHP_mergeQTree_Int_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Int_select <= 2'd0;
    else
      incrHP_mergeQTree_Int_select <= (incrHP_mergeQTree_Int_r ? 2'd0 :
                                       incrHP_mergeQTree_Int_selected);
  always_comb
    if (incrHP_mergeQTree_Int_selected[0])
      incrHP_mergeQTree_Int_d = go_2_dummy_write_QTree_Int_d;
    else if (incrHP_mergeQTree_Int_selected[1])
      incrHP_mergeQTree_Int_d = incrHP_QTree_Int2_d;
    else incrHP_mergeQTree_Int_d = 1'd0;
  assign {incrHP_QTree_Int2_r,
          go_2_dummy_write_QTree_Int_r} = (incrHP_mergeQTree_Int_r ? incrHP_mergeQTree_Int_selected :
                                           2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeQTree_Int_buf,Go) > [(incrHP_QTree_Int1,Go),
                                                 (incrHP_QTree_Int2,Go)] */
  logic [1:0] incrHP_mergeQTree_Int_buf_emitted;
  logic [1:0] incrHP_mergeQTree_Int_buf_done;
  assign incrHP_QTree_Int1_d = (incrHP_mergeQTree_Int_buf_d[0] && (! incrHP_mergeQTree_Int_buf_emitted[0]));
  assign incrHP_QTree_Int2_d = (incrHP_mergeQTree_Int_buf_d[0] && (! incrHP_mergeQTree_Int_buf_emitted[1]));
  assign incrHP_mergeQTree_Int_buf_done = (incrHP_mergeQTree_Int_buf_emitted | ({incrHP_QTree_Int2_d[0],
                                                                                 incrHP_QTree_Int1_d[0]} & {incrHP_QTree_Int2_r,
                                                                                                            incrHP_QTree_Int1_r}));
  assign incrHP_mergeQTree_Int_buf_r = (& incrHP_mergeQTree_Int_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Int_buf_emitted <= 2'd0;
    else
      incrHP_mergeQTree_Int_buf_emitted <= (incrHP_mergeQTree_Int_buf_r ? 2'd0 :
                                            incrHP_mergeQTree_Int_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_QTree_Int,Word16#) (forkHP1_QTree_Int,Word16#) > (addHP_QTree_Int,Word16#) */
  assign addHP_QTree_Int_d = {(incrHP_QTree_Int_d[16:1] + forkHP1_QTree_Int_d[16:1]),
                              (incrHP_QTree_Int_d[0] && forkHP1_QTree_Int_d[0])};
  assign {incrHP_QTree_Int_r,
          forkHP1_QTree_Int_r} = {2 {(addHP_QTree_Int_r && addHP_QTree_Int_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_QTree_Int,Word16#),
                      (addHP_QTree_Int,Word16#)] > (mergeHP_QTree_Int,Word16#) */
  logic [1:0] mergeHP_QTree_Int_selected;
  logic [1:0] mergeHP_QTree_Int_select;
  always_comb
    begin
      mergeHP_QTree_Int_selected = 2'd0;
      if ((| mergeHP_QTree_Int_select))
        mergeHP_QTree_Int_selected = mergeHP_QTree_Int_select;
      else
        if (initHP_QTree_Int_d[0]) mergeHP_QTree_Int_selected[0] = 1'd1;
        else if (addHP_QTree_Int_d[0])
          mergeHP_QTree_Int_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Int_select <= 2'd0;
    else
      mergeHP_QTree_Int_select <= (mergeHP_QTree_Int_r ? 2'd0 :
                                   mergeHP_QTree_Int_selected);
  always_comb
    if (mergeHP_QTree_Int_selected[0])
      mergeHP_QTree_Int_d = initHP_QTree_Int_d;
    else if (mergeHP_QTree_Int_selected[1])
      mergeHP_QTree_Int_d = addHP_QTree_Int_d;
    else mergeHP_QTree_Int_d = {16'd0, 1'd0};
  assign {addHP_QTree_Int_r,
          initHP_QTree_Int_r} = (mergeHP_QTree_Int_r ? mergeHP_QTree_Int_selected :
                                 2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeQTree_Int,Go) > (incrHP_mergeQTree_Int_buf,Go) */
  Go_t incrHP_mergeQTree_Int_bufchan_d;
  logic incrHP_mergeQTree_Int_bufchan_r;
  assign incrHP_mergeQTree_Int_r = ((! incrHP_mergeQTree_Int_bufchan_d[0]) || incrHP_mergeQTree_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Int_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeQTree_Int_r)
        incrHP_mergeQTree_Int_bufchan_d <= incrHP_mergeQTree_Int_d;
  Go_t incrHP_mergeQTree_Int_bufchan_buf;
  assign incrHP_mergeQTree_Int_bufchan_r = (! incrHP_mergeQTree_Int_bufchan_buf[0]);
  assign incrHP_mergeQTree_Int_buf_d = (incrHP_mergeQTree_Int_bufchan_buf[0] ? incrHP_mergeQTree_Int_bufchan_buf :
                                        incrHP_mergeQTree_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeQTree_Int_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeQTree_Int_buf_r && incrHP_mergeQTree_Int_bufchan_buf[0]))
        incrHP_mergeQTree_Int_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeQTree_Int_buf_r) && (! incrHP_mergeQTree_Int_bufchan_buf[0])))
        incrHP_mergeQTree_Int_bufchan_buf <= incrHP_mergeQTree_Int_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_QTree_Int,Word16#) > (mergeHP_QTree_Int_buf,Word16#) */
  \Word16#_t  mergeHP_QTree_Int_bufchan_d;
  logic mergeHP_QTree_Int_bufchan_r;
  assign mergeHP_QTree_Int_r = ((! mergeHP_QTree_Int_bufchan_d[0]) || mergeHP_QTree_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_QTree_Int_r)
        mergeHP_QTree_Int_bufchan_d <= mergeHP_QTree_Int_d;
  \Word16#_t  mergeHP_QTree_Int_bufchan_buf;
  assign mergeHP_QTree_Int_bufchan_r = (! mergeHP_QTree_Int_bufchan_buf[0]);
  assign mergeHP_QTree_Int_buf_d = (mergeHP_QTree_Int_bufchan_buf[0] ? mergeHP_QTree_Int_bufchan_buf :
                                    mergeHP_QTree_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_QTree_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_QTree_Int_buf_r && mergeHP_QTree_Int_bufchan_buf[0]))
        mergeHP_QTree_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_QTree_Int_buf_r) && (! mergeHP_QTree_Int_bufchan_buf[0])))
        mergeHP_QTree_Int_bufchan_buf <= mergeHP_QTree_Int_bufchan_d;
  
  /* sink (Ty Word16#) : (forkHP1_QTree_Int_snk,Word16#) > */
  assign {forkHP1_QTree_Int_snk_r,
          forkHP1_QTree_Int_snk_dout} = {forkHP1_QTree_Int_snk_rout,
                                         forkHP1_QTree_Int_snk_d};
  
  /* source (Ty Go) : > (\QTree_Int_src,Go) */
  
  /* fork (Ty Go) : (\QTree_Int_src,Go) > [(go_1_dummy_write_QTree_Int,Go),
                                      (go_2_dummy_write_QTree_Int,Go)] */
  logic [1:0] \\QTree_Int_src_emitted ;
  logic [1:0] \\QTree_Int_src_done ;
  assign go_1_dummy_write_QTree_Int_d = (\\QTree_Int_src_d [0] && (! \\QTree_Int_src_emitted [0]));
  assign go_2_dummy_write_QTree_Int_d = (\\QTree_Int_src_d [0] && (! \\QTree_Int_src_emitted [1]));
  assign \\QTree_Int_src_done  = (\\QTree_Int_src_emitted  | ({go_2_dummy_write_QTree_Int_d[0],
                                                               go_1_dummy_write_QTree_Int_d[0]} & {go_2_dummy_write_QTree_Int_r,
                                                                                                   go_1_dummy_write_QTree_Int_r}));
  assign \\QTree_Int_src_r  = (& \\QTree_Int_src_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \\QTree_Int_src_emitted  <= 2'd0;
    else
      \\QTree_Int_src_emitted  <= (\\QTree_Int_src_r  ? 2'd0 :
                                   \\QTree_Int_src_done );
  
  /* source (Ty QTree_Int) : > (dummy_write_QTree_Int,QTree_Int) */
  
  /* sink (Ty Pointer_QTree_Int) : (dummy_write_QTree_Int_sink,Pointer_QTree_Int) > */
  assign {dummy_write_QTree_Int_sink_r,
          dummy_write_QTree_Int_sink_dout} = {dummy_write_QTree_Int_sink_rout,
                                              dummy_write_QTree_Int_sink_d};
  
  /* fork (Ty Word16#) : (mergeHP_QTree_Int_buf,Word16#) > [(forkHP1_QTree_Int,Word16#),
                                                       (forkHP1_QTree_Int_snk,Word16#),
                                                       (forkHP1_QTree_In3,Word16#),
                                                       (forkHP1_QTree_In4,Word16#)] */
  logic [3:0] mergeHP_QTree_Int_buf_emitted;
  logic [3:0] mergeHP_QTree_Int_buf_done;
  assign forkHP1_QTree_Int_d = {mergeHP_QTree_Int_buf_d[16:1],
                                (mergeHP_QTree_Int_buf_d[0] && (! mergeHP_QTree_Int_buf_emitted[0]))};
  assign forkHP1_QTree_Int_snk_d = {mergeHP_QTree_Int_buf_d[16:1],
                                    (mergeHP_QTree_Int_buf_d[0] && (! mergeHP_QTree_Int_buf_emitted[1]))};
  assign forkHP1_QTree_In3_d = {mergeHP_QTree_Int_buf_d[16:1],
                                (mergeHP_QTree_Int_buf_d[0] && (! mergeHP_QTree_Int_buf_emitted[2]))};
  assign forkHP1_QTree_In4_d = {mergeHP_QTree_Int_buf_d[16:1],
                                (mergeHP_QTree_Int_buf_d[0] && (! mergeHP_QTree_Int_buf_emitted[3]))};
  assign mergeHP_QTree_Int_buf_done = (mergeHP_QTree_Int_buf_emitted | ({forkHP1_QTree_In4_d[0],
                                                                         forkHP1_QTree_In3_d[0],
                                                                         forkHP1_QTree_Int_snk_d[0],
                                                                         forkHP1_QTree_Int_d[0]} & {forkHP1_QTree_In4_r,
                                                                                                    forkHP1_QTree_In3_r,
                                                                                                    forkHP1_QTree_Int_snk_r,
                                                                                                    forkHP1_QTree_Int_r}));
  assign mergeHP_QTree_Int_buf_r = (& mergeHP_QTree_Int_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_QTree_Int_buf_emitted <= 4'd0;
    else
      mergeHP_QTree_Int_buf_emitted <= (mergeHP_QTree_Int_buf_r ? 4'd0 :
                                        mergeHP_QTree_Int_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_QTree_Int) : [(dconReadIn_QTree_Int,MemIn_QTree_Int),
                                  (dconWriteIn_QTree_Int,MemIn_QTree_Int)] > (memMergeChoice_QTree_Int,C2) (memMergeIn_QTree_Int,MemIn_QTree_Int) */
  logic [1:0] dconReadIn_QTree_Int_select_d;
  assign dconReadIn_QTree_Int_select_d = ((| dconReadIn_QTree_Int_select_q) ? dconReadIn_QTree_Int_select_q :
                                          (dconReadIn_QTree_Int_d[0] ? 2'd1 :
                                           (dconWriteIn_QTree_Int_d[0] ? 2'd2 :
                                            2'd0)));
  logic [1:0] dconReadIn_QTree_Int_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_QTree_Int_select_q <= 2'd0;
    else
      dconReadIn_QTree_Int_select_q <= (dconReadIn_QTree_Int_done ? 2'd0 :
                                        dconReadIn_QTree_Int_select_d);
  logic [1:0] dconReadIn_QTree_Int_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_QTree_Int_emit_q <= 2'd0;
    else
      dconReadIn_QTree_Int_emit_q <= (dconReadIn_QTree_Int_done ? 2'd0 :
                                      dconReadIn_QTree_Int_emit_d);
  logic [1:0] dconReadIn_QTree_Int_emit_d;
  assign dconReadIn_QTree_Int_emit_d = (dconReadIn_QTree_Int_emit_q | ({memMergeChoice_QTree_Int_d[0],
                                                                        memMergeIn_QTree_Int_d[0]} & {memMergeChoice_QTree_Int_r,
                                                                                                      memMergeIn_QTree_Int_r}));
  logic dconReadIn_QTree_Int_done;
  assign dconReadIn_QTree_Int_done = (& dconReadIn_QTree_Int_emit_d);
  assign {dconWriteIn_QTree_Int_r,
          dconReadIn_QTree_Int_r} = (dconReadIn_QTree_Int_done ? dconReadIn_QTree_Int_select_d :
                                     2'd0);
  assign memMergeIn_QTree_Int_d = ((dconReadIn_QTree_Int_select_d[0] && (! dconReadIn_QTree_Int_emit_q[0])) ? dconReadIn_QTree_Int_d :
                                   ((dconReadIn_QTree_Int_select_d[1] && (! dconReadIn_QTree_Int_emit_q[0])) ? dconWriteIn_QTree_Int_d :
                                    {83'd0, 1'd0}));
  assign memMergeChoice_QTree_Int_d = ((dconReadIn_QTree_Int_select_d[0] && (! dconReadIn_QTree_Int_emit_q[1])) ? C1_2_dc(1'd1) :
                                       ((dconReadIn_QTree_Int_select_d[1] && (! dconReadIn_QTree_Int_emit_q[1])) ? C2_2_dc(1'd1) :
                                        {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_QTree_Int,
      Ty MemOut_QTree_Int) : (memMergeIn_QTree_Int_dbuf,MemIn_QTree_Int) > (memOut_QTree_Int,MemOut_QTree_Int) */
  logic [65:0] memMergeIn_QTree_Int_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_QTree_Int_dbuf_address;
  logic [65:0] memMergeIn_QTree_Int_dbuf_din;
  logic [65:0] memOut_QTree_Int_q;
  logic memOut_QTree_Int_valid;
  logic memMergeIn_QTree_Int_dbuf_we;
  logic memOut_QTree_Int_we;
  assign memMergeIn_QTree_Int_dbuf_din = memMergeIn_QTree_Int_dbuf_d[83:18];
  assign memMergeIn_QTree_Int_dbuf_address = memMergeIn_QTree_Int_dbuf_d[17:2];
  assign memMergeIn_QTree_Int_dbuf_we = (memMergeIn_QTree_Int_dbuf_d[1:1] && memMergeIn_QTree_Int_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_QTree_Int_we <= 1'd0;
        memOut_QTree_Int_valid <= 1'd0;
      end
    else
      begin
        memOut_QTree_Int_we <= memMergeIn_QTree_Int_dbuf_we;
        memOut_QTree_Int_valid <= memMergeIn_QTree_Int_dbuf_d[0];
        if (memMergeIn_QTree_Int_dbuf_we)
          begin
            memMergeIn_QTree_Int_dbuf_mem[memMergeIn_QTree_Int_dbuf_address] <= memMergeIn_QTree_Int_dbuf_din;
            memOut_QTree_Int_q <= memMergeIn_QTree_Int_dbuf_din;
          end
        else
          memOut_QTree_Int_q <= memMergeIn_QTree_Int_dbuf_mem[memMergeIn_QTree_Int_dbuf_address];
      end
  assign memOut_QTree_Int_d = {memOut_QTree_Int_q,
                               memOut_QTree_Int_we,
                               memOut_QTree_Int_valid};
  assign memMergeIn_QTree_Int_dbuf_r = ((! memOut_QTree_Int_valid) || memOut_QTree_Int_r);
  logic [31:0] profiling_MemIn_QTree_Int_read;
  logic [31:0] profiling_MemIn_QTree_Int_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_QTree_Int_write <= 0;
        profiling_MemIn_QTree_Int_read <= 0;
      end
    else
      if ((memMergeIn_QTree_Int_dbuf_we == 1'd1))
        profiling_MemIn_QTree_Int_write <= (profiling_MemIn_QTree_Int_write + 1);
      else
        if ((memOut_QTree_Int_valid == 1'd1))
          profiling_MemIn_QTree_Int_read <= (profiling_MemIn_QTree_Int_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_QTree_Int) : (memMergeChoice_QTree_Int,C2) (memOut_QTree_Int_dbuf,MemOut_QTree_Int) > [(memReadOut_QTree_Int,MemOut_QTree_Int),
                                                                                                        (memWriteOut_QTree_Int,MemOut_QTree_Int)] */
  logic [1:0] memOut_QTree_Int_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_QTree_Int_d[0] && memOut_QTree_Int_dbuf_d[0]))
      unique case (memMergeChoice_QTree_Int_d[1:1])
        1'd0: memOut_QTree_Int_dbuf_onehotd = 2'd1;
        1'd1: memOut_QTree_Int_dbuf_onehotd = 2'd2;
        default: memOut_QTree_Int_dbuf_onehotd = 2'd0;
      endcase
    else memOut_QTree_Int_dbuf_onehotd = 2'd0;
  assign memReadOut_QTree_Int_d = {memOut_QTree_Int_dbuf_d[67:1],
                                   memOut_QTree_Int_dbuf_onehotd[0]};
  assign memWriteOut_QTree_Int_d = {memOut_QTree_Int_dbuf_d[67:1],
                                    memOut_QTree_Int_dbuf_onehotd[1]};
  assign memOut_QTree_Int_dbuf_r = (| (memOut_QTree_Int_dbuf_onehotd & {memWriteOut_QTree_Int_r,
                                                                        memReadOut_QTree_Int_r}));
  assign memMergeChoice_QTree_Int_r = memOut_QTree_Int_dbuf_r;
  
  /* dbuf (Ty MemIn_QTree_Int) : (memMergeIn_QTree_Int_rbuf,MemIn_QTree_Int) > (memMergeIn_QTree_Int_dbuf,MemIn_QTree_Int) */
  assign memMergeIn_QTree_Int_rbuf_r = ((! memMergeIn_QTree_Int_dbuf_d[0]) || memMergeIn_QTree_Int_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_QTree_Int_dbuf_d <= {83'd0, 1'd0};
    else
      if (memMergeIn_QTree_Int_rbuf_r)
        memMergeIn_QTree_Int_dbuf_d <= memMergeIn_QTree_Int_rbuf_d;
  
  /* rbuf (Ty MemIn_QTree_Int) : (memMergeIn_QTree_Int,MemIn_QTree_Int) > (memMergeIn_QTree_Int_rbuf,MemIn_QTree_Int) */
  MemIn_QTree_Int_t memMergeIn_QTree_Int_buf;
  assign memMergeIn_QTree_Int_r = (! memMergeIn_QTree_Int_buf[0]);
  assign memMergeIn_QTree_Int_rbuf_d = (memMergeIn_QTree_Int_buf[0] ? memMergeIn_QTree_Int_buf :
                                        memMergeIn_QTree_Int_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memMergeIn_QTree_Int_buf <= {83'd0, 1'd0};
    else
      if ((memMergeIn_QTree_Int_rbuf_r && memMergeIn_QTree_Int_buf[0]))
        memMergeIn_QTree_Int_buf <= {83'd0, 1'd0};
      else if (((! memMergeIn_QTree_Int_rbuf_r) && (! memMergeIn_QTree_Int_buf[0])))
        memMergeIn_QTree_Int_buf <= memMergeIn_QTree_Int_d;
  
  /* dbuf (Ty MemOut_QTree_Int) : (memOut_QTree_Int_rbuf,MemOut_QTree_Int) > (memOut_QTree_Int_dbuf,MemOut_QTree_Int) */
  assign memOut_QTree_Int_rbuf_r = ((! memOut_QTree_Int_dbuf_d[0]) || memOut_QTree_Int_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_QTree_Int_dbuf_d <= {67'd0, 1'd0};
    else
      if (memOut_QTree_Int_rbuf_r)
        memOut_QTree_Int_dbuf_d <= memOut_QTree_Int_rbuf_d;
  
  /* rbuf (Ty MemOut_QTree_Int) : (memOut_QTree_Int,MemOut_QTree_Int) > (memOut_QTree_Int_rbuf,MemOut_QTree_Int) */
  MemOut_QTree_Int_t memOut_QTree_Int_buf;
  assign memOut_QTree_Int_r = (! memOut_QTree_Int_buf[0]);
  assign memOut_QTree_Int_rbuf_d = (memOut_QTree_Int_buf[0] ? memOut_QTree_Int_buf :
                                    memOut_QTree_Int_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_QTree_Int_buf <= {67'd0, 1'd0};
    else
      if ((memOut_QTree_Int_rbuf_r && memOut_QTree_Int_buf[0]))
        memOut_QTree_Int_buf <= {67'd0, 1'd0};
      else if (((! memOut_QTree_Int_rbuf_r) && (! memOut_QTree_Int_buf[0])))
        memOut_QTree_Int_buf <= memOut_QTree_Int_d;
  
  /* mergectrl (Ty C3,
           Ty Pointer_QTree_Int) : [(m1a8d_1_argbuf,Pointer_QTree_Int),
                                    (m2a8e_1_argbuf,Pointer_QTree_Int),
                                    (wshD_1_1_argbuf,Pointer_QTree_Int)] > (readMerge_choice_QTree_Int,C3) (readMerge_data_QTree_Int,Pointer_QTree_Int) */
  logic [2:0] m1a8d_1_argbuf_select_d;
  assign m1a8d_1_argbuf_select_d = ((| m1a8d_1_argbuf_select_q) ? m1a8d_1_argbuf_select_q :
                                    (m1a8d_1_argbuf_d[0] ? 3'd1 :
                                     (m2a8e_1_argbuf_d[0] ? 3'd2 :
                                      (wshD_1_1_argbuf_d[0] ? 3'd4 :
                                       3'd0))));
  logic [2:0] m1a8d_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a8d_1_argbuf_select_q <= 3'd0;
    else
      m1a8d_1_argbuf_select_q <= (m1a8d_1_argbuf_done ? 3'd0 :
                                  m1a8d_1_argbuf_select_d);
  logic [1:0] m1a8d_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a8d_1_argbuf_emit_q <= 2'd0;
    else
      m1a8d_1_argbuf_emit_q <= (m1a8d_1_argbuf_done ? 2'd0 :
                                m1a8d_1_argbuf_emit_d);
  logic [1:0] m1a8d_1_argbuf_emit_d;
  assign m1a8d_1_argbuf_emit_d = (m1a8d_1_argbuf_emit_q | ({readMerge_choice_QTree_Int_d[0],
                                                            readMerge_data_QTree_Int_d[0]} & {readMerge_choice_QTree_Int_r,
                                                                                              readMerge_data_QTree_Int_r}));
  logic m1a8d_1_argbuf_done;
  assign m1a8d_1_argbuf_done = (& m1a8d_1_argbuf_emit_d);
  assign {wshD_1_1_argbuf_r,
          m2a8e_1_argbuf_r,
          m1a8d_1_argbuf_r} = (m1a8d_1_argbuf_done ? m1a8d_1_argbuf_select_d :
                               3'd0);
  assign readMerge_data_QTree_Int_d = ((m1a8d_1_argbuf_select_d[0] && (! m1a8d_1_argbuf_emit_q[0])) ? m1a8d_1_argbuf_d :
                                       ((m1a8d_1_argbuf_select_d[1] && (! m1a8d_1_argbuf_emit_q[0])) ? m2a8e_1_argbuf_d :
                                        ((m1a8d_1_argbuf_select_d[2] && (! m1a8d_1_argbuf_emit_q[0])) ? wshD_1_1_argbuf_d :
                                         {16'd0, 1'd0})));
  assign readMerge_choice_QTree_Int_d = ((m1a8d_1_argbuf_select_d[0] && (! m1a8d_1_argbuf_emit_q[1])) ? C1_3_dc(1'd1) :
                                         ((m1a8d_1_argbuf_select_d[1] && (! m1a8d_1_argbuf_emit_q[1])) ? C2_3_dc(1'd1) :
                                          ((m1a8d_1_argbuf_select_d[2] && (! m1a8d_1_argbuf_emit_q[1])) ? C3_3_dc(1'd1) :
                                           {2'd0, 1'd0})));
  
  /* demux (Ty C3,
       Ty QTree_Int) : (readMerge_choice_QTree_Int,C3) (destructReadOut_QTree_Int,QTree_Int) > [(readPointer_QTree_Intm1a8d_1_argbuf,QTree_Int),
                                                                                                (readPointer_QTree_Intm2a8e_1_argbuf,QTree_Int),
                                                                                                (readPointer_QTree_IntwshD_1_1_argbuf,QTree_Int)] */
  logic [2:0] destructReadOut_QTree_Int_onehotd;
  always_comb
    if ((readMerge_choice_QTree_Int_d[0] && destructReadOut_QTree_Int_d[0]))
      unique case (readMerge_choice_QTree_Int_d[2:1])
        2'd0: destructReadOut_QTree_Int_onehotd = 3'd1;
        2'd1: destructReadOut_QTree_Int_onehotd = 3'd2;
        2'd2: destructReadOut_QTree_Int_onehotd = 3'd4;
        default: destructReadOut_QTree_Int_onehotd = 3'd0;
      endcase
    else destructReadOut_QTree_Int_onehotd = 3'd0;
  assign readPointer_QTree_Intm1a8d_1_argbuf_d = {destructReadOut_QTree_Int_d[66:1],
                                                  destructReadOut_QTree_Int_onehotd[0]};
  assign readPointer_QTree_Intm2a8e_1_argbuf_d = {destructReadOut_QTree_Int_d[66:1],
                                                  destructReadOut_QTree_Int_onehotd[1]};
  assign readPointer_QTree_IntwshD_1_1_argbuf_d = {destructReadOut_QTree_Int_d[66:1],
                                                   destructReadOut_QTree_Int_onehotd[2]};
  assign destructReadOut_QTree_Int_r = (| (destructReadOut_QTree_Int_onehotd & {readPointer_QTree_IntwshD_1_1_argbuf_r,
                                                                                readPointer_QTree_Intm2a8e_1_argbuf_r,
                                                                                readPointer_QTree_Intm1a8d_1_argbuf_r}));
  assign readMerge_choice_QTree_Int_r = destructReadOut_QTree_Int_r;
  
  /* destruct (Ty Pointer_QTree_Int,
          Dcon Pointer_QTree_Int) : (readMerge_data_QTree_Int,Pointer_QTree_Int) > [(destructReadIn_QTree_Int,Word16#)] */
  assign destructReadIn_QTree_Int_d = {readMerge_data_QTree_Int_d[16:1],
                                       readMerge_data_QTree_Int_d[0]};
  assign readMerge_data_QTree_Int_r = destructReadIn_QTree_Int_r;
  
  /* dcon (Ty MemIn_QTree_Int,
      Dcon ReadIn_QTree_Int) : [(destructReadIn_QTree_Int,Word16#)] > (dconReadIn_QTree_Int,MemIn_QTree_Int) */
  assign dconReadIn_QTree_Int_d = ReadIn_QTree_Int_dc((& {destructReadIn_QTree_Int_d[0]}), destructReadIn_QTree_Int_d);
  assign {destructReadIn_QTree_Int_r} = {1 {(dconReadIn_QTree_Int_r && dconReadIn_QTree_Int_d[0])}};
  
  /* destruct (Ty MemOut_QTree_Int,
          Dcon ReadOut_QTree_Int) : (memReadOut_QTree_Int,MemOut_QTree_Int) > [(destructReadOut_QTree_Int,QTree_Int)] */
  assign destructReadOut_QTree_Int_d = {memReadOut_QTree_Int_d[67:2],
                                        memReadOut_QTree_Int_d[0]};
  assign memReadOut_QTree_Int_r = destructReadOut_QTree_Int_r;
  
  /* mergectrl (Ty C9,
           Ty QTree_Int) : [(lizzieLet10_1_1_argbuf,QTree_Int),
                            (lizzieLet11_1_argbuf,QTree_Int),
                            (lizzieLet13_1_argbuf,QTree_Int),
                            (lizzieLet15_1_argbuf,QTree_Int),
                            (lizzieLet16_1_argbuf,QTree_Int),
                            (lizzieLet26_1_argbuf,QTree_Int),
                            (lizzieLet8_2_1_argbuf,QTree_Int),
                            (lizzieLet9_1_1_argbuf,QTree_Int),
                            (dummy_write_QTree_Int,QTree_Int)] > (writeMerge_choice_QTree_Int,C9) (writeMerge_data_QTree_Int,QTree_Int) */
  logic [8:0] lizzieLet10_1_1_argbuf_select_d;
  assign lizzieLet10_1_1_argbuf_select_d = ((| lizzieLet10_1_1_argbuf_select_q) ? lizzieLet10_1_1_argbuf_select_q :
                                            (lizzieLet10_1_1_argbuf_d[0] ? 9'd1 :
                                             (lizzieLet11_1_argbuf_d[0] ? 9'd2 :
                                              (lizzieLet13_1_argbuf_d[0] ? 9'd4 :
                                               (lizzieLet15_1_argbuf_d[0] ? 9'd8 :
                                                (lizzieLet16_1_argbuf_d[0] ? 9'd16 :
                                                 (lizzieLet26_1_argbuf_d[0] ? 9'd32 :
                                                  (lizzieLet8_2_1_argbuf_d[0] ? 9'd64 :
                                                   (lizzieLet9_1_1_argbuf_d[0] ? 9'd128 :
                                                    (dummy_write_QTree_Int_d[0] ? 9'd256 :
                                                     9'd0))))))))));
  logic [8:0] lizzieLet10_1_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet10_1_1_argbuf_select_q <= 9'd0;
    else
      lizzieLet10_1_1_argbuf_select_q <= (lizzieLet10_1_1_argbuf_done ? 9'd0 :
                                          lizzieLet10_1_1_argbuf_select_d);
  logic [1:0] lizzieLet10_1_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet10_1_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet10_1_1_argbuf_emit_q <= (lizzieLet10_1_1_argbuf_done ? 2'd0 :
                                        lizzieLet10_1_1_argbuf_emit_d);
  logic [1:0] lizzieLet10_1_1_argbuf_emit_d;
  assign lizzieLet10_1_1_argbuf_emit_d = (lizzieLet10_1_1_argbuf_emit_q | ({writeMerge_choice_QTree_Int_d[0],
                                                                            writeMerge_data_QTree_Int_d[0]} & {writeMerge_choice_QTree_Int_r,
                                                                                                               writeMerge_data_QTree_Int_r}));
  logic lizzieLet10_1_1_argbuf_done;
  assign lizzieLet10_1_1_argbuf_done = (& lizzieLet10_1_1_argbuf_emit_d);
  assign {dummy_write_QTree_Int_r,
          lizzieLet9_1_1_argbuf_r,
          lizzieLet8_2_1_argbuf_r,
          lizzieLet26_1_argbuf_r,
          lizzieLet16_1_argbuf_r,
          lizzieLet15_1_argbuf_r,
          lizzieLet13_1_argbuf_r,
          lizzieLet11_1_argbuf_r,
          lizzieLet10_1_1_argbuf_r} = (lizzieLet10_1_1_argbuf_done ? lizzieLet10_1_1_argbuf_select_d :
                                       9'd0);
  assign writeMerge_data_QTree_Int_d = ((lizzieLet10_1_1_argbuf_select_d[0] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet10_1_1_argbuf_d :
                                        ((lizzieLet10_1_1_argbuf_select_d[1] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet11_1_argbuf_d :
                                         ((lizzieLet10_1_1_argbuf_select_d[2] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet13_1_argbuf_d :
                                          ((lizzieLet10_1_1_argbuf_select_d[3] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet15_1_argbuf_d :
                                           ((lizzieLet10_1_1_argbuf_select_d[4] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet16_1_argbuf_d :
                                            ((lizzieLet10_1_1_argbuf_select_d[5] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet26_1_argbuf_d :
                                             ((lizzieLet10_1_1_argbuf_select_d[6] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet8_2_1_argbuf_d :
                                              ((lizzieLet10_1_1_argbuf_select_d[7] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? lizzieLet9_1_1_argbuf_d :
                                               ((lizzieLet10_1_1_argbuf_select_d[8] && (! lizzieLet10_1_1_argbuf_emit_q[0])) ? dummy_write_QTree_Int_d :
                                                {66'd0, 1'd0})))))))));
  assign writeMerge_choice_QTree_Int_d = ((lizzieLet10_1_1_argbuf_select_d[0] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C1_9_dc(1'd1) :
                                          ((lizzieLet10_1_1_argbuf_select_d[1] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C2_9_dc(1'd1) :
                                           ((lizzieLet10_1_1_argbuf_select_d[2] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C3_9_dc(1'd1) :
                                            ((lizzieLet10_1_1_argbuf_select_d[3] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C4_9_dc(1'd1) :
                                             ((lizzieLet10_1_1_argbuf_select_d[4] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C5_9_dc(1'd1) :
                                              ((lizzieLet10_1_1_argbuf_select_d[5] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C6_9_dc(1'd1) :
                                               ((lizzieLet10_1_1_argbuf_select_d[6] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C7_9_dc(1'd1) :
                                                ((lizzieLet10_1_1_argbuf_select_d[7] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C8_9_dc(1'd1) :
                                                 ((lizzieLet10_1_1_argbuf_select_d[8] && (! lizzieLet10_1_1_argbuf_emit_q[1])) ? C9_9_dc(1'd1) :
                                                  {4'd0, 1'd0})))))))));
  
  /* demux (Ty C9,
       Ty Pointer_QTree_Int) : (writeMerge_choice_QTree_Int,C9) (demuxWriteResult_QTree_Int,Pointer_QTree_Int) > [(writeQTree_IntlizzieLet10_1_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet11_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet13_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet15_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet16_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet26_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet8_2_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (writeQTree_IntlizzieLet9_1_1_argbuf,Pointer_QTree_Int),
                                                                                                                  (dummy_write_QTree_Int_sink,Pointer_QTree_Int)] */
  logic [8:0] demuxWriteResult_QTree_Int_onehotd;
  always_comb
    if ((writeMerge_choice_QTree_Int_d[0] && demuxWriteResult_QTree_Int_d[0]))
      unique case (writeMerge_choice_QTree_Int_d[4:1])
        4'd0: demuxWriteResult_QTree_Int_onehotd = 9'd1;
        4'd1: demuxWriteResult_QTree_Int_onehotd = 9'd2;
        4'd2: demuxWriteResult_QTree_Int_onehotd = 9'd4;
        4'd3: demuxWriteResult_QTree_Int_onehotd = 9'd8;
        4'd4: demuxWriteResult_QTree_Int_onehotd = 9'd16;
        4'd5: demuxWriteResult_QTree_Int_onehotd = 9'd32;
        4'd6: demuxWriteResult_QTree_Int_onehotd = 9'd64;
        4'd7: demuxWriteResult_QTree_Int_onehotd = 9'd128;
        4'd8: demuxWriteResult_QTree_Int_onehotd = 9'd256;
        default: demuxWriteResult_QTree_Int_onehotd = 9'd0;
      endcase
    else demuxWriteResult_QTree_Int_onehotd = 9'd0;
  assign writeQTree_IntlizzieLet10_1_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                   demuxWriteResult_QTree_Int_onehotd[0]};
  assign writeQTree_IntlizzieLet11_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                 demuxWriteResult_QTree_Int_onehotd[1]};
  assign writeQTree_IntlizzieLet13_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                 demuxWriteResult_QTree_Int_onehotd[2]};
  assign writeQTree_IntlizzieLet15_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                 demuxWriteResult_QTree_Int_onehotd[3]};
  assign writeQTree_IntlizzieLet16_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                 demuxWriteResult_QTree_Int_onehotd[4]};
  assign writeQTree_IntlizzieLet26_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                 demuxWriteResult_QTree_Int_onehotd[5]};
  assign writeQTree_IntlizzieLet8_2_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                  demuxWriteResult_QTree_Int_onehotd[6]};
  assign writeQTree_IntlizzieLet9_1_1_argbuf_d = {demuxWriteResult_QTree_Int_d[16:1],
                                                  demuxWriteResult_QTree_Int_onehotd[7]};
  assign dummy_write_QTree_Int_sink_d = {demuxWriteResult_QTree_Int_d[16:1],
                                         demuxWriteResult_QTree_Int_onehotd[8]};
  assign demuxWriteResult_QTree_Int_r = (| (demuxWriteResult_QTree_Int_onehotd & {dummy_write_QTree_Int_sink_r,
                                                                                  writeQTree_IntlizzieLet9_1_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet8_2_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet26_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet16_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet15_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet13_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet11_1_argbuf_r,
                                                                                  writeQTree_IntlizzieLet10_1_1_argbuf_r}));
  assign writeMerge_choice_QTree_Int_r = demuxWriteResult_QTree_Int_r;
  
  /* dcon (Ty MemIn_QTree_Int,
      Dcon WriteIn_QTree_Int) : [(forkHP1_QTree_In3,Word16#),
                                 (writeMerge_data_QTree_Int,QTree_Int)] > (dconWriteIn_QTree_Int,MemIn_QTree_Int) */
  assign dconWriteIn_QTree_Int_d = WriteIn_QTree_Int_dc((& {forkHP1_QTree_In3_d[0],
                                                            writeMerge_data_QTree_Int_d[0]}), forkHP1_QTree_In3_d, writeMerge_data_QTree_Int_d);
  assign {forkHP1_QTree_In3_r,
          writeMerge_data_QTree_Int_r} = {2 {(dconWriteIn_QTree_Int_r && dconWriteIn_QTree_Int_d[0])}};
  
  /* dcon (Ty Pointer_QTree_Int,
      Dcon Pointer_QTree_Int) : [(forkHP1_QTree_In4,Word16#)] > (dconPtr_QTree_Int,Pointer_QTree_Int) */
  assign dconPtr_QTree_Int_d = Pointer_QTree_Int_dc((& {forkHP1_QTree_In4_d[0]}), forkHP1_QTree_In4_d);
  assign {forkHP1_QTree_In4_r} = {1 {(dconPtr_QTree_Int_r && dconPtr_QTree_Int_d[0])}};
  
  /* demux (Ty MemOut_QTree_Int,
       Ty Pointer_QTree_Int) : (memWriteOut_QTree_Int,MemOut_QTree_Int) (dconPtr_QTree_Int,Pointer_QTree_Int) > [(_61,Pointer_QTree_Int),
                                                                                                                 (demuxWriteResult_QTree_Int,Pointer_QTree_Int)] */
  logic [1:0] dconPtr_QTree_Int_onehotd;
  always_comb
    if ((memWriteOut_QTree_Int_d[0] && dconPtr_QTree_Int_d[0]))
      unique case (memWriteOut_QTree_Int_d[1:1])
        1'd0: dconPtr_QTree_Int_onehotd = 2'd1;
        1'd1: dconPtr_QTree_Int_onehotd = 2'd2;
        default: dconPtr_QTree_Int_onehotd = 2'd0;
      endcase
    else dconPtr_QTree_Int_onehotd = 2'd0;
  assign _61_d = {dconPtr_QTree_Int_d[16:1],
                  dconPtr_QTree_Int_onehotd[0]};
  assign demuxWriteResult_QTree_Int_d = {dconPtr_QTree_Int_d[16:1],
                                         dconPtr_QTree_Int_onehotd[1]};
  assign dconPtr_QTree_Int_r = (| (dconPtr_QTree_Int_onehotd & {demuxWriteResult_QTree_Int_r,
                                                                _61_r}));
  assign memWriteOut_QTree_Int_r = dconPtr_QTree_Int_r;
  
  /* const (Ty Word16#,
       Lit 0) : (goFor_4,Go) > (initHP_CTmAdd_mAdd_Int,Word16#) */
  assign initHP_CTmAdd_mAdd_Int_d = {16'd0, goFor_4_d[0]};
  assign goFor_4_r = initHP_CTmAdd_mAdd_Int_r;
  
  /* const (Ty Word16#,
       Lit 1) : (incrHP_CTmAdd_mAdd_Int1,Go) > (incrHP_CTmAdd_mAdd_Int,Word16#) */
  assign incrHP_CTmAdd_mAdd_Int_d = {16'd1,
                                     incrHP_CTmAdd_mAdd_Int1_d[0]};
  assign incrHP_CTmAdd_mAdd_Int1_r = incrHP_CTmAdd_mAdd_Int_r;
  
  /* merge (Ty Go) : [(goFor_5,Go),
                 (incrHP_CTmAdd_mAdd_Int2,Go)] > (incrHP_mergeCTmAdd_mAdd_Int,Go) */
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Int_selected;
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Int_select;
  always_comb
    begin
      incrHP_mergeCTmAdd_mAdd_Int_selected = 2'd0;
      if ((| incrHP_mergeCTmAdd_mAdd_Int_select))
        incrHP_mergeCTmAdd_mAdd_Int_selected = incrHP_mergeCTmAdd_mAdd_Int_select;
      else
        if (goFor_5_d[0]) incrHP_mergeCTmAdd_mAdd_Int_selected[0] = 1'd1;
        else if (incrHP_CTmAdd_mAdd_Int2_d[0])
          incrHP_mergeCTmAdd_mAdd_Int_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTmAdd_mAdd_Int_select <= 2'd0;
    else
      incrHP_mergeCTmAdd_mAdd_Int_select <= (incrHP_mergeCTmAdd_mAdd_Int_r ? 2'd0 :
                                             incrHP_mergeCTmAdd_mAdd_Int_selected);
  always_comb
    if (incrHP_mergeCTmAdd_mAdd_Int_selected[0])
      incrHP_mergeCTmAdd_mAdd_Int_d = goFor_5_d;
    else if (incrHP_mergeCTmAdd_mAdd_Int_selected[1])
      incrHP_mergeCTmAdd_mAdd_Int_d = incrHP_CTmAdd_mAdd_Int2_d;
    else incrHP_mergeCTmAdd_mAdd_Int_d = 1'd0;
  assign {incrHP_CTmAdd_mAdd_Int2_r,
          goFor_5_r} = (incrHP_mergeCTmAdd_mAdd_Int_r ? incrHP_mergeCTmAdd_mAdd_Int_selected :
                        2'd0);
  
  /* fork (Ty Go) : (incrHP_mergeCTmAdd_mAdd_Int_buf,Go) > [(incrHP_CTmAdd_mAdd_Int1,Go),
                                                       (incrHP_CTmAdd_mAdd_Int2,Go)] */
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Int_buf_emitted;
  logic [1:0] incrHP_mergeCTmAdd_mAdd_Int_buf_done;
  assign incrHP_CTmAdd_mAdd_Int1_d = (incrHP_mergeCTmAdd_mAdd_Int_buf_d[0] && (! incrHP_mergeCTmAdd_mAdd_Int_buf_emitted[0]));
  assign incrHP_CTmAdd_mAdd_Int2_d = (incrHP_mergeCTmAdd_mAdd_Int_buf_d[0] && (! incrHP_mergeCTmAdd_mAdd_Int_buf_emitted[1]));
  assign incrHP_mergeCTmAdd_mAdd_Int_buf_done = (incrHP_mergeCTmAdd_mAdd_Int_buf_emitted | ({incrHP_CTmAdd_mAdd_Int2_d[0],
                                                                                             incrHP_CTmAdd_mAdd_Int1_d[0]} & {incrHP_CTmAdd_mAdd_Int2_r,
                                                                                                                              incrHP_CTmAdd_mAdd_Int1_r}));
  assign incrHP_mergeCTmAdd_mAdd_Int_buf_r = (& incrHP_mergeCTmAdd_mAdd_Int_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      incrHP_mergeCTmAdd_mAdd_Int_buf_emitted <= 2'd0;
    else
      incrHP_mergeCTmAdd_mAdd_Int_buf_emitted <= (incrHP_mergeCTmAdd_mAdd_Int_buf_r ? 2'd0 :
                                                  incrHP_mergeCTmAdd_mAdd_Int_buf_done);
  
  /* op_add (Ty Word16#) : (incrHP_CTmAdd_mAdd_Int,Word16#) (forkHP1_CTmAdd_mAdd_Int,Word16#) > (addHP_CTmAdd_mAdd_Int,Word16#) */
  assign addHP_CTmAdd_mAdd_Int_d = {(incrHP_CTmAdd_mAdd_Int_d[16:1] + forkHP1_CTmAdd_mAdd_Int_d[16:1]),
                                    (incrHP_CTmAdd_mAdd_Int_d[0] && forkHP1_CTmAdd_mAdd_Int_d[0])};
  assign {incrHP_CTmAdd_mAdd_Int_r,
          forkHP1_CTmAdd_mAdd_Int_r} = {2 {(addHP_CTmAdd_mAdd_Int_r && addHP_CTmAdd_mAdd_Int_d[0])}};
  
  /* merge (Ty Word16#) : [(initHP_CTmAdd_mAdd_Int,Word16#),
                      (addHP_CTmAdd_mAdd_Int,Word16#)] > (mergeHP_CTmAdd_mAdd_Int,Word16#) */
  logic [1:0] mergeHP_CTmAdd_mAdd_Int_selected;
  logic [1:0] mergeHP_CTmAdd_mAdd_Int_select;
  always_comb
    begin
      mergeHP_CTmAdd_mAdd_Int_selected = 2'd0;
      if ((| mergeHP_CTmAdd_mAdd_Int_select))
        mergeHP_CTmAdd_mAdd_Int_selected = mergeHP_CTmAdd_mAdd_Int_select;
      else
        if (initHP_CTmAdd_mAdd_Int_d[0])
          mergeHP_CTmAdd_mAdd_Int_selected[0] = 1'd1;
        else if (addHP_CTmAdd_mAdd_Int_d[0])
          mergeHP_CTmAdd_mAdd_Int_selected[1] = 1'd1;
    end
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTmAdd_mAdd_Int_select <= 2'd0;
    else
      mergeHP_CTmAdd_mAdd_Int_select <= (mergeHP_CTmAdd_mAdd_Int_r ? 2'd0 :
                                         mergeHP_CTmAdd_mAdd_Int_selected);
  always_comb
    if (mergeHP_CTmAdd_mAdd_Int_selected[0])
      mergeHP_CTmAdd_mAdd_Int_d = initHP_CTmAdd_mAdd_Int_d;
    else if (mergeHP_CTmAdd_mAdd_Int_selected[1])
      mergeHP_CTmAdd_mAdd_Int_d = addHP_CTmAdd_mAdd_Int_d;
    else mergeHP_CTmAdd_mAdd_Int_d = {16'd0, 1'd0};
  assign {addHP_CTmAdd_mAdd_Int_r,
          initHP_CTmAdd_mAdd_Int_r} = (mergeHP_CTmAdd_mAdd_Int_r ? mergeHP_CTmAdd_mAdd_Int_selected :
                                       2'd0);
  
  /* buf (Ty Go) : (incrHP_mergeCTmAdd_mAdd_Int,Go) > (incrHP_mergeCTmAdd_mAdd_Int_buf,Go) */
  Go_t incrHP_mergeCTmAdd_mAdd_Int_bufchan_d;
  logic incrHP_mergeCTmAdd_mAdd_Int_bufchan_r;
  assign incrHP_mergeCTmAdd_mAdd_Int_r = ((! incrHP_mergeCTmAdd_mAdd_Int_bufchan_d[0]) || incrHP_mergeCTmAdd_mAdd_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) incrHP_mergeCTmAdd_mAdd_Int_bufchan_d <= 1'd0;
    else
      if (incrHP_mergeCTmAdd_mAdd_Int_r)
        incrHP_mergeCTmAdd_mAdd_Int_bufchan_d <= incrHP_mergeCTmAdd_mAdd_Int_d;
  Go_t incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf;
  assign incrHP_mergeCTmAdd_mAdd_Int_bufchan_r = (! incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf[0]);
  assign incrHP_mergeCTmAdd_mAdd_Int_buf_d = (incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf[0] ? incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf :
                                              incrHP_mergeCTmAdd_mAdd_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf <= 1'd0;
    else
      if ((incrHP_mergeCTmAdd_mAdd_Int_buf_r && incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf[0]))
        incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf <= 1'd0;
      else if (((! incrHP_mergeCTmAdd_mAdd_Int_buf_r) && (! incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf[0])))
        incrHP_mergeCTmAdd_mAdd_Int_bufchan_buf <= incrHP_mergeCTmAdd_mAdd_Int_bufchan_d;
  
  /* buf (Ty Word16#) : (mergeHP_CTmAdd_mAdd_Int,Word16#) > (mergeHP_CTmAdd_mAdd_Int_buf,Word16#) */
  \Word16#_t  mergeHP_CTmAdd_mAdd_Int_bufchan_d;
  logic mergeHP_CTmAdd_mAdd_Int_bufchan_r;
  assign mergeHP_CTmAdd_mAdd_Int_r = ((! mergeHP_CTmAdd_mAdd_Int_bufchan_d[0]) || mergeHP_CTmAdd_mAdd_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CTmAdd_mAdd_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (mergeHP_CTmAdd_mAdd_Int_r)
        mergeHP_CTmAdd_mAdd_Int_bufchan_d <= mergeHP_CTmAdd_mAdd_Int_d;
  \Word16#_t  mergeHP_CTmAdd_mAdd_Int_bufchan_buf;
  assign mergeHP_CTmAdd_mAdd_Int_bufchan_r = (! mergeHP_CTmAdd_mAdd_Int_bufchan_buf[0]);
  assign mergeHP_CTmAdd_mAdd_Int_buf_d = (mergeHP_CTmAdd_mAdd_Int_bufchan_buf[0] ? mergeHP_CTmAdd_mAdd_Int_bufchan_buf :
                                          mergeHP_CTmAdd_mAdd_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mergeHP_CTmAdd_mAdd_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mergeHP_CTmAdd_mAdd_Int_buf_r && mergeHP_CTmAdd_mAdd_Int_bufchan_buf[0]))
        mergeHP_CTmAdd_mAdd_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mergeHP_CTmAdd_mAdd_Int_buf_r) && (! mergeHP_CTmAdd_mAdd_Int_bufchan_buf[0])))
        mergeHP_CTmAdd_mAdd_Int_bufchan_buf <= mergeHP_CTmAdd_mAdd_Int_bufchan_d;
  
  /* fork (Ty Word16#) : (mergeHP_CTmAdd_mAdd_Int_buf,Word16#) > [(forkHP1_CTmAdd_mAdd_Int,Word16#),
                                                             (forkHP1_CTmAdd_mAdd_In2,Word16#),
                                                             (forkHP1_CTmAdd_mAdd_In3,Word16#)] */
  logic [2:0] mergeHP_CTmAdd_mAdd_Int_buf_emitted;
  logic [2:0] mergeHP_CTmAdd_mAdd_Int_buf_done;
  assign forkHP1_CTmAdd_mAdd_Int_d = {mergeHP_CTmAdd_mAdd_Int_buf_d[16:1],
                                      (mergeHP_CTmAdd_mAdd_Int_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Int_buf_emitted[0]))};
  assign forkHP1_CTmAdd_mAdd_In2_d = {mergeHP_CTmAdd_mAdd_Int_buf_d[16:1],
                                      (mergeHP_CTmAdd_mAdd_Int_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Int_buf_emitted[1]))};
  assign forkHP1_CTmAdd_mAdd_In3_d = {mergeHP_CTmAdd_mAdd_Int_buf_d[16:1],
                                      (mergeHP_CTmAdd_mAdd_Int_buf_d[0] && (! mergeHP_CTmAdd_mAdd_Int_buf_emitted[2]))};
  assign mergeHP_CTmAdd_mAdd_Int_buf_done = (mergeHP_CTmAdd_mAdd_Int_buf_emitted | ({forkHP1_CTmAdd_mAdd_In3_d[0],
                                                                                     forkHP1_CTmAdd_mAdd_In2_d[0],
                                                                                     forkHP1_CTmAdd_mAdd_Int_d[0]} & {forkHP1_CTmAdd_mAdd_In3_r,
                                                                                                                      forkHP1_CTmAdd_mAdd_In2_r,
                                                                                                                      forkHP1_CTmAdd_mAdd_Int_r}));
  assign mergeHP_CTmAdd_mAdd_Int_buf_r = (& mergeHP_CTmAdd_mAdd_Int_buf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mergeHP_CTmAdd_mAdd_Int_buf_emitted <= 3'd0;
    else
      mergeHP_CTmAdd_mAdd_Int_buf_emitted <= (mergeHP_CTmAdd_mAdd_Int_buf_r ? 3'd0 :
                                              mergeHP_CTmAdd_mAdd_Int_buf_done);
  
  /* mergectrl (Ty C2,
           Ty MemIn_CTmAdd_mAdd_Int) : [(dconReadIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int),
                                        (dconWriteIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int)] > (memMergeChoice_CTmAdd_mAdd_Int,C2) (memMergeIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int) */
  logic [1:0] dconReadIn_CTmAdd_mAdd_Int_select_d;
  assign dconReadIn_CTmAdd_mAdd_Int_select_d = ((| dconReadIn_CTmAdd_mAdd_Int_select_q) ? dconReadIn_CTmAdd_mAdd_Int_select_q :
                                                (dconReadIn_CTmAdd_mAdd_Int_d[0] ? 2'd1 :
                                                 (dconWriteIn_CTmAdd_mAdd_Int_d[0] ? 2'd2 :
                                                  2'd0)));
  logic [1:0] dconReadIn_CTmAdd_mAdd_Int_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTmAdd_mAdd_Int_select_q <= 2'd0;
    else
      dconReadIn_CTmAdd_mAdd_Int_select_q <= (dconReadIn_CTmAdd_mAdd_Int_done ? 2'd0 :
                                              dconReadIn_CTmAdd_mAdd_Int_select_d);
  logic [1:0] dconReadIn_CTmAdd_mAdd_Int_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) dconReadIn_CTmAdd_mAdd_Int_emit_q <= 2'd0;
    else
      dconReadIn_CTmAdd_mAdd_Int_emit_q <= (dconReadIn_CTmAdd_mAdd_Int_done ? 2'd0 :
                                            dconReadIn_CTmAdd_mAdd_Int_emit_d);
  logic [1:0] dconReadIn_CTmAdd_mAdd_Int_emit_d;
  assign dconReadIn_CTmAdd_mAdd_Int_emit_d = (dconReadIn_CTmAdd_mAdd_Int_emit_q | ({memMergeChoice_CTmAdd_mAdd_Int_d[0],
                                                                                    memMergeIn_CTmAdd_mAdd_Int_d[0]} & {memMergeChoice_CTmAdd_mAdd_Int_r,
                                                                                                                        memMergeIn_CTmAdd_mAdd_Int_r}));
  logic dconReadIn_CTmAdd_mAdd_Int_done;
  assign dconReadIn_CTmAdd_mAdd_Int_done = (& dconReadIn_CTmAdd_mAdd_Int_emit_d);
  assign {dconWriteIn_CTmAdd_mAdd_Int_r,
          dconReadIn_CTmAdd_mAdd_Int_r} = (dconReadIn_CTmAdd_mAdd_Int_done ? dconReadIn_CTmAdd_mAdd_Int_select_d :
                                           2'd0);
  assign memMergeIn_CTmAdd_mAdd_Int_d = ((dconReadIn_CTmAdd_mAdd_Int_select_d[0] && (! dconReadIn_CTmAdd_mAdd_Int_emit_q[0])) ? dconReadIn_CTmAdd_mAdd_Int_d :
                                         ((dconReadIn_CTmAdd_mAdd_Int_select_d[1] && (! dconReadIn_CTmAdd_mAdd_Int_emit_q[0])) ? dconWriteIn_CTmAdd_mAdd_Int_d :
                                          {132'd0, 1'd0}));
  assign memMergeChoice_CTmAdd_mAdd_Int_d = ((dconReadIn_CTmAdd_mAdd_Int_select_d[0] && (! dconReadIn_CTmAdd_mAdd_Int_emit_q[1])) ? C1_2_dc(1'd1) :
                                             ((dconReadIn_CTmAdd_mAdd_Int_select_d[1] && (! dconReadIn_CTmAdd_mAdd_Int_emit_q[1])) ? C2_2_dc(1'd1) :
                                              {1'd0, 1'd0}));
  
  /* bram (Ty MemIn_CTmAdd_mAdd_Int,
      Ty MemOut_CTmAdd_mAdd_Int) : (memMergeIn_CTmAdd_mAdd_Int_dbuf,MemIn_CTmAdd_mAdd_Int) > (memOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int) */
  logic [114:0] memMergeIn_CTmAdd_mAdd_Int_dbuf_mem[65535:0];
  logic [15:0] memMergeIn_CTmAdd_mAdd_Int_dbuf_address;
  logic [114:0] memMergeIn_CTmAdd_mAdd_Int_dbuf_din;
  logic [114:0] memOut_CTmAdd_mAdd_Int_q;
  logic memOut_CTmAdd_mAdd_Int_valid;
  logic memMergeIn_CTmAdd_mAdd_Int_dbuf_we;
  logic memOut_CTmAdd_mAdd_Int_we;
  assign memMergeIn_CTmAdd_mAdd_Int_dbuf_din = memMergeIn_CTmAdd_mAdd_Int_dbuf_d[132:18];
  assign memMergeIn_CTmAdd_mAdd_Int_dbuf_address = memMergeIn_CTmAdd_mAdd_Int_dbuf_d[17:2];
  assign memMergeIn_CTmAdd_mAdd_Int_dbuf_we = (memMergeIn_CTmAdd_mAdd_Int_dbuf_d[1:1] && memMergeIn_CTmAdd_mAdd_Int_dbuf_d[0]);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        memOut_CTmAdd_mAdd_Int_we <= 1'd0;
        memOut_CTmAdd_mAdd_Int_valid <= 1'd0;
      end
    else
      begin
        memOut_CTmAdd_mAdd_Int_we <= memMergeIn_CTmAdd_mAdd_Int_dbuf_we;
        memOut_CTmAdd_mAdd_Int_valid <= memMergeIn_CTmAdd_mAdd_Int_dbuf_d[0];
        if (memMergeIn_CTmAdd_mAdd_Int_dbuf_we)
          begin
            memMergeIn_CTmAdd_mAdd_Int_dbuf_mem[memMergeIn_CTmAdd_mAdd_Int_dbuf_address] <= memMergeIn_CTmAdd_mAdd_Int_dbuf_din;
            memOut_CTmAdd_mAdd_Int_q <= memMergeIn_CTmAdd_mAdd_Int_dbuf_din;
          end
        else
          memOut_CTmAdd_mAdd_Int_q <= memMergeIn_CTmAdd_mAdd_Int_dbuf_mem[memMergeIn_CTmAdd_mAdd_Int_dbuf_address];
      end
  assign memOut_CTmAdd_mAdd_Int_d = {memOut_CTmAdd_mAdd_Int_q,
                                     memOut_CTmAdd_mAdd_Int_we,
                                     memOut_CTmAdd_mAdd_Int_valid};
  assign memMergeIn_CTmAdd_mAdd_Int_dbuf_r = ((! memOut_CTmAdd_mAdd_Int_valid) || memOut_CTmAdd_mAdd_Int_r);
  logic [31:0] profiling_MemIn_CTmAdd_mAdd_Int_read;
  logic [31:0] profiling_MemIn_CTmAdd_mAdd_Int_write;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      begin
        profiling_MemIn_CTmAdd_mAdd_Int_write <= 0;
        profiling_MemIn_CTmAdd_mAdd_Int_read <= 0;
      end
    else
      if ((memMergeIn_CTmAdd_mAdd_Int_dbuf_we == 1'd1))
        profiling_MemIn_CTmAdd_mAdd_Int_write <= (profiling_MemIn_CTmAdd_mAdd_Int_write + 1);
      else
        if ((memOut_CTmAdd_mAdd_Int_valid == 1'd1))
          profiling_MemIn_CTmAdd_mAdd_Int_read <= (profiling_MemIn_CTmAdd_mAdd_Int_read + 1);
  
  /* demux (Ty C2,
       Ty MemOut_CTmAdd_mAdd_Int) : (memMergeChoice_CTmAdd_mAdd_Int,C2) (memOut_CTmAdd_mAdd_Int_dbuf,MemOut_CTmAdd_mAdd_Int) > [(memReadOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int),
                                                                                                                                (memWriteOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int)] */
  logic [1:0] memOut_CTmAdd_mAdd_Int_dbuf_onehotd;
  always_comb
    if ((memMergeChoice_CTmAdd_mAdd_Int_d[0] && memOut_CTmAdd_mAdd_Int_dbuf_d[0]))
      unique case (memMergeChoice_CTmAdd_mAdd_Int_d[1:1])
        1'd0: memOut_CTmAdd_mAdd_Int_dbuf_onehotd = 2'd1;
        1'd1: memOut_CTmAdd_mAdd_Int_dbuf_onehotd = 2'd2;
        default: memOut_CTmAdd_mAdd_Int_dbuf_onehotd = 2'd0;
      endcase
    else memOut_CTmAdd_mAdd_Int_dbuf_onehotd = 2'd0;
  assign memReadOut_CTmAdd_mAdd_Int_d = {memOut_CTmAdd_mAdd_Int_dbuf_d[116:1],
                                         memOut_CTmAdd_mAdd_Int_dbuf_onehotd[0]};
  assign memWriteOut_CTmAdd_mAdd_Int_d = {memOut_CTmAdd_mAdd_Int_dbuf_d[116:1],
                                          memOut_CTmAdd_mAdd_Int_dbuf_onehotd[1]};
  assign memOut_CTmAdd_mAdd_Int_dbuf_r = (| (memOut_CTmAdd_mAdd_Int_dbuf_onehotd & {memWriteOut_CTmAdd_mAdd_Int_r,
                                                                                    memReadOut_CTmAdd_mAdd_Int_r}));
  assign memMergeChoice_CTmAdd_mAdd_Int_r = memOut_CTmAdd_mAdd_Int_dbuf_r;
  
  /* dbuf (Ty MemIn_CTmAdd_mAdd_Int) : (memMergeIn_CTmAdd_mAdd_Int_rbuf,MemIn_CTmAdd_mAdd_Int) > (memMergeIn_CTmAdd_mAdd_Int_dbuf,MemIn_CTmAdd_mAdd_Int) */
  assign memMergeIn_CTmAdd_mAdd_Int_rbuf_r = ((! memMergeIn_CTmAdd_mAdd_Int_dbuf_d[0]) || memMergeIn_CTmAdd_mAdd_Int_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CTmAdd_mAdd_Int_dbuf_d <= {132'd0, 1'd0};
    else
      if (memMergeIn_CTmAdd_mAdd_Int_rbuf_r)
        memMergeIn_CTmAdd_mAdd_Int_dbuf_d <= memMergeIn_CTmAdd_mAdd_Int_rbuf_d;
  
  /* rbuf (Ty MemIn_CTmAdd_mAdd_Int) : (memMergeIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int) > (memMergeIn_CTmAdd_mAdd_Int_rbuf,MemIn_CTmAdd_mAdd_Int) */
  MemIn_CTmAdd_mAdd_Int_t memMergeIn_CTmAdd_mAdd_Int_buf;
  assign memMergeIn_CTmAdd_mAdd_Int_r = (! memMergeIn_CTmAdd_mAdd_Int_buf[0]);
  assign memMergeIn_CTmAdd_mAdd_Int_rbuf_d = (memMergeIn_CTmAdd_mAdd_Int_buf[0] ? memMergeIn_CTmAdd_mAdd_Int_buf :
                                              memMergeIn_CTmAdd_mAdd_Int_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memMergeIn_CTmAdd_mAdd_Int_buf <= {132'd0, 1'd0};
    else
      if ((memMergeIn_CTmAdd_mAdd_Int_rbuf_r && memMergeIn_CTmAdd_mAdd_Int_buf[0]))
        memMergeIn_CTmAdd_mAdd_Int_buf <= {132'd0, 1'd0};
      else if (((! memMergeIn_CTmAdd_mAdd_Int_rbuf_r) && (! memMergeIn_CTmAdd_mAdd_Int_buf[0])))
        memMergeIn_CTmAdd_mAdd_Int_buf <= memMergeIn_CTmAdd_mAdd_Int_d;
  
  /* dbuf (Ty MemOut_CTmAdd_mAdd_Int) : (memOut_CTmAdd_mAdd_Int_rbuf,MemOut_CTmAdd_mAdd_Int) > (memOut_CTmAdd_mAdd_Int_dbuf,MemOut_CTmAdd_mAdd_Int) */
  assign memOut_CTmAdd_mAdd_Int_rbuf_r = ((! memOut_CTmAdd_mAdd_Int_dbuf_d[0]) || memOut_CTmAdd_mAdd_Int_dbuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      memOut_CTmAdd_mAdd_Int_dbuf_d <= {116'd0, 1'd0};
    else
      if (memOut_CTmAdd_mAdd_Int_rbuf_r)
        memOut_CTmAdd_mAdd_Int_dbuf_d <= memOut_CTmAdd_mAdd_Int_rbuf_d;
  
  /* rbuf (Ty MemOut_CTmAdd_mAdd_Int) : (memOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int) > (memOut_CTmAdd_mAdd_Int_rbuf,MemOut_CTmAdd_mAdd_Int) */
  MemOut_CTmAdd_mAdd_Int_t memOut_CTmAdd_mAdd_Int_buf;
  assign memOut_CTmAdd_mAdd_Int_r = (! memOut_CTmAdd_mAdd_Int_buf[0]);
  assign memOut_CTmAdd_mAdd_Int_rbuf_d = (memOut_CTmAdd_mAdd_Int_buf[0] ? memOut_CTmAdd_mAdd_Int_buf :
                                          memOut_CTmAdd_mAdd_Int_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) memOut_CTmAdd_mAdd_Int_buf <= {116'd0, 1'd0};
    else
      if ((memOut_CTmAdd_mAdd_Int_rbuf_r && memOut_CTmAdd_mAdd_Int_buf[0]))
        memOut_CTmAdd_mAdd_Int_buf <= {116'd0, 1'd0};
      else if (((! memOut_CTmAdd_mAdd_Int_rbuf_r) && (! memOut_CTmAdd_mAdd_Int_buf[0])))
        memOut_CTmAdd_mAdd_Int_buf <= memOut_CTmAdd_mAdd_Int_d;
  
  /* destruct (Ty Pointer_CTmAdd_mAdd_Int,
          Dcon Pointer_CTmAdd_mAdd_Int) : (scfarg_0_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) > [(destructReadIn_CTmAdd_mAdd_Int,Word16#)] */
  assign destructReadIn_CTmAdd_mAdd_Int_d = {scfarg_0_1_1_argbuf_d[16:1],
                                             scfarg_0_1_1_argbuf_d[0]};
  assign scfarg_0_1_1_argbuf_r = destructReadIn_CTmAdd_mAdd_Int_r;
  
  /* dcon (Ty MemIn_CTmAdd_mAdd_Int,
      Dcon ReadIn_CTmAdd_mAdd_Int) : [(destructReadIn_CTmAdd_mAdd_Int,Word16#)] > (dconReadIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int) */
  assign dconReadIn_CTmAdd_mAdd_Int_d = ReadIn_CTmAdd_mAdd_Int_dc((& {destructReadIn_CTmAdd_mAdd_Int_d[0]}), destructReadIn_CTmAdd_mAdd_Int_d);
  assign {destructReadIn_CTmAdd_mAdd_Int_r} = {1 {(dconReadIn_CTmAdd_mAdd_Int_r && dconReadIn_CTmAdd_mAdd_Int_d[0])}};
  
  /* destruct (Ty MemOut_CTmAdd_mAdd_Int,
          Dcon ReadOut_CTmAdd_mAdd_Int) : (memReadOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int) > [(readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf,CTmAdd_mAdd_Int)] */
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_d = {memReadOut_CTmAdd_mAdd_Int_d[116:2],
                                                             memReadOut_CTmAdd_mAdd_Int_d[0]};
  assign memReadOut_CTmAdd_mAdd_Int_r = readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_r;
  
  /* mergectrl (Ty C5,
           Ty CTmAdd_mAdd_Int) : [(lizzieLet14_1_argbuf,CTmAdd_mAdd_Int),
                                  (lizzieLet17_1_argbuf,CTmAdd_mAdd_Int),
                                  (lizzieLet23_1_argbuf,CTmAdd_mAdd_Int),
                                  (lizzieLet24_1_argbuf,CTmAdd_mAdd_Int),
                                  (lizzieLet25_1_argbuf,CTmAdd_mAdd_Int)] > (writeMerge_choice_CTmAdd_mAdd_Int,C5) (writeMerge_data_CTmAdd_mAdd_Int,CTmAdd_mAdd_Int) */
  logic [4:0] lizzieLet14_1_argbuf_select_d;
  assign lizzieLet14_1_argbuf_select_d = ((| lizzieLet14_1_argbuf_select_q) ? lizzieLet14_1_argbuf_select_q :
                                          (lizzieLet14_1_argbuf_d[0] ? 5'd1 :
                                           (lizzieLet17_1_argbuf_d[0] ? 5'd2 :
                                            (lizzieLet23_1_argbuf_d[0] ? 5'd4 :
                                             (lizzieLet24_1_argbuf_d[0] ? 5'd8 :
                                              (lizzieLet25_1_argbuf_d[0] ? 5'd16 :
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
  assign lizzieLet14_1_argbuf_emit_d = (lizzieLet14_1_argbuf_emit_q | ({writeMerge_choice_CTmAdd_mAdd_Int_d[0],
                                                                        writeMerge_data_CTmAdd_mAdd_Int_d[0]} & {writeMerge_choice_CTmAdd_mAdd_Int_r,
                                                                                                                 writeMerge_data_CTmAdd_mAdd_Int_r}));
  logic lizzieLet14_1_argbuf_done;
  assign lizzieLet14_1_argbuf_done = (& lizzieLet14_1_argbuf_emit_d);
  assign {lizzieLet25_1_argbuf_r,
          lizzieLet24_1_argbuf_r,
          lizzieLet23_1_argbuf_r,
          lizzieLet17_1_argbuf_r,
          lizzieLet14_1_argbuf_r} = (lizzieLet14_1_argbuf_done ? lizzieLet14_1_argbuf_select_d :
                                     5'd0);
  assign writeMerge_data_CTmAdd_mAdd_Int_d = ((lizzieLet14_1_argbuf_select_d[0] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet14_1_argbuf_d :
                                              ((lizzieLet14_1_argbuf_select_d[1] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet17_1_argbuf_d :
                                               ((lizzieLet14_1_argbuf_select_d[2] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet23_1_argbuf_d :
                                                ((lizzieLet14_1_argbuf_select_d[3] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet24_1_argbuf_d :
                                                 ((lizzieLet14_1_argbuf_select_d[4] && (! lizzieLet14_1_argbuf_emit_q[0])) ? lizzieLet25_1_argbuf_d :
                                                  {115'd0, 1'd0})))));
  assign writeMerge_choice_CTmAdd_mAdd_Int_d = ((lizzieLet14_1_argbuf_select_d[0] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C1_5_dc(1'd1) :
                                                ((lizzieLet14_1_argbuf_select_d[1] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C2_5_dc(1'd1) :
                                                 ((lizzieLet14_1_argbuf_select_d[2] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C3_5_dc(1'd1) :
                                                  ((lizzieLet14_1_argbuf_select_d[3] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C4_5_dc(1'd1) :
                                                   ((lizzieLet14_1_argbuf_select_d[4] && (! lizzieLet14_1_argbuf_emit_q[1])) ? C5_5_dc(1'd1) :
                                                    {3'd0, 1'd0})))));
  
  /* demux (Ty C5,
       Ty Pointer_CTmAdd_mAdd_Int) : (writeMerge_choice_CTmAdd_mAdd_Int,C5) (demuxWriteResult_CTmAdd_mAdd_Int,Pointer_CTmAdd_mAdd_Int) > [(writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                                                                                                          (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                                                                                                          (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                                                                                                          (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                                                                                                          (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf,Pointer_CTmAdd_mAdd_Int)] */
  logic [4:0] demuxWriteResult_CTmAdd_mAdd_Int_onehotd;
  always_comb
    if ((writeMerge_choice_CTmAdd_mAdd_Int_d[0] && demuxWriteResult_CTmAdd_mAdd_Int_d[0]))
      unique case (writeMerge_choice_CTmAdd_mAdd_Int_d[3:1])
        3'd0: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd1;
        3'd1: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd2;
        3'd2: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd4;
        3'd3: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd8;
        3'd4: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd16;
        default: demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd0;
      endcase
    else demuxWriteResult_CTmAdd_mAdd_Int_onehotd = 5'd0;
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Int_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Int_onehotd[0]};
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Int_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Int_onehotd[1]};
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Int_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Int_onehotd[2]};
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Int_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Int_onehotd[3]};
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_d = {demuxWriteResult_CTmAdd_mAdd_Int_d[16:1],
                                                       demuxWriteResult_CTmAdd_mAdd_Int_onehotd[4]};
  assign demuxWriteResult_CTmAdd_mAdd_Int_r = (| (demuxWriteResult_CTmAdd_mAdd_Int_onehotd & {writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_r,
                                                                                              writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_r,
                                                                                              writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_r,
                                                                                              writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_r,
                                                                                              writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_r}));
  assign writeMerge_choice_CTmAdd_mAdd_Int_r = demuxWriteResult_CTmAdd_mAdd_Int_r;
  
  /* dcon (Ty MemIn_CTmAdd_mAdd_Int,
      Dcon WriteIn_CTmAdd_mAdd_Int) : [(forkHP1_CTmAdd_mAdd_In2,Word16#),
                                       (writeMerge_data_CTmAdd_mAdd_Int,CTmAdd_mAdd_Int)] > (dconWriteIn_CTmAdd_mAdd_Int,MemIn_CTmAdd_mAdd_Int) */
  assign dconWriteIn_CTmAdd_mAdd_Int_d = WriteIn_CTmAdd_mAdd_Int_dc((& {forkHP1_CTmAdd_mAdd_In2_d[0],
                                                                        writeMerge_data_CTmAdd_mAdd_Int_d[0]}), forkHP1_CTmAdd_mAdd_In2_d, writeMerge_data_CTmAdd_mAdd_Int_d);
  assign {forkHP1_CTmAdd_mAdd_In2_r,
          writeMerge_data_CTmAdd_mAdd_Int_r} = {2 {(dconWriteIn_CTmAdd_mAdd_Int_r && dconWriteIn_CTmAdd_mAdd_Int_d[0])}};
  
  /* dcon (Ty Pointer_CTmAdd_mAdd_Int,
      Dcon Pointer_CTmAdd_mAdd_Int) : [(forkHP1_CTmAdd_mAdd_In3,Word16#)] > (dconPtr_CTmAdd_mAdd_Int,Pointer_CTmAdd_mAdd_Int) */
  assign dconPtr_CTmAdd_mAdd_Int_d = Pointer_CTmAdd_mAdd_Int_dc((& {forkHP1_CTmAdd_mAdd_In3_d[0]}), forkHP1_CTmAdd_mAdd_In3_d);
  assign {forkHP1_CTmAdd_mAdd_In3_r} = {1 {(dconPtr_CTmAdd_mAdd_Int_r && dconPtr_CTmAdd_mAdd_Int_d[0])}};
  
  /* demux (Ty MemOut_CTmAdd_mAdd_Int,
       Ty Pointer_CTmAdd_mAdd_Int) : (memWriteOut_CTmAdd_mAdd_Int,MemOut_CTmAdd_mAdd_Int) (dconPtr_CTmAdd_mAdd_Int,Pointer_CTmAdd_mAdd_Int) > [(_60,Pointer_CTmAdd_mAdd_Int),
                                                                                                                                               (demuxWriteResult_CTmAdd_mAdd_Int,Pointer_CTmAdd_mAdd_Int)] */
  logic [1:0] dconPtr_CTmAdd_mAdd_Int_onehotd;
  always_comb
    if ((memWriteOut_CTmAdd_mAdd_Int_d[0] && dconPtr_CTmAdd_mAdd_Int_d[0]))
      unique case (memWriteOut_CTmAdd_mAdd_Int_d[1:1])
        1'd0: dconPtr_CTmAdd_mAdd_Int_onehotd = 2'd1;
        1'd1: dconPtr_CTmAdd_mAdd_Int_onehotd = 2'd2;
        default: dconPtr_CTmAdd_mAdd_Int_onehotd = 2'd0;
      endcase
    else dconPtr_CTmAdd_mAdd_Int_onehotd = 2'd0;
  assign _60_d = {dconPtr_CTmAdd_mAdd_Int_d[16:1],
                  dconPtr_CTmAdd_mAdd_Int_onehotd[0]};
  assign demuxWriteResult_CTmAdd_mAdd_Int_d = {dconPtr_CTmAdd_mAdd_Int_d[16:1],
                                               dconPtr_CTmAdd_mAdd_Int_onehotd[1]};
  assign dconPtr_CTmAdd_mAdd_Int_r = (| (dconPtr_CTmAdd_mAdd_Int_onehotd & {demuxWriteResult_CTmAdd_mAdd_Int_r,
                                                                            _60_r}));
  assign memWriteOut_CTmAdd_mAdd_Int_r = dconPtr_CTmAdd_mAdd_Int_r;
  
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
  
  /* source (Ty Pointer_QTree_Int) : > (w1shM_1_1,Pointer_QTree_Int) */
  
  /* source (Ty Pointer_QTree_Int) : > (w2shN_1_2,Pointer_QTree_Int) */
  
  /* source (Ty Pointer_QTree_Int) : > (wshL_1_0,Pointer_QTree_Int) */
  
  /* destruct (Ty TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int,
          Dcon TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int) : ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1,TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int) > [($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6,Go),
                                                                                                                                                                                                                                     ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL,Pointer_QTree_Int),
                                                                                                                                                                                                                                     ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM,Pointer_QTree_Int),
                                                                                                                                                                                                                                     ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN,Pointer_QTree_Int)] */
  logic [3:0] \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted ;
  logic [3:0] \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d  = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted [0]));
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_d  = {\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [16:1],
                                                                                            (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted [1]))};
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_d  = {\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [32:17],
                                                                                             (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted [2]))};
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_d  = {\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [48:33],
                                                                                             (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted [3]))};
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done  = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted  | ({\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_d [0],
                                                                                                                                                                                     \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_d [0],
                                                                                                                                                                                     \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_d [0],
                                                                                                                                                                                     \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0]} & {\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_r ,
                                                                                                                                                                                                                                                                            \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_r ,
                                                                                                                                                                                                                                                                            \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_r ,
                                                                                                                                                                                                                                                                            \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_r }));
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r  = (& \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted  <= 4'd0;
    else
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emitted  <= (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r  ? 4'd0 :
                                                                                              \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done );
  
  /* fork (Ty Go) : ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6,Go) > [(go_6_1,Go),
                                                                                                   (go_6_2,Go),
                                                                                                   (go_6_3,Go),
                                                                                                   (go_6_4,Go),
                                                                                                   (go_6_5,Go),
                                                                                                   (go_6_6,Go),
                                                                                                   (go_6_7,Go)] */
  logic [6:0] \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted ;
  logic [6:0] \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_done ;
  assign go_6_1_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [0]));
  assign go_6_2_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [1]));
  assign go_6_3_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [2]));
  assign go_6_4_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [3]));
  assign go_6_5_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [4]));
  assign go_6_6_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [5]));
  assign go_6_7_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_d [0] && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted [6]));
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_done  = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted  | ({go_6_7_d[0],
                                                                                                                                                                                         go_6_6_d[0],
                                                                                                                                                                                         go_6_5_d[0],
                                                                                                                                                                                         go_6_4_d[0],
                                                                                                                                                                                         go_6_3_d[0],
                                                                                                                                                                                         go_6_2_d[0],
                                                                                                                                                                                         go_6_1_d[0]} & {go_6_7_r,
                                                                                                                                                                                                         go_6_6_r,
                                                                                                                                                                                                         go_6_5_r,
                                                                                                                                                                                                         go_6_4_r,
                                                                                                                                                                                                         go_6_3_r,
                                                                                                                                                                                                         go_6_2_r,
                                                                                                                                                                                                         go_6_1_r}));
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_r  = (& \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted  <= 7'd0;
    else
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_emitted  <= (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_r  ? 7'd0 :
                                                                                                \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_6_done );
  
  /* buf (Ty Pointer_QTree_Int) : ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM,Pointer_QTree_Int) > (w1shM_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_r ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_r  = ((! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d [0]) || \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d  <= {16'd0,
                                                                                                   1'd0};
    else
      if (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_r )
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_d ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_r  = (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf [0]);
  assign w1shM_1_argbuf_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf [0] ? \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf  :
                             \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf  <= {16'd0,
                                                                                                     1'd0};
    else
      if ((w1shM_1_argbuf_r && \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf [0]))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf  <= {16'd0,
                                                                                                       1'd0};
      else if (((! w1shM_1_argbuf_r) && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf [0])))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_buf  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw1shM_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Int) : ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN,Pointer_QTree_Int) > (w2shN_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_r ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_r  = ((! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d [0]) || \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d  <= {16'd0,
                                                                                                   1'd0};
    else
      if (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_r )
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_d ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_r  = (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf [0]);
  assign w2shN_1_argbuf_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf [0] ? \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf  :
                             \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf  <= {16'd0,
                                                                                                     1'd0};
    else
      if ((w2shN_1_argbuf_r && \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf [0]))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf  <= {16'd0,
                                                                                                       1'd0};
      else if (((! w2shN_1_argbuf_r) && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf [0])))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_buf  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Intw2shN_bufchan_d ;
  
  /* buf (Ty Pointer_QTree_Int) : ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL,Pointer_QTree_Int) > (wshL_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d ;
  logic \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_r ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_r  = ((! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d [0]) || \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d  <= {16'd0,
                                                                                                  1'd0};
    else
      if (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_r )
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_d ;
  Pointer_QTree_Int_t \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf ;
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_r  = (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf [0]);
  assign wshL_1_argbuf_d = (\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf [0] ? \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf  :
                            \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf  <= {16'd0,
                                                                                                    1'd0};
    else
      if ((wshL_1_argbuf_r && \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf [0]))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf  <= {16'd0,
                                                                                                      1'd0};
      else if (((! wshL_1_argbuf_r) && (! \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf [0])))
        \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_buf  <= \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_IntwshL_bufchan_d ;
  
  /* dcon (Ty Int,Dcon I#) : [($wmain_resbuf,Int#)] > (es_0_1I#,Int) */
  assign \es_0_1I#_d  = \I#_dc ((& {\$wmain_resbuf_d [0]}), \$wmain_resbuf_d );
  assign {\$wmain_resbuf_r } = {1 {(\es_0_1I#_r  && \es_0_1I#_d [0])}};
  
  /* destruct (Ty TupGo___Pointer_QTree_Int,
          Dcon TupGo___Pointer_QTree_Int) : ($wnnzTupGo___Pointer_QTree_Int_1,TupGo___Pointer_QTree_Int) > [($wnnzTupGo___Pointer_QTree_Intgo_7,Go),
                                                                                                            ($wnnzTupGo___Pointer_QTree_IntwshD,Pointer_QTree_Int)] */
  logic [1:0] \$wnnzTupGo___Pointer_QTree_Int_1_emitted ;
  logic [1:0] \$wnnzTupGo___Pointer_QTree_Int_1_done ;
  assign \$wnnzTupGo___Pointer_QTree_Intgo_7_d  = (\$wnnzTupGo___Pointer_QTree_Int_1_d [0] && (! \$wnnzTupGo___Pointer_QTree_Int_1_emitted [0]));
  assign \$wnnzTupGo___Pointer_QTree_IntwshD_d  = {\$wnnzTupGo___Pointer_QTree_Int_1_d [16:1],
                                                   (\$wnnzTupGo___Pointer_QTree_Int_1_d [0] && (! \$wnnzTupGo___Pointer_QTree_Int_1_emitted [1]))};
  assign \$wnnzTupGo___Pointer_QTree_Int_1_done  = (\$wnnzTupGo___Pointer_QTree_Int_1_emitted  | ({\$wnnzTupGo___Pointer_QTree_IntwshD_d [0],
                                                                                                   \$wnnzTupGo___Pointer_QTree_Intgo_7_d [0]} & {\$wnnzTupGo___Pointer_QTree_IntwshD_r ,
                                                                                                                                                 \$wnnzTupGo___Pointer_QTree_Intgo_7_r }));
  assign \$wnnzTupGo___Pointer_QTree_Int_1_r  = (& \$wnnzTupGo___Pointer_QTree_Int_1_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wnnzTupGo___Pointer_QTree_Int_1_emitted  <= 2'd0;
    else
      \$wnnzTupGo___Pointer_QTree_Int_1_emitted  <= (\$wnnzTupGo___Pointer_QTree_Int_1_r  ? 2'd0 :
                                                     \$wnnzTupGo___Pointer_QTree_Int_1_done );
  
  /* fork (Ty Go) : ($wnnzTupGo___Pointer_QTree_Intgo_7,Go) > [(go_7_1,Go),
                                                          (go_7_2,Go)] */
  logic [1:0] \$wnnzTupGo___Pointer_QTree_Intgo_7_emitted ;
  logic [1:0] \$wnnzTupGo___Pointer_QTree_Intgo_7_done ;
  assign go_7_1_d = (\$wnnzTupGo___Pointer_QTree_Intgo_7_d [0] && (! \$wnnzTupGo___Pointer_QTree_Intgo_7_emitted [0]));
  assign go_7_2_d = (\$wnnzTupGo___Pointer_QTree_Intgo_7_d [0] && (! \$wnnzTupGo___Pointer_QTree_Intgo_7_emitted [1]));
  assign \$wnnzTupGo___Pointer_QTree_Intgo_7_done  = (\$wnnzTupGo___Pointer_QTree_Intgo_7_emitted  | ({go_7_2_d[0],
                                                                                                       go_7_1_d[0]} & {go_7_2_r,
                                                                                                                       go_7_1_r}));
  assign \$wnnzTupGo___Pointer_QTree_Intgo_7_r  = (& \$wnnzTupGo___Pointer_QTree_Intgo_7_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wnnzTupGo___Pointer_QTree_Intgo_7_emitted  <= 2'd0;
    else
      \$wnnzTupGo___Pointer_QTree_Intgo_7_emitted  <= (\$wnnzTupGo___Pointer_QTree_Intgo_7_r  ? 2'd0 :
                                                       \$wnnzTupGo___Pointer_QTree_Intgo_7_done );
  
  /* buf (Ty Pointer_QTree_Int) : ($wnnzTupGo___Pointer_QTree_IntwshD,Pointer_QTree_Int) > (wshD_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d ;
  logic \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_r ;
  assign \$wnnzTupGo___Pointer_QTree_IntwshD_r  = ((! \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d [0]) || \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d  <= {16'd0, 1'd0};
    else
      if (\$wnnzTupGo___Pointer_QTree_IntwshD_r )
        \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d  <= \$wnnzTupGo___Pointer_QTree_IntwshD_d ;
  Pointer_QTree_Int_t \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf ;
  assign \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_r  = (! \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf [0]);
  assign wshD_1_argbuf_d = (\$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf [0] ? \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf  :
                            \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf  <= {16'd0, 1'd0};
    else
      if ((wshD_1_argbuf_r && \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf [0]))
        \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf  <= {16'd0, 1'd0};
      else if (((! wshD_1_argbuf_r) && (! \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf [0])))
        \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_buf  <= \$wnnzTupGo___Pointer_QTree_IntwshD_bufchan_d ;
  
  /* buf (Ty Int#) : ($wnnz_resbuf,Int#) > ($wmain_resbuf,Int#) */
  \Int#_t  \$wnnz_resbuf_bufchan_d ;
  logic \$wnnz_resbuf_bufchan_r ;
  assign \$wnnz_resbuf_r  = ((! \$wnnz_resbuf_bufchan_d [0]) || \$wnnz_resbuf_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \$wnnz_resbuf_bufchan_d  <= {32'd0, 1'd0};
    else
      if (\$wnnz_resbuf_r ) \$wnnz_resbuf_bufchan_d  <= \$wnnz_resbuf_d ;
  \Int#_t  \$wnnz_resbuf_bufchan_buf ;
  assign \$wnnz_resbuf_bufchan_r  = (! \$wnnz_resbuf_bufchan_buf [0]);
  assign \$wmain_resbuf_d  = (\$wnnz_resbuf_bufchan_buf [0] ? \$wnnz_resbuf_bufchan_buf  :
                              \$wnnz_resbuf_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \$wnnz_resbuf_bufchan_buf  <= {32'd0, 1'd0};
    else
      if ((\$wmain_resbuf_r  && \$wnnz_resbuf_bufchan_buf [0]))
        \$wnnz_resbuf_bufchan_buf  <= {32'd0, 1'd0};
      else if (((! \$wmain_resbuf_r ) && (! \$wnnz_resbuf_bufchan_buf [0])))
        \$wnnz_resbuf_bufchan_buf  <= \$wnnz_resbuf_bufchan_d ;
  
  /* destruct (Ty TupGo___MyDTInt_Bool___Int,
          Dcon TupGo___MyDTInt_Bool___Int) : (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1,TupGo___MyDTInt_Bool___Int) > [(applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8,Go),
                                                                                                                           (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0,MyDTInt_Bool),
                                                                                                                           (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1,Int)] */
  logic [2:0] applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted;
  logic [2:0] applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_done;
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted[0]));
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted[1]));
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d = {applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d[32:1],
                                                              (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted[2]))};
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_done = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted | ({applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d[0],
                                                                                                                         applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d[0],
                                                                                                                         applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d[0]} & {applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_r,
                                                                                                                                                                                  applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_r,
                                                                                                                                                                                  applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_r}));
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_r = (& applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted <= 3'd0;
    else
      applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_emitted <= (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_r ? 3'd0 :
                                                                applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_done);
  
  /* fork (Ty MyDTInt_Bool) : (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0,MyDTInt_Bool) > [(arg0_1,MyDTInt_Bool),
                                                                                           (arg0_2,MyDTInt_Bool),
                                                                                           (arg0_3,MyDTInt_Bool)] */
  logic [2:0] applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted;
  logic [2:0] applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_done;
  assign arg0_1_d = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted[0]));
  assign arg0_2_d = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted[1]));
  assign arg0_3_d = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_d[0] && (! applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted[2]));
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_done = (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted | ({arg0_3_d[0],
                                                                                                                             arg0_2_d[0],
                                                                                                                             arg0_1_d[0]} & {arg0_3_r,
                                                                                                                                             arg0_2_r,
                                                                                                                                             arg0_1_r}));
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_r = (& applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted <= 3'd0;
    else
      applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_emitted <= (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_r ? 3'd0 :
                                                                  applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg0_done);
  
  /* fork (Ty MyBool) : (applyfnInt_Bool_5_resbuf,MyBool) > [(es_0_3_1,MyBool),
                                                        (es_0_3_2,MyBool),
                                                        (es_0_3_3,MyBool)] */
  logic [2:0] applyfnInt_Bool_5_resbuf_emitted;
  logic [2:0] applyfnInt_Bool_5_resbuf_done;
  assign es_0_3_1_d = {applyfnInt_Bool_5_resbuf_d[1:1],
                       (applyfnInt_Bool_5_resbuf_d[0] && (! applyfnInt_Bool_5_resbuf_emitted[0]))};
  assign es_0_3_2_d = {applyfnInt_Bool_5_resbuf_d[1:1],
                       (applyfnInt_Bool_5_resbuf_d[0] && (! applyfnInt_Bool_5_resbuf_emitted[1]))};
  assign es_0_3_3_d = {applyfnInt_Bool_5_resbuf_d[1:1],
                       (applyfnInt_Bool_5_resbuf_d[0] && (! applyfnInt_Bool_5_resbuf_emitted[2]))};
  assign applyfnInt_Bool_5_resbuf_done = (applyfnInt_Bool_5_resbuf_emitted | ({es_0_3_3_d[0],
                                                                               es_0_3_2_d[0],
                                                                               es_0_3_1_d[0]} & {es_0_3_3_r,
                                                                                                 es_0_3_2_r,
                                                                                                 es_0_3_1_r}));
  assign applyfnInt_Bool_5_resbuf_r = (& applyfnInt_Bool_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) applyfnInt_Bool_5_resbuf_emitted <= 3'd0;
    else
      applyfnInt_Bool_5_resbuf_emitted <= (applyfnInt_Bool_5_resbuf_r ? 3'd0 :
                                           applyfnInt_Bool_5_resbuf_done);
  
  /* destruct (Ty TupMyDTInt_Int_Int___Int___Int,
          Dcon TupMyDTInt_Int_Int___Int___Int) : (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1,TupMyDTInt_Int_Int___Int___Int) > [(applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2,MyDTInt_Int_Int),
                                                                                                                                          (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2,Int),
                                                                                                                                          (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1,Int)] */
  logic [2:0] applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted;
  logic [2:0] applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_done;
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted[0]));
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d = {applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[32:1],
                                                                     (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted[1]))};
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d = {applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[64:33],
                                                                       (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted[2]))};
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_done = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted | ({applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d[0],
                                                                                                                                       applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d[0],
                                                                                                                                       applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d[0]} & {applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_r,
                                                                                                                                                                                                         applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_r,
                                                                                                                                                                                                         applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_r}));
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_r = (& applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted <= 3'd0;
    else
      applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_emitted <= (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_r ? 3'd0 :
                                                                       applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_done);
  
  /* fork (Ty MyDTInt_Int_Int) : (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2,MyDTInt_Int_Int) > [(arg0_2_1,MyDTInt_Int_Int),
                                                                                                          (arg0_2_2,MyDTInt_Int_Int),
                                                                                                          (arg0_2_3,MyDTInt_Int_Int)] */
  logic [2:0] applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted;
  logic [2:0] applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_done;
  assign arg0_2_1_d = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted[0]));
  assign arg0_2_2_d = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted[1]));
  assign arg0_2_3_d = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_d[0] && (! applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted[2]));
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_done = (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted | ({arg0_2_3_d[0],
                                                                                                                                               arg0_2_2_d[0],
                                                                                                                                               arg0_2_1_d[0]} & {arg0_2_3_r,
                                                                                                                                                                 arg0_2_2_r,
                                                                                                                                                                 arg0_2_1_r}));
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_r = (& applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted <= 3'd0;
    else
      applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_emitted <= (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_r ? 3'd0 :
                                                                           applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg0_2_done);
  
  /* fork (Ty Int) : (applyfnInt_Int_Int_5_resbuf,Int) > [(xa8a_1,Int),
                                                     (xa8a_2,Int)] */
  logic [1:0] applyfnInt_Int_Int_5_resbuf_emitted;
  logic [1:0] applyfnInt_Int_Int_5_resbuf_done;
  assign xa8a_1_d = {applyfnInt_Int_Int_5_resbuf_d[32:1],
                     (applyfnInt_Int_Int_5_resbuf_d[0] && (! applyfnInt_Int_Int_5_resbuf_emitted[0]))};
  assign xa8a_2_d = {applyfnInt_Int_Int_5_resbuf_d[32:1],
                     (applyfnInt_Int_Int_5_resbuf_d[0] && (! applyfnInt_Int_Int_5_resbuf_emitted[1]))};
  assign applyfnInt_Int_Int_5_resbuf_done = (applyfnInt_Int_Int_5_resbuf_emitted | ({xa8a_2_d[0],
                                                                                     xa8a_1_d[0]} & {xa8a_2_r,
                                                                                                     xa8a_1_r}));
  assign applyfnInt_Int_Int_5_resbuf_r = (& applyfnInt_Int_Int_5_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) applyfnInt_Int_Int_5_resbuf_emitted <= 2'd0;
    else
      applyfnInt_Int_Int_5_resbuf_emitted <= (applyfnInt_Int_Int_5_resbuf_r ? 2'd0 :
                                              applyfnInt_Int_Int_5_resbuf_done);
  
  /* demux (Ty MyDTInt_Bool,
       Ty Int) : (arg0_1,MyDTInt_Bool) (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1,Int) > [(arg0_1Dcon_isZ,Int)] */
  assign arg0_1Dcon_isZ_d = {applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d[32:1],
                             (arg0_1_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d[0])};
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_r = (arg0_1Dcon_isZ_r && (arg0_1_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d[0]));
  assign arg0_1_r = (arg0_1Dcon_isZ_r && (arg0_1_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intarg1_d[0]));
  
  /* fork (Ty Int) : (arg0_1Dcon_isZ,Int) > [(arg0_1Dcon_isZ_1,Int),
                                        (arg0_1Dcon_isZ_2,Int),
                                        (arg0_1Dcon_isZ_3,Int),
                                        (arg0_1Dcon_isZ_4,Int)] */
  logic [3:0] arg0_1Dcon_isZ_emitted;
  logic [3:0] arg0_1Dcon_isZ_done;
  assign arg0_1Dcon_isZ_1_d = {arg0_1Dcon_isZ_d[32:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[0]))};
  assign arg0_1Dcon_isZ_2_d = {arg0_1Dcon_isZ_d[32:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[1]))};
  assign arg0_1Dcon_isZ_3_d = {arg0_1Dcon_isZ_d[32:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[2]))};
  assign arg0_1Dcon_isZ_4_d = {arg0_1Dcon_isZ_d[32:1],
                               (arg0_1Dcon_isZ_d[0] && (! arg0_1Dcon_isZ_emitted[3]))};
  assign arg0_1Dcon_isZ_done = (arg0_1Dcon_isZ_emitted | ({arg0_1Dcon_isZ_4_d[0],
                                                           arg0_1Dcon_isZ_3_d[0],
                                                           arg0_1Dcon_isZ_2_d[0],
                                                           arg0_1Dcon_isZ_1_d[0]} & {arg0_1Dcon_isZ_4_r,
                                                                                     arg0_1Dcon_isZ_3_r,
                                                                                     arg0_1Dcon_isZ_2_r,
                                                                                     arg0_1Dcon_isZ_1_r}));
  assign arg0_1Dcon_isZ_r = (& arg0_1Dcon_isZ_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) arg0_1Dcon_isZ_emitted <= 4'd0;
    else
      arg0_1Dcon_isZ_emitted <= (arg0_1Dcon_isZ_r ? 4'd0 :
                                 arg0_1Dcon_isZ_done);
  
  /* destruct (Ty Int,
          Dcon I#) : (arg0_1Dcon_isZ_1I#,Int) > [(x1agg_destruct,Int#)] */
  assign x1agg_destruct_d = {\arg0_1Dcon_isZ_1I#_d [32:1],
                             \arg0_1Dcon_isZ_1I#_d [0]};
  assign \arg0_1Dcon_isZ_1I#_r  = x1agg_destruct_r;
  
  /* demux (Ty Int,
       Ty Int) : (arg0_1Dcon_isZ_2,Int) (arg0_1Dcon_isZ_1,Int) > [(arg0_1Dcon_isZ_1I#,Int)] */
  assign \arg0_1Dcon_isZ_1I#_d  = {arg0_1Dcon_isZ_1_d[32:1],
                                   (arg0_1Dcon_isZ_2_d[0] && arg0_1Dcon_isZ_1_d[0])};
  assign arg0_1Dcon_isZ_1_r = (\arg0_1Dcon_isZ_1I#_r  && (arg0_1Dcon_isZ_2_d[0] && arg0_1Dcon_isZ_1_d[0]));
  assign arg0_1Dcon_isZ_2_r = (\arg0_1Dcon_isZ_1I#_r  && (arg0_1Dcon_isZ_2_d[0] && arg0_1Dcon_isZ_1_d[0]));
  
  /* demux (Ty Int,
       Ty Go) : (arg0_1Dcon_isZ_3,Int) (arg0_2Dcon_isZ,Go) > [(arg0_1Dcon_isZ_3I#,Go)] */
  assign \arg0_1Dcon_isZ_3I#_d  = (arg0_1Dcon_isZ_3_d[0] && arg0_2Dcon_isZ_d[0]);
  assign arg0_2Dcon_isZ_r = (\arg0_1Dcon_isZ_3I#_r  && (arg0_1Dcon_isZ_3_d[0] && arg0_2Dcon_isZ_d[0]));
  assign arg0_1Dcon_isZ_3_r = (\arg0_1Dcon_isZ_3I#_r  && (arg0_1Dcon_isZ_3_d[0] && arg0_2Dcon_isZ_d[0]));
  
  /* fork (Ty Go) : (arg0_1Dcon_isZ_3I#,Go) > [(arg0_1Dcon_isZ_3I#_1,Go),
                                          (arg0_1Dcon_isZ_3I#_2,Go),
                                          (arg0_1Dcon_isZ_3I#_3,Go)] */
  logic [2:0] \arg0_1Dcon_isZ_3I#_emitted ;
  logic [2:0] \arg0_1Dcon_isZ_3I#_done ;
  assign \arg0_1Dcon_isZ_3I#_1_d  = (\arg0_1Dcon_isZ_3I#_d [0] && (! \arg0_1Dcon_isZ_3I#_emitted [0]));
  assign \arg0_1Dcon_isZ_3I#_2_d  = (\arg0_1Dcon_isZ_3I#_d [0] && (! \arg0_1Dcon_isZ_3I#_emitted [1]));
  assign \arg0_1Dcon_isZ_3I#_3_d  = (\arg0_1Dcon_isZ_3I#_d [0] && (! \arg0_1Dcon_isZ_3I#_emitted [2]));
  assign \arg0_1Dcon_isZ_3I#_done  = (\arg0_1Dcon_isZ_3I#_emitted  | ({\arg0_1Dcon_isZ_3I#_3_d [0],
                                                                       \arg0_1Dcon_isZ_3I#_2_d [0],
                                                                       \arg0_1Dcon_isZ_3I#_1_d [0]} & {\arg0_1Dcon_isZ_3I#_3_r ,
                                                                                                       \arg0_1Dcon_isZ_3I#_2_r ,
                                                                                                       \arg0_1Dcon_isZ_3I#_1_r }));
  assign \arg0_1Dcon_isZ_3I#_r  = (& \arg0_1Dcon_isZ_3I#_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_1Dcon_isZ_3I#_emitted  <= 3'd0;
    else
      \arg0_1Dcon_isZ_3I#_emitted  <= (\arg0_1Dcon_isZ_3I#_r  ? 3'd0 :
                                       \arg0_1Dcon_isZ_3I#_done );
  
  /* buf (Ty Go) : (arg0_1Dcon_isZ_3I#_1,Go) > (arg0_1Dcon_isZ_3I#_1_argbuf,Go) */
  Go_t \arg0_1Dcon_isZ_3I#_1_bufchan_d ;
  logic \arg0_1Dcon_isZ_3I#_1_bufchan_r ;
  assign \arg0_1Dcon_isZ_3I#_1_r  = ((! \arg0_1Dcon_isZ_3I#_1_bufchan_d [0]) || \arg0_1Dcon_isZ_3I#_1_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_1Dcon_isZ_3I#_1_bufchan_d  <= 1'd0;
    else
      if (\arg0_1Dcon_isZ_3I#_1_r )
        \arg0_1Dcon_isZ_3I#_1_bufchan_d  <= \arg0_1Dcon_isZ_3I#_1_d ;
  Go_t \arg0_1Dcon_isZ_3I#_1_bufchan_buf ;
  assign \arg0_1Dcon_isZ_3I#_1_bufchan_r  = (! \arg0_1Dcon_isZ_3I#_1_bufchan_buf [0]);
  assign \arg0_1Dcon_isZ_3I#_1_argbuf_d  = (\arg0_1Dcon_isZ_3I#_1_bufchan_buf [0] ? \arg0_1Dcon_isZ_3I#_1_bufchan_buf  :
                                            \arg0_1Dcon_isZ_3I#_1_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_1Dcon_isZ_3I#_1_bufchan_buf  <= 1'd0;
    else
      if ((\arg0_1Dcon_isZ_3I#_1_argbuf_r  && \arg0_1Dcon_isZ_3I#_1_bufchan_buf [0]))
        \arg0_1Dcon_isZ_3I#_1_bufchan_buf  <= 1'd0;
      else if (((! \arg0_1Dcon_isZ_3I#_1_argbuf_r ) && (! \arg0_1Dcon_isZ_3I#_1_bufchan_buf [0])))
        \arg0_1Dcon_isZ_3I#_1_bufchan_buf  <= \arg0_1Dcon_isZ_3I#_1_bufchan_d ;
  
  /* const (Ty Int#,
       Lit 0) : (arg0_1Dcon_isZ_3I#_1_argbuf,Go) > (arg0_1Dcon_isZ_3I#_1_argbuf_0,Int#) */
  assign \arg0_1Dcon_isZ_3I#_1_argbuf_0_d  = {32'd0,
                                              \arg0_1Dcon_isZ_3I#_1_argbuf_d [0]};
  assign \arg0_1Dcon_isZ_3I#_1_argbuf_r  = \arg0_1Dcon_isZ_3I#_1_argbuf_0_r ;
  
  /* op_eq (Ty Int#) : (arg0_1Dcon_isZ_3I#_1_argbuf_0,Int#) (x1agg_destruct,Int#) > (lizzieLet1_1wild1Xn_1_Eq,Bool) */
  assign lizzieLet1_1wild1Xn_1_Eq_d = {(\arg0_1Dcon_isZ_3I#_1_argbuf_0_d [32:1] == x1agg_destruct_d[32:1]),
                                       (\arg0_1Dcon_isZ_3I#_1_argbuf_0_d [0] && x1agg_destruct_d[0])};
  assign {\arg0_1Dcon_isZ_3I#_1_argbuf_0_r ,
          x1agg_destruct_r} = {2 {(lizzieLet1_1wild1Xn_1_Eq_r && lizzieLet1_1wild1Xn_1_Eq_d[0])}};
  
  /* buf (Ty Go) : (arg0_1Dcon_isZ_3I#_2,Go) > (arg0_1Dcon_isZ_3I#_2_argbuf,Go) */
  Go_t \arg0_1Dcon_isZ_3I#_2_bufchan_d ;
  logic \arg0_1Dcon_isZ_3I#_2_bufchan_r ;
  assign \arg0_1Dcon_isZ_3I#_2_r  = ((! \arg0_1Dcon_isZ_3I#_2_bufchan_d [0]) || \arg0_1Dcon_isZ_3I#_2_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_1Dcon_isZ_3I#_2_bufchan_d  <= 1'd0;
    else
      if (\arg0_1Dcon_isZ_3I#_2_r )
        \arg0_1Dcon_isZ_3I#_2_bufchan_d  <= \arg0_1Dcon_isZ_3I#_2_d ;
  Go_t \arg0_1Dcon_isZ_3I#_2_bufchan_buf ;
  assign \arg0_1Dcon_isZ_3I#_2_bufchan_r  = (! \arg0_1Dcon_isZ_3I#_2_bufchan_buf [0]);
  assign \arg0_1Dcon_isZ_3I#_2_argbuf_d  = (\arg0_1Dcon_isZ_3I#_2_bufchan_buf [0] ? \arg0_1Dcon_isZ_3I#_2_bufchan_buf  :
                                            \arg0_1Dcon_isZ_3I#_2_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_1Dcon_isZ_3I#_2_bufchan_buf  <= 1'd0;
    else
      if ((\arg0_1Dcon_isZ_3I#_2_argbuf_r  && \arg0_1Dcon_isZ_3I#_2_bufchan_buf [0]))
        \arg0_1Dcon_isZ_3I#_2_bufchan_buf  <= 1'd0;
      else if (((! \arg0_1Dcon_isZ_3I#_2_argbuf_r ) && (! \arg0_1Dcon_isZ_3I#_2_bufchan_buf [0])))
        \arg0_1Dcon_isZ_3I#_2_bufchan_buf  <= \arg0_1Dcon_isZ_3I#_2_bufchan_d ;
  
  /* dcon (Ty TupGo___Bool,
      Dcon TupGo___Bool) : [(arg0_1Dcon_isZ_3I#_2_argbuf,Go),
                            (lizzieLet2_1_argbuf,Bool)] > (boolConvert_1TupGo___Bool_1,TupGo___Bool) */
  assign boolConvert_1TupGo___Bool_1_d = TupGo___Bool_dc((& {\arg0_1Dcon_isZ_3I#_2_argbuf_d [0],
                                                             lizzieLet2_1_argbuf_d[0]}), \arg0_1Dcon_isZ_3I#_2_argbuf_d , lizzieLet2_1_argbuf_d);
  assign {\arg0_1Dcon_isZ_3I#_2_argbuf_r ,
          lizzieLet2_1_argbuf_r} = {2 {(boolConvert_1TupGo___Bool_1_r && boolConvert_1TupGo___Bool_1_d[0])}};
  
  /* mux (Ty Int,
     Ty MyBool) : (arg0_1Dcon_isZ_4,Int) [(lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux,MyBool)] > (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux,MyBool) */
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d = {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d[1:1],
                                                                             (arg0_1Dcon_isZ_4_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d[0])};
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_r = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_r && (arg0_1Dcon_isZ_4_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d[0]));
  assign arg0_1Dcon_isZ_4_r = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_r && (arg0_1Dcon_isZ_4_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d[0]));
  
  /* demux (Ty MyDTInt_Bool,
       Ty Go) : (arg0_2,MyDTInt_Bool) (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8,Go) > [(arg0_2Dcon_isZ,Go)] */
  assign arg0_2Dcon_isZ_d = (arg0_2_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d[0]);
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_r = (arg0_2Dcon_isZ_r && (arg0_2_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d[0]));
  assign arg0_2_r = (arg0_2Dcon_isZ_r && (arg0_2_d[0] && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Intgo_8_d[0]));
  
  /* demux (Ty MyDTInt_Int_Int,
       Ty Int) : (arg0_2_1,MyDTInt_Int_Int) (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1,Int) > [(arg0_2_1Dcon_$fNumInt_$c+,Int)] */
  assign \arg0_2_1Dcon_$fNumInt_$c+_d  = {applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d[32:1],
                                          (arg0_2_1_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d[0])};
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_r = (\arg0_2_1Dcon_$fNumInt_$c+_r  && (arg0_2_1_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d[0]));
  assign arg0_2_1_r = (\arg0_2_1Dcon_$fNumInt_$c+_r  && (arg0_2_1_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg1_1_d[0]));
  
  /* demux (Ty MyDTInt_Int_Int,
       Ty Int) : (arg0_2_2,MyDTInt_Int_Int) (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2,Int) > [(arg0_2_2Dcon_$fNumInt_$c+,Int)] */
  assign \arg0_2_2Dcon_$fNumInt_$c+_d  = {applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d[32:1],
                                          (arg0_2_2_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d[0])};
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_r = (\arg0_2_2Dcon_$fNumInt_$c+_r  && (arg0_2_2_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d[0]));
  assign arg0_2_2_r = (\arg0_2_2Dcon_$fNumInt_$c+_r  && (arg0_2_2_d[0] && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Intarg2_d[0]));
  
  /* fork (Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+,Int) > [(arg0_2_2Dcon_$fNumInt_$c+_1,Int),
                                                   (arg0_2_2Dcon_$fNumInt_$c+_2,Int),
                                                   (arg0_2_2Dcon_$fNumInt_$c+_3,Int),
                                                   (arg0_2_2Dcon_$fNumInt_$c+_4,Int)] */
  logic [3:0] \arg0_2_2Dcon_$fNumInt_$c+_emitted ;
  logic [3:0] \arg0_2_2Dcon_$fNumInt_$c+_done ;
  assign \arg0_2_2Dcon_$fNumInt_$c+_1_d  = {\arg0_2_2Dcon_$fNumInt_$c+_d [32:1],
                                            (\arg0_2_2Dcon_$fNumInt_$c+_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_emitted [0]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_2_d  = {\arg0_2_2Dcon_$fNumInt_$c+_d [32:1],
                                            (\arg0_2_2Dcon_$fNumInt_$c+_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_emitted [1]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3_d  = {\arg0_2_2Dcon_$fNumInt_$c+_d [32:1],
                                            (\arg0_2_2Dcon_$fNumInt_$c+_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_emitted [2]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_4_d  = {\arg0_2_2Dcon_$fNumInt_$c+_d [32:1],
                                            (\arg0_2_2Dcon_$fNumInt_$c+_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_emitted [3]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_done  = (\arg0_2_2Dcon_$fNumInt_$c+_emitted  | ({\arg0_2_2Dcon_$fNumInt_$c+_4_d [0],
                                                                                     \arg0_2_2Dcon_$fNumInt_$c+_3_d [0],
                                                                                     \arg0_2_2Dcon_$fNumInt_$c+_2_d [0],
                                                                                     \arg0_2_2Dcon_$fNumInt_$c+_1_d [0]} & {\arg0_2_2Dcon_$fNumInt_$c+_4_r ,
                                                                                                                            \arg0_2_2Dcon_$fNumInt_$c+_3_r ,
                                                                                                                            \arg0_2_2Dcon_$fNumInt_$c+_2_r ,
                                                                                                                            \arg0_2_2Dcon_$fNumInt_$c+_1_r }));
  assign \arg0_2_2Dcon_$fNumInt_$c+_r  = (& \arg0_2_2Dcon_$fNumInt_$c+_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \arg0_2_2Dcon_$fNumInt_$c+_emitted  <= 4'd0;
    else
      \arg0_2_2Dcon_$fNumInt_$c+_emitted  <= (\arg0_2_2Dcon_$fNumInt_$c+_r  ? 4'd0 :
                                              \arg0_2_2Dcon_$fNumInt_$c+_done );
  
  /* destruct (Ty Int,
          Dcon I#) : (arg0_2_2Dcon_$fNumInt_$c+_1I#,Int) > [(xa1lV_destruct,Int#)] */
  assign xa1lV_destruct_d = {\arg0_2_2Dcon_$fNumInt_$c+_1I#_d [32:1],
                             \arg0_2_2Dcon_$fNumInt_$c+_1I#_d [0]};
  assign \arg0_2_2Dcon_$fNumInt_$c+_1I#_r  = xa1lV_destruct_r;
  
  /* demux (Ty Int,
       Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_2,Int) (arg0_2_2Dcon_$fNumInt_$c+_1,Int) > [(arg0_2_2Dcon_$fNumInt_$c+_1I#,Int)] */
  assign \arg0_2_2Dcon_$fNumInt_$c+_1I#_d  = {\arg0_2_2Dcon_$fNumInt_$c+_1_d [32:1],
                                              (\arg0_2_2Dcon_$fNumInt_$c+_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_1_d [0])};
  assign \arg0_2_2Dcon_$fNumInt_$c+_1_r  = (\arg0_2_2Dcon_$fNumInt_$c+_1I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_1_d [0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_2_r  = (\arg0_2_2Dcon_$fNumInt_$c+_1I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_1_d [0]));
  
  /* demux (Ty Int,
       Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_3,Int) (arg0_2_1Dcon_$fNumInt_$c+,Int) > [(arg0_2_2Dcon_$fNumInt_$c+_3I#,Int)] */
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_d  = {\arg0_2_1Dcon_$fNumInt_$c+_d [32:1],
                                              (\arg0_2_2Dcon_$fNumInt_$c+_3_d [0] && \arg0_2_1Dcon_$fNumInt_$c+_d [0])};
  assign \arg0_2_1Dcon_$fNumInt_$c+_r  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3_d [0] && \arg0_2_1Dcon_$fNumInt_$c+_d [0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_3_r  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3_d [0] && \arg0_2_1Dcon_$fNumInt_$c+_d [0]));
  
  /* fork (Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_3I#,Int) > [(arg0_2_2Dcon_$fNumInt_$c+_3I#_1,Int),
                                                       (arg0_2_2Dcon_$fNumInt_$c+_3I#_2,Int),
                                                       (arg0_2_2Dcon_$fNumInt_$c+_3I#_3,Int),
                                                       (arg0_2_2Dcon_$fNumInt_$c+_3I#_4,Int)] */
  logic [3:0] \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted ;
  logic [3:0] \arg0_2_2Dcon_$fNumInt_$c+_3I#_done ;
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d  = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [32:1],
                                                (\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted [0]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d  = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [32:1],
                                                (\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted [1]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d  = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [32:1],
                                                (\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted [2]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d  = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [32:1],
                                                (\arg0_2_2Dcon_$fNumInt_$c+_3I#_d [0] && (! \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted [3]))};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_done  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted  | ({\arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d [0],
                                                                                             \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d [0],
                                                                                             \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d [0],
                                                                                             \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d [0]} & {\arg0_2_2Dcon_$fNumInt_$c+_3I#_4_r ,
                                                                                                                                        \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_r ,
                                                                                                                                        \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_r ,
                                                                                                                                        \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_r }));
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_r  = (& \arg0_2_2Dcon_$fNumInt_$c+_3I#_done );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted  <= 4'd0;
    else
      \arg0_2_2Dcon_$fNumInt_$c+_3I#_emitted  <= (\arg0_2_2Dcon_$fNumInt_$c+_3I#_r  ? 4'd0 :
                                                  \arg0_2_2Dcon_$fNumInt_$c+_3I#_done );
  
  /* destruct (Ty Int,
          Dcon I#) : (arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#,Int) > [(ya1lW_destruct,Int#)] */
  assign ya1lW_destruct_d = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_d [32:1],
                             \arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_d [0]};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_r  = ya1lW_destruct_r;
  
  /* demux (Ty Int,
       Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_3I#_2,Int) (arg0_2_2Dcon_$fNumInt_$c+_3I#_1,Int) > [(arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#,Int)] */
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_d  = {\arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d [32:1],
                                                  (\arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d [0])};
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_r  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d [0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_2_r  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_1I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_2_d [0] && \arg0_2_2Dcon_$fNumInt_$c+_3I#_1_d [0]));
  
  /* demux (Ty Int,
       Ty Int#) : (arg0_2_2Dcon_$fNumInt_$c+_3I#_3,Int) (xa1lV_destruct,Int#) > [(arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#,Int#)] */
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_d  = {xa1lV_destruct_d[32:1],
                                                  (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d [0] && xa1lV_destruct_d[0])};
  assign xa1lV_destruct_r = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d [0] && xa1lV_destruct_d[0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_3_r  = (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3_d [0] && xa1lV_destruct_d[0]));
  
  /* op_add (Ty Int#) : (arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#,Int#) (ya1lW_destruct,Int#) > (arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32,Int#) */
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_d  = {(\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_d [32:1] + ya1lW_destruct_d[32:1]),
                                                                 (\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_d [0] && ya1lW_destruct_d[0])};
  assign {\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_r ,
          ya1lW_destruct_r} = {2 {(\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_r  && \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_d [0])}};
  
  /* dcon (Ty Int,
      Dcon I#) : [(arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32,Int#)] > (es_0_2_1I#,Int) */
  assign \es_0_2_1I#_d  = \I#_dc ((& {\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_d [0]}), \arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_d );
  assign {\arg0_2_2Dcon_$fNumInt_$c+_3I#_3I#_1ya1lW_1_Add32_r } = {1 {(\es_0_2_1I#_r  && \es_0_2_1I#_d [0])}};
  
  /* mux (Ty Int,
     Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_3I#_4,Int) [(es_0_2_1I#,Int)] > (es_0_2_1I#_mux,Int) */
  assign \es_0_2_1I#_mux_d  = {\es_0_2_1I#_d [32:1],
                               (\arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d [0] && \es_0_2_1I#_d [0])};
  assign \es_0_2_1I#_r  = (\es_0_2_1I#_mux_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d [0] && \es_0_2_1I#_d [0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_3I#_4_r  = (\es_0_2_1I#_mux_r  && (\arg0_2_2Dcon_$fNumInt_$c+_3I#_4_d [0] && \es_0_2_1I#_d [0]));
  
  /* mux (Ty Int,
     Ty Int) : (arg0_2_2Dcon_$fNumInt_$c+_4,Int) [(es_0_2_1I#_mux,Int)] > (es_0_2_1I#_mux_mux,Int) */
  assign \es_0_2_1I#_mux_mux_d  = {\es_0_2_1I#_mux_d [32:1],
                                   (\arg0_2_2Dcon_$fNumInt_$c+_4_d [0] && \es_0_2_1I#_mux_d [0])};
  assign \es_0_2_1I#_mux_r  = (\es_0_2_1I#_mux_mux_r  && (\arg0_2_2Dcon_$fNumInt_$c+_4_d [0] && \es_0_2_1I#_mux_d [0]));
  assign \arg0_2_2Dcon_$fNumInt_$c+_4_r  = (\es_0_2_1I#_mux_mux_r  && (\arg0_2_2Dcon_$fNumInt_$c+_4_d [0] && \es_0_2_1I#_mux_d [0]));
  
  /* mux (Ty MyDTInt_Int_Int,
     Ty Int) : (arg0_2_3,MyDTInt_Int_Int) [(es_0_2_1I#_mux_mux,Int)] > (es_0_2_1I#_mux_mux_mux,Int) */
  assign \es_0_2_1I#_mux_mux_mux_d  = {\es_0_2_1I#_mux_mux_d [32:1],
                                       (arg0_2_3_d[0] && \es_0_2_1I#_mux_mux_d [0])};
  assign \es_0_2_1I#_mux_mux_r  = (\es_0_2_1I#_mux_mux_mux_r  && (arg0_2_3_d[0] && \es_0_2_1I#_mux_mux_d [0]));
  assign arg0_2_3_r = (\es_0_2_1I#_mux_mux_mux_r  && (arg0_2_3_d[0] && \es_0_2_1I#_mux_mux_d [0]));
  
  /* mux (Ty MyDTInt_Bool,
     Ty MyBool) : (arg0_3,MyDTInt_Bool) [(lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux,MyBool)] > (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux,MyBool) */
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_d = {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d[1:1],
                                                                                 (arg0_3_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d[0])};
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_r = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_r && (arg0_3_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d[0]));
  assign arg0_3_r = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_r && (arg0_3_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_d[0]));
  
  /* destruct (Ty TupGo___Bool,
          Dcon TupGo___Bool) : (boolConvert_1TupGo___Bool_1,TupGo___Bool) > [(boolConvert_1TupGo___Boolgo_1,Go),
                                                                             (boolConvert_1TupGo___Boolbool,Bool)] */
  logic [1:0] boolConvert_1TupGo___Bool_1_emitted;
  logic [1:0] boolConvert_1TupGo___Bool_1_done;
  assign boolConvert_1TupGo___Boolgo_1_d = (boolConvert_1TupGo___Bool_1_d[0] && (! boolConvert_1TupGo___Bool_1_emitted[0]));
  assign boolConvert_1TupGo___Boolbool_d = {boolConvert_1TupGo___Bool_1_d[1:1],
                                            (boolConvert_1TupGo___Bool_1_d[0] && (! boolConvert_1TupGo___Bool_1_emitted[1]))};
  assign boolConvert_1TupGo___Bool_1_done = (boolConvert_1TupGo___Bool_1_emitted | ({boolConvert_1TupGo___Boolbool_d[0],
                                                                                     boolConvert_1TupGo___Boolgo_1_d[0]} & {boolConvert_1TupGo___Boolbool_r,
                                                                                                                            boolConvert_1TupGo___Boolgo_1_r}));
  assign boolConvert_1TupGo___Bool_1_r = (& boolConvert_1TupGo___Bool_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) boolConvert_1TupGo___Bool_1_emitted <= 2'd0;
    else
      boolConvert_1TupGo___Bool_1_emitted <= (boolConvert_1TupGo___Bool_1_r ? 2'd0 :
                                              boolConvert_1TupGo___Bool_1_done);
  
  /* fork (Ty Bool) : (boolConvert_1TupGo___Boolbool,Bool) > [(bool_1,Bool),
                                                         (bool_2,Bool)] */
  logic [1:0] boolConvert_1TupGo___Boolbool_emitted;
  logic [1:0] boolConvert_1TupGo___Boolbool_done;
  assign bool_1_d = {boolConvert_1TupGo___Boolbool_d[1:1],
                     (boolConvert_1TupGo___Boolbool_d[0] && (! boolConvert_1TupGo___Boolbool_emitted[0]))};
  assign bool_2_d = {boolConvert_1TupGo___Boolbool_d[1:1],
                     (boolConvert_1TupGo___Boolbool_d[0] && (! boolConvert_1TupGo___Boolbool_emitted[1]))};
  assign boolConvert_1TupGo___Boolbool_done = (boolConvert_1TupGo___Boolbool_emitted | ({bool_2_d[0],
                                                                                         bool_1_d[0]} & {bool_2_r,
                                                                                                         bool_1_r}));
  assign boolConvert_1TupGo___Boolbool_r = (& boolConvert_1TupGo___Boolbool_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) boolConvert_1TupGo___Boolbool_emitted <= 2'd0;
    else
      boolConvert_1TupGo___Boolbool_emitted <= (boolConvert_1TupGo___Boolbool_r ? 2'd0 :
                                                boolConvert_1TupGo___Boolbool_done);
  
  /* fork (Ty MyBool) : (boolConvert_1_resbuf,MyBool) > [(lizzieLet3_1,MyBool),
                                                    (lizzieLet3_2,MyBool)] */
  logic [1:0] boolConvert_1_resbuf_emitted;
  logic [1:0] boolConvert_1_resbuf_done;
  assign lizzieLet3_1_d = {boolConvert_1_resbuf_d[1:1],
                           (boolConvert_1_resbuf_d[0] && (! boolConvert_1_resbuf_emitted[0]))};
  assign lizzieLet3_2_d = {boolConvert_1_resbuf_d[1:1],
                           (boolConvert_1_resbuf_d[0] && (! boolConvert_1_resbuf_emitted[1]))};
  assign boolConvert_1_resbuf_done = (boolConvert_1_resbuf_emitted | ({lizzieLet3_2_d[0],
                                                                       lizzieLet3_1_d[0]} & {lizzieLet3_2_r,
                                                                                             lizzieLet3_1_r}));
  assign boolConvert_1_resbuf_r = (& boolConvert_1_resbuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) boolConvert_1_resbuf_emitted <= 2'd0;
    else
      boolConvert_1_resbuf_emitted <= (boolConvert_1_resbuf_r ? 2'd0 :
                                       boolConvert_1_resbuf_done);
  
  /* demux (Ty Bool,
       Ty Go) : (bool_1,Bool) (boolConvert_1TupGo___Boolgo_1,Go) > [(bool_1False,Go),
                                                                    (bool_1True,Go)] */
  logic [1:0] boolConvert_1TupGo___Boolgo_1_onehotd;
  always_comb
    if ((bool_1_d[0] && boolConvert_1TupGo___Boolgo_1_d[0]))
      unique case (bool_1_d[1:1])
        1'd0: boolConvert_1TupGo___Boolgo_1_onehotd = 2'd1;
        1'd1: boolConvert_1TupGo___Boolgo_1_onehotd = 2'd2;
        default: boolConvert_1TupGo___Boolgo_1_onehotd = 2'd0;
      endcase
    else boolConvert_1TupGo___Boolgo_1_onehotd = 2'd0;
  assign bool_1False_d = boolConvert_1TupGo___Boolgo_1_onehotd[0];
  assign bool_1True_d = boolConvert_1TupGo___Boolgo_1_onehotd[1];
  assign boolConvert_1TupGo___Boolgo_1_r = (| (boolConvert_1TupGo___Boolgo_1_onehotd & {bool_1True_r,
                                                                                        bool_1False_r}));
  assign bool_1_r = boolConvert_1TupGo___Boolgo_1_r;
  
  /* dcon (Ty MyBool,
      Dcon MyFalse) : [(bool_1False,Go)] > (bool_1False_1MyFalse,MyBool) */
  assign bool_1False_1MyFalse_d = MyFalse_dc((& {bool_1False_d[0]}), bool_1False_d);
  assign {bool_1False_r} = {1 {(bool_1False_1MyFalse_r && bool_1False_1MyFalse_d[0])}};
  
  /* buf (Ty MyBool) : (bool_1False_1MyFalsebool_1True_1MyTrue_mux,MyBool) > (boolConvert_1_resbuf,MyBool) */
  MyBool_t bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d;
  logic bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_r;
  assign bool_1False_1MyFalsebool_1True_1MyTrue_mux_r = ((! bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d[0]) || bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d <= {1'd0,
                                                               1'd0};
    else
      if (bool_1False_1MyFalsebool_1True_1MyTrue_mux_r)
        bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d <= bool_1False_1MyFalsebool_1True_1MyTrue_mux_d;
  MyBool_t bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf;
  assign bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_r = (! bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf[0]);
  assign boolConvert_1_resbuf_d = (bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf[0] ? bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf :
                                   bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf <= {1'd0,
                                                                 1'd0};
    else
      if ((boolConvert_1_resbuf_r && bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf[0]))
        bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf <= {1'd0,
                                                                   1'd0};
      else if (((! boolConvert_1_resbuf_r) && (! bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf[0])))
        bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_buf <= bool_1False_1MyFalsebool_1True_1MyTrue_mux_bufchan_d;
  
  /* dcon (Ty MyBool,
      Dcon MyTrue) : [(bool_1True,Go)] > (bool_1True_1MyTrue,MyBool) */
  assign bool_1True_1MyTrue_d = MyTrue_dc((& {bool_1True_d[0]}), bool_1True_d);
  assign {bool_1True_r} = {1 {(bool_1True_1MyTrue_r && bool_1True_1MyTrue_d[0])}};
  
  /* mux (Ty Bool,
     Ty MyBool) : (bool_2,Bool) [(bool_1False_1MyFalse,MyBool),
                                 (bool_1True_1MyTrue,MyBool)] > (bool_1False_1MyFalsebool_1True_1MyTrue_mux,MyBool) */
  logic [1:0] bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux;
  logic [1:0] bool_1False_1MyFalsebool_1True_1MyTrue_mux_onehot;
  always_comb
    unique case (bool_2_d[1:1])
      1'd0:
        {bool_1False_1MyFalsebool_1True_1MyTrue_mux_onehot,
         bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux} = {2'd1,
                                                            bool_1False_1MyFalse_d};
      1'd1:
        {bool_1False_1MyFalsebool_1True_1MyTrue_mux_onehot,
         bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux} = {2'd2,
                                                            bool_1True_1MyTrue_d};
      default:
        {bool_1False_1MyFalsebool_1True_1MyTrue_mux_onehot,
         bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux} = {2'd0,
                                                            {1'd0, 1'd0}};
    endcase
  assign bool_1False_1MyFalsebool_1True_1MyTrue_mux_d = {bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux[1:1],
                                                         (bool_1False_1MyFalsebool_1True_1MyTrue_mux_mux[0] && bool_2_d[0])};
  assign bool_2_r = (bool_1False_1MyFalsebool_1True_1MyTrue_mux_d[0] && bool_1False_1MyFalsebool_1True_1MyTrue_mux_r);
  assign {bool_1True_1MyTrue_r,
          bool_1False_1MyFalse_r} = (bool_2_r ? bool_1False_1MyFalsebool_1True_1MyTrue_mux_onehot :
                                     2'd0);
  
  /* destruct (Ty TupGo___Pointer_QTree_Int___Pointer_CT$wnnz,
          Dcon TupGo___Pointer_QTree_Int___Pointer_CT$wnnz) : (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1,TupGo___Pointer_QTree_Int___Pointer_CT$wnnz) > [(call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9,Go),
                                                                                                                                                                       (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1,Pointer_QTree_Int),
                                                                                                                                                                       (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0,Pointer_CT$wnnz)] */
  logic [2:0] call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted;
  logic [2:0] call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_done;
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d = (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[0] && (! call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted[0]));
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d = {call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[16:1],
                                                                          (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[0] && (! call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted[1]))};
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d = {call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[32:17],
                                                                        (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[0] && (! call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted[2]))};
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_done = (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted | ({call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d[0],
                                                                                                                                             call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d[0],
                                                                                                                                             call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d[0]} & {call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_r,
                                                                                                                                                                                                                call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_r,
                                                                                                                                                                                                                call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_r}));
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_r = (& call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted <= 3'd0;
    else
      call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_emitted <= (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_r ? 3'd0 :
                                                                          call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_done);
  
  /* rbuf (Ty Go) : (call_$wnnz_goConst,Go) > (call_$wnnz_initBufi,Go) */
  Go_t call_$wnnz_goConst_buf;
  assign call_$wnnz_goConst_r = (! call_$wnnz_goConst_buf[0]);
  assign call_$wnnz_initBufi_d = (call_$wnnz_goConst_buf[0] ? call_$wnnz_goConst_buf :
                                  call_$wnnz_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wnnz_goConst_buf <= 1'd0;
    else
      if ((call_$wnnz_initBufi_r && call_$wnnz_goConst_buf[0]))
        call_$wnnz_goConst_buf <= 1'd0;
      else if (((! call_$wnnz_initBufi_r) && (! call_$wnnz_goConst_buf[0])))
        call_$wnnz_goConst_buf <= call_$wnnz_goConst_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_$wnnz_goMux1,Go),
                           (lizzieLet18_3Lcall_$wnnz3_1_argbuf,Go),
                           (lizzieLet18_3Lcall_$wnnz2_1_argbuf,Go),
                           (lizzieLet18_3Lcall_$wnnz1_1_argbuf,Go),
                           (lizzieLet4_3QNode_Int_1_argbuf,Go)] > (go_9_goMux_choice,C5) (go_9_goMux_data,Go) */
  logic [4:0] call_$wnnz_goMux1_select_d;
  assign call_$wnnz_goMux1_select_d = ((| call_$wnnz_goMux1_select_q) ? call_$wnnz_goMux1_select_q :
                                       (call_$wnnz_goMux1_d[0] ? 5'd1 :
                                        (lizzieLet18_3Lcall_$wnnz3_1_argbuf_d[0] ? 5'd2 :
                                         (lizzieLet18_3Lcall_$wnnz2_1_argbuf_d[0] ? 5'd4 :
                                          (lizzieLet18_3Lcall_$wnnz1_1_argbuf_d[0] ? 5'd8 :
                                           (lizzieLet4_3QNode_Int_1_argbuf_d[0] ? 5'd16 :
                                            5'd0))))));
  logic [4:0] call_$wnnz_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wnnz_goMux1_select_q <= 5'd0;
    else
      call_$wnnz_goMux1_select_q <= (call_$wnnz_goMux1_done ? 5'd0 :
                                     call_$wnnz_goMux1_select_d);
  logic [1:0] call_$wnnz_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wnnz_goMux1_emit_q <= 2'd0;
    else
      call_$wnnz_goMux1_emit_q <= (call_$wnnz_goMux1_done ? 2'd0 :
                                   call_$wnnz_goMux1_emit_d);
  logic [1:0] call_$wnnz_goMux1_emit_d;
  assign call_$wnnz_goMux1_emit_d = (call_$wnnz_goMux1_emit_q | ({go_9_goMux_choice_d[0],
                                                                  go_9_goMux_data_d[0]} & {go_9_goMux_choice_r,
                                                                                           go_9_goMux_data_r}));
  logic call_$wnnz_goMux1_done;
  assign call_$wnnz_goMux1_done = (& call_$wnnz_goMux1_emit_d);
  assign {lizzieLet4_3QNode_Int_1_argbuf_r,
          lizzieLet18_3Lcall_$wnnz1_1_argbuf_r,
          lizzieLet18_3Lcall_$wnnz2_1_argbuf_r,
          lizzieLet18_3Lcall_$wnnz3_1_argbuf_r,
          call_$wnnz_goMux1_r} = (call_$wnnz_goMux1_done ? call_$wnnz_goMux1_select_d :
                                  5'd0);
  assign go_9_goMux_data_d = ((call_$wnnz_goMux1_select_d[0] && (! call_$wnnz_goMux1_emit_q[0])) ? call_$wnnz_goMux1_d :
                              ((call_$wnnz_goMux1_select_d[1] && (! call_$wnnz_goMux1_emit_q[0])) ? lizzieLet18_3Lcall_$wnnz3_1_argbuf_d :
                               ((call_$wnnz_goMux1_select_d[2] && (! call_$wnnz_goMux1_emit_q[0])) ? lizzieLet18_3Lcall_$wnnz2_1_argbuf_d :
                                ((call_$wnnz_goMux1_select_d[3] && (! call_$wnnz_goMux1_emit_q[0])) ? lizzieLet18_3Lcall_$wnnz1_1_argbuf_d :
                                 ((call_$wnnz_goMux1_select_d[4] && (! call_$wnnz_goMux1_emit_q[0])) ? lizzieLet4_3QNode_Int_1_argbuf_d :
                                  1'd0)))));
  assign go_9_goMux_choice_d = ((call_$wnnz_goMux1_select_d[0] && (! call_$wnnz_goMux1_emit_q[1])) ? C1_5_dc(1'd1) :
                                ((call_$wnnz_goMux1_select_d[1] && (! call_$wnnz_goMux1_emit_q[1])) ? C2_5_dc(1'd1) :
                                 ((call_$wnnz_goMux1_select_d[2] && (! call_$wnnz_goMux1_emit_q[1])) ? C3_5_dc(1'd1) :
                                  ((call_$wnnz_goMux1_select_d[3] && (! call_$wnnz_goMux1_emit_q[1])) ? C4_5_dc(1'd1) :
                                   ((call_$wnnz_goMux1_select_d[4] && (! call_$wnnz_goMux1_emit_q[1])) ? C5_5_dc(1'd1) :
                                    {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_$wnnz_initBuf,Go) > [(call_$wnnz_unlockFork1,Go),
                                          (call_$wnnz_unlockFork2,Go),
                                          (call_$wnnz_unlockFork3,Go)] */
  logic [2:0] call_$wnnz_initBuf_emitted;
  logic [2:0] call_$wnnz_initBuf_done;
  assign call_$wnnz_unlockFork1_d = (call_$wnnz_initBuf_d[0] && (! call_$wnnz_initBuf_emitted[0]));
  assign call_$wnnz_unlockFork2_d = (call_$wnnz_initBuf_d[0] && (! call_$wnnz_initBuf_emitted[1]));
  assign call_$wnnz_unlockFork3_d = (call_$wnnz_initBuf_d[0] && (! call_$wnnz_initBuf_emitted[2]));
  assign call_$wnnz_initBuf_done = (call_$wnnz_initBuf_emitted | ({call_$wnnz_unlockFork3_d[0],
                                                                   call_$wnnz_unlockFork2_d[0],
                                                                   call_$wnnz_unlockFork1_d[0]} & {call_$wnnz_unlockFork3_r,
                                                                                                   call_$wnnz_unlockFork2_r,
                                                                                                   call_$wnnz_unlockFork1_r}));
  assign call_$wnnz_initBuf_r = (& call_$wnnz_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wnnz_initBuf_emitted <= 3'd0;
    else
      call_$wnnz_initBuf_emitted <= (call_$wnnz_initBuf_r ? 3'd0 :
                                     call_$wnnz_initBuf_done);
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_$wnnz_initBufi,Go) > (call_$wnnz_initBuf,Go) */
  assign call_$wnnz_initBufi_r = ((! call_$wnnz_initBuf_d[0]) || call_$wnnz_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_$wnnz_initBuf_d <= Go_dc(1'd1);
    else
      if (call_$wnnz_initBufi_r)
        call_$wnnz_initBuf_d <= call_$wnnz_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (call_$wnnz_unlockFork1,Go) [(call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9,Go)] > (call_$wnnz_goMux1,Go) */
  assign call_$wnnz_goMux1_d = (call_$wnnz_unlockFork1_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d[0]);
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_r = (call_$wnnz_goMux1_r && (call_$wnnz_unlockFork1_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d[0]));
  assign call_$wnnz_unlockFork1_r = (call_$wnnz_goMux1_r && (call_$wnnz_unlockFork1_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzgo_9_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Int) : (call_$wnnz_unlockFork2,Go) [(call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1,Pointer_QTree_Int)] > (call_$wnnz_goMux2,Pointer_QTree_Int) */
  assign call_$wnnz_goMux2_d = {call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d[16:1],
                                (call_$wnnz_unlockFork2_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d[0])};
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_r = (call_$wnnz_goMux2_r && (call_$wnnz_unlockFork2_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d[0]));
  assign call_$wnnz_unlockFork2_r = (call_$wnnz_goMux2_r && (call_$wnnz_unlockFork2_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzwshD_1_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CT$wnnz) : (call_$wnnz_unlockFork3,Go) [(call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0,Pointer_CT$wnnz)] > (call_$wnnz_goMux3,Pointer_CT$wnnz) */
  assign call_$wnnz_goMux3_d = {call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d[16:1],
                                (call_$wnnz_unlockFork3_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d[0])};
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_r = (call_$wnnz_goMux3_r && (call_$wnnz_unlockFork3_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d[0]));
  assign call_$wnnz_unlockFork3_r = (call_$wnnz_goMux3_r && (call_$wnnz_unlockFork3_d[0] && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnzsc_0_d[0]));
  
  /* destruct (Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int,
          Dcon TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int) : (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int) > [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10,Go),
                                                                                                                                                                                                                                                                                                                                                                      (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b,MyDTInt_Bool),
                                                                                                                                                                                                                                                                                                                                                                      (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c,MyDTInt_Int_Int),
                                                                                                                                                                                                                                                                                                                                                                      (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d,Pointer_QTree_Int),
                                                                                                                                                                                                                                                                                                                                                                      (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e,Pointer_QTree_Int),
                                                                                                                                                                                                                                                                                                                                                                      (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1,Pointer_CTmAdd_mAdd_Int)] */
  logic [5:0] call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted;
  logic [5:0] call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_done;
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d = (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[0]));
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d = (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[1]));
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d = (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[2]));
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[16:1],
                                                                                                                                              (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[3]))};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[32:17],
                                                                                                                                              (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[4]))};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[48:33],
                                                                                                                                               (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0] && (! call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted[5]))};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_done = (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted | ({call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d[0],
                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d[0],
                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d[0],
                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d[0],
                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d[0],
                                                                                                                                                                                                                                                                                       call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d[0]} & {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_r,
                                                                                                                                                                                                                                                                                                                                                                                                                                call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_r}));
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_r = (& call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted <= 6'd0;
    else
      call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_emitted <= (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_r ? 6'd0 :
                                                                                                                                               call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_done);
  
  /* rbuf (Ty Go) : (call_mAdd_mAdd_Int_goConst,Go) > (call_mAdd_mAdd_Int_initBufi,Go) */
  Go_t call_mAdd_mAdd_Int_goConst_buf;
  assign call_mAdd_mAdd_Int_goConst_r = (! call_mAdd_mAdd_Int_goConst_buf[0]);
  assign call_mAdd_mAdd_Int_initBufi_d = (call_mAdd_mAdd_Int_goConst_buf[0] ? call_mAdd_mAdd_Int_goConst_buf :
                                          call_mAdd_mAdd_Int_goConst_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Int_goConst_buf <= 1'd0;
    else
      if ((call_mAdd_mAdd_Int_initBufi_r && call_mAdd_mAdd_Int_goConst_buf[0]))
        call_mAdd_mAdd_Int_goConst_buf <= 1'd0;
      else if (((! call_mAdd_mAdd_Int_initBufi_r) && (! call_mAdd_mAdd_Int_goConst_buf[0])))
        call_mAdd_mAdd_Int_goConst_buf <= call_mAdd_mAdd_Int_goConst_d;
  
  /* mergectrl (Ty C5,Ty Go) : [(call_mAdd_mAdd_Int_goMux1,Go),
                           (lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf,Go),
                           (lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf,Go),
                           (lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf,Go),
                           (lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf,Go)] > (go_10_goMux_choice,C5) (go_10_goMux_data,Go) */
  logic [4:0] call_mAdd_mAdd_Int_goMux1_select_d;
  assign call_mAdd_mAdd_Int_goMux1_select_d = ((| call_mAdd_mAdd_Int_goMux1_select_q) ? call_mAdd_mAdd_Int_goMux1_select_q :
                                               (call_mAdd_mAdd_Int_goMux1_d[0] ? 5'd1 :
                                                (lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_d[0] ? 5'd2 :
                                                 (lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_d[0] ? 5'd4 :
                                                  (lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_d[0] ? 5'd8 :
                                                   (lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_d[0] ? 5'd16 :
                                                    5'd0))))));
  logic [4:0] call_mAdd_mAdd_Int_goMux1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Int_goMux1_select_q <= 5'd0;
    else
      call_mAdd_mAdd_Int_goMux1_select_q <= (call_mAdd_mAdd_Int_goMux1_done ? 5'd0 :
                                             call_mAdd_mAdd_Int_goMux1_select_d);
  logic [1:0] call_mAdd_mAdd_Int_goMux1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Int_goMux1_emit_q <= 2'd0;
    else
      call_mAdd_mAdd_Int_goMux1_emit_q <= (call_mAdd_mAdd_Int_goMux1_done ? 2'd0 :
                                           call_mAdd_mAdd_Int_goMux1_emit_d);
  logic [1:0] call_mAdd_mAdd_Int_goMux1_emit_d;
  assign call_mAdd_mAdd_Int_goMux1_emit_d = (call_mAdd_mAdd_Int_goMux1_emit_q | ({go_10_goMux_choice_d[0],
                                                                                  go_10_goMux_data_d[0]} & {go_10_goMux_choice_r,
                                                                                                            go_10_goMux_data_r}));
  logic call_mAdd_mAdd_Int_goMux1_done;
  assign call_mAdd_mAdd_Int_goMux1_done = (& call_mAdd_mAdd_Int_goMux1_emit_d);
  assign {lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_r,
          lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_r,
          lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_r,
          lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_r,
          call_mAdd_mAdd_Int_goMux1_r} = (call_mAdd_mAdd_Int_goMux1_done ? call_mAdd_mAdd_Int_goMux1_select_d :
                                          5'd0);
  assign go_10_goMux_data_d = ((call_mAdd_mAdd_Int_goMux1_select_d[0] && (! call_mAdd_mAdd_Int_goMux1_emit_q[0])) ? call_mAdd_mAdd_Int_goMux1_d :
                               ((call_mAdd_mAdd_Int_goMux1_select_d[1] && (! call_mAdd_mAdd_Int_goMux1_emit_q[0])) ? lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_d :
                                ((call_mAdd_mAdd_Int_goMux1_select_d[2] && (! call_mAdd_mAdd_Int_goMux1_emit_q[0])) ? lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_d :
                                 ((call_mAdd_mAdd_Int_goMux1_select_d[3] && (! call_mAdd_mAdd_Int_goMux1_emit_q[0])) ? lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_d :
                                  ((call_mAdd_mAdd_Int_goMux1_select_d[4] && (! call_mAdd_mAdd_Int_goMux1_emit_q[0])) ? lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_d :
                                   1'd0)))));
  assign go_10_goMux_choice_d = ((call_mAdd_mAdd_Int_goMux1_select_d[0] && (! call_mAdd_mAdd_Int_goMux1_emit_q[1])) ? C1_5_dc(1'd1) :
                                 ((call_mAdd_mAdd_Int_goMux1_select_d[1] && (! call_mAdd_mAdd_Int_goMux1_emit_q[1])) ? C2_5_dc(1'd1) :
                                  ((call_mAdd_mAdd_Int_goMux1_select_d[2] && (! call_mAdd_mAdd_Int_goMux1_emit_q[1])) ? C3_5_dc(1'd1) :
                                   ((call_mAdd_mAdd_Int_goMux1_select_d[3] && (! call_mAdd_mAdd_Int_goMux1_emit_q[1])) ? C4_5_dc(1'd1) :
                                    ((call_mAdd_mAdd_Int_goMux1_select_d[4] && (! call_mAdd_mAdd_Int_goMux1_emit_q[1])) ? C5_5_dc(1'd1) :
                                     {3'd0, 1'd0})))));
  
  /* fork (Ty Go) : (call_mAdd_mAdd_Int_initBuf,Go) > [(call_mAdd_mAdd_Int_unlockFork1,Go),
                                                  (call_mAdd_mAdd_Int_unlockFork2,Go),
                                                  (call_mAdd_mAdd_Int_unlockFork3,Go),
                                                  (call_mAdd_mAdd_Int_unlockFork4,Go),
                                                  (call_mAdd_mAdd_Int_unlockFork5,Go),
                                                  (call_mAdd_mAdd_Int_unlockFork6,Go)] */
  logic [5:0] call_mAdd_mAdd_Int_initBuf_emitted;
  logic [5:0] call_mAdd_mAdd_Int_initBuf_done;
  assign call_mAdd_mAdd_Int_unlockFork1_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[0]));
  assign call_mAdd_mAdd_Int_unlockFork2_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[1]));
  assign call_mAdd_mAdd_Int_unlockFork3_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[2]));
  assign call_mAdd_mAdd_Int_unlockFork4_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[3]));
  assign call_mAdd_mAdd_Int_unlockFork5_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[4]));
  assign call_mAdd_mAdd_Int_unlockFork6_d = (call_mAdd_mAdd_Int_initBuf_d[0] && (! call_mAdd_mAdd_Int_initBuf_emitted[5]));
  assign call_mAdd_mAdd_Int_initBuf_done = (call_mAdd_mAdd_Int_initBuf_emitted | ({call_mAdd_mAdd_Int_unlockFork6_d[0],
                                                                                   call_mAdd_mAdd_Int_unlockFork5_d[0],
                                                                                   call_mAdd_mAdd_Int_unlockFork4_d[0],
                                                                                   call_mAdd_mAdd_Int_unlockFork3_d[0],
                                                                                   call_mAdd_mAdd_Int_unlockFork2_d[0],
                                                                                   call_mAdd_mAdd_Int_unlockFork1_d[0]} & {call_mAdd_mAdd_Int_unlockFork6_r,
                                                                                                                           call_mAdd_mAdd_Int_unlockFork5_r,
                                                                                                                           call_mAdd_mAdd_Int_unlockFork4_r,
                                                                                                                           call_mAdd_mAdd_Int_unlockFork3_r,
                                                                                                                           call_mAdd_mAdd_Int_unlockFork2_r,
                                                                                                                           call_mAdd_mAdd_Int_unlockFork1_r}));
  assign call_mAdd_mAdd_Int_initBuf_r = (& call_mAdd_mAdd_Int_initBuf_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Int_initBuf_emitted <= 6'd0;
    else
      call_mAdd_mAdd_Int_initBuf_emitted <= (call_mAdd_mAdd_Int_initBuf_r ? 6'd0 :
                                             call_mAdd_mAdd_Int_initBuf_done);
  
  /* initbuf (Ty Go,
         Dcon Go) : (call_mAdd_mAdd_Int_initBufi,Go) > (call_mAdd_mAdd_Int_initBuf,Go) */
  assign call_mAdd_mAdd_Int_initBufi_r = ((! call_mAdd_mAdd_Int_initBuf_d[0]) || call_mAdd_mAdd_Int_initBuf_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) call_mAdd_mAdd_Int_initBuf_d <= Go_dc(1'd1);
    else
      if (call_mAdd_mAdd_Int_initBufi_r)
        call_mAdd_mAdd_Int_initBuf_d <= call_mAdd_mAdd_Int_initBufi_d;
  
  /* mux (Ty Go,
     Ty Go) : (call_mAdd_mAdd_Int_unlockFork1,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10,Go)] > (call_mAdd_mAdd_Int_goMux1,Go) */
  assign call_mAdd_mAdd_Int_goMux1_d = (call_mAdd_mAdd_Int_unlockFork1_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d[0]);
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_r = (call_mAdd_mAdd_Int_goMux1_r && (call_mAdd_mAdd_Int_unlockFork1_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork1_r = (call_mAdd_mAdd_Int_goMux1_r && (call_mAdd_mAdd_Int_unlockFork1_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intgo_10_d[0]));
  
  /* mux (Ty Go,
     Ty MyDTInt_Bool) : (call_mAdd_mAdd_Int_unlockFork2,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b,MyDTInt_Bool)] > (call_mAdd_mAdd_Int_goMux2,MyDTInt_Bool) */
  assign call_mAdd_mAdd_Int_goMux2_d = (call_mAdd_mAdd_Int_unlockFork2_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d[0]);
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_r = (call_mAdd_mAdd_Int_goMux2_r && (call_mAdd_mAdd_Int_unlockFork2_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork2_r = (call_mAdd_mAdd_Int_goMux2_r && (call_mAdd_mAdd_Int_unlockFork2_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_IntisZ1a8b_d[0]));
  
  /* mux (Ty Go,
     Ty MyDTInt_Int_Int) : (call_mAdd_mAdd_Int_unlockFork3,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c,MyDTInt_Int_Int)] > (call_mAdd_mAdd_Int_goMux3,MyDTInt_Int_Int) */
  assign call_mAdd_mAdd_Int_goMux3_d = (call_mAdd_mAdd_Int_unlockFork3_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d[0]);
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_r = (call_mAdd_mAdd_Int_goMux3_r && (call_mAdd_mAdd_Int_unlockFork3_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork3_r = (call_mAdd_mAdd_Int_goMux3_r && (call_mAdd_mAdd_Int_unlockFork3_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intga8c_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Int) : (call_mAdd_mAdd_Int_unlockFork4,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d,Pointer_QTree_Int)] > (call_mAdd_mAdd_Int_goMux4,Pointer_QTree_Int) */
  assign call_mAdd_mAdd_Int_goMux4_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d[16:1],
                                        (call_mAdd_mAdd_Int_unlockFork4_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d[0])};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_r = (call_mAdd_mAdd_Int_goMux4_r && (call_mAdd_mAdd_Int_unlockFork4_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork4_r = (call_mAdd_mAdd_Int_goMux4_r && (call_mAdd_mAdd_Int_unlockFork4_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm1a8d_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_QTree_Int) : (call_mAdd_mAdd_Int_unlockFork5,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e,Pointer_QTree_Int)] > (call_mAdd_mAdd_Int_goMux5,Pointer_QTree_Int) */
  assign call_mAdd_mAdd_Int_goMux5_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d[16:1],
                                        (call_mAdd_mAdd_Int_unlockFork5_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d[0])};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_r = (call_mAdd_mAdd_Int_goMux5_r && (call_mAdd_mAdd_Int_unlockFork5_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork5_r = (call_mAdd_mAdd_Int_goMux5_r && (call_mAdd_mAdd_Int_unlockFork5_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intm2a8e_d[0]));
  
  /* mux (Ty Go,
     Ty Pointer_CTmAdd_mAdd_Int) : (call_mAdd_mAdd_Int_unlockFork6,Go) [(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1,Pointer_CTmAdd_mAdd_Int)] > (call_mAdd_mAdd_Int_goMux6,Pointer_CTmAdd_mAdd_Int) */
  assign call_mAdd_mAdd_Int_goMux6_d = {call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d[16:1],
                                        (call_mAdd_mAdd_Int_unlockFork6_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d[0])};
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_r = (call_mAdd_mAdd_Int_goMux6_r && (call_mAdd_mAdd_Int_unlockFork6_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d[0]));
  assign call_mAdd_mAdd_Int_unlockFork6_r = (call_mAdd_mAdd_Int_goMux6_r && (call_mAdd_mAdd_Int_unlockFork6_d[0] && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Intsc_0_1_d[0]));
  
  /* sink (Ty Int) : (es_0_1I#,Int) > */
  assign {\es_0_1I#_r , \es_0_1I#_dout } = {\es_0_1I#_rout ,
                                            \es_0_1I#_d };
  
  /* buf (Ty Int) : (es_0_2_1I#_mux_mux_mux,Int) > (applyfnInt_Int_Int_5_resbuf,Int) */
  Int_t \es_0_2_1I#_mux_mux_mux_bufchan_d ;
  logic \es_0_2_1I#_mux_mux_mux_bufchan_r ;
  assign \es_0_2_1I#_mux_mux_mux_r  = ((! \es_0_2_1I#_mux_mux_mux_bufchan_d [0]) || \es_0_2_1I#_mux_mux_mux_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \es_0_2_1I#_mux_mux_mux_bufchan_d  <= {32'd0, 1'd0};
    else
      if (\es_0_2_1I#_mux_mux_mux_r )
        \es_0_2_1I#_mux_mux_mux_bufchan_d  <= \es_0_2_1I#_mux_mux_mux_d ;
  Int_t \es_0_2_1I#_mux_mux_mux_bufchan_buf ;
  assign \es_0_2_1I#_mux_mux_mux_bufchan_r  = (! \es_0_2_1I#_mux_mux_mux_bufchan_buf [0]);
  assign applyfnInt_Int_Int_5_resbuf_d = (\es_0_2_1I#_mux_mux_mux_bufchan_buf [0] ? \es_0_2_1I#_mux_mux_mux_bufchan_buf  :
                                          \es_0_2_1I#_mux_mux_mux_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      \es_0_2_1I#_mux_mux_mux_bufchan_buf  <= {32'd0, 1'd0};
    else
      if ((applyfnInt_Int_Int_5_resbuf_r && \es_0_2_1I#_mux_mux_mux_bufchan_buf [0]))
        \es_0_2_1I#_mux_mux_mux_bufchan_buf  <= {32'd0, 1'd0};
      else if (((! applyfnInt_Int_Int_5_resbuf_r) && (! \es_0_2_1I#_mux_mux_mux_bufchan_buf [0])))
        \es_0_2_1I#_mux_mux_mux_bufchan_buf  <= \es_0_2_1I#_mux_mux_mux_bufchan_d ;
  
  /* demux (Ty MyBool,
       Ty Go) : (es_0_3_1,MyBool) (lizzieLet6_6QVal_Int_4QVal_Int_2,Go) > [(es_0_3_1MyFalse,Go),
                                                                           (es_0_3_1MyTrue,Go)] */
  logic [1:0] lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd;
  always_comb
    if ((es_0_3_1_d[0] && lizzieLet6_6QVal_Int_4QVal_Int_2_d[0]))
      unique case (es_0_3_1_d[1:1])
        1'd0: lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd = 2'd1;
        1'd1: lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd = 2'd2;
        default: lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd = 2'd0;
      endcase
    else lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd = 2'd0;
  assign es_0_3_1MyFalse_d = lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd[0];
  assign es_0_3_1MyTrue_d = lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd[1];
  assign lizzieLet6_6QVal_Int_4QVal_Int_2_r = (| (lizzieLet6_6QVal_Int_4QVal_Int_2_onehotd & {es_0_3_1MyTrue_r,
                                                                                              es_0_3_1MyFalse_r}));
  assign es_0_3_1_r = lizzieLet6_6QVal_Int_4QVal_Int_2_r;
  
  /* buf (Ty Go) : (es_0_3_1MyFalse,Go) > (es_0_3_1MyFalse_1_argbuf,Go) */
  Go_t es_0_3_1MyFalse_bufchan_d;
  logic es_0_3_1MyFalse_bufchan_r;
  assign es_0_3_1MyFalse_r = ((! es_0_3_1MyFalse_bufchan_d[0]) || es_0_3_1MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_1MyFalse_bufchan_d <= 1'd0;
    else
      if (es_0_3_1MyFalse_r)
        es_0_3_1MyFalse_bufchan_d <= es_0_3_1MyFalse_d;
  Go_t es_0_3_1MyFalse_bufchan_buf;
  assign es_0_3_1MyFalse_bufchan_r = (! es_0_3_1MyFalse_bufchan_buf[0]);
  assign es_0_3_1MyFalse_1_argbuf_d = (es_0_3_1MyFalse_bufchan_buf[0] ? es_0_3_1MyFalse_bufchan_buf :
                                       es_0_3_1MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_1MyFalse_bufchan_buf <= 1'd0;
    else
      if ((es_0_3_1MyFalse_1_argbuf_r && es_0_3_1MyFalse_bufchan_buf[0]))
        es_0_3_1MyFalse_bufchan_buf <= 1'd0;
      else if (((! es_0_3_1MyFalse_1_argbuf_r) && (! es_0_3_1MyFalse_bufchan_buf[0])))
        es_0_3_1MyFalse_bufchan_buf <= es_0_3_1MyFalse_bufchan_d;
  
  /* fork (Ty Go) : (es_0_3_1MyTrue,Go) > [(es_0_3_1MyTrue_1,Go),
                                      (es_0_3_1MyTrue_2,Go)] */
  logic [1:0] es_0_3_1MyTrue_emitted;
  logic [1:0] es_0_3_1MyTrue_done;
  assign es_0_3_1MyTrue_1_d = (es_0_3_1MyTrue_d[0] && (! es_0_3_1MyTrue_emitted[0]));
  assign es_0_3_1MyTrue_2_d = (es_0_3_1MyTrue_d[0] && (! es_0_3_1MyTrue_emitted[1]));
  assign es_0_3_1MyTrue_done = (es_0_3_1MyTrue_emitted | ({es_0_3_1MyTrue_2_d[0],
                                                           es_0_3_1MyTrue_1_d[0]} & {es_0_3_1MyTrue_2_r,
                                                                                     es_0_3_1MyTrue_1_r}));
  assign es_0_3_1MyTrue_r = (& es_0_3_1MyTrue_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_1MyTrue_emitted <= 2'd0;
    else
      es_0_3_1MyTrue_emitted <= (es_0_3_1MyTrue_r ? 2'd0 :
                                 es_0_3_1MyTrue_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QNone_Int) : [(es_0_3_1MyTrue_1,Go)] > (es_0_3_1MyTrue_1QNone_Int,QTree_Int) */
  assign es_0_3_1MyTrue_1QNone_Int_d = QNone_Int_dc((& {es_0_3_1MyTrue_1_d[0]}), es_0_3_1MyTrue_1_d);
  assign {es_0_3_1MyTrue_1_r} = {1 {(es_0_3_1MyTrue_1QNone_Int_r && es_0_3_1MyTrue_1QNone_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (es_0_3_1MyTrue_1QNone_Int,QTree_Int) > (lizzieLet9_1_1_argbuf,QTree_Int) */
  QTree_Int_t es_0_3_1MyTrue_1QNone_Int_bufchan_d;
  logic es_0_3_1MyTrue_1QNone_Int_bufchan_r;
  assign es_0_3_1MyTrue_1QNone_Int_r = ((! es_0_3_1MyTrue_1QNone_Int_bufchan_d[0]) || es_0_3_1MyTrue_1QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_3_1MyTrue_1QNone_Int_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_3_1MyTrue_1QNone_Int_r)
        es_0_3_1MyTrue_1QNone_Int_bufchan_d <= es_0_3_1MyTrue_1QNone_Int_d;
  QTree_Int_t es_0_3_1MyTrue_1QNone_Int_bufchan_buf;
  assign es_0_3_1MyTrue_1QNone_Int_bufchan_r = (! es_0_3_1MyTrue_1QNone_Int_bufchan_buf[0]);
  assign lizzieLet9_1_1_argbuf_d = (es_0_3_1MyTrue_1QNone_Int_bufchan_buf[0] ? es_0_3_1MyTrue_1QNone_Int_bufchan_buf :
                                    es_0_3_1MyTrue_1QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_3_1MyTrue_1QNone_Int_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet9_1_1_argbuf_r && es_0_3_1MyTrue_1QNone_Int_bufchan_buf[0]))
        es_0_3_1MyTrue_1QNone_Int_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet9_1_1_argbuf_r) && (! es_0_3_1MyTrue_1QNone_Int_bufchan_buf[0])))
        es_0_3_1MyTrue_1QNone_Int_bufchan_buf <= es_0_3_1MyTrue_1QNone_Int_bufchan_d;
  
  /* buf (Ty Go) : (es_0_3_1MyTrue_2,Go) > (es_0_3_1MyTrue_2_argbuf,Go) */
  Go_t es_0_3_1MyTrue_2_bufchan_d;
  logic es_0_3_1MyTrue_2_bufchan_r;
  assign es_0_3_1MyTrue_2_r = ((! es_0_3_1MyTrue_2_bufchan_d[0]) || es_0_3_1MyTrue_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_1MyTrue_2_bufchan_d <= 1'd0;
    else
      if (es_0_3_1MyTrue_2_r)
        es_0_3_1MyTrue_2_bufchan_d <= es_0_3_1MyTrue_2_d;
  Go_t es_0_3_1MyTrue_2_bufchan_buf;
  assign es_0_3_1MyTrue_2_bufchan_r = (! es_0_3_1MyTrue_2_bufchan_buf[0]);
  assign es_0_3_1MyTrue_2_argbuf_d = (es_0_3_1MyTrue_2_bufchan_buf[0] ? es_0_3_1MyTrue_2_bufchan_buf :
                                      es_0_3_1MyTrue_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_1MyTrue_2_bufchan_buf <= 1'd0;
    else
      if ((es_0_3_1MyTrue_2_argbuf_r && es_0_3_1MyTrue_2_bufchan_buf[0]))
        es_0_3_1MyTrue_2_bufchan_buf <= 1'd0;
      else if (((! es_0_3_1MyTrue_2_argbuf_r) && (! es_0_3_1MyTrue_2_bufchan_buf[0])))
        es_0_3_1MyTrue_2_bufchan_buf <= es_0_3_1MyTrue_2_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Pointer_CTmAdd_mAdd_Int) : (es_0_3_2,MyBool) (lizzieLet6_6QVal_Int_7QVal_Int,Pointer_CTmAdd_mAdd_Int) > [(es_0_3_2MyFalse,Pointer_CTmAdd_mAdd_Int),
                                                                                                                   (es_0_3_2MyTrue,Pointer_CTmAdd_mAdd_Int)] */
  logic [1:0] lizzieLet6_6QVal_Int_7QVal_Int_onehotd;
  always_comb
    if ((es_0_3_2_d[0] && lizzieLet6_6QVal_Int_7QVal_Int_d[0]))
      unique case (es_0_3_2_d[1:1])
        1'd0: lizzieLet6_6QVal_Int_7QVal_Int_onehotd = 2'd1;
        1'd1: lizzieLet6_6QVal_Int_7QVal_Int_onehotd = 2'd2;
        default: lizzieLet6_6QVal_Int_7QVal_Int_onehotd = 2'd0;
      endcase
    else lizzieLet6_6QVal_Int_7QVal_Int_onehotd = 2'd0;
  assign es_0_3_2MyFalse_d = {lizzieLet6_6QVal_Int_7QVal_Int_d[16:1],
                              lizzieLet6_6QVal_Int_7QVal_Int_onehotd[0]};
  assign es_0_3_2MyTrue_d = {lizzieLet6_6QVal_Int_7QVal_Int_d[16:1],
                             lizzieLet6_6QVal_Int_7QVal_Int_onehotd[1]};
  assign lizzieLet6_6QVal_Int_7QVal_Int_r = (| (lizzieLet6_6QVal_Int_7QVal_Int_onehotd & {es_0_3_2MyTrue_r,
                                                                                          es_0_3_2MyFalse_r}));
  assign es_0_3_2_r = lizzieLet6_6QVal_Int_7QVal_Int_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (es_0_3_2MyFalse,Pointer_CTmAdd_mAdd_Int) > (es_0_3_2MyFalse_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyFalse_bufchan_d;
  logic es_0_3_2MyFalse_bufchan_r;
  assign es_0_3_2MyFalse_r = ((! es_0_3_2MyFalse_bufchan_d[0]) || es_0_3_2MyFalse_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_2MyFalse_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_3_2MyFalse_r)
        es_0_3_2MyFalse_bufchan_d <= es_0_3_2MyFalse_d;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyFalse_bufchan_buf;
  assign es_0_3_2MyFalse_bufchan_r = (! es_0_3_2MyFalse_bufchan_buf[0]);
  assign es_0_3_2MyFalse_1_argbuf_d = (es_0_3_2MyFalse_bufchan_buf[0] ? es_0_3_2MyFalse_bufchan_buf :
                                       es_0_3_2MyFalse_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_3_2MyFalse_1_argbuf_r && es_0_3_2MyFalse_bufchan_buf[0]))
        es_0_3_2MyFalse_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_3_2MyFalse_1_argbuf_r) && (! es_0_3_2MyFalse_bufchan_buf[0])))
        es_0_3_2MyFalse_bufchan_buf <= es_0_3_2MyFalse_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (es_0_3_2MyTrue,Pointer_CTmAdd_mAdd_Int) > (es_0_3_2MyTrue_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyTrue_bufchan_d;
  logic es_0_3_2MyTrue_bufchan_r;
  assign es_0_3_2MyTrue_r = ((! es_0_3_2MyTrue_bufchan_d[0]) || es_0_3_2MyTrue_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_2MyTrue_bufchan_d <= {16'd0, 1'd0};
    else
      if (es_0_3_2MyTrue_r) es_0_3_2MyTrue_bufchan_d <= es_0_3_2MyTrue_d;
  Pointer_CTmAdd_mAdd_Int_t es_0_3_2MyTrue_bufchan_buf;
  assign es_0_3_2MyTrue_bufchan_r = (! es_0_3_2MyTrue_bufchan_buf[0]);
  assign es_0_3_2MyTrue_1_argbuf_d = (es_0_3_2MyTrue_bufchan_buf[0] ? es_0_3_2MyTrue_bufchan_buf :
                                      es_0_3_2MyTrue_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) es_0_3_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_3_2MyTrue_1_argbuf_r && es_0_3_2MyTrue_bufchan_buf[0]))
        es_0_3_2MyTrue_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_3_2MyTrue_1_argbuf_r) && (! es_0_3_2MyTrue_bufchan_buf[0])))
        es_0_3_2MyTrue_bufchan_buf <= es_0_3_2MyTrue_bufchan_d;
  
  /* demux (Ty MyBool,
       Ty Int) : (es_0_3_3,MyBool) (xa8a_2,Int) > [(es_0_3_3MyFalse,Int),
                                                   (_59,Int)] */
  logic [1:0] xa8a_2_onehotd;
  always_comb
    if ((es_0_3_3_d[0] && xa8a_2_d[0]))
      unique case (es_0_3_3_d[1:1])
        1'd0: xa8a_2_onehotd = 2'd1;
        1'd1: xa8a_2_onehotd = 2'd2;
        default: xa8a_2_onehotd = 2'd0;
      endcase
    else xa8a_2_onehotd = 2'd0;
  assign es_0_3_3MyFalse_d = {xa8a_2_d[32:1], xa8a_2_onehotd[0]};
  assign _59_d = {xa8a_2_d[32:1], xa8a_2_onehotd[1]};
  assign xa8a_2_r = (| (xa8a_2_onehotd & {_59_r,
                                          es_0_3_3MyFalse_r}));
  assign es_0_3_3_r = xa8a_2_r;
  
  /* dcon (Ty QTree_Int,
      Dcon QVal_Int) : [(es_0_3_3MyFalse,Int)] > (es_0_3_3MyFalse_1QVal_Int,QTree_Int) */
  assign es_0_3_3MyFalse_1QVal_Int_d = QVal_Int_dc((& {es_0_3_3MyFalse_d[0]}), es_0_3_3MyFalse_d);
  assign {es_0_3_3MyFalse_r} = {1 {(es_0_3_3MyFalse_1QVal_Int_r && es_0_3_3MyFalse_1QVal_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (es_0_3_3MyFalse_1QVal_Int,QTree_Int) > (lizzieLet8_2_1_argbuf,QTree_Int) */
  QTree_Int_t es_0_3_3MyFalse_1QVal_Int_bufchan_d;
  logic es_0_3_3MyFalse_1QVal_Int_bufchan_r;
  assign es_0_3_3MyFalse_1QVal_Int_r = ((! es_0_3_3MyFalse_1QVal_Int_bufchan_d[0]) || es_0_3_3MyFalse_1QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_3_3MyFalse_1QVal_Int_bufchan_d <= {66'd0, 1'd0};
    else
      if (es_0_3_3MyFalse_1QVal_Int_r)
        es_0_3_3MyFalse_1QVal_Int_bufchan_d <= es_0_3_3MyFalse_1QVal_Int_d;
  QTree_Int_t es_0_3_3MyFalse_1QVal_Int_bufchan_buf;
  assign es_0_3_3MyFalse_1QVal_Int_bufchan_r = (! es_0_3_3MyFalse_1QVal_Int_bufchan_buf[0]);
  assign lizzieLet8_2_1_argbuf_d = (es_0_3_3MyFalse_1QVal_Int_bufchan_buf[0] ? es_0_3_3MyFalse_1QVal_Int_bufchan_buf :
                                    es_0_3_3MyFalse_1QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_0_3_3MyFalse_1QVal_Int_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet8_2_1_argbuf_r && es_0_3_3MyFalse_1QVal_Int_bufchan_buf[0]))
        es_0_3_3MyFalse_1QVal_Int_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet8_2_1_argbuf_r) && (! es_0_3_3MyFalse_1QVal_Int_bufchan_buf[0])))
        es_0_3_3MyFalse_1QVal_Int_bufchan_buf <= es_0_3_3MyFalse_1QVal_Int_bufchan_d;
  
  /* buf (Ty Int#) : (es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32,Int#) > (contRet_0_1_argbuf,Int#) */
  \Int#_t  es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d;
  logic es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_r;
  assign es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_r = ((! es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d[0]) || es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d <= {32'd0, 1'd0};
    else
      if (es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_r)
        es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d <= es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_d;
  \Int#_t  es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf;
  assign es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_r = (! es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf[0]);
  assign contRet_0_1_argbuf_d = (es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf[0] ? es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf :
                                 es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf <= {32'd0,
                                                              1'd0};
    else
      if ((contRet_0_1_argbuf_r && es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf[0]))
        es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf <= {32'd0,
                                                                1'd0};
      else if (((! contRet_0_1_argbuf_r) && (! es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf[0])))
        es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_buf <= es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_bufchan_d;
  
  /* op_add (Ty Int#) : (es_6_1_1ww2Xib_1_1_Add32,Int#) (lizzieLet18_4Lcall_$wnnz0,Int#) > (es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32,Int#) */
  assign es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_d = {(es_6_1_1ww2Xib_1_1_Add32_d[32:1] + lizzieLet18_4Lcall_$wnnz0_d[32:1]),
                                                      (es_6_1_1ww2Xib_1_1_Add32_d[0] && lizzieLet18_4Lcall_$wnnz0_d[0])};
  assign {es_6_1_1ww2Xib_1_1_Add32_r,
          lizzieLet18_4Lcall_$wnnz0_r} = {2 {(es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_r && es_4_1lizzieLet18_4Lcall_$wnnz0_1_Add32_d[0])}};
  
  /* buf (Ty MyDTInt_Int_Int) : (ga8c_2_2,MyDTInt_Int_Int) > (ga8c_2_2_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t ga8c_2_2_bufchan_d;
  logic ga8c_2_2_bufchan_r;
  assign ga8c_2_2_r = ((! ga8c_2_2_bufchan_d[0]) || ga8c_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_2_2_bufchan_d <= 1'd0;
    else if (ga8c_2_2_r) ga8c_2_2_bufchan_d <= ga8c_2_2_d;
  MyDTInt_Int_Int_t ga8c_2_2_bufchan_buf;
  assign ga8c_2_2_bufchan_r = (! ga8c_2_2_bufchan_buf[0]);
  assign ga8c_2_2_argbuf_d = (ga8c_2_2_bufchan_buf[0] ? ga8c_2_2_bufchan_buf :
                              ga8c_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_2_2_bufchan_buf <= 1'd0;
    else
      if ((ga8c_2_2_argbuf_r && ga8c_2_2_bufchan_buf[0]))
        ga8c_2_2_bufchan_buf <= 1'd0;
      else if (((! ga8c_2_2_argbuf_r) && (! ga8c_2_2_bufchan_buf[0])))
        ga8c_2_2_bufchan_buf <= ga8c_2_2_bufchan_d;
  
  /* fork (Ty MyDTInt_Int_Int) : (ga8c_2_destruct,MyDTInt_Int_Int) > [(ga8c_2_1,MyDTInt_Int_Int),
                                                                 (ga8c_2_2,MyDTInt_Int_Int)] */
  logic [1:0] ga8c_2_destruct_emitted;
  logic [1:0] ga8c_2_destruct_done;
  assign ga8c_2_1_d = (ga8c_2_destruct_d[0] && (! ga8c_2_destruct_emitted[0]));
  assign ga8c_2_2_d = (ga8c_2_destruct_d[0] && (! ga8c_2_destruct_emitted[1]));
  assign ga8c_2_destruct_done = (ga8c_2_destruct_emitted | ({ga8c_2_2_d[0],
                                                             ga8c_2_1_d[0]} & {ga8c_2_2_r,
                                                                               ga8c_2_1_r}));
  assign ga8c_2_destruct_r = (& ga8c_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_2_destruct_emitted <= 2'd0;
    else
      ga8c_2_destruct_emitted <= (ga8c_2_destruct_r ? 2'd0 :
                                  ga8c_2_destruct_done);
  
  /* buf (Ty MyDTInt_Int_Int) : (ga8c_3_2,MyDTInt_Int_Int) > (ga8c_3_2_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t ga8c_3_2_bufchan_d;
  logic ga8c_3_2_bufchan_r;
  assign ga8c_3_2_r = ((! ga8c_3_2_bufchan_d[0]) || ga8c_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_3_2_bufchan_d <= 1'd0;
    else if (ga8c_3_2_r) ga8c_3_2_bufchan_d <= ga8c_3_2_d;
  MyDTInt_Int_Int_t ga8c_3_2_bufchan_buf;
  assign ga8c_3_2_bufchan_r = (! ga8c_3_2_bufchan_buf[0]);
  assign ga8c_3_2_argbuf_d = (ga8c_3_2_bufchan_buf[0] ? ga8c_3_2_bufchan_buf :
                              ga8c_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_3_2_bufchan_buf <= 1'd0;
    else
      if ((ga8c_3_2_argbuf_r && ga8c_3_2_bufchan_buf[0]))
        ga8c_3_2_bufchan_buf <= 1'd0;
      else if (((! ga8c_3_2_argbuf_r) && (! ga8c_3_2_bufchan_buf[0])))
        ga8c_3_2_bufchan_buf <= ga8c_3_2_bufchan_d;
  
  /* fork (Ty MyDTInt_Int_Int) : (ga8c_3_destruct,MyDTInt_Int_Int) > [(ga8c_3_1,MyDTInt_Int_Int),
                                                                 (ga8c_3_2,MyDTInt_Int_Int)] */
  logic [1:0] ga8c_3_destruct_emitted;
  logic [1:0] ga8c_3_destruct_done;
  assign ga8c_3_1_d = (ga8c_3_destruct_d[0] && (! ga8c_3_destruct_emitted[0]));
  assign ga8c_3_2_d = (ga8c_3_destruct_d[0] && (! ga8c_3_destruct_emitted[1]));
  assign ga8c_3_destruct_done = (ga8c_3_destruct_emitted | ({ga8c_3_2_d[0],
                                                             ga8c_3_1_d[0]} & {ga8c_3_2_r,
                                                                               ga8c_3_1_r}));
  assign ga8c_3_destruct_r = (& ga8c_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_3_destruct_emitted <= 2'd0;
    else
      ga8c_3_destruct_emitted <= (ga8c_3_destruct_r ? 2'd0 :
                                  ga8c_3_destruct_done);
  
  /* buf (Ty MyDTInt_Int_Int) : (ga8c_4_destruct,MyDTInt_Int_Int) > (ga8c_4_1_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t ga8c_4_destruct_bufchan_d;
  logic ga8c_4_destruct_bufchan_r;
  assign ga8c_4_destruct_r = ((! ga8c_4_destruct_bufchan_d[0]) || ga8c_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_4_destruct_bufchan_d <= 1'd0;
    else
      if (ga8c_4_destruct_r)
        ga8c_4_destruct_bufchan_d <= ga8c_4_destruct_d;
  MyDTInt_Int_Int_t ga8c_4_destruct_bufchan_buf;
  assign ga8c_4_destruct_bufchan_r = (! ga8c_4_destruct_bufchan_buf[0]);
  assign ga8c_4_1_argbuf_d = (ga8c_4_destruct_bufchan_buf[0] ? ga8c_4_destruct_bufchan_buf :
                              ga8c_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) ga8c_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((ga8c_4_1_argbuf_r && ga8c_4_destruct_bufchan_buf[0]))
        ga8c_4_destruct_bufchan_buf <= 1'd0;
      else if (((! ga8c_4_1_argbuf_r) && (! ga8c_4_destruct_bufchan_buf[0])))
        ga8c_4_destruct_bufchan_buf <= ga8c_4_destruct_bufchan_d;
  
  /* fork (Ty C5) : (go_10_goMux_choice,C5) > [(go_10_goMux_choice_1,C5),
                                          (go_10_goMux_choice_2,C5),
                                          (go_10_goMux_choice_3,C5),
                                          (go_10_goMux_choice_4,C5),
                                          (go_10_goMux_choice_5,C5)] */
  logic [4:0] go_10_goMux_choice_emitted;
  logic [4:0] go_10_goMux_choice_done;
  assign go_10_goMux_choice_1_d = {go_10_goMux_choice_d[3:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[0]))};
  assign go_10_goMux_choice_2_d = {go_10_goMux_choice_d[3:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[1]))};
  assign go_10_goMux_choice_3_d = {go_10_goMux_choice_d[3:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[2]))};
  assign go_10_goMux_choice_4_d = {go_10_goMux_choice_d[3:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[3]))};
  assign go_10_goMux_choice_5_d = {go_10_goMux_choice_d[3:1],
                                   (go_10_goMux_choice_d[0] && (! go_10_goMux_choice_emitted[4]))};
  assign go_10_goMux_choice_done = (go_10_goMux_choice_emitted | ({go_10_goMux_choice_5_d[0],
                                                                   go_10_goMux_choice_4_d[0],
                                                                   go_10_goMux_choice_3_d[0],
                                                                   go_10_goMux_choice_2_d[0],
                                                                   go_10_goMux_choice_1_d[0]} & {go_10_goMux_choice_5_r,
                                                                                                 go_10_goMux_choice_4_r,
                                                                                                 go_10_goMux_choice_3_r,
                                                                                                 go_10_goMux_choice_2_r,
                                                                                                 go_10_goMux_choice_1_r}));
  assign go_10_goMux_choice_r = (& go_10_goMux_choice_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_10_goMux_choice_emitted <= 5'd0;
    else
      go_10_goMux_choice_emitted <= (go_10_goMux_choice_r ? 5'd0 :
                                     go_10_goMux_choice_done);
  
  /* mux (Ty C5,
     Ty MyDTInt_Bool) : (go_10_goMux_choice_1,C5) [(call_mAdd_mAdd_Int_goMux2,MyDTInt_Bool),
                                                   (isZ1a8b_2_2_argbuf,MyDTInt_Bool),
                                                   (isZ1a8b_3_2_argbuf,MyDTInt_Bool),
                                                   (isZ1a8b_4_1_argbuf,MyDTInt_Bool),
                                                   (lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf,MyDTInt_Bool)] > (isZ1a8b_goMux_mux,MyDTInt_Bool) */
  logic [0:0] isZ1a8b_goMux_mux_mux;
  logic [4:0] isZ1a8b_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_1_d[3:1])
      3'd0:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd1,
                                                             call_mAdd_mAdd_Int_goMux2_d};
      3'd1:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd2,
                                                             isZ1a8b_2_2_argbuf_d};
      3'd2:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd4,
                                                             isZ1a8b_3_2_argbuf_d};
      3'd3:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd8,
                                                             isZ1a8b_4_1_argbuf_d};
      3'd4:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd16,
                                                             lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_d};
      default:
        {isZ1a8b_goMux_mux_onehot, isZ1a8b_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign isZ1a8b_goMux_mux_d = (isZ1a8b_goMux_mux_mux[0] && go_10_goMux_choice_1_d[0]);
  assign go_10_goMux_choice_1_r = (isZ1a8b_goMux_mux_d[0] && isZ1a8b_goMux_mux_r);
  assign {lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_r,
          isZ1a8b_4_1_argbuf_r,
          isZ1a8b_3_2_argbuf_r,
          isZ1a8b_2_2_argbuf_r,
          call_mAdd_mAdd_Int_goMux2_r} = (go_10_goMux_choice_1_r ? isZ1a8b_goMux_mux_onehot :
                                          5'd0);
  
  /* mux (Ty C5,
     Ty MyDTInt_Int_Int) : (go_10_goMux_choice_2,C5) [(call_mAdd_mAdd_Int_goMux3,MyDTInt_Int_Int),
                                                      (ga8c_2_2_argbuf,MyDTInt_Int_Int),
                                                      (ga8c_3_2_argbuf,MyDTInt_Int_Int),
                                                      (ga8c_4_1_argbuf,MyDTInt_Int_Int),
                                                      (lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf,MyDTInt_Int_Int)] > (ga8c_goMux_mux,MyDTInt_Int_Int) */
  logic [0:0] ga8c_goMux_mux_mux;
  logic [4:0] ga8c_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_2_d[3:1])
      3'd0:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd1,
                                                       call_mAdd_mAdd_Int_goMux3_d};
      3'd1:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd2,
                                                       ga8c_2_2_argbuf_d};
      3'd2:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd4,
                                                       ga8c_3_2_argbuf_d};
      3'd3:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd8,
                                                       ga8c_4_1_argbuf_d};
      3'd4:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd16,
                                                       lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_d};
      default:
        {ga8c_goMux_mux_onehot, ga8c_goMux_mux_mux} = {5'd0, 1'd0};
    endcase
  assign ga8c_goMux_mux_d = (ga8c_goMux_mux_mux[0] && go_10_goMux_choice_2_d[0]);
  assign go_10_goMux_choice_2_r = (ga8c_goMux_mux_d[0] && ga8c_goMux_mux_r);
  assign {lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_r,
          ga8c_4_1_argbuf_r,
          ga8c_3_2_argbuf_r,
          ga8c_2_2_argbuf_r,
          call_mAdd_mAdd_Int_goMux3_r} = (go_10_goMux_choice_2_r ? ga8c_goMux_mux_onehot :
                                          5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Int) : (go_10_goMux_choice_3,C5) [(call_mAdd_mAdd_Int_goMux4,Pointer_QTree_Int),
                                                        (q3a8n_1_1_argbuf,Pointer_QTree_Int),
                                                        (q2a8m_2_1_argbuf,Pointer_QTree_Int),
                                                        (q1a8l_3_1_argbuf,Pointer_QTree_Int),
                                                        (lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf,Pointer_QTree_Int)] > (m1a8d_goMux_mux,Pointer_QTree_Int) */
  logic [16:0] m1a8d_goMux_mux_mux;
  logic [4:0] m1a8d_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_3_d[3:1])
      3'd0:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd1,
                                                         call_mAdd_mAdd_Int_goMux4_d};
      3'd1:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd2,
                                                         q3a8n_1_1_argbuf_d};
      3'd2:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd4,
                                                         q2a8m_2_1_argbuf_d};
      3'd3:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd8,
                                                         q1a8l_3_1_argbuf_d};
      3'd4:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd16,
                                                         lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_d};
      default:
        {m1a8d_goMux_mux_onehot, m1a8d_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m1a8d_goMux_mux_d = {m1a8d_goMux_mux_mux[16:1],
                              (m1a8d_goMux_mux_mux[0] && go_10_goMux_choice_3_d[0])};
  assign go_10_goMux_choice_3_r = (m1a8d_goMux_mux_d[0] && m1a8d_goMux_mux_r);
  assign {lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_r,
          q1a8l_3_1_argbuf_r,
          q2a8m_2_1_argbuf_r,
          q3a8n_1_1_argbuf_r,
          call_mAdd_mAdd_Int_goMux4_r} = (go_10_goMux_choice_3_r ? m1a8d_goMux_mux_onehot :
                                          5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Int) : (go_10_goMux_choice_4,C5) [(call_mAdd_mAdd_Int_goMux5,Pointer_QTree_Int),
                                                        (t3a8s_1_1_argbuf,Pointer_QTree_Int),
                                                        (t2a8r_2_1_argbuf,Pointer_QTree_Int),
                                                        (t1a8q_3_1_argbuf,Pointer_QTree_Int),
                                                        (t4a8t_1_argbuf,Pointer_QTree_Int)] > (m2a8e_goMux_mux,Pointer_QTree_Int) */
  logic [16:0] m2a8e_goMux_mux_mux;
  logic [4:0] m2a8e_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_4_d[3:1])
      3'd0:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd1,
                                                         call_mAdd_mAdd_Int_goMux5_d};
      3'd1:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd2,
                                                         t3a8s_1_1_argbuf_d};
      3'd2:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd4,
                                                         t2a8r_2_1_argbuf_d};
      3'd3:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd8,
                                                         t1a8q_3_1_argbuf_d};
      3'd4:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd16,
                                                         t4a8t_1_argbuf_d};
      default:
        {m2a8e_goMux_mux_onehot, m2a8e_goMux_mux_mux} = {5'd0,
                                                         {16'd0, 1'd0}};
    endcase
  assign m2a8e_goMux_mux_d = {m2a8e_goMux_mux_mux[16:1],
                              (m2a8e_goMux_mux_mux[0] && go_10_goMux_choice_4_d[0])};
  assign go_10_goMux_choice_4_r = (m2a8e_goMux_mux_d[0] && m2a8e_goMux_mux_r);
  assign {t4a8t_1_argbuf_r,
          t1a8q_3_1_argbuf_r,
          t2a8r_2_1_argbuf_r,
          t3a8s_1_1_argbuf_r,
          call_mAdd_mAdd_Int_goMux5_r} = (go_10_goMux_choice_4_r ? m2a8e_goMux_mux_onehot :
                                          5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CTmAdd_mAdd_Int) : (go_10_goMux_choice_5,C5) [(call_mAdd_mAdd_Int_goMux6,Pointer_CTmAdd_mAdd_Int),
                                                              (sca2_1_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                              (sca1_1_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                              (sca0_1_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                              (sca3_1_1_argbuf,Pointer_CTmAdd_mAdd_Int)] > (sc_0_1_goMux_mux,Pointer_CTmAdd_mAdd_Int) */
  logic [16:0] sc_0_1_goMux_mux_mux;
  logic [4:0] sc_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_10_goMux_choice_5_d[3:1])
      3'd0:
        {sc_0_1_goMux_mux_onehot, sc_0_1_goMux_mux_mux} = {5'd1,
                                                           call_mAdd_mAdd_Int_goMux6_d};
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
                               (sc_0_1_goMux_mux_mux[0] && go_10_goMux_choice_5_d[0])};
  assign go_10_goMux_choice_5_r = (sc_0_1_goMux_mux_d[0] && sc_0_1_goMux_mux_r);
  assign {sca3_1_1_argbuf_r,
          sca0_1_1_argbuf_r,
          sca1_1_1_argbuf_r,
          sca2_1_1_argbuf_r,
          call_mAdd_mAdd_Int_goMux6_r} = (go_10_goMux_choice_5_r ? sc_0_1_goMux_mux_onehot :
                                          5'd0);
  
  /* dcon (Ty CTmAdd_mAdd_Int,
      Dcon LmAdd_mAdd_Intsbos) : [(go_11_1,Go)] > (go_11_1LmAdd_mAdd_Intsbos,CTmAdd_mAdd_Int) */
  assign go_11_1LmAdd_mAdd_Intsbos_d = LmAdd_mAdd_Intsbos_dc((& {go_11_1_d[0]}), go_11_1_d);
  assign {go_11_1_r} = {1 {(go_11_1LmAdd_mAdd_Intsbos_r && go_11_1LmAdd_mAdd_Intsbos_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Int) : (go_11_1LmAdd_mAdd_Intsbos,CTmAdd_mAdd_Int) > (lizzieLet17_1_argbuf,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t go_11_1LmAdd_mAdd_Intsbos_bufchan_d;
  logic go_11_1LmAdd_mAdd_Intsbos_bufchan_r;
  assign go_11_1LmAdd_mAdd_Intsbos_r = ((! go_11_1LmAdd_mAdd_Intsbos_bufchan_d[0]) || go_11_1LmAdd_mAdd_Intsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_11_1LmAdd_mAdd_Intsbos_bufchan_d <= {115'd0, 1'd0};
    else
      if (go_11_1LmAdd_mAdd_Intsbos_r)
        go_11_1LmAdd_mAdd_Intsbos_bufchan_d <= go_11_1LmAdd_mAdd_Intsbos_d;
  CTmAdd_mAdd_Int_t go_11_1LmAdd_mAdd_Intsbos_bufchan_buf;
  assign go_11_1LmAdd_mAdd_Intsbos_bufchan_r = (! go_11_1LmAdd_mAdd_Intsbos_bufchan_buf[0]);
  assign lizzieLet17_1_argbuf_d = (go_11_1LmAdd_mAdd_Intsbos_bufchan_buf[0] ? go_11_1LmAdd_mAdd_Intsbos_bufchan_buf :
                                   go_11_1LmAdd_mAdd_Intsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_11_1LmAdd_mAdd_Intsbos_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((lizzieLet17_1_argbuf_r && go_11_1LmAdd_mAdd_Intsbos_bufchan_buf[0]))
        go_11_1LmAdd_mAdd_Intsbos_bufchan_buf <= {115'd0, 1'd0};
      else if (((! lizzieLet17_1_argbuf_r) && (! go_11_1LmAdd_mAdd_Intsbos_bufchan_buf[0])))
        go_11_1LmAdd_mAdd_Intsbos_bufchan_buf <= go_11_1LmAdd_mAdd_Intsbos_bufchan_d;
  
  /* buf (Ty Go) : (go_11_2,Go) > (go_11_2_argbuf,Go) */
  Go_t go_11_2_bufchan_d;
  logic go_11_2_bufchan_r;
  assign go_11_2_r = ((! go_11_2_bufchan_d[0]) || go_11_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_11_2_bufchan_d <= 1'd0;
    else if (go_11_2_r) go_11_2_bufchan_d <= go_11_2_d;
  Go_t go_11_2_bufchan_buf;
  assign go_11_2_bufchan_r = (! go_11_2_bufchan_buf[0]);
  assign go_11_2_argbuf_d = (go_11_2_bufchan_buf[0] ? go_11_2_bufchan_buf :
                             go_11_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_11_2_bufchan_buf <= 1'd0;
    else
      if ((go_11_2_argbuf_r && go_11_2_bufchan_buf[0]))
        go_11_2_bufchan_buf <= 1'd0;
      else if (((! go_11_2_argbuf_r) && (! go_11_2_bufchan_buf[0])))
        go_11_2_bufchan_buf <= go_11_2_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int,
      Dcon TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int) : [(go_11_2_argbuf,Go),
                                                                                                                        (isZ1a8b_1_1_argbuf,MyDTInt_Bool),
                                                                                                                        (ga8c_1_1_argbuf,MyDTInt_Int_Int),
                                                                                                                        (m1a8d_1_1_argbuf,Pointer_QTree_Int),
                                                                                                                        (m2a8e_1_1_argbuf,Pointer_QTree_Int),
                                                                                                                        (lizzieLet7_1_1_argbuf,Pointer_CTmAdd_mAdd_Int)] > (call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int) */
  assign call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d = TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_dc((& {go_11_2_argbuf_d[0],
                                                                                                                                                                                                                                                          isZ1a8b_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                          ga8c_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                          m1a8d_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                          m2a8e_1_1_argbuf_d[0],
                                                                                                                                                                                                                                                          lizzieLet7_1_1_argbuf_d[0]}), go_11_2_argbuf_d, isZ1a8b_1_1_argbuf_d, ga8c_1_1_argbuf_d, m1a8d_1_1_argbuf_d, m2a8e_1_1_argbuf_d, lizzieLet7_1_1_argbuf_d);
  assign {go_11_2_argbuf_r,
          isZ1a8b_1_1_argbuf_r,
          ga8c_1_1_argbuf_r,
          m1a8d_1_1_argbuf_r,
          m2a8e_1_1_argbuf_r,
          lizzieLet7_1_1_argbuf_r} = {6 {(call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_r && call_mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_CTmAdd_mAdd_Int_1_d[0])}};
  
  /* fork (Ty C4) : (go_12_goMux_choice,C4) > [(go_12_goMux_choice_1,C4),
                                          (go_12_goMux_choice_2,C4)] */
  logic [1:0] go_12_goMux_choice_emitted;
  logic [1:0] go_12_goMux_choice_done;
  assign go_12_goMux_choice_1_d = {go_12_goMux_choice_d[2:1],
                                   (go_12_goMux_choice_d[0] && (! go_12_goMux_choice_emitted[0]))};
  assign go_12_goMux_choice_2_d = {go_12_goMux_choice_d[2:1],
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
  
  /* mux (Ty C4,
     Ty Int#) : (go_12_goMux_choice_1,C4) [(lizzieLet8_1_argbuf,Int#),
                                           (contRet_0_1_argbuf,Int#),
                                           (lizzieLet9_1_argbuf,Int#),
                                           (lizzieLet8_1_1_argbuf,Int#)] > (srtarg_0_goMux_mux,Int#) */
  logic [32:0] srtarg_0_goMux_mux_mux;
  logic [3:0] srtarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_12_goMux_choice_1_d[2:1])
      2'd0:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd1,
                                                               lizzieLet8_1_argbuf_d};
      2'd1:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd2,
                                                               contRet_0_1_argbuf_d};
      2'd2:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd4,
                                                               lizzieLet9_1_argbuf_d};
      2'd3:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd8,
                                                               lizzieLet8_1_1_argbuf_d};
      default:
        {srtarg_0_goMux_mux_onehot, srtarg_0_goMux_mux_mux} = {4'd0,
                                                               {32'd0, 1'd0}};
    endcase
  assign srtarg_0_goMux_mux_d = {srtarg_0_goMux_mux_mux[32:1],
                                 (srtarg_0_goMux_mux_mux[0] && go_12_goMux_choice_1_d[0])};
  assign go_12_goMux_choice_1_r = (srtarg_0_goMux_mux_d[0] && srtarg_0_goMux_mux_r);
  assign {lizzieLet8_1_1_argbuf_r,
          lizzieLet9_1_argbuf_r,
          contRet_0_1_argbuf_r,
          lizzieLet8_1_argbuf_r} = (go_12_goMux_choice_1_r ? srtarg_0_goMux_mux_onehot :
                                    4'd0);
  
  /* mux (Ty C4,
     Ty Pointer_CT$wnnz) : (go_12_goMux_choice_2,C4) [(lizzieLet4_4QNone_Int_1_argbuf,Pointer_CT$wnnz),
                                                      (sc_0_5_1_argbuf,Pointer_CT$wnnz),
                                                      (lizzieLet4_4QVal_Int_1_argbuf,Pointer_CT$wnnz),
                                                      (lizzieLet4_4QError_Int_1_argbuf,Pointer_CT$wnnz)] > (scfarg_0_goMux_mux,Pointer_CT$wnnz) */
  logic [16:0] scfarg_0_goMux_mux_mux;
  logic [3:0] scfarg_0_goMux_mux_onehot;
  always_comb
    unique case (go_12_goMux_choice_2_d[2:1])
      2'd0:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd1,
                                                               lizzieLet4_4QNone_Int_1_argbuf_d};
      2'd1:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd2,
                                                               sc_0_5_1_argbuf_d};
      2'd2:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd4,
                                                               lizzieLet4_4QVal_Int_1_argbuf_d};
      2'd3:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd8,
                                                               lizzieLet4_4QError_Int_1_argbuf_d};
      default:
        {scfarg_0_goMux_mux_onehot, scfarg_0_goMux_mux_mux} = {4'd0,
                                                               {16'd0, 1'd0}};
    endcase
  assign scfarg_0_goMux_mux_d = {scfarg_0_goMux_mux_mux[16:1],
                                 (scfarg_0_goMux_mux_mux[0] && go_12_goMux_choice_2_d[0])};
  assign go_12_goMux_choice_2_r = (scfarg_0_goMux_mux_d[0] && scfarg_0_goMux_mux_r);
  assign {lizzieLet4_4QError_Int_1_argbuf_r,
          lizzieLet4_4QVal_Int_1_argbuf_r,
          sc_0_5_1_argbuf_r,
          lizzieLet4_4QNone_Int_1_argbuf_r} = (go_12_goMux_choice_2_r ? scfarg_0_goMux_mux_onehot :
                                               4'd0);
  
  /* fork (Ty C11) : (go_13_goMux_choice,C11) > [(go_13_goMux_choice_1,C11),
                                            (go_13_goMux_choice_2,C11)] */
  logic [1:0] go_13_goMux_choice_emitted;
  logic [1:0] go_13_goMux_choice_done;
  assign go_13_goMux_choice_1_d = {go_13_goMux_choice_d[4:1],
                                   (go_13_goMux_choice_d[0] && (! go_13_goMux_choice_emitted[0]))};
  assign go_13_goMux_choice_2_d = {go_13_goMux_choice_d[4:1],
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
  
  /* mux (Ty C11,
     Ty Pointer_QTree_Int) : (go_13_goMux_choice_1,C11) [(lizzieLet6_8QNone_Int_1_argbuf,Pointer_QTree_Int),
                                                         (contRet_0_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet0_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet1_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet2_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet3_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet4_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet5_1_1_argbuf,Pointer_QTree_Int),
                                                         (lizzieLet6_1_1_argbuf,Pointer_QTree_Int)] > (srtarg_0_1_goMux_mux,Pointer_QTree_Int) */
  logic [16:0] srtarg_0_1_goMux_mux_mux;
  logic [10:0] srtarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_13_goMux_choice_1_d[4:1])
      4'd0:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd1,
                                                                   lizzieLet6_8QNone_Int_1_argbuf_d};
      4'd1:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd2,
                                                                   contRet_0_1_1_argbuf_d};
      4'd2:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd4,
                                                                   lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_d};
      4'd3:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd8,
                                                                   lizzieLet0_1_1_argbuf_d};
      4'd4:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd16,
                                                                   lizzieLet1_1_1_argbuf_d};
      4'd5:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd32,
                                                                   lizzieLet2_1_1_argbuf_d};
      4'd6:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd64,
                                                                   lizzieLet3_1_1_argbuf_d};
      4'd7:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd128,
                                                                   lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_d};
      4'd8:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd256,
                                                                   lizzieLet4_1_1_argbuf_d};
      4'd9:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd512,
                                                                   lizzieLet5_1_1_argbuf_d};
      4'd10:
        {srtarg_0_1_goMux_mux_onehot,
         srtarg_0_1_goMux_mux_mux} = {11'd1024, lizzieLet6_1_1_argbuf_d};
      default:
        {srtarg_0_1_goMux_mux_onehot, srtarg_0_1_goMux_mux_mux} = {11'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign srtarg_0_1_goMux_mux_d = {srtarg_0_1_goMux_mux_mux[16:1],
                                   (srtarg_0_1_goMux_mux_mux[0] && go_13_goMux_choice_1_d[0])};
  assign go_13_goMux_choice_1_r = (srtarg_0_1_goMux_mux_d[0] && srtarg_0_1_goMux_mux_r);
  assign {lizzieLet6_1_1_argbuf_r,
          lizzieLet5_1_1_argbuf_r,
          lizzieLet4_1_1_argbuf_r,
          lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_r,
          lizzieLet3_1_1_argbuf_r,
          lizzieLet2_1_1_argbuf_r,
          lizzieLet1_1_1_argbuf_r,
          lizzieLet0_1_1_argbuf_r,
          lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_r,
          contRet_0_1_1_argbuf_r,
          lizzieLet6_8QNone_Int_1_argbuf_r} = (go_13_goMux_choice_1_r ? srtarg_0_1_goMux_mux_onehot :
                                               11'd0);
  
  /* mux (Ty C11,
     Ty Pointer_CTmAdd_mAdd_Int) : (go_13_goMux_choice_2,C11) [(lizzieLet6_9QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (sc_0_9_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (es_0_3_2MyFalse_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (es_0_3_2MyTrue_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QVal_Int_7QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_6QNode_Int_7QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int),
                                                               (lizzieLet6_9QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int)] > (scfarg_0_1_goMux_mux,Pointer_CTmAdd_mAdd_Int) */
  logic [16:0] scfarg_0_1_goMux_mux_mux;
  logic [10:0] scfarg_0_1_goMux_mux_onehot;
  always_comb
    unique case (go_13_goMux_choice_2_d[4:1])
      4'd0:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd1,
                                                                   lizzieLet6_9QNone_Int_1_argbuf_d};
      4'd1:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd2,
                                                                   sc_0_9_1_argbuf_d};
      4'd2:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd4,
                                                                   lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_d};
      4'd3:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd8,
                                                                   es_0_3_2MyFalse_1_argbuf_d};
      4'd4:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd16,
                                                                   es_0_3_2MyTrue_1_argbuf_d};
      4'd5:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd32,
                                                                   lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_d};
      4'd6:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd64,
                                                                   lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_d};
      4'd7:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd128,
                                                                   lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_d};
      4'd8:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd256,
                                                                   lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_d};
      4'd9:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd512,
                                                                   lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_d};
      4'd10:
        {scfarg_0_1_goMux_mux_onehot,
         scfarg_0_1_goMux_mux_mux} = {11'd1024,
                                      lizzieLet6_9QError_Int_1_argbuf_d};
      default:
        {scfarg_0_1_goMux_mux_onehot, scfarg_0_1_goMux_mux_mux} = {11'd0,
                                                                   {16'd0, 1'd0}};
    endcase
  assign scfarg_0_1_goMux_mux_d = {scfarg_0_1_goMux_mux_mux[16:1],
                                   (scfarg_0_1_goMux_mux_mux[0] && go_13_goMux_choice_2_d[0])};
  assign go_13_goMux_choice_2_r = (scfarg_0_1_goMux_mux_d[0] && scfarg_0_1_goMux_mux_r);
  assign {lizzieLet6_9QError_Int_1_argbuf_r,
          lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_r,
          lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_r,
          lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_r,
          lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_r,
          lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_r,
          es_0_3_2MyTrue_1_argbuf_r,
          es_0_3_2MyFalse_1_argbuf_r,
          lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_r,
          sc_0_9_1_argbuf_r,
          lizzieLet6_9QNone_Int_1_argbuf_r} = (go_13_goMux_choice_2_r ? scfarg_0_1_goMux_mux_onehot :
                                               11'd0);
  
  /* dcon (Ty TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int,
      Dcon TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int) : [(go_1_argbuf,Go),
                                                                                 (wshL_1_0,Pointer_QTree_Int),
                                                                                 (w1shM_1_1,Pointer_QTree_Int),
                                                                                 (w2shN_1_2,Pointer_QTree_Int)] > ($wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1,TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int) */
  assign \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d  = TupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc((& {go_1_argbuf_d[0],
                                                                                                                                                                  wshL_1_0_d[0],
                                                                                                                                                                  w1shM_1_1_d[0],
                                                                                                                                                                  w2shN_1_2_d[0]}), go_1_argbuf_d, wshL_1_0_d, w1shM_1_1_d, w2shN_1_2_d);
  assign {go_1_argbuf_r,
          wshL_1_0_r,
          w1shM_1_1_r,
          w2shN_1_2_r} = {4 {(\$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r  && \$wmainTupGo___Pointer_QTree_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d [0])}};
  
  /* dcon (Ty MyDTInt_Int_Int,
      Dcon Dcon_$fNumInt_$c+) : [(go_6_1,Go)] > (go_6_1Dcon_$fNumInt_$c+,MyDTInt_Int_Int) */
  assign \go_6_1Dcon_$fNumInt_$c+_d  = \Dcon_$fNumInt_$c+_dc ((& {go_6_1_d[0]}), go_6_1_d);
  assign {go_6_1_r} = {1 {(\go_6_1Dcon_$fNumInt_$c+_r  && \go_6_1Dcon_$fNumInt_$c+_d [0])}};
  
  /* buf (Ty MyDTInt_Int_Int) : (go_6_1Dcon_$fNumInt_$c+,MyDTInt_Int_Int) > (es_2_1_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t \go_6_1Dcon_$fNumInt_$c+_bufchan_d ;
  logic \go_6_1Dcon_$fNumInt_$c+_bufchan_r ;
  assign \go_6_1Dcon_$fNumInt_$c+_r  = ((! \go_6_1Dcon_$fNumInt_$c+_bufchan_d [0]) || \go_6_1Dcon_$fNumInt_$c+_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_6_1Dcon_$fNumInt_$c+_bufchan_d  <= 1'd0;
    else
      if (\go_6_1Dcon_$fNumInt_$c+_r )
        \go_6_1Dcon_$fNumInt_$c+_bufchan_d  <= \go_6_1Dcon_$fNumInt_$c+_d ;
  MyDTInt_Int_Int_t \go_6_1Dcon_$fNumInt_$c+_bufchan_buf ;
  assign \go_6_1Dcon_$fNumInt_$c+_bufchan_r  = (! \go_6_1Dcon_$fNumInt_$c+_bufchan_buf [0]);
  assign es_2_1_argbuf_d = (\go_6_1Dcon_$fNumInt_$c+_bufchan_buf [0] ? \go_6_1Dcon_$fNumInt_$c+_bufchan_buf  :
                            \go_6_1Dcon_$fNumInt_$c+_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_6_1Dcon_$fNumInt_$c+_bufchan_buf  <= 1'd0;
    else
      if ((es_2_1_argbuf_r && \go_6_1Dcon_$fNumInt_$c+_bufchan_buf [0]))
        \go_6_1Dcon_$fNumInt_$c+_bufchan_buf  <= 1'd0;
      else if (((! es_2_1_argbuf_r) && (! \go_6_1Dcon_$fNumInt_$c+_bufchan_buf [0])))
        \go_6_1Dcon_$fNumInt_$c+_bufchan_buf  <= \go_6_1Dcon_$fNumInt_$c+_bufchan_d ;
  
  /* dcon (Ty MyDTInt_Bool,
      Dcon Dcon_isZ) : [(go_6_2,Go)] > (go_6_2Dcon_isZ,MyDTInt_Bool) */
  assign go_6_2Dcon_isZ_d = Dcon_isZ_dc((& {go_6_2_d[0]}), go_6_2_d);
  assign {go_6_2_r} = {1 {(go_6_2Dcon_isZ_r && go_6_2Dcon_isZ_d[0])}};
  
  /* buf (Ty MyDTInt_Bool) : (go_6_2Dcon_isZ,MyDTInt_Bool) > (es_1_1_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t go_6_2Dcon_isZ_bufchan_d;
  logic go_6_2Dcon_isZ_bufchan_r;
  assign go_6_2Dcon_isZ_r = ((! go_6_2Dcon_isZ_bufchan_d[0]) || go_6_2Dcon_isZ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_2Dcon_isZ_bufchan_d <= 1'd0;
    else
      if (go_6_2Dcon_isZ_r) go_6_2Dcon_isZ_bufchan_d <= go_6_2Dcon_isZ_d;
  MyDTInt_Bool_t go_6_2Dcon_isZ_bufchan_buf;
  assign go_6_2Dcon_isZ_bufchan_r = (! go_6_2Dcon_isZ_bufchan_buf[0]);
  assign es_1_1_argbuf_d = (go_6_2Dcon_isZ_bufchan_buf[0] ? go_6_2Dcon_isZ_bufchan_buf :
                            go_6_2Dcon_isZ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_2Dcon_isZ_bufchan_buf <= 1'd0;
    else
      if ((es_1_1_argbuf_r && go_6_2Dcon_isZ_bufchan_buf[0]))
        go_6_2Dcon_isZ_bufchan_buf <= 1'd0;
      else if (((! es_1_1_argbuf_r) && (! go_6_2Dcon_isZ_bufchan_buf[0])))
        go_6_2Dcon_isZ_bufchan_buf <= go_6_2Dcon_isZ_bufchan_d;
  
  /* dcon (Ty MyDTInt_Int_Int,
      Dcon Dcon_$fNumInt_$c+) : [(go_6_3,Go)] > (go_6_3Dcon_$fNumInt_$c+,MyDTInt_Int_Int) */
  assign \go_6_3Dcon_$fNumInt_$c+_d  = \Dcon_$fNumInt_$c+_dc ((& {go_6_3_d[0]}), go_6_3_d);
  assign {go_6_3_r} = {1 {(\go_6_3Dcon_$fNumInt_$c+_r  && \go_6_3Dcon_$fNumInt_$c+_d [0])}};
  
  /* buf (Ty MyDTInt_Int_Int) : (go_6_3Dcon_$fNumInt_$c+,MyDTInt_Int_Int) > (es_6_1_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t \go_6_3Dcon_$fNumInt_$c+_bufchan_d ;
  logic \go_6_3Dcon_$fNumInt_$c+_bufchan_r ;
  assign \go_6_3Dcon_$fNumInt_$c+_r  = ((! \go_6_3Dcon_$fNumInt_$c+_bufchan_d [0]) || \go_6_3Dcon_$fNumInt_$c+_bufchan_r );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_6_3Dcon_$fNumInt_$c+_bufchan_d  <= 1'd0;
    else
      if (\go_6_3Dcon_$fNumInt_$c+_r )
        \go_6_3Dcon_$fNumInt_$c+_bufchan_d  <= \go_6_3Dcon_$fNumInt_$c+_d ;
  MyDTInt_Int_Int_t \go_6_3Dcon_$fNumInt_$c+_bufchan_buf ;
  assign \go_6_3Dcon_$fNumInt_$c+_bufchan_r  = (! \go_6_3Dcon_$fNumInt_$c+_bufchan_buf [0]);
  assign es_6_1_argbuf_d = (\go_6_3Dcon_$fNumInt_$c+_bufchan_buf [0] ? \go_6_3Dcon_$fNumInt_$c+_bufchan_buf  :
                            \go_6_3Dcon_$fNumInt_$c+_bufchan_d );
  always_ff @(posedge clk)
    if ((reset == 1'd1)) \go_6_3Dcon_$fNumInt_$c+_bufchan_buf  <= 1'd0;
    else
      if ((es_6_1_argbuf_r && \go_6_3Dcon_$fNumInt_$c+_bufchan_buf [0]))
        \go_6_3Dcon_$fNumInt_$c+_bufchan_buf  <= 1'd0;
      else if (((! es_6_1_argbuf_r) && (! \go_6_3Dcon_$fNumInt_$c+_bufchan_buf [0])))
        \go_6_3Dcon_$fNumInt_$c+_bufchan_buf  <= \go_6_3Dcon_$fNumInt_$c+_bufchan_d ;
  
  /* dcon (Ty MyDTInt_Bool,
      Dcon Dcon_isZ) : [(go_6_4,Go)] > (go_6_4Dcon_isZ,MyDTInt_Bool) */
  assign go_6_4Dcon_isZ_d = Dcon_isZ_dc((& {go_6_4_d[0]}), go_6_4_d);
  assign {go_6_4_r} = {1 {(go_6_4Dcon_isZ_r && go_6_4Dcon_isZ_d[0])}};
  
  /* buf (Ty MyDTInt_Bool) : (go_6_4Dcon_isZ,MyDTInt_Bool) > (es_5_1_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t go_6_4Dcon_isZ_bufchan_d;
  logic go_6_4Dcon_isZ_bufchan_r;
  assign go_6_4Dcon_isZ_r = ((! go_6_4Dcon_isZ_bufchan_d[0]) || go_6_4Dcon_isZ_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_4Dcon_isZ_bufchan_d <= 1'd0;
    else
      if (go_6_4Dcon_isZ_r) go_6_4Dcon_isZ_bufchan_d <= go_6_4Dcon_isZ_d;
  MyDTInt_Bool_t go_6_4Dcon_isZ_bufchan_buf;
  assign go_6_4Dcon_isZ_bufchan_r = (! go_6_4Dcon_isZ_bufchan_buf[0]);
  assign es_5_1_argbuf_d = (go_6_4Dcon_isZ_bufchan_buf[0] ? go_6_4Dcon_isZ_bufchan_buf :
                            go_6_4Dcon_isZ_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_4Dcon_isZ_bufchan_buf <= 1'd0;
    else
      if ((es_5_1_argbuf_r && go_6_4Dcon_isZ_bufchan_buf[0]))
        go_6_4Dcon_isZ_bufchan_buf <= 1'd0;
      else if (((! es_5_1_argbuf_r) && (! go_6_4Dcon_isZ_bufchan_buf[0])))
        go_6_4Dcon_isZ_bufchan_buf <= go_6_4Dcon_isZ_bufchan_d;
  
  /* buf (Ty Go) : (go_6_5,Go) > (go_6_5_argbuf,Go) */
  Go_t go_6_5_bufchan_d;
  logic go_6_5_bufchan_r;
  assign go_6_5_r = ((! go_6_5_bufchan_d[0]) || go_6_5_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_5_bufchan_d <= 1'd0;
    else if (go_6_5_r) go_6_5_bufchan_d <= go_6_5_d;
  Go_t go_6_5_bufchan_buf;
  assign go_6_5_bufchan_r = (! go_6_5_bufchan_buf[0]);
  assign go_6_5_argbuf_d = (go_6_5_bufchan_buf[0] ? go_6_5_bufchan_buf :
                            go_6_5_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_5_bufchan_buf <= 1'd0;
    else
      if ((go_6_5_argbuf_r && go_6_5_bufchan_buf[0]))
        go_6_5_bufchan_buf <= 1'd0;
      else if (((! go_6_5_argbuf_r) && (! go_6_5_bufchan_buf[0])))
        go_6_5_bufchan_buf <= go_6_5_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int,
      Dcon TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) : [(go_6_5_argbuf,Go),
                                                                                              (es_5_1_argbuf,MyDTInt_Bool),
                                                                                              (es_6_1_argbuf,MyDTInt_Int_Int),
                                                                                              (wshL_1_argbuf,Pointer_QTree_Int),
                                                                                              (w1shM_1_argbuf,Pointer_QTree_Int)] > (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) */
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d = TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc((& {go_6_5_argbuf_d[0],
                                                                                                                                                                                                 es_5_1_argbuf_d[0],
                                                                                                                                                                                                 es_6_1_argbuf_d[0],
                                                                                                                                                                                                 wshL_1_argbuf_d[0],
                                                                                                                                                                                                 w1shM_1_argbuf_d[0]}), go_6_5_argbuf_d, es_5_1_argbuf_d, es_6_1_argbuf_d, wshL_1_argbuf_d, w1shM_1_argbuf_d);
  assign {go_6_5_argbuf_r,
          es_5_1_argbuf_r,
          es_6_1_argbuf_r,
          wshL_1_argbuf_r,
          w1shM_1_argbuf_r} = {5 {(mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d[0])}};
  
  /* buf (Ty Go) : (go_6_6,Go) > (go_6_6_argbuf,Go) */
  Go_t go_6_6_bufchan_d;
  logic go_6_6_bufchan_r;
  assign go_6_6_r = ((! go_6_6_bufchan_d[0]) || go_6_6_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_6_bufchan_d <= 1'd0;
    else if (go_6_6_r) go_6_6_bufchan_d <= go_6_6_d;
  Go_t go_6_6_bufchan_buf;
  assign go_6_6_bufchan_r = (! go_6_6_bufchan_buf[0]);
  assign go_6_6_argbuf_d = (go_6_6_bufchan_buf[0] ? go_6_6_bufchan_buf :
                            go_6_6_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_6_bufchan_buf <= 1'd0;
    else
      if ((go_6_6_argbuf_r && go_6_6_bufchan_buf[0]))
        go_6_6_bufchan_buf <= 1'd0;
      else if (((! go_6_6_argbuf_r) && (! go_6_6_bufchan_buf[0])))
        go_6_6_bufchan_buf <= go_6_6_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int,
      Dcon TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) : [(go_6_6_argbuf,Go),
                                                                                              (es_1_1_argbuf,MyDTInt_Bool),
                                                                                              (es_2_1_argbuf,MyDTInt_Int_Int),
                                                                                              (es_3_1_argbuf,Pointer_QTree_Int),
                                                                                              (w2shN_1_argbuf,Pointer_QTree_Int)] > (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) */
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_d = TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_dc((& {go_6_6_argbuf_d[0],
                                                                                                                                                                                                es_1_1_argbuf_d[0],
                                                                                                                                                                                                es_2_1_argbuf_d[0],
                                                                                                                                                                                                es_3_1_argbuf_d[0],
                                                                                                                                                                                                w2shN_1_argbuf_d[0]}), go_6_6_argbuf_d, es_1_1_argbuf_d, es_2_1_argbuf_d, es_3_1_argbuf_d, w2shN_1_argbuf_d);
  assign {go_6_6_argbuf_r,
          es_1_1_argbuf_r,
          es_2_1_argbuf_r,
          es_3_1_argbuf_r,
          w2shN_1_argbuf_r} = {5 {(mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_d[0])}};
  
  /* buf (Ty Go) : (go_6_7,Go) > (go_6_7_argbuf,Go) */
  Go_t go_6_7_bufchan_d;
  logic go_6_7_bufchan_r;
  assign go_6_7_r = ((! go_6_7_bufchan_d[0]) || go_6_7_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_7_bufchan_d <= 1'd0;
    else if (go_6_7_r) go_6_7_bufchan_d <= go_6_7_d;
  Go_t go_6_7_bufchan_buf;
  assign go_6_7_bufchan_r = (! go_6_7_bufchan_buf[0]);
  assign go_6_7_argbuf_d = (go_6_7_bufchan_buf[0] ? go_6_7_bufchan_buf :
                            go_6_7_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_6_7_bufchan_buf <= 1'd0;
    else
      if ((go_6_7_argbuf_r && go_6_7_bufchan_buf[0]))
        go_6_7_bufchan_buf <= 1'd0;
      else if (((! go_6_7_argbuf_r) && (! go_6_7_bufchan_buf[0])))
        go_6_7_bufchan_buf <= go_6_7_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Int,
      Dcon TupGo___Pointer_QTree_Int) : [(go_6_7_argbuf,Go),
                                         (es_0_1_1_argbuf,Pointer_QTree_Int)] > ($wnnzTupGo___Pointer_QTree_Int_1,TupGo___Pointer_QTree_Int) */
  assign \$wnnzTupGo___Pointer_QTree_Int_1_d  = TupGo___Pointer_QTree_Int_dc((& {go_6_7_argbuf_d[0],
                                                                                 es_0_1_1_argbuf_d[0]}), go_6_7_argbuf_d, es_0_1_1_argbuf_d);
  assign {go_6_7_argbuf_r,
          es_0_1_1_argbuf_r} = {2 {(\$wnnzTupGo___Pointer_QTree_Int_1_r  && \$wnnzTupGo___Pointer_QTree_Int_1_d [0])}};
  
  /* dcon (Ty CT$wnnz,
      Dcon L$wnnzsbos) : [(go_7_1,Go)] > (go_7_1L$wnnzsbos,CT$wnnz) */
  assign go_7_1L$wnnzsbos_d = L$wnnzsbos_dc((& {go_7_1_d[0]}), go_7_1_d);
  assign {go_7_1_r} = {1 {(go_7_1L$wnnzsbos_r && go_7_1L$wnnzsbos_d[0])}};
  
  /* buf (Ty CT$wnnz) : (go_7_1L$wnnzsbos,CT$wnnz) > (lizzieLet0_1_argbuf,CT$wnnz) */
  CT$wnnz_t go_7_1L$wnnzsbos_bufchan_d;
  logic go_7_1L$wnnzsbos_bufchan_r;
  assign go_7_1L$wnnzsbos_r = ((! go_7_1L$wnnzsbos_bufchan_d[0]) || go_7_1L$wnnzsbos_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_1L$wnnzsbos_bufchan_d <= {115'd0, 1'd0};
    else
      if (go_7_1L$wnnzsbos_r)
        go_7_1L$wnnzsbos_bufchan_d <= go_7_1L$wnnzsbos_d;
  CT$wnnz_t go_7_1L$wnnzsbos_bufchan_buf;
  assign go_7_1L$wnnzsbos_bufchan_r = (! go_7_1L$wnnzsbos_bufchan_buf[0]);
  assign lizzieLet0_1_argbuf_d = (go_7_1L$wnnzsbos_bufchan_buf[0] ? go_7_1L$wnnzsbos_bufchan_buf :
                                  go_7_1L$wnnzsbos_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      go_7_1L$wnnzsbos_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((lizzieLet0_1_argbuf_r && go_7_1L$wnnzsbos_bufchan_buf[0]))
        go_7_1L$wnnzsbos_bufchan_buf <= {115'd0, 1'd0};
      else if (((! lizzieLet0_1_argbuf_r) && (! go_7_1L$wnnzsbos_bufchan_buf[0])))
        go_7_1L$wnnzsbos_bufchan_buf <= go_7_1L$wnnzsbos_bufchan_d;
  
  /* buf (Ty Go) : (go_7_2,Go) > (go_7_2_argbuf,Go) */
  Go_t go_7_2_bufchan_d;
  logic go_7_2_bufchan_r;
  assign go_7_2_r = ((! go_7_2_bufchan_d[0]) || go_7_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_2_bufchan_d <= 1'd0;
    else if (go_7_2_r) go_7_2_bufchan_d <= go_7_2_d;
  Go_t go_7_2_bufchan_buf;
  assign go_7_2_bufchan_r = (! go_7_2_bufchan_buf[0]);
  assign go_7_2_argbuf_d = (go_7_2_bufchan_buf[0] ? go_7_2_bufchan_buf :
                            go_7_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) go_7_2_bufchan_buf <= 1'd0;
    else
      if ((go_7_2_argbuf_r && go_7_2_bufchan_buf[0]))
        go_7_2_bufchan_buf <= 1'd0;
      else if (((! go_7_2_argbuf_r) && (! go_7_2_bufchan_buf[0])))
        go_7_2_bufchan_buf <= go_7_2_bufchan_d;
  
  /* dcon (Ty TupGo___Pointer_QTree_Int___Pointer_CT$wnnz,
      Dcon TupGo___Pointer_QTree_Int___Pointer_CT$wnnz) : [(go_7_2_argbuf,Go),
                                                           (wshD_1_argbuf,Pointer_QTree_Int),
                                                           (lizzieLet10_1_argbuf,Pointer_CT$wnnz)] > (call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1,TupGo___Pointer_QTree_Int___Pointer_CT$wnnz) */
  assign call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d = TupGo___Pointer_QTree_Int___Pointer_CT$wnnz_dc((& {go_7_2_argbuf_d[0],
                                                                                                                        wshD_1_argbuf_d[0],
                                                                                                                        lizzieLet10_1_argbuf_d[0]}), go_7_2_argbuf_d, wshD_1_argbuf_d, lizzieLet10_1_argbuf_d);
  assign {go_7_2_argbuf_r,
          wshD_1_argbuf_r,
          lizzieLet10_1_argbuf_r} = {3 {(call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_r && call_$wnnzTupGo___Pointer_QTree_Int___Pointer_CT$wnnz_1_d[0])}};
  
  /* fork (Ty C5) : (go_9_goMux_choice,C5) > [(go_9_goMux_choice_1,C5),
                                         (go_9_goMux_choice_2,C5)] */
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
  
  /* mux (Ty C5,
     Ty Pointer_QTree_Int) : (go_9_goMux_choice_1,C5) [(call_$wnnz_goMux2,Pointer_QTree_Int),
                                                       (q2a8w_1_1_argbuf,Pointer_QTree_Int),
                                                       (q3a8x_2_1_argbuf,Pointer_QTree_Int),
                                                       (q4a8y_3_1_argbuf,Pointer_QTree_Int),
                                                       (q1a8v_1_argbuf,Pointer_QTree_Int)] > (wshD_1_goMux_mux,Pointer_QTree_Int) */
  logic [16:0] wshD_1_goMux_mux_mux;
  logic [4:0] wshD_1_goMux_mux_onehot;
  always_comb
    unique case (go_9_goMux_choice_1_d[3:1])
      3'd0:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd1,
                                                           call_$wnnz_goMux2_d};
      3'd1:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd2,
                                                           q2a8w_1_1_argbuf_d};
      3'd2:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd4,
                                                           q3a8x_2_1_argbuf_d};
      3'd3:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd8,
                                                           q4a8y_3_1_argbuf_d};
      3'd4:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd16,
                                                           q1a8v_1_argbuf_d};
      default:
        {wshD_1_goMux_mux_onehot, wshD_1_goMux_mux_mux} = {5'd0,
                                                           {16'd0, 1'd0}};
    endcase
  assign wshD_1_goMux_mux_d = {wshD_1_goMux_mux_mux[16:1],
                               (wshD_1_goMux_mux_mux[0] && go_9_goMux_choice_1_d[0])};
  assign go_9_goMux_choice_1_r = (wshD_1_goMux_mux_d[0] && wshD_1_goMux_mux_r);
  assign {q1a8v_1_argbuf_r,
          q4a8y_3_1_argbuf_r,
          q3a8x_2_1_argbuf_r,
          q2a8w_1_1_argbuf_r,
          call_$wnnz_goMux2_r} = (go_9_goMux_choice_1_r ? wshD_1_goMux_mux_onehot :
                                  5'd0);
  
  /* mux (Ty C5,
     Ty Pointer_CT$wnnz) : (go_9_goMux_choice_2,C5) [(call_$wnnz_goMux3,Pointer_CT$wnnz),
                                                     (sca2_1_argbuf,Pointer_CT$wnnz),
                                                     (sca1_1_argbuf,Pointer_CT$wnnz),
                                                     (sca0_1_argbuf,Pointer_CT$wnnz),
                                                     (sca3_1_argbuf,Pointer_CT$wnnz)] > (sc_0_goMux_mux,Pointer_CT$wnnz) */
  logic [16:0] sc_0_goMux_mux_mux;
  logic [4:0] sc_0_goMux_mux_onehot;
  always_comb
    unique case (go_9_goMux_choice_2_d[3:1])
      3'd0:
        {sc_0_goMux_mux_onehot, sc_0_goMux_mux_mux} = {5'd1,
                                                       call_$wnnz_goMux3_d};
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
                             (sc_0_goMux_mux_mux[0] && go_9_goMux_choice_2_d[0])};
  assign go_9_goMux_choice_2_r = (sc_0_goMux_mux_d[0] && sc_0_goMux_mux_r);
  assign {sca3_1_argbuf_r,
          sca0_1_argbuf_r,
          sca1_1_argbuf_r,
          sca2_1_argbuf_r,
          call_$wnnz_goMux3_r} = (go_9_goMux_choice_2_r ? sc_0_goMux_mux_onehot :
                                  5'd0);
  
  /* buf (Ty MyDTInt_Bool) : (isZ1a8b_2_2,MyDTInt_Bool) > (isZ1a8b_2_2_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t isZ1a8b_2_2_bufchan_d;
  logic isZ1a8b_2_2_bufchan_r;
  assign isZ1a8b_2_2_r = ((! isZ1a8b_2_2_bufchan_d[0]) || isZ1a8b_2_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_2_2_bufchan_d <= 1'd0;
    else if (isZ1a8b_2_2_r) isZ1a8b_2_2_bufchan_d <= isZ1a8b_2_2_d;
  MyDTInt_Bool_t isZ1a8b_2_2_bufchan_buf;
  assign isZ1a8b_2_2_bufchan_r = (! isZ1a8b_2_2_bufchan_buf[0]);
  assign isZ1a8b_2_2_argbuf_d = (isZ1a8b_2_2_bufchan_buf[0] ? isZ1a8b_2_2_bufchan_buf :
                                 isZ1a8b_2_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_2_2_bufchan_buf <= 1'd0;
    else
      if ((isZ1a8b_2_2_argbuf_r && isZ1a8b_2_2_bufchan_buf[0]))
        isZ1a8b_2_2_bufchan_buf <= 1'd0;
      else if (((! isZ1a8b_2_2_argbuf_r) && (! isZ1a8b_2_2_bufchan_buf[0])))
        isZ1a8b_2_2_bufchan_buf <= isZ1a8b_2_2_bufchan_d;
  
  /* fork (Ty MyDTInt_Bool) : (isZ1a8b_2_destruct,MyDTInt_Bool) > [(isZ1a8b_2_1,MyDTInt_Bool),
                                                              (isZ1a8b_2_2,MyDTInt_Bool)] */
  logic [1:0] isZ1a8b_2_destruct_emitted;
  logic [1:0] isZ1a8b_2_destruct_done;
  assign isZ1a8b_2_1_d = (isZ1a8b_2_destruct_d[0] && (! isZ1a8b_2_destruct_emitted[0]));
  assign isZ1a8b_2_2_d = (isZ1a8b_2_destruct_d[0] && (! isZ1a8b_2_destruct_emitted[1]));
  assign isZ1a8b_2_destruct_done = (isZ1a8b_2_destruct_emitted | ({isZ1a8b_2_2_d[0],
                                                                   isZ1a8b_2_1_d[0]} & {isZ1a8b_2_2_r,
                                                                                        isZ1a8b_2_1_r}));
  assign isZ1a8b_2_destruct_r = (& isZ1a8b_2_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_2_destruct_emitted <= 2'd0;
    else
      isZ1a8b_2_destruct_emitted <= (isZ1a8b_2_destruct_r ? 2'd0 :
                                     isZ1a8b_2_destruct_done);
  
  /* buf (Ty MyDTInt_Bool) : (isZ1a8b_3_2,MyDTInt_Bool) > (isZ1a8b_3_2_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t isZ1a8b_3_2_bufchan_d;
  logic isZ1a8b_3_2_bufchan_r;
  assign isZ1a8b_3_2_r = ((! isZ1a8b_3_2_bufchan_d[0]) || isZ1a8b_3_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_3_2_bufchan_d <= 1'd0;
    else if (isZ1a8b_3_2_r) isZ1a8b_3_2_bufchan_d <= isZ1a8b_3_2_d;
  MyDTInt_Bool_t isZ1a8b_3_2_bufchan_buf;
  assign isZ1a8b_3_2_bufchan_r = (! isZ1a8b_3_2_bufchan_buf[0]);
  assign isZ1a8b_3_2_argbuf_d = (isZ1a8b_3_2_bufchan_buf[0] ? isZ1a8b_3_2_bufchan_buf :
                                 isZ1a8b_3_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_3_2_bufchan_buf <= 1'd0;
    else
      if ((isZ1a8b_3_2_argbuf_r && isZ1a8b_3_2_bufchan_buf[0]))
        isZ1a8b_3_2_bufchan_buf <= 1'd0;
      else if (((! isZ1a8b_3_2_argbuf_r) && (! isZ1a8b_3_2_bufchan_buf[0])))
        isZ1a8b_3_2_bufchan_buf <= isZ1a8b_3_2_bufchan_d;
  
  /* fork (Ty MyDTInt_Bool) : (isZ1a8b_3_destruct,MyDTInt_Bool) > [(isZ1a8b_3_1,MyDTInt_Bool),
                                                              (isZ1a8b_3_2,MyDTInt_Bool)] */
  logic [1:0] isZ1a8b_3_destruct_emitted;
  logic [1:0] isZ1a8b_3_destruct_done;
  assign isZ1a8b_3_1_d = (isZ1a8b_3_destruct_d[0] && (! isZ1a8b_3_destruct_emitted[0]));
  assign isZ1a8b_3_2_d = (isZ1a8b_3_destruct_d[0] && (! isZ1a8b_3_destruct_emitted[1]));
  assign isZ1a8b_3_destruct_done = (isZ1a8b_3_destruct_emitted | ({isZ1a8b_3_2_d[0],
                                                                   isZ1a8b_3_1_d[0]} & {isZ1a8b_3_2_r,
                                                                                        isZ1a8b_3_1_r}));
  assign isZ1a8b_3_destruct_r = (& isZ1a8b_3_destruct_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_3_destruct_emitted <= 2'd0;
    else
      isZ1a8b_3_destruct_emitted <= (isZ1a8b_3_destruct_r ? 2'd0 :
                                     isZ1a8b_3_destruct_done);
  
  /* buf (Ty MyDTInt_Bool) : (isZ1a8b_4_destruct,MyDTInt_Bool) > (isZ1a8b_4_1_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t isZ1a8b_4_destruct_bufchan_d;
  logic isZ1a8b_4_destruct_bufchan_r;
  assign isZ1a8b_4_destruct_r = ((! isZ1a8b_4_destruct_bufchan_d[0]) || isZ1a8b_4_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_4_destruct_bufchan_d <= 1'd0;
    else
      if (isZ1a8b_4_destruct_r)
        isZ1a8b_4_destruct_bufchan_d <= isZ1a8b_4_destruct_d;
  MyDTInt_Bool_t isZ1a8b_4_destruct_bufchan_buf;
  assign isZ1a8b_4_destruct_bufchan_r = (! isZ1a8b_4_destruct_bufchan_buf[0]);
  assign isZ1a8b_4_1_argbuf_d = (isZ1a8b_4_destruct_bufchan_buf[0] ? isZ1a8b_4_destruct_bufchan_buf :
                                 isZ1a8b_4_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) isZ1a8b_4_destruct_bufchan_buf <= 1'd0;
    else
      if ((isZ1a8b_4_1_argbuf_r && isZ1a8b_4_destruct_bufchan_buf[0]))
        isZ1a8b_4_destruct_bufchan_buf <= 1'd0;
      else if (((! isZ1a8b_4_1_argbuf_r) && (! isZ1a8b_4_destruct_bufchan_buf[0])))
        isZ1a8b_4_destruct_bufchan_buf <= isZ1a8b_4_destruct_bufchan_d;
  
  /* destruct (Ty CT$wnnz,
          Dcon Lcall_$wnnz0) : (lizzieLet18_1Lcall_$wnnz0,CT$wnnz) > [(wwshG_3_destruct,Int#),
                                                                      (ww1Xi8_2_destruct,Int#),
                                                                      (ww2Xib_1_destruct,Int#),
                                                                      (sc_0_5_destruct,Pointer_CT$wnnz)] */
  logic [3:0] lizzieLet18_1Lcall_$wnnz0_emitted;
  logic [3:0] lizzieLet18_1Lcall_$wnnz0_done;
  assign wwshG_3_destruct_d = {lizzieLet18_1Lcall_$wnnz0_d[35:4],
                               (lizzieLet18_1Lcall_$wnnz0_d[0] && (! lizzieLet18_1Lcall_$wnnz0_emitted[0]))};
  assign ww1Xi8_2_destruct_d = {lizzieLet18_1Lcall_$wnnz0_d[67:36],
                                (lizzieLet18_1Lcall_$wnnz0_d[0] && (! lizzieLet18_1Lcall_$wnnz0_emitted[1]))};
  assign ww2Xib_1_destruct_d = {lizzieLet18_1Lcall_$wnnz0_d[99:68],
                                (lizzieLet18_1Lcall_$wnnz0_d[0] && (! lizzieLet18_1Lcall_$wnnz0_emitted[2]))};
  assign sc_0_5_destruct_d = {lizzieLet18_1Lcall_$wnnz0_d[115:100],
                              (lizzieLet18_1Lcall_$wnnz0_d[0] && (! lizzieLet18_1Lcall_$wnnz0_emitted[3]))};
  assign lizzieLet18_1Lcall_$wnnz0_done = (lizzieLet18_1Lcall_$wnnz0_emitted | ({sc_0_5_destruct_d[0],
                                                                                 ww2Xib_1_destruct_d[0],
                                                                                 ww1Xi8_2_destruct_d[0],
                                                                                 wwshG_3_destruct_d[0]} & {sc_0_5_destruct_r,
                                                                                                           ww2Xib_1_destruct_r,
                                                                                                           ww1Xi8_2_destruct_r,
                                                                                                           wwshG_3_destruct_r}));
  assign lizzieLet18_1Lcall_$wnnz0_r = (& lizzieLet18_1Lcall_$wnnz0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_1Lcall_$wnnz0_emitted <= 4'd0;
    else
      lizzieLet18_1Lcall_$wnnz0_emitted <= (lizzieLet18_1Lcall_$wnnz0_r ? 4'd0 :
                                            lizzieLet18_1Lcall_$wnnz0_done);
  
  /* destruct (Ty CT$wnnz,
          Dcon Lcall_$wnnz1) : (lizzieLet18_1Lcall_$wnnz1,CT$wnnz) > [(wwshG_2_destruct,Int#),
                                                                      (ww1Xi8_1_destruct,Int#),
                                                                      (sc_0_4_destruct,Pointer_CT$wnnz),
                                                                      (q4a8y_3_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet18_1Lcall_$wnnz1_emitted;
  logic [3:0] lizzieLet18_1Lcall_$wnnz1_done;
  assign wwshG_2_destruct_d = {lizzieLet18_1Lcall_$wnnz1_d[35:4],
                               (lizzieLet18_1Lcall_$wnnz1_d[0] && (! lizzieLet18_1Lcall_$wnnz1_emitted[0]))};
  assign ww1Xi8_1_destruct_d = {lizzieLet18_1Lcall_$wnnz1_d[67:36],
                                (lizzieLet18_1Lcall_$wnnz1_d[0] && (! lizzieLet18_1Lcall_$wnnz1_emitted[1]))};
  assign sc_0_4_destruct_d = {lizzieLet18_1Lcall_$wnnz1_d[83:68],
                              (lizzieLet18_1Lcall_$wnnz1_d[0] && (! lizzieLet18_1Lcall_$wnnz1_emitted[2]))};
  assign q4a8y_3_destruct_d = {lizzieLet18_1Lcall_$wnnz1_d[99:84],
                               (lizzieLet18_1Lcall_$wnnz1_d[0] && (! lizzieLet18_1Lcall_$wnnz1_emitted[3]))};
  assign lizzieLet18_1Lcall_$wnnz1_done = (lizzieLet18_1Lcall_$wnnz1_emitted | ({q4a8y_3_destruct_d[0],
                                                                                 sc_0_4_destruct_d[0],
                                                                                 ww1Xi8_1_destruct_d[0],
                                                                                 wwshG_2_destruct_d[0]} & {q4a8y_3_destruct_r,
                                                                                                           sc_0_4_destruct_r,
                                                                                                           ww1Xi8_1_destruct_r,
                                                                                                           wwshG_2_destruct_r}));
  assign lizzieLet18_1Lcall_$wnnz1_r = (& lizzieLet18_1Lcall_$wnnz1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_1Lcall_$wnnz1_emitted <= 4'd0;
    else
      lizzieLet18_1Lcall_$wnnz1_emitted <= (lizzieLet18_1Lcall_$wnnz1_r ? 4'd0 :
                                            lizzieLet18_1Lcall_$wnnz1_done);
  
  /* destruct (Ty CT$wnnz,
          Dcon Lcall_$wnnz2) : (lizzieLet18_1Lcall_$wnnz2,CT$wnnz) > [(wwshG_1_destruct,Int#),
                                                                      (sc_0_3_destruct,Pointer_CT$wnnz),
                                                                      (q4a8y_2_destruct,Pointer_QTree_Int),
                                                                      (q3a8x_2_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet18_1Lcall_$wnnz2_emitted;
  logic [3:0] lizzieLet18_1Lcall_$wnnz2_done;
  assign wwshG_1_destruct_d = {lizzieLet18_1Lcall_$wnnz2_d[35:4],
                               (lizzieLet18_1Lcall_$wnnz2_d[0] && (! lizzieLet18_1Lcall_$wnnz2_emitted[0]))};
  assign sc_0_3_destruct_d = {lizzieLet18_1Lcall_$wnnz2_d[51:36],
                              (lizzieLet18_1Lcall_$wnnz2_d[0] && (! lizzieLet18_1Lcall_$wnnz2_emitted[1]))};
  assign q4a8y_2_destruct_d = {lizzieLet18_1Lcall_$wnnz2_d[67:52],
                               (lizzieLet18_1Lcall_$wnnz2_d[0] && (! lizzieLet18_1Lcall_$wnnz2_emitted[2]))};
  assign q3a8x_2_destruct_d = {lizzieLet18_1Lcall_$wnnz2_d[83:68],
                               (lizzieLet18_1Lcall_$wnnz2_d[0] && (! lizzieLet18_1Lcall_$wnnz2_emitted[3]))};
  assign lizzieLet18_1Lcall_$wnnz2_done = (lizzieLet18_1Lcall_$wnnz2_emitted | ({q3a8x_2_destruct_d[0],
                                                                                 q4a8y_2_destruct_d[0],
                                                                                 sc_0_3_destruct_d[0],
                                                                                 wwshG_1_destruct_d[0]} & {q3a8x_2_destruct_r,
                                                                                                           q4a8y_2_destruct_r,
                                                                                                           sc_0_3_destruct_r,
                                                                                                           wwshG_1_destruct_r}));
  assign lizzieLet18_1Lcall_$wnnz2_r = (& lizzieLet18_1Lcall_$wnnz2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_1Lcall_$wnnz2_emitted <= 4'd0;
    else
      lizzieLet18_1Lcall_$wnnz2_emitted <= (lizzieLet18_1Lcall_$wnnz2_r ? 4'd0 :
                                            lizzieLet18_1Lcall_$wnnz2_done);
  
  /* destruct (Ty CT$wnnz,
          Dcon Lcall_$wnnz3) : (lizzieLet18_1Lcall_$wnnz3,CT$wnnz) > [(sc_0_2_destruct,Pointer_CT$wnnz),
                                                                      (q4a8y_1_destruct,Pointer_QTree_Int),
                                                                      (q3a8x_1_destruct,Pointer_QTree_Int),
                                                                      (q2a8w_1_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet18_1Lcall_$wnnz3_emitted;
  logic [3:0] lizzieLet18_1Lcall_$wnnz3_done;
  assign sc_0_2_destruct_d = {lizzieLet18_1Lcall_$wnnz3_d[19:4],
                              (lizzieLet18_1Lcall_$wnnz3_d[0] && (! lizzieLet18_1Lcall_$wnnz3_emitted[0]))};
  assign q4a8y_1_destruct_d = {lizzieLet18_1Lcall_$wnnz3_d[35:20],
                               (lizzieLet18_1Lcall_$wnnz3_d[0] && (! lizzieLet18_1Lcall_$wnnz3_emitted[1]))};
  assign q3a8x_1_destruct_d = {lizzieLet18_1Lcall_$wnnz3_d[51:36],
                               (lizzieLet18_1Lcall_$wnnz3_d[0] && (! lizzieLet18_1Lcall_$wnnz3_emitted[2]))};
  assign q2a8w_1_destruct_d = {lizzieLet18_1Lcall_$wnnz3_d[67:52],
                               (lizzieLet18_1Lcall_$wnnz3_d[0] && (! lizzieLet18_1Lcall_$wnnz3_emitted[3]))};
  assign lizzieLet18_1Lcall_$wnnz3_done = (lizzieLet18_1Lcall_$wnnz3_emitted | ({q2a8w_1_destruct_d[0],
                                                                                 q3a8x_1_destruct_d[0],
                                                                                 q4a8y_1_destruct_d[0],
                                                                                 sc_0_2_destruct_d[0]} & {q2a8w_1_destruct_r,
                                                                                                          q3a8x_1_destruct_r,
                                                                                                          q4a8y_1_destruct_r,
                                                                                                          sc_0_2_destruct_r}));
  assign lizzieLet18_1Lcall_$wnnz3_r = (& lizzieLet18_1Lcall_$wnnz3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_1Lcall_$wnnz3_emitted <= 4'd0;
    else
      lizzieLet18_1Lcall_$wnnz3_emitted <= (lizzieLet18_1Lcall_$wnnz3_r ? 4'd0 :
                                            lizzieLet18_1Lcall_$wnnz3_done);
  
  /* demux (Ty CT$wnnz,
       Ty CT$wnnz) : (lizzieLet18_2,CT$wnnz) (lizzieLet18_1,CT$wnnz) > [(_58,CT$wnnz),
                                                                        (lizzieLet18_1Lcall_$wnnz3,CT$wnnz),
                                                                        (lizzieLet18_1Lcall_$wnnz2,CT$wnnz),
                                                                        (lizzieLet18_1Lcall_$wnnz1,CT$wnnz),
                                                                        (lizzieLet18_1Lcall_$wnnz0,CT$wnnz)] */
  logic [4:0] lizzieLet18_1_onehotd;
  always_comb
    if ((lizzieLet18_2_d[0] && lizzieLet18_1_d[0]))
      unique case (lizzieLet18_2_d[3:1])
        3'd0: lizzieLet18_1_onehotd = 5'd1;
        3'd1: lizzieLet18_1_onehotd = 5'd2;
        3'd2: lizzieLet18_1_onehotd = 5'd4;
        3'd3: lizzieLet18_1_onehotd = 5'd8;
        3'd4: lizzieLet18_1_onehotd = 5'd16;
        default: lizzieLet18_1_onehotd = 5'd0;
      endcase
    else lizzieLet18_1_onehotd = 5'd0;
  assign _58_d = {lizzieLet18_1_d[115:1], lizzieLet18_1_onehotd[0]};
  assign lizzieLet18_1Lcall_$wnnz3_d = {lizzieLet18_1_d[115:1],
                                        lizzieLet18_1_onehotd[1]};
  assign lizzieLet18_1Lcall_$wnnz2_d = {lizzieLet18_1_d[115:1],
                                        lizzieLet18_1_onehotd[2]};
  assign lizzieLet18_1Lcall_$wnnz1_d = {lizzieLet18_1_d[115:1],
                                        lizzieLet18_1_onehotd[3]};
  assign lizzieLet18_1Lcall_$wnnz0_d = {lizzieLet18_1_d[115:1],
                                        lizzieLet18_1_onehotd[4]};
  assign lizzieLet18_1_r = (| (lizzieLet18_1_onehotd & {lizzieLet18_1Lcall_$wnnz0_r,
                                                        lizzieLet18_1Lcall_$wnnz1_r,
                                                        lizzieLet18_1Lcall_$wnnz2_r,
                                                        lizzieLet18_1Lcall_$wnnz3_r,
                                                        _58_r}));
  assign lizzieLet18_2_r = lizzieLet18_1_r;
  
  /* demux (Ty CT$wnnz,
       Ty Go) : (lizzieLet18_3,CT$wnnz) (go_12_goMux_data,Go) > [(_57,Go),
                                                                 (lizzieLet18_3Lcall_$wnnz3,Go),
                                                                 (lizzieLet18_3Lcall_$wnnz2,Go),
                                                                 (lizzieLet18_3Lcall_$wnnz1,Go),
                                                                 (lizzieLet18_3Lcall_$wnnz0,Go)] */
  logic [4:0] go_12_goMux_data_onehotd;
  always_comb
    if ((lizzieLet18_3_d[0] && go_12_goMux_data_d[0]))
      unique case (lizzieLet18_3_d[3:1])
        3'd0: go_12_goMux_data_onehotd = 5'd1;
        3'd1: go_12_goMux_data_onehotd = 5'd2;
        3'd2: go_12_goMux_data_onehotd = 5'd4;
        3'd3: go_12_goMux_data_onehotd = 5'd8;
        3'd4: go_12_goMux_data_onehotd = 5'd16;
        default: go_12_goMux_data_onehotd = 5'd0;
      endcase
    else go_12_goMux_data_onehotd = 5'd0;
  assign _57_d = go_12_goMux_data_onehotd[0];
  assign lizzieLet18_3Lcall_$wnnz3_d = go_12_goMux_data_onehotd[1];
  assign lizzieLet18_3Lcall_$wnnz2_d = go_12_goMux_data_onehotd[2];
  assign lizzieLet18_3Lcall_$wnnz1_d = go_12_goMux_data_onehotd[3];
  assign lizzieLet18_3Lcall_$wnnz0_d = go_12_goMux_data_onehotd[4];
  assign go_12_goMux_data_r = (| (go_12_goMux_data_onehotd & {lizzieLet18_3Lcall_$wnnz0_r,
                                                              lizzieLet18_3Lcall_$wnnz1_r,
                                                              lizzieLet18_3Lcall_$wnnz2_r,
                                                              lizzieLet18_3Lcall_$wnnz3_r,
                                                              _57_r}));
  assign lizzieLet18_3_r = go_12_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet18_3Lcall_$wnnz0,Go) > (lizzieLet18_3Lcall_$wnnz0_1_argbuf,Go) */
  Go_t lizzieLet18_3Lcall_$wnnz0_bufchan_d;
  logic lizzieLet18_3Lcall_$wnnz0_bufchan_r;
  assign lizzieLet18_3Lcall_$wnnz0_r = ((! lizzieLet18_3Lcall_$wnnz0_bufchan_d[0]) || lizzieLet18_3Lcall_$wnnz0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz0_bufchan_d <= 1'd0;
    else
      if (lizzieLet18_3Lcall_$wnnz0_r)
        lizzieLet18_3Lcall_$wnnz0_bufchan_d <= lizzieLet18_3Lcall_$wnnz0_d;
  Go_t lizzieLet18_3Lcall_$wnnz0_bufchan_buf;
  assign lizzieLet18_3Lcall_$wnnz0_bufchan_r = (! lizzieLet18_3Lcall_$wnnz0_bufchan_buf[0]);
  assign lizzieLet18_3Lcall_$wnnz0_1_argbuf_d = (lizzieLet18_3Lcall_$wnnz0_bufchan_buf[0] ? lizzieLet18_3Lcall_$wnnz0_bufchan_buf :
                                                 lizzieLet18_3Lcall_$wnnz0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet18_3Lcall_$wnnz0_1_argbuf_r && lizzieLet18_3Lcall_$wnnz0_bufchan_buf[0]))
        lizzieLet18_3Lcall_$wnnz0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet18_3Lcall_$wnnz0_1_argbuf_r) && (! lizzieLet18_3Lcall_$wnnz0_bufchan_buf[0])))
        lizzieLet18_3Lcall_$wnnz0_bufchan_buf <= lizzieLet18_3Lcall_$wnnz0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet18_3Lcall_$wnnz1,Go) > (lizzieLet18_3Lcall_$wnnz1_1_argbuf,Go) */
  Go_t lizzieLet18_3Lcall_$wnnz1_bufchan_d;
  logic lizzieLet18_3Lcall_$wnnz1_bufchan_r;
  assign lizzieLet18_3Lcall_$wnnz1_r = ((! lizzieLet18_3Lcall_$wnnz1_bufchan_d[0]) || lizzieLet18_3Lcall_$wnnz1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz1_bufchan_d <= 1'd0;
    else
      if (lizzieLet18_3Lcall_$wnnz1_r)
        lizzieLet18_3Lcall_$wnnz1_bufchan_d <= lizzieLet18_3Lcall_$wnnz1_d;
  Go_t lizzieLet18_3Lcall_$wnnz1_bufchan_buf;
  assign lizzieLet18_3Lcall_$wnnz1_bufchan_r = (! lizzieLet18_3Lcall_$wnnz1_bufchan_buf[0]);
  assign lizzieLet18_3Lcall_$wnnz1_1_argbuf_d = (lizzieLet18_3Lcall_$wnnz1_bufchan_buf[0] ? lizzieLet18_3Lcall_$wnnz1_bufchan_buf :
                                                 lizzieLet18_3Lcall_$wnnz1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet18_3Lcall_$wnnz1_1_argbuf_r && lizzieLet18_3Lcall_$wnnz1_bufchan_buf[0]))
        lizzieLet18_3Lcall_$wnnz1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet18_3Lcall_$wnnz1_1_argbuf_r) && (! lizzieLet18_3Lcall_$wnnz1_bufchan_buf[0])))
        lizzieLet18_3Lcall_$wnnz1_bufchan_buf <= lizzieLet18_3Lcall_$wnnz1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet18_3Lcall_$wnnz2,Go) > (lizzieLet18_3Lcall_$wnnz2_1_argbuf,Go) */
  Go_t lizzieLet18_3Lcall_$wnnz2_bufchan_d;
  logic lizzieLet18_3Lcall_$wnnz2_bufchan_r;
  assign lizzieLet18_3Lcall_$wnnz2_r = ((! lizzieLet18_3Lcall_$wnnz2_bufchan_d[0]) || lizzieLet18_3Lcall_$wnnz2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz2_bufchan_d <= 1'd0;
    else
      if (lizzieLet18_3Lcall_$wnnz2_r)
        lizzieLet18_3Lcall_$wnnz2_bufchan_d <= lizzieLet18_3Lcall_$wnnz2_d;
  Go_t lizzieLet18_3Lcall_$wnnz2_bufchan_buf;
  assign lizzieLet18_3Lcall_$wnnz2_bufchan_r = (! lizzieLet18_3Lcall_$wnnz2_bufchan_buf[0]);
  assign lizzieLet18_3Lcall_$wnnz2_1_argbuf_d = (lizzieLet18_3Lcall_$wnnz2_bufchan_buf[0] ? lizzieLet18_3Lcall_$wnnz2_bufchan_buf :
                                                 lizzieLet18_3Lcall_$wnnz2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet18_3Lcall_$wnnz2_1_argbuf_r && lizzieLet18_3Lcall_$wnnz2_bufchan_buf[0]))
        lizzieLet18_3Lcall_$wnnz2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet18_3Lcall_$wnnz2_1_argbuf_r) && (! lizzieLet18_3Lcall_$wnnz2_bufchan_buf[0])))
        lizzieLet18_3Lcall_$wnnz2_bufchan_buf <= lizzieLet18_3Lcall_$wnnz2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet18_3Lcall_$wnnz3,Go) > (lizzieLet18_3Lcall_$wnnz3_1_argbuf,Go) */
  Go_t lizzieLet18_3Lcall_$wnnz3_bufchan_d;
  logic lizzieLet18_3Lcall_$wnnz3_bufchan_r;
  assign lizzieLet18_3Lcall_$wnnz3_r = ((! lizzieLet18_3Lcall_$wnnz3_bufchan_d[0]) || lizzieLet18_3Lcall_$wnnz3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz3_bufchan_d <= 1'd0;
    else
      if (lizzieLet18_3Lcall_$wnnz3_r)
        lizzieLet18_3Lcall_$wnnz3_bufchan_d <= lizzieLet18_3Lcall_$wnnz3_d;
  Go_t lizzieLet18_3Lcall_$wnnz3_bufchan_buf;
  assign lizzieLet18_3Lcall_$wnnz3_bufchan_r = (! lizzieLet18_3Lcall_$wnnz3_bufchan_buf[0]);
  assign lizzieLet18_3Lcall_$wnnz3_1_argbuf_d = (lizzieLet18_3Lcall_$wnnz3_bufchan_buf[0] ? lizzieLet18_3Lcall_$wnnz3_bufchan_buf :
                                                 lizzieLet18_3Lcall_$wnnz3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_3Lcall_$wnnz3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet18_3Lcall_$wnnz3_1_argbuf_r && lizzieLet18_3Lcall_$wnnz3_bufchan_buf[0]))
        lizzieLet18_3Lcall_$wnnz3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet18_3Lcall_$wnnz3_1_argbuf_r) && (! lizzieLet18_3Lcall_$wnnz3_bufchan_buf[0])))
        lizzieLet18_3Lcall_$wnnz3_bufchan_buf <= lizzieLet18_3Lcall_$wnnz3_bufchan_d;
  
  /* demux (Ty CT$wnnz,
       Ty Int#) : (lizzieLet18_4,CT$wnnz) (srtarg_0_goMux_mux,Int#) > [(lizzieLet18_4L$wnnzsbos,Int#),
                                                                       (lizzieLet18_4Lcall_$wnnz3,Int#),
                                                                       (lizzieLet18_4Lcall_$wnnz2,Int#),
                                                                       (lizzieLet18_4Lcall_$wnnz1,Int#),
                                                                       (lizzieLet18_4Lcall_$wnnz0,Int#)] */
  logic [4:0] srtarg_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet18_4_d[0] && srtarg_0_goMux_mux_d[0]))
      unique case (lizzieLet18_4_d[3:1])
        3'd0: srtarg_0_goMux_mux_onehotd = 5'd1;
        3'd1: srtarg_0_goMux_mux_onehotd = 5'd2;
        3'd2: srtarg_0_goMux_mux_onehotd = 5'd4;
        3'd3: srtarg_0_goMux_mux_onehotd = 5'd8;
        3'd4: srtarg_0_goMux_mux_onehotd = 5'd16;
        default: srtarg_0_goMux_mux_onehotd = 5'd0;
      endcase
    else srtarg_0_goMux_mux_onehotd = 5'd0;
  assign lizzieLet18_4L$wnnzsbos_d = {srtarg_0_goMux_mux_d[32:1],
                                      srtarg_0_goMux_mux_onehotd[0]};
  assign lizzieLet18_4Lcall_$wnnz3_d = {srtarg_0_goMux_mux_d[32:1],
                                        srtarg_0_goMux_mux_onehotd[1]};
  assign lizzieLet18_4Lcall_$wnnz2_d = {srtarg_0_goMux_mux_d[32:1],
                                        srtarg_0_goMux_mux_onehotd[2]};
  assign lizzieLet18_4Lcall_$wnnz1_d = {srtarg_0_goMux_mux_d[32:1],
                                        srtarg_0_goMux_mux_onehotd[3]};
  assign lizzieLet18_4Lcall_$wnnz0_d = {srtarg_0_goMux_mux_d[32:1],
                                        srtarg_0_goMux_mux_onehotd[4]};
  assign srtarg_0_goMux_mux_r = (| (srtarg_0_goMux_mux_onehotd & {lizzieLet18_4Lcall_$wnnz0_r,
                                                                  lizzieLet18_4Lcall_$wnnz1_r,
                                                                  lizzieLet18_4Lcall_$wnnz2_r,
                                                                  lizzieLet18_4Lcall_$wnnz3_r,
                                                                  lizzieLet18_4L$wnnzsbos_r}));
  assign lizzieLet18_4_r = srtarg_0_goMux_mux_r;
  
  /* fork (Ty Int#) : (lizzieLet18_4L$wnnzsbos,Int#) > [(lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1,Int#),
                                                   (lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2,Int#)] */
  logic [1:0] lizzieLet18_4L$wnnzsbos_emitted;
  logic [1:0] lizzieLet18_4L$wnnzsbos_done;
  assign lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_d = {lizzieLet18_4L$wnnzsbos_d[32:1],
                                                           (lizzieLet18_4L$wnnzsbos_d[0] && (! lizzieLet18_4L$wnnzsbos_emitted[0]))};
  assign lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_d = {lizzieLet18_4L$wnnzsbos_d[32:1],
                                                           (lizzieLet18_4L$wnnzsbos_d[0] && (! lizzieLet18_4L$wnnzsbos_emitted[1]))};
  assign lizzieLet18_4L$wnnzsbos_done = (lizzieLet18_4L$wnnzsbos_emitted | ({lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_d[0],
                                                                             lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_d[0]} & {lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_r,
                                                                                                                                   lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_r}));
  assign lizzieLet18_4L$wnnzsbos_r = (& lizzieLet18_4L$wnnzsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet18_4L$wnnzsbos_emitted <= 2'd0;
    else
      lizzieLet18_4L$wnnzsbos_emitted <= (lizzieLet18_4L$wnnzsbos_r ? 2'd0 :
                                          lizzieLet18_4L$wnnzsbos_done);
  
  /* togo (Ty Int#) : (lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1,Int#) > (call_$wnnz_goConst,Go) */
  assign call_$wnnz_goConst_d = lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_d[0];
  assign lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_1_r = call_$wnnz_goConst_r;
  
  /* buf (Ty Int#) : (lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2,Int#) > ($wnnz_resbuf,Int#) */
  \Int#_t  lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d;
  logic lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_r;
  assign lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_r = ((! lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d[0]) || lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d <= {32'd0,
                                                                 1'd0};
    else
      if (lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_r)
        lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d <= lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_d;
  \Int#_t  lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf;
  assign lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_r = (! lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf[0]);
  assign \$wnnz_resbuf_d  = (lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf[0] ? lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf :
                             lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf <= {32'd0,
                                                                   1'd0};
    else
      if ((\$wnnz_resbuf_r  && lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf[0]))
        lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf <= {32'd0,
                                                                     1'd0};
      else if (((! \$wnnz_resbuf_r ) && (! lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf[0])))
        lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_buf <= lizzieLet18_4L$wnnzsbos_1_merge_merge_fork_2_bufchan_d;
  
  /* dcon (Ty CT$wnnz,
      Dcon Lcall_$wnnz2) : [(lizzieLet18_4Lcall_$wnnz3,Int#),
                            (sc_0_2_destruct,Pointer_CT$wnnz),
                            (q4a8y_1_destruct,Pointer_QTree_Int),
                            (q3a8x_1_destruct,Pointer_QTree_Int)] > (lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2,CT$wnnz) */
  assign lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_d = Lcall_$wnnz2_dc((& {lizzieLet18_4Lcall_$wnnz3_d[0],
                                                                                                   sc_0_2_destruct_d[0],
                                                                                                   q4a8y_1_destruct_d[0],
                                                                                                   q3a8x_1_destruct_d[0]}), lizzieLet18_4Lcall_$wnnz3_d, sc_0_2_destruct_d, q4a8y_1_destruct_d, q3a8x_1_destruct_d);
  assign {lizzieLet18_4Lcall_$wnnz3_r,
          sc_0_2_destruct_r,
          q4a8y_1_destruct_r,
          q3a8x_1_destruct_r} = {4 {(lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_r && lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_d[0])}};
  
  /* buf (Ty CT$wnnz) : (lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2,CT$wnnz) > (lizzieLet19_1_argbuf,CT$wnnz) */
  CT$wnnz_t lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d;
  logic lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_r;
  assign lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_r = ((! lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d[0]) || lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d <= {115'd0,
                                                                                      1'd0};
    else
      if (lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_r)
        lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d <= lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_d;
  CT$wnnz_t lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf;
  assign lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_r = (! lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf[0]);
  assign lizzieLet19_1_argbuf_d = (lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf[0] ? lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf :
                                   lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf <= {115'd0,
                                                                                        1'd0};
    else
      if ((lizzieLet19_1_argbuf_r && lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf[0]))
        lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf <= {115'd0,
                                                                                          1'd0};
      else if (((! lizzieLet19_1_argbuf_r) && (! lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf[0])))
        lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_buf <= lizzieLet18_4Lcall_$wnnz3_1sc_0_2_1q4a8y_1_1q3a8x_1_1Lcall_$wnnz2_bufchan_d;
  
  /* buf (Ty Bool) : (lizzieLet1_1wild1Xn_1_Eq,Bool) > (lizzieLet2_1_argbuf,Bool) */
  Bool_t lizzieLet1_1wild1Xn_1_Eq_bufchan_d;
  logic lizzieLet1_1wild1Xn_1_Eq_bufchan_r;
  assign lizzieLet1_1wild1Xn_1_Eq_r = ((! lizzieLet1_1wild1Xn_1_Eq_bufchan_d[0]) || lizzieLet1_1wild1Xn_1_Eq_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet1_1wild1Xn_1_Eq_bufchan_d <= {1'd0, 1'd0};
    else
      if (lizzieLet1_1wild1Xn_1_Eq_r)
        lizzieLet1_1wild1Xn_1_Eq_bufchan_d <= lizzieLet1_1wild1Xn_1_Eq_d;
  Bool_t lizzieLet1_1wild1Xn_1_Eq_bufchan_buf;
  assign lizzieLet1_1wild1Xn_1_Eq_bufchan_r = (! lizzieLet1_1wild1Xn_1_Eq_bufchan_buf[0]);
  assign lizzieLet2_1_argbuf_d = (lizzieLet1_1wild1Xn_1_Eq_bufchan_buf[0] ? lizzieLet1_1wild1Xn_1_Eq_bufchan_buf :
                                  lizzieLet1_1wild1Xn_1_Eq_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet1_1wild1Xn_1_Eq_bufchan_buf <= {1'd0, 1'd0};
    else
      if ((lizzieLet2_1_argbuf_r && lizzieLet1_1wild1Xn_1_Eq_bufchan_buf[0]))
        lizzieLet1_1wild1Xn_1_Eq_bufchan_buf <= {1'd0, 1'd0};
      else if (((! lizzieLet2_1_argbuf_r) && (! lizzieLet1_1wild1Xn_1_Eq_bufchan_buf[0])))
        lizzieLet1_1wild1Xn_1_Eq_bufchan_buf <= lizzieLet1_1wild1Xn_1_Eq_bufchan_d;
  
  /* destruct (Ty CTmAdd_mAdd_Int,
          Dcon Lcall_mAdd_mAdd_Int0) : (lizzieLet22_1Lcall_mAdd_mAdd_Int0,CTmAdd_mAdd_Int) > [(es_2_1_destruct,Pointer_QTree_Int),
                                                                                              (es_3_2_destruct,Pointer_QTree_Int),
                                                                                              (es_4_3_destruct,Pointer_QTree_Int),
                                                                                              (sc_0_9_destruct,Pointer_CTmAdd_mAdd_Int)] */
  logic [3:0] lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted;
  logic [3:0] lizzieLet22_1Lcall_mAdd_mAdd_Int0_done;
  assign es_2_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[19:4],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted[0]))};
  assign es_3_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[35:20],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted[1]))};
  assign es_4_3_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[51:36],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted[2]))};
  assign sc_0_9_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[67:52],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int0_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted[3]))};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int0_done = (lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted | ({sc_0_9_destruct_d[0],
                                                                                                 es_4_3_destruct_d[0],
                                                                                                 es_3_2_destruct_d[0],
                                                                                                 es_2_1_destruct_d[0]} & {sc_0_9_destruct_r,
                                                                                                                          es_4_3_destruct_r,
                                                                                                                          es_3_2_destruct_r,
                                                                                                                          es_2_1_destruct_r}));
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int0_r = (& lizzieLet22_1Lcall_mAdd_mAdd_Int0_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted <= 4'd0;
    else
      lizzieLet22_1Lcall_mAdd_mAdd_Int0_emitted <= (lizzieLet22_1Lcall_mAdd_mAdd_Int0_r ? 4'd0 :
                                                    lizzieLet22_1Lcall_mAdd_mAdd_Int0_done);
  
  /* destruct (Ty CTmAdd_mAdd_Int,
          Dcon Lcall_mAdd_mAdd_Int1) : (lizzieLet22_1Lcall_mAdd_mAdd_Int1,CTmAdd_mAdd_Int) > [(es_3_1_destruct,Pointer_QTree_Int),
                                                                                              (es_4_2_destruct,Pointer_QTree_Int),
                                                                                              (sc_0_8_destruct,Pointer_CTmAdd_mAdd_Int),
                                                                                              (isZ1a8b_4_destruct,MyDTInt_Bool),
                                                                                              (ga8c_4_destruct,MyDTInt_Int_Int),
                                                                                              (q1a8l_3_destruct,Pointer_QTree_Int),
                                                                                              (t1a8q_3_destruct,Pointer_QTree_Int)] */
  logic [6:0] lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted;
  logic [6:0] lizzieLet22_1Lcall_mAdd_mAdd_Int1_done;
  assign es_3_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[19:4],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[0]))};
  assign es_4_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[35:20],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[1]))};
  assign sc_0_8_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[51:36],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[2]))};
  assign isZ1a8b_4_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[3]));
  assign ga8c_4_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[4]));
  assign q1a8l_3_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[67:52],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[5]))};
  assign t1a8q_3_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[83:68],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int1_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted[6]))};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int1_done = (lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted | ({t1a8q_3_destruct_d[0],
                                                                                                 q1a8l_3_destruct_d[0],
                                                                                                 ga8c_4_destruct_d[0],
                                                                                                 isZ1a8b_4_destruct_d[0],
                                                                                                 sc_0_8_destruct_d[0],
                                                                                                 es_4_2_destruct_d[0],
                                                                                                 es_3_1_destruct_d[0]} & {t1a8q_3_destruct_r,
                                                                                                                          q1a8l_3_destruct_r,
                                                                                                                          ga8c_4_destruct_r,
                                                                                                                          isZ1a8b_4_destruct_r,
                                                                                                                          sc_0_8_destruct_r,
                                                                                                                          es_4_2_destruct_r,
                                                                                                                          es_3_1_destruct_r}));
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int1_r = (& lizzieLet22_1Lcall_mAdd_mAdd_Int1_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted <= 7'd0;
    else
      lizzieLet22_1Lcall_mAdd_mAdd_Int1_emitted <= (lizzieLet22_1Lcall_mAdd_mAdd_Int1_r ? 7'd0 :
                                                    lizzieLet22_1Lcall_mAdd_mAdd_Int1_done);
  
  /* destruct (Ty CTmAdd_mAdd_Int,
          Dcon Lcall_mAdd_mAdd_Int2) : (lizzieLet22_1Lcall_mAdd_mAdd_Int2,CTmAdd_mAdd_Int) > [(es_4_1_destruct,Pointer_QTree_Int),
                                                                                              (sc_0_7_destruct,Pointer_CTmAdd_mAdd_Int),
                                                                                              (isZ1a8b_3_destruct,MyDTInt_Bool),
                                                                                              (ga8c_3_destruct,MyDTInt_Int_Int),
                                                                                              (q1a8l_2_destruct,Pointer_QTree_Int),
                                                                                              (t1a8q_2_destruct,Pointer_QTree_Int),
                                                                                              (q2a8m_2_destruct,Pointer_QTree_Int),
                                                                                              (t2a8r_2_destruct,Pointer_QTree_Int)] */
  logic [7:0] lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted;
  logic [7:0] lizzieLet22_1Lcall_mAdd_mAdd_Int2_done;
  assign es_4_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[19:4],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[0]))};
  assign sc_0_7_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[35:20],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[1]))};
  assign isZ1a8b_3_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[2]));
  assign ga8c_3_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[3]));
  assign q1a8l_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[51:36],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[4]))};
  assign t1a8q_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[67:52],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[5]))};
  assign q2a8m_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[83:68],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[6]))};
  assign t2a8r_2_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[99:84],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int2_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted[7]))};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int2_done = (lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted | ({t2a8r_2_destruct_d[0],
                                                                                                 q2a8m_2_destruct_d[0],
                                                                                                 t1a8q_2_destruct_d[0],
                                                                                                 q1a8l_2_destruct_d[0],
                                                                                                 ga8c_3_destruct_d[0],
                                                                                                 isZ1a8b_3_destruct_d[0],
                                                                                                 sc_0_7_destruct_d[0],
                                                                                                 es_4_1_destruct_d[0]} & {t2a8r_2_destruct_r,
                                                                                                                          q2a8m_2_destruct_r,
                                                                                                                          t1a8q_2_destruct_r,
                                                                                                                          q1a8l_2_destruct_r,
                                                                                                                          ga8c_3_destruct_r,
                                                                                                                          isZ1a8b_3_destruct_r,
                                                                                                                          sc_0_7_destruct_r,
                                                                                                                          es_4_1_destruct_r}));
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int2_r = (& lizzieLet22_1Lcall_mAdd_mAdd_Int2_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted <= 8'd0;
    else
      lizzieLet22_1Lcall_mAdd_mAdd_Int2_emitted <= (lizzieLet22_1Lcall_mAdd_mAdd_Int2_r ? 8'd0 :
                                                    lizzieLet22_1Lcall_mAdd_mAdd_Int2_done);
  
  /* destruct (Ty CTmAdd_mAdd_Int,
          Dcon Lcall_mAdd_mAdd_Int3) : (lizzieLet22_1Lcall_mAdd_mAdd_Int3,CTmAdd_mAdd_Int) > [(sc_0_6_destruct,Pointer_CTmAdd_mAdd_Int),
                                                                                              (isZ1a8b_2_destruct,MyDTInt_Bool),
                                                                                              (ga8c_2_destruct,MyDTInt_Int_Int),
                                                                                              (q1a8l_1_destruct,Pointer_QTree_Int),
                                                                                              (t1a8q_1_destruct,Pointer_QTree_Int),
                                                                                              (q2a8m_1_destruct,Pointer_QTree_Int),
                                                                                              (t2a8r_1_destruct,Pointer_QTree_Int),
                                                                                              (q3a8n_1_destruct,Pointer_QTree_Int),
                                                                                              (t3a8s_1_destruct,Pointer_QTree_Int)] */
  logic [8:0] lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted;
  logic [8:0] lizzieLet22_1Lcall_mAdd_mAdd_Int3_done;
  assign sc_0_6_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[19:4],
                              (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[0]))};
  assign isZ1a8b_2_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[1]));
  assign ga8c_2_destruct_d = (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[2]));
  assign q1a8l_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[35:20],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[3]))};
  assign t1a8q_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[51:36],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[4]))};
  assign q2a8m_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[67:52],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[5]))};
  assign t2a8r_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[83:68],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[6]))};
  assign q3a8n_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[99:84],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[7]))};
  assign t3a8s_1_destruct_d = {lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[115:100],
                               (lizzieLet22_1Lcall_mAdd_mAdd_Int3_d[0] && (! lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted[8]))};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int3_done = (lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted | ({t3a8s_1_destruct_d[0],
                                                                                                 q3a8n_1_destruct_d[0],
                                                                                                 t2a8r_1_destruct_d[0],
                                                                                                 q2a8m_1_destruct_d[0],
                                                                                                 t1a8q_1_destruct_d[0],
                                                                                                 q1a8l_1_destruct_d[0],
                                                                                                 ga8c_2_destruct_d[0],
                                                                                                 isZ1a8b_2_destruct_d[0],
                                                                                                 sc_0_6_destruct_d[0]} & {t3a8s_1_destruct_r,
                                                                                                                          q3a8n_1_destruct_r,
                                                                                                                          t2a8r_1_destruct_r,
                                                                                                                          q2a8m_1_destruct_r,
                                                                                                                          t1a8q_1_destruct_r,
                                                                                                                          q1a8l_1_destruct_r,
                                                                                                                          ga8c_2_destruct_r,
                                                                                                                          isZ1a8b_2_destruct_r,
                                                                                                                          sc_0_6_destruct_r}));
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int3_r = (& lizzieLet22_1Lcall_mAdd_mAdd_Int3_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted <= 9'd0;
    else
      lizzieLet22_1Lcall_mAdd_mAdd_Int3_emitted <= (lizzieLet22_1Lcall_mAdd_mAdd_Int3_r ? 9'd0 :
                                                    lizzieLet22_1Lcall_mAdd_mAdd_Int3_done);
  
  /* demux (Ty CTmAdd_mAdd_Int,
       Ty CTmAdd_mAdd_Int) : (lizzieLet22_2,CTmAdd_mAdd_Int) (lizzieLet22_1,CTmAdd_mAdd_Int) > [(_56,CTmAdd_mAdd_Int),
                                                                                                (lizzieLet22_1Lcall_mAdd_mAdd_Int3,CTmAdd_mAdd_Int),
                                                                                                (lizzieLet22_1Lcall_mAdd_mAdd_Int2,CTmAdd_mAdd_Int),
                                                                                                (lizzieLet22_1Lcall_mAdd_mAdd_Int1,CTmAdd_mAdd_Int),
                                                                                                (lizzieLet22_1Lcall_mAdd_mAdd_Int0,CTmAdd_mAdd_Int)] */
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
  assign _56_d = {lizzieLet22_1_d[115:1], lizzieLet22_1_onehotd[0]};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int3_d = {lizzieLet22_1_d[115:1],
                                                lizzieLet22_1_onehotd[1]};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int2_d = {lizzieLet22_1_d[115:1],
                                                lizzieLet22_1_onehotd[2]};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int1_d = {lizzieLet22_1_d[115:1],
                                                lizzieLet22_1_onehotd[3]};
  assign lizzieLet22_1Lcall_mAdd_mAdd_Int0_d = {lizzieLet22_1_d[115:1],
                                                lizzieLet22_1_onehotd[4]};
  assign lizzieLet22_1_r = (| (lizzieLet22_1_onehotd & {lizzieLet22_1Lcall_mAdd_mAdd_Int0_r,
                                                        lizzieLet22_1Lcall_mAdd_mAdd_Int1_r,
                                                        lizzieLet22_1Lcall_mAdd_mAdd_Int2_r,
                                                        lizzieLet22_1Lcall_mAdd_mAdd_Int3_r,
                                                        _56_r}));
  assign lizzieLet22_2_r = lizzieLet22_1_r;
  
  /* demux (Ty CTmAdd_mAdd_Int,
       Ty Go) : (lizzieLet22_3,CTmAdd_mAdd_Int) (go_13_goMux_data,Go) > [(_55,Go),
                                                                         (lizzieLet22_3Lcall_mAdd_mAdd_Int3,Go),
                                                                         (lizzieLet22_3Lcall_mAdd_mAdd_Int2,Go),
                                                                         (lizzieLet22_3Lcall_mAdd_mAdd_Int1,Go),
                                                                         (lizzieLet22_3Lcall_mAdd_mAdd_Int0,Go)] */
  logic [4:0] go_13_goMux_data_onehotd;
  always_comb
    if ((lizzieLet22_3_d[0] && go_13_goMux_data_d[0]))
      unique case (lizzieLet22_3_d[3:1])
        3'd0: go_13_goMux_data_onehotd = 5'd1;
        3'd1: go_13_goMux_data_onehotd = 5'd2;
        3'd2: go_13_goMux_data_onehotd = 5'd4;
        3'd3: go_13_goMux_data_onehotd = 5'd8;
        3'd4: go_13_goMux_data_onehotd = 5'd16;
        default: go_13_goMux_data_onehotd = 5'd0;
      endcase
    else go_13_goMux_data_onehotd = 5'd0;
  assign _55_d = go_13_goMux_data_onehotd[0];
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int3_d = go_13_goMux_data_onehotd[1];
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int2_d = go_13_goMux_data_onehotd[2];
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int1_d = go_13_goMux_data_onehotd[3];
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int0_d = go_13_goMux_data_onehotd[4];
  assign go_13_goMux_data_r = (| (go_13_goMux_data_onehotd & {lizzieLet22_3Lcall_mAdd_mAdd_Int0_r,
                                                              lizzieLet22_3Lcall_mAdd_mAdd_Int1_r,
                                                              lizzieLet22_3Lcall_mAdd_mAdd_Int2_r,
                                                              lizzieLet22_3Lcall_mAdd_mAdd_Int3_r,
                                                              _55_r}));
  assign lizzieLet22_3_r = go_13_goMux_data_r;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_mAdd_mAdd_Int0,Go) > (lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf,Go) */
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_r;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int0_r = ((! lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d[0]) || lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d <= 1'd0;
    else
      if (lizzieLet22_3Lcall_mAdd_mAdd_Int0_r)
        lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d <= lizzieLet22_3Lcall_mAdd_mAdd_Int0_d;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_r = (! lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf[0]);
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_d = (lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf[0] ? lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf :
                                                         lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_r && lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf[0]))
        lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf <= 1'd0;
      else if (((! lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_r) && (! lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf[0])))
        lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_buf <= lizzieLet22_3Lcall_mAdd_mAdd_Int0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_mAdd_mAdd_Int1,Go) > (lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf,Go) */
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_r;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int1_r = ((! lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d[0]) || lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d <= 1'd0;
    else
      if (lizzieLet22_3Lcall_mAdd_mAdd_Int1_r)
        lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d <= lizzieLet22_3Lcall_mAdd_mAdd_Int1_d;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_r = (! lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf[0]);
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_d = (lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf[0] ? lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf :
                                                         lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_r && lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf[0]))
        lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet22_3Lcall_mAdd_mAdd_Int1_1_argbuf_r) && (! lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf[0])))
        lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_buf <= lizzieLet22_3Lcall_mAdd_mAdd_Int1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_mAdd_mAdd_Int2,Go) > (lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf,Go) */
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_r;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int2_r = ((! lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d[0]) || lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d <= 1'd0;
    else
      if (lizzieLet22_3Lcall_mAdd_mAdd_Int2_r)
        lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d <= lizzieLet22_3Lcall_mAdd_mAdd_Int2_d;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_r = (! lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf[0]);
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_d = (lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf[0] ? lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf :
                                                         lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_r && lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf[0]))
        lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet22_3Lcall_mAdd_mAdd_Int2_1_argbuf_r) && (! lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf[0])))
        lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_buf <= lizzieLet22_3Lcall_mAdd_mAdd_Int2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet22_3Lcall_mAdd_mAdd_Int3,Go) > (lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf,Go) */
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d;
  logic lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_r;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int3_r = ((! lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d[0]) || lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d <= 1'd0;
    else
      if (lizzieLet22_3Lcall_mAdd_mAdd_Int3_r)
        lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d <= lizzieLet22_3Lcall_mAdd_mAdd_Int3_d;
  Go_t lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf;
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_r = (! lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf[0]);
  assign lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_d = (lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf[0] ? lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf :
                                                         lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_r && lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf[0]))
        lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf <= 1'd0;
      else if (((! lizzieLet22_3Lcall_mAdd_mAdd_Int3_1_argbuf_r) && (! lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf[0])))
        lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_buf <= lizzieLet22_3Lcall_mAdd_mAdd_Int3_bufchan_d;
  
  /* demux (Ty CTmAdd_mAdd_Int,
       Ty Pointer_QTree_Int) : (lizzieLet22_4,CTmAdd_mAdd_Int) (srtarg_0_1_goMux_mux,Pointer_QTree_Int) > [(lizzieLet22_4LmAdd_mAdd_Intsbos,Pointer_QTree_Int),
                                                                                                           (lizzieLet22_4Lcall_mAdd_mAdd_Int3,Pointer_QTree_Int),
                                                                                                           (lizzieLet22_4Lcall_mAdd_mAdd_Int2,Pointer_QTree_Int),
                                                                                                           (lizzieLet22_4Lcall_mAdd_mAdd_Int1,Pointer_QTree_Int),
                                                                                                           (lizzieLet22_4Lcall_mAdd_mAdd_Int0,Pointer_QTree_Int)] */
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
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_d = {srtarg_0_1_goMux_mux_d[16:1],
                                              srtarg_0_1_goMux_mux_onehotd[0]};
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int3_d = {srtarg_0_1_goMux_mux_d[16:1],
                                                srtarg_0_1_goMux_mux_onehotd[1]};
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int2_d = {srtarg_0_1_goMux_mux_d[16:1],
                                                srtarg_0_1_goMux_mux_onehotd[2]};
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int1_d = {srtarg_0_1_goMux_mux_d[16:1],
                                                srtarg_0_1_goMux_mux_onehotd[3]};
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int0_d = {srtarg_0_1_goMux_mux_d[16:1],
                                                srtarg_0_1_goMux_mux_onehotd[4]};
  assign srtarg_0_1_goMux_mux_r = (| (srtarg_0_1_goMux_mux_onehotd & {lizzieLet22_4Lcall_mAdd_mAdd_Int0_r,
                                                                      lizzieLet22_4Lcall_mAdd_mAdd_Int1_r,
                                                                      lizzieLet22_4Lcall_mAdd_mAdd_Int2_r,
                                                                      lizzieLet22_4Lcall_mAdd_mAdd_Int3_r,
                                                                      lizzieLet22_4LmAdd_mAdd_Intsbos_r}));
  assign lizzieLet22_4_r = srtarg_0_1_goMux_mux_r;
  
  /* dcon (Ty QTree_Int,
      Dcon QNode_Int) : [(lizzieLet22_4Lcall_mAdd_mAdd_Int0,Pointer_QTree_Int),
                         (es_2_1_destruct,Pointer_QTree_Int),
                         (es_3_2_destruct,Pointer_QTree_Int),
                         (es_4_3_destruct,Pointer_QTree_Int)] > (lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int,QTree_Int) */
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_d = QNode_Int_dc((& {lizzieLet22_4Lcall_mAdd_mAdd_Int0_d[0],
                                                                                                   es_2_1_destruct_d[0],
                                                                                                   es_3_2_destruct_d[0],
                                                                                                   es_4_3_destruct_d[0]}), lizzieLet22_4Lcall_mAdd_mAdd_Int0_d, es_2_1_destruct_d, es_3_2_destruct_d, es_4_3_destruct_d);
  assign {lizzieLet22_4Lcall_mAdd_mAdd_Int0_r,
          es_2_1_destruct_r,
          es_3_2_destruct_r,
          es_4_3_destruct_r} = {4 {(lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_r && lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int,QTree_Int) > (lizzieLet26_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_r;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_r = ((! lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d[0]) || lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d <= {66'd0,
                                                                                         1'd0};
    else
      if (lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_r)
        lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d <= lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_d;
  QTree_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_r = (! lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf[0]);
  assign lizzieLet26_1_argbuf_d = (lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf[0] ? lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf :
                                   lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf <= {66'd0,
                                                                                           1'd0};
    else
      if ((lizzieLet26_1_argbuf_r && lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf[0]))
        lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf <= {66'd0,
                                                                                             1'd0};
      else if (((! lizzieLet26_1_argbuf_r) && (! lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf[0])))
        lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_buf <= lizzieLet22_4Lcall_mAdd_mAdd_Int0_1es_2_1_1es_3_2_1es_4_3_1QNode_Int_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Int,
      Dcon Lcall_mAdd_mAdd_Int0) : [(lizzieLet22_4Lcall_mAdd_mAdd_Int1,Pointer_QTree_Int),
                                    (es_3_1_destruct,Pointer_QTree_Int),
                                    (es_4_2_destruct,Pointer_QTree_Int),
                                    (sc_0_8_destruct,Pointer_CTmAdd_mAdd_Int)] > (lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0,CTmAdd_mAdd_Int) */
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_d = Lcall_mAdd_mAdd_Int0_dc((& {lizzieLet22_4Lcall_mAdd_mAdd_Int1_d[0],
                                                                                                                         es_3_1_destruct_d[0],
                                                                                                                         es_4_2_destruct_d[0],
                                                                                                                         sc_0_8_destruct_d[0]}), lizzieLet22_4Lcall_mAdd_mAdd_Int1_d, es_3_1_destruct_d, es_4_2_destruct_d, sc_0_8_destruct_d);
  assign {lizzieLet22_4Lcall_mAdd_mAdd_Int1_r,
          es_3_1_destruct_r,
          es_4_2_destruct_r,
          sc_0_8_destruct_r} = {4 {(lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_r && lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Int) : (lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0,CTmAdd_mAdd_Int) > (lizzieLet25_1_argbuf,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_r;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_r = ((! lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d[0]) || lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d <= {115'd0,
                                                                                                    1'd0};
    else
      if (lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_r)
        lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d <= lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_d;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_r = (! lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf[0]);
  assign lizzieLet25_1_argbuf_d = (lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf[0] ? lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf :
                                   lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf <= {115'd0,
                                                                                                      1'd0};
    else
      if ((lizzieLet25_1_argbuf_r && lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf[0]))
        lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf <= {115'd0,
                                                                                                        1'd0};
      else if (((! lizzieLet25_1_argbuf_r) && (! lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf[0])))
        lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_buf <= lizzieLet22_4Lcall_mAdd_mAdd_Int1_1es_3_1_1es_4_2_1sc_0_8_1Lcall_mAdd_mAdd_Int0_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Int,
      Dcon Lcall_mAdd_mAdd_Int1) : [(lizzieLet22_4Lcall_mAdd_mAdd_Int2,Pointer_QTree_Int),
                                    (es_4_1_destruct,Pointer_QTree_Int),
                                    (sc_0_7_destruct,Pointer_CTmAdd_mAdd_Int),
                                    (isZ1a8b_3_1,MyDTInt_Bool),
                                    (ga8c_3_1,MyDTInt_Int_Int),
                                    (q1a8l_2_destruct,Pointer_QTree_Int),
                                    (t1a8q_2_destruct,Pointer_QTree_Int)] > (lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1,CTmAdd_mAdd_Int) */
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_d = Lcall_mAdd_mAdd_Int1_dc((& {lizzieLet22_4Lcall_mAdd_mAdd_Int2_d[0],
                                                                                                                                                      es_4_1_destruct_d[0],
                                                                                                                                                      sc_0_7_destruct_d[0],
                                                                                                                                                      isZ1a8b_3_1_d[0],
                                                                                                                                                      ga8c_3_1_d[0],
                                                                                                                                                      q1a8l_2_destruct_d[0],
                                                                                                                                                      t1a8q_2_destruct_d[0]}), lizzieLet22_4Lcall_mAdd_mAdd_Int2_d, es_4_1_destruct_d, sc_0_7_destruct_d, isZ1a8b_3_1_d, ga8c_3_1_d, q1a8l_2_destruct_d, t1a8q_2_destruct_d);
  assign {lizzieLet22_4Lcall_mAdd_mAdd_Int2_r,
          es_4_1_destruct_r,
          sc_0_7_destruct_r,
          isZ1a8b_3_1_r,
          ga8c_3_1_r,
          q1a8l_2_destruct_r,
          t1a8q_2_destruct_r} = {7 {(lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_r && lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Int) : (lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1,CTmAdd_mAdd_Int) > (lizzieLet24_1_argbuf,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_r;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_r = ((! lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d[0]) || lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d <= {115'd0,
                                                                                                                                 1'd0};
    else
      if (lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_r)
        lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d <= lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_d;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_r = (! lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf[0]);
  assign lizzieLet24_1_argbuf_d = (lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf[0] ? lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf :
                                   lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf <= {115'd0,
                                                                                                                                   1'd0};
    else
      if ((lizzieLet24_1_argbuf_r && lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf[0]))
        lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf <= {115'd0,
                                                                                                                                     1'd0};
      else if (((! lizzieLet24_1_argbuf_r) && (! lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf[0])))
        lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_buf <= lizzieLet22_4Lcall_mAdd_mAdd_Int2_1es_4_1_1sc_0_7_1isZ1a8b_3_1ga8c_3_1q1a8l_2_1t1a8q_2_1Lcall_mAdd_mAdd_Int1_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Int,
      Dcon Lcall_mAdd_mAdd_Int2) : [(lizzieLet22_4Lcall_mAdd_mAdd_Int3,Pointer_QTree_Int),
                                    (sc_0_6_destruct,Pointer_CTmAdd_mAdd_Int),
                                    (isZ1a8b_2_1,MyDTInt_Bool),
                                    (ga8c_2_1,MyDTInt_Int_Int),
                                    (q1a8l_1_destruct,Pointer_QTree_Int),
                                    (t1a8q_1_destruct,Pointer_QTree_Int),
                                    (q2a8m_1_destruct,Pointer_QTree_Int),
                                    (t2a8r_1_destruct,Pointer_QTree_Int)] > (lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2,CTmAdd_mAdd_Int) */
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_d = Lcall_mAdd_mAdd_Int2_dc((& {lizzieLet22_4Lcall_mAdd_mAdd_Int3_d[0],
                                                                                                                                                                sc_0_6_destruct_d[0],
                                                                                                                                                                isZ1a8b_2_1_d[0],
                                                                                                                                                                ga8c_2_1_d[0],
                                                                                                                                                                q1a8l_1_destruct_d[0],
                                                                                                                                                                t1a8q_1_destruct_d[0],
                                                                                                                                                                q2a8m_1_destruct_d[0],
                                                                                                                                                                t2a8r_1_destruct_d[0]}), lizzieLet22_4Lcall_mAdd_mAdd_Int3_d, sc_0_6_destruct_d, isZ1a8b_2_1_d, ga8c_2_1_d, q1a8l_1_destruct_d, t1a8q_1_destruct_d, q2a8m_1_destruct_d, t2a8r_1_destruct_d);
  assign {lizzieLet22_4Lcall_mAdd_mAdd_Int3_r,
          sc_0_6_destruct_r,
          isZ1a8b_2_1_r,
          ga8c_2_1_r,
          q1a8l_1_destruct_r,
          t1a8q_1_destruct_r,
          q2a8m_1_destruct_r,
          t2a8r_1_destruct_r} = {8 {(lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_r && lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Int) : (lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2,CTmAdd_mAdd_Int) > (lizzieLet23_1_argbuf,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d;
  logic lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_r;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_r = ((! lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d[0]) || lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d <= {115'd0,
                                                                                                                                           1'd0};
    else
      if (lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_r)
        lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d <= lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_d;
  CTmAdd_mAdd_Int_t lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf;
  assign lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_r = (! lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf[0]);
  assign lizzieLet23_1_argbuf_d = (lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf[0] ? lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf :
                                   lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf <= {115'd0,
                                                                                                                                             1'd0};
    else
      if ((lizzieLet23_1_argbuf_r && lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf[0]))
        lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf <= {115'd0,
                                                                                                                                               1'd0};
      else if (((! lizzieLet23_1_argbuf_r) && (! lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf[0])))
        lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_buf <= lizzieLet22_4Lcall_mAdd_mAdd_Int3_1sc_0_6_1isZ1a8b_2_1ga8c_2_1q1a8l_1_1t1a8q_1_1q2a8m_1_1t2a8r_1_1Lcall_mAdd_mAdd_Int2_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Int) : (lizzieLet22_4LmAdd_mAdd_Intsbos,Pointer_QTree_Int) > [(lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1,Pointer_QTree_Int),
                                                                                     (lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2,Pointer_QTree_Int)] */
  logic [1:0] lizzieLet22_4LmAdd_mAdd_Intsbos_emitted;
  logic [1:0] lizzieLet22_4LmAdd_mAdd_Intsbos_done;
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_d = {lizzieLet22_4LmAdd_mAdd_Intsbos_d[16:1],
                                                                   (lizzieLet22_4LmAdd_mAdd_Intsbos_d[0] && (! lizzieLet22_4LmAdd_mAdd_Intsbos_emitted[0]))};
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d = {lizzieLet22_4LmAdd_mAdd_Intsbos_d[16:1],
                                                                   (lizzieLet22_4LmAdd_mAdd_Intsbos_d[0] && (! lizzieLet22_4LmAdd_mAdd_Intsbos_emitted[1]))};
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_done = (lizzieLet22_4LmAdd_mAdd_Intsbos_emitted | ({lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d[0],
                                                                                             lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_d[0]} & {lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_r,
                                                                                                                                                           lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_r}));
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_r = (& lizzieLet22_4LmAdd_mAdd_Intsbos_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet22_4LmAdd_mAdd_Intsbos_emitted <= 2'd0;
    else
      lizzieLet22_4LmAdd_mAdd_Intsbos_emitted <= (lizzieLet22_4LmAdd_mAdd_Intsbos_r ? 2'd0 :
                                                  lizzieLet22_4LmAdd_mAdd_Intsbos_done);
  
  /* togo (Ty Pointer_QTree_Int) : (lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1,Pointer_QTree_Int) > (call_mAdd_mAdd_Int_goConst,Go) */
  assign call_mAdd_mAdd_Int_goConst_d = lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_d[0];
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_1_r = call_mAdd_mAdd_Int_goConst_r;
  
  /* demux (Ty MyBool,
       Ty Go) : (lizzieLet3_1,MyBool) (arg0_1Dcon_isZ_3I#_3,Go) > [(lizzieLet3_1MyFalse,Go),
                                                                   (lizzieLet3_1MyTrue,Go)] */
  logic [1:0] \arg0_1Dcon_isZ_3I#_3_onehotd ;
  always_comb
    if ((lizzieLet3_1_d[0] && \arg0_1Dcon_isZ_3I#_3_d [0]))
      unique case (lizzieLet3_1_d[1:1])
        1'd0: \arg0_1Dcon_isZ_3I#_3_onehotd  = 2'd1;
        1'd1: \arg0_1Dcon_isZ_3I#_3_onehotd  = 2'd2;
        default: \arg0_1Dcon_isZ_3I#_3_onehotd  = 2'd0;
      endcase
    else \arg0_1Dcon_isZ_3I#_3_onehotd  = 2'd0;
  assign lizzieLet3_1MyFalse_d = \arg0_1Dcon_isZ_3I#_3_onehotd [0];
  assign lizzieLet3_1MyTrue_d = \arg0_1Dcon_isZ_3I#_3_onehotd [1];
  assign \arg0_1Dcon_isZ_3I#_3_r  = (| (\arg0_1Dcon_isZ_3I#_3_onehotd  & {lizzieLet3_1MyTrue_r,
                                                                          lizzieLet3_1MyFalse_r}));
  assign lizzieLet3_1_r = \arg0_1Dcon_isZ_3I#_3_r ;
  
  /* dcon (Ty MyBool,
      Dcon MyFalse) : [(lizzieLet3_1MyFalse,Go)] > (lizzieLet3_1MyFalse_1MyFalse,MyBool) */
  assign lizzieLet3_1MyFalse_1MyFalse_d = MyFalse_dc((& {lizzieLet3_1MyFalse_d[0]}), lizzieLet3_1MyFalse_d);
  assign {lizzieLet3_1MyFalse_r} = {1 {(lizzieLet3_1MyFalse_1MyFalse_r && lizzieLet3_1MyFalse_1MyFalse_d[0])}};
  
  /* buf (Ty MyBool) : (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux,MyBool) > (applyfnInt_Bool_5_resbuf,MyBool) */
  MyBool_t lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d;
  logic lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_r;
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_r = ((! lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d[0]) || lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d <= {1'd0,
                                                                                       1'd0};
    else
      if (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_r)
        lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d <= lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_d;
  MyBool_t lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf;
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_r = (! lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf[0]);
  assign applyfnInt_Bool_5_resbuf_d = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf[0] ? lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf :
                                       lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf <= {1'd0,
                                                                                         1'd0};
    else
      if ((applyfnInt_Bool_5_resbuf_r && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf[0]))
        lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf <= {1'd0,
                                                                                           1'd0};
      else if (((! applyfnInt_Bool_5_resbuf_r) && (! lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf[0])))
        lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_buf <= lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux_mux_bufchan_d;
  
  /* dcon (Ty MyBool,
      Dcon MyTrue) : [(lizzieLet3_1MyTrue,Go)] > (lizzieLet3_1MyTrue_1MyTrue,MyBool) */
  assign lizzieLet3_1MyTrue_1MyTrue_d = MyTrue_dc((& {lizzieLet3_1MyTrue_d[0]}), lizzieLet3_1MyTrue_d);
  assign {lizzieLet3_1MyTrue_r} = {1 {(lizzieLet3_1MyTrue_1MyTrue_r && lizzieLet3_1MyTrue_1MyTrue_d[0])}};
  
  /* mux (Ty MyBool,
     Ty MyBool) : (lizzieLet3_2,MyBool) [(lizzieLet3_1MyFalse_1MyFalse,MyBool),
                                         (lizzieLet3_1MyTrue_1MyTrue,MyBool)] > (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux,MyBool) */
  logic [1:0] lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux;
  logic [1:0] lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_onehot;
  always_comb
    unique case (lizzieLet3_2_d[1:1])
      1'd0:
        {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_onehot,
         lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux} = {2'd1,
                                                                            lizzieLet3_1MyFalse_1MyFalse_d};
      1'd1:
        {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_onehot,
         lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux} = {2'd2,
                                                                            lizzieLet3_1MyTrue_1MyTrue_d};
      default:
        {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_onehot,
         lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux} = {2'd0,
                                                                            {1'd0, 1'd0}};
    endcase
  assign lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d = {lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux[1:1],
                                                                         (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_mux[0] && lizzieLet3_2_d[0])};
  assign lizzieLet3_2_r = (lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_d[0] && lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_r);
  assign {lizzieLet3_1MyTrue_1MyTrue_r,
          lizzieLet3_1MyFalse_1MyFalse_r} = (lizzieLet3_2_r ? lizzieLet3_1MyFalse_1MyFalselizzieLet3_1MyTrue_1MyTrue_mux_onehot :
                                             2'd0);
  
  /* destruct (Ty QTree_Int,
          Dcon QNode_Int) : (lizzieLet4_1QNode_Int,QTree_Int) > [(q1a8v_destruct,Pointer_QTree_Int),
                                                                 (q2a8w_destruct,Pointer_QTree_Int),
                                                                 (q3a8x_destruct,Pointer_QTree_Int),
                                                                 (q4a8y_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet4_1QNode_Int_emitted;
  logic [3:0] lizzieLet4_1QNode_Int_done;
  assign q1a8v_destruct_d = {lizzieLet4_1QNode_Int_d[18:3],
                             (lizzieLet4_1QNode_Int_d[0] && (! lizzieLet4_1QNode_Int_emitted[0]))};
  assign q2a8w_destruct_d = {lizzieLet4_1QNode_Int_d[34:19],
                             (lizzieLet4_1QNode_Int_d[0] && (! lizzieLet4_1QNode_Int_emitted[1]))};
  assign q3a8x_destruct_d = {lizzieLet4_1QNode_Int_d[50:35],
                             (lizzieLet4_1QNode_Int_d[0] && (! lizzieLet4_1QNode_Int_emitted[2]))};
  assign q4a8y_destruct_d = {lizzieLet4_1QNode_Int_d[66:51],
                             (lizzieLet4_1QNode_Int_d[0] && (! lizzieLet4_1QNode_Int_emitted[3]))};
  assign lizzieLet4_1QNode_Int_done = (lizzieLet4_1QNode_Int_emitted | ({q4a8y_destruct_d[0],
                                                                         q3a8x_destruct_d[0],
                                                                         q2a8w_destruct_d[0],
                                                                         q1a8v_destruct_d[0]} & {q4a8y_destruct_r,
                                                                                                 q3a8x_destruct_r,
                                                                                                 q2a8w_destruct_r,
                                                                                                 q1a8v_destruct_r}));
  assign lizzieLet4_1QNode_Int_r = (& lizzieLet4_1QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_1QNode_Int_emitted <= 4'd0;
    else
      lizzieLet4_1QNode_Int_emitted <= (lizzieLet4_1QNode_Int_r ? 4'd0 :
                                        lizzieLet4_1QNode_Int_done);
  
  /* demux (Ty QTree_Int,
       Ty QTree_Int) : (lizzieLet4_2,QTree_Int) (lizzieLet4_1,QTree_Int) > [(_54,QTree_Int),
                                                                            (_53,QTree_Int),
                                                                            (lizzieLet4_1QNode_Int,QTree_Int),
                                                                            (_52,QTree_Int)] */
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
  assign _54_d = {lizzieLet4_1_d[66:1], lizzieLet4_1_onehotd[0]};
  assign _53_d = {lizzieLet4_1_d[66:1], lizzieLet4_1_onehotd[1]};
  assign lizzieLet4_1QNode_Int_d = {lizzieLet4_1_d[66:1],
                                    lizzieLet4_1_onehotd[2]};
  assign _52_d = {lizzieLet4_1_d[66:1], lizzieLet4_1_onehotd[3]};
  assign lizzieLet4_1_r = (| (lizzieLet4_1_onehotd & {_52_r,
                                                      lizzieLet4_1QNode_Int_r,
                                                      _53_r,
                                                      _54_r}));
  assign lizzieLet4_2_r = lizzieLet4_1_r;
  
  /* demux (Ty QTree_Int,
       Ty Go) : (lizzieLet4_3,QTree_Int) (go_9_goMux_data,Go) > [(lizzieLet4_3QNone_Int,Go),
                                                                 (lizzieLet4_3QVal_Int,Go),
                                                                 (lizzieLet4_3QNode_Int,Go),
                                                                 (lizzieLet4_3QError_Int,Go)] */
  logic [3:0] go_9_goMux_data_onehotd;
  always_comb
    if ((lizzieLet4_3_d[0] && go_9_goMux_data_d[0]))
      unique case (lizzieLet4_3_d[2:1])
        2'd0: go_9_goMux_data_onehotd = 4'd1;
        2'd1: go_9_goMux_data_onehotd = 4'd2;
        2'd2: go_9_goMux_data_onehotd = 4'd4;
        2'd3: go_9_goMux_data_onehotd = 4'd8;
        default: go_9_goMux_data_onehotd = 4'd0;
      endcase
    else go_9_goMux_data_onehotd = 4'd0;
  assign lizzieLet4_3QNone_Int_d = go_9_goMux_data_onehotd[0];
  assign lizzieLet4_3QVal_Int_d = go_9_goMux_data_onehotd[1];
  assign lizzieLet4_3QNode_Int_d = go_9_goMux_data_onehotd[2];
  assign lizzieLet4_3QError_Int_d = go_9_goMux_data_onehotd[3];
  assign go_9_goMux_data_r = (| (go_9_goMux_data_onehotd & {lizzieLet4_3QError_Int_r,
                                                            lizzieLet4_3QNode_Int_r,
                                                            lizzieLet4_3QVal_Int_r,
                                                            lizzieLet4_3QNone_Int_r}));
  assign lizzieLet4_3_r = go_9_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet4_3QError_Int,Go) > [(lizzieLet4_3QError_Int_1,Go),
                                              (lizzieLet4_3QError_Int_2,Go)] */
  logic [1:0] lizzieLet4_3QError_Int_emitted;
  logic [1:0] lizzieLet4_3QError_Int_done;
  assign lizzieLet4_3QError_Int_1_d = (lizzieLet4_3QError_Int_d[0] && (! lizzieLet4_3QError_Int_emitted[0]));
  assign lizzieLet4_3QError_Int_2_d = (lizzieLet4_3QError_Int_d[0] && (! lizzieLet4_3QError_Int_emitted[1]));
  assign lizzieLet4_3QError_Int_done = (lizzieLet4_3QError_Int_emitted | ({lizzieLet4_3QError_Int_2_d[0],
                                                                           lizzieLet4_3QError_Int_1_d[0]} & {lizzieLet4_3QError_Int_2_r,
                                                                                                             lizzieLet4_3QError_Int_1_r}));
  assign lizzieLet4_3QError_Int_r = (& lizzieLet4_3QError_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Int_emitted <= 2'd0;
    else
      lizzieLet4_3QError_Int_emitted <= (lizzieLet4_3QError_Int_r ? 2'd0 :
                                         lizzieLet4_3QError_Int_done);
  
  /* buf (Ty Go) : (lizzieLet4_3QError_Int_1,Go) > (lizzieLet4_3QError_Int_1_argbuf,Go) */
  Go_t lizzieLet4_3QError_Int_1_bufchan_d;
  logic lizzieLet4_3QError_Int_1_bufchan_r;
  assign lizzieLet4_3QError_Int_1_r = ((! lizzieLet4_3QError_Int_1_bufchan_d[0]) || lizzieLet4_3QError_Int_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Int_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QError_Int_1_r)
        lizzieLet4_3QError_Int_1_bufchan_d <= lizzieLet4_3QError_Int_1_d;
  Go_t lizzieLet4_3QError_Int_1_bufchan_buf;
  assign lizzieLet4_3QError_Int_1_bufchan_r = (! lizzieLet4_3QError_Int_1_bufchan_buf[0]);
  assign lizzieLet4_3QError_Int_1_argbuf_d = (lizzieLet4_3QError_Int_1_bufchan_buf[0] ? lizzieLet4_3QError_Int_1_bufchan_buf :
                                              lizzieLet4_3QError_Int_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Int_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QError_Int_1_argbuf_r && lizzieLet4_3QError_Int_1_bufchan_buf[0]))
        lizzieLet4_3QError_Int_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QError_Int_1_argbuf_r) && (! lizzieLet4_3QError_Int_1_bufchan_buf[0])))
        lizzieLet4_3QError_Int_1_bufchan_buf <= lizzieLet4_3QError_Int_1_bufchan_d;
  
  /* const (Ty Int#,
       Lit 0) : (lizzieLet4_3QError_Int_1_argbuf,Go) > (lizzieLet4_3QError_Int_1_argbuf_0,Int#) */
  assign lizzieLet4_3QError_Int_1_argbuf_0_d = {32'd0,
                                                lizzieLet4_3QError_Int_1_argbuf_d[0]};
  assign lizzieLet4_3QError_Int_1_argbuf_r = lizzieLet4_3QError_Int_1_argbuf_0_r;
  
  /* buf (Ty Int#) : (lizzieLet4_3QError_Int_1_argbuf_0,Int#) > (lizzieLet8_1_1_argbuf,Int#) */
  \Int#_t  lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d;
  logic lizzieLet4_3QError_Int_1_argbuf_0_bufchan_r;
  assign lizzieLet4_3QError_Int_1_argbuf_0_r = ((! lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d[0]) || lizzieLet4_3QError_Int_1_argbuf_0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d <= {32'd0, 1'd0};
    else
      if (lizzieLet4_3QError_Int_1_argbuf_0_r)
        lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d <= lizzieLet4_3QError_Int_1_argbuf_0_d;
  \Int#_t  lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf;
  assign lizzieLet4_3QError_Int_1_argbuf_0_bufchan_r = (! lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf[0]);
  assign lizzieLet8_1_1_argbuf_d = (lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf[0] ? lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf :
                                    lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((lizzieLet8_1_1_argbuf_r && lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf[0]))
        lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf <= {32'd0, 1'd0};
      else if (((! lizzieLet8_1_1_argbuf_r) && (! lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf[0])))
        lizzieLet4_3QError_Int_1_argbuf_0_bufchan_buf <= lizzieLet4_3QError_Int_1_argbuf_0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QError_Int_2,Go) > (lizzieLet4_3QError_Int_2_argbuf,Go) */
  Go_t lizzieLet4_3QError_Int_2_bufchan_d;
  logic lizzieLet4_3QError_Int_2_bufchan_r;
  assign lizzieLet4_3QError_Int_2_r = ((! lizzieLet4_3QError_Int_2_bufchan_d[0]) || lizzieLet4_3QError_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QError_Int_2_r)
        lizzieLet4_3QError_Int_2_bufchan_d <= lizzieLet4_3QError_Int_2_d;
  Go_t lizzieLet4_3QError_Int_2_bufchan_buf;
  assign lizzieLet4_3QError_Int_2_bufchan_r = (! lizzieLet4_3QError_Int_2_bufchan_buf[0]);
  assign lizzieLet4_3QError_Int_2_argbuf_d = (lizzieLet4_3QError_Int_2_bufchan_buf[0] ? lizzieLet4_3QError_Int_2_bufchan_buf :
                                              lizzieLet4_3QError_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QError_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QError_Int_2_argbuf_r && lizzieLet4_3QError_Int_2_bufchan_buf[0]))
        lizzieLet4_3QError_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QError_Int_2_argbuf_r) && (! lizzieLet4_3QError_Int_2_bufchan_buf[0])))
        lizzieLet4_3QError_Int_2_bufchan_buf <= lizzieLet4_3QError_Int_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QNode_Int,Go) > (lizzieLet4_3QNode_Int_1_argbuf,Go) */
  Go_t lizzieLet4_3QNode_Int_bufchan_d;
  logic lizzieLet4_3QNode_Int_bufchan_r;
  assign lizzieLet4_3QNode_Int_r = ((! lizzieLet4_3QNode_Int_bufchan_d[0]) || lizzieLet4_3QNode_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNode_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QNode_Int_r)
        lizzieLet4_3QNode_Int_bufchan_d <= lizzieLet4_3QNode_Int_d;
  Go_t lizzieLet4_3QNode_Int_bufchan_buf;
  assign lizzieLet4_3QNode_Int_bufchan_r = (! lizzieLet4_3QNode_Int_bufchan_buf[0]);
  assign lizzieLet4_3QNode_Int_1_argbuf_d = (lizzieLet4_3QNode_Int_bufchan_buf[0] ? lizzieLet4_3QNode_Int_bufchan_buf :
                                             lizzieLet4_3QNode_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNode_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QNode_Int_1_argbuf_r && lizzieLet4_3QNode_Int_bufchan_buf[0]))
        lizzieLet4_3QNode_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QNode_Int_1_argbuf_r) && (! lizzieLet4_3QNode_Int_bufchan_buf[0])))
        lizzieLet4_3QNode_Int_bufchan_buf <= lizzieLet4_3QNode_Int_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet4_3QNone_Int,Go) > [(lizzieLet4_3QNone_Int_1,Go),
                                             (lizzieLet4_3QNone_Int_2,Go)] */
  logic [1:0] lizzieLet4_3QNone_Int_emitted;
  logic [1:0] lizzieLet4_3QNone_Int_done;
  assign lizzieLet4_3QNone_Int_1_d = (lizzieLet4_3QNone_Int_d[0] && (! lizzieLet4_3QNone_Int_emitted[0]));
  assign lizzieLet4_3QNone_Int_2_d = (lizzieLet4_3QNone_Int_d[0] && (! lizzieLet4_3QNone_Int_emitted[1]));
  assign lizzieLet4_3QNone_Int_done = (lizzieLet4_3QNone_Int_emitted | ({lizzieLet4_3QNone_Int_2_d[0],
                                                                         lizzieLet4_3QNone_Int_1_d[0]} & {lizzieLet4_3QNone_Int_2_r,
                                                                                                          lizzieLet4_3QNone_Int_1_r}));
  assign lizzieLet4_3QNone_Int_r = (& lizzieLet4_3QNone_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_emitted <= 2'd0;
    else
      lizzieLet4_3QNone_Int_emitted <= (lizzieLet4_3QNone_Int_r ? 2'd0 :
                                        lizzieLet4_3QNone_Int_done);
  
  /* buf (Ty Go) : (lizzieLet4_3QNone_Int_1,Go) > (lizzieLet4_3QNone_Int_1_argbuf,Go) */
  Go_t lizzieLet4_3QNone_Int_1_bufchan_d;
  logic lizzieLet4_3QNone_Int_1_bufchan_r;
  assign lizzieLet4_3QNone_Int_1_r = ((! lizzieLet4_3QNone_Int_1_bufchan_d[0]) || lizzieLet4_3QNone_Int_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QNone_Int_1_r)
        lizzieLet4_3QNone_Int_1_bufchan_d <= lizzieLet4_3QNone_Int_1_d;
  Go_t lizzieLet4_3QNone_Int_1_bufchan_buf;
  assign lizzieLet4_3QNone_Int_1_bufchan_r = (! lizzieLet4_3QNone_Int_1_bufchan_buf[0]);
  assign lizzieLet4_3QNone_Int_1_argbuf_d = (lizzieLet4_3QNone_Int_1_bufchan_buf[0] ? lizzieLet4_3QNone_Int_1_bufchan_buf :
                                             lizzieLet4_3QNone_Int_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QNone_Int_1_argbuf_r && lizzieLet4_3QNone_Int_1_bufchan_buf[0]))
        lizzieLet4_3QNone_Int_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QNone_Int_1_argbuf_r) && (! lizzieLet4_3QNone_Int_1_bufchan_buf[0])))
        lizzieLet4_3QNone_Int_1_bufchan_buf <= lizzieLet4_3QNone_Int_1_bufchan_d;
  
  /* const (Ty Int#,
       Lit 0) : (lizzieLet4_3QNone_Int_1_argbuf,Go) > (lizzieLet4_3QNone_Int_1_argbuf_0,Int#) */
  assign lizzieLet4_3QNone_Int_1_argbuf_0_d = {32'd0,
                                               lizzieLet4_3QNone_Int_1_argbuf_d[0]};
  assign lizzieLet4_3QNone_Int_1_argbuf_r = lizzieLet4_3QNone_Int_1_argbuf_0_r;
  
  /* buf (Ty Int#) : (lizzieLet4_3QNone_Int_1_argbuf_0,Int#) > (lizzieLet8_1_argbuf,Int#) */
  \Int#_t  lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d;
  logic lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_r;
  assign lizzieLet4_3QNone_Int_1_argbuf_0_r = ((! lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d[0]) || lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d <= {32'd0, 1'd0};
    else
      if (lizzieLet4_3QNone_Int_1_argbuf_0_r)
        lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d <= lizzieLet4_3QNone_Int_1_argbuf_0_d;
  \Int#_t  lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf;
  assign lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_r = (! lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf[0]);
  assign lizzieLet8_1_argbuf_d = (lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf[0] ? lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf :
                                  lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((lizzieLet8_1_argbuf_r && lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf[0]))
        lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf <= {32'd0, 1'd0};
      else if (((! lizzieLet8_1_argbuf_r) && (! lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf[0])))
        lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_buf <= lizzieLet4_3QNone_Int_1_argbuf_0_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QNone_Int_2,Go) > (lizzieLet4_3QNone_Int_2_argbuf,Go) */
  Go_t lizzieLet4_3QNone_Int_2_bufchan_d;
  logic lizzieLet4_3QNone_Int_2_bufchan_r;
  assign lizzieLet4_3QNone_Int_2_r = ((! lizzieLet4_3QNone_Int_2_bufchan_d[0]) || lizzieLet4_3QNone_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QNone_Int_2_r)
        lizzieLet4_3QNone_Int_2_bufchan_d <= lizzieLet4_3QNone_Int_2_d;
  Go_t lizzieLet4_3QNone_Int_2_bufchan_buf;
  assign lizzieLet4_3QNone_Int_2_bufchan_r = (! lizzieLet4_3QNone_Int_2_bufchan_buf[0]);
  assign lizzieLet4_3QNone_Int_2_argbuf_d = (lizzieLet4_3QNone_Int_2_bufchan_buf[0] ? lizzieLet4_3QNone_Int_2_bufchan_buf :
                                             lizzieLet4_3QNone_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QNone_Int_2_argbuf_r && lizzieLet4_3QNone_Int_2_bufchan_buf[0]))
        lizzieLet4_3QNone_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QNone_Int_2_argbuf_r) && (! lizzieLet4_3QNone_Int_2_bufchan_buf[0])))
        lizzieLet4_3QNone_Int_2_bufchan_buf <= lizzieLet4_3QNone_Int_2_bufchan_d;
  
  /* mergectrl (Ty C4,Ty Go) : [(lizzieLet4_3QNone_Int_2_argbuf,Go),
                           (lizzieLet18_3Lcall_$wnnz0_1_argbuf,Go),
                           (lizzieLet4_3QVal_Int_2_argbuf,Go),
                           (lizzieLet4_3QError_Int_2_argbuf,Go)] > (go_12_goMux_choice,C4) (go_12_goMux_data,Go) */
  logic [3:0] lizzieLet4_3QNone_Int_2_argbuf_select_d;
  assign lizzieLet4_3QNone_Int_2_argbuf_select_d = ((| lizzieLet4_3QNone_Int_2_argbuf_select_q) ? lizzieLet4_3QNone_Int_2_argbuf_select_q :
                                                    (lizzieLet4_3QNone_Int_2_argbuf_d[0] ? 4'd1 :
                                                     (lizzieLet18_3Lcall_$wnnz0_1_argbuf_d[0] ? 4'd2 :
                                                      (lizzieLet4_3QVal_Int_2_argbuf_d[0] ? 4'd4 :
                                                       (lizzieLet4_3QError_Int_2_argbuf_d[0] ? 4'd8 :
                                                        4'd0)))));
  logic [3:0] lizzieLet4_3QNone_Int_2_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QNone_Int_2_argbuf_select_q <= 4'd0;
    else
      lizzieLet4_3QNone_Int_2_argbuf_select_q <= (lizzieLet4_3QNone_Int_2_argbuf_done ? 4'd0 :
                                                  lizzieLet4_3QNone_Int_2_argbuf_select_d);
  logic [1:0] lizzieLet4_3QNone_Int_2_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QNone_Int_2_argbuf_emit_q <= 2'd0;
    else
      lizzieLet4_3QNone_Int_2_argbuf_emit_q <= (lizzieLet4_3QNone_Int_2_argbuf_done ? 2'd0 :
                                                lizzieLet4_3QNone_Int_2_argbuf_emit_d);
  logic [1:0] lizzieLet4_3QNone_Int_2_argbuf_emit_d;
  assign lizzieLet4_3QNone_Int_2_argbuf_emit_d = (lizzieLet4_3QNone_Int_2_argbuf_emit_q | ({go_12_goMux_choice_d[0],
                                                                                            go_12_goMux_data_d[0]} & {go_12_goMux_choice_r,
                                                                                                                      go_12_goMux_data_r}));
  logic lizzieLet4_3QNone_Int_2_argbuf_done;
  assign lizzieLet4_3QNone_Int_2_argbuf_done = (& lizzieLet4_3QNone_Int_2_argbuf_emit_d);
  assign {lizzieLet4_3QError_Int_2_argbuf_r,
          lizzieLet4_3QVal_Int_2_argbuf_r,
          lizzieLet18_3Lcall_$wnnz0_1_argbuf_r,
          lizzieLet4_3QNone_Int_2_argbuf_r} = (lizzieLet4_3QNone_Int_2_argbuf_done ? lizzieLet4_3QNone_Int_2_argbuf_select_d :
                                               4'd0);
  assign go_12_goMux_data_d = ((lizzieLet4_3QNone_Int_2_argbuf_select_d[0] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[0])) ? lizzieLet4_3QNone_Int_2_argbuf_d :
                               ((lizzieLet4_3QNone_Int_2_argbuf_select_d[1] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[0])) ? lizzieLet18_3Lcall_$wnnz0_1_argbuf_d :
                                ((lizzieLet4_3QNone_Int_2_argbuf_select_d[2] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[0])) ? lizzieLet4_3QVal_Int_2_argbuf_d :
                                 ((lizzieLet4_3QNone_Int_2_argbuf_select_d[3] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[0])) ? lizzieLet4_3QError_Int_2_argbuf_d :
                                  1'd0))));
  assign go_12_goMux_choice_d = ((lizzieLet4_3QNone_Int_2_argbuf_select_d[0] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[1])) ? C1_4_dc(1'd1) :
                                 ((lizzieLet4_3QNone_Int_2_argbuf_select_d[1] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[1])) ? C2_4_dc(1'd1) :
                                  ((lizzieLet4_3QNone_Int_2_argbuf_select_d[2] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[1])) ? C3_4_dc(1'd1) :
                                   ((lizzieLet4_3QNone_Int_2_argbuf_select_d[3] && (! lizzieLet4_3QNone_Int_2_argbuf_emit_q[1])) ? C4_4_dc(1'd1) :
                                    {2'd0, 1'd0}))));
  
  /* fork (Ty Go) : (lizzieLet4_3QVal_Int,Go) > [(lizzieLet4_3QVal_Int_1,Go),
                                            (lizzieLet4_3QVal_Int_2,Go)] */
  logic [1:0] lizzieLet4_3QVal_Int_emitted;
  logic [1:0] lizzieLet4_3QVal_Int_done;
  assign lizzieLet4_3QVal_Int_1_d = (lizzieLet4_3QVal_Int_d[0] && (! lizzieLet4_3QVal_Int_emitted[0]));
  assign lizzieLet4_3QVal_Int_2_d = (lizzieLet4_3QVal_Int_d[0] && (! lizzieLet4_3QVal_Int_emitted[1]));
  assign lizzieLet4_3QVal_Int_done = (lizzieLet4_3QVal_Int_emitted | ({lizzieLet4_3QVal_Int_2_d[0],
                                                                       lizzieLet4_3QVal_Int_1_d[0]} & {lizzieLet4_3QVal_Int_2_r,
                                                                                                       lizzieLet4_3QVal_Int_1_r}));
  assign lizzieLet4_3QVal_Int_r = (& lizzieLet4_3QVal_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QVal_Int_emitted <= 2'd0;
    else
      lizzieLet4_3QVal_Int_emitted <= (lizzieLet4_3QVal_Int_r ? 2'd0 :
                                       lizzieLet4_3QVal_Int_done);
  
  /* buf (Ty Go) : (lizzieLet4_3QVal_Int_1,Go) > (lizzieLet4_3QVal_Int_1_argbuf,Go) */
  Go_t lizzieLet4_3QVal_Int_1_bufchan_d;
  logic lizzieLet4_3QVal_Int_1_bufchan_r;
  assign lizzieLet4_3QVal_Int_1_r = ((! lizzieLet4_3QVal_Int_1_bufchan_d[0]) || lizzieLet4_3QVal_Int_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QVal_Int_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QVal_Int_1_r)
        lizzieLet4_3QVal_Int_1_bufchan_d <= lizzieLet4_3QVal_Int_1_d;
  Go_t lizzieLet4_3QVal_Int_1_bufchan_buf;
  assign lizzieLet4_3QVal_Int_1_bufchan_r = (! lizzieLet4_3QVal_Int_1_bufchan_buf[0]);
  assign lizzieLet4_3QVal_Int_1_argbuf_d = (lizzieLet4_3QVal_Int_1_bufchan_buf[0] ? lizzieLet4_3QVal_Int_1_bufchan_buf :
                                            lizzieLet4_3QVal_Int_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QVal_Int_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QVal_Int_1_argbuf_r && lizzieLet4_3QVal_Int_1_bufchan_buf[0]))
        lizzieLet4_3QVal_Int_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QVal_Int_1_argbuf_r) && (! lizzieLet4_3QVal_Int_1_bufchan_buf[0])))
        lizzieLet4_3QVal_Int_1_bufchan_buf <= lizzieLet4_3QVal_Int_1_bufchan_d;
  
  /* const (Ty Int#,
       Lit 1) : (lizzieLet4_3QVal_Int_1_argbuf,Go) > (lizzieLet4_3QVal_Int_1_argbuf_1,Int#) */
  assign lizzieLet4_3QVal_Int_1_argbuf_1_d = {32'd1,
                                              lizzieLet4_3QVal_Int_1_argbuf_d[0]};
  assign lizzieLet4_3QVal_Int_1_argbuf_r = lizzieLet4_3QVal_Int_1_argbuf_1_r;
  
  /* buf (Ty Int#) : (lizzieLet4_3QVal_Int_1_argbuf_1,Int#) > (lizzieLet9_1_argbuf,Int#) */
  \Int#_t  lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d;
  logic lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_r;
  assign lizzieLet4_3QVal_Int_1_argbuf_1_r = ((! lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d[0]) || lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d <= {32'd0, 1'd0};
    else
      if (lizzieLet4_3QVal_Int_1_argbuf_1_r)
        lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d <= lizzieLet4_3QVal_Int_1_argbuf_1_d;
  \Int#_t  lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf;
  assign lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_r = (! lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf[0]);
  assign lizzieLet9_1_argbuf_d = (lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf[0] ? lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf :
                                  lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((lizzieLet9_1_argbuf_r && lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf[0]))
        lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf <= {32'd0, 1'd0};
      else if (((! lizzieLet9_1_argbuf_r) && (! lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf[0])))
        lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_buf <= lizzieLet4_3QVal_Int_1_argbuf_1_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet4_3QVal_Int_2,Go) > (lizzieLet4_3QVal_Int_2_argbuf,Go) */
  Go_t lizzieLet4_3QVal_Int_2_bufchan_d;
  logic lizzieLet4_3QVal_Int_2_bufchan_r;
  assign lizzieLet4_3QVal_Int_2_r = ((! lizzieLet4_3QVal_Int_2_bufchan_d[0]) || lizzieLet4_3QVal_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QVal_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet4_3QVal_Int_2_r)
        lizzieLet4_3QVal_Int_2_bufchan_d <= lizzieLet4_3QVal_Int_2_d;
  Go_t lizzieLet4_3QVal_Int_2_bufchan_buf;
  assign lizzieLet4_3QVal_Int_2_bufchan_r = (! lizzieLet4_3QVal_Int_2_bufchan_buf[0]);
  assign lizzieLet4_3QVal_Int_2_argbuf_d = (lizzieLet4_3QVal_Int_2_bufchan_buf[0] ? lizzieLet4_3QVal_Int_2_bufchan_buf :
                                            lizzieLet4_3QVal_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet4_3QVal_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet4_3QVal_Int_2_argbuf_r && lizzieLet4_3QVal_Int_2_bufchan_buf[0]))
        lizzieLet4_3QVal_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet4_3QVal_Int_2_argbuf_r) && (! lizzieLet4_3QVal_Int_2_bufchan_buf[0])))
        lizzieLet4_3QVal_Int_2_bufchan_buf <= lizzieLet4_3QVal_Int_2_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_CT$wnnz) : (lizzieLet4_4,QTree_Int) (sc_0_goMux_mux,Pointer_CT$wnnz) > [(lizzieLet4_4QNone_Int,Pointer_CT$wnnz),
                                                                                          (lizzieLet4_4QVal_Int,Pointer_CT$wnnz),
                                                                                          (lizzieLet4_4QNode_Int,Pointer_CT$wnnz),
                                                                                          (lizzieLet4_4QError_Int,Pointer_CT$wnnz)] */
  logic [3:0] sc_0_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet4_4_d[0] && sc_0_goMux_mux_d[0]))
      unique case (lizzieLet4_4_d[2:1])
        2'd0: sc_0_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_goMux_mux_onehotd = 4'd8;
        default: sc_0_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_goMux_mux_onehotd = 4'd0;
  assign lizzieLet4_4QNone_Int_d = {sc_0_goMux_mux_d[16:1],
                                    sc_0_goMux_mux_onehotd[0]};
  assign lizzieLet4_4QVal_Int_d = {sc_0_goMux_mux_d[16:1],
                                   sc_0_goMux_mux_onehotd[1]};
  assign lizzieLet4_4QNode_Int_d = {sc_0_goMux_mux_d[16:1],
                                    sc_0_goMux_mux_onehotd[2]};
  assign lizzieLet4_4QError_Int_d = {sc_0_goMux_mux_d[16:1],
                                     sc_0_goMux_mux_onehotd[3]};
  assign sc_0_goMux_mux_r = (| (sc_0_goMux_mux_onehotd & {lizzieLet4_4QError_Int_r,
                                                          lizzieLet4_4QNode_Int_r,
                                                          lizzieLet4_4QVal_Int_r,
                                                          lizzieLet4_4QNone_Int_r}));
  assign lizzieLet4_4_r = sc_0_goMux_mux_r;
  
  /* buf (Ty Pointer_CT$wnnz) : (lizzieLet4_4QError_Int,Pointer_CT$wnnz) > (lizzieLet4_4QError_Int_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t lizzieLet4_4QError_Int_bufchan_d;
  logic lizzieLet4_4QError_Int_bufchan_r;
  assign lizzieLet4_4QError_Int_r = ((! lizzieLet4_4QError_Int_bufchan_d[0]) || lizzieLet4_4QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QError_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_4QError_Int_r)
        lizzieLet4_4QError_Int_bufchan_d <= lizzieLet4_4QError_Int_d;
  Pointer_CT$wnnz_t lizzieLet4_4QError_Int_bufchan_buf;
  assign lizzieLet4_4QError_Int_bufchan_r = (! lizzieLet4_4QError_Int_bufchan_buf[0]);
  assign lizzieLet4_4QError_Int_1_argbuf_d = (lizzieLet4_4QError_Int_bufchan_buf[0] ? lizzieLet4_4QError_Int_bufchan_buf :
                                              lizzieLet4_4QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QError_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_4QError_Int_1_argbuf_r && lizzieLet4_4QError_Int_bufchan_buf[0]))
        lizzieLet4_4QError_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_4QError_Int_1_argbuf_r) && (! lizzieLet4_4QError_Int_bufchan_buf[0])))
        lizzieLet4_4QError_Int_bufchan_buf <= lizzieLet4_4QError_Int_bufchan_d;
  
  /* dcon (Ty CT$wnnz,
      Dcon Lcall_$wnnz3) : [(lizzieLet4_4QNode_Int,Pointer_CT$wnnz),
                            (q4a8y_destruct,Pointer_QTree_Int),
                            (q3a8x_destruct,Pointer_QTree_Int),
                            (q2a8w_destruct,Pointer_QTree_Int)] > (lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3,CT$wnnz) */
  assign lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_d = Lcall_$wnnz3_dc((& {lizzieLet4_4QNode_Int_d[0],
                                                                                          q4a8y_destruct_d[0],
                                                                                          q3a8x_destruct_d[0],
                                                                                          q2a8w_destruct_d[0]}), lizzieLet4_4QNode_Int_d, q4a8y_destruct_d, q3a8x_destruct_d, q2a8w_destruct_d);
  assign {lizzieLet4_4QNode_Int_r,
          q4a8y_destruct_r,
          q3a8x_destruct_r,
          q2a8w_destruct_r} = {4 {(lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_r && lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_d[0])}};
  
  /* buf (Ty CT$wnnz) : (lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3,CT$wnnz) > (lizzieLet5_1_argbuf,CT$wnnz) */
  CT$wnnz_t lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d;
  logic lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_r;
  assign lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_r = ((! lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d[0]) || lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d <= {115'd0,
                                                                             1'd0};
    else
      if (lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_r)
        lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d <= lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_d;
  CT$wnnz_t lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf;
  assign lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_r = (! lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf[0]);
  assign lizzieLet5_1_argbuf_d = (lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf[0] ? lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf :
                                  lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf <= {115'd0,
                                                                               1'd0};
    else
      if ((lizzieLet5_1_argbuf_r && lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf[0]))
        lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf <= {115'd0,
                                                                                 1'd0};
      else if (((! lizzieLet5_1_argbuf_r) && (! lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf[0])))
        lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_buf <= lizzieLet4_4QNode_Int_1q4a8y_1q3a8x_1q2a8w_1Lcall_$wnnz3_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (lizzieLet4_4QNone_Int,Pointer_CT$wnnz) > (lizzieLet4_4QNone_Int_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t lizzieLet4_4QNone_Int_bufchan_d;
  logic lizzieLet4_4QNone_Int_bufchan_r;
  assign lizzieLet4_4QNone_Int_r = ((! lizzieLet4_4QNone_Int_bufchan_d[0]) || lizzieLet4_4QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_4QNone_Int_r)
        lizzieLet4_4QNone_Int_bufchan_d <= lizzieLet4_4QNone_Int_d;
  Pointer_CT$wnnz_t lizzieLet4_4QNone_Int_bufchan_buf;
  assign lizzieLet4_4QNone_Int_bufchan_r = (! lizzieLet4_4QNone_Int_bufchan_buf[0]);
  assign lizzieLet4_4QNone_Int_1_argbuf_d = (lizzieLet4_4QNone_Int_bufchan_buf[0] ? lizzieLet4_4QNone_Int_bufchan_buf :
                                             lizzieLet4_4QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_4QNone_Int_1_argbuf_r && lizzieLet4_4QNone_Int_bufchan_buf[0]))
        lizzieLet4_4QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_4QNone_Int_1_argbuf_r) && (! lizzieLet4_4QNone_Int_bufchan_buf[0])))
        lizzieLet4_4QNone_Int_bufchan_buf <= lizzieLet4_4QNone_Int_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (lizzieLet4_4QVal_Int,Pointer_CT$wnnz) > (lizzieLet4_4QVal_Int_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t lizzieLet4_4QVal_Int_bufchan_d;
  logic lizzieLet4_4QVal_Int_bufchan_r;
  assign lizzieLet4_4QVal_Int_r = ((! lizzieLet4_4QVal_Int_bufchan_d[0]) || lizzieLet4_4QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QVal_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet4_4QVal_Int_r)
        lizzieLet4_4QVal_Int_bufchan_d <= lizzieLet4_4QVal_Int_d;
  Pointer_CT$wnnz_t lizzieLet4_4QVal_Int_bufchan_buf;
  assign lizzieLet4_4QVal_Int_bufchan_r = (! lizzieLet4_4QVal_Int_bufchan_buf[0]);
  assign lizzieLet4_4QVal_Int_1_argbuf_d = (lizzieLet4_4QVal_Int_bufchan_buf[0] ? lizzieLet4_4QVal_Int_bufchan_buf :
                                            lizzieLet4_4QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet4_4QVal_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet4_4QVal_Int_1_argbuf_r && lizzieLet4_4QVal_Int_bufchan_buf[0]))
        lizzieLet4_4QVal_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet4_4QVal_Int_1_argbuf_r) && (! lizzieLet4_4QVal_Int_bufchan_buf[0])))
        lizzieLet4_4QVal_Int_bufchan_buf <= lizzieLet4_4QVal_Int_bufchan_d;
  
  /* destruct (Ty QTree_Int,
          Dcon QNode_Int) : (lizzieLet6_1QNode_Int,QTree_Int) > [(q1a8l_destruct,Pointer_QTree_Int),
                                                                 (q2a8m_destruct,Pointer_QTree_Int),
                                                                 (q3a8n_destruct,Pointer_QTree_Int),
                                                                 (q4a8o_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet6_1QNode_Int_emitted;
  logic [3:0] lizzieLet6_1QNode_Int_done;
  assign q1a8l_destruct_d = {lizzieLet6_1QNode_Int_d[18:3],
                             (lizzieLet6_1QNode_Int_d[0] && (! lizzieLet6_1QNode_Int_emitted[0]))};
  assign q2a8m_destruct_d = {lizzieLet6_1QNode_Int_d[34:19],
                             (lizzieLet6_1QNode_Int_d[0] && (! lizzieLet6_1QNode_Int_emitted[1]))};
  assign q3a8n_destruct_d = {lizzieLet6_1QNode_Int_d[50:35],
                             (lizzieLet6_1QNode_Int_d[0] && (! lizzieLet6_1QNode_Int_emitted[2]))};
  assign q4a8o_destruct_d = {lizzieLet6_1QNode_Int_d[66:51],
                             (lizzieLet6_1QNode_Int_d[0] && (! lizzieLet6_1QNode_Int_emitted[3]))};
  assign lizzieLet6_1QNode_Int_done = (lizzieLet6_1QNode_Int_emitted | ({q4a8o_destruct_d[0],
                                                                         q3a8n_destruct_d[0],
                                                                         q2a8m_destruct_d[0],
                                                                         q1a8l_destruct_d[0]} & {q4a8o_destruct_r,
                                                                                                 q3a8n_destruct_r,
                                                                                                 q2a8m_destruct_r,
                                                                                                 q1a8l_destruct_r}));
  assign lizzieLet6_1QNode_Int_r = (& lizzieLet6_1QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_1QNode_Int_emitted <= 4'd0;
    else
      lizzieLet6_1QNode_Int_emitted <= (lizzieLet6_1QNode_Int_r ? 4'd0 :
                                        lizzieLet6_1QNode_Int_done);
  
  /* destruct (Ty QTree_Int,
          Dcon QVal_Int) : (lizzieLet6_1QVal_Int,QTree_Int) > [(v1a8f_destruct,Int)] */
  assign v1a8f_destruct_d = {lizzieLet6_1QVal_Int_d[34:3],
                             lizzieLet6_1QVal_Int_d[0]};
  assign lizzieLet6_1QVal_Int_r = v1a8f_destruct_r;
  
  /* demux (Ty QTree_Int,
       Ty QTree_Int) : (lizzieLet6_2,QTree_Int) (lizzieLet6_1,QTree_Int) > [(_51,QTree_Int),
                                                                            (lizzieLet6_1QVal_Int,QTree_Int),
                                                                            (lizzieLet6_1QNode_Int,QTree_Int),
                                                                            (_50,QTree_Int)] */
  logic [3:0] lizzieLet6_1_onehotd;
  always_comb
    if ((lizzieLet6_2_d[0] && lizzieLet6_1_d[0]))
      unique case (lizzieLet6_2_d[2:1])
        2'd0: lizzieLet6_1_onehotd = 4'd1;
        2'd1: lizzieLet6_1_onehotd = 4'd2;
        2'd2: lizzieLet6_1_onehotd = 4'd4;
        2'd3: lizzieLet6_1_onehotd = 4'd8;
        default: lizzieLet6_1_onehotd = 4'd0;
      endcase
    else lizzieLet6_1_onehotd = 4'd0;
  assign _51_d = {lizzieLet6_1_d[66:1], lizzieLet6_1_onehotd[0]};
  assign lizzieLet6_1QVal_Int_d = {lizzieLet6_1_d[66:1],
                                   lizzieLet6_1_onehotd[1]};
  assign lizzieLet6_1QNode_Int_d = {lizzieLet6_1_d[66:1],
                                    lizzieLet6_1_onehotd[2]};
  assign _50_d = {lizzieLet6_1_d[66:1], lizzieLet6_1_onehotd[3]};
  assign lizzieLet6_1_r = (| (lizzieLet6_1_onehotd & {_50_r,
                                                      lizzieLet6_1QNode_Int_r,
                                                      lizzieLet6_1QVal_Int_r,
                                                      _51_r}));
  assign lizzieLet6_2_r = lizzieLet6_1_r;
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Int_Int) : (lizzieLet6_3,QTree_Int) (ga8c_goMux_mux,MyDTInt_Int_Int) > [(_49,MyDTInt_Int_Int),
                                                                                          (lizzieLet6_3QVal_Int,MyDTInt_Int_Int),
                                                                                          (lizzieLet6_3QNode_Int,MyDTInt_Int_Int),
                                                                                          (_48,MyDTInt_Int_Int)] */
  logic [3:0] ga8c_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet6_3_d[0] && ga8c_goMux_mux_d[0]))
      unique case (lizzieLet6_3_d[2:1])
        2'd0: ga8c_goMux_mux_onehotd = 4'd1;
        2'd1: ga8c_goMux_mux_onehotd = 4'd2;
        2'd2: ga8c_goMux_mux_onehotd = 4'd4;
        2'd3: ga8c_goMux_mux_onehotd = 4'd8;
        default: ga8c_goMux_mux_onehotd = 4'd0;
      endcase
    else ga8c_goMux_mux_onehotd = 4'd0;
  assign _49_d = ga8c_goMux_mux_onehotd[0];
  assign lizzieLet6_3QVal_Int_d = ga8c_goMux_mux_onehotd[1];
  assign lizzieLet6_3QNode_Int_d = ga8c_goMux_mux_onehotd[2];
  assign _48_d = ga8c_goMux_mux_onehotd[3];
  assign ga8c_goMux_mux_r = (| (ga8c_goMux_mux_onehotd & {_48_r,
                                                          lizzieLet6_3QNode_Int_r,
                                                          lizzieLet6_3QVal_Int_r,
                                                          _49_r}));
  assign lizzieLet6_3_r = ga8c_goMux_mux_r;
  
  /* demux (Ty QTree_Int,
       Ty Go) : (lizzieLet6_4,QTree_Int) (go_10_goMux_data,Go) > [(lizzieLet6_4QNone_Int,Go),
                                                                  (lizzieLet6_4QVal_Int,Go),
                                                                  (lizzieLet6_4QNode_Int,Go),
                                                                  (lizzieLet6_4QError_Int,Go)] */
  logic [3:0] go_10_goMux_data_onehotd;
  always_comb
    if ((lizzieLet6_4_d[0] && go_10_goMux_data_d[0]))
      unique case (lizzieLet6_4_d[2:1])
        2'd0: go_10_goMux_data_onehotd = 4'd1;
        2'd1: go_10_goMux_data_onehotd = 4'd2;
        2'd2: go_10_goMux_data_onehotd = 4'd4;
        2'd3: go_10_goMux_data_onehotd = 4'd8;
        default: go_10_goMux_data_onehotd = 4'd0;
      endcase
    else go_10_goMux_data_onehotd = 4'd0;
  assign lizzieLet6_4QNone_Int_d = go_10_goMux_data_onehotd[0];
  assign lizzieLet6_4QVal_Int_d = go_10_goMux_data_onehotd[1];
  assign lizzieLet6_4QNode_Int_d = go_10_goMux_data_onehotd[2];
  assign lizzieLet6_4QError_Int_d = go_10_goMux_data_onehotd[3];
  assign go_10_goMux_data_r = (| (go_10_goMux_data_onehotd & {lizzieLet6_4QError_Int_r,
                                                              lizzieLet6_4QNode_Int_r,
                                                              lizzieLet6_4QVal_Int_r,
                                                              lizzieLet6_4QNone_Int_r}));
  assign lizzieLet6_4_r = go_10_goMux_data_r;
  
  /* fork (Ty Go) : (lizzieLet6_4QError_Int,Go) > [(lizzieLet6_4QError_Int_1,Go),
                                              (lizzieLet6_4QError_Int_2,Go)] */
  logic [1:0] lizzieLet6_4QError_Int_emitted;
  logic [1:0] lizzieLet6_4QError_Int_done;
  assign lizzieLet6_4QError_Int_1_d = (lizzieLet6_4QError_Int_d[0] && (! lizzieLet6_4QError_Int_emitted[0]));
  assign lizzieLet6_4QError_Int_2_d = (lizzieLet6_4QError_Int_d[0] && (! lizzieLet6_4QError_Int_emitted[1]));
  assign lizzieLet6_4QError_Int_done = (lizzieLet6_4QError_Int_emitted | ({lizzieLet6_4QError_Int_2_d[0],
                                                                           lizzieLet6_4QError_Int_1_d[0]} & {lizzieLet6_4QError_Int_2_r,
                                                                                                             lizzieLet6_4QError_Int_1_r}));
  assign lizzieLet6_4QError_Int_r = (& lizzieLet6_4QError_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QError_Int_emitted <= 2'd0;
    else
      lizzieLet6_4QError_Int_emitted <= (lizzieLet6_4QError_Int_r ? 2'd0 :
                                         lizzieLet6_4QError_Int_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QError_Int) : [(lizzieLet6_4QError_Int_1,Go)] > (lizzieLet6_4QError_Int_1QError_Int,QTree_Int) */
  assign lizzieLet6_4QError_Int_1QError_Int_d = QError_Int_dc((& {lizzieLet6_4QError_Int_1_d[0]}), lizzieLet6_4QError_Int_1_d);
  assign {lizzieLet6_4QError_Int_1_r} = {1 {(lizzieLet6_4QError_Int_1QError_Int_r && lizzieLet6_4QError_Int_1QError_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet6_4QError_Int_1QError_Int,QTree_Int) > (lizzieLet16_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet6_4QError_Int_1QError_Int_bufchan_d;
  logic lizzieLet6_4QError_Int_1QError_Int_bufchan_r;
  assign lizzieLet6_4QError_Int_1QError_Int_r = ((! lizzieLet6_4QError_Int_1QError_Int_bufchan_d[0]) || lizzieLet6_4QError_Int_1QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_4QError_Int_1QError_Int_bufchan_d <= {66'd0, 1'd0};
    else
      if (lizzieLet6_4QError_Int_1QError_Int_r)
        lizzieLet6_4QError_Int_1QError_Int_bufchan_d <= lizzieLet6_4QError_Int_1QError_Int_d;
  QTree_Int_t lizzieLet6_4QError_Int_1QError_Int_bufchan_buf;
  assign lizzieLet6_4QError_Int_1QError_Int_bufchan_r = (! lizzieLet6_4QError_Int_1QError_Int_bufchan_buf[0]);
  assign lizzieLet16_1_argbuf_d = (lizzieLet6_4QError_Int_1QError_Int_bufchan_buf[0] ? lizzieLet6_4QError_Int_1QError_Int_bufchan_buf :
                                   lizzieLet6_4QError_Int_1QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_4QError_Int_1QError_Int_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((lizzieLet16_1_argbuf_r && lizzieLet6_4QError_Int_1QError_Int_bufchan_buf[0]))
        lizzieLet6_4QError_Int_1QError_Int_bufchan_buf <= {66'd0, 1'd0};
      else if (((! lizzieLet16_1_argbuf_r) && (! lizzieLet6_4QError_Int_1QError_Int_bufchan_buf[0])))
        lizzieLet6_4QError_Int_1QError_Int_bufchan_buf <= lizzieLet6_4QError_Int_1QError_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_4QError_Int_2,Go) > (lizzieLet6_4QError_Int_2_argbuf,Go) */
  Go_t lizzieLet6_4QError_Int_2_bufchan_d;
  logic lizzieLet6_4QError_Int_2_bufchan_r;
  assign lizzieLet6_4QError_Int_2_r = ((! lizzieLet6_4QError_Int_2_bufchan_d[0]) || lizzieLet6_4QError_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QError_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_4QError_Int_2_r)
        lizzieLet6_4QError_Int_2_bufchan_d <= lizzieLet6_4QError_Int_2_d;
  Go_t lizzieLet6_4QError_Int_2_bufchan_buf;
  assign lizzieLet6_4QError_Int_2_bufchan_r = (! lizzieLet6_4QError_Int_2_bufchan_buf[0]);
  assign lizzieLet6_4QError_Int_2_argbuf_d = (lizzieLet6_4QError_Int_2_bufchan_buf[0] ? lizzieLet6_4QError_Int_2_bufchan_buf :
                                              lizzieLet6_4QError_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QError_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_4QError_Int_2_argbuf_r && lizzieLet6_4QError_Int_2_bufchan_buf[0]))
        lizzieLet6_4QError_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_4QError_Int_2_argbuf_r) && (! lizzieLet6_4QError_Int_2_bufchan_buf[0])))
        lizzieLet6_4QError_Int_2_bufchan_buf <= lizzieLet6_4QError_Int_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_4QNone_Int,Go) > (lizzieLet6_4QNone_Int_1_argbuf,Go) */
  Go_t lizzieLet6_4QNone_Int_bufchan_d;
  logic lizzieLet6_4QNone_Int_bufchan_r;
  assign lizzieLet6_4QNone_Int_r = ((! lizzieLet6_4QNone_Int_bufchan_d[0]) || lizzieLet6_4QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QNone_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_4QNone_Int_r)
        lizzieLet6_4QNone_Int_bufchan_d <= lizzieLet6_4QNone_Int_d;
  Go_t lizzieLet6_4QNone_Int_bufchan_buf;
  assign lizzieLet6_4QNone_Int_bufchan_r = (! lizzieLet6_4QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_4QNone_Int_1_argbuf_d = (lizzieLet6_4QNone_Int_bufchan_buf[0] ? lizzieLet6_4QNone_Int_bufchan_buf :
                                             lizzieLet6_4QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QNone_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_4QNone_Int_1_argbuf_r && lizzieLet6_4QNone_Int_bufchan_buf[0]))
        lizzieLet6_4QNone_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_4QNone_Int_1_argbuf_r) && (! lizzieLet6_4QNone_Int_bufchan_buf[0])))
        lizzieLet6_4QNone_Int_bufchan_buf <= lizzieLet6_4QNone_Int_bufchan_d;
  
  /* mergectrl (Ty C11,Ty Go) : [(lizzieLet6_4QNone_Int_1_argbuf,Go),
                            (lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf,Go),
                            (lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf,Go),
                            (es_0_3_1MyFalse_1_argbuf,Go),
                            (es_0_3_1MyTrue_2_argbuf,Go),
                            (lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf,Go),
                            (lizzieLet6_6QVal_Int_4QError_Int_2_argbuf,Go),
                            (lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf,Go),
                            (lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf,Go),
                            (lizzieLet6_6QNode_Int_4QError_Int_2_argbuf,Go),
                            (lizzieLet6_4QError_Int_2_argbuf,Go)] > (go_13_goMux_choice,C11) (go_13_goMux_data,Go) */
  logic [10:0] lizzieLet6_4QNone_Int_1_argbuf_select_d;
  assign lizzieLet6_4QNone_Int_1_argbuf_select_d = ((| lizzieLet6_4QNone_Int_1_argbuf_select_q) ? lizzieLet6_4QNone_Int_1_argbuf_select_q :
                                                    (lizzieLet6_4QNone_Int_1_argbuf_d[0] ? 11'd1 :
                                                     (lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_d[0] ? 11'd2 :
                                                      (lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_d[0] ? 11'd4 :
                                                       (es_0_3_1MyFalse_1_argbuf_d[0] ? 11'd8 :
                                                        (es_0_3_1MyTrue_2_argbuf_d[0] ? 11'd16 :
                                                         (lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_d[0] ? 11'd32 :
                                                          (lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_d[0] ? 11'd64 :
                                                           (lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_d[0] ? 11'd128 :
                                                            (lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_d[0] ? 11'd256 :
                                                             (lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_d[0] ? 11'd512 :
                                                              (lizzieLet6_4QError_Int_2_argbuf_d[0] ? 11'd1024 :
                                                               11'd0))))))))))));
  logic [10:0] lizzieLet6_4QNone_Int_1_argbuf_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_4QNone_Int_1_argbuf_select_q <= 11'd0;
    else
      lizzieLet6_4QNone_Int_1_argbuf_select_q <= (lizzieLet6_4QNone_Int_1_argbuf_done ? 11'd0 :
                                                  lizzieLet6_4QNone_Int_1_argbuf_select_d);
  logic [1:0] lizzieLet6_4QNone_Int_1_argbuf_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_4QNone_Int_1_argbuf_emit_q <= 2'd0;
    else
      lizzieLet6_4QNone_Int_1_argbuf_emit_q <= (lizzieLet6_4QNone_Int_1_argbuf_done ? 2'd0 :
                                                lizzieLet6_4QNone_Int_1_argbuf_emit_d);
  logic [1:0] lizzieLet6_4QNone_Int_1_argbuf_emit_d;
  assign lizzieLet6_4QNone_Int_1_argbuf_emit_d = (lizzieLet6_4QNone_Int_1_argbuf_emit_q | ({go_13_goMux_choice_d[0],
                                                                                            go_13_goMux_data_d[0]} & {go_13_goMux_choice_r,
                                                                                                                      go_13_goMux_data_r}));
  logic lizzieLet6_4QNone_Int_1_argbuf_done;
  assign lizzieLet6_4QNone_Int_1_argbuf_done = (& lizzieLet6_4QNone_Int_1_argbuf_emit_d);
  assign {lizzieLet6_4QError_Int_2_argbuf_r,
          lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_r,
          lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_r,
          lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_r,
          lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_r,
          lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_r,
          es_0_3_1MyTrue_2_argbuf_r,
          es_0_3_1MyFalse_1_argbuf_r,
          lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_r,
          lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_r,
          lizzieLet6_4QNone_Int_1_argbuf_r} = (lizzieLet6_4QNone_Int_1_argbuf_done ? lizzieLet6_4QNone_Int_1_argbuf_select_d :
                                               11'd0);
  assign go_13_goMux_data_d = ((lizzieLet6_4QNone_Int_1_argbuf_select_d[0] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_4QNone_Int_1_argbuf_d :
                               ((lizzieLet6_4QNone_Int_1_argbuf_select_d[1] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet22_3Lcall_mAdd_mAdd_Int0_1_argbuf_d :
                                ((lizzieLet6_4QNone_Int_1_argbuf_select_d[2] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_d :
                                 ((lizzieLet6_4QNone_Int_1_argbuf_select_d[3] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? es_0_3_1MyFalse_1_argbuf_d :
                                  ((lizzieLet6_4QNone_Int_1_argbuf_select_d[4] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? es_0_3_1MyTrue_2_argbuf_d :
                                   ((lizzieLet6_4QNone_Int_1_argbuf_select_d[5] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_d :
                                    ((lizzieLet6_4QNone_Int_1_argbuf_select_d[6] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_d :
                                     ((lizzieLet6_4QNone_Int_1_argbuf_select_d[7] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_d :
                                      ((lizzieLet6_4QNone_Int_1_argbuf_select_d[8] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_d :
                                       ((lizzieLet6_4QNone_Int_1_argbuf_select_d[9] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_d :
                                        ((lizzieLet6_4QNone_Int_1_argbuf_select_d[10] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[0])) ? lizzieLet6_4QError_Int_2_argbuf_d :
                                         1'd0)))))))))));
  assign go_13_goMux_choice_d = ((lizzieLet6_4QNone_Int_1_argbuf_select_d[0] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C1_11_dc(1'd1) :
                                 ((lizzieLet6_4QNone_Int_1_argbuf_select_d[1] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C2_11_dc(1'd1) :
                                  ((lizzieLet6_4QNone_Int_1_argbuf_select_d[2] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C3_11_dc(1'd1) :
                                   ((lizzieLet6_4QNone_Int_1_argbuf_select_d[3] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C4_11_dc(1'd1) :
                                    ((lizzieLet6_4QNone_Int_1_argbuf_select_d[4] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C5_11_dc(1'd1) :
                                     ((lizzieLet6_4QNone_Int_1_argbuf_select_d[5] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C6_11_dc(1'd1) :
                                      ((lizzieLet6_4QNone_Int_1_argbuf_select_d[6] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C7_11_dc(1'd1) :
                                       ((lizzieLet6_4QNone_Int_1_argbuf_select_d[7] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C8_11_dc(1'd1) :
                                        ((lizzieLet6_4QNone_Int_1_argbuf_select_d[8] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C9_11_dc(1'd1) :
                                         ((lizzieLet6_4QNone_Int_1_argbuf_select_d[9] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C10_11_dc(1'd1) :
                                          ((lizzieLet6_4QNone_Int_1_argbuf_select_d[10] && (! lizzieLet6_4QNone_Int_1_argbuf_emit_q[1])) ? C11_11_dc(1'd1) :
                                           {4'd0, 1'd0})))))))))));
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Bool) : (lizzieLet6_5,QTree_Int) (isZ1a8b_goMux_mux,MyDTInt_Bool) > [(_47,MyDTInt_Bool),
                                                                                       (lizzieLet6_5QVal_Int,MyDTInt_Bool),
                                                                                       (lizzieLet6_5QNode_Int,MyDTInt_Bool),
                                                                                       (_46,MyDTInt_Bool)] */
  logic [3:0] isZ1a8b_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet6_5_d[0] && isZ1a8b_goMux_mux_d[0]))
      unique case (lizzieLet6_5_d[2:1])
        2'd0: isZ1a8b_goMux_mux_onehotd = 4'd1;
        2'd1: isZ1a8b_goMux_mux_onehotd = 4'd2;
        2'd2: isZ1a8b_goMux_mux_onehotd = 4'd4;
        2'd3: isZ1a8b_goMux_mux_onehotd = 4'd8;
        default: isZ1a8b_goMux_mux_onehotd = 4'd0;
      endcase
    else isZ1a8b_goMux_mux_onehotd = 4'd0;
  assign _47_d = isZ1a8b_goMux_mux_onehotd[0];
  assign lizzieLet6_5QVal_Int_d = isZ1a8b_goMux_mux_onehotd[1];
  assign lizzieLet6_5QNode_Int_d = isZ1a8b_goMux_mux_onehotd[2];
  assign _46_d = isZ1a8b_goMux_mux_onehotd[3];
  assign isZ1a8b_goMux_mux_r = (| (isZ1a8b_goMux_mux_onehotd & {_46_r,
                                                                lizzieLet6_5QNode_Int_r,
                                                                lizzieLet6_5QVal_Int_r,
                                                                _47_r}));
  assign lizzieLet6_5_r = isZ1a8b_goMux_mux_r;
  
  /* demux (Ty QTree_Int,
       Ty QTree_Int) : (lizzieLet6_6,QTree_Int) (readPointer_QTree_Intm2a8e_1_argbuf_rwb,QTree_Int) > [(_45,QTree_Int),
                                                                                                       (lizzieLet6_6QVal_Int,QTree_Int),
                                                                                                       (lizzieLet6_6QNode_Int,QTree_Int),
                                                                                                       (_44,QTree_Int)] */
  logic [3:0] readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd;
  always_comb
    if ((lizzieLet6_6_d[0] && readPointer_QTree_Intm2a8e_1_argbuf_rwb_d[0]))
      unique case (lizzieLet6_6_d[2:1])
        2'd0: readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd1;
        2'd1: readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd2;
        2'd2: readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd4;
        2'd3: readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd8;
        default: readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd0;
      endcase
    else readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd = 4'd0;
  assign _45_d = {readPointer_QTree_Intm2a8e_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd[0]};
  assign lizzieLet6_6QVal_Int_d = {readPointer_QTree_Intm2a8e_1_argbuf_rwb_d[66:1],
                                   readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd[1]};
  assign lizzieLet6_6QNode_Int_d = {readPointer_QTree_Intm2a8e_1_argbuf_rwb_d[66:1],
                                    readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd[2]};
  assign _44_d = {readPointer_QTree_Intm2a8e_1_argbuf_rwb_d[66:1],
                  readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd[3]};
  assign readPointer_QTree_Intm2a8e_1_argbuf_rwb_r = (| (readPointer_QTree_Intm2a8e_1_argbuf_rwb_onehotd & {_44_r,
                                                                                                            lizzieLet6_6QNode_Int_r,
                                                                                                            lizzieLet6_6QVal_Int_r,
                                                                                                            _45_r}));
  assign lizzieLet6_6_r = readPointer_QTree_Intm2a8e_1_argbuf_rwb_r;
  
  /* fork (Ty QTree_Int) : (lizzieLet6_6QNode_Int,QTree_Int) > [(lizzieLet6_6QNode_Int_1,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_2,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_3,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_4,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_5,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_6,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_7,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_8,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_9,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_10,QTree_Int),
                                                           (lizzieLet6_6QNode_Int_11,QTree_Int)] */
  logic [10:0] lizzieLet6_6QNode_Int_emitted;
  logic [10:0] lizzieLet6_6QNode_Int_done;
  assign lizzieLet6_6QNode_Int_1_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[0]))};
  assign lizzieLet6_6QNode_Int_2_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[1]))};
  assign lizzieLet6_6QNode_Int_3_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[2]))};
  assign lizzieLet6_6QNode_Int_4_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[3]))};
  assign lizzieLet6_6QNode_Int_5_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[4]))};
  assign lizzieLet6_6QNode_Int_6_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[5]))};
  assign lizzieLet6_6QNode_Int_7_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[6]))};
  assign lizzieLet6_6QNode_Int_8_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[7]))};
  assign lizzieLet6_6QNode_Int_9_d = {lizzieLet6_6QNode_Int_d[66:1],
                                      (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[8]))};
  assign lizzieLet6_6QNode_Int_10_d = {lizzieLet6_6QNode_Int_d[66:1],
                                       (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[9]))};
  assign lizzieLet6_6QNode_Int_11_d = {lizzieLet6_6QNode_Int_d[66:1],
                                       (lizzieLet6_6QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_emitted[10]))};
  assign lizzieLet6_6QNode_Int_done = (lizzieLet6_6QNode_Int_emitted | ({lizzieLet6_6QNode_Int_11_d[0],
                                                                         lizzieLet6_6QNode_Int_10_d[0],
                                                                         lizzieLet6_6QNode_Int_9_d[0],
                                                                         lizzieLet6_6QNode_Int_8_d[0],
                                                                         lizzieLet6_6QNode_Int_7_d[0],
                                                                         lizzieLet6_6QNode_Int_6_d[0],
                                                                         lizzieLet6_6QNode_Int_5_d[0],
                                                                         lizzieLet6_6QNode_Int_4_d[0],
                                                                         lizzieLet6_6QNode_Int_3_d[0],
                                                                         lizzieLet6_6QNode_Int_2_d[0],
                                                                         lizzieLet6_6QNode_Int_1_d[0]} & {lizzieLet6_6QNode_Int_11_r,
                                                                                                          lizzieLet6_6QNode_Int_10_r,
                                                                                                          lizzieLet6_6QNode_Int_9_r,
                                                                                                          lizzieLet6_6QNode_Int_8_r,
                                                                                                          lizzieLet6_6QNode_Int_7_r,
                                                                                                          lizzieLet6_6QNode_Int_6_r,
                                                                                                          lizzieLet6_6QNode_Int_5_r,
                                                                                                          lizzieLet6_6QNode_Int_4_r,
                                                                                                          lizzieLet6_6QNode_Int_3_r,
                                                                                                          lizzieLet6_6QNode_Int_2_r,
                                                                                                          lizzieLet6_6QNode_Int_1_r}));
  assign lizzieLet6_6QNode_Int_r = (& lizzieLet6_6QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_6QNode_Int_emitted <= 11'd0;
    else
      lizzieLet6_6QNode_Int_emitted <= (lizzieLet6_6QNode_Int_r ? 11'd0 :
                                        lizzieLet6_6QNode_Int_done);
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_10,QTree_Int) (q3a8n_destruct,Pointer_QTree_Int) > [(_43,Pointer_QTree_Int),
                                                                                                          (_42,Pointer_QTree_Int),
                                                                                                          (lizzieLet6_6QNode_Int_10QNode_Int,Pointer_QTree_Int),
                                                                                                          (_41,Pointer_QTree_Int)] */
  logic [3:0] q3a8n_destruct_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_10_d[0] && q3a8n_destruct_d[0]))
      unique case (lizzieLet6_6QNode_Int_10_d[2:1])
        2'd0: q3a8n_destruct_onehotd = 4'd1;
        2'd1: q3a8n_destruct_onehotd = 4'd2;
        2'd2: q3a8n_destruct_onehotd = 4'd4;
        2'd3: q3a8n_destruct_onehotd = 4'd8;
        default: q3a8n_destruct_onehotd = 4'd0;
      endcase
    else q3a8n_destruct_onehotd = 4'd0;
  assign _43_d = {q3a8n_destruct_d[16:1], q3a8n_destruct_onehotd[0]};
  assign _42_d = {q3a8n_destruct_d[16:1], q3a8n_destruct_onehotd[1]};
  assign lizzieLet6_6QNode_Int_10QNode_Int_d = {q3a8n_destruct_d[16:1],
                                                q3a8n_destruct_onehotd[2]};
  assign _41_d = {q3a8n_destruct_d[16:1], q3a8n_destruct_onehotd[3]};
  assign q3a8n_destruct_r = (| (q3a8n_destruct_onehotd & {_41_r,
                                                          lizzieLet6_6QNode_Int_10QNode_Int_r,
                                                          _42_r,
                                                          _43_r}));
  assign lizzieLet6_6QNode_Int_10_r = q3a8n_destruct_r;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_11,QTree_Int) (q4a8o_destruct,Pointer_QTree_Int) > [(_40,Pointer_QTree_Int),
                                                                                                          (_39,Pointer_QTree_Int),
                                                                                                          (lizzieLet6_6QNode_Int_11QNode_Int,Pointer_QTree_Int),
                                                                                                          (_38,Pointer_QTree_Int)] */
  logic [3:0] q4a8o_destruct_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_11_d[0] && q4a8o_destruct_d[0]))
      unique case (lizzieLet6_6QNode_Int_11_d[2:1])
        2'd0: q4a8o_destruct_onehotd = 4'd1;
        2'd1: q4a8o_destruct_onehotd = 4'd2;
        2'd2: q4a8o_destruct_onehotd = 4'd4;
        2'd3: q4a8o_destruct_onehotd = 4'd8;
        default: q4a8o_destruct_onehotd = 4'd0;
      endcase
    else q4a8o_destruct_onehotd = 4'd0;
  assign _40_d = {q4a8o_destruct_d[16:1], q4a8o_destruct_onehotd[0]};
  assign _39_d = {q4a8o_destruct_d[16:1], q4a8o_destruct_onehotd[1]};
  assign lizzieLet6_6QNode_Int_11QNode_Int_d = {q4a8o_destruct_d[16:1],
                                                q4a8o_destruct_onehotd[2]};
  assign _38_d = {q4a8o_destruct_d[16:1], q4a8o_destruct_onehotd[3]};
  assign q4a8o_destruct_r = (| (q4a8o_destruct_onehotd & {_38_r,
                                                          lizzieLet6_6QNode_Int_11QNode_Int_r,
                                                          _39_r,
                                                          _40_r}));
  assign lizzieLet6_6QNode_Int_11_r = q4a8o_destruct_r;
  
  /* buf (Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_11QNode_Int,Pointer_QTree_Int) > (lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_11QNode_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_11QNode_Int_r = ((! lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_11QNode_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QNode_Int_11QNode_Int_r)
        lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d <= lizzieLet6_6QNode_Int_11QNode_Int_d;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_11QNode_Int_bufchan_r = (! lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf :
                                                         lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_r && lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QNode_Int_11QNode_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_11QNode_Int_bufchan_buf <= lizzieLet6_6QNode_Int_11QNode_Int_bufchan_d;
  
  /* destruct (Ty QTree_Int,
          Dcon QNode_Int) : (lizzieLet6_6QNode_Int_1QNode_Int,QTree_Int) > [(t1a8q_destruct,Pointer_QTree_Int),
                                                                            (t2a8r_destruct,Pointer_QTree_Int),
                                                                            (t3a8s_destruct,Pointer_QTree_Int),
                                                                            (t4a8t_destruct,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet6_6QNode_Int_1QNode_Int_emitted;
  logic [3:0] lizzieLet6_6QNode_Int_1QNode_Int_done;
  assign t1a8q_destruct_d = {lizzieLet6_6QNode_Int_1QNode_Int_d[18:3],
                             (lizzieLet6_6QNode_Int_1QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_1QNode_Int_emitted[0]))};
  assign t2a8r_destruct_d = {lizzieLet6_6QNode_Int_1QNode_Int_d[34:19],
                             (lizzieLet6_6QNode_Int_1QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_1QNode_Int_emitted[1]))};
  assign t3a8s_destruct_d = {lizzieLet6_6QNode_Int_1QNode_Int_d[50:35],
                             (lizzieLet6_6QNode_Int_1QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_1QNode_Int_emitted[2]))};
  assign t4a8t_destruct_d = {lizzieLet6_6QNode_Int_1QNode_Int_d[66:51],
                             (lizzieLet6_6QNode_Int_1QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_1QNode_Int_emitted[3]))};
  assign lizzieLet6_6QNode_Int_1QNode_Int_done = (lizzieLet6_6QNode_Int_1QNode_Int_emitted | ({t4a8t_destruct_d[0],
                                                                                               t3a8s_destruct_d[0],
                                                                                               t2a8r_destruct_d[0],
                                                                                               t1a8q_destruct_d[0]} & {t4a8t_destruct_r,
                                                                                                                       t3a8s_destruct_r,
                                                                                                                       t2a8r_destruct_r,
                                                                                                                       t1a8q_destruct_r}));
  assign lizzieLet6_6QNode_Int_1QNode_Int_r = (& lizzieLet6_6QNode_Int_1QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_1QNode_Int_emitted <= 4'd0;
    else
      lizzieLet6_6QNode_Int_1QNode_Int_emitted <= (lizzieLet6_6QNode_Int_1QNode_Int_r ? 4'd0 :
                                                   lizzieLet6_6QNode_Int_1QNode_Int_done);
  
  /* demux (Ty QTree_Int,
       Ty QTree_Int) : (lizzieLet6_6QNode_Int_2,QTree_Int) (lizzieLet6_6QNode_Int_1,QTree_Int) > [(_37,QTree_Int),
                                                                                                  (_36,QTree_Int),
                                                                                                  (lizzieLet6_6QNode_Int_1QNode_Int,QTree_Int),
                                                                                                  (_35,QTree_Int)] */
  logic [3:0] lizzieLet6_6QNode_Int_1_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_2_d[0] && lizzieLet6_6QNode_Int_1_d[0]))
      unique case (lizzieLet6_6QNode_Int_2_d[2:1])
        2'd0: lizzieLet6_6QNode_Int_1_onehotd = 4'd1;
        2'd1: lizzieLet6_6QNode_Int_1_onehotd = 4'd2;
        2'd2: lizzieLet6_6QNode_Int_1_onehotd = 4'd4;
        2'd3: lizzieLet6_6QNode_Int_1_onehotd = 4'd8;
        default: lizzieLet6_6QNode_Int_1_onehotd = 4'd0;
      endcase
    else lizzieLet6_6QNode_Int_1_onehotd = 4'd0;
  assign _37_d = {lizzieLet6_6QNode_Int_1_d[66:1],
                  lizzieLet6_6QNode_Int_1_onehotd[0]};
  assign _36_d = {lizzieLet6_6QNode_Int_1_d[66:1],
                  lizzieLet6_6QNode_Int_1_onehotd[1]};
  assign lizzieLet6_6QNode_Int_1QNode_Int_d = {lizzieLet6_6QNode_Int_1_d[66:1],
                                               lizzieLet6_6QNode_Int_1_onehotd[2]};
  assign _35_d = {lizzieLet6_6QNode_Int_1_d[66:1],
                  lizzieLet6_6QNode_Int_1_onehotd[3]};
  assign lizzieLet6_6QNode_Int_1_r = (| (lizzieLet6_6QNode_Int_1_onehotd & {_35_r,
                                                                            lizzieLet6_6QNode_Int_1QNode_Int_r,
                                                                            _36_r,
                                                                            _37_r}));
  assign lizzieLet6_6QNode_Int_2_r = lizzieLet6_6QNode_Int_1_r;
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Int_Int) : (lizzieLet6_6QNode_Int_3,QTree_Int) (lizzieLet6_3QNode_Int,MyDTInt_Int_Int) > [(_34,MyDTInt_Int_Int),
                                                                                                            (_33,MyDTInt_Int_Int),
                                                                                                            (lizzieLet6_6QNode_Int_3QNode_Int,MyDTInt_Int_Int),
                                                                                                            (_32,MyDTInt_Int_Int)] */
  logic [3:0] lizzieLet6_3QNode_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_3_d[0] && lizzieLet6_3QNode_Int_d[0]))
      unique case (lizzieLet6_6QNode_Int_3_d[2:1])
        2'd0: lizzieLet6_3QNode_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_3QNode_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_3QNode_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_3QNode_Int_onehotd = 4'd8;
        default: lizzieLet6_3QNode_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_3QNode_Int_onehotd = 4'd0;
  assign _34_d = lizzieLet6_3QNode_Int_onehotd[0];
  assign _33_d = lizzieLet6_3QNode_Int_onehotd[1];
  assign lizzieLet6_6QNode_Int_3QNode_Int_d = lizzieLet6_3QNode_Int_onehotd[2];
  assign _32_d = lizzieLet6_3QNode_Int_onehotd[3];
  assign lizzieLet6_3QNode_Int_r = (| (lizzieLet6_3QNode_Int_onehotd & {_32_r,
                                                                        lizzieLet6_6QNode_Int_3QNode_Int_r,
                                                                        _33_r,
                                                                        _34_r}));
  assign lizzieLet6_6QNode_Int_3_r = lizzieLet6_3QNode_Int_r;
  
  /* fork (Ty MyDTInt_Int_Int) : (lizzieLet6_6QNode_Int_3QNode_Int,MyDTInt_Int_Int) > [(lizzieLet6_6QNode_Int_3QNode_Int_1,MyDTInt_Int_Int),
                                                                                  (lizzieLet6_6QNode_Int_3QNode_Int_2,MyDTInt_Int_Int)] */
  logic [1:0] lizzieLet6_6QNode_Int_3QNode_Int_emitted;
  logic [1:0] lizzieLet6_6QNode_Int_3QNode_Int_done;
  assign lizzieLet6_6QNode_Int_3QNode_Int_1_d = (lizzieLet6_6QNode_Int_3QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_3QNode_Int_emitted[0]));
  assign lizzieLet6_6QNode_Int_3QNode_Int_2_d = (lizzieLet6_6QNode_Int_3QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_3QNode_Int_emitted[1]));
  assign lizzieLet6_6QNode_Int_3QNode_Int_done = (lizzieLet6_6QNode_Int_3QNode_Int_emitted | ({lizzieLet6_6QNode_Int_3QNode_Int_2_d[0],
                                                                                               lizzieLet6_6QNode_Int_3QNode_Int_1_d[0]} & {lizzieLet6_6QNode_Int_3QNode_Int_2_r,
                                                                                                                                           lizzieLet6_6QNode_Int_3QNode_Int_1_r}));
  assign lizzieLet6_6QNode_Int_3QNode_Int_r = (& lizzieLet6_6QNode_Int_3QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_3QNode_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QNode_Int_3QNode_Int_emitted <= (lizzieLet6_6QNode_Int_3QNode_Int_r ? 2'd0 :
                                                   lizzieLet6_6QNode_Int_3QNode_Int_done);
  
  /* buf (Ty MyDTInt_Int_Int) : (lizzieLet6_6QNode_Int_3QNode_Int_2,MyDTInt_Int_Int) > (lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d;
  logic lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_r;
  assign lizzieLet6_6QNode_Int_3QNode_Int_2_r = ((! lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d[0]) || lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_3QNode_Int_2_r)
        lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d <= lizzieLet6_6QNode_Int_3QNode_Int_2_d;
  MyDTInt_Int_Int_t lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf;
  assign lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_r = (! lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_d = (lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf[0] ? lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_r && lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_3QNode_Int_2_argbuf_r) && (! lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_buf <= lizzieLet6_6QNode_Int_3QNode_Int_2_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Go) : (lizzieLet6_6QNode_Int_4,QTree_Int) (lizzieLet6_4QNode_Int,Go) > [(lizzieLet6_6QNode_Int_4QNone_Int,Go),
                                                                                  (lizzieLet6_6QNode_Int_4QVal_Int,Go),
                                                                                  (lizzieLet6_6QNode_Int_4QNode_Int,Go),
                                                                                  (lizzieLet6_6QNode_Int_4QError_Int,Go)] */
  logic [3:0] lizzieLet6_4QNode_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_4_d[0] && lizzieLet6_4QNode_Int_d[0]))
      unique case (lizzieLet6_6QNode_Int_4_d[2:1])
        2'd0: lizzieLet6_4QNode_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_4QNode_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_4QNode_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_4QNode_Int_onehotd = 4'd8;
        default: lizzieLet6_4QNode_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_4QNode_Int_onehotd = 4'd0;
  assign lizzieLet6_6QNode_Int_4QNone_Int_d = lizzieLet6_4QNode_Int_onehotd[0];
  assign lizzieLet6_6QNode_Int_4QVal_Int_d = lizzieLet6_4QNode_Int_onehotd[1];
  assign lizzieLet6_6QNode_Int_4QNode_Int_d = lizzieLet6_4QNode_Int_onehotd[2];
  assign lizzieLet6_6QNode_Int_4QError_Int_d = lizzieLet6_4QNode_Int_onehotd[3];
  assign lizzieLet6_4QNode_Int_r = (| (lizzieLet6_4QNode_Int_onehotd & {lizzieLet6_6QNode_Int_4QError_Int_r,
                                                                        lizzieLet6_6QNode_Int_4QNode_Int_r,
                                                                        lizzieLet6_6QNode_Int_4QVal_Int_r,
                                                                        lizzieLet6_6QNode_Int_4QNone_Int_r}));
  assign lizzieLet6_6QNode_Int_4_r = lizzieLet6_4QNode_Int_r;
  
  /* fork (Ty Go) : (lizzieLet6_6QNode_Int_4QError_Int,Go) > [(lizzieLet6_6QNode_Int_4QError_Int_1,Go),
                                                         (lizzieLet6_6QNode_Int_4QError_Int_2,Go)] */
  logic [1:0] lizzieLet6_6QNode_Int_4QError_Int_emitted;
  logic [1:0] lizzieLet6_6QNode_Int_4QError_Int_done;
  assign lizzieLet6_6QNode_Int_4QError_Int_1_d = (lizzieLet6_6QNode_Int_4QError_Int_d[0] && (! lizzieLet6_6QNode_Int_4QError_Int_emitted[0]));
  assign lizzieLet6_6QNode_Int_4QError_Int_2_d = (lizzieLet6_6QNode_Int_4QError_Int_d[0] && (! lizzieLet6_6QNode_Int_4QError_Int_emitted[1]));
  assign lizzieLet6_6QNode_Int_4QError_Int_done = (lizzieLet6_6QNode_Int_4QError_Int_emitted | ({lizzieLet6_6QNode_Int_4QError_Int_2_d[0],
                                                                                                 lizzieLet6_6QNode_Int_4QError_Int_1_d[0]} & {lizzieLet6_6QNode_Int_4QError_Int_2_r,
                                                                                                                                              lizzieLet6_6QNode_Int_4QError_Int_1_r}));
  assign lizzieLet6_6QNode_Int_4QError_Int_r = (& lizzieLet6_6QNode_Int_4QError_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QError_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QNode_Int_4QError_Int_emitted <= (lizzieLet6_6QNode_Int_4QError_Int_r ? 2'd0 :
                                                    lizzieLet6_6QNode_Int_4QError_Int_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QError_Int) : [(lizzieLet6_6QNode_Int_4QError_Int_1,Go)] > (lizzieLet6_6QNode_Int_4QError_Int_1QError_Int,QTree_Int) */
  assign lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_d = QError_Int_dc((& {lizzieLet6_6QNode_Int_4QError_Int_1_d[0]}), lizzieLet6_6QNode_Int_4QError_Int_1_d);
  assign {lizzieLet6_6QNode_Int_4QError_Int_1_r} = {1 {(lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_r && lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet6_6QNode_Int_4QError_Int_1QError_Int,QTree_Int) > (lizzieLet15_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_r = ((! lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d <= {66'd0,
                                                                  1'd0};
    else
      if (lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_r)
        lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d <= lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_d;
  QTree_Int_t lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_r = (! lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf[0]);
  assign lizzieLet15_1_argbuf_d = (lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf :
                                   lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                    1'd0};
    else
      if ((lizzieLet15_1_argbuf_r && lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                      1'd0};
      else if (((! lizzieLet15_1_argbuf_r) && (! lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_buf <= lizzieLet6_6QNode_Int_4QError_Int_1QError_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QNode_Int_4QError_Int_2,Go) > (lizzieLet6_6QNode_Int_4QError_Int_2_argbuf,Go) */
  Go_t lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QError_Int_2_r = ((! lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_4QError_Int_2_r)
        lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d <= lizzieLet6_6QNode_Int_4QError_Int_2_d;
  Go_t lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_r = (! lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_d = (lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf :
                                                         lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_r && lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_4QError_Int_2_argbuf_r) && (! lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_buf <= lizzieLet6_6QNode_Int_4QError_Int_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QNode_Int_4QNode_Int,Go) > (lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf,Go) */
  Go_t lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QNode_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QNode_Int_r = ((! lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QNode_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_4QNode_Int_r)
        lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d <= lizzieLet6_6QNode_Int_4QNode_Int_d;
  Go_t lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QNode_Int_bufchan_r = (! lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_r && lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_4QNode_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QNode_Int_bufchan_buf <= lizzieLet6_6QNode_Int_4QNode_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QNode_Int_4QNone_Int,Go) > (lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf,Go) */
  Go_t lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QNone_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QNone_Int_r = ((! lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_4QNone_Int_r)
        lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d <= lizzieLet6_6QNode_Int_4QNone_Int_d;
  Go_t lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QNone_Int_bufchan_r = (! lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_r && lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_4QNone_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QNone_Int_bufchan_buf <= lizzieLet6_6QNode_Int_4QNone_Int_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet6_6QNode_Int_4QVal_Int,Go) > [(lizzieLet6_6QNode_Int_4QVal_Int_1,Go),
                                                       (lizzieLet6_6QNode_Int_4QVal_Int_2,Go)] */
  logic [1:0] lizzieLet6_6QNode_Int_4QVal_Int_emitted;
  logic [1:0] lizzieLet6_6QNode_Int_4QVal_Int_done;
  assign lizzieLet6_6QNode_Int_4QVal_Int_1_d = (lizzieLet6_6QNode_Int_4QVal_Int_d[0] && (! lizzieLet6_6QNode_Int_4QVal_Int_emitted[0]));
  assign lizzieLet6_6QNode_Int_4QVal_Int_2_d = (lizzieLet6_6QNode_Int_4QVal_Int_d[0] && (! lizzieLet6_6QNode_Int_4QVal_Int_emitted[1]));
  assign lizzieLet6_6QNode_Int_4QVal_Int_done = (lizzieLet6_6QNode_Int_4QVal_Int_emitted | ({lizzieLet6_6QNode_Int_4QVal_Int_2_d[0],
                                                                                             lizzieLet6_6QNode_Int_4QVal_Int_1_d[0]} & {lizzieLet6_6QNode_Int_4QVal_Int_2_r,
                                                                                                                                        lizzieLet6_6QNode_Int_4QVal_Int_1_r}));
  assign lizzieLet6_6QNode_Int_4QVal_Int_r = (& lizzieLet6_6QNode_Int_4QVal_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QVal_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QNode_Int_4QVal_Int_emitted <= (lizzieLet6_6QNode_Int_4QVal_Int_r ? 2'd0 :
                                                  lizzieLet6_6QNode_Int_4QVal_Int_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QError_Int) : [(lizzieLet6_6QNode_Int_4QVal_Int_1,Go)] > (lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int,QTree_Int) */
  assign lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_d = QError_Int_dc((& {lizzieLet6_6QNode_Int_4QVal_Int_1_d[0]}), lizzieLet6_6QNode_Int_4QVal_Int_1_d);
  assign {lizzieLet6_6QNode_Int_4QVal_Int_1_r} = {1 {(lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_r && lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int,QTree_Int) > (lizzieLet13_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_r = ((! lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d <= {66'd0,
                                                                1'd0};
    else
      if (lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_r)
        lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d <= lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_d;
  QTree_Int_t lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_r = (! lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf[0]);
  assign lizzieLet13_1_argbuf_d = (lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf :
                                   lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                  1'd0};
    else
      if ((lizzieLet13_1_argbuf_r && lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                    1'd0};
      else if (((! lizzieLet13_1_argbuf_r) && (! lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_buf <= lizzieLet6_6QNode_Int_4QVal_Int_1QError_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QNode_Int_4QVal_Int_2,Go) > (lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf,Go) */
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d;
  logic lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_r;
  assign lizzieLet6_6QNode_Int_4QVal_Int_2_r = ((! lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d[0]) || lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_4QVal_Int_2_r)
        lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d <= lizzieLet6_6QNode_Int_4QVal_Int_2_d;
  Go_t lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf;
  assign lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_r = (! lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_d = (lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf[0] ? lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf :
                                                       lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_r && lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_4QVal_Int_2_argbuf_r) && (! lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_buf <= lizzieLet6_6QNode_Int_4QVal_Int_2_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Bool) : (lizzieLet6_6QNode_Int_5,QTree_Int) (lizzieLet6_5QNode_Int,MyDTInt_Bool) > [(_31,MyDTInt_Bool),
                                                                                                      (_30,MyDTInt_Bool),
                                                                                                      (lizzieLet6_6QNode_Int_5QNode_Int,MyDTInt_Bool),
                                                                                                      (_29,MyDTInt_Bool)] */
  logic [3:0] lizzieLet6_5QNode_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_5_d[0] && lizzieLet6_5QNode_Int_d[0]))
      unique case (lizzieLet6_6QNode_Int_5_d[2:1])
        2'd0: lizzieLet6_5QNode_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_5QNode_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_5QNode_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_5QNode_Int_onehotd = 4'd8;
        default: lizzieLet6_5QNode_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_5QNode_Int_onehotd = 4'd0;
  assign _31_d = lizzieLet6_5QNode_Int_onehotd[0];
  assign _30_d = lizzieLet6_5QNode_Int_onehotd[1];
  assign lizzieLet6_6QNode_Int_5QNode_Int_d = lizzieLet6_5QNode_Int_onehotd[2];
  assign _29_d = lizzieLet6_5QNode_Int_onehotd[3];
  assign lizzieLet6_5QNode_Int_r = (| (lizzieLet6_5QNode_Int_onehotd & {_29_r,
                                                                        lizzieLet6_6QNode_Int_5QNode_Int_r,
                                                                        _30_r,
                                                                        _31_r}));
  assign lizzieLet6_6QNode_Int_5_r = lizzieLet6_5QNode_Int_r;
  
  /* fork (Ty MyDTInt_Bool) : (lizzieLet6_6QNode_Int_5QNode_Int,MyDTInt_Bool) > [(lizzieLet6_6QNode_Int_5QNode_Int_1,MyDTInt_Bool),
                                                                            (lizzieLet6_6QNode_Int_5QNode_Int_2,MyDTInt_Bool)] */
  logic [1:0] lizzieLet6_6QNode_Int_5QNode_Int_emitted;
  logic [1:0] lizzieLet6_6QNode_Int_5QNode_Int_done;
  assign lizzieLet6_6QNode_Int_5QNode_Int_1_d = (lizzieLet6_6QNode_Int_5QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_5QNode_Int_emitted[0]));
  assign lizzieLet6_6QNode_Int_5QNode_Int_2_d = (lizzieLet6_6QNode_Int_5QNode_Int_d[0] && (! lizzieLet6_6QNode_Int_5QNode_Int_emitted[1]));
  assign lizzieLet6_6QNode_Int_5QNode_Int_done = (lizzieLet6_6QNode_Int_5QNode_Int_emitted | ({lizzieLet6_6QNode_Int_5QNode_Int_2_d[0],
                                                                                               lizzieLet6_6QNode_Int_5QNode_Int_1_d[0]} & {lizzieLet6_6QNode_Int_5QNode_Int_2_r,
                                                                                                                                           lizzieLet6_6QNode_Int_5QNode_Int_1_r}));
  assign lizzieLet6_6QNode_Int_5QNode_Int_r = (& lizzieLet6_6QNode_Int_5QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_5QNode_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QNode_Int_5QNode_Int_emitted <= (lizzieLet6_6QNode_Int_5QNode_Int_r ? 2'd0 :
                                                   lizzieLet6_6QNode_Int_5QNode_Int_done);
  
  /* buf (Ty MyDTInt_Bool) : (lizzieLet6_6QNode_Int_5QNode_Int_2,MyDTInt_Bool) > (lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d;
  logic lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_r;
  assign lizzieLet6_6QNode_Int_5QNode_Int_2_r = ((! lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d[0]) || lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QNode_Int_5QNode_Int_2_r)
        lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d <= lizzieLet6_6QNode_Int_5QNode_Int_2_d;
  MyDTInt_Bool_t lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf;
  assign lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_r = (! lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_d = (lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf[0] ? lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_r && lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QNode_Int_5QNode_Int_2_argbuf_r) && (! lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_buf <= lizzieLet6_6QNode_Int_5QNode_Int_2_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_6,QTree_Int) (lizzieLet6_7QNode_Int,Pointer_QTree_Int) > [(lizzieLet6_6QNode_Int_6QNone_Int,Pointer_QTree_Int),
                                                                                                                (_28,Pointer_QTree_Int),
                                                                                                                (_27,Pointer_QTree_Int),
                                                                                                                (_26,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet6_7QNode_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_6_d[0] && lizzieLet6_7QNode_Int_d[0]))
      unique case (lizzieLet6_6QNode_Int_6_d[2:1])
        2'd0: lizzieLet6_7QNode_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_7QNode_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_7QNode_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_7QNode_Int_onehotd = 4'd8;
        default: lizzieLet6_7QNode_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_7QNode_Int_onehotd = 4'd0;
  assign lizzieLet6_6QNode_Int_6QNone_Int_d = {lizzieLet6_7QNode_Int_d[16:1],
                                               lizzieLet6_7QNode_Int_onehotd[0]};
  assign _28_d = {lizzieLet6_7QNode_Int_d[16:1],
                  lizzieLet6_7QNode_Int_onehotd[1]};
  assign _27_d = {lizzieLet6_7QNode_Int_d[16:1],
                  lizzieLet6_7QNode_Int_onehotd[2]};
  assign _26_d = {lizzieLet6_7QNode_Int_d[16:1],
                  lizzieLet6_7QNode_Int_onehotd[3]};
  assign lizzieLet6_7QNode_Int_r = (| (lizzieLet6_7QNode_Int_onehotd & {_26_r,
                                                                        _27_r,
                                                                        _28_r,
                                                                        lizzieLet6_6QNode_Int_6QNone_Int_r}));
  assign lizzieLet6_6QNode_Int_6_r = lizzieLet6_7QNode_Int_r;
  
  /* buf (Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_6QNone_Int,Pointer_QTree_Int) > (lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_6QNone_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_6QNone_Int_r = ((! lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_6QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QNode_Int_6QNone_Int_r)
        lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d <= lizzieLet6_6QNode_Int_6QNone_Int_d;
  Pointer_QTree_Int_t lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_6QNone_Int_bufchan_r = (! lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_r && lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QNode_Int_6QNone_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_6QNone_Int_bufchan_buf <= lizzieLet6_6QNode_Int_6QNone_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QNode_Int_7,QTree_Int) (lizzieLet6_9QNode_Int,Pointer_CTmAdd_mAdd_Int) > [(lizzieLet6_6QNode_Int_7QNone_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                            (lizzieLet6_6QNode_Int_7QVal_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                            (lizzieLet6_6QNode_Int_7QNode_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                            (lizzieLet6_6QNode_Int_7QError_Int,Pointer_CTmAdd_mAdd_Int)] */
  logic [3:0] lizzieLet6_9QNode_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_7_d[0] && lizzieLet6_9QNode_Int_d[0]))
      unique case (lizzieLet6_6QNode_Int_7_d[2:1])
        2'd0: lizzieLet6_9QNode_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_9QNode_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_9QNode_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_9QNode_Int_onehotd = 4'd8;
        default: lizzieLet6_9QNode_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_9QNode_Int_onehotd = 4'd0;
  assign lizzieLet6_6QNode_Int_7QNone_Int_d = {lizzieLet6_9QNode_Int_d[16:1],
                                               lizzieLet6_9QNode_Int_onehotd[0]};
  assign lizzieLet6_6QNode_Int_7QVal_Int_d = {lizzieLet6_9QNode_Int_d[16:1],
                                              lizzieLet6_9QNode_Int_onehotd[1]};
  assign lizzieLet6_6QNode_Int_7QNode_Int_d = {lizzieLet6_9QNode_Int_d[16:1],
                                               lizzieLet6_9QNode_Int_onehotd[2]};
  assign lizzieLet6_6QNode_Int_7QError_Int_d = {lizzieLet6_9QNode_Int_d[16:1],
                                                lizzieLet6_9QNode_Int_onehotd[3]};
  assign lizzieLet6_9QNode_Int_r = (| (lizzieLet6_9QNode_Int_onehotd & {lizzieLet6_6QNode_Int_7QError_Int_r,
                                                                        lizzieLet6_6QNode_Int_7QNode_Int_r,
                                                                        lizzieLet6_6QNode_Int_7QVal_Int_r,
                                                                        lizzieLet6_6QNode_Int_7QNone_Int_r}));
  assign lizzieLet6_6QNode_Int_7_r = lizzieLet6_9QNode_Int_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QNode_Int_7QError_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QNode_Int_7QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QError_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_7QError_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_7QError_Int_r = ((! lizzieLet6_6QNode_Int_7QError_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_7QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QError_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QNode_Int_7QError_Int_r)
        lizzieLet6_6QNode_Int_7QError_Int_bufchan_d <= lizzieLet6_6QNode_Int_7QError_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_7QError_Int_bufchan_r = (! lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf :
                                                         lizzieLet6_6QNode_Int_7QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_r && lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QNode_Int_7QError_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_7QError_Int_bufchan_buf <= lizzieLet6_6QNode_Int_7QError_Int_bufchan_d;
  
  /* dcon (Ty CTmAdd_mAdd_Int,
      Dcon Lcall_mAdd_mAdd_Int3) : [(lizzieLet6_6QNode_Int_7QNode_Int,Pointer_CTmAdd_mAdd_Int),
                                    (lizzieLet6_6QNode_Int_5QNode_Int_1,MyDTInt_Bool),
                                    (lizzieLet6_6QNode_Int_3QNode_Int_1,MyDTInt_Int_Int),
                                    (lizzieLet6_6QNode_Int_8QNode_Int,Pointer_QTree_Int),
                                    (t1a8q_destruct,Pointer_QTree_Int),
                                    (lizzieLet6_6QNode_Int_9QNode_Int,Pointer_QTree_Int),
                                    (t2a8r_destruct,Pointer_QTree_Int),
                                    (lizzieLet6_6QNode_Int_10QNode_Int,Pointer_QTree_Int),
                                    (t3a8s_destruct,Pointer_QTree_Int)] > (lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3,CTmAdd_mAdd_Int) */
  assign lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_d = Lcall_mAdd_mAdd_Int3_dc((& {lizzieLet6_6QNode_Int_7QNode_Int_d[0],
                                                                                                                                                                                                                                                                                                lizzieLet6_6QNode_Int_5QNode_Int_1_d[0],
                                                                                                                                                                                                                                                                                                lizzieLet6_6QNode_Int_3QNode_Int_1_d[0],
                                                                                                                                                                                                                                                                                                lizzieLet6_6QNode_Int_8QNode_Int_d[0],
                                                                                                                                                                                                                                                                                                t1a8q_destruct_d[0],
                                                                                                                                                                                                                                                                                                lizzieLet6_6QNode_Int_9QNode_Int_d[0],
                                                                                                                                                                                                                                                                                                t2a8r_destruct_d[0],
                                                                                                                                                                                                                                                                                                lizzieLet6_6QNode_Int_10QNode_Int_d[0],
                                                                                                                                                                                                                                                                                                t3a8s_destruct_d[0]}), lizzieLet6_6QNode_Int_7QNode_Int_d, lizzieLet6_6QNode_Int_5QNode_Int_1_d, lizzieLet6_6QNode_Int_3QNode_Int_1_d, lizzieLet6_6QNode_Int_8QNode_Int_d, t1a8q_destruct_d, lizzieLet6_6QNode_Int_9QNode_Int_d, t2a8r_destruct_d, lizzieLet6_6QNode_Int_10QNode_Int_d, t3a8s_destruct_d);
  assign {lizzieLet6_6QNode_Int_7QNode_Int_r,
          lizzieLet6_6QNode_Int_5QNode_Int_1_r,
          lizzieLet6_6QNode_Int_3QNode_Int_1_r,
          lizzieLet6_6QNode_Int_8QNode_Int_r,
          t1a8q_destruct_r,
          lizzieLet6_6QNode_Int_9QNode_Int_r,
          t2a8r_destruct_r,
          lizzieLet6_6QNode_Int_10QNode_Int_r,
          t3a8s_destruct_r} = {9 {(lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_r && lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_d[0])}};
  
  /* buf (Ty CTmAdd_mAdd_Int) : (lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3,CTmAdd_mAdd_Int) > (lizzieLet14_1_argbuf,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d;
  logic lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_r;
  assign lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_r = ((! lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d[0]) || lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d <= {115'd0,
                                                                                                                                                                                                                                                                           1'd0};
    else
      if (lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_r)
        lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d <= lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_d;
  CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf;
  assign lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_r = (! lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf[0]);
  assign lizzieLet14_1_argbuf_d = (lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf[0] ? lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf :
                                   lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                                             1'd0};
    else
      if ((lizzieLet14_1_argbuf_r && lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf <= {115'd0,
                                                                                                                                                                                                                                                                               1'd0};
      else if (((! lizzieLet14_1_argbuf_r) && (! lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_buf <= lizzieLet6_6QNode_Int_7QNode_Int_1lizzieLet6_6QNode_Int_5QNode_Int_1lizzieLet6_6QNode_Int_3QNode_Int_1lizzieLet6_6QNode_Int_8QNode_Int_1t1a8q_1lizzieLet6_6QNode_Int_9QNode_Int_1t2a8r_1lizzieLet6_6QNode_Int_10QNode_Int_1t3a8s_1Lcall_mAdd_mAdd_Int3_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QNode_Int_7QNone_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_7QNone_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_7QNone_Int_r = ((! lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_7QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QNode_Int_7QNone_Int_r)
        lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d <= lizzieLet6_6QNode_Int_7QNone_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_7QNone_Int_bufchan_r = (! lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf :
                                                        lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_r && lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QNode_Int_7QNone_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_7QNone_Int_bufchan_buf <= lizzieLet6_6QNode_Int_7QNone_Int_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QNode_Int_7QVal_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d;
  logic lizzieLet6_6QNode_Int_7QVal_Int_bufchan_r;
  assign lizzieLet6_6QNode_Int_7QVal_Int_r = ((! lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d[0]) || lizzieLet6_6QNode_Int_7QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QNode_Int_7QVal_Int_r)
        lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d <= lizzieLet6_6QNode_Int_7QVal_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf;
  assign lizzieLet6_6QNode_Int_7QVal_Int_bufchan_r = (! lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf[0]);
  assign lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_d = (lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf[0] ? lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf :
                                                       lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_r && lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf[0]))
        lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QNode_Int_7QVal_Int_1_argbuf_r) && (! lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf[0])))
        lizzieLet6_6QNode_Int_7QVal_Int_bufchan_buf <= lizzieLet6_6QNode_Int_7QVal_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_8,QTree_Int) (q1a8l_destruct,Pointer_QTree_Int) > [(_25,Pointer_QTree_Int),
                                                                                                         (_24,Pointer_QTree_Int),
                                                                                                         (lizzieLet6_6QNode_Int_8QNode_Int,Pointer_QTree_Int),
                                                                                                         (_23,Pointer_QTree_Int)] */
  logic [3:0] q1a8l_destruct_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_8_d[0] && q1a8l_destruct_d[0]))
      unique case (lizzieLet6_6QNode_Int_8_d[2:1])
        2'd0: q1a8l_destruct_onehotd = 4'd1;
        2'd1: q1a8l_destruct_onehotd = 4'd2;
        2'd2: q1a8l_destruct_onehotd = 4'd4;
        2'd3: q1a8l_destruct_onehotd = 4'd8;
        default: q1a8l_destruct_onehotd = 4'd0;
      endcase
    else q1a8l_destruct_onehotd = 4'd0;
  assign _25_d = {q1a8l_destruct_d[16:1], q1a8l_destruct_onehotd[0]};
  assign _24_d = {q1a8l_destruct_d[16:1], q1a8l_destruct_onehotd[1]};
  assign lizzieLet6_6QNode_Int_8QNode_Int_d = {q1a8l_destruct_d[16:1],
                                               q1a8l_destruct_onehotd[2]};
  assign _23_d = {q1a8l_destruct_d[16:1], q1a8l_destruct_onehotd[3]};
  assign q1a8l_destruct_r = (| (q1a8l_destruct_onehotd & {_23_r,
                                                          lizzieLet6_6QNode_Int_8QNode_Int_r,
                                                          _24_r,
                                                          _25_r}));
  assign lizzieLet6_6QNode_Int_8_r = q1a8l_destruct_r;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QNode_Int_9,QTree_Int) (q2a8m_destruct,Pointer_QTree_Int) > [(_22,Pointer_QTree_Int),
                                                                                                         (_21,Pointer_QTree_Int),
                                                                                                         (lizzieLet6_6QNode_Int_9QNode_Int,Pointer_QTree_Int),
                                                                                                         (_20,Pointer_QTree_Int)] */
  logic [3:0] q2a8m_destruct_onehotd;
  always_comb
    if ((lizzieLet6_6QNode_Int_9_d[0] && q2a8m_destruct_d[0]))
      unique case (lizzieLet6_6QNode_Int_9_d[2:1])
        2'd0: q2a8m_destruct_onehotd = 4'd1;
        2'd1: q2a8m_destruct_onehotd = 4'd2;
        2'd2: q2a8m_destruct_onehotd = 4'd4;
        2'd3: q2a8m_destruct_onehotd = 4'd8;
        default: q2a8m_destruct_onehotd = 4'd0;
      endcase
    else q2a8m_destruct_onehotd = 4'd0;
  assign _22_d = {q2a8m_destruct_d[16:1], q2a8m_destruct_onehotd[0]};
  assign _21_d = {q2a8m_destruct_d[16:1], q2a8m_destruct_onehotd[1]};
  assign lizzieLet6_6QNode_Int_9QNode_Int_d = {q2a8m_destruct_d[16:1],
                                               q2a8m_destruct_onehotd[2]};
  assign _20_d = {q2a8m_destruct_d[16:1], q2a8m_destruct_onehotd[3]};
  assign q2a8m_destruct_r = (| (q2a8m_destruct_onehotd & {_20_r,
                                                          lizzieLet6_6QNode_Int_9QNode_Int_r,
                                                          _21_r,
                                                          _22_r}));
  assign lizzieLet6_6QNode_Int_9_r = q2a8m_destruct_r;
  
  /* fork (Ty QTree_Int) : (lizzieLet6_6QVal_Int,QTree_Int) > [(lizzieLet6_6QVal_Int_1,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_2,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_3,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_4,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_5,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_6,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_7,QTree_Int),
                                                          (lizzieLet6_6QVal_Int_8,QTree_Int)] */
  logic [7:0] lizzieLet6_6QVal_Int_emitted;
  logic [7:0] lizzieLet6_6QVal_Int_done;
  assign lizzieLet6_6QVal_Int_1_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[0]))};
  assign lizzieLet6_6QVal_Int_2_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[1]))};
  assign lizzieLet6_6QVal_Int_3_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[2]))};
  assign lizzieLet6_6QVal_Int_4_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[3]))};
  assign lizzieLet6_6QVal_Int_5_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[4]))};
  assign lizzieLet6_6QVal_Int_6_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[5]))};
  assign lizzieLet6_6QVal_Int_7_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[6]))};
  assign lizzieLet6_6QVal_Int_8_d = {lizzieLet6_6QVal_Int_d[66:1],
                                     (lizzieLet6_6QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_emitted[7]))};
  assign lizzieLet6_6QVal_Int_done = (lizzieLet6_6QVal_Int_emitted | ({lizzieLet6_6QVal_Int_8_d[0],
                                                                       lizzieLet6_6QVal_Int_7_d[0],
                                                                       lizzieLet6_6QVal_Int_6_d[0],
                                                                       lizzieLet6_6QVal_Int_5_d[0],
                                                                       lizzieLet6_6QVal_Int_4_d[0],
                                                                       lizzieLet6_6QVal_Int_3_d[0],
                                                                       lizzieLet6_6QVal_Int_2_d[0],
                                                                       lizzieLet6_6QVal_Int_1_d[0]} & {lizzieLet6_6QVal_Int_8_r,
                                                                                                       lizzieLet6_6QVal_Int_7_r,
                                                                                                       lizzieLet6_6QVal_Int_6_r,
                                                                                                       lizzieLet6_6QVal_Int_5_r,
                                                                                                       lizzieLet6_6QVal_Int_4_r,
                                                                                                       lizzieLet6_6QVal_Int_3_r,
                                                                                                       lizzieLet6_6QVal_Int_2_r,
                                                                                                       lizzieLet6_6QVal_Int_1_r}));
  assign lizzieLet6_6QVal_Int_r = (& lizzieLet6_6QVal_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) lizzieLet6_6QVal_Int_emitted <= 8'd0;
    else
      lizzieLet6_6QVal_Int_emitted <= (lizzieLet6_6QVal_Int_r ? 8'd0 :
                                       lizzieLet6_6QVal_Int_done);
  
  /* destruct (Ty QTree_Int,
          Dcon QVal_Int) : (lizzieLet6_6QVal_Int_1QVal_Int,QTree_Int) > [(va8g_destruct,Int)] */
  assign va8g_destruct_d = {lizzieLet6_6QVal_Int_1QVal_Int_d[34:3],
                            lizzieLet6_6QVal_Int_1QVal_Int_d[0]};
  assign lizzieLet6_6QVal_Int_1QVal_Int_r = va8g_destruct_r;
  
  /* demux (Ty QTree_Int,
       Ty QTree_Int) : (lizzieLet6_6QVal_Int_2,QTree_Int) (lizzieLet6_6QVal_Int_1,QTree_Int) > [(_19,QTree_Int),
                                                                                                (lizzieLet6_6QVal_Int_1QVal_Int,QTree_Int),
                                                                                                (_18,QTree_Int),
                                                                                                (_17,QTree_Int)] */
  logic [3:0] lizzieLet6_6QVal_Int_1_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_2_d[0] && lizzieLet6_6QVal_Int_1_d[0]))
      unique case (lizzieLet6_6QVal_Int_2_d[2:1])
        2'd0: lizzieLet6_6QVal_Int_1_onehotd = 4'd1;
        2'd1: lizzieLet6_6QVal_Int_1_onehotd = 4'd2;
        2'd2: lizzieLet6_6QVal_Int_1_onehotd = 4'd4;
        2'd3: lizzieLet6_6QVal_Int_1_onehotd = 4'd8;
        default: lizzieLet6_6QVal_Int_1_onehotd = 4'd0;
      endcase
    else lizzieLet6_6QVal_Int_1_onehotd = 4'd0;
  assign _19_d = {lizzieLet6_6QVal_Int_1_d[66:1],
                  lizzieLet6_6QVal_Int_1_onehotd[0]};
  assign lizzieLet6_6QVal_Int_1QVal_Int_d = {lizzieLet6_6QVal_Int_1_d[66:1],
                                             lizzieLet6_6QVal_Int_1_onehotd[1]};
  assign _18_d = {lizzieLet6_6QVal_Int_1_d[66:1],
                  lizzieLet6_6QVal_Int_1_onehotd[2]};
  assign _17_d = {lizzieLet6_6QVal_Int_1_d[66:1],
                  lizzieLet6_6QVal_Int_1_onehotd[3]};
  assign lizzieLet6_6QVal_Int_1_r = (| (lizzieLet6_6QVal_Int_1_onehotd & {_17_r,
                                                                          _18_r,
                                                                          lizzieLet6_6QVal_Int_1QVal_Int_r,
                                                                          _19_r}));
  assign lizzieLet6_6QVal_Int_2_r = lizzieLet6_6QVal_Int_1_r;
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Int_Int) : (lizzieLet6_6QVal_Int_3,QTree_Int) (lizzieLet6_3QVal_Int,MyDTInt_Int_Int) > [(_16,MyDTInt_Int_Int),
                                                                                                          (lizzieLet6_6QVal_Int_3QVal_Int,MyDTInt_Int_Int),
                                                                                                          (_15,MyDTInt_Int_Int),
                                                                                                          (_14,MyDTInt_Int_Int)] */
  logic [3:0] lizzieLet6_3QVal_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_3_d[0] && lizzieLet6_3QVal_Int_d[0]))
      unique case (lizzieLet6_6QVal_Int_3_d[2:1])
        2'd0: lizzieLet6_3QVal_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_3QVal_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_3QVal_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_3QVal_Int_onehotd = 4'd8;
        default: lizzieLet6_3QVal_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_3QVal_Int_onehotd = 4'd0;
  assign _16_d = lizzieLet6_3QVal_Int_onehotd[0];
  assign lizzieLet6_6QVal_Int_3QVal_Int_d = lizzieLet6_3QVal_Int_onehotd[1];
  assign _15_d = lizzieLet6_3QVal_Int_onehotd[2];
  assign _14_d = lizzieLet6_3QVal_Int_onehotd[3];
  assign lizzieLet6_3QVal_Int_r = (| (lizzieLet6_3QVal_Int_onehotd & {_14_r,
                                                                      _15_r,
                                                                      lizzieLet6_6QVal_Int_3QVal_Int_r,
                                                                      _16_r}));
  assign lizzieLet6_6QVal_Int_3_r = lizzieLet6_3QVal_Int_r;
  
  /* buf (Ty MyDTInt_Int_Int) : (lizzieLet6_6QVal_Int_3QVal_Int,MyDTInt_Int_Int) > (lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_3QVal_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_3QVal_Int_r = ((! lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_3QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_3QVal_Int_r)
        lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d <= lizzieLet6_6QVal_Int_3QVal_Int_d;
  MyDTInt_Int_Int_t lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_3QVal_Int_bufchan_r = (! lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf :
                                                      lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_r && lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_3QVal_Int_bufchan_buf <= lizzieLet6_6QVal_Int_3QVal_Int_bufchan_d;
  
  /* dcon (Ty TupMyDTInt_Int_Int___Int___Int,
      Dcon TupMyDTInt_Int_Int___Int___Int) : [(lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf,MyDTInt_Int_Int),
                                              (lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf,Int),
                                              (va8g_1_argbuf,Int)] > (applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1,TupMyDTInt_Int_Int___Int___Int) */
  assign applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d = TupMyDTInt_Int_Int___Int___Int_dc((& {lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_d[0],
                                                                                                        lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_d[0],
                                                                                                        va8g_1_argbuf_d[0]}), lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_d, lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_d, va8g_1_argbuf_d);
  assign {lizzieLet6_6QVal_Int_3QVal_Int_1_argbuf_r,
          lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_r,
          va8g_1_argbuf_r} = {3 {(applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_r && applyfnInt_Int_Int_5TupMyDTInt_Int_Int___Int___Int_1_d[0])}};
  
  /* demux (Ty QTree_Int,
       Ty Go) : (lizzieLet6_6QVal_Int_4,QTree_Int) (lizzieLet6_4QVal_Int,Go) > [(lizzieLet6_6QVal_Int_4QNone_Int,Go),
                                                                                (lizzieLet6_6QVal_Int_4QVal_Int,Go),
                                                                                (lizzieLet6_6QVal_Int_4QNode_Int,Go),
                                                                                (lizzieLet6_6QVal_Int_4QError_Int,Go)] */
  logic [3:0] lizzieLet6_4QVal_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_4_d[0] && lizzieLet6_4QVal_Int_d[0]))
      unique case (lizzieLet6_6QVal_Int_4_d[2:1])
        2'd0: lizzieLet6_4QVal_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_4QVal_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_4QVal_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_4QVal_Int_onehotd = 4'd8;
        default: lizzieLet6_4QVal_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_4QVal_Int_onehotd = 4'd0;
  assign lizzieLet6_6QVal_Int_4QNone_Int_d = lizzieLet6_4QVal_Int_onehotd[0];
  assign lizzieLet6_6QVal_Int_4QVal_Int_d = lizzieLet6_4QVal_Int_onehotd[1];
  assign lizzieLet6_6QVal_Int_4QNode_Int_d = lizzieLet6_4QVal_Int_onehotd[2];
  assign lizzieLet6_6QVal_Int_4QError_Int_d = lizzieLet6_4QVal_Int_onehotd[3];
  assign lizzieLet6_4QVal_Int_r = (| (lizzieLet6_4QVal_Int_onehotd & {lizzieLet6_6QVal_Int_4QError_Int_r,
                                                                      lizzieLet6_6QVal_Int_4QNode_Int_r,
                                                                      lizzieLet6_6QVal_Int_4QVal_Int_r,
                                                                      lizzieLet6_6QVal_Int_4QNone_Int_r}));
  assign lizzieLet6_6QVal_Int_4_r = lizzieLet6_4QVal_Int_r;
  
  /* fork (Ty Go) : (lizzieLet6_6QVal_Int_4QError_Int,Go) > [(lizzieLet6_6QVal_Int_4QError_Int_1,Go),
                                                        (lizzieLet6_6QVal_Int_4QError_Int_2,Go)] */
  logic [1:0] lizzieLet6_6QVal_Int_4QError_Int_emitted;
  logic [1:0] lizzieLet6_6QVal_Int_4QError_Int_done;
  assign lizzieLet6_6QVal_Int_4QError_Int_1_d = (lizzieLet6_6QVal_Int_4QError_Int_d[0] && (! lizzieLet6_6QVal_Int_4QError_Int_emitted[0]));
  assign lizzieLet6_6QVal_Int_4QError_Int_2_d = (lizzieLet6_6QVal_Int_4QError_Int_d[0] && (! lizzieLet6_6QVal_Int_4QError_Int_emitted[1]));
  assign lizzieLet6_6QVal_Int_4QError_Int_done = (lizzieLet6_6QVal_Int_4QError_Int_emitted | ({lizzieLet6_6QVal_Int_4QError_Int_2_d[0],
                                                                                               lizzieLet6_6QVal_Int_4QError_Int_1_d[0]} & {lizzieLet6_6QVal_Int_4QError_Int_2_r,
                                                                                                                                           lizzieLet6_6QVal_Int_4QError_Int_1_r}));
  assign lizzieLet6_6QVal_Int_4QError_Int_r = (& lizzieLet6_6QVal_Int_4QError_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QError_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QVal_Int_4QError_Int_emitted <= (lizzieLet6_6QVal_Int_4QError_Int_r ? 2'd0 :
                                                   lizzieLet6_6QVal_Int_4QError_Int_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QError_Int) : [(lizzieLet6_6QVal_Int_4QError_Int_1,Go)] > (lizzieLet6_6QVal_Int_4QError_Int_1QError_Int,QTree_Int) */
  assign lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_d = QError_Int_dc((& {lizzieLet6_6QVal_Int_4QError_Int_1_d[0]}), lizzieLet6_6QVal_Int_4QError_Int_1_d);
  assign {lizzieLet6_6QVal_Int_4QError_Int_1_r} = {1 {(lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_r && lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet6_6QVal_Int_4QError_Int_1QError_Int,QTree_Int) > (lizzieLet11_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_r = ((! lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d <= {66'd0,
                                                                 1'd0};
    else
      if (lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_r)
        lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d <= lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_d;
  QTree_Int_t lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_r = (! lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf[0]);
  assign lizzieLet11_1_argbuf_d = (lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf :
                                   lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                   1'd0};
    else
      if ((lizzieLet11_1_argbuf_r && lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                     1'd0};
      else if (((! lizzieLet11_1_argbuf_r) && (! lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_buf <= lizzieLet6_6QVal_Int_4QError_Int_1QError_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QVal_Int_4QError_Int_2,Go) > (lizzieLet6_6QVal_Int_4QError_Int_2_argbuf,Go) */
  Go_t lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QError_Int_2_r = ((! lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_4QError_Int_2_r)
        lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d <= lizzieLet6_6QVal_Int_4QError_Int_2_d;
  Go_t lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_r = (! lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_d = (lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf :
                                                        lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_r && lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_4QError_Int_2_argbuf_r) && (! lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_buf <= lizzieLet6_6QVal_Int_4QError_Int_2_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet6_6QVal_Int_4QNode_Int,Go) > [(lizzieLet6_6QVal_Int_4QNode_Int_1,Go),
                                                       (lizzieLet6_6QVal_Int_4QNode_Int_2,Go)] */
  logic [1:0] lizzieLet6_6QVal_Int_4QNode_Int_emitted;
  logic [1:0] lizzieLet6_6QVal_Int_4QNode_Int_done;
  assign lizzieLet6_6QVal_Int_4QNode_Int_1_d = (lizzieLet6_6QVal_Int_4QNode_Int_d[0] && (! lizzieLet6_6QVal_Int_4QNode_Int_emitted[0]));
  assign lizzieLet6_6QVal_Int_4QNode_Int_2_d = (lizzieLet6_6QVal_Int_4QNode_Int_d[0] && (! lizzieLet6_6QVal_Int_4QNode_Int_emitted[1]));
  assign lizzieLet6_6QVal_Int_4QNode_Int_done = (lizzieLet6_6QVal_Int_4QNode_Int_emitted | ({lizzieLet6_6QVal_Int_4QNode_Int_2_d[0],
                                                                                             lizzieLet6_6QVal_Int_4QNode_Int_1_d[0]} & {lizzieLet6_6QVal_Int_4QNode_Int_2_r,
                                                                                                                                        lizzieLet6_6QVal_Int_4QNode_Int_1_r}));
  assign lizzieLet6_6QVal_Int_4QNode_Int_r = (& lizzieLet6_6QVal_Int_4QNode_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNode_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QVal_Int_4QNode_Int_emitted <= (lizzieLet6_6QVal_Int_4QNode_Int_r ? 2'd0 :
                                                  lizzieLet6_6QVal_Int_4QNode_Int_done);
  
  /* dcon (Ty QTree_Int,
      Dcon QError_Int) : [(lizzieLet6_6QVal_Int_4QNode_Int_1,Go)] > (lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int,QTree_Int) */
  assign lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_d = QError_Int_dc((& {lizzieLet6_6QVal_Int_4QNode_Int_1_d[0]}), lizzieLet6_6QVal_Int_4QNode_Int_1_d);
  assign {lizzieLet6_6QVal_Int_4QNode_Int_1_r} = {1 {(lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_r && lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_d[0])}};
  
  /* buf (Ty QTree_Int) : (lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int,QTree_Int) > (lizzieLet10_1_1_argbuf,QTree_Int) */
  QTree_Int_t lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_r = ((! lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d <= {66'd0,
                                                                1'd0};
    else
      if (lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_r)
        lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d <= lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_d;
  QTree_Int_t lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_r = (! lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf[0]);
  assign lizzieLet10_1_1_argbuf_d = (lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf :
                                     lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                  1'd0};
    else
      if ((lizzieLet10_1_1_argbuf_r && lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf <= {66'd0,
                                                                    1'd0};
      else if (((! lizzieLet10_1_1_argbuf_r) && (! lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_buf <= lizzieLet6_6QVal_Int_4QNode_Int_1QError_Int_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QVal_Int_4QNode_Int_2,Go) > (lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf,Go) */
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QNode_Int_2_r = ((! lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_4QNode_Int_2_r)
        lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d <= lizzieLet6_6QVal_Int_4QNode_Int_2_d;
  Go_t lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_r = (! lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_d = (lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf :
                                                       lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_r && lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_4QNode_Int_2_argbuf_r) && (! lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_buf <= lizzieLet6_6QVal_Int_4QNode_Int_2_bufchan_d;
  
  /* buf (Ty Go) : (lizzieLet6_6QVal_Int_4QNone_Int,Go) > (lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf,Go) */
  Go_t lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QNone_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QNone_Int_r = ((! lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_4QNone_Int_r)
        lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d <= lizzieLet6_6QVal_Int_4QNone_Int_d;
  Go_t lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QNone_Int_bufchan_r = (! lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf :
                                                       lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_r && lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_4QNone_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QNone_Int_bufchan_buf <= lizzieLet6_6QVal_Int_4QNone_Int_bufchan_d;
  
  /* fork (Ty Go) : (lizzieLet6_6QVal_Int_4QVal_Int,Go) > [(lizzieLet6_6QVal_Int_4QVal_Int_1,Go),
                                                      (lizzieLet6_6QVal_Int_4QVal_Int_2,Go)] */
  logic [1:0] lizzieLet6_6QVal_Int_4QVal_Int_emitted;
  logic [1:0] lizzieLet6_6QVal_Int_4QVal_Int_done;
  assign lizzieLet6_6QVal_Int_4QVal_Int_1_d = (lizzieLet6_6QVal_Int_4QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_4QVal_Int_emitted[0]));
  assign lizzieLet6_6QVal_Int_4QVal_Int_2_d = (lizzieLet6_6QVal_Int_4QVal_Int_d[0] && (! lizzieLet6_6QVal_Int_4QVal_Int_emitted[1]));
  assign lizzieLet6_6QVal_Int_4QVal_Int_done = (lizzieLet6_6QVal_Int_4QVal_Int_emitted | ({lizzieLet6_6QVal_Int_4QVal_Int_2_d[0],
                                                                                           lizzieLet6_6QVal_Int_4QVal_Int_1_d[0]} & {lizzieLet6_6QVal_Int_4QVal_Int_2_r,
                                                                                                                                     lizzieLet6_6QVal_Int_4QVal_Int_1_r}));
  assign lizzieLet6_6QVal_Int_4QVal_Int_r = (& lizzieLet6_6QVal_Int_4QVal_Int_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QVal_Int_emitted <= 2'd0;
    else
      lizzieLet6_6QVal_Int_4QVal_Int_emitted <= (lizzieLet6_6QVal_Int_4QVal_Int_r ? 2'd0 :
                                                 lizzieLet6_6QVal_Int_4QVal_Int_done);
  
  /* buf (Ty Go) : (lizzieLet6_6QVal_Int_4QVal_Int_1,Go) > (lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf,Go) */
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d;
  logic lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_r;
  assign lizzieLet6_6QVal_Int_4QVal_Int_1_r = ((! lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d[0]) || lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_4QVal_Int_1_r)
        lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d <= lizzieLet6_6QVal_Int_4QVal_Int_1_d;
  Go_t lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf;
  assign lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_r = (! lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf[0] ? lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf :
                                                      lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_r && lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_buf <= lizzieLet6_6QVal_Int_4QVal_Int_1_bufchan_d;
  
  /* dcon (Ty TupGo___MyDTInt_Bool___Int,
      Dcon TupGo___MyDTInt_Bool___Int) : [(lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf,Go),
                                          (lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf,MyDTInt_Bool),
                                          (xa8a_1_argbuf,Int)] > (applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1,TupGo___MyDTInt_Bool___Int) */
  assign applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d = TupGo___MyDTInt_Bool___Int_dc((& {lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_d[0],
                                                                                             lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_d[0],
                                                                                             xa8a_1_argbuf_d[0]}), lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_d, lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_d, xa8a_1_argbuf_d);
  assign {lizzieLet6_6QVal_Int_4QVal_Int_1_argbuf_r,
          lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_r,
          xa8a_1_argbuf_r} = {3 {(applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_r && applyfnInt_Bool_5TupGo___MyDTInt_Bool___Int_1_d[0])}};
  
  /* demux (Ty QTree_Int,
       Ty MyDTInt_Bool) : (lizzieLet6_6QVal_Int_5,QTree_Int) (lizzieLet6_5QVal_Int,MyDTInt_Bool) > [(_13,MyDTInt_Bool),
                                                                                                    (lizzieLet6_6QVal_Int_5QVal_Int,MyDTInt_Bool),
                                                                                                    (_12,MyDTInt_Bool),
                                                                                                    (_11,MyDTInt_Bool)] */
  logic [3:0] lizzieLet6_5QVal_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_5_d[0] && lizzieLet6_5QVal_Int_d[0]))
      unique case (lizzieLet6_6QVal_Int_5_d[2:1])
        2'd0: lizzieLet6_5QVal_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_5QVal_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_5QVal_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_5QVal_Int_onehotd = 4'd8;
        default: lizzieLet6_5QVal_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_5QVal_Int_onehotd = 4'd0;
  assign _13_d = lizzieLet6_5QVal_Int_onehotd[0];
  assign lizzieLet6_6QVal_Int_5QVal_Int_d = lizzieLet6_5QVal_Int_onehotd[1];
  assign _12_d = lizzieLet6_5QVal_Int_onehotd[2];
  assign _11_d = lizzieLet6_5QVal_Int_onehotd[3];
  assign lizzieLet6_5QVal_Int_r = (| (lizzieLet6_5QVal_Int_onehotd & {_11_r,
                                                                      _12_r,
                                                                      lizzieLet6_6QVal_Int_5QVal_Int_r,
                                                                      _13_r}));
  assign lizzieLet6_6QVal_Int_5_r = lizzieLet6_5QVal_Int_r;
  
  /* buf (Ty MyDTInt_Bool) : (lizzieLet6_6QVal_Int_5QVal_Int,MyDTInt_Bool) > (lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_5QVal_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_5QVal_Int_r = ((! lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_5QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d <= 1'd0;
    else
      if (lizzieLet6_6QVal_Int_5QVal_Int_r)
        lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d <= lizzieLet6_6QVal_Int_5QVal_Int_d;
  MyDTInt_Bool_t lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_5QVal_Int_bufchan_r = (! lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf :
                                                      lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf <= 1'd0;
    else
      if ((lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_r && lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf <= 1'd0;
      else if (((! lizzieLet6_6QVal_Int_5QVal_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_5QVal_Int_bufchan_buf <= lizzieLet6_6QVal_Int_5QVal_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_6QVal_Int_6,QTree_Int) (lizzieLet6_7QVal_Int,Pointer_QTree_Int) > [(lizzieLet6_6QVal_Int_6QNone_Int,Pointer_QTree_Int),
                                                                                                              (_10,Pointer_QTree_Int),
                                                                                                              (_9,Pointer_QTree_Int),
                                                                                                              (_8,Pointer_QTree_Int)] */
  logic [3:0] lizzieLet6_7QVal_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_6_d[0] && lizzieLet6_7QVal_Int_d[0]))
      unique case (lizzieLet6_6QVal_Int_6_d[2:1])
        2'd0: lizzieLet6_7QVal_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_7QVal_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_7QVal_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_7QVal_Int_onehotd = 4'd8;
        default: lizzieLet6_7QVal_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_7QVal_Int_onehotd = 4'd0;
  assign lizzieLet6_6QVal_Int_6QNone_Int_d = {lizzieLet6_7QVal_Int_d[16:1],
                                              lizzieLet6_7QVal_Int_onehotd[0]};
  assign _10_d = {lizzieLet6_7QVal_Int_d[16:1],
                  lizzieLet6_7QVal_Int_onehotd[1]};
  assign _9_d = {lizzieLet6_7QVal_Int_d[16:1],
                 lizzieLet6_7QVal_Int_onehotd[2]};
  assign _8_d = {lizzieLet6_7QVal_Int_d[16:1],
                 lizzieLet6_7QVal_Int_onehotd[3]};
  assign lizzieLet6_7QVal_Int_r = (| (lizzieLet6_7QVal_Int_onehotd & {_8_r,
                                                                      _9_r,
                                                                      _10_r,
                                                                      lizzieLet6_6QVal_Int_6QNone_Int_r}));
  assign lizzieLet6_6QVal_Int_6_r = lizzieLet6_7QVal_Int_r;
  
  /* buf (Ty Pointer_QTree_Int) : (lizzieLet6_6QVal_Int_6QNone_Int,Pointer_QTree_Int) > (lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_6QNone_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_6QNone_Int_r = ((! lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_6QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QVal_Int_6QNone_Int_r)
        lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d <= lizzieLet6_6QVal_Int_6QNone_Int_d;
  Pointer_QTree_Int_t lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_6QNone_Int_bufchan_r = (! lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf :
                                                       lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_r && lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QVal_Int_6QNone_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_6QNone_Int_bufchan_buf <= lizzieLet6_6QVal_Int_6QNone_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QVal_Int_7,QTree_Int) (lizzieLet6_9QVal_Int,Pointer_CTmAdd_mAdd_Int) > [(lizzieLet6_6QVal_Int_7QNone_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                          (lizzieLet6_6QVal_Int_7QVal_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                          (lizzieLet6_6QVal_Int_7QNode_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                                          (lizzieLet6_6QVal_Int_7QError_Int,Pointer_CTmAdd_mAdd_Int)] */
  logic [3:0] lizzieLet6_9QVal_Int_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_7_d[0] && lizzieLet6_9QVal_Int_d[0]))
      unique case (lizzieLet6_6QVal_Int_7_d[2:1])
        2'd0: lizzieLet6_9QVal_Int_onehotd = 4'd1;
        2'd1: lizzieLet6_9QVal_Int_onehotd = 4'd2;
        2'd2: lizzieLet6_9QVal_Int_onehotd = 4'd4;
        2'd3: lizzieLet6_9QVal_Int_onehotd = 4'd8;
        default: lizzieLet6_9QVal_Int_onehotd = 4'd0;
      endcase
    else lizzieLet6_9QVal_Int_onehotd = 4'd0;
  assign lizzieLet6_6QVal_Int_7QNone_Int_d = {lizzieLet6_9QVal_Int_d[16:1],
                                              lizzieLet6_9QVal_Int_onehotd[0]};
  assign lizzieLet6_6QVal_Int_7QVal_Int_d = {lizzieLet6_9QVal_Int_d[16:1],
                                             lizzieLet6_9QVal_Int_onehotd[1]};
  assign lizzieLet6_6QVal_Int_7QNode_Int_d = {lizzieLet6_9QVal_Int_d[16:1],
                                              lizzieLet6_9QVal_Int_onehotd[2]};
  assign lizzieLet6_6QVal_Int_7QError_Int_d = {lizzieLet6_9QVal_Int_d[16:1],
                                               lizzieLet6_9QVal_Int_onehotd[3]};
  assign lizzieLet6_9QVal_Int_r = (| (lizzieLet6_9QVal_Int_onehotd & {lizzieLet6_6QVal_Int_7QError_Int_r,
                                                                      lizzieLet6_6QVal_Int_7QNode_Int_r,
                                                                      lizzieLet6_6QVal_Int_7QVal_Int_r,
                                                                      lizzieLet6_6QVal_Int_7QNone_Int_r}));
  assign lizzieLet6_6QVal_Int_7_r = lizzieLet6_9QVal_Int_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QVal_Int_7QError_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QVal_Int_7QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QError_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_7QError_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_7QError_Int_r = ((! lizzieLet6_6QVal_Int_7QError_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_7QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QError_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QVal_Int_7QError_Int_r)
        lizzieLet6_6QVal_Int_7QError_Int_bufchan_d <= lizzieLet6_6QVal_Int_7QError_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_7QError_Int_bufchan_r = (! lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf :
                                                        lizzieLet6_6QVal_Int_7QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_r && lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QVal_Int_7QError_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_7QError_Int_bufchan_buf <= lizzieLet6_6QVal_Int_7QError_Int_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QVal_Int_7QNode_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_7QNode_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_7QNode_Int_r = ((! lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_7QNode_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QVal_Int_7QNode_Int_r)
        lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d <= lizzieLet6_6QVal_Int_7QNode_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_7QNode_Int_bufchan_r = (! lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf :
                                                       lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_r && lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QVal_Int_7QNode_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_7QNode_Int_bufchan_buf <= lizzieLet6_6QVal_Int_7QNode_Int_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_6QVal_Int_7QNone_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_7QNone_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_7QNone_Int_r = ((! lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_7QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_6QVal_Int_7QNone_Int_r)
        lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d <= lizzieLet6_6QVal_Int_7QNone_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_7QNone_Int_bufchan_r = (! lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf :
                                                       lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_r && lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_6QVal_Int_7QNone_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_7QNone_Int_bufchan_buf <= lizzieLet6_6QVal_Int_7QNone_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Int) : (lizzieLet6_6QVal_Int_8,QTree_Int) (v1a8f_destruct,Int) > [(_7,Int),
                                                                            (lizzieLet6_6QVal_Int_8QVal_Int,Int),
                                                                            (_6,Int),
                                                                            (_5,Int)] */
  logic [3:0] v1a8f_destruct_onehotd;
  always_comb
    if ((lizzieLet6_6QVal_Int_8_d[0] && v1a8f_destruct_d[0]))
      unique case (lizzieLet6_6QVal_Int_8_d[2:1])
        2'd0: v1a8f_destruct_onehotd = 4'd1;
        2'd1: v1a8f_destruct_onehotd = 4'd2;
        2'd2: v1a8f_destruct_onehotd = 4'd4;
        2'd3: v1a8f_destruct_onehotd = 4'd8;
        default: v1a8f_destruct_onehotd = 4'd0;
      endcase
    else v1a8f_destruct_onehotd = 4'd0;
  assign _7_d = {v1a8f_destruct_d[32:1], v1a8f_destruct_onehotd[0]};
  assign lizzieLet6_6QVal_Int_8QVal_Int_d = {v1a8f_destruct_d[32:1],
                                             v1a8f_destruct_onehotd[1]};
  assign _6_d = {v1a8f_destruct_d[32:1], v1a8f_destruct_onehotd[2]};
  assign _5_d = {v1a8f_destruct_d[32:1], v1a8f_destruct_onehotd[3]};
  assign v1a8f_destruct_r = (| (v1a8f_destruct_onehotd & {_5_r,
                                                          _6_r,
                                                          lizzieLet6_6QVal_Int_8QVal_Int_r,
                                                          _7_r}));
  assign lizzieLet6_6QVal_Int_8_r = v1a8f_destruct_r;
  
  /* buf (Ty Int) : (lizzieLet6_6QVal_Int_8QVal_Int,Int) > (lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf,Int) */
  Int_t lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d;
  logic lizzieLet6_6QVal_Int_8QVal_Int_bufchan_r;
  assign lizzieLet6_6QVal_Int_8QVal_Int_r = ((! lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d[0]) || lizzieLet6_6QVal_Int_8QVal_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d <= {32'd0, 1'd0};
    else
      if (lizzieLet6_6QVal_Int_8QVal_Int_r)
        lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d <= lizzieLet6_6QVal_Int_8QVal_Int_d;
  Int_t lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf;
  assign lizzieLet6_6QVal_Int_8QVal_Int_bufchan_r = (! lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf[0]);
  assign lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_d = (lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf[0] ? lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf :
                                                      lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_r && lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf[0]))
        lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf <= {32'd0, 1'd0};
      else if (((! lizzieLet6_6QVal_Int_8QVal_Int_1_argbuf_r) && (! lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf[0])))
        lizzieLet6_6QVal_Int_8QVal_Int_bufchan_buf <= lizzieLet6_6QVal_Int_8QVal_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_7,QTree_Int) (m1a8d_2,Pointer_QTree_Int) > [(_4,Pointer_QTree_Int),
                                                                                       (lizzieLet6_7QVal_Int,Pointer_QTree_Int),
                                                                                       (lizzieLet6_7QNode_Int,Pointer_QTree_Int),
                                                                                       (_3,Pointer_QTree_Int)] */
  logic [3:0] m1a8d_2_onehotd;
  always_comb
    if ((lizzieLet6_7_d[0] && m1a8d_2_d[0]))
      unique case (lizzieLet6_7_d[2:1])
        2'd0: m1a8d_2_onehotd = 4'd1;
        2'd1: m1a8d_2_onehotd = 4'd2;
        2'd2: m1a8d_2_onehotd = 4'd4;
        2'd3: m1a8d_2_onehotd = 4'd8;
        default: m1a8d_2_onehotd = 4'd0;
      endcase
    else m1a8d_2_onehotd = 4'd0;
  assign _4_d = {m1a8d_2_d[16:1], m1a8d_2_onehotd[0]};
  assign lizzieLet6_7QVal_Int_d = {m1a8d_2_d[16:1],
                                   m1a8d_2_onehotd[1]};
  assign lizzieLet6_7QNode_Int_d = {m1a8d_2_d[16:1],
                                    m1a8d_2_onehotd[2]};
  assign _3_d = {m1a8d_2_d[16:1], m1a8d_2_onehotd[3]};
  assign m1a8d_2_r = (| (m1a8d_2_onehotd & {_3_r,
                                            lizzieLet6_7QNode_Int_r,
                                            lizzieLet6_7QVal_Int_r,
                                            _4_r}));
  assign lizzieLet6_7_r = m1a8d_2_r;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_QTree_Int) : (lizzieLet6_8,QTree_Int) (m2a8e_2,Pointer_QTree_Int) > [(lizzieLet6_8QNone_Int,Pointer_QTree_Int),
                                                                                       (_2,Pointer_QTree_Int),
                                                                                       (_1,Pointer_QTree_Int),
                                                                                       (_0,Pointer_QTree_Int)] */
  logic [3:0] m2a8e_2_onehotd;
  always_comb
    if ((lizzieLet6_8_d[0] && m2a8e_2_d[0]))
      unique case (lizzieLet6_8_d[2:1])
        2'd0: m2a8e_2_onehotd = 4'd1;
        2'd1: m2a8e_2_onehotd = 4'd2;
        2'd2: m2a8e_2_onehotd = 4'd4;
        2'd3: m2a8e_2_onehotd = 4'd8;
        default: m2a8e_2_onehotd = 4'd0;
      endcase
    else m2a8e_2_onehotd = 4'd0;
  assign lizzieLet6_8QNone_Int_d = {m2a8e_2_d[16:1],
                                    m2a8e_2_onehotd[0]};
  assign _2_d = {m2a8e_2_d[16:1], m2a8e_2_onehotd[1]};
  assign _1_d = {m2a8e_2_d[16:1], m2a8e_2_onehotd[2]};
  assign _0_d = {m2a8e_2_d[16:1], m2a8e_2_onehotd[3]};
  assign m2a8e_2_r = (| (m2a8e_2_onehotd & {_0_r,
                                            _1_r,
                                            _2_r,
                                            lizzieLet6_8QNone_Int_r}));
  assign lizzieLet6_8_r = m2a8e_2_r;
  
  /* buf (Ty Pointer_QTree_Int) : (lizzieLet6_8QNone_Int,Pointer_QTree_Int) > (lizzieLet6_8QNone_Int_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t lizzieLet6_8QNone_Int_bufchan_d;
  logic lizzieLet6_8QNone_Int_bufchan_r;
  assign lizzieLet6_8QNone_Int_r = ((! lizzieLet6_8QNone_Int_bufchan_d[0]) || lizzieLet6_8QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_8QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_8QNone_Int_r)
        lizzieLet6_8QNone_Int_bufchan_d <= lizzieLet6_8QNone_Int_d;
  Pointer_QTree_Int_t lizzieLet6_8QNone_Int_bufchan_buf;
  assign lizzieLet6_8QNone_Int_bufchan_r = (! lizzieLet6_8QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_8QNone_Int_1_argbuf_d = (lizzieLet6_8QNone_Int_bufchan_buf[0] ? lizzieLet6_8QNone_Int_bufchan_buf :
                                             lizzieLet6_8QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_8QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_8QNone_Int_1_argbuf_r && lizzieLet6_8QNone_Int_bufchan_buf[0]))
        lizzieLet6_8QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_8QNone_Int_1_argbuf_r) && (! lizzieLet6_8QNone_Int_bufchan_buf[0])))
        lizzieLet6_8QNone_Int_bufchan_buf <= lizzieLet6_8QNone_Int_bufchan_d;
  
  /* demux (Ty QTree_Int,
       Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_9,QTree_Int) (sc_0_1_goMux_mux,Pointer_CTmAdd_mAdd_Int) > [(lizzieLet6_9QNone_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                            (lizzieLet6_9QVal_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                            (lizzieLet6_9QNode_Int,Pointer_CTmAdd_mAdd_Int),
                                                                                                            (lizzieLet6_9QError_Int,Pointer_CTmAdd_mAdd_Int)] */
  logic [3:0] sc_0_1_goMux_mux_onehotd;
  always_comb
    if ((lizzieLet6_9_d[0] && sc_0_1_goMux_mux_d[0]))
      unique case (lizzieLet6_9_d[2:1])
        2'd0: sc_0_1_goMux_mux_onehotd = 4'd1;
        2'd1: sc_0_1_goMux_mux_onehotd = 4'd2;
        2'd2: sc_0_1_goMux_mux_onehotd = 4'd4;
        2'd3: sc_0_1_goMux_mux_onehotd = 4'd8;
        default: sc_0_1_goMux_mux_onehotd = 4'd0;
      endcase
    else sc_0_1_goMux_mux_onehotd = 4'd0;
  assign lizzieLet6_9QNone_Int_d = {sc_0_1_goMux_mux_d[16:1],
                                    sc_0_1_goMux_mux_onehotd[0]};
  assign lizzieLet6_9QVal_Int_d = {sc_0_1_goMux_mux_d[16:1],
                                   sc_0_1_goMux_mux_onehotd[1]};
  assign lizzieLet6_9QNode_Int_d = {sc_0_1_goMux_mux_d[16:1],
                                    sc_0_1_goMux_mux_onehotd[2]};
  assign lizzieLet6_9QError_Int_d = {sc_0_1_goMux_mux_d[16:1],
                                     sc_0_1_goMux_mux_onehotd[3]};
  assign sc_0_1_goMux_mux_r = (| (sc_0_1_goMux_mux_onehotd & {lizzieLet6_9QError_Int_r,
                                                              lizzieLet6_9QNode_Int_r,
                                                              lizzieLet6_9QVal_Int_r,
                                                              lizzieLet6_9QNone_Int_r}));
  assign lizzieLet6_9_r = sc_0_1_goMux_mux_r;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_9QError_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_9QError_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QError_Int_bufchan_d;
  logic lizzieLet6_9QError_Int_bufchan_r;
  assign lizzieLet6_9QError_Int_r = ((! lizzieLet6_9QError_Int_bufchan_d[0]) || lizzieLet6_9QError_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_9QError_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_9QError_Int_r)
        lizzieLet6_9QError_Int_bufchan_d <= lizzieLet6_9QError_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QError_Int_bufchan_buf;
  assign lizzieLet6_9QError_Int_bufchan_r = (! lizzieLet6_9QError_Int_bufchan_buf[0]);
  assign lizzieLet6_9QError_Int_1_argbuf_d = (lizzieLet6_9QError_Int_bufchan_buf[0] ? lizzieLet6_9QError_Int_bufchan_buf :
                                              lizzieLet6_9QError_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_9QError_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_9QError_Int_1_argbuf_r && lizzieLet6_9QError_Int_bufchan_buf[0]))
        lizzieLet6_9QError_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_9QError_Int_1_argbuf_r) && (! lizzieLet6_9QError_Int_bufchan_buf[0])))
        lizzieLet6_9QError_Int_bufchan_buf <= lizzieLet6_9QError_Int_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (lizzieLet6_9QNone_Int,Pointer_CTmAdd_mAdd_Int) > (lizzieLet6_9QNone_Int_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QNone_Int_bufchan_d;
  logic lizzieLet6_9QNone_Int_bufchan_r;
  assign lizzieLet6_9QNone_Int_r = ((! lizzieLet6_9QNone_Int_bufchan_d[0]) || lizzieLet6_9QNone_Int_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_9QNone_Int_bufchan_d <= {16'd0, 1'd0};
    else
      if (lizzieLet6_9QNone_Int_r)
        lizzieLet6_9QNone_Int_bufchan_d <= lizzieLet6_9QNone_Int_d;
  Pointer_CTmAdd_mAdd_Int_t lizzieLet6_9QNone_Int_bufchan_buf;
  assign lizzieLet6_9QNone_Int_bufchan_r = (! lizzieLet6_9QNone_Int_bufchan_buf[0]);
  assign lizzieLet6_9QNone_Int_1_argbuf_d = (lizzieLet6_9QNone_Int_bufchan_buf[0] ? lizzieLet6_9QNone_Int_bufchan_buf :
                                             lizzieLet6_9QNone_Int_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      lizzieLet6_9QNone_Int_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet6_9QNone_Int_1_argbuf_r && lizzieLet6_9QNone_Int_bufchan_buf[0]))
        lizzieLet6_9QNone_Int_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet6_9QNone_Int_1_argbuf_r) && (! lizzieLet6_9QNone_Int_bufchan_buf[0])))
        lizzieLet6_9QNone_Int_bufchan_buf <= lizzieLet6_9QNone_Int_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (m1a8d_1,Pointer_QTree_Int) > (m1a8d_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t m1a8d_1_bufchan_d;
  logic m1a8d_1_bufchan_r;
  assign m1a8d_1_r = ((! m1a8d_1_bufchan_d[0]) || m1a8d_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a8d_1_bufchan_d <= {16'd0, 1'd0};
    else if (m1a8d_1_r) m1a8d_1_bufchan_d <= m1a8d_1_d;
  Pointer_QTree_Int_t m1a8d_1_bufchan_buf;
  assign m1a8d_1_bufchan_r = (! m1a8d_1_bufchan_buf[0]);
  assign m1a8d_1_argbuf_d = (m1a8d_1_bufchan_buf[0] ? m1a8d_1_bufchan_buf :
                             m1a8d_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a8d_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m1a8d_1_argbuf_r && m1a8d_1_bufchan_buf[0]))
        m1a8d_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m1a8d_1_argbuf_r) && (! m1a8d_1_bufchan_buf[0])))
        m1a8d_1_bufchan_buf <= m1a8d_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Int) : (m1a8d_goMux_mux,Pointer_QTree_Int) > [(m1a8d_1,Pointer_QTree_Int),
                                                                     (m1a8d_2,Pointer_QTree_Int)] */
  logic [1:0] m1a8d_goMux_mux_emitted;
  logic [1:0] m1a8d_goMux_mux_done;
  assign m1a8d_1_d = {m1a8d_goMux_mux_d[16:1],
                      (m1a8d_goMux_mux_d[0] && (! m1a8d_goMux_mux_emitted[0]))};
  assign m1a8d_2_d = {m1a8d_goMux_mux_d[16:1],
                      (m1a8d_goMux_mux_d[0] && (! m1a8d_goMux_mux_emitted[1]))};
  assign m1a8d_goMux_mux_done = (m1a8d_goMux_mux_emitted | ({m1a8d_2_d[0],
                                                             m1a8d_1_d[0]} & {m1a8d_2_r,
                                                                              m1a8d_1_r}));
  assign m1a8d_goMux_mux_r = (& m1a8d_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m1a8d_goMux_mux_emitted <= 2'd0;
    else
      m1a8d_goMux_mux_emitted <= (m1a8d_goMux_mux_r ? 2'd0 :
                                  m1a8d_goMux_mux_done);
  
  /* buf (Ty Pointer_QTree_Int) : (m2a8e_1,Pointer_QTree_Int) > (m2a8e_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t m2a8e_1_bufchan_d;
  logic m2a8e_1_bufchan_r;
  assign m2a8e_1_r = ((! m2a8e_1_bufchan_d[0]) || m2a8e_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a8e_1_bufchan_d <= {16'd0, 1'd0};
    else if (m2a8e_1_r) m2a8e_1_bufchan_d <= m2a8e_1_d;
  Pointer_QTree_Int_t m2a8e_1_bufchan_buf;
  assign m2a8e_1_bufchan_r = (! m2a8e_1_bufchan_buf[0]);
  assign m2a8e_1_argbuf_d = (m2a8e_1_bufchan_buf[0] ? m2a8e_1_bufchan_buf :
                             m2a8e_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a8e_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((m2a8e_1_argbuf_r && m2a8e_1_bufchan_buf[0]))
        m2a8e_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! m2a8e_1_argbuf_r) && (! m2a8e_1_bufchan_buf[0])))
        m2a8e_1_bufchan_buf <= m2a8e_1_bufchan_d;
  
  /* fork (Ty Pointer_QTree_Int) : (m2a8e_goMux_mux,Pointer_QTree_Int) > [(m2a8e_1,Pointer_QTree_Int),
                                                                     (m2a8e_2,Pointer_QTree_Int)] */
  logic [1:0] m2a8e_goMux_mux_emitted;
  logic [1:0] m2a8e_goMux_mux_done;
  assign m2a8e_1_d = {m2a8e_goMux_mux_d[16:1],
                      (m2a8e_goMux_mux_d[0] && (! m2a8e_goMux_mux_emitted[0]))};
  assign m2a8e_2_d = {m2a8e_goMux_mux_d[16:1],
                      (m2a8e_goMux_mux_d[0] && (! m2a8e_goMux_mux_emitted[1]))};
  assign m2a8e_goMux_mux_done = (m2a8e_goMux_mux_emitted | ({m2a8e_2_d[0],
                                                             m2a8e_1_d[0]} & {m2a8e_2_r,
                                                                              m2a8e_1_r}));
  assign m2a8e_goMux_mux_r = (& m2a8e_goMux_mux_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) m2a8e_goMux_mux_emitted <= 2'd0;
    else
      m2a8e_goMux_mux_emitted <= (m2a8e_goMux_mux_r ? 2'd0 :
                                  m2a8e_goMux_mux_done);
  
  /* mergectrl (Ty C2,
           Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) : [(mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int),
                                                                                                 (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int)] > (mAdd_mAdd_Int_choice,C2) (mAdd_mAdd_Int_data,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) */
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d = ((| mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_q) ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_q :
                                                                                                                   (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d[0] ? 2'd1 :
                                                                                                                    (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_d[0] ? 2'd2 :
                                                                                                                     2'd0)));
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_q <= 2'd0;
    else
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_q <= (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done ? 2'd0 :
                                                                                                                 mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d);
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q;
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q <= 2'd0;
    else
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q <= (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done ? 2'd0 :
                                                                                                               mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_d);
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_d;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q | ({mAdd_mAdd_Int_choice_d[0],
                                                                                                                                                                                                                          mAdd_mAdd_Int_data_d[0]} & {mAdd_mAdd_Int_choice_r,
                                                                                                                                                                                                                                                      mAdd_mAdd_Int_data_r}));
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done = (& mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_d);
  assign {mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_r,
          mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_r} = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_done ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d :
                                                                                                              2'd0);
  assign mAdd_mAdd_Int_data_d = ((mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d[0] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q[0])) ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_d :
                                 ((mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d[1] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q[0])) ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int2_d :
                                  {32'd0, 1'd0}));
  assign mAdd_mAdd_Int_choice_d = ((mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d[0] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q[1])) ? C1_2_dc(1'd1) :
                                   ((mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_select_d[1] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int_1_emit_q[1])) ? C2_2_dc(1'd1) :
                                    {1'd0, 1'd0}));
  
  /* buf (Ty MyDTInt_Int_Int) : (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1,MyDTInt_Int_Int) > (ga8c_1_1_argbuf,MyDTInt_Int_Int) */
  MyDTInt_Int_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_r;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_r = ((! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d[0]) || mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d <= 1'd0;
    else
      if (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_r)
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_d;
  MyDTInt_Int_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_r = (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf[0]);
  assign ga8c_1_1_argbuf_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf[0] ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf :
                              mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf <= 1'd0;
    else
      if ((ga8c_1_1_argbuf_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf[0]))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf <= 1'd0;
      else if (((! ga8c_1_1_argbuf_r) && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf[0])))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_buf <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_bufchan_d;
  
  /* fork (Ty Go) : (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11,Go) > [(go_11_1,Go),
                                                                                                                        (go_11_2,Go)] */
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted;
  logic [1:0] mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_done;
  assign go_11_1_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_d[0] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted[0]));
  assign go_11_2_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_d[0] && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted[1]));
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_done = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted | ({go_11_2_d[0],
                                                                                                                                                                                                                               go_11_1_d[0]} & {go_11_2_r,
                                                                                                                                                                                                                                                go_11_1_r}));
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_r = (& mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted <= 2'd0;
    else
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_emitted <= (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_r ? 2'd0 :
                                                                                                                   mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_done);
  
  /* buf (Ty MyDTInt_Bool) : (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1,MyDTInt_Bool) > (isZ1a8b_1_1_argbuf,MyDTInt_Bool) */
  MyDTInt_Bool_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_r;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_r = ((! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d[0]) || mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d <= 1'd0;
    else
      if (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_r)
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_d;
  MyDTInt_Bool_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_r = (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf[0]);
  assign isZ1a8b_1_1_argbuf_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf[0] ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf :
                                 mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf <= 1'd0;
    else
      if ((isZ1a8b_1_1_argbuf_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf[0]))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf <= 1'd0;
      else if (((! isZ1a8b_1_1_argbuf_r) && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf[0])))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_buf <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1,Pointer_QTree_Int) > (m1a8d_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_r;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_r = ((! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d[0]) || mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d <= {16'd0,
                                                                                                                       1'd0};
    else
      if (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_r)
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_d;
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_r = (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf[0]);
  assign m1a8d_1_1_argbuf_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf[0] ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf :
                               mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf <= {16'd0,
                                                                                                                         1'd0};
    else
      if ((m1a8d_1_1_argbuf_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf[0]))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf <= {16'd0,
                                                                                                                           1'd0};
      else if (((! m1a8d_1_1_argbuf_r) && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf[0])))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_buf <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1,Pointer_QTree_Int) > (m2a8e_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d;
  logic mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_r;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_r = ((! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d[0]) || mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d <= {16'd0,
                                                                                                                       1'd0};
    else
      if (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_r)
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_d;
  Pointer_QTree_Int_t mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_r = (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf[0]);
  assign m2a8e_1_1_argbuf_d = (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf[0] ? mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf :
                               mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf <= {16'd0,
                                                                                                                         1'd0};
    else
      if ((m2a8e_1_1_argbuf_r && mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf[0]))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf <= {16'd0,
                                                                                                                           1'd0};
      else if (((! m2a8e_1_1_argbuf_r) && (! mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf[0])))
        mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_buf <= mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_Int_1,Pointer_QTree_Int) > (mAdd_mAdd_Int_resbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_Int_1_bufchan_d;
  logic mAdd_mAdd_Int_1_bufchan_r;
  assign mAdd_mAdd_Int_1_r = ((! mAdd_mAdd_Int_1_bufchan_d[0]) || mAdd_mAdd_Int_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Int_1_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Int_1_r)
        mAdd_mAdd_Int_1_bufchan_d <= mAdd_mAdd_Int_1_d;
  Pointer_QTree_Int_t mAdd_mAdd_Int_1_bufchan_buf;
  assign mAdd_mAdd_Int_1_bufchan_r = (! mAdd_mAdd_Int_1_bufchan_buf[0]);
  assign mAdd_mAdd_Int_resbuf_d = (mAdd_mAdd_Int_1_bufchan_buf[0] ? mAdd_mAdd_Int_1_bufchan_buf :
                                   mAdd_mAdd_Int_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Int_1_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mAdd_mAdd_Int_resbuf_r && mAdd_mAdd_Int_1_bufchan_buf[0]))
        mAdd_mAdd_Int_1_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mAdd_mAdd_Int_resbuf_r) && (! mAdd_mAdd_Int_1_bufchan_buf[0])))
        mAdd_mAdd_Int_1_bufchan_buf <= mAdd_mAdd_Int_1_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_Int_2,Pointer_QTree_Int) > (mAdd_mAdd_Int_2_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_bufchan_d;
  logic mAdd_mAdd_Int_2_bufchan_r;
  assign mAdd_mAdd_Int_2_r = ((! mAdd_mAdd_Int_2_bufchan_d[0]) || mAdd_mAdd_Int_2_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Int_2_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Int_2_r)
        mAdd_mAdd_Int_2_bufchan_d <= mAdd_mAdd_Int_2_d;
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_bufchan_buf;
  assign mAdd_mAdd_Int_2_bufchan_r = (! mAdd_mAdd_Int_2_bufchan_buf[0]);
  assign mAdd_mAdd_Int_2_argbuf_d = (mAdd_mAdd_Int_2_bufchan_buf[0] ? mAdd_mAdd_Int_2_bufchan_buf :
                                     mAdd_mAdd_Int_2_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Int_2_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((mAdd_mAdd_Int_2_argbuf_r && mAdd_mAdd_Int_2_bufchan_buf[0]))
        mAdd_mAdd_Int_2_bufchan_buf <= {16'd0, 1'd0};
      else if (((! mAdd_mAdd_Int_2_argbuf_r) && (! mAdd_mAdd_Int_2_bufchan_buf[0])))
        mAdd_mAdd_Int_2_bufchan_buf <= mAdd_mAdd_Int_2_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_Int_2_argbuf,Pointer_QTree_Int) > (es_0_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_argbuf_bufchan_d;
  logic mAdd_mAdd_Int_2_argbuf_bufchan_r;
  assign mAdd_mAdd_Int_2_argbuf_r = ((! mAdd_mAdd_Int_2_argbuf_bufchan_d[0]) || mAdd_mAdd_Int_2_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Int_2_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Int_2_argbuf_r)
        mAdd_mAdd_Int_2_argbuf_bufchan_d <= mAdd_mAdd_Int_2_argbuf_d;
  Pointer_QTree_Int_t mAdd_mAdd_Int_2_argbuf_bufchan_buf;
  assign mAdd_mAdd_Int_2_argbuf_bufchan_r = (! mAdd_mAdd_Int_2_argbuf_bufchan_buf[0]);
  assign es_0_1_1_argbuf_d = (mAdd_mAdd_Int_2_argbuf_bufchan_buf[0] ? mAdd_mAdd_Int_2_argbuf_bufchan_buf :
                              mAdd_mAdd_Int_2_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Int_2_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_0_1_1_argbuf_r && mAdd_mAdd_Int_2_argbuf_bufchan_buf[0]))
        mAdd_mAdd_Int_2_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_0_1_1_argbuf_r) && (! mAdd_mAdd_Int_2_argbuf_bufchan_buf[0])))
        mAdd_mAdd_Int_2_argbuf_bufchan_buf <= mAdd_mAdd_Int_2_argbuf_bufchan_d;
  
  /* demux (Ty C2,
       Ty Pointer_QTree_Int) : (mAdd_mAdd_Int_choice,C2) (lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2,Pointer_QTree_Int) > [(mAdd_mAdd_Int_1,Pointer_QTree_Int),
                                                                                                                                     (mAdd_mAdd_Int_2,Pointer_QTree_Int)] */
  logic [1:0] lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd;
  always_comb
    if ((mAdd_mAdd_Int_choice_d[0] && lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d[0]))
      unique case (mAdd_mAdd_Int_choice_d[1:1])
        1'd0:
          lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd = 2'd1;
        1'd1:
          lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd = 2'd2;
        default:
          lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd = 2'd0;
      endcase
    else
      lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd = 2'd0;
  assign mAdd_mAdd_Int_1_d = {lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d[16:1],
                              lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd[0]};
  assign mAdd_mAdd_Int_2_d = {lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_d[16:1],
                              lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd[1]};
  assign lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_r = (| (lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_onehotd & {mAdd_mAdd_Int_2_r,
                                                                                                                                      mAdd_mAdd_Int_1_r}));
  assign mAdd_mAdd_Int_choice_r = lizzieLet22_4LmAdd_mAdd_Intsbos_1_merge_merge_fork_2_r;
  
  /* destruct (Ty TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int,
          Dcon TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) : (mAdd_mAdd_Int_data,TupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Int) > [(mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11,Go),
                                                                                                                                                                                                        (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1,MyDTInt_Bool),
                                                                                                                                                                                                        (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1,MyDTInt_Int_Int),
                                                                                                                                                                                                        (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1,Pointer_QTree_Int),
                                                                                                                                                                                                        (mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1,Pointer_QTree_Int)] */
  logic [4:0] mAdd_mAdd_Int_data_emitted;
  logic [4:0] mAdd_mAdd_Int_data_done;
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_d = (mAdd_mAdd_Int_data_d[0] && (! mAdd_mAdd_Int_data_emitted[0]));
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_d = (mAdd_mAdd_Int_data_d[0] && (! mAdd_mAdd_Int_data_emitted[1]));
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_d = (mAdd_mAdd_Int_data_d[0] && (! mAdd_mAdd_Int_data_emitted[2]));
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_d = {mAdd_mAdd_Int_data_d[16:1],
                                                                                                                 (mAdd_mAdd_Int_data_d[0] && (! mAdd_mAdd_Int_data_emitted[3]))};
  assign mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_d = {mAdd_mAdd_Int_data_d[32:17],
                                                                                                                 (mAdd_mAdd_Int_data_d[0] && (! mAdd_mAdd_Int_data_emitted[4]))};
  assign mAdd_mAdd_Int_data_done = (mAdd_mAdd_Int_data_emitted | ({mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_d[0],
                                                                   mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_d[0],
                                                                   mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_d[0],
                                                                   mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_d[0],
                                                                   mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_d[0]} & {mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm2a8e_1_r,
                                                                                                                                                                             mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intm1a8d_1_r,
                                                                                                                                                                             mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intga8c_1_r,
                                                                                                                                                                             mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_IntisZ1a8b_1_r,
                                                                                                                                                                             mAdd_mAdd_IntTupGo___MyDTInt_Bool___MyDTInt_Int_Int___Pointer_QTree_Int___Pointer_QTree_Intgo_11_r}));
  assign mAdd_mAdd_Int_data_r = (& mAdd_mAdd_Int_data_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) mAdd_mAdd_Int_data_emitted <= 5'd0;
    else
      mAdd_mAdd_Int_data_emitted <= (mAdd_mAdd_Int_data_r ? 5'd0 :
                                     mAdd_mAdd_Int_data_done);
  
  /* buf (Ty Pointer_QTree_Int) : (mAdd_mAdd_Int_resbuf,Pointer_QTree_Int) > (es_3_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t mAdd_mAdd_Int_resbuf_bufchan_d;
  logic mAdd_mAdd_Int_resbuf_bufchan_r;
  assign mAdd_mAdd_Int_resbuf_r = ((! mAdd_mAdd_Int_resbuf_bufchan_d[0]) || mAdd_mAdd_Int_resbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Int_resbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (mAdd_mAdd_Int_resbuf_r)
        mAdd_mAdd_Int_resbuf_bufchan_d <= mAdd_mAdd_Int_resbuf_d;
  Pointer_QTree_Int_t mAdd_mAdd_Int_resbuf_bufchan_buf;
  assign mAdd_mAdd_Int_resbuf_bufchan_r = (! mAdd_mAdd_Int_resbuf_bufchan_buf[0]);
  assign es_3_1_argbuf_d = (mAdd_mAdd_Int_resbuf_bufchan_buf[0] ? mAdd_mAdd_Int_resbuf_bufchan_buf :
                            mAdd_mAdd_Int_resbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      mAdd_mAdd_Int_resbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((es_3_1_argbuf_r && mAdd_mAdd_Int_resbuf_bufchan_buf[0]))
        mAdd_mAdd_Int_resbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! es_3_1_argbuf_r) && (! mAdd_mAdd_Int_resbuf_bufchan_buf[0])))
        mAdd_mAdd_Int_resbuf_bufchan_buf <= mAdd_mAdd_Int_resbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q1a8l_3_destruct,Pointer_QTree_Int) > (q1a8l_3_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q1a8l_3_destruct_bufchan_d;
  logic q1a8l_3_destruct_bufchan_r;
  assign q1a8l_3_destruct_r = ((! q1a8l_3_destruct_bufchan_d[0]) || q1a8l_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8l_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8l_3_destruct_r)
        q1a8l_3_destruct_bufchan_d <= q1a8l_3_destruct_d;
  Pointer_QTree_Int_t q1a8l_3_destruct_bufchan_buf;
  assign q1a8l_3_destruct_bufchan_r = (! q1a8l_3_destruct_bufchan_buf[0]);
  assign q1a8l_3_1_argbuf_d = (q1a8l_3_destruct_bufchan_buf[0] ? q1a8l_3_destruct_bufchan_buf :
                               q1a8l_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8l_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8l_3_1_argbuf_r && q1a8l_3_destruct_bufchan_buf[0]))
        q1a8l_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8l_3_1_argbuf_r) && (! q1a8l_3_destruct_bufchan_buf[0])))
        q1a8l_3_destruct_bufchan_buf <= q1a8l_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q1a8v_destruct,Pointer_QTree_Int) > (q1a8v_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q1a8v_destruct_bufchan_d;
  logic q1a8v_destruct_bufchan_r;
  assign q1a8v_destruct_r = ((! q1a8v_destruct_bufchan_d[0]) || q1a8v_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8v_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q1a8v_destruct_r) q1a8v_destruct_bufchan_d <= q1a8v_destruct_d;
  Pointer_QTree_Int_t q1a8v_destruct_bufchan_buf;
  assign q1a8v_destruct_bufchan_r = (! q1a8v_destruct_bufchan_buf[0]);
  assign q1a8v_1_argbuf_d = (q1a8v_destruct_bufchan_buf[0] ? q1a8v_destruct_bufchan_buf :
                             q1a8v_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q1a8v_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q1a8v_1_argbuf_r && q1a8v_destruct_bufchan_buf[0]))
        q1a8v_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q1a8v_1_argbuf_r) && (! q1a8v_destruct_bufchan_buf[0])))
        q1a8v_destruct_bufchan_buf <= q1a8v_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q2a8m_2_destruct,Pointer_QTree_Int) > (q2a8m_2_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q2a8m_2_destruct_bufchan_d;
  logic q2a8m_2_destruct_bufchan_r;
  assign q2a8m_2_destruct_r = ((! q2a8m_2_destruct_bufchan_d[0]) || q2a8m_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8m_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8m_2_destruct_r)
        q2a8m_2_destruct_bufchan_d <= q2a8m_2_destruct_d;
  Pointer_QTree_Int_t q2a8m_2_destruct_bufchan_buf;
  assign q2a8m_2_destruct_bufchan_r = (! q2a8m_2_destruct_bufchan_buf[0]);
  assign q2a8m_2_1_argbuf_d = (q2a8m_2_destruct_bufchan_buf[0] ? q2a8m_2_destruct_bufchan_buf :
                               q2a8m_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8m_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8m_2_1_argbuf_r && q2a8m_2_destruct_bufchan_buf[0]))
        q2a8m_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8m_2_1_argbuf_r) && (! q2a8m_2_destruct_bufchan_buf[0])))
        q2a8m_2_destruct_bufchan_buf <= q2a8m_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q2a8w_1_destruct,Pointer_QTree_Int) > (q2a8w_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q2a8w_1_destruct_bufchan_d;
  logic q2a8w_1_destruct_bufchan_r;
  assign q2a8w_1_destruct_r = ((! q2a8w_1_destruct_bufchan_d[0]) || q2a8w_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8w_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q2a8w_1_destruct_r)
        q2a8w_1_destruct_bufchan_d <= q2a8w_1_destruct_d;
  Pointer_QTree_Int_t q2a8w_1_destruct_bufchan_buf;
  assign q2a8w_1_destruct_bufchan_r = (! q2a8w_1_destruct_bufchan_buf[0]);
  assign q2a8w_1_1_argbuf_d = (q2a8w_1_destruct_bufchan_buf[0] ? q2a8w_1_destruct_bufchan_buf :
                               q2a8w_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q2a8w_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q2a8w_1_1_argbuf_r && q2a8w_1_destruct_bufchan_buf[0]))
        q2a8w_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q2a8w_1_1_argbuf_r) && (! q2a8w_1_destruct_bufchan_buf[0])))
        q2a8w_1_destruct_bufchan_buf <= q2a8w_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q3a8n_1_destruct,Pointer_QTree_Int) > (q3a8n_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q3a8n_1_destruct_bufchan_d;
  logic q3a8n_1_destruct_bufchan_r;
  assign q3a8n_1_destruct_r = ((! q3a8n_1_destruct_bufchan_d[0]) || q3a8n_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8n_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8n_1_destruct_r)
        q3a8n_1_destruct_bufchan_d <= q3a8n_1_destruct_d;
  Pointer_QTree_Int_t q3a8n_1_destruct_bufchan_buf;
  assign q3a8n_1_destruct_bufchan_r = (! q3a8n_1_destruct_bufchan_buf[0]);
  assign q3a8n_1_1_argbuf_d = (q3a8n_1_destruct_bufchan_buf[0] ? q3a8n_1_destruct_bufchan_buf :
                               q3a8n_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8n_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8n_1_1_argbuf_r && q3a8n_1_destruct_bufchan_buf[0]))
        q3a8n_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8n_1_1_argbuf_r) && (! q3a8n_1_destruct_bufchan_buf[0])))
        q3a8n_1_destruct_bufchan_buf <= q3a8n_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q3a8x_2_destruct,Pointer_QTree_Int) > (q3a8x_2_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q3a8x_2_destruct_bufchan_d;
  logic q3a8x_2_destruct_bufchan_r;
  assign q3a8x_2_destruct_r = ((! q3a8x_2_destruct_bufchan_d[0]) || q3a8x_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8x_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q3a8x_2_destruct_r)
        q3a8x_2_destruct_bufchan_d <= q3a8x_2_destruct_d;
  Pointer_QTree_Int_t q3a8x_2_destruct_bufchan_buf;
  assign q3a8x_2_destruct_bufchan_r = (! q3a8x_2_destruct_bufchan_buf[0]);
  assign q3a8x_2_1_argbuf_d = (q3a8x_2_destruct_bufchan_buf[0] ? q3a8x_2_destruct_bufchan_buf :
                               q3a8x_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q3a8x_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q3a8x_2_1_argbuf_r && q3a8x_2_destruct_bufchan_buf[0]))
        q3a8x_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q3a8x_2_1_argbuf_r) && (! q3a8x_2_destruct_bufchan_buf[0])))
        q3a8x_2_destruct_bufchan_buf <= q3a8x_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (q4a8y_3_destruct,Pointer_QTree_Int) > (q4a8y_3_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t q4a8y_3_destruct_bufchan_d;
  logic q4a8y_3_destruct_bufchan_r;
  assign q4a8y_3_destruct_r = ((! q4a8y_3_destruct_bufchan_d[0]) || q4a8y_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8y_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (q4a8y_3_destruct_r)
        q4a8y_3_destruct_bufchan_d <= q4a8y_3_destruct_d;
  Pointer_QTree_Int_t q4a8y_3_destruct_bufchan_buf;
  assign q4a8y_3_destruct_bufchan_r = (! q4a8y_3_destruct_bufchan_buf[0]);
  assign q4a8y_3_1_argbuf_d = (q4a8y_3_destruct_bufchan_buf[0] ? q4a8y_3_destruct_bufchan_buf :
                               q4a8y_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) q4a8y_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((q4a8y_3_1_argbuf_r && q4a8y_3_destruct_bufchan_buf[0]))
        q4a8y_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! q4a8y_3_1_argbuf_r) && (! q4a8y_3_destruct_bufchan_buf[0])))
        q4a8y_3_destruct_bufchan_buf <= q4a8y_3_destruct_bufchan_d;
  
  /* buf (Ty CT$wnnz) : (readPointer_CT$wnnzscfarg_0_1_argbuf,CT$wnnz) > (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb,CT$wnnz) */
  CT$wnnz_t readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d;
  logic readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_r;
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_r = ((! readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d[0]) || readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d <= {115'd0, 1'd0};
    else
      if (readPointer_CT$wnnzscfarg_0_1_argbuf_r)
        readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d <= readPointer_CT$wnnzscfarg_0_1_argbuf_d;
  CT$wnnz_t readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf;
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_r = (! readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf[0]);
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d = (readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf[0] ? readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf :
                                                       readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf <= {115'd0, 1'd0};
    else
      if ((readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_r && readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf[0]))
        readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf <= {115'd0, 1'd0};
      else if (((! readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_r) && (! readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf[0])))
        readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_buf <= readPointer_CT$wnnzscfarg_0_1_argbuf_bufchan_d;
  
  /* fork (Ty CT$wnnz) : (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb,CT$wnnz) > [(lizzieLet18_1,CT$wnnz),
                                                                          (lizzieLet18_2,CT$wnnz),
                                                                          (lizzieLet18_3,CT$wnnz),
                                                                          (lizzieLet18_4,CT$wnnz)] */
  logic [3:0] readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_done;
  assign lizzieLet18_1_d = {readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet18_2_d = {readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet18_3_d = {readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet18_4_d = {readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[115:1],
                            (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_d[0] && (! readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_done = (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted | ({lizzieLet18_4_d[0],
                                                                                                               lizzieLet18_3_d[0],
                                                                                                               lizzieLet18_2_d[0],
                                                                                                               lizzieLet18_1_d[0]} & {lizzieLet18_4_r,
                                                                                                                                      lizzieLet18_3_r,
                                                                                                                                      lizzieLet18_2_r,
                                                                                                                                      lizzieLet18_1_r}));
  assign readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_r = (& readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_emitted <= (readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_r ? 4'd0 :
                                                           readPointer_CT$wnnzscfarg_0_1_argbuf_rwb_done);
  
  /* buf (Ty CTmAdd_mAdd_Int) : (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf,CTmAdd_mAdd_Int) > (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb,CTmAdd_mAdd_Int) */
  CTmAdd_mAdd_Int_t readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d;
  logic readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_r;
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_r = ((! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d[0]) || readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d <= {115'd0,
                                                                   1'd0};
    else
      if (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_r)
        readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d <= readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_d;
  CTmAdd_mAdd_Int_t readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf;
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_r = (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf[0]);
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d = (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf[0] ? readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf :
                                                                 readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf <= {115'd0,
                                                                     1'd0};
    else
      if ((readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_r && readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf[0]))
        readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf <= {115'd0,
                                                                       1'd0};
      else if (((! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_r) && (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf[0])))
        readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_buf <= readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_bufchan_d;
  
  /* fork (Ty CTmAdd_mAdd_Int) : (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb,CTmAdd_mAdd_Int) > [(lizzieLet22_1,CTmAdd_mAdd_Int),
                                                                                                    (lizzieLet22_2,CTmAdd_mAdd_Int),
                                                                                                    (lizzieLet22_3,CTmAdd_mAdd_Int),
                                                                                                    (lizzieLet22_4,CTmAdd_mAdd_Int)] */
  logic [3:0] readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_done;
  assign lizzieLet22_1_d = {readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet22_2_d = {readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet22_3_d = {readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet22_4_d = {readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[115:1],
                            (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_d[0] && (! readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted[3]))};
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_done = (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted | ({lizzieLet22_4_d[0],
                                                                                                                                   lizzieLet22_3_d[0],
                                                                                                                                   lizzieLet22_2_d[0],
                                                                                                                                   lizzieLet22_1_d[0]} & {lizzieLet22_4_r,
                                                                                                                                                          lizzieLet22_3_r,
                                                                                                                                                          lizzieLet22_2_r,
                                                                                                                                                          lizzieLet22_1_r}));
  assign readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_r = (& readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_emitted <= (readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_r ? 4'd0 :
                                                                     readPointer_CTmAdd_mAdd_Intscfarg_0_1_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Int) : (readPointer_QTree_Intm1a8d_1_argbuf,QTree_Int) > (readPointer_QTree_Intm1a8d_1_argbuf_rwb,QTree_Int) */
  QTree_Int_t readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d;
  logic readPointer_QTree_Intm1a8d_1_argbuf_bufchan_r;
  assign readPointer_QTree_Intm1a8d_1_argbuf_r = ((! readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d[0]) || readPointer_QTree_Intm1a8d_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Intm1a8d_1_argbuf_r)
        readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d <= readPointer_QTree_Intm1a8d_1_argbuf_d;
  QTree_Int_t readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Intm1a8d_1_argbuf_bufchan_r = (! readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Intm1a8d_1_argbuf_rwb_d = (readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf :
                                                      readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Intm1a8d_1_argbuf_rwb_r && readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Intm1a8d_1_argbuf_rwb_r) && (! readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Intm1a8d_1_argbuf_bufchan_buf <= readPointer_QTree_Intm1a8d_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Int) : (readPointer_QTree_Intm1a8d_1_argbuf_rwb,QTree_Int) > [(lizzieLet6_1,QTree_Int),
                                                                             (lizzieLet6_2,QTree_Int),
                                                                             (lizzieLet6_3,QTree_Int),
                                                                             (lizzieLet6_4,QTree_Int),
                                                                             (lizzieLet6_5,QTree_Int),
                                                                             (lizzieLet6_6,QTree_Int),
                                                                             (lizzieLet6_7,QTree_Int),
                                                                             (lizzieLet6_8,QTree_Int),
                                                                             (lizzieLet6_9,QTree_Int)] */
  logic [8:0] readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted;
  logic [8:0] readPointer_QTree_Intm1a8d_1_argbuf_rwb_done;
  assign lizzieLet6_1_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet6_2_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet6_3_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet6_4_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[3]))};
  assign lizzieLet6_5_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[4]))};
  assign lizzieLet6_6_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[5]))};
  assign lizzieLet6_7_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[6]))};
  assign lizzieLet6_8_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[7]))};
  assign lizzieLet6_9_d = {readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_Intm1a8d_1_argbuf_rwb_d[0] && (! readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted[8]))};
  assign readPointer_QTree_Intm1a8d_1_argbuf_rwb_done = (readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted | ({lizzieLet6_9_d[0],
                                                                                                             lizzieLet6_8_d[0],
                                                                                                             lizzieLet6_7_d[0],
                                                                                                             lizzieLet6_6_d[0],
                                                                                                             lizzieLet6_5_d[0],
                                                                                                             lizzieLet6_4_d[0],
                                                                                                             lizzieLet6_3_d[0],
                                                                                                             lizzieLet6_2_d[0],
                                                                                                             lizzieLet6_1_d[0]} & {lizzieLet6_9_r,
                                                                                                                                   lizzieLet6_8_r,
                                                                                                                                   lizzieLet6_7_r,
                                                                                                                                   lizzieLet6_6_r,
                                                                                                                                   lizzieLet6_5_r,
                                                                                                                                   lizzieLet6_4_r,
                                                                                                                                   lizzieLet6_3_r,
                                                                                                                                   lizzieLet6_2_r,
                                                                                                                                   lizzieLet6_1_r}));
  assign readPointer_QTree_Intm1a8d_1_argbuf_rwb_r = (& readPointer_QTree_Intm1a8d_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted <= 9'd0;
    else
      readPointer_QTree_Intm1a8d_1_argbuf_rwb_emitted <= (readPointer_QTree_Intm1a8d_1_argbuf_rwb_r ? 9'd0 :
                                                          readPointer_QTree_Intm1a8d_1_argbuf_rwb_done);
  
  /* buf (Ty QTree_Int) : (readPointer_QTree_Intm2a8e_1_argbuf,QTree_Int) > (readPointer_QTree_Intm2a8e_1_argbuf_rwb,QTree_Int) */
  QTree_Int_t readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d;
  logic readPointer_QTree_Intm2a8e_1_argbuf_bufchan_r;
  assign readPointer_QTree_Intm2a8e_1_argbuf_r = ((! readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d[0]) || readPointer_QTree_Intm2a8e_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_Intm2a8e_1_argbuf_r)
        readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d <= readPointer_QTree_Intm2a8e_1_argbuf_d;
  QTree_Int_t readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf;
  assign readPointer_QTree_Intm2a8e_1_argbuf_bufchan_r = (! readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_Intm2a8e_1_argbuf_rwb_d = (readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf[0] ? readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf :
                                                      readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_Intm2a8e_1_argbuf_rwb_r && readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_Intm2a8e_1_argbuf_rwb_r) && (! readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_Intm2a8e_1_argbuf_bufchan_buf <= readPointer_QTree_Intm2a8e_1_argbuf_bufchan_d;
  
  /* buf (Ty QTree_Int) : (readPointer_QTree_IntwshD_1_1_argbuf,QTree_Int) > (readPointer_QTree_IntwshD_1_1_argbuf_rwb,QTree_Int) */
  QTree_Int_t readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d;
  logic readPointer_QTree_IntwshD_1_1_argbuf_bufchan_r;
  assign readPointer_QTree_IntwshD_1_1_argbuf_r = ((! readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d[0]) || readPointer_QTree_IntwshD_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d <= {66'd0, 1'd0};
    else
      if (readPointer_QTree_IntwshD_1_1_argbuf_r)
        readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d <= readPointer_QTree_IntwshD_1_1_argbuf_d;
  QTree_Int_t readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf;
  assign readPointer_QTree_IntwshD_1_1_argbuf_bufchan_r = (! readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf[0]);
  assign readPointer_QTree_IntwshD_1_1_argbuf_rwb_d = (readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf[0] ? readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf :
                                                       readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
    else
      if ((readPointer_QTree_IntwshD_1_1_argbuf_rwb_r && readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf[0]))
        readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf <= {66'd0, 1'd0};
      else if (((! readPointer_QTree_IntwshD_1_1_argbuf_rwb_r) && (! readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf[0])))
        readPointer_QTree_IntwshD_1_1_argbuf_bufchan_buf <= readPointer_QTree_IntwshD_1_1_argbuf_bufchan_d;
  
  /* fork (Ty QTree_Int) : (readPointer_QTree_IntwshD_1_1_argbuf_rwb,QTree_Int) > [(lizzieLet4_1,QTree_Int),
                                                                              (lizzieLet4_2,QTree_Int),
                                                                              (lizzieLet4_3,QTree_Int),
                                                                              (lizzieLet4_4,QTree_Int)] */
  logic [3:0] readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted;
  logic [3:0] readPointer_QTree_IntwshD_1_1_argbuf_rwb_done;
  assign lizzieLet4_1_d = {readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted[0]))};
  assign lizzieLet4_2_d = {readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted[1]))};
  assign lizzieLet4_3_d = {readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted[2]))};
  assign lizzieLet4_4_d = {readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[66:1],
                           (readPointer_QTree_IntwshD_1_1_argbuf_rwb_d[0] && (! readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted[3]))};
  assign readPointer_QTree_IntwshD_1_1_argbuf_rwb_done = (readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted | ({lizzieLet4_4_d[0],
                                                                                                               lizzieLet4_3_d[0],
                                                                                                               lizzieLet4_2_d[0],
                                                                                                               lizzieLet4_1_d[0]} & {lizzieLet4_4_r,
                                                                                                                                     lizzieLet4_3_r,
                                                                                                                                     lizzieLet4_2_r,
                                                                                                                                     lizzieLet4_1_r}));
  assign readPointer_QTree_IntwshD_1_1_argbuf_rwb_r = (& readPointer_QTree_IntwshD_1_1_argbuf_rwb_done);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted <= 4'd0;
    else
      readPointer_QTree_IntwshD_1_1_argbuf_rwb_emitted <= (readPointer_QTree_IntwshD_1_1_argbuf_rwb_r ? 4'd0 :
                                                           readPointer_QTree_IntwshD_1_1_argbuf_rwb_done);
  
  /* buf (Ty Pointer_CT$wnnz) : (sc_0_5_destruct,Pointer_CT$wnnz) > (sc_0_5_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t sc_0_5_destruct_bufchan_d;
  logic sc_0_5_destruct_bufchan_r;
  assign sc_0_5_destruct_r = ((! sc_0_5_destruct_bufchan_d[0]) || sc_0_5_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_5_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_5_destruct_r)
        sc_0_5_destruct_bufchan_d <= sc_0_5_destruct_d;
  Pointer_CT$wnnz_t sc_0_5_destruct_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (sc_0_9_destruct,Pointer_CTmAdd_mAdd_Int) > (sc_0_9_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t sc_0_9_destruct_bufchan_d;
  logic sc_0_9_destruct_bufchan_r;
  assign sc_0_9_destruct_r = ((! sc_0_9_destruct_bufchan_d[0]) || sc_0_9_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) sc_0_9_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (sc_0_9_destruct_r)
        sc_0_9_destruct_bufchan_d <= sc_0_9_destruct_d;
  Pointer_CTmAdd_mAdd_Int_t sc_0_9_destruct_bufchan_buf;
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
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (scfarg_0_1_goMux_mux,Pointer_CTmAdd_mAdd_Int) > (scfarg_0_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t scfarg_0_1_goMux_mux_bufchan_d;
  logic scfarg_0_1_goMux_mux_bufchan_r;
  assign scfarg_0_1_goMux_mux_r = ((! scfarg_0_1_goMux_mux_bufchan_d[0]) || scfarg_0_1_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      scfarg_0_1_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_1_goMux_mux_r)
        scfarg_0_1_goMux_mux_bufchan_d <= scfarg_0_1_goMux_mux_d;
  Pointer_CTmAdd_mAdd_Int_t scfarg_0_1_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty Pointer_CT$wnnz) : (scfarg_0_goMux_mux,Pointer_CT$wnnz) > (scfarg_0_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t scfarg_0_goMux_mux_bufchan_d;
  logic scfarg_0_goMux_mux_bufchan_r;
  assign scfarg_0_goMux_mux_r = ((! scfarg_0_goMux_mux_bufchan_d[0]) || scfarg_0_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) scfarg_0_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (scfarg_0_goMux_mux_r)
        scfarg_0_goMux_mux_bufchan_d <= scfarg_0_goMux_mux_d;
  Pointer_CT$wnnz_t scfarg_0_goMux_mux_bufchan_buf;
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
  
  /* buf (Ty Pointer_QTree_Int) : (t1a8q_3_destruct,Pointer_QTree_Int) > (t1a8q_3_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t t1a8q_3_destruct_bufchan_d;
  logic t1a8q_3_destruct_bufchan_r;
  assign t1a8q_3_destruct_r = ((! t1a8q_3_destruct_bufchan_d[0]) || t1a8q_3_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8q_3_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t1a8q_3_destruct_r)
        t1a8q_3_destruct_bufchan_d <= t1a8q_3_destruct_d;
  Pointer_QTree_Int_t t1a8q_3_destruct_bufchan_buf;
  assign t1a8q_3_destruct_bufchan_r = (! t1a8q_3_destruct_bufchan_buf[0]);
  assign t1a8q_3_1_argbuf_d = (t1a8q_3_destruct_bufchan_buf[0] ? t1a8q_3_destruct_bufchan_buf :
                               t1a8q_3_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t1a8q_3_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t1a8q_3_1_argbuf_r && t1a8q_3_destruct_bufchan_buf[0]))
        t1a8q_3_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t1a8q_3_1_argbuf_r) && (! t1a8q_3_destruct_bufchan_buf[0])))
        t1a8q_3_destruct_bufchan_buf <= t1a8q_3_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (t2a8r_2_destruct,Pointer_QTree_Int) > (t2a8r_2_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t t2a8r_2_destruct_bufchan_d;
  logic t2a8r_2_destruct_bufchan_r;
  assign t2a8r_2_destruct_r = ((! t2a8r_2_destruct_bufchan_d[0]) || t2a8r_2_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8r_2_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t2a8r_2_destruct_r)
        t2a8r_2_destruct_bufchan_d <= t2a8r_2_destruct_d;
  Pointer_QTree_Int_t t2a8r_2_destruct_bufchan_buf;
  assign t2a8r_2_destruct_bufchan_r = (! t2a8r_2_destruct_bufchan_buf[0]);
  assign t2a8r_2_1_argbuf_d = (t2a8r_2_destruct_bufchan_buf[0] ? t2a8r_2_destruct_bufchan_buf :
                               t2a8r_2_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t2a8r_2_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t2a8r_2_1_argbuf_r && t2a8r_2_destruct_bufchan_buf[0]))
        t2a8r_2_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t2a8r_2_1_argbuf_r) && (! t2a8r_2_destruct_bufchan_buf[0])))
        t2a8r_2_destruct_bufchan_buf <= t2a8r_2_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (t3a8s_1_destruct,Pointer_QTree_Int) > (t3a8s_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t t3a8s_1_destruct_bufchan_d;
  logic t3a8s_1_destruct_bufchan_r;
  assign t3a8s_1_destruct_r = ((! t3a8s_1_destruct_bufchan_d[0]) || t3a8s_1_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8s_1_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t3a8s_1_destruct_r)
        t3a8s_1_destruct_bufchan_d <= t3a8s_1_destruct_d;
  Pointer_QTree_Int_t t3a8s_1_destruct_bufchan_buf;
  assign t3a8s_1_destruct_bufchan_r = (! t3a8s_1_destruct_bufchan_buf[0]);
  assign t3a8s_1_1_argbuf_d = (t3a8s_1_destruct_bufchan_buf[0] ? t3a8s_1_destruct_bufchan_buf :
                               t3a8s_1_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t3a8s_1_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t3a8s_1_1_argbuf_r && t3a8s_1_destruct_bufchan_buf[0]))
        t3a8s_1_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t3a8s_1_1_argbuf_r) && (! t3a8s_1_destruct_bufchan_buf[0])))
        t3a8s_1_destruct_bufchan_buf <= t3a8s_1_destruct_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (t4a8t_destruct,Pointer_QTree_Int) > (t4a8t_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t t4a8t_destruct_bufchan_d;
  logic t4a8t_destruct_bufchan_r;
  assign t4a8t_destruct_r = ((! t4a8t_destruct_bufchan_d[0]) || t4a8t_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8t_destruct_bufchan_d <= {16'd0, 1'd0};
    else
      if (t4a8t_destruct_r) t4a8t_destruct_bufchan_d <= t4a8t_destruct_d;
  Pointer_QTree_Int_t t4a8t_destruct_bufchan_buf;
  assign t4a8t_destruct_bufchan_r = (! t4a8t_destruct_bufchan_buf[0]);
  assign t4a8t_1_argbuf_d = (t4a8t_destruct_bufchan_buf[0] ? t4a8t_destruct_bufchan_buf :
                             t4a8t_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) t4a8t_destruct_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((t4a8t_1_argbuf_r && t4a8t_destruct_bufchan_buf[0]))
        t4a8t_destruct_bufchan_buf <= {16'd0, 1'd0};
      else if (((! t4a8t_1_argbuf_r) && (! t4a8t_destruct_bufchan_buf[0])))
        t4a8t_destruct_bufchan_buf <= t4a8t_destruct_bufchan_d;
  
  /* buf (Ty Int) : (va8g_destruct,Int) > (va8g_1_argbuf,Int) */
  Int_t va8g_destruct_bufchan_d;
  logic va8g_destruct_bufchan_r;
  assign va8g_destruct_r = ((! va8g_destruct_bufchan_d[0]) || va8g_destruct_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8g_destruct_bufchan_d <= {32'd0, 1'd0};
    else
      if (va8g_destruct_r) va8g_destruct_bufchan_d <= va8g_destruct_d;
  Int_t va8g_destruct_bufchan_buf;
  assign va8g_destruct_bufchan_r = (! va8g_destruct_bufchan_buf[0]);
  assign va8g_1_argbuf_d = (va8g_destruct_bufchan_buf[0] ? va8g_destruct_bufchan_buf :
                            va8g_destruct_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) va8g_destruct_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((va8g_1_argbuf_r && va8g_destruct_bufchan_buf[0]))
        va8g_destruct_bufchan_buf <= {32'd0, 1'd0};
      else if (((! va8g_1_argbuf_r) && (! va8g_destruct_bufchan_buf[0])))
        va8g_destruct_bufchan_buf <= va8g_destruct_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet0_1_argbuf,Pointer_CT$wnnz) > (writeCT$wnnzlizzieLet0_1_argbuf_rwb,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d;
  logic writeCT$wnnzlizzieLet0_1_argbuf_bufchan_r;
  assign writeCT$wnnzlizzieLet0_1_argbuf_r = ((! writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d[0]) || writeCT$wnnzlizzieLet0_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet0_1_argbuf_r)
        writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d <= writeCT$wnnzlizzieLet0_1_argbuf_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf;
  assign writeCT$wnnzlizzieLet0_1_argbuf_bufchan_r = (! writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf[0]);
  assign writeCT$wnnzlizzieLet0_1_argbuf_rwb_d = (writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf[0] ? writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf :
                                                  writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wnnzlizzieLet0_1_argbuf_rwb_r && writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf[0]))
        writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wnnzlizzieLet0_1_argbuf_rwb_r) && (! writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf[0])))
        writeCT$wnnzlizzieLet0_1_argbuf_bufchan_buf <= writeCT$wnnzlizzieLet0_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet0_1_argbuf_rwb,Pointer_CT$wnnz) > (lizzieLet10_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d;
  logic writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_r;
  assign writeCT$wnnzlizzieLet0_1_argbuf_rwb_r = ((! writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d[0]) || writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet0_1_argbuf_rwb_r)
        writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d <= writeCT$wnnzlizzieLet0_1_argbuf_rwb_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_r = (! writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet10_1_argbuf_d = (writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf :
                                   writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((lizzieLet10_1_argbuf_r && writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! lizzieLet10_1_argbuf_r) && (! writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_buf <= writeCT$wnnzlizzieLet0_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet19_1_argbuf,Pointer_CT$wnnz) > (writeCT$wnnzlizzieLet19_1_argbuf_rwb,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d;
  logic writeCT$wnnzlizzieLet19_1_argbuf_bufchan_r;
  assign writeCT$wnnzlizzieLet19_1_argbuf_r = ((! writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d[0]) || writeCT$wnnzlizzieLet19_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet19_1_argbuf_r)
        writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d <= writeCT$wnnzlizzieLet19_1_argbuf_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf;
  assign writeCT$wnnzlizzieLet19_1_argbuf_bufchan_r = (! writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf[0]);
  assign writeCT$wnnzlizzieLet19_1_argbuf_rwb_d = (writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf[0] ? writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf :
                                                   writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wnnzlizzieLet19_1_argbuf_rwb_r && writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf[0]))
        writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wnnzlizzieLet19_1_argbuf_rwb_r) && (! writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf[0])))
        writeCT$wnnzlizzieLet19_1_argbuf_bufchan_buf <= writeCT$wnnzlizzieLet19_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet19_1_argbuf_rwb,Pointer_CT$wnnz) > (sca2_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d;
  logic writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_r;
  assign writeCT$wnnzlizzieLet19_1_argbuf_rwb_r = ((! writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d[0]) || writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet19_1_argbuf_rwb_r)
        writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d <= writeCT$wnnzlizzieLet19_1_argbuf_rwb_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_r = (! writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_argbuf_d = (writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf :
                            writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca2_1_argbuf_r && writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca2_1_argbuf_r) && (! writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_buf <= writeCT$wnnzlizzieLet19_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet20_1_argbuf,Pointer_CT$wnnz) > (writeCT$wnnzlizzieLet20_1_argbuf_rwb,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d;
  logic writeCT$wnnzlizzieLet20_1_argbuf_bufchan_r;
  assign writeCT$wnnzlizzieLet20_1_argbuf_r = ((! writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d[0]) || writeCT$wnnzlizzieLet20_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet20_1_argbuf_r)
        writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d <= writeCT$wnnzlizzieLet20_1_argbuf_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf;
  assign writeCT$wnnzlizzieLet20_1_argbuf_bufchan_r = (! writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf[0]);
  assign writeCT$wnnzlizzieLet20_1_argbuf_rwb_d = (writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf[0] ? writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf :
                                                   writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wnnzlizzieLet20_1_argbuf_rwb_r && writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf[0]))
        writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wnnzlizzieLet20_1_argbuf_rwb_r) && (! writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf[0])))
        writeCT$wnnzlizzieLet20_1_argbuf_bufchan_buf <= writeCT$wnnzlizzieLet20_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet20_1_argbuf_rwb,Pointer_CT$wnnz) > (sca1_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d;
  logic writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_r;
  assign writeCT$wnnzlizzieLet20_1_argbuf_rwb_r = ((! writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d[0]) || writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet20_1_argbuf_rwb_r)
        writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d <= writeCT$wnnzlizzieLet20_1_argbuf_rwb_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_r = (! writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_argbuf_d = (writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf :
                            writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca1_1_argbuf_r && writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca1_1_argbuf_r) && (! writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_buf <= writeCT$wnnzlizzieLet20_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet21_1_argbuf,Pointer_CT$wnnz) > (writeCT$wnnzlizzieLet21_1_argbuf_rwb,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d;
  logic writeCT$wnnzlizzieLet21_1_argbuf_bufchan_r;
  assign writeCT$wnnzlizzieLet21_1_argbuf_r = ((! writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d[0]) || writeCT$wnnzlizzieLet21_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet21_1_argbuf_r)
        writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d <= writeCT$wnnzlizzieLet21_1_argbuf_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf;
  assign writeCT$wnnzlizzieLet21_1_argbuf_bufchan_r = (! writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf[0]);
  assign writeCT$wnnzlizzieLet21_1_argbuf_rwb_d = (writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf[0] ? writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf :
                                                   writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wnnzlizzieLet21_1_argbuf_rwb_r && writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf[0]))
        writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wnnzlizzieLet21_1_argbuf_rwb_r) && (! writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf[0])))
        writeCT$wnnzlizzieLet21_1_argbuf_bufchan_buf <= writeCT$wnnzlizzieLet21_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet21_1_argbuf_rwb,Pointer_CT$wnnz) > (sca0_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d;
  logic writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_r;
  assign writeCT$wnnzlizzieLet21_1_argbuf_rwb_r = ((! writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d[0]) || writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet21_1_argbuf_rwb_r)
        writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d <= writeCT$wnnzlizzieLet21_1_argbuf_rwb_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_r = (! writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_argbuf_d = (writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf :
                            writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca0_1_argbuf_r && writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca0_1_argbuf_r) && (! writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_buf <= writeCT$wnnzlizzieLet21_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet5_1_argbuf,Pointer_CT$wnnz) > (writeCT$wnnzlizzieLet5_1_argbuf_rwb,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d;
  logic writeCT$wnnzlizzieLet5_1_argbuf_bufchan_r;
  assign writeCT$wnnzlizzieLet5_1_argbuf_r = ((! writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d[0]) || writeCT$wnnzlizzieLet5_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet5_1_argbuf_r)
        writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d <= writeCT$wnnzlizzieLet5_1_argbuf_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf;
  assign writeCT$wnnzlizzieLet5_1_argbuf_bufchan_r = (! writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf[0]);
  assign writeCT$wnnzlizzieLet5_1_argbuf_rwb_d = (writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf[0] ? writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf :
                                                  writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeCT$wnnzlizzieLet5_1_argbuf_rwb_r && writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf[0]))
        writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeCT$wnnzlizzieLet5_1_argbuf_rwb_r) && (! writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf[0])))
        writeCT$wnnzlizzieLet5_1_argbuf_bufchan_buf <= writeCT$wnnzlizzieLet5_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CT$wnnz) : (writeCT$wnnzlizzieLet5_1_argbuf_rwb,Pointer_CT$wnnz) > (sca3_1_argbuf,Pointer_CT$wnnz) */
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d;
  logic writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_r;
  assign writeCT$wnnzlizzieLet5_1_argbuf_rwb_r = ((! writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d[0]) || writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeCT$wnnzlizzieLet5_1_argbuf_rwb_r)
        writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d <= writeCT$wnnzlizzieLet5_1_argbuf_rwb_d;
  Pointer_CT$wnnz_t writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf;
  assign writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_r = (! writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_argbuf_d = (writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf[0] ? writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf :
                            writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((sca3_1_argbuf_r && writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf[0]))
        writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf <= {16'd0, 1'd0};
      else if (((! sca3_1_argbuf_r) && (! writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf[0])))
        writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_buf <= writeCT$wnnzlizzieLet5_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf,Pointer_CTmAdd_mAdd_Int) > (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_r = ((! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_r)
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_d = (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_r && writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) > (sca3_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf[0]);
  assign sca3_1_1_argbuf_d = (writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf :
                              writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((sca3_1_1_argbuf_r && writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! sca3_1_1_argbuf_r) && (! writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet14_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf,Pointer_CTmAdd_mAdd_Int) > (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_r = ((! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_r)
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_d = (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_r && writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) > (lizzieLet7_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet7_1_1_argbuf_d = (writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf :
                                    writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((lizzieLet7_1_1_argbuf_r && writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! lizzieLet7_1_1_argbuf_r) && (! writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet17_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf,Pointer_CTmAdd_mAdd_Int) > (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_r = ((! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_r)
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_d = (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_r && writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) > (sca2_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf[0]);
  assign sca2_1_1_argbuf_d = (writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf :
                              writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((sca2_1_1_argbuf_r && writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! sca2_1_1_argbuf_r) && (! writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet23_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf,Pointer_CTmAdd_mAdd_Int) > (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_r = ((! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_r)
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_d = (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_r && writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) > (sca1_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf[0]);
  assign sca1_1_1_argbuf_d = (writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf :
                              writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((sca1_1_1_argbuf_r && writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! sca1_1_1_argbuf_r) && (! writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet24_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf,Pointer_CTmAdd_mAdd_Int) > (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_r = ((! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_r)
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf[0]);
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_d = (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf :
                                                           writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_r && writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_r) && (! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_CTmAdd_mAdd_Int) : (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb,Pointer_CTmAdd_mAdd_Int) > (sca0_1_1_argbuf,Pointer_CTmAdd_mAdd_Int) */
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d;
  logic writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_r;
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_r = ((! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d[0]) || writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                                 1'd0};
    else
      if (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_r)
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d <= writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_d;
  Pointer_CTmAdd_mAdd_Int_t writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf;
  assign writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_r = (! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf[0]);
  assign sca0_1_1_argbuf_d = (writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf[0] ? writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf :
                              writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                   1'd0};
    else
      if ((sca0_1_1_argbuf_r && writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf[0]))
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                     1'd0};
      else if (((! sca0_1_1_argbuf_r) && (! writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf[0])))
        writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_buf <= writeCTmAdd_mAdd_IntlizzieLet25_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet10_1_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet10_1_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet10_1_1_argbuf_r = ((! writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet10_1_1_argbuf_r)
        writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet10_1_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet10_1_1_argbuf_rwb_d = (writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf :
                                                       writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet10_1_1_argbuf_rwb_r && writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet10_1_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet10_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet10_1_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet2_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet10_1_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d <= {16'd0,
                                                             1'd0};
    else
      if (writeQTree_IntlizzieLet10_1_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet10_1_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet2_1_1_argbuf_d = (writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
    else
      if ((lizzieLet2_1_1_argbuf_r && writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                 1'd0};
      else if (((! lizzieLet2_1_1_argbuf_r) && (! writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet10_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet11_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet11_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet11_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet11_1_argbuf_r = ((! writeQTree_IntlizzieLet11_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet11_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet11_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet11_1_argbuf_r)
        writeQTree_IntlizzieLet11_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet11_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet11_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet11_1_argbuf_rwb_d = (writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf :
                                                     writeQTree_IntlizzieLet11_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet11_1_argbuf_rwb_r && writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet11_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet11_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet11_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet11_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet3_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet11_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet11_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet11_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet3_1_1_argbuf_d = (writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet3_1_1_argbuf_r && writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet3_1_1_argbuf_r) && (! writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet11_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet13_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet13_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet13_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet13_1_argbuf_r = ((! writeQTree_IntlizzieLet13_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet13_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet13_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet13_1_argbuf_r)
        writeQTree_IntlizzieLet13_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet13_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet13_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet13_1_argbuf_rwb_d = (writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf :
                                                     writeQTree_IntlizzieLet13_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet13_1_argbuf_rwb_r && writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet13_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet13_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet13_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet13_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet4_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet13_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet13_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet13_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet4_1_1_argbuf_d = (writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet4_1_1_argbuf_r && writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet4_1_1_argbuf_r) && (! writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet13_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet15_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet15_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet15_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet15_1_argbuf_r = ((! writeQTree_IntlizzieLet15_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet15_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet15_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet15_1_argbuf_r)
        writeQTree_IntlizzieLet15_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet15_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet15_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet15_1_argbuf_rwb_d = (writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf :
                                                     writeQTree_IntlizzieLet15_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet15_1_argbuf_rwb_r && writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet15_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet15_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet15_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet15_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet5_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet15_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet15_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet15_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet5_1_1_argbuf_d = (writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet5_1_1_argbuf_r && writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet5_1_1_argbuf_r) && (! writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet15_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet16_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet16_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet16_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet16_1_argbuf_r = ((! writeQTree_IntlizzieLet16_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet16_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet16_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet16_1_argbuf_r)
        writeQTree_IntlizzieLet16_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet16_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet16_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet16_1_argbuf_rwb_d = (writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf :
                                                     writeQTree_IntlizzieLet16_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet16_1_argbuf_rwb_r && writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet16_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet16_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet16_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet16_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet6_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet16_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet16_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet16_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet6_1_1_argbuf_d = (writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((lizzieLet6_1_1_argbuf_r && writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! lizzieLet6_1_1_argbuf_r) && (! writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet16_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet26_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet26_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet26_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet26_1_argbuf_r = ((! writeQTree_IntlizzieLet26_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet26_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet26_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet26_1_argbuf_r)
        writeQTree_IntlizzieLet26_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet26_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet26_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet26_1_argbuf_rwb_d = (writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf :
                                                     writeQTree_IntlizzieLet26_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet26_1_argbuf_rwb_r && writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet26_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet26_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet26_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet26_1_argbuf_rwb,Pointer_QTree_Int) > (contRet_0_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet26_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet26_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet26_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf[0]);
  assign contRet_0_1_1_argbuf_d = (writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf :
                                   writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                             1'd0};
    else
      if ((contRet_0_1_1_argbuf_r && writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                               1'd0};
      else if (((! contRet_0_1_1_argbuf_r) && (! writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet26_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet8_2_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet8_2_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet8_2_1_argbuf_r = ((! writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet8_2_1_argbuf_r)
        writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet8_2_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet8_2_1_argbuf_rwb_d = (writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf :
                                                      writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet8_2_1_argbuf_rwb_r && writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet8_2_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet8_2_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet8_2_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet0_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet8_2_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet8_2_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet8_2_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet0_1_1_argbuf_d = (writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet0_1_1_argbuf_r && writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet0_1_1_argbuf_r) && (! writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet8_2_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet9_1_1_argbuf,Pointer_QTree_Int) > (writeQTree_IntlizzieLet9_1_1_argbuf_rwb,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d;
  logic writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_r;
  assign writeQTree_IntlizzieLet9_1_1_argbuf_r = ((! writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d[0]) || writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet9_1_1_argbuf_r)
        writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d <= writeQTree_IntlizzieLet9_1_1_argbuf_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf;
  assign writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_r = (! writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf[0]);
  assign writeQTree_IntlizzieLet9_1_1_argbuf_rwb_d = (writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf[0] ? writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf :
                                                      writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((writeQTree_IntlizzieLet9_1_1_argbuf_rwb_r && writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf[0]))
        writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf <= {16'd0, 1'd0};
      else if (((! writeQTree_IntlizzieLet9_1_1_argbuf_rwb_r) && (! writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf[0])))
        writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_buf <= writeQTree_IntlizzieLet9_1_1_argbuf_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (writeQTree_IntlizzieLet9_1_1_argbuf_rwb,Pointer_QTree_Int) > (lizzieLet1_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d;
  logic writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_r;
  assign writeQTree_IntlizzieLet9_1_1_argbuf_rwb_r = ((! writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d[0]) || writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d <= {16'd0, 1'd0};
    else
      if (writeQTree_IntlizzieLet9_1_1_argbuf_rwb_r)
        writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d <= writeQTree_IntlizzieLet9_1_1_argbuf_rwb_d;
  Pointer_QTree_Int_t writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf;
  assign writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_r = (! writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf[0]);
  assign lizzieLet1_1_1_argbuf_d = (writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf[0] ? writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf :
                                    writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                              1'd0};
    else
      if ((lizzieLet1_1_1_argbuf_r && writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf[0]))
        writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf <= {16'd0,
                                                                1'd0};
      else if (((! lizzieLet1_1_1_argbuf_r) && (! writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf[0])))
        writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_buf <= writeQTree_IntlizzieLet9_1_1_argbuf_rwb_bufchan_d;
  
  /* buf (Ty Pointer_QTree_Int) : (wshD_1_goMux_mux,Pointer_QTree_Int) > (wshD_1_1_argbuf,Pointer_QTree_Int) */
  Pointer_QTree_Int_t wshD_1_goMux_mux_bufchan_d;
  logic wshD_1_goMux_mux_bufchan_r;
  assign wshD_1_goMux_mux_r = ((! wshD_1_goMux_mux_bufchan_d[0]) || wshD_1_goMux_mux_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wshD_1_goMux_mux_bufchan_d <= {16'd0, 1'd0};
    else
      if (wshD_1_goMux_mux_r)
        wshD_1_goMux_mux_bufchan_d <= wshD_1_goMux_mux_d;
  Pointer_QTree_Int_t wshD_1_goMux_mux_bufchan_buf;
  assign wshD_1_goMux_mux_bufchan_r = (! wshD_1_goMux_mux_bufchan_buf[0]);
  assign wshD_1_1_argbuf_d = (wshD_1_goMux_mux_bufchan_buf[0] ? wshD_1_goMux_mux_bufchan_buf :
                              wshD_1_goMux_mux_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) wshD_1_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
    else
      if ((wshD_1_1_argbuf_r && wshD_1_goMux_mux_bufchan_buf[0]))
        wshD_1_goMux_mux_bufchan_buf <= {16'd0, 1'd0};
      else if (((! wshD_1_1_argbuf_r) && (! wshD_1_goMux_mux_bufchan_buf[0])))
        wshD_1_goMux_mux_bufchan_buf <= wshD_1_goMux_mux_bufchan_d;
  
  /* buf (Ty CT$wnnz) : (wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1,CT$wnnz) > (lizzieLet20_1_argbuf,CT$wnnz) */
  CT$wnnz_t wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d;
  logic wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_r;
  assign wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_r = ((! wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d[0]) || wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d <= {115'd0,
                                                                                      1'd0};
    else
      if (wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_r)
        wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d <= wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_d;
  CT$wnnz_t wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf;
  assign wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_r = (! wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf[0]);
  assign lizzieLet20_1_argbuf_d = (wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf[0] ? wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf :
                                   wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf <= {115'd0,
                                                                                        1'd0};
    else
      if ((lizzieLet20_1_argbuf_r && wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf[0]))
        wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf <= {115'd0,
                                                                                          1'd0};
      else if (((! lizzieLet20_1_argbuf_r) && (! wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf[0])))
        wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_buf <= wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_bufchan_d;
  
  /* dcon (Ty CT$wnnz,Dcon Lcall_$wnnz1) : [(wwshG_1_destruct,Int#),
                                       (lizzieLet18_4Lcall_$wnnz2,Int#),
                                       (sc_0_3_destruct,Pointer_CT$wnnz),
                                       (q4a8y_2_destruct,Pointer_QTree_Int)] > (wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1,CT$wnnz) */
  assign wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_d = Lcall_$wnnz1_dc((& {wwshG_1_destruct_d[0],
                                                                                                   lizzieLet18_4Lcall_$wnnz2_d[0],
                                                                                                   sc_0_3_destruct_d[0],
                                                                                                   q4a8y_2_destruct_d[0]}), wwshG_1_destruct_d, lizzieLet18_4Lcall_$wnnz2_d, sc_0_3_destruct_d, q4a8y_2_destruct_d);
  assign {wwshG_1_destruct_r,
          lizzieLet18_4Lcall_$wnnz2_r,
          sc_0_3_destruct_r,
          q4a8y_2_destruct_r} = {4 {(wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_r && wwshG_1_1lizzieLet18_4Lcall_$wnnz2_1sc_0_3_1q4a8y_2_1Lcall_$wnnz1_d[0])}};
  
  /* buf (Ty CT$wnnz) : (wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0,CT$wnnz) > (lizzieLet21_1_argbuf,CT$wnnz) */
  CT$wnnz_t wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d;
  logic wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_r;
  assign wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_r = ((! wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d[0]) || wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d <= {115'd0,
                                                                                       1'd0};
    else
      if (wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_r)
        wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d <= wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_d;
  CT$wnnz_t wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf;
  assign wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_r = (! wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf[0]);
  assign lizzieLet21_1_argbuf_d = (wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf[0] ? wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf :
                                   wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1))
      wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf <= {115'd0,
                                                                                         1'd0};
    else
      if ((lizzieLet21_1_argbuf_r && wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf[0]))
        wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf <= {115'd0,
                                                                                           1'd0};
      else if (((! lizzieLet21_1_argbuf_r) && (! wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf[0])))
        wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_buf <= wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_bufchan_d;
  
  /* dcon (Ty CT$wnnz,Dcon Lcall_$wnnz0) : [(wwshG_2_destruct,Int#),
                                       (ww1Xi8_1_destruct,Int#),
                                       (lizzieLet18_4Lcall_$wnnz1,Int#),
                                       (sc_0_4_destruct,Pointer_CT$wnnz)] > (wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0,CT$wnnz) */
  assign wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_d = Lcall_$wnnz0_dc((& {wwshG_2_destruct_d[0],
                                                                                                    ww1Xi8_1_destruct_d[0],
                                                                                                    lizzieLet18_4Lcall_$wnnz1_d[0],
                                                                                                    sc_0_4_destruct_d[0]}), wwshG_2_destruct_d, ww1Xi8_1_destruct_d, lizzieLet18_4Lcall_$wnnz1_d, sc_0_4_destruct_d);
  assign {wwshG_2_destruct_r,
          ww1Xi8_1_destruct_r,
          lizzieLet18_4Lcall_$wnnz1_r,
          sc_0_4_destruct_r} = {4 {(wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_r && wwshG_2_1ww1Xi8_1_1lizzieLet18_4Lcall_$wnnz1_1sc_0_4_1Lcall_$wnnz0_d[0])}};
  
  /* op_add (Ty Int#) : (wwshG_3_1ww1Xi8_2_1_Add32,Int#) (ww2Xib_1_destruct,Int#) > (es_6_1_1ww2Xib_1_1_Add32,Int#) */
  assign es_6_1_1ww2Xib_1_1_Add32_d = {(wwshG_3_1ww1Xi8_2_1_Add32_d[32:1] + ww2Xib_1_destruct_d[32:1]),
                                       (wwshG_3_1ww1Xi8_2_1_Add32_d[0] && ww2Xib_1_destruct_d[0])};
  assign {wwshG_3_1ww1Xi8_2_1_Add32_r,
          ww2Xib_1_destruct_r} = {2 {(es_6_1_1ww2Xib_1_1_Add32_r && es_6_1_1ww2Xib_1_1_Add32_d[0])}};
  
  /* op_add (Ty Int#) : (wwshG_3_destruct,Int#) (ww1Xi8_2_destruct,Int#) > (wwshG_3_1ww1Xi8_2_1_Add32,Int#) */
  assign wwshG_3_1ww1Xi8_2_1_Add32_d = {(wwshG_3_destruct_d[32:1] + ww1Xi8_2_destruct_d[32:1]),
                                        (wwshG_3_destruct_d[0] && ww1Xi8_2_destruct_d[0])};
  assign {wwshG_3_destruct_r,
          ww1Xi8_2_destruct_r} = {2 {(wwshG_3_1ww1Xi8_2_1_Add32_r && wwshG_3_1ww1Xi8_2_1_Add32_d[0])}};
  
  /* buf (Ty Int) : (xa8a_1,Int) > (xa8a_1_argbuf,Int) */
  Int_t xa8a_1_bufchan_d;
  logic xa8a_1_bufchan_r;
  assign xa8a_1_r = ((! xa8a_1_bufchan_d[0]) || xa8a_1_bufchan_r);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa8a_1_bufchan_d <= {32'd0, 1'd0};
    else if (xa8a_1_r) xa8a_1_bufchan_d <= xa8a_1_d;
  Int_t xa8a_1_bufchan_buf;
  assign xa8a_1_bufchan_r = (! xa8a_1_bufchan_buf[0]);
  assign xa8a_1_argbuf_d = (xa8a_1_bufchan_buf[0] ? xa8a_1_bufchan_buf :
                            xa8a_1_bufchan_d);
  always_ff @(posedge clk)
    if ((reset == 1'd1)) xa8a_1_bufchan_buf <= {32'd0, 1'd0};
    else
      if ((xa8a_1_argbuf_r && xa8a_1_bufchan_buf[0]))
        xa8a_1_bufchan_buf <= {32'd0, 1'd0};
      else if (((! xa8a_1_argbuf_r) && (! xa8a_1_bufchan_buf[0])))
        xa8a_1_bufchan_buf <= xa8a_1_bufchan_d;
endmodule