module MapKron where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError deriving Show;
data MaskQTree = MQNone | MQVal | MQNode MaskQTree MaskQTree MaskQTree MaskQTree;

nnz :: QTree a -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)


eqZero :: Int -> Bool
eqZero x = (x == 0)

main :: QTree Int -> QTree Int -> Int
main m1 m2 = nnz $ f m1 m2 (eqZero) (*) (eqZero) (+ 2);
f m1 m2 is_z_kron op_kron is_z_map f_map = (case m1 of
                                             QError -> QError
                                             QNone -> QNone
                                             (QVal v) ->
                                               f' m2 is_z_kron op_kron v is_z_map f_map
                                             (QNode q1 q2 q3 q4) ->
                                               QNode(f q1 m2 is_z_kron op_kron is_z_map f_map)
                                                    (f q2 m2 is_z_kron op_kron is_z_map f_map)
                                                    (f q3 m2 is_z_kron op_kron is_z_map f_map)
                                                    (f q4 m2 is_z_kron op_kron is_z_map f_map));
f' m2 is_z_kron op_kron v is_z_map f_map = (case m2 of
                                             QError -> QError
                                             QNone -> QNone
                                             (QVal v') ->
                                               (case (is_z_kron (op_kron v v')) of
                                                 True -> QNone
                                                 False -> ((case (is_z_map (f_map (op_kron v v'))) of
                                                             True -> QNone
                                                             False -> QVal(f_map (op_kron v v')))))
                                             (QNode q1 q2 q3 q4) ->
                                               QNode(f' q1 is_z_kron op_kron v is_z_map f_map)
                                                    (f' q2 is_z_kron op_kron v is_z_map f_map)
                                                    (f' q3 is_z_kron op_kron v is_z_map f_map)
                                                    (f' q4 is_z_kron op_kron v is_z_map f_map))
