module MaskAdd where



data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;

main :: MaskQTree -> QTree Bool -> QTree Bool -> QTree Bool
main m1 m2 m3 = f m1 m2 m3;
f m1 m2 m3 = (case m1 of
               MQNone -> QNone
               MQVal -> (f' m2 m3)
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
                         (case v1 of
                           True -> QError
                           False -> ((case v of
                                       True -> QError
                                       False -> QNone)))
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
                         QNode(f q1 q1' t1) (f q2 q2' t2) (f q3 q3' t3) (f q4 q4' t4))));
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
f' m2 m3 = (case m2 of
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
                   QNode(f' q1 t1) (f' q2 t2) (f' q3 t3) (f' q4 t4)))