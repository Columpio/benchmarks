(declare-datatype Nat ((zero) (succ (p Nat))))
(define-fun-rec
  plus
  ((x Nat) (y Nat)) Nat
  (match x
    ((zero y)
     ((succ z) (succ (plus z y))))))
(define-fun-rec
  add3
  ((x Nat) (y Nat) (z Nat)) Nat
  (match x
    ((zero
      (match y
        ((zero z)
         ((succ x3) (plus (succ zero) (add3 zero x3 z))))))
     ((succ x2) (plus (succ zero) (add3 x2 y z))))))
(assert
  (not
    (forall ((x1 Nat) (x2 Nat) (x3 Nat) (x4 Nat) (x5 Nat))
      (= (add3 x1 (add3 x2 x3 x4) x5) (add3 x1 x2 (add3 x3 x4 x5))))))
(check-sat)
(assert
  (forall ((x Nat) (y Nat) (z Nat))
    (= (plus x (plus y z)) (plus (plus x y) z))))
(assert (forall ((x Nat) (y Nat)) (= (plus x y) (plus y x))))
(assert (forall ((x Nat)) (= (plus x zero) x)))
(assert (forall ((x Nat)) (= (plus zero x) x)))
