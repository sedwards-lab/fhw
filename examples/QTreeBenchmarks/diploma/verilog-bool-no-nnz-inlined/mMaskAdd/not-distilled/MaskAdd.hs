module MaskAdd where



data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;

mkNode isZ x = if isZ x then QNone else QVal x

mAdd :: (t -> Bool) -> (t -> t -> t) -> QTree t -> QTree t -> QTree t
mAdd isZ g m1 m2 =
    case m1 of
         QError -> QError
         QNone -> m2
         QVal v1 -> (case m2 of
                      QError -> QError
                      QNone -> m1
                      (QVal v) -> QVal (g v1 v)
                      (QNode t1 t2 t3 t4) -> QError)
         (QNode q1 q2 q3 q4) -> (case m2 of
                                    QError -> QError
                                    QNone -> m1
                                    (QVal v) -> QError
                                    (QNode t1 t2 t3 t4) -> QNode
                                                                    (mAdd isZ g q1 t1)
                                                                    (mAdd isZ g q2 t2)
                                                                    (mAdd isZ g q3 t3)
                                                                    (mAdd isZ g q4 t4))

mask m msk =
    case msk of
         MQNone -> QNone
         MQVal -> m
         (MQNode q1 q2 q3 q4) ->
               (case m of
                    QError -> QError
                    QNone -> QNone
                    (QVal v) -> QError
                    (QNode t1 t2 t3 t4) -> (QNode (mask t1 q1) (mask t2 q2) (mask t3 q3) (mask t4 q4)))
;

nnz :: QTree a -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

main :: MaskQTree -> QTree Bool -> QTree Bool -> QTree Bool
main m1 m2 m3 = mask (mAdd (== False) (||) m2 m3) (m1)