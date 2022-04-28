module MAddAddAdd2DS where

data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;

nnz :: QTree Int -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

is_z = (==0)
op_add = (+)

main :: QTree Int -> QTree Int -> QTree Int -> QTree Int -> Int 

main m1 m2 m3 m4 = nnz $ f m1 m2 m3 m4 is_z op_add;

f m1 m2 m3 m4 is_z op_add = (case m1 of
                              QError -> QError
                              QNone -> ((case m2 of
                                          QError -> QError
                                          QNone -> ((case m3 of
                                                      QError -> QError
                                                      QNone -> m4
                                                      (QVal v1) ->
                                                        (case m4 of
                                                          QError -> QError
                                                          QNone -> QVal(v1)
                                                          (QVal v) ->
                                                            (case (is_z (op_add v1 v)) of
                                                              True -> QNone
                                                              False -> QVal(op_add v1 v))
                                                          (QNode t1 t2 t3 t4) ->
                                                            QError)
                                                      (QNode q1 q2 q3 q4) ->
                                                        (case m4 of
                                                          QError -> QError
                                                          QNone -> QNode(q1) (q2) (q3) (q4)
                                                          (QVal v) ->
                                                            QError
                                                          (QNode t1 t2 t3 t4) ->
                                                            QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                          (QVal v1) ->
                                            (case m3 of
                                              QError -> QError
                                              QNone -> ((case m4 of
                                                          QError -> QError
                                                          QNone -> QVal(v1)
                                                          (QVal v) ->
                                                            (case (is_z (op_add v1 v)) of
                                                              True -> QNone
                                                              False -> QVal(op_add v1 v))
                                                          (QNode t1 t2 t3 t4) ->
                                                            QError))
                                              (QVal v) ->
                                                (case (is_z (op_add v1 v)) of
                                                  True -> m4
                                                  False -> ((case m4 of
                                                              QError -> QError
                                                              QNone -> ((case (is_z (op_add v1 v)) of
                                                                          True -> QNone
                                                                          False -> QVal(op_add v1 v)))
                                                              (QVal v') ->
                                                                (case (is_z (op_add (op_add v1 v) v')) of
                                                                  True -> QNone
                                                                  False -> QVal(op_add (op_add v1 v) v'))
                                                              (QNode t1 t2 t3 t4) ->
                                                                QError)))
                                              (QNode t1 t2 t3 t4) ->
                                                QError)
                                          (QNode q1 q2 q3 q4) ->
                                            (case m3 of
                                              QError -> QError
                                              QNone -> ((case m4 of
                                                          QError -> QError
                                                          QNone -> QNode(q1) (q2) (q3) (q4)
                                                          (QVal v) ->
                                                            QError
                                                          (QNode t1 t2 t3 t4) ->
                                                            QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                 (f''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                              (QVal v) ->
                                                QError
                                              (QNode t1 t2 t3 t4) ->
                                                (case m4 of
                                                  QError -> QError
                                                  QNone -> QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                (f''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                  (QVal v) ->
                                                    QError
                                                  (QNode t1' t2' t3' t4') ->
                                                    QNode(f''''''''''''' q1 t1 t1' is_z op_add)
                                                         (f'''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                         (f''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add)))))
                              (QVal v1) ->
                                (case m2 of
                                  QError -> QError
                                  QNone -> ((case m3 of
                                              QError -> QError
                                              QNone -> ((case m4 of
                                                          QError -> QError
                                                          QNone -> QVal(v1)
                                                          (QVal v) ->
                                                            (case (is_z (op_add v1 v)) of
                                                              True -> QNone
                                                              False -> QVal(op_add v1 v))
                                                          (QNode t1 t2 t3 t4) ->
                                                            QError))
                                              (QVal v) ->
                                                (case (is_z (op_add v1 v)) of
                                                  True -> m4
                                                  False -> ((case m4 of
                                                              QError -> QError
                                                              QNone -> ((case (is_z (op_add v1 v)) of
                                                                          True -> QNone
                                                                          False -> QVal(op_add v1 v)))
                                                              (QVal v') ->
                                                                (case (is_z (op_add (op_add v1 v) v')) of
                                                                  True -> QNone
                                                                  False -> QVal(op_add (op_add v1 v) v'))
                                                              (QNode t1 t2 t3 t4) ->
                                                                QError)))
                                              (QNode t1 t2 t3 t4) ->
                                                QError))
                                  (QVal v) ->
                                    (case (is_z (op_add v1 v)) of
                                      True -> ((case m3 of
                                                 QError -> QError
                                                 QNone -> m4
                                                 (QVal v1') ->
                                                   (case m4 of
                                                     QError -> QError
                                                     QNone -> ((case (is_z (op_add v1 v)) of
                                                                 True -> QVal(v1')
                                                                 False -> ((case (is_z (op_add (op_add v1 v) v1')) of
                                                                             True -> QNone
                                                                             False -> QVal(op_add (op_add v1 v) v1')))))
                                                     (QVal v) ->
                                                       (case (is_z (op_add v1' v)) of
                                                         True -> QNone
                                                         False -> QVal(op_add v1' v))
                                                     (QNode t1 t2 t3 t4) ->
                                                       QError)
                                                 (QNode q1 q2 q3 q4) ->
                                                   (case m4 of
                                                     QError -> QError
                                                     QNone -> ((case (is_z (op_add v1 v)) of
                                                                 True -> QNode(q1) (q2) (q3) (q4)
                                                                 False -> QError))
                                                     (QVal v) ->
                                                       QError
                                                     (QNode t1 t2 t3 t4) ->
                                                       QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                      False -> ((case m3 of
                                                  QError -> QError
                                                  QNone -> ((case (is_z (op_add v1 v)) of
                                                              True -> m4
                                                              False -> ((case m4 of
                                                                          QError -> QError
                                                                          QNone -> ((case (is_z (op_add v1 v)) of
                                                                                      True -> QNone
                                                                                      False -> ((case (is_z (op_add v1 v)) of
                                                                                                  True -> QNone
                                                                                                  False -> QVal(op_add v1 v)))))
                                                                          (QVal v') ->
                                                                            (case (is_z (op_add (op_add v1 v) v')) of
                                                                              True -> QNone
                                                                              False -> QVal(op_add (op_add v1 v) v'))
                                                                          (QNode t1 t2 t3 t4) ->
                                                                            QError))))
                                                  (QVal v') ->
                                                    (case (is_z (op_add (op_add v1 v) v')) of
                                                      True -> m4
                                                      False -> ((case m4 of
                                                                  QError -> QError
                                                                  QNone -> ((case (is_z (op_add v1 v)) of
                                                                              True -> QVal(v')
                                                                              False -> ((case (is_z (op_add (op_add v1 v) v')) of
                                                                                          True -> QNone
                                                                                          False -> QVal(op_add (op_add v1 v) v')))))
                                                                  (QVal v'') ->
                                                                    (case (is_z (op_add (op_add (op_add v1 v) v') v'')) of
                                                                      True -> QNone
                                                                      False -> QVal(op_add (op_add (op_add v1 v) v') v''))
                                                                  (QNode t1 t2 t3 t4) ->
                                                                    QError)))
                                                  (QNode t1 t2 t3 t4) ->
                                                    QError)))
                                  (QNode t1 t2 t3 t4) ->
                                    QError)
                              (QNode q1 q2 q3 q4) ->
                                (case m2 of
                                  QError -> QError
                                  QNone -> ((case m3 of
                                              QError -> QError
                                              QNone -> ((case m4 of
                                                          QError -> QError
                                                          QNone -> QNode(q1) (q2) (q3) (q4)
                                                          (QVal v) ->
                                                            QError
                                                          (QNode t1 t2 t3 t4) ->
                                                            QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                              (QVal v) ->
                                                QError
                                              (QNode t1 t2 t3 t4) ->
                                                (case m4 of
                                                  QError -> QError
                                                  QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                  (QVal v) ->
                                                    QError
                                                  (QNode t1' t2' t3' t4') ->
                                                    QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))))
                                  (QVal v) ->
                                    QError
                                  (QNode t1 t2 t3 t4) ->
                                    (case m3 of
                                      QError -> QError
                                      QNone -> ((case m4 of
                                                  QError -> QError
                                                  QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                  (QVal v) ->
                                                    QError
                                                  (QNode t1' t2' t3' t4') ->
                                                    QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add)))
                                      (QVal v) ->
                                        QError
                                      (QNode t1' t2' t3' t4') ->
                                        (case m4 of
                                          QError -> QError
                                          QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add)
                                          (QVal v) ->
                                            QError
                                          (QNode t1'' t2'' t3'' t4'') ->
                                            QNode(f q1 t1 t1' t1'' is_z op_add)
                                                 (f q2 t2 t2' t2'' is_z op_add)
                                                 (f q3 t3 t3' t3'' is_z op_add)
                                                 (f q4 t4 t4' t4'' is_z op_add)))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add = (case q4 of
                                                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                                                            QNone -> ((case t4 of
                                                                                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                                                                                        QNone -> t4'
                                                                                                                                                                                                                                                                        (QVal v1) ->
                                                                                                                                                                                                                                                                          (case t4' of
                                                                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                                                                            QNone -> QVal(v1)
                                                                                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                                                                                              (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                                True -> QNone
                                                                                                                                                                                                                                                                                False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                              QError)
                                                                                                                                                                                                                                                                        (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                                          (case t4' of
                                                                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                                                                            QNone -> QNode(q1)
                                                                                                                                                                                                                                                                                          (q2)
                                                                                                                                                                                                                                                                                          (q3)
                                                                                                                                                                                                                                                                                          (q4)
                                                                                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                                                                                              QError
                                                                                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                              QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                                                                                            (QVal v1) ->
                                                                                                                                                                                                                                                              (case t4 of
                                                                                                                                                                                                                                                                QError -> QError
                                                                                                                                                                                                                                                                QNone -> ((case t4' of
                                                                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                                                                            QNone -> QVal(v1)
                                                                                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                                                                                              (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                                True -> QNone
                                                                                                                                                                                                                                                                                False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                              QError))
                                                                                                                                                                                                                                                                (QVal v) ->
                                                                                                                                                                                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                    True -> t4'
                                                                                                                                                                                                                                                                    False -> ((case t4' of
                                                                                                                                                                                                                                                                                QError -> QError
                                                                                                                                                                                                                                                                                QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                                            True -> QNone
                                                                                                                                                                                                                                                                                            False -> QVal(op_add v1 v)))
                                                                                                                                                                                                                                                                                (QVal v') ->
                                                                                                                                                                                                                                                                                  (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                                                                                    True -> QNone
                                                                                                                                                                                                                                                                                    False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                                  QError)))
                                                                                                                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                  QError)
                                                                                                                                                                                                                                                            (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                              (case t4 of
                                                                                                                                                                                                                                                                QError -> QError
                                                                                                                                                                                                                                                                QNone -> ((case t4' of
                                                                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                                                                            QNone -> QNode(q1)
                                                                                                                                                                                                                                                                                          (q2)
                                                                                                                                                                                                                                                                                          (q3)
                                                                                                                                                                                                                                                                                          (q4)
                                                                                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                                                                                              QError
                                                                                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                              QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                                   (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                                                                                                (QVal v) ->
                                                                                                                                                                                                                                                                  QError
                                                                                                                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                  (case t4' of
                                                                                                                                                                                                                                                                    QError -> QError
                                                                                                                                                                                                                                                                    QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                                                                                    (QVal v) ->
                                                                                                                                                                                                                                                                      QError
                                                                                                                                                                                                                                                                    (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                                                                                      QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                                                                                           (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                                                                                           (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                                                                                           (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                                                                                       QError -> QError
                                                                                                                                                                                                                                                                       QNone -> t4''
                                                                                                                                                                                                                                                                       (QVal v1) ->
                                                                                                                                                                                                                                                                         (case t4'' of
                                                                                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                                                                                           QNone -> QVal(v1)
                                                                                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                                                                                             (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                               True -> QNone
                                                                                                                                                                                                                                                                               False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                             QError)
                                                                                                                                                                                                                                                                       (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                                         (case t4'' of
                                                                                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                                                                                           QNone -> QNode(q1)
                                                                                                                                                                                                                                                                                         (q2)
                                                                                                                                                                                                                                                                                         (q3)
                                                                                                                                                                                                                                                                                         (q4)
                                                                                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                                                                                             QError
                                                                                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                             QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                                  (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add = (case q3 of
                                                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                                                               QNone -> ((case t3 of
                                                                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                                                                           QNone -> t3'
                                                                                                                                                                                                                                                           (QVal v1) ->
                                                                                                                                                                                                                                                             (case t3' of
                                                                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                                                                               QNone -> QVal(v1)
                                                                                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                                                                                 (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                   True -> QNone
                                                                                                                                                                                                                                                                   False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                 QError)
                                                                                                                                                                                                                                                           (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                             (case t3' of
                                                                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                                                                               QNone -> QNode(q1)
                                                                                                                                                                                                                                                                             (q2)
                                                                                                                                                                                                                                                                             (q3)
                                                                                                                                                                                                                                                                             (q4)
                                                                                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                                                                                 QError
                                                                                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                 QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                                                                               (QVal v1) ->
                                                                                                                                                                                                                                                 (case t3 of
                                                                                                                                                                                                                                                   QError -> QError
                                                                                                                                                                                                                                                   QNone -> ((case t3' of
                                                                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                                                                               QNone -> QVal(v1)
                                                                                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                                                                                 (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                   True -> QNone
                                                                                                                                                                                                                                                                   False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                 QError))
                                                                                                                                                                                                                                                   (QVal v) ->
                                                                                                                                                                                                                                                     (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                       True -> t3'
                                                                                                                                                                                                                                                       False -> ((case t3' of
                                                                                                                                                                                                                                                                   QError -> QError
                                                                                                                                                                                                                                                                   QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                               True -> QNone
                                                                                                                                                                                                                                                                               False -> QVal(op_add v1 v)))
                                                                                                                                                                                                                                                                   (QVal v') ->
                                                                                                                                                                                                                                                                     (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                                                                       True -> QNone
                                                                                                                                                                                                                                                                       False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                     QError)))
                                                                                                                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                     QError)
                                                                                                                                                                                                                                               (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                 (case t3 of
                                                                                                                                                                                                                                                   QError -> QError
                                                                                                                                                                                                                                                   QNone -> ((case t3' of
                                                                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                                                                               QNone -> QNode(q1)
                                                                                                                                                                                                                                                                             (q2)
                                                                                                                                                                                                                                                                             (q3)
                                                                                                                                                                                                                                                                             (q4)
                                                                                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                                                                                 QError
                                                                                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                 QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                      (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                                                                                   (QVal v) ->
                                                                                                                                                                                                                                                     QError
                                                                                                                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                     (case t3' of
                                                                                                                                                                                                                                                       QError -> QError
                                                                                                                                                                                                                                                       QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                                                                       (QVal v) ->
                                                                                                                                                                                                                                                         QError
                                                                                                                                                                                                                                                       (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                                                                         QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                                                                              (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                                                                              (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                                                                              (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                                                                          QError -> QError
                                                                                                                                                                                                                                                          QNone -> t4''
                                                                                                                                                                                                                                                          (QVal v1) ->
                                                                                                                                                                                                                                                            (case t4'' of
                                                                                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                                                                                              QNone -> QVal(v1)
                                                                                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                                                                                (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                  True -> QNone
                                                                                                                                                                                                                                                                  False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                QError)
                                                                                                                                                                                                                                                          (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                            (case t4'' of
                                                                                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                                                                                              QNone -> QNode(q1)
                                                                                                                                                                                                                                                                            (q2)
                                                                                                                                                                                                                                                                            (q3)
                                                                                                                                                                                                                                                                            (q4)
                                                                                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                                                                                QError
                                                                                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                                QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                                     (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add = (case q2 of
                                                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                                                  QNone -> ((case t2 of
                                                                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                                                                              QNone -> t2'
                                                                                                                                                                                                                                              (QVal v1) ->
                                                                                                                                                                                                                                                (case t2' of
                                                                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                                                                  QNone -> QVal(v1)
                                                                                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                                                                                    (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                      True -> QNone
                                                                                                                                                                                                                                                      False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                    QError)
                                                                                                                                                                                                                                              (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                                (case t2' of
                                                                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                                                                  QNone -> QNode(q1)
                                                                                                                                                                                                                                                                (q2)
                                                                                                                                                                                                                                                                (q3)
                                                                                                                                                                                                                                                                (q4)
                                                                                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                                                                                    QError
                                                                                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                    QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                                                                  (QVal v1) ->
                                                                                                                                                                                                                                    (case t2 of
                                                                                                                                                                                                                                      QError -> QError
                                                                                                                                                                                                                                      QNone -> ((case t2' of
                                                                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                                                                  QNone -> QVal(v1)
                                                                                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                                                                                    (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                      True -> QNone
                                                                                                                                                                                                                                                      False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                    QError))
                                                                                                                                                                                                                                      (QVal v) ->
                                                                                                                                                                                                                                        (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                          True -> t2'
                                                                                                                                                                                                                                          False -> ((case t2' of
                                                                                                                                                                                                                                                      QError -> QError
                                                                                                                                                                                                                                                      QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                                  True -> QNone
                                                                                                                                                                                                                                                                  False -> QVal(op_add v1 v)))
                                                                                                                                                                                                                                                      (QVal v') ->
                                                                                                                                                                                                                                                        (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                                                          True -> QNone
                                                                                                                                                                                                                                                          False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                        QError)))
                                                                                                                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                        QError)
                                                                                                                                                                                                                                  (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                    (case t2 of
                                                                                                                                                                                                                                      QError -> QError
                                                                                                                                                                                                                                      QNone -> ((case t2' of
                                                                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                                                                  QNone -> QNode(q1)
                                                                                                                                                                                                                                                                (q2)
                                                                                                                                                                                                                                                                (q3)
                                                                                                                                                                                                                                                                (q4)
                                                                                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                                                                                    QError
                                                                                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                    QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                         (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                                                                      (QVal v) ->
                                                                                                                                                                                                                                        QError
                                                                                                                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                        (case t2' of
                                                                                                                                                                                                                                          QError -> QError
                                                                                                                                                                                                                                          QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                                                          (QVal v) ->
                                                                                                                                                                                                                                            QError
                                                                                                                                                                                                                                          (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                                                            QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                                                                 (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                                                                 (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                                                                 (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                                                             QError -> QError
                                                                                                                                                                                                                                             QNone -> t4''
                                                                                                                                                                                                                                             (QVal v1) ->
                                                                                                                                                                                                                                               (case t4'' of
                                                                                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                                                                                 QNone -> QVal(v1)
                                                                                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                                                                                   (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                     True -> QNone
                                                                                                                                                                                                                                                     False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                   QError)
                                                                                                                                                                                                                                             (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                               (case t4'' of
                                                                                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                                                                                 QNone -> QNode(q1)
                                                                                                                                                                                                                                                               (q2)
                                                                                                                                                                                                                                                               (q3)
                                                                                                                                                                                                                                                               (q4)
                                                                                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                                                                                   QError
                                                                                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                                   QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                                        (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add = (case q1 of
                                                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                                                     QNone -> ((case t1 of
                                                                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                                                                 QNone -> t1'
                                                                                                                                                                                                                                 (QVal v1) ->
                                                                                                                                                                                                                                   (case t1' of
                                                                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                                                                     QNone -> QVal(v1)
                                                                                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                                                                                       (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                         True -> QNone
                                                                                                                                                                                                                                         False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                       QError)
                                                                                                                                                                                                                                 (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                   (case t1' of
                                                                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                                                                     QNone -> QNode(q1)
                                                                                                                                                                                                                                                   (q2)
                                                                                                                                                                                                                                                   (q3)
                                                                                                                                                                                                                                                   (q4)
                                                                                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                                                                                       QError
                                                                                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                       QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                                                     (QVal v1) ->
                                                                                                                                                                                                                       (case t1 of
                                                                                                                                                                                                                         QError -> QError
                                                                                                                                                                                                                         QNone -> ((case t1' of
                                                                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                                                                     QNone -> QVal(v1)
                                                                                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                                                                                       (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                         True -> QNone
                                                                                                                                                                                                                                         False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                       QError))
                                                                                                                                                                                                                         (QVal v) ->
                                                                                                                                                                                                                           (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                             True -> t1'
                                                                                                                                                                                                                             False -> ((case t1' of
                                                                                                                                                                                                                                         QError -> QError
                                                                                                                                                                                                                                         QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                                     True -> QNone
                                                                                                                                                                                                                                                     False -> QVal(op_add v1 v)))
                                                                                                                                                                                                                                         (QVal v') ->
                                                                                                                                                                                                                                           (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                                             True -> QNone
                                                                                                                                                                                                                                             False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                           QError)))
                                                                                                                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                           QError)
                                                                                                                                                                                                                     (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                       (case t1 of
                                                                                                                                                                                                                         QError -> QError
                                                                                                                                                                                                                         QNone -> ((case t1' of
                                                                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                                                                     QNone -> QNode(q1)
                                                                                                                                                                                                                                                   (q2)
                                                                                                                                                                                                                                                   (q3)
                                                                                                                                                                                                                                                   (q4)
                                                                                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                                                                                       QError
                                                                                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                       QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                            (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                                                         (QVal v) ->
                                                                                                                                                                                                                           QError
                                                                                                                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                           (case t1' of
                                                                                                                                                                                                                             QError -> QError
                                                                                                                                                                                                                             QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                                             (QVal v) ->
                                                                                                                                                                                                                               QError
                                                                                                                                                                                                                             (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                                               QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                                                    (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                                                    (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                                                    (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                                                QError -> QError
                                                                                                                                                                                                                                QNone -> t4''
                                                                                                                                                                                                                                (QVal v1) ->
                                                                                                                                                                                                                                  (case t4'' of
                                                                                                                                                                                                                                    QError -> QError
                                                                                                                                                                                                                                    QNone -> QVal(v1)
                                                                                                                                                                                                                                    (QVal v) ->
                                                                                                                                                                                                                                      (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                        True -> QNone
                                                                                                                                                                                                                                        False -> QVal(op_add v1 v))
                                                                                                                                                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                      QError)
                                                                                                                                                                                                                                (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                                  (case t4'' of
                                                                                                                                                                                                                                    QError -> QError
                                                                                                                                                                                                                                    QNone -> QNode(q1)
                                                                                                                                                                                                                                                  (q2)
                                                                                                                                                                                                                                                  (q3)
                                                                                                                                                                                                                                                  (q4)
                                                                                                                                                                                                                                    (QVal v) ->
                                                                                                                                                                                                                                      QError
                                                                                                                                                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                                      QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                                           (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add = (case q4 of
                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                        QNone -> ((case t4 of
                                                                                                                                                                                                                    QError -> QError
                                                                                                                                                                                                                    QNone -> t4'
                                                                                                                                                                                                                    (QVal v1) ->
                                                                                                                                                                                                                      (case t4' of
                                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                                        QNone -> QVal(v1)
                                                                                                                                                                                                                        (QVal v) ->
                                                                                                                                                                                                                          (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                            True -> QNone
                                                                                                                                                                                                                            False -> QVal(op_add v1 v))
                                                                                                                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                          QError)
                                                                                                                                                                                                                    (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                      (case t4' of
                                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                                        QNone -> QNode(q1)
                                                                                                                                                                                                                                      (q2)
                                                                                                                                                                                                                                      (q3)
                                                                                                                                                                                                                                      (q4)
                                                                                                                                                                                                                        (QVal v) ->
                                                                                                                                                                                                                          QError
                                                                                                                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                          QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                                        (QVal v1) ->
                                                                                                                                                                                                          (case t4 of
                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                            QNone -> ((case t4' of
                                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                                        QNone -> QVal(v1)
                                                                                                                                                                                                                        (QVal v) ->
                                                                                                                                                                                                                          (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                            True -> QNone
                                                                                                                                                                                                                            False -> QVal(op_add v1 v))
                                                                                                                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                          QError))
                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                              (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                True -> t4'
                                                                                                                                                                                                                False -> ((case t4' of
                                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                                            QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                                        True -> QNone
                                                                                                                                                                                                                                        False -> QVal(op_add v1 v)))
                                                                                                                                                                                                                            (QVal v') ->
                                                                                                                                                                                                                              (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                                True -> QNone
                                                                                                                                                                                                                                False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                              QError)))
                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                              QError)
                                                                                                                                                                                                        (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                          (case t4 of
                                                                                                                                                                                                            QError -> QError
                                                                                                                                                                                                            QNone -> ((case t4' of
                                                                                                                                                                                                                        QError -> QError
                                                                                                                                                                                                                        QNone -> QNode(q1)
                                                                                                                                                                                                                                      (q2)
                                                                                                                                                                                                                                      (q3)
                                                                                                                                                                                                                                      (q4)
                                                                                                                                                                                                                        (QVal v) ->
                                                                                                                                                                                                                          QError
                                                                                                                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                          QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                                            (QVal v) ->
                                                                                                                                                                                                              QError
                                                                                                                                                                                                            (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                              (case t4' of
                                                                                                                                                                                                                QError -> QError
                                                                                                                                                                                                                QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                                (QVal v) ->
                                                                                                                                                                                                                  QError
                                                                                                                                                                                                                (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                                  QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                                   QError -> QError
                                                                                                                                                                                                                   QNone -> t4''
                                                                                                                                                                                                                   (QVal v1) ->
                                                                                                                                                                                                                     (case t4'' of
                                                                                                                                                                                                                       QError -> QError
                                                                                                                                                                                                                       QNone -> QVal(v1)
                                                                                                                                                                                                                       (QVal v) ->
                                                                                                                                                                                                                         (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                           True -> QNone
                                                                                                                                                                                                                           False -> QVal(op_add v1 v))
                                                                                                                                                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                         QError)
                                                                                                                                                                                                                   (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                                     (case t4'' of
                                                                                                                                                                                                                       QError -> QError
                                                                                                                                                                                                                       QNone -> QNode(q1)
                                                                                                                                                                                                                                     (q2)
                                                                                                                                                                                                                                     (q3)
                                                                                                                                                                                                                                     (q4)
                                                                                                                                                                                                                       (QVal v) ->
                                                                                                                                                                                                                         QError
                                                                                                                                                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                         QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                              (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add = (case q3 of
                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                           QNone -> ((case t3 of
                                                                                                                                                                                                       QError -> QError
                                                                                                                                                                                                       QNone -> t3'
                                                                                                                                                                                                       (QVal v1) ->
                                                                                                                                                                                                         (case t3' of
                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                           QNone -> QVal(v1)
                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                             (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                               True -> QNone
                                                                                                                                                                                                               False -> QVal(op_add v1 v))
                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                             QError)
                                                                                                                                                                                                       (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                         (case t3' of
                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                           QNone -> QNode(q1)
                                                                                                                                                                                                                         (q2)
                                                                                                                                                                                                                         (q3)
                                                                                                                                                                                                                         (q4)
                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                             QError
                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                             QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                                           (QVal v1) ->
                                                                                                                                                                                             (case t3 of
                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                               QNone -> ((case t3' of
                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                           QNone -> QVal(v1)
                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                             (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                               True -> QNone
                                                                                                                                                                                                               False -> QVal(op_add v1 v))
                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                             QError))
                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                 (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                   True -> t3'
                                                                                                                                                                                                   False -> ((case t3' of
                                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                                               QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                                           True -> QNone
                                                                                                                                                                                                                           False -> QVal(op_add v1 v)))
                                                                                                                                                                                                               (QVal v') ->
                                                                                                                                                                                                                 (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                                   True -> QNone
                                                                                                                                                                                                                   False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                                 QError)))
                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                 QError)
                                                                                                                                                                                           (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                             (case t3 of
                                                                                                                                                                                               QError -> QError
                                                                                                                                                                                               QNone -> ((case t3' of
                                                                                                                                                                                                           QError -> QError
                                                                                                                                                                                                           QNone -> QNode(q1)
                                                                                                                                                                                                                         (q2)
                                                                                                                                                                                                                         (q3)
                                                                                                                                                                                                                         (q4)
                                                                                                                                                                                                           (QVal v) ->
                                                                                                                                                                                                             QError
                                                                                                                                                                                                           (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                             QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                               (QVal v) ->
                                                                                                                                                                                                 QError
                                                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                 (case t3' of
                                                                                                                                                                                                   QError -> QError
                                                                                                                                                                                                   QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                                   (QVal v) ->
                                                                                                                                                                                                     QError
                                                                                                                                                                                                   (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                                     QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                                      QError -> QError
                                                                                                                                                                                                      QNone -> t4''
                                                                                                                                                                                                      (QVal v1) ->
                                                                                                                                                                                                        (case t4'' of
                                                                                                                                                                                                          QError -> QError
                                                                                                                                                                                                          QNone -> QVal(v1)
                                                                                                                                                                                                          (QVal v) ->
                                                                                                                                                                                                            (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                              True -> QNone
                                                                                                                                                                                                              False -> QVal(op_add v1 v))
                                                                                                                                                                                                          (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                            QError)
                                                                                                                                                                                                      (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                                        (case t4'' of
                                                                                                                                                                                                          QError -> QError
                                                                                                                                                                                                          QNone -> QNode(q1)
                                                                                                                                                                                                                        (q2)
                                                                                                                                                                                                                        (q3)
                                                                                                                                                                                                                        (q4)
                                                                                                                                                                                                          (QVal v) ->
                                                                                                                                                                                                            QError
                                                                                                                                                                                                          (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                            QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                                 (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add = (case q2 of
                                                                                                                                                                              QError -> QError
                                                                                                                                                                              QNone -> ((case t2 of
                                                                                                                                                                                          QError -> QError
                                                                                                                                                                                          QNone -> t2'
                                                                                                                                                                                          (QVal v1) ->
                                                                                                                                                                                            (case t2' of
                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                              QNone -> QVal(v1)
                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                  True -> QNone
                                                                                                                                                                                                  False -> QVal(op_add v1 v))
                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                QError)
                                                                                                                                                                                          (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                            (case t2' of
                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                              QNone -> QNode(q1)
                                                                                                                                                                                                            (q2)
                                                                                                                                                                                                            (q3)
                                                                                                                                                                                                            (q4)
                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                QError
                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                              (QVal v1) ->
                                                                                                                                                                                (case t2 of
                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                  QNone -> ((case t2' of
                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                              QNone -> QVal(v1)
                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                  True -> QNone
                                                                                                                                                                                                  False -> QVal(op_add v1 v))
                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                QError))
                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                    (case (is_z (op_add v1 v)) of
                                                                                                                                                                                      True -> t2'
                                                                                                                                                                                      False -> ((case t2' of
                                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                                  QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                              True -> QNone
                                                                                                                                                                                                              False -> QVal(op_add v1 v)))
                                                                                                                                                                                                  (QVal v') ->
                                                                                                                                                                                                    (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                                      True -> QNone
                                                                                                                                                                                                      False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                    QError)))
                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                    QError)
                                                                                                                                                                              (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                (case t2 of
                                                                                                                                                                                  QError -> QError
                                                                                                                                                                                  QNone -> ((case t2' of
                                                                                                                                                                                              QError -> QError
                                                                                                                                                                                              QNone -> QNode(q1)
                                                                                                                                                                                                            (q2)
                                                                                                                                                                                                            (q3)
                                                                                                                                                                                                            (q4)
                                                                                                                                                                                              (QVal v) ->
                                                                                                                                                                                                QError
                                                                                                                                                                                              (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                                QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                                  (QVal v) ->
                                                                                                                                                                                    QError
                                                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                    (case t2' of
                                                                                                                                                                                      QError -> QError
                                                                                                                                                                                      QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                                      (QVal v) ->
                                                                                                                                                                                        QError
                                                                                                                                                                                      (QNode t1' t2' t3' t4') ->
                                                                                                                                                                                        QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                                         QError -> QError
                                                                                                                                                                                         QNone -> t4''
                                                                                                                                                                                         (QVal v1) ->
                                                                                                                                                                                           (case t4'' of
                                                                                                                                                                                             QError -> QError
                                                                                                                                                                                             QNone -> QVal(v1)
                                                                                                                                                                                             (QVal v) ->
                                                                                                                                                                                               (case (is_z (op_add v1 v)) of
                                                                                                                                                                                                 True -> QNone
                                                                                                                                                                                                 False -> QVal(op_add v1 v))
                                                                                                                                                                                             (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                               QError)
                                                                                                                                                                                         (QNode q1 q2 q3 q4) ->
                                                                                                                                                                                           (case t4'' of
                                                                                                                                                                                             QError -> QError
                                                                                                                                                                                             QNone -> QNode(q1)
                                                                                                                                                                                                           (q2)
                                                                                                                                                                                                           (q3)
                                                                                                                                                                                                           (q4)
                                                                                                                                                                                             (QVal v) ->
                                                                                                                                                                                               QError
                                                                                                                                                                                             (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                               QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                                    (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add = (case q1 of
                                                                                                                                                                 QError -> QError
                                                                                                                                                                 QNone -> ((case t1 of
                                                                                                                                                                             QError -> QError
                                                                                                                                                                             QNone -> t1'
                                                                                                                                                                             (QVal v1) ->
                                                                                                                                                                               (case t1' of
                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                 QNone -> QVal(v1)
                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                   (case (is_z (op_add v1 v)) of
                                                                                                                                                                                     True -> QNone
                                                                                                                                                                                     False -> QVal(op_add v1 v))
                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                   QError)
                                                                                                                                                                             (QNode q1 q2 q3 q4) ->
                                                                                                                                                                               (case t1' of
                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                 QNone -> QNode(q1)
                                                                                                                                                                                               (q2)
                                                                                                                                                                                               (q3)
                                                                                                                                                                                               (q4)
                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                   QError
                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                   QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                                 (QVal v1) ->
                                                                                                                                                                   (case t1 of
                                                                                                                                                                     QError -> QError
                                                                                                                                                                     QNone -> ((case t1' of
                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                 QNone -> QVal(v1)
                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                   (case (is_z (op_add v1 v)) of
                                                                                                                                                                                     True -> QNone
                                                                                                                                                                                     False -> QVal(op_add v1 v))
                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                   QError))
                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                       (case (is_z (op_add v1 v)) of
                                                                                                                                                                         True -> t1'
                                                                                                                                                                         False -> ((case t1' of
                                                                                                                                                                                     QError -> QError
                                                                                                                                                                                     QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                                 True -> QNone
                                                                                                                                                                                                 False -> QVal(op_add v1 v)))
                                                                                                                                                                                     (QVal v') ->
                                                                                                                                                                                       (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                                         True -> QNone
                                                                                                                                                                                         False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                       QError)))
                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                       QError)
                                                                                                                                                                 (QNode q1 q2 q3 q4) ->
                                                                                                                                                                   (case t1 of
                                                                                                                                                                     QError -> QError
                                                                                                                                                                     QNone -> ((case t1' of
                                                                                                                                                                                 QError -> QError
                                                                                                                                                                                 QNone -> QNode(q1)
                                                                                                                                                                                               (q2)
                                                                                                                                                                                               (q3)
                                                                                                                                                                                               (q4)
                                                                                                                                                                                 (QVal v) ->
                                                                                                                                                                                   QError
                                                                                                                                                                                 (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                   QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                                     (QVal v) ->
                                                                                                                                                                       QError
                                                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                                                       (case t1' of
                                                                                                                                                                         QError -> QError
                                                                                                                                                                         QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                                         (QVal v) ->
                                                                                                                                                                           QError
                                                                                                                                                                         (QNode t1' t2' t3' t4') ->
                                                                                                                                                                           QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                                            QError -> QError
                                                                                                                                                                            QNone -> t4''
                                                                                                                                                                            (QVal v1) ->
                                                                                                                                                                              (case t4'' of
                                                                                                                                                                                QError -> QError
                                                                                                                                                                                QNone -> QVal(v1)
                                                                                                                                                                                (QVal v) ->
                                                                                                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                                                                                                    True -> QNone
                                                                                                                                                                                    False -> QVal(op_add v1 v))
                                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                  QError)
                                                                                                                                                                            (QNode q1 q2 q3 q4) ->
                                                                                                                                                                              (case t4'' of
                                                                                                                                                                                QError -> QError
                                                                                                                                                                                QNone -> QNode(q1)
                                                                                                                                                                                              (q2)
                                                                                                                                                                                              (q3)
                                                                                                                                                                                              (q4)
                                                                                                                                                                                (QVal v) ->
                                                                                                                                                                                  QError
                                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                                  QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                                       (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add = (case q4 of
                                                                                                                                                QError -> QError
                                                                                                                                                QNone -> ((case t4 of
                                                                                                                                                            QError -> QError
                                                                                                                                                            QNone -> t4'
                                                                                                                                                            (QVal v1) ->
                                                                                                                                                              (case t4' of
                                                                                                                                                                QError -> QError
                                                                                                                                                                QNone -> QVal(v1)
                                                                                                                                                                (QVal v) ->
                                                                                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                                                                                    True -> QNone
                                                                                                                                                                    False -> QVal(op_add v1 v))
                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                  QError)
                                                                                                                                                            (QNode q1 q2 q3 q4) ->
                                                                                                                                                              (case t4' of
                                                                                                                                                                QError -> QError
                                                                                                                                                                QNone -> QNode(q1)
                                                                                                                                                                              (q2)
                                                                                                                                                                              (q3)
                                                                                                                                                                              (q4)
                                                                                                                                                                (QVal v) ->
                                                                                                                                                                  QError
                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                  QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                                (QVal v1) ->
                                                                                                                                                  (case t4 of
                                                                                                                                                    QError -> QError
                                                                                                                                                    QNone -> ((case t4' of
                                                                                                                                                                QError -> QError
                                                                                                                                                                QNone -> QVal(v1)
                                                                                                                                                                (QVal v) ->
                                                                                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                                                                                    True -> QNone
                                                                                                                                                                    False -> QVal(op_add v1 v))
                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                  QError))
                                                                                                                                                    (QVal v) ->
                                                                                                                                                      (case (is_z (op_add v1 v)) of
                                                                                                                                                        True -> t4'
                                                                                                                                                        False -> ((case t4' of
                                                                                                                                                                    QError -> QError
                                                                                                                                                                    QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                                True -> QNone
                                                                                                                                                                                False -> QVal(op_add v1 v)))
                                                                                                                                                                    (QVal v') ->
                                                                                                                                                                      (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                                        True -> QNone
                                                                                                                                                                        False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                                                                                      QError)))
                                                                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                                                                      QError)
                                                                                                                                                (QNode q1 q2 q3 q4) ->
                                                                                                                                                  (case t4 of
                                                                                                                                                    QError -> QError
                                                                                                                                                    QNone -> ((case t4' of
                                                                                                                                                                QError -> QError
                                                                                                                                                                QNone -> QNode(q1)
                                                                                                                                                                              (q2)
                                                                                                                                                                              (q3)
                                                                                                                                                                              (q4)
                                                                                                                                                                (QVal v) ->
                                                                                                                                                                  QError
                                                                                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                                                                                  QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                                    (QVal v) ->
                                                                                                                                                      QError
                                                                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                                                                      (case t4' of
                                                                                                                                                        QError -> QError
                                                                                                                                                        QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                                        (QVal v) ->
                                                                                                                                                          QError
                                                                                                                                                        (QNode t1' t2' t3' t4') ->
                                                                                                                                                          QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                                           QError -> QError
                                                                                                                                                           QNone -> t4''
                                                                                                                                                           (QVal v1) ->
                                                                                                                                                             (case t4'' of
                                                                                                                                                               QError -> QError
                                                                                                                                                               QNone -> QVal(v1)
                                                                                                                                                               (QVal v) ->
                                                                                                                                                                 (case (is_z (op_add v1 v)) of
                                                                                                                                                                   True -> QNone
                                                                                                                                                                   False -> QVal(op_add v1 v))
                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                 QError)
                                                                                                                                                           (QNode q1 q2 q3 q4) ->
                                                                                                                                                             (case t4'' of
                                                                                                                                                               QError -> QError
                                                                                                                                                               QNone -> QNode(q1)
                                                                                                                                                                             (q2)
                                                                                                                                                                             (q3)
                                                                                                                                                                             (q4)
                                                                                                                                                               (QVal v) ->
                                                                                                                                                                 QError
                                                                                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                                                                                 QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add = (case q3 of
                                                                                                                                   QError -> QError
                                                                                                                                   QNone -> ((case t3 of
                                                                                                                                               QError -> QError
                                                                                                                                               QNone -> t3'
                                                                                                                                               (QVal v1) ->
                                                                                                                                                 (case t3' of
                                                                                                                                                   QError -> QError
                                                                                                                                                   QNone -> QVal(v1)
                                                                                                                                                   (QVal v) ->
                                                                                                                                                     (case (is_z (op_add v1 v)) of
                                                                                                                                                       True -> QNone
                                                                                                                                                       False -> QVal(op_add v1 v))
                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                     QError)
                                                                                                                                               (QNode q1 q2 q3 q4) ->
                                                                                                                                                 (case t3' of
                                                                                                                                                   QError -> QError
                                                                                                                                                   QNone -> QNode(q1)
                                                                                                                                                                 (q2)
                                                                                                                                                                 (q3)
                                                                                                                                                                 (q4)
                                                                                                                                                   (QVal v) ->
                                                                                                                                                     QError
                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                     QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                                   (QVal v1) ->
                                                                                                                                     (case t3 of
                                                                                                                                       QError -> QError
                                                                                                                                       QNone -> ((case t3' of
                                                                                                                                                   QError -> QError
                                                                                                                                                   QNone -> QVal(v1)
                                                                                                                                                   (QVal v) ->
                                                                                                                                                     (case (is_z (op_add v1 v)) of
                                                                                                                                                       True -> QNone
                                                                                                                                                       False -> QVal(op_add v1 v))
                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                     QError))
                                                                                                                                       (QVal v) ->
                                                                                                                                         (case (is_z (op_add v1 v)) of
                                                                                                                                           True -> t3'
                                                                                                                                           False -> ((case t3' of
                                                                                                                                                       QError -> QError
                                                                                                                                                       QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                                   True -> QNone
                                                                                                                                                                   False -> QVal(op_add v1 v)))
                                                                                                                                                       (QVal v') ->
                                                                                                                                                         (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                                           True -> QNone
                                                                                                                                                           False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                                                                                         QError)))
                                                                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                                                                         QError)
                                                                                                                                   (QNode q1 q2 q3 q4) ->
                                                                                                                                     (case t3 of
                                                                                                                                       QError -> QError
                                                                                                                                       QNone -> ((case t3' of
                                                                                                                                                   QError -> QError
                                                                                                                                                   QNone -> QNode(q1)
                                                                                                                                                                 (q2)
                                                                                                                                                                 (q3)
                                                                                                                                                                 (q4)
                                                                                                                                                   (QVal v) ->
                                                                                                                                                     QError
                                                                                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                                                                                     QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                                       (QVal v) ->
                                                                                                                                         QError
                                                                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                                                                         (case t3' of
                                                                                                                                           QError -> QError
                                                                                                                                           QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                                           (QVal v) ->
                                                                                                                                             QError
                                                                                                                                           (QNode t1' t2' t3' t4') ->
                                                                                                                                             QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                                  (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                              QError -> QError
                                                                                                                                              QNone -> t4''
                                                                                                                                              (QVal v1) ->
                                                                                                                                                (case t4'' of
                                                                                                                                                  QError -> QError
                                                                                                                                                  QNone -> QVal(v1)
                                                                                                                                                  (QVal v) ->
                                                                                                                                                    (case (is_z (op_add v1 v)) of
                                                                                                                                                      True -> QNone
                                                                                                                                                      False -> QVal(op_add v1 v))
                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                    QError)
                                                                                                                                              (QNode q1 q2 q3 q4) ->
                                                                                                                                                (case t4'' of
                                                                                                                                                  QError -> QError
                                                                                                                                                  QNone -> QNode(q1)
                                                                                                                                                                (q2)
                                                                                                                                                                (q3)
                                                                                                                                                                (q4)
                                                                                                                                                  (QVal v) ->
                                                                                                                                                    QError
                                                                                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                                                                                    QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add = (case q2 of
                                                                                                                      QError -> QError
                                                                                                                      QNone -> ((case t2 of
                                                                                                                                  QError -> QError
                                                                                                                                  QNone -> t2'
                                                                                                                                  (QVal v1) ->
                                                                                                                                    (case t2' of
                                                                                                                                      QError -> QError
                                                                                                                                      QNone -> QVal(v1)
                                                                                                                                      (QVal v) ->
                                                                                                                                        (case (is_z (op_add v1 v)) of
                                                                                                                                          True -> QNone
                                                                                                                                          False -> QVal(op_add v1 v))
                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                        QError)
                                                                                                                                  (QNode q1 q2 q3 q4) ->
                                                                                                                                    (case t2' of
                                                                                                                                      QError -> QError
                                                                                                                                      QNone -> QNode(q1)
                                                                                                                                                    (q2)
                                                                                                                                                    (q3)
                                                                                                                                                    (q4)
                                                                                                                                      (QVal v) ->
                                                                                                                                        QError
                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                        QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                                      (QVal v1) ->
                                                                                                                        (case t2 of
                                                                                                                          QError -> QError
                                                                                                                          QNone -> ((case t2' of
                                                                                                                                      QError -> QError
                                                                                                                                      QNone -> QVal(v1)
                                                                                                                                      (QVal v) ->
                                                                                                                                        (case (is_z (op_add v1 v)) of
                                                                                                                                          True -> QNone
                                                                                                                                          False -> QVal(op_add v1 v))
                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                        QError))
                                                                                                                          (QVal v) ->
                                                                                                                            (case (is_z (op_add v1 v)) of
                                                                                                                              True -> t2'
                                                                                                                              False -> ((case t2' of
                                                                                                                                          QError -> QError
                                                                                                                                          QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                                      True -> QNone
                                                                                                                                                      False -> QVal(op_add v1 v)))
                                                                                                                                          (QVal v') ->
                                                                                                                                            (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                              True -> QNone
                                                                                                                                              False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                                          (QNode t1 t2 t3 t4) ->
                                                                                                                                            QError)))
                                                                                                                          (QNode t1 t2 t3 t4) ->
                                                                                                                            QError)
                                                                                                                      (QNode q1 q2 q3 q4) ->
                                                                                                                        (case t2 of
                                                                                                                          QError -> QError
                                                                                                                          QNone -> ((case t2' of
                                                                                                                                      QError -> QError
                                                                                                                                      QNone -> QNode(q1)
                                                                                                                                                    (q2)
                                                                                                                                                    (q3)
                                                                                                                                                    (q4)
                                                                                                                                      (QVal v) ->
                                                                                                                                        QError
                                                                                                                                      (QNode t1 t2 t3 t4) ->
                                                                                                                                        QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                             (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                                          (QVal v) ->
                                                                                                                            QError
                                                                                                                          (QNode t1 t2 t3 t4) ->
                                                                                                                            (case t2' of
                                                                                                                              QError -> QError
                                                                                                                              QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                              (QVal v) ->
                                                                                                                                QError
                                                                                                                              (QNode t1' t2' t3' t4') ->
                                                                                                                                QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                                     (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                                 QError -> QError
                                                                                                                                 QNone -> t4''
                                                                                                                                 (QVal v1) ->
                                                                                                                                   (case t4'' of
                                                                                                                                     QError -> QError
                                                                                                                                     QNone -> QVal(v1)
                                                                                                                                     (QVal v) ->
                                                                                                                                       (case (is_z (op_add v1 v)) of
                                                                                                                                         True -> QNone
                                                                                                                                         False -> QVal(op_add v1 v))
                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                       QError)
                                                                                                                                 (QNode q1 q2 q3 q4) ->
                                                                                                                                   (case t4'' of
                                                                                                                                     QError -> QError
                                                                                                                                     QNone -> QNode(q1)
                                                                                                                                                   (q2)
                                                                                                                                                   (q3)
                                                                                                                                                   (q4)
                                                                                                                                     (QVal v) ->
                                                                                                                                       QError
                                                                                                                                     (QNode t1 t2 t3 t4) ->
                                                                                                                                       QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                            (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add = (case q1 of
                                                                                                         QError -> QError
                                                                                                         QNone -> ((case t1 of
                                                                                                                     QError -> QError
                                                                                                                     QNone -> t1'
                                                                                                                     (QVal v1) ->
                                                                                                                       (case t1' of
                                                                                                                         QError -> QError
                                                                                                                         QNone -> QVal(v1)
                                                                                                                         (QVal v) ->
                                                                                                                           (case (is_z (op_add v1 v)) of
                                                                                                                             True -> QNone
                                                                                                                             False -> QVal(op_add v1 v))
                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                           QError)
                                                                                                                     (QNode q1 q2 q3 q4) ->
                                                                                                                       (case t1' of
                                                                                                                         QError -> QError
                                                                                                                         QNone -> QNode(q1)
                                                                                                                                       (q2)
                                                                                                                                       (q3)
                                                                                                                                       (q4)
                                                                                                                         (QVal v) ->
                                                                                                                           QError
                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                           QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                                         (QVal v1) ->
                                                                                                           (case t1 of
                                                                                                             QError -> QError
                                                                                                             QNone -> ((case t1' of
                                                                                                                         QError -> QError
                                                                                                                         QNone -> QVal(v1)
                                                                                                                         (QVal v) ->
                                                                                                                           (case (is_z (op_add v1 v)) of
                                                                                                                             True -> QNone
                                                                                                                             False -> QVal(op_add v1 v))
                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                           QError))
                                                                                                             (QVal v) ->
                                                                                                               (case (is_z (op_add v1 v)) of
                                                                                                                 True -> t1'
                                                                                                                 False -> ((case t1' of
                                                                                                                             QError -> QError
                                                                                                                             QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                                         True -> QNone
                                                                                                                                         False -> QVal(op_add v1 v)))
                                                                                                                             (QVal v') ->
                                                                                                                               (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                                                 True -> QNone
                                                                                                                                 False -> QVal(op_add (op_add v1 v) v'))
                                                                                                                             (QNode t1 t2 t3 t4) ->
                                                                                                                               QError)))
                                                                                                             (QNode t1 t2 t3 t4) ->
                                                                                                               QError)
                                                                                                         (QNode q1 q2 q3 q4) ->
                                                                                                           (case t1 of
                                                                                                             QError -> QError
                                                                                                             QNone -> ((case t1' of
                                                                                                                         QError -> QError
                                                                                                                         QNone -> QNode(q1)
                                                                                                                                       (q2)
                                                                                                                                       (q3)
                                                                                                                                       (q4)
                                                                                                                         (QVal v) ->
                                                                                                                           QError
                                                                                                                         (QNode t1 t2 t3 t4) ->
                                                                                                                           QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                                (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                                             (QVal v) ->
                                                                                                               QError
                                                                                                             (QNode t1 t2 t3 t4) ->
                                                                                                               (case t1' of
                                                                                                                 QError -> QError
                                                                                                                 QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                                                 (QVal v) ->
                                                                                                                   QError
                                                                                                                 (QNode t1' t2' t3' t4') ->
                                                                                                                   QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                                                        (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                                                    QError -> QError
                                                                                                                    QNone -> t4''
                                                                                                                    (QVal v1) ->
                                                                                                                      (case t4'' of
                                                                                                                        QError -> QError
                                                                                                                        QNone -> QVal(v1)
                                                                                                                        (QVal v) ->
                                                                                                                          (case (is_z (op_add v1 v)) of
                                                                                                                            True -> QNone
                                                                                                                            False -> QVal(op_add v1 v))
                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                          QError)
                                                                                                                    (QNode q1 q2 q3 q4) ->
                                                                                                                      (case t4'' of
                                                                                                                        QError -> QError
                                                                                                                        QNone -> QNode(q1)
                                                                                                                                      (q2)
                                                                                                                                      (q3)
                                                                                                                                      (q4)
                                                                                                                        (QVal v) ->
                                                                                                                          QError
                                                                                                                        (QNode t1 t2 t3 t4) ->
                                                                                                                          QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                                               (f''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add = (case q4 of
                                                                                QError -> QError
                                                                                QNone -> ((case t4 of
                                                                                            QError -> QError
                                                                                            QNone -> t4'
                                                                                            (QVal v1) ->
                                                                                              (case t4' of
                                                                                                QError -> QError
                                                                                                QNone -> QVal(v1)
                                                                                                (QVal v) ->
                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                    True -> QNone
                                                                                                    False -> QVal(op_add v1 v))
                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                  QError)
                                                                                            (QNode q1 q2 q3 q4) ->
                                                                                              (case t4' of
                                                                                                QError -> QError
                                                                                                QNone -> QNode(q1)
                                                                                                              (q2)
                                                                                                              (q3)
                                                                                                              (q4)
                                                                                                (QVal v) ->
                                                                                                  QError
                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                  QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                                (QVal v1) ->
                                                                                  (case t4 of
                                                                                    QError -> QError
                                                                                    QNone -> ((case t4' of
                                                                                                QError -> QError
                                                                                                QNone -> QVal(v1)
                                                                                                (QVal v) ->
                                                                                                  (case (is_z (op_add v1 v)) of
                                                                                                    True -> QNone
                                                                                                    False -> QVal(op_add v1 v))
                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                  QError))
                                                                                    (QVal v) ->
                                                                                      (case (is_z (op_add v1 v)) of
                                                                                        True -> t4'
                                                                                        False -> ((case t4' of
                                                                                                    QError -> QError
                                                                                                    QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                                True -> QNone
                                                                                                                False -> QVal(op_add v1 v)))
                                                                                                    (QVal v') ->
                                                                                                      (case (is_z (op_add (op_add v1 v) v')) of
                                                                                                        True -> QNone
                                                                                                        False -> QVal(op_add (op_add v1 v) v'))
                                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                                      QError)))
                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                      QError)
                                                                                (QNode q1 q2 q3 q4) ->
                                                                                  (case t4 of
                                                                                    QError -> QError
                                                                                    QNone -> ((case t4' of
                                                                                                QError -> QError
                                                                                                QNone -> QNode(q1)
                                                                                                              (q2)
                                                                                                              (q3)
                                                                                                              (q4)
                                                                                                (QVal v) ->
                                                                                                  QError
                                                                                                (QNode t1 t2 t3 t4) ->
                                                                                                  QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                       (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                                    (QVal v) ->
                                                                                      QError
                                                                                    (QNode t1 t2 t3 t4) ->
                                                                                      (case t4' of
                                                                                        QError -> QError
                                                                                        QNone -> QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                                        (QVal v) ->
                                                                                          QError
                                                                                        (QNode t1' t2' t3' t4') ->
                                                                                          QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                               (f'''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                                           QError -> QError
                                                                                           QNone -> t4''
                                                                                           (QVal v1) ->
                                                                                             (case t4'' of
                                                                                               QError -> QError
                                                                                               QNone -> QVal(v1)
                                                                                               (QVal v) ->
                                                                                                 (case (is_z (op_add v1 v)) of
                                                                                                   True -> QNone
                                                                                                   False -> QVal(op_add v1 v))
                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                 QError)
                                                                                           (QNode q1 q2 q3 q4) ->
                                                                                             (case t4'' of
                                                                                               QError -> QError
                                                                                               QNone -> QNode(q1)
                                                                                                             (q2)
                                                                                                             (q3)
                                                                                                             (q4)
                                                                                               (QVal v) ->
                                                                                                 QError
                                                                                               (QNode t1 t2 t3 t4) ->
                                                                                                 QNode(f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                                      (f'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add = (case q3 of
                                                                   QError -> QError
                                                                   QNone -> ((case t3 of
                                                                               QError -> QError
                                                                               QNone -> t3'
                                                                               (QVal v1) ->
                                                                                 (case t3' of
                                                                                   QError -> QError
                                                                                   QNone -> QVal(v1)
                                                                                   (QVal v) ->
                                                                                     (case (is_z (op_add v1 v)) of
                                                                                       True -> QNone
                                                                                       False -> QVal(op_add v1 v))
                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                     QError)
                                                                               (QNode q1 q2 q3 q4) ->
                                                                                 (case t3' of
                                                                                   QError -> QError
                                                                                   QNone -> QNode(q1)
                                                                                                 (q2)
                                                                                                 (q3)
                                                                                                 (q4)
                                                                                   (QVal v) ->
                                                                                     QError
                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                     QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                                   (QVal v1) ->
                                                                     (case t3 of
                                                                       QError -> QError
                                                                       QNone -> ((case t3' of
                                                                                   QError -> QError
                                                                                   QNone -> QVal(v1)
                                                                                   (QVal v) ->
                                                                                     (case (is_z (op_add v1 v)) of
                                                                                       True -> QNone
                                                                                       False -> QVal(op_add v1 v))
                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                     QError))
                                                                       (QVal v) ->
                                                                         (case (is_z (op_add v1 v)) of
                                                                           True -> t3'
                                                                           False -> ((case t3' of
                                                                                       QError -> QError
                                                                                       QNone -> ((case (is_z (op_add v1 v)) of
                                                                                                   True -> QNone
                                                                                                   False -> QVal(op_add v1 v)))
                                                                                       (QVal v') ->
                                                                                         (case (is_z (op_add (op_add v1 v) v')) of
                                                                                           True -> QNone
                                                                                           False -> QVal(op_add (op_add v1 v) v'))
                                                                                       (QNode t1 t2 t3 t4) ->
                                                                                         QError)))
                                                                       (QNode t1 t2 t3 t4) ->
                                                                         QError)
                                                                   (QNode q1 q2 q3 q4) ->
                                                                     (case t3 of
                                                                       QError -> QError
                                                                       QNone -> ((case t3' of
                                                                                   QError -> QError
                                                                                   QNone -> QNode(q1)
                                                                                                 (q2)
                                                                                                 (q3)
                                                                                                 (q4)
                                                                                   (QVal v) ->
                                                                                     QError
                                                                                   (QNode t1 t2 t3 t4) ->
                                                                                     QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                          (f''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                                       (QVal v) ->
                                                                         QError
                                                                       (QNode t1 t2 t3 t4) ->
                                                                         (case t3' of
                                                                           QError -> QError
                                                                           QNone -> QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                                           (QVal v) ->
                                                                             QError
                                                                           (QNode t1' t2' t3' t4') ->
                                                                             QNode(f''''''''''''''''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                                  (f''''''''''''''''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                                  (f''''''''''''''''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                                  (f''''''''''''''''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                              QError -> QError
                                                                              QNone -> t4''
                                                                              (QVal v1) ->
                                                                                (case t4'' of
                                                                                  QError -> QError
                                                                                  QNone -> QVal(v1)
                                                                                  (QVal v) ->
                                                                                    (case (is_z (op_add v1 v)) of
                                                                                      True -> QNone
                                                                                      False -> QVal(op_add v1 v))
                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                    QError)
                                                                              (QNode q1 q2 q3 q4) ->
                                                                                (case t4'' of
                                                                                  QError -> QError
                                                                                  QNone -> QNode(q1)
                                                                                                (q2)
                                                                                                (q3)
                                                                                                (q4)
                                                                                  (QVal v) ->
                                                                                    QError
                                                                                  (QNode t1 t2 t3 t4) ->
                                                                                    QNode(f''''''''''''''''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                                         (f''''''''''''''''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f'''''''''''''''''''''''''' q2 t2 t2' is_z op_add = (case q2 of
                                                      QError -> QError
                                                      QNone -> ((case t2 of
                                                                  QError -> QError
                                                                  QNone -> t2'
                                                                  (QVal v1) ->
                                                                    (case t2' of
                                                                      QError -> QError
                                                                      QNone -> QVal(v1)
                                                                      (QVal v) ->
                                                                        (case (is_z (op_add v1 v)) of
                                                                          True -> QNone
                                                                          False -> QVal(op_add v1 v))
                                                                      (QNode t1 t2 t3 t4) ->
                                                                        QError)
                                                                  (QNode q1 q2 q3 q4) ->
                                                                    (case t2' of
                                                                      QError -> QError
                                                                      QNone -> QNode(q1)
                                                                                    (q2)
                                                                                    (q3)
                                                                                    (q4)
                                                                      (QVal v) ->
                                                                        QError
                                                                      (QNode t1 t2 t3 t4) ->
                                                                        QNode(f'''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                                      (QVal v1) ->
                                                        (case t2 of
                                                          QError -> QError
                                                          QNone -> ((case t2' of
                                                                      QError -> QError
                                                                      QNone -> QVal(v1)
                                                                      (QVal v) ->
                                                                        (case (is_z (op_add v1 v)) of
                                                                          True -> QNone
                                                                          False -> QVal(op_add v1 v))
                                                                      (QNode t1 t2 t3 t4) ->
                                                                        QError))
                                                          (QVal v) ->
                                                            (case (is_z (op_add v1 v)) of
                                                              True -> t2'
                                                              False -> ((case t2' of
                                                                          QError -> QError
                                                                          QNone -> ((case (is_z (op_add v1 v)) of
                                                                                      True -> QNone
                                                                                      False -> QVal(op_add v1 v)))
                                                                          (QVal v') ->
                                                                            (case (is_z (op_add (op_add v1 v) v')) of
                                                                              True -> QNone
                                                                              False -> QVal(op_add (op_add v1 v) v'))
                                                                          (QNode t1 t2 t3 t4) ->
                                                                            QError)))
                                                          (QNode t1 t2 t3 t4) ->
                                                            QError)
                                                      (QNode q1 q2 q3 q4) ->
                                                        (case t2 of
                                                          QError -> QError
                                                          QNone -> ((case t2' of
                                                                      QError -> QError
                                                                      QNone -> QNode(q1)
                                                                                    (q2)
                                                                                    (q3)
                                                                                    (q4)
                                                                      (QVal v) ->
                                                                        QError
                                                                      (QNode t1 t2 t3 t4) ->
                                                                        QNode(f'''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                             (f'''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                                          (QVal v) ->
                                                            QError
                                                          (QNode t1 t2 t3 t4) ->
                                                            (case t2' of
                                                              QError -> QError
                                                              QNone -> QNode(f'''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                              (QVal v) ->
                                                                QError
                                                              (QNode t1' t2' t3' t4') ->
                                                                QNode(f'''''''''''''''''''''''''' q1 t1 t1' is_z op_add)
                                                                     (f'''''''''''''''''''''''''' q2 t2 t2' is_z op_add)
                                                                     (f'''''''''''''''''''''''''' q3 t3 t3' is_z op_add)
                                                                     (f'''''''''''''''''''''''''' q4 t4 t4' is_z op_add))));
f'''''''''''''''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                                 QError -> QError
                                                                 QNone -> t4''
                                                                 (QVal v1) ->
                                                                   (case t4'' of
                                                                     QError -> QError
                                                                     QNone -> QVal(v1)
                                                                     (QVal v) ->
                                                                       (case (is_z (op_add v1 v)) of
                                                                         True -> QNone
                                                                         False -> QVal(op_add v1 v))
                                                                     (QNode t1 t2 t3 t4) ->
                                                                       QError)
                                                                 (QNode q1 q2 q3 q4) ->
                                                                   (case t4'' of
                                                                     QError -> QError
                                                                     QNone -> QNode(q1)
                                                                                   (q2)
                                                                                   (q3)
                                                                                   (q4)
                                                                     (QVal v) ->
                                                                       QError
                                                                     (QNode t1 t2 t3 t4) ->
                                                                       QNode(f'''''''''''''''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                            (f'''''''''''''''''''''''''''''''''''''' q4 t4 is_z op_add)));
f''''''''''''' q1 t1 t1' is_z op_add = (case q1 of
                                         QError -> QError
                                         QNone -> ((case t1 of
                                                     QError -> QError
                                                     QNone -> t1'
                                                     (QVal v1) ->
                                                       (case t1' of
                                                         QError -> QError
                                                         QNone -> QVal(v1)
                                                         (QVal v) ->
                                                           (case (is_z (op_add v1 v)) of
                                                             True -> QNone
                                                             False -> QVal(op_add v1 v))
                                                         (QNode t1 t2 t3 t4) ->
                                                           QError)
                                                     (QNode q1 q2 q3 q4) ->
                                                       (case t1' of
                                                         QError -> QError
                                                         QNone -> QNode(q1) (q2) (q3) (q4)
                                                         (QVal v) ->
                                                           QError
                                                         (QNode t1 t2 t3 t4) ->
                                                           QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                (f''''''''''''''''''''''''' q4 t4 is_z op_add))))
                                         (QVal v1) ->
                                           (case t1 of
                                             QError -> QError
                                             QNone -> ((case t1' of
                                                         QError -> QError
                                                         QNone -> QVal(v1)
                                                         (QVal v) ->
                                                           (case (is_z (op_add v1 v)) of
                                                             True -> QNone
                                                             False -> QVal(op_add v1 v))
                                                         (QNode t1 t2 t3 t4) ->
                                                           QError))
                                             (QVal v) ->
                                               (case (is_z (op_add v1 v)) of
                                                 True -> t1'
                                                 False -> ((case t1' of
                                                             QError -> QError
                                                             QNone -> ((case (is_z (op_add v1 v)) of
                                                                         True -> QNone
                                                                         False -> QVal(op_add v1 v)))
                                                             (QVal v') ->
                                                               (case (is_z (op_add (op_add v1 v) v')) of
                                                                 True -> QNone
                                                                 False -> QVal(op_add (op_add v1 v) v'))
                                                             (QNode t1 t2 t3 t4) ->
                                                               QError)))
                                             (QNode t1 t2 t3 t4) ->
                                               QError)
                                         (QNode q1 q2 q3 q4) ->
                                           (case t1 of
                                             QError -> QError
                                             QNone -> ((case t1' of
                                                         QError -> QError
                                                         QNone -> QNode(q1) (q2) (q3) (q4)
                                                         (QVal v) ->
                                                           QError
                                                         (QNode t1 t2 t3 t4) ->
                                                           QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                                (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                                (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                                (f''''''''''''''''''''''''' q4 t4 is_z op_add)))
                                             (QVal v) ->
                                               QError
                                             (QNode t1 t2 t3 t4) ->
                                               (case t1' of
                                                 QError -> QError
                                                 QNone -> QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                               (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                               (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                               (f''''''''''''''''''''''''' q4 t4 is_z op_add)
                                                 (QVal v) ->
                                                   QError
                                                 (QNode t1' t2' t3' t4') ->
                                                   QNode(f''''''''''''' q1 t1 t1' is_z op_add)
                                                        (f''''''''''''' q2 t2 t2' is_z op_add)
                                                        (f''''''''''''' q3 t3 t3' is_z op_add)
                                                        (f''''''''''''' q4 t4 t4' is_z op_add))));
f''''''''''''''''''''''''' q4' t4'' is_z op_add = (case q4' of
                                                    QError -> QError
                                                    QNone -> t4''
                                                    (QVal v1) ->
                                                      (case t4'' of
                                                        QError -> QError
                                                        QNone -> QVal(v1)
                                                        (QVal v) ->
                                                          (case (is_z (op_add v1 v)) of
                                                            True -> QNone
                                                            False -> QVal(op_add v1 v))
                                                        (QNode t1 t2 t3 t4) ->
                                                          QError)
                                                    (QNode q1 q2 q3 q4) ->
                                                      (case t4'' of
                                                        QError -> QError
                                                        QNone -> QNode(q1) (q2) (q3) (q4)
                                                        (QVal v) ->
                                                          QError
                                                        (QNode t1 t2 t3 t4) ->
                                                          QNode(f''''''''''''''''''''''''' q1 t1 is_z op_add)
                                                               (f''''''''''''''''''''''''' q2 t2 is_z op_add)
                                                               (f''''''''''''''''''''''''' q3 t3 is_z op_add)
                                                               (f''''''''''''''''''''''''' q4 t4 is_z op_add)))
