(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-fun-rec
  (par (a)
    (elem
       ((x a) (y (list a))) Bool
       (match y
         (case nil false)
         (case (cons z xs) (or (= z x) (elem x xs)))))))
(define-fun-rec
  (par (a)
    (!!
       ((x (list a)) (y Nat)) a
       (match x
         (case (cons z x2)
           (match y
             (case Z z)
             (case (S x3) (!! x2 x3))))))))
(assert-not
  (par (a)
    (forall ((x a) (xs (list a)))
      (=> (elem x xs) (exists ((y Nat)) (= x (!! xs y)))))))
(check-sat)
