(declare-datatype Nat ((zero) (succ (p Nat))))
(declare-datatype Integer ((P (proj1-P Nat)) (N (proj1-N Nat))))
(define-fun
  zero2
  () Integer (P zero))
(define-fun-rec
  plus2
  ((x Nat) (y Nat)) Nat
  (match x
    ((zero y)
     ((succ z) (succ (plus2 z y))))))
(define-fun-rec
  |-2|
  ((x Nat) (y Nat)) Integer
  (let
    ((fail
        (match y
          ((zero (P x))
           ((succ z)
            (match x
              ((zero (N (succ z)))
               ((succ x2) (|-2| x2 z)))))))))
    (match x
      ((zero
        (match y
          ((zero (P zero))
           ((succ x4) fail))))
       ((succ x3) fail)))))
(define-fun
  plus
  ((x Integer) (y Integer)) Integer
  (match x
    (((P m)
      (match y
        (((P n) (P (plus2 m n)))
         ((N o) (|-2| m (plus2 (succ zero) o))))))
     ((N m2)
      (match y
        (((P n2) (|-2| n2 (plus2 (succ zero) m2)))
         ((N n3) (N (plus2 (plus2 (succ zero) m2) n3)))))))))
(assert (not (forall ((x Integer)) (= x (plus x zero2)))))
(check-sat)
(assert
  (forall ((x Nat) (y Nat) (z Nat))
    (= (plus2 x (plus2 y z)) (plus2 (plus2 x y) z))))
(assert (forall ((x Nat) (y Nat)) (= (plus2 x y) (plus2 y x))))
(assert (forall ((x Nat)) (= (plus2 x zero) x)))
(assert (forall ((x Nat)) (= (plus2 zero x) x)))
