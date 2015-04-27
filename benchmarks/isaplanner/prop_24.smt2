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
(define-funs-rec
  ((le ((x Nat) (y Nat)) bool))
  ((match x
     (case Z true)
     (case (S z)
       (match y
         (case Z false)
         (case (S x2) (le z x2)))))))
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
(assert-not
  (forall ((a Nat) (b Nat)) (= (equal (max2 a b) a) (le b a))))
(check-sat)
