module MapAdd where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MNone | MVal | MNode MaskQTree MaskQTree MaskQTree MaskQTree;


nnz :: QTree Int -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

-- fun_for_map :: Int -> Int
-- fun_for_map x = x + 2


f'''''''' q4 is_z_map op_map = (case q4 of
                                 QError -> QError
                                 QNone -> QNone
                                 (QVal v) ->
                                   (case (is_z_map (op_map v)) of
                                     True -> QNone
                                     False -> QVal(op_map v))
                                 (QNode tl tr bl br) ->
                                   QNode(f'''''''' tl is_z_map op_map)
                                        (f'''''''' tr is_z_map op_map)
                                        (f'''''''' bl is_z_map op_map)
                                        (f'''''''' br is_z_map op_map))

f m1 m2 is_z_map op_map is_z_add op_add = (case m1 of
                                            QError -> QError
                                            QNone -> ((case m2 of
                                                        QError -> QError
                                                        QNone -> QNone
                                                        (QVal v) ->
                                                          (case (is_z_map (op_map v)) of
                                                            True -> QNone
                                                            False -> QVal(op_map v))
                                                        (QNode tl tr bl br) ->
                                                          QNode(f'''''''' tl is_z_map op_map)
                                                               (f'''''''' tr is_z_map op_map)
                                                               (f'''''''' bl is_z_map op_map)
                                                               (f'''''''' br is_z_map op_map)))
                                            (QVal v1) ->
                                              (case m2 of
                                                QError -> QError
                                                QNone -> ((case (is_z_map (op_map v1)) of
                                                            True -> QNone
                                                            False -> QVal(op_map v1)))
                                                (QVal v) ->
                                                  (case (is_z_add (op_add v1 v)) of
                                                    True -> QNone
                                                    False -> ((case (is_z_map (op_map (op_add v1 v))) of
                                                                True -> QNone
                                                                False -> QVal(op_map (op_add v1 v)))))
                                                (QNode t1 t2 t3 t4) ->
                                                  QError)
                                            (QNode q1 q2 q3 q4) ->
                                              (case m2 of
                                                QError -> QError
                                                QNone -> QNode(f'''''''' q1 is_z_map op_map)
                                                              (f'''''''' q2 is_z_map op_map)
                                                              (f'''''''' q3 is_z_map op_map)
                                                              (f'''''''' q4 is_z_map op_map)
                                                (QVal v) ->
                                                  QError
                                                (QNode t1 t2 t3 t4) ->
                                                  QNode(f q1 t1 is_z_map op_map is_z_add op_add)
                                                       (f q2 t2 is_z_map op_map is_z_add op_add)
                                                       (f q3 t3 is_z_map op_map is_z_add op_add)
                                                       (f q4 t4 is_z_map op_map is_z_add op_add)));

is_z_1 :: Int -> Bool
is_z_1 x = (x == 0)

main :: QTree Int -> QTree Int -> Int
main m1 m2 = nnz $ f m1 m2 (is_z_1) (\x -> x + 2) (is_z_1) (+);
