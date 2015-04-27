; Source: Productive use of failure
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
  ((intersect ((x (list Nat)) (y (list Nat))) (list Nat)))
  ((match x
     (case nil x)
     (case (cons z xs)
       (ite (elem z y) (cons z (intersect xs y)) (intersect xs y))))))
(assert-not
  (forall ((x Nat) (y (list Nat)) (z (list Nat)))
    (=> (elem x y) (=> (elem x z) (elem x (intersect y z))))))
(check-sat)