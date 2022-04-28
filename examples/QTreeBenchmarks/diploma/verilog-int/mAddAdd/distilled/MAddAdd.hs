module MAddAddAdd2 where

data QTree a = QNone | QVal a | QNode (QTree a) (QTree a) (QTree a) (QTree a) | QError;
data MaskQTree = MNone | MVal | MNode MaskQTree MaskQTree MaskQTree MaskQTree;


mkNode isZ x = if isZ x then QNone else QVal x
mAdd isZ g m1 m2 =
    case m1 of
         QError -> QError
         QNone -> m2
         QVal v1 -> (case m2 of
                      QError -> QError
                      QNone -> m1
                      (QVal v) -> mkNode isZ (g v1 v)
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

nnz :: QTree Int -> Int
nnz t = case t of
            QError -> 0
            QNone -> 0
            QVal _ -> 1
            QNode q1 q2 q3 q4 -> (nnz q1) + (nnz q2) + (nnz q3) + (nnz q4)

isZ :: Int -> Bool
isZ x = (x== 0)


main :: QTree Int -> QTree Int -> QTree Int -> Int
main m1 m2 m3 = nnz $ f m1 m2 m3 isZ (+);

f m1 m2 m3 is_z op_add = (case m1 of
                           QError -> QError
                           QNone -> ((case m2 of
                                       QError -> QError
                                       QNone -> m3
                                       (QVal v1) ->
                                         (case m3 of
                                           QError -> QError
                                           QNone -> QVal(v1)
                                           (QVal v) ->
                                             (case (is_z (op_add v1 v)) of
                                               True -> QNone
                                               False -> QVal(op_add v1 v))
                                           (QNode t1 t2 t3 t4) ->
                                             QError)
                                       (QNode q1 q2 q3 q4) ->
                                         (case m3 of
                                           QError -> QError
                                           QNone -> QNode(q1) (q2) (q3) (q4)
                                           (QVal v) ->
                                             QError
                                           (QNode t1 t2 t3 t4) ->
                                             QNode(f'''''''''''' q1 t1 is_z op_add)
                                                  (f'''''''''''' q2 t2 is_z op_add)
                                                  (f'''''''''''' q3 t3 is_z op_add)
                                                  (f'''''''''''' q4 t4 is_z op_add))))
                           (QVal v1) ->
                             (case m2 of
                               QError -> QError
                               QNone -> ((case m3 of
                                           QError -> QError
                                           QNone -> QVal(v1)
                                           (QVal v) ->
                                             (case (is_z (op_add v1 v)) of
                                               True -> QNone
                                               False -> QVal(op_add v1 v))
                                           (QNode t1 t2 t3 t4) ->
                                             QError))
                               (QVal v) ->
                                 (case (is_z (op_add v1 v)) of
                                   True -> m3
                                   False -> ((case m3 of
                                               QError -> QError
                                               QNone -> ((case (is_z (op_add v1 v)) of
                                                           True -> QNone
                                                           False -> QVal(op_add v1 v)))
                                               (QVal v') ->
                                                 (case (is_z (op_add (op_add v1 v) v')) of
                                                   True -> QNone
                                                   False -> QVal(op_add (op_add v1 v) v'))
                                               (QNode t1 t2 t3 t4) ->
                                                 QError)))
                               (QNode t1 t2 t3 t4) ->
                                 QError)
                           (QNode q1 q2 q3 q4) ->
                             (case m2 of
                               QError -> QError
                               QNone -> ((case m3 of
                                           QError -> QError
                                           QNone -> QNode(q1) (q2) (q3) (q4)
                                           (QVal v) ->
                                             QError
                                           (QNode t1 t2 t3 t4) ->
                                             QNode(f'''''''''''' q1 t1 is_z op_add)
                                                  (f'''''''''''' q2 t2 is_z op_add)
                                                  (f'''''''''''' q3 t3 is_z op_add)
                                                  (f'''''''''''' q4 t4 is_z op_add)))
                               (QVal v) ->
                                 QError
                               (QNode t1 t2 t3 t4) ->
                                 (case m3 of
                                   QError -> QError
                                   QNone -> QNode(f'''''''''''' q1 t1 is_z op_add)
                                                 (f'''''''''''' q2 t2 is_z op_add)
                                                 (f'''''''''''' q3 t3 is_z op_add)
                                                 (f'''''''''''' q4 t4 is_z op_add)
                                   (QVal v) ->
                                     QError
                                   (QNode t1' t2' t3' t4') ->
                                     QNode(f q1 t1 t1' is_z op_add)
                                          (f q2 t2 t2' is_z op_add)
                                          (f q3 t3 t3' is_z op_add)
                                          (f q4 t4 t4' is_z op_add))));
f'''''''''''' q4 t4 is_z op_add = (case q4 of
                                    QError -> QError
                                    QNone -> t4
                                    (QVal v1) ->
                                      (case t4 of
                                        QError -> QError
                                        QNone -> QVal(v1)
                                        (QVal v) ->
                                          (case (is_z (op_add v1 v)) of
                                            True -> QNone
                                            False -> QVal(op_add v1 v))
                                        (QNode t1 t2 t3 t4) ->
                                          QError)
                                    (QNode q1 q2 q3 q4) ->
                                      (case t4 of
                                        QError -> QError
                                        QNone -> QNode(q1) (q2) (q3) (q4)
                                        (QVal v) ->
                                          QError
                                        (QNode t1 t2 t3 t4) ->
                                          QNode(f'''''''''''' q1 t1 is_z op_add)
                                               (f'''''''''''' q2 t2 is_z op_add)
                                               (f'''''''''''' q3 t3 is_z op_add)
                                               (f'''''''''''' q4 t4 is_z op_add)))