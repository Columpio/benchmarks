; Source: IsaPlanner test suite
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((plus ((x Nat) (y Nat)) Nat))
  ((match x
     (case Z y)
     (case (S z) (S (plus z y))))))
(define-funs-rec
  ((lt ((x Nat) (y Nat)) bool))
  ((match y
     (case Z false)
     (case (S z)
       (match x
         (case Z true)
         (case (S x2) (lt x2 z)))))))
(assert-not (forall ((i Nat) (m Nat)) (lt i (S (plus i m)))))
(check-sat)