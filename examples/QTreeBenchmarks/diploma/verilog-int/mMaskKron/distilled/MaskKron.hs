module MaskKron where



data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;

nnz :: QTree a -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

isZero x = (x == 0)
times x y = (x * y)

main :: QTree Int
main = f (MQNone) QNone QNone (==0) (*);

f :: MaskQTree -> QTree Int -> QTree Int -> (Int -> Bool) -> (Int->Int->Int) -> QTree Int
f m1 m2 m3 is_z op_kron = (case m1 of
                            MQNone -> QNone
                            MQVal -> (f' m2 m3 is_z op_kron)
                            (MQNode q1 q2 q3 q4) ->
                              (case m2 of
                                QError -> QError
                                QNone -> QNone
                                (QVal v) ->
                                  f''' m3 is_z op_kron v q1 q2 q3 q4
                                (QNode q1' q2' q3' q4') ->
                                  QNode(f q1 q1' m3 is_z op_kron)
                                       (f q2 q2' m3 is_z op_kron)
                                       (f q3 q3' m3 is_z op_kron)
                                       (f q4 q4' m3 is_z op_kron)));
f''' m3 is_z op_kron v q1 q2 q3 q4 = (case m3 of
                                       QError -> QError
                                       QNone -> QNone
                                       (QVal v') ->
                                         (case (is_z (op_kron v v')) of
                                           True -> QNone
                                           False -> QError)
                                       (QNode q1' q2' q3' q4') ->
                                         QNode((case q1 of
                                                 MQNone -> QNone
                                                 MQVal -> (f''''''' q1' is_z op_kron v)
                                                 (MQNode q1 q2 q3 q4) ->
                                                   f''' q1' is_z op_kron v q1 q2 q3 q4))
                                              ((case q2 of
                                                 MQNone -> QNone
                                                 MQVal -> (f''''''' q2' is_z op_kron v)
                                                 (MQNode q1 q2 q3 q4) ->
                                                   f''' q2' is_z op_kron v q1 q2 q3 q4))
                                              ((case q3 of
                                                 MQNone -> QNone
                                                 MQVal -> (f''''''' q3' is_z op_kron v)
                                                 (MQNode q1 q2 q3 q4) ->
                                                   f''' q3' is_z op_kron v q1 q2 q3 q4))
                                              ((case q4 of
                                                 MQNone -> QNone
                                                 MQVal -> (f''''''' q4' is_z op_kron v)
                                                 (MQNode q1 q2 q3 q4) ->
                                                   f''' q4' is_z op_kron v q1 q2 q3 q4)));
f''''''' q4' is_z op_kron v = (case q4' of
                                QError -> QError
                                QNone -> QNone
                                (QVal v') ->
                                  (case (is_z (op_kron v v')) of
                                    True -> QNone
                                    False -> QVal(op_kron v v'))
                                (QNode q1 q2 q3 q4) ->
                                  QNode(f''''''' q1 is_z op_kron v)
                                       (f''''''' q2 is_z op_kron v)
                                       (f''''''' q3 is_z op_kron v)
                                       (f''''''' q4 is_z op_kron v));
f' m2 m3 is_z op_kron = (case m2 of
                          QError -> QError
                          QNone -> QNone
                          (QVal v) ->
                            f'' m3 is_z op_kron v
                          (QNode q1 q2 q3 q4) ->
                            QNode(f' q1 m3 is_z op_kron)
                                 (f' q2 m3 is_z op_kron)
                                 (f' q3 m3 is_z op_kron)
                                 (f' q4 m3 is_z op_kron));
f'' m3 is_z op_kron v = (case m3 of
                          QError -> QError
                          QNone -> QNone
                          (QVal v') ->
                            (case (is_z (op_kron v v')) of
                              True -> QNone
                              False -> QVal(op_kron v v'))
                          (QNode q1 q2 q3 q4) ->
                            QNode(f'' q1 is_z op_kron v)
                                 (f'' q2 is_z op_kron v)
                                 (f'' q3 is_z op_kron v)
                                 (f'' q4 is_z op_kron v))