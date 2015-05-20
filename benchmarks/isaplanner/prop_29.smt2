; Property from "Case-Analysis for Rippling and Inductive Proof",
; Moa Johansson, Lucas Dixon and Alan Bundy, ITP 2010
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((equal ((x Nat) (y Nat)) Bool))
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
  ((ins1 ((x Nat) (y (list Nat))) (list Nat)))
  ((match y
     (case nil (cons x y))
     (case (cons z xs) (ite (equal x z) y (cons z (ins1 x xs)))))))
(define-funs-rec
  ((elem ((x Nat) (y (list Nat))) Bool))
  ((match y
     (case nil false)
     (case (cons z xs) (ite (equal x z) true (elem x xs))))))
(assert-not
  (forall ((x Nat) (xs (list Nat))) (elem x (ins1 x xs))))
(check-sat)
