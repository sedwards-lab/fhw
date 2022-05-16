module MapAdd where


data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MNone | MVal | MNode MaskQTree MaskQTree MaskQTree MaskQTree;


nnz :: QTree Bool -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

-- fun_for_map :: Int -> Int
-- fun_for_map x = x + 2


f'''''''' q4 = (case q4 of
                                 QError -> QError
                                 QNone -> QNone
                                 (QVal v) ->
                                   let v' = if v == 0 then False else True in
                                   (case (v' == False) of
                                     True -> QNone
                                     False -> QVal(v'))
                                 (QNode tl tr bl br) ->
                                   QNode(f'''''''' tl )
                                        (f'''''''' tr )
                                        (f'''''''' bl )
                                        (f'''''''' br ))

f m1 m2 = (case m1 of
                                            QError -> QError
                                            QNone -> ((case m2 of
                                                        QError -> QError
                                                        QNone -> QNone
                                                        (QVal v) ->
                                                          let v' = if v == 0 then False else True in
                                                          (case (v' == False) of
                                                            True -> QNone
                                                            False -> QVal(v'))
                                                        (QNode tl tr bl br) ->
                                                          QNode(f'''''''' tl )
                                                               (f'''''''' tr )
                                                               (f'''''''' bl )
                                                               (f'''''''' br )))
                                            (QVal v1) ->
                                              (case m2 of
                                                QError -> QError
                                                QNone -> (
                                                  let v' = if v1 == 0 then False else True in 
                                                  (case (v' == False) of
                                                            True -> QNone
                                                            False -> QVal(v')))
                                                (QVal v) ->
                                                  let v' = (+) v1 v in
                                                  (case (v' == 0) of
                                                    True -> QNone
                                                    False -> (
                                                      let v'' = if v' == 0 then False else True in
                                                      (case ((==) False v'') of
                                                                True -> QNone
                                                                False -> QVal(v''))))
                                                (QNode t1 t2 t3 t4) ->
                                                  QError)
                                            (QNode q1 q2 q3 q4) ->
                                              (case m2 of
                                                QError -> QError
                                                QNone -> QNode(f'''''''' q1 )
                                                              (f'''''''' q2 )
                                                              (f'''''''' q3 )
                                                              (f'''''''' q4 )
                                                (QVal v) ->
                                                  QError
                                                (QNode t1 t2 t3 t4) ->
                                                  QNode(f q1 t1)
                                                       (f q2 t2)
                                                       (f q3 t3)
                                                       (f q4 t4)));

is_z_1 :: Int -> Bool
is_z_1 x = (x == 0)

main :: QTree Int -> QTree Int -> Int
main m1 m2 = nnz $ f m1 m2;
