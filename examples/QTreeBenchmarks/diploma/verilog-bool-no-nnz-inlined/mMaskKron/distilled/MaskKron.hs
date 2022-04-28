module MaskKron where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;


main :: MaskQTree -> QTree Bool -> QTree Bool -> QTree Bool
main m1 m2 m3 = f m1 m2 m3;
f m1 m2 m3 = (case m1 of
               MQNone -> QNone
               MQVal -> (f' m2 m3)
               (MQNode q1 q2 q3 q4) ->
                 (case m2 of
                   QError -> QError
                   QNone -> QNone
                   (QVal v) ->
                     f''' m3 v q1 q2 q3 q4
                   (QNode q1' q2' q3' q4') ->
                     QNode(f q1 q1' m3) (f q2 q2' m3) (f q3 q3' m3) (f q4 q4' m3)));
f''' m3 v q1 q2 q3 q4 = (case m3 of
                          QError -> QError
                          QNone -> QNone
                          (QVal v') ->
                            (case v of
                              True -> ((case v' of
                                         True -> QError
                                         False -> QNone))
                              False -> QNone)
                          (QNode q1' q2' q3' q4') ->
                            QNode((case q1 of
                                    MQNone -> QNone
                                    MQVal -> (f''''''' q1' v)
                                    (MQNode q1 q2 q3 q4) ->
                                      f''' q1' v q1 q2 q3 q4))
                                 ((case q2 of
                                    MQNone -> QNone
                                    MQVal -> (f''''''' q2' v)
                                    (MQNode q1 q2 q3 q4) ->
                                      f''' q2' v q1 q2 q3 q4))
                                 ((case q3 of
                                    MQNone -> QNone
                                    MQVal -> (f''''''' q3' v)
                                    (MQNode q1 q2 q3 q4) ->
                                      f''' q3' v q1 q2 q3 q4))
                                 ((case q4 of
                                    MQNone -> QNone
                                    MQVal -> (f''''''' q4' v)
                                    (MQNode q1 q2 q3 q4) ->
                                      f''' q4' v q1 q2 q3 q4)));
f''''''' q4' v = (case q4' of
                   QError -> QError
                   QNone -> QNone
                   (QVal v') ->
                     (case v of
                       True -> ((case v' of
                                  True -> QVal(True)
                                  False -> QNone))
                       False -> QNone)
                   (QNode q1 q2 q3 q4) ->
                     QNode(f''''''' q1 v) (f''''''' q2 v) (f''''''' q3 v) (f''''''' q4 v));
f' m2 m3 = (case m2 of
             QError -> QError
             QNone -> QNone
             (QVal v) ->
               f'' m3 v
             (QNode q1 q2 q3 q4) ->
               QNode(f' q1 m3) (f' q2 m3) (f' q3 m3) (f' q4 m3));
f'' m3 v = (case m3 of
             QError -> QError
             QNone -> QNone
             (QVal v') ->
               (case v of
                 True -> ((case v' of
                            True -> QVal(True)
                            False -> QNone))
                 False -> QNone)
             (QNode q1 q2 q3 q4) ->
               QNode(f'' q1 v) (f'' q2 v) (f'' q3 v) (f'' q4 v))