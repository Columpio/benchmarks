; Property from "Case-Analysis for Rippling and Inductive Proof",
; Moa Johansson, Lucas Dixon and Alan Bundy, ITP 2010
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((max2 ((x Nat) (y Nat)) Nat))
  ((match x
     (case Z y)
     (case (S z)
       (match y
         (case Z x)
         (case (S x2) (S (max2 z x2))))))))
(assert-not (forall ((a Nat) (b Nat)) (= (max2 a b) (max2 b a))))
(check-sat)
