; Source: IsaPlanner test suite
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((par (a) (take ((x Nat) (y (list a))) (list a))))
  ((match x
     (case Z (as nil (list a)))
     (case (S z)
       (match y
         (case nil y)
         (case (cons x2 x3) (cons x2 (as (take z x3) (list a)))))))))
(define-funs-rec
  ((par (a b) (map2 ((x (=> a b)) (y (list a))) (list b))))
  ((match y
     (case nil (as nil (list b)))
     (case (cons z xs) (cons (@ x z) (as (map2 x xs) (list b)))))))
(assert-not
  (par (a1 a)
    (forall ((n Nat) (f (=> a1 a)) (xs (list a1)))
      (= (take n (map2 f xs)) (map2 f (take n xs))))))
(check-sat)