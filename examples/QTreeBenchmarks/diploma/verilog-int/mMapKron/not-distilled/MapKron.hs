module MapKron where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;

nnz :: QTree a -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

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


-- partially applied functions does not work atm
map' isZ g m =
    case m of
         QError -> QError
         QNone -> QNone
         (QVal v) -> mkNode isZ (g v)
         (QNode q1 q2 q3 q4) -> QNode
                                     (map' isZ g q1)
                                     (map' isZ g q2)
                                     (map' isZ g q3)
                                     (map' isZ g q4)
;

map'' isZ g v' m =
    case m of
         QError -> QError
         QNone -> QNone
         (QVal v) -> mkNode isZ (g v' v)
         (QNode q1 q2 q3 q4) -> QNode
                                     (map'' isZ g v' q1)
                                     (map'' isZ g v' q2)
                                     (map'' isZ g v' q3)
                                     (map'' isZ g v' q4)
;

kron isZ g m1 m2 =
    case m1 of
         QError -> QError
         QNone -> QNone
         (QVal v) -> map'' isZ g v m2
         (QNode q1 q2 q3 q4) -> QNode
                                      (kron isZ g q1 m2)
                                      (kron isZ g q2 m2)
                                      (kron isZ g q3 m2)
                                      (kron isZ g q4 m2)
;

eqZero :: Int -> Bool
eqZero x = (x == 0)

main :: QTree Int -> QTree Int -> Int
main m1 m2 = nnz $ map' (eqZero) (+ 2) (kron (eqZero) (*) m1 m2)

-- m1 :: QTree Int
-- m1 = QNode (QVal 1) QNone (QVal 3) (QVal 4)

-- m2 :: QTree Int
-- m2 = QNode (QNode (QVal 1) (QVal 2) (QVal 5) (QVal 6)) (QNode (QVal 3) (QVal 4) (QVal 7) (QVal 8)) (QNode (QVal 9) (QVal 10) (QVal 13) (QVal 14)) (QNode (QVal 11) (QVal 12) (QVal 15) (QVal 16))

-- g = (*)

-- v = 5
