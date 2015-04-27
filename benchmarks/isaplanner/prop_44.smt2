; Source: IsaPlanner test suite
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes (a b) ((Pair2 (Pair (first a) (second b)))))
(define-funs-rec
  ((par (a b) (zip ((x (list a)) (y (list b))) (list (Pair2 a b)))))
  ((match x
     (case nil (as nil (list (Pair2 a b))))
     (case (cons z x2)
       (match y
         (case nil (as nil (list (Pair2 a b))))
         (case (cons x3 x4)
           (cons (Pair z x3) (as (zip x2 x4) (list (Pair2 a b))))))))))
(define-funs-rec
  ((par (a b)
     (zipConcat ((x a) (y (list a)) (z (list b))) (list (Pair2 a b)))))
  ((match z
     (case nil (as nil (list (Pair2 a b))))
     (case (cons y2 ys) (cons (Pair x y2) (zip y ys))))))
(assert-not
  (par (a b)
    (forall ((x a) (xs (list a)) (ys (list b)))
      (= (zip (cons x xs) ys) (zipConcat x xs ys)))))
(check-sat)