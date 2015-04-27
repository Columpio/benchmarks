; Source: IsaPlanner test suite
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((equal ((x Nat) (y Nat)) bool))
  ((match x
     (case Z
       (match y
         (case Z true)
         (case (S z) false)))
     (case (S x2)
       (match y
         (case Z false)
         (case (S y2) (equal x2 y2)))))))
(define-funs-rec
  ((elem ((x Nat) (y (list Nat))) bool))
  ((match y
     (case nil false)
     (case (cons z xs) (ite (equal x z) true (elem x xs))))))
(define-funs-rec
  ((delete ((x Nat) (y (list Nat))) (list Nat)))
  ((match y
     (case nil y)
     (case (cons z xs)
       (ite (equal x z) (delete x xs) (cons z (delete x xs)))))))
(assert-not
  (forall ((x Nat) (xs (list Nat))) (not (elem x (delete x xs)))))
(check-sat)