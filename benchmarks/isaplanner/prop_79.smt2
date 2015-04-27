; Source: IsaPlanner test suite
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((minus ((x Nat) (y Nat)) Nat))
  ((match x
     (case Z x)
     (case (S z)
       (match y
         (case Z x)
         (case (S x2) (minus z x2)))))))
(assert-not
  (forall ((m Nat) (n Nat) (k Nat))
    (= (minus (minus (S m) n) (S k)) (minus (minus m n) k))))
(check-sat)