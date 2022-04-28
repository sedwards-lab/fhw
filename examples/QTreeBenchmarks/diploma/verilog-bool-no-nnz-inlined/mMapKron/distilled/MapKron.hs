module MapKron where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;
data Nat = Zero | Succ Nat


main :: QTree Bool -> QTree Bool -> QTree Nat
main m1 m2 = f m1 m2;
f m1 m2 = (case m1 of
            QError -> QError
            QNone -> QNone
            (QVal v) ->
              f' m2 v
            (QNode q1 q2 q3 q4) ->
              QNode(f q1 m2) (f q2 m2) (f q3 m2) (f q4 m2));
f' m2 v = (case m2 of
            QError -> QError
            QNone -> QNone
            (QVal v') ->
              (case v of
                True -> ((case v' of
                           True -> QVal((Succ (Zero)))
                           False -> QNone))
                False -> QNone)
            (QNode q1 q2 q3 q4) ->
              QNode(f' q1 v) (f' q2 v) (f' q3 v) (f' q4 v))