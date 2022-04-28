module MaskKron where



data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
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

maskFromMatrix m =
    let res = case m of

          QError -> MQNone
          (QVal v) -> MQVal
          QNone -> MQNone
          (QNode m1 m2 m3 m4) -> MQNode (maskFromMatrix m1) (maskFromMatrix m2) (maskFromMatrix m3) (maskFromMatrix m4)
    in res
;

-- partially applied functions does not work atm
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


main :: MaskQTree -> QTree Bool -> QTree Bool -> QTree Bool
main m1 m2 m3 = mask (kron (==False) (&&) m2 m3) m1