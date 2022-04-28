module MAddAddAdd2 where

data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MNone | MVal | MNode MaskQTree MaskQTree MaskQTree MaskQTree;



main :: QTree Bool -> QTree Bool -> QTree Bool -> QTree Bool
main m1 m2 m3 = f m1 m2 m3;
f m1 m2 m3 = (case m1 of
               QError -> QError
               QNone -> ((case m2 of
                           QError -> QError
                           QNone -> m3
                           (QVal v1) ->
                             (case m3 of
                               QError -> QError
                               QNone -> QVal(v1)
                               (QVal v) ->
                                 (case v1 of
                                   True -> QVal(True)
                                   False -> ((case v of
                                               True -> QVal(True)
                                               False -> QNone)))
                               (QNode t1 t2 t3 t4) ->
                                 QError)
                           (QNode q1 q2 q3 q4) ->
                             (case m3 of
                               QError -> QError
                               QNone -> QNode(q1) (q2) (q3) (q4)
                               (QVal v) ->
                                 QError
                               (QNode t1 t2 t3 t4) ->
                                 QNode(f'''''''''''' q1 t1)
                                      (f'''''''''''' q2 t2)
                                      (f'''''''''''' q3 t3)
                                      (f'''''''''''' q4 t4))))
               (QVal v1) ->
                 (case m2 of
                   QError -> QError
                   QNone -> ((case m3 of
                               QError -> QError
                               QNone -> QVal(v1)
                               (QVal v) ->
                                 (case v1 of
                                   True -> QVal(True)
                                   False -> ((case v of
                                               True -> QVal(True)
                                               False -> QNone)))
                               (QNode t1 t2 t3 t4) ->
                                 QError))
                   (QVal v) ->
                     (case v1 of
                       True -> ((case m3 of
                                  QError -> QError
                                  QNone -> QVal(True)
                                  (QVal v) ->
                                    QVal(True)
                                  (QNode t1 t2 t3 t4) ->
                                    QError))
                       False -> ((case v of
                                   True -> ((case m3 of
                                              QError -> QError
                                              QNone -> QVal(True)
                                              (QVal v) ->
                                                QVal(True)
                                              (QNode t1 t2 t3 t4) ->
                                                QError))
                                   False -> m3)))
                   (QNode t1 t2 t3 t4) ->
                     QError)
               (QNode q1 q2 q3 q4) ->
                 (case m2 of
                   QError -> QError
                   QNone -> ((case m3 of
                               QError -> QError
                               QNone -> QNode(q1) (q2) (q3) (q4)
                               (QVal v) ->
                                 QError
                               (QNode t1 t2 t3 t4) ->
                                 QNode(f'''''''''''' q1 t1)
                                      (f'''''''''''' q2 t2)
                                      (f'''''''''''' q3 t3)
                                      (f'''''''''''' q4 t4)))
                   (QVal v) ->
                     QError
                   (QNode t1 t2 t3 t4) ->
                     (case m3 of
                       QError -> QError
                       QNone -> QNode(f'''''''''''' q1 t1)
                                     (f'''''''''''' q2 t2)
                                     (f'''''''''''' q3 t3)
                                     (f'''''''''''' q4 t4)
                       (QVal v) ->
                         QError
                       (QNode t1' t2' t3' t4') ->
                         QNode(f q1 t1 t1') (f q2 t2 t2') (f q3 t3 t3') (f q4 t4 t4'))));
f'''''''''''' q4 t4 = (case q4 of
                        QError -> QError
                        QNone -> t4
                        (QVal v1) ->
                          (case t4 of
                            QError -> QError
                            QNone -> QVal(v1)
                            (QVal v) ->
                              (case v1 of
                                True -> QVal(True)
                                False -> ((case v of
                                            True -> QVal(True)
                                            False -> QNone)))
                            (QNode t1 t2 t3 t4) ->
                              QError)
                        (QNode q1 q2 q3 q4) ->
                          (case t4 of
                            QError -> QError
                            QNone -> QNode(q1) (q2) (q3) (q4)
                            (QVal v) ->
                              QError
                            (QNode t1 t2 t3 t4) ->
                              QNode(f'''''''''''' q1 t1)
                                   (f'''''''''''' q2 t2)
                                   (f'''''''''''' q3 t3)
                                   (f'''''''''''' q4 t4)))