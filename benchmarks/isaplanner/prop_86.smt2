; Property from "Case-Analysis for Rippling and Inductive Proof",
; Moa Johansson, Lucas Dixon and Alan Bundy, ITP 2010
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((lt ((x Nat) (y Nat)) Bool))
  ((match y
     (case Z false)
     (case (S z)
       (match x
         (case Z true)
         (case (S x2) (lt x2 z)))))))
(define-funs-rec
  ((ins ((x Nat) (y (list Nat))) (list Nat)))
  ((match y
     (case nil (cons x (as nil (list Nat))))
     (case (cons z xs) (ite (lt x z) (cons x y) (cons z (ins x xs)))))))
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
  ((elem ((x Nat) (y (list Nat))) Bool))
  ((match y
     (case nil false)
     (case (cons z xs) (or (equal x z) (elem x xs))))))
(assert-not
  (forall ((x Nat) (y Nat) (xs (list Nat)))
    (=> (lt x y) (= (elem x (ins y xs)) (elem x xs)))))
(check-sat)
