; Source: Productive use of failure
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((plus ((x Nat) (y Nat)) Nat))
  ((match x
     (case Z y)
     (case (S z) (S (plus z y))))))
(define-funs-rec
  ((double ((x Nat)) Nat))
  ((match x
     (case Z x)
     (case (S y) (S (S (double y)))))))
(assert-not (forall ((x Nat)) (= (double x) (plus x x))))
(check-sat)