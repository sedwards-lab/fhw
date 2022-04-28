module MaskAdd where



data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;



nnz :: QTree a -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

main :: MaskQTree -> QTree Int -> QTree Int -> Int
main m1 m2 m3 = nnz $ f m1 m2 m3 (==0) (+);
f m1 m2 m3 is_z op_add = (case m1 of
                           MQNone -> QNone
                           MQVal -> (f' m2 m3 is_z op_add)
                           (MQNode q1 q2 q3 q4) ->
                             (case m2 of
                               QError -> QError
                               QNone -> ((case m3 of
                                           QError -> QError
                                           QNone -> QNone
                                           (QVal v) ->
                                             QError
                                           (QNode t1 t2 t3 t4) ->
                                             QNode(f''''''''' q1 t1)
                                                  (f''''''''' q2 t2)
                                                  (f''''''''' q3 t3)
                                                  (f''''''''' q4 t4)))
                               (QVal v1) ->
                                 (case m3 of
                                   QError -> QError
                                   QNone -> QError
                                   (QVal v) ->
                                     (case (is_z (op_add v1 v)) of
                                       True -> QNone
                                       False -> QError)
                                   (QNode t1 t2 t3 t4) ->
                                     QError)
                               (QNode q1' q2' q3' q4') ->
                                 (case m3 of
                                   QError -> QError
                                   QNone -> QNode(f''''''''' q1 q1')
                                                 (f''''''''' q2 q2')
                                                 (f''''''''' q3 q3')
                                                 (f''''''''' q4 q4')
                                   (QVal v) ->
                                     QError
                                   (QNode t1 t2 t3 t4) ->
                                     QNode(f q1 q1' t1 is_z op_add)
                                          (f q2 q2' t2 is_z op_add)
                                          (f q3 q3' t3 is_z op_add)
                                          (f q4 q4' t4 is_z op_add))));
f''''''''' q4 q4' = (case q4 of
                      MQNone -> QNone
                      MQVal -> q4'
                      (MQNode q1 q2 q3 q4) ->
                        (case q4' of
                          QError -> QError
                          QNone -> QNone
                          (QVal v) ->
                            QError
                          (QNode t1 t2 t3 t4) ->
                            QNode(f''''''''' q1 t1)
                                 (f''''''''' q2 t2)
                                 (f''''''''' q3 t3)
                                 (f''''''''' q4 t4)));
f' m2 m3 is_z op_add = (case m2 of
                         QError -> QError
                         QNone -> m3
                         (QVal v1) ->
                           (case m3 of
                             QError -> QError
                             QNone -> QVal(v1)
                             (QVal v) ->
                               (case (is_z (op_add v1 v)) of
                                 True -> QNone
                                 False -> QVal(op_add v1 v))
                             (QNode t1 t2 t3 t4) ->
                               QError)
                         (QNode q1 q2 q3 q4) ->
                           (case m3 of
                             QError -> QError
                             QNone -> QNode(q1) (q2) (q3) (q4)
                             (QVal v) ->
                               QError
                             (QNode t1 t2 t3 t4) ->
                               QNode(f' q1 t1 is_z op_add)
                                    (f' q2 t2 is_z op_add)
                                    (f' q3 t3 is_z op_add)
                                    (f' q4 t4 is_z op_add)))