; The implementation of these integers correspond to those in the
; Agda standard library, which is proved to be a commutative ring
(declare-datatypes ()
  ((Sign :source Integers.Sign (Pos :source Integers.Pos)
     (Neg :source Integers.Neg))))
(declare-datatypes () ((Nat (zero) (succ (p Nat)))))
(declare-datatypes ()
  ((Integer :source Integers.Integer
     (P :source Integers.P (proj1-P Nat))
     (N :source Integers.N (proj1-N Nat)))))
(define-fun
  toInteger :source Integers.toInteger
    ((x Sign) (y Nat)) Integer
    (match x
      (case Pos (P y))
      (case Neg
        (match y
          (case zero (P zero))
          (case (succ z) (N z))))))
(define-fun
  sign :source Integers.sign
    ((x Integer)) Sign
    (match x
      (case (P y) Pos)
      (case (N z) Neg)))
(define-fun-rec
  plus :definition :source |+|
    ((x Nat) (y Nat)) Nat
    (match x
      (case zero y)
      (case (succ z) (succ (plus z y)))))
(define-fun-rec
  times2 :definition :source |*|
    ((x Nat) (y Nat)) Nat
    (match x
      (case zero zero)
      (case (succ z) (plus y (times2 z y)))))
(define-fun
  opposite :source Integers.opposite
    ((x Sign)) Sign
    (match x
      (case Pos Neg)
      (case Neg Pos)))
(define-fun
  timesSign :source Integers.timesSign
    ((x Sign) (y Sign)) Sign
    (match x
      (case Pos y)
      (case Neg (opposite y))))
(define-fun
  absVal :source Integers.absVal
    ((x Integer)) Nat
    (match x
      (case (P n) n)
      (case (N m) (plus (succ zero) m))))
(define-fun
  times :source Integers.times
    ((x Integer) (y Integer)) Integer
    (toInteger (timesSign (sign x) (sign y))
      (times2 (absVal x) (absVal y))))
(define-fun-rec
  |-2| :source Integers.-
    ((x Nat) (y Nat)) Integer
    (let
      ((fail
          (match y
            (case zero (P x))
            (case (succ z)
              (match x
                (case zero (N y))
                (case (succ x2) (|-2| x2 z)))))))
      (match x
        (case zero
          (match y
            (case zero (P zero))
            (case (succ x4) fail)))
        (case (succ x3) fail))))
(define-fun
  plus2 :source Integers.plus
    ((x Integer) (y Integer)) Integer
    (match x
      (case (P m)
        (match y
          (case (P n) (P (plus m n)))
          (case (N o) (|-2| m (plus (succ zero) o)))))
      (case (N m2)
        (match y
          (case (P n2) (|-2| n2 (plus (succ zero) m2)))
          (case (N n3) (N (plus (plus (succ zero) m2) n3)))))))
(prove
  :source Integers.prop_left_distrib
  (forall ((x Integer) (y Integer) (z Integer))
    (= (times x (plus2 y z)) (plus2 (times x y) (times x z)))))
(assert
  :axiom |associativity of *|
  (forall ((x Nat) (y Nat) (z Nat))
    (= (times2 x (times2 y z)) (times2 (times2 x y) z))))
(assert
  :axiom |associativity of +|
  (forall ((x Nat) (y Nat) (z Nat))
    (= (plus x (plus y z)) (plus (plus x y) z))))
(assert
  :axiom |commutativity of *|
  (forall ((x Nat) (y Nat)) (= (times2 x y) (times2 y x))))
(assert
  :axiom |commutativity of +|
  (forall ((x Nat) (y Nat)) (= (plus x y) (plus y x))))
(assert
  :axiom distributivity
  (forall ((x Nat) (y Nat) (z Nat))
    (= (times2 x (plus y z)) (plus (times2 x y) (times2 x z)))))
(assert
  :axiom distributivity
  (forall ((x Nat) (y Nat) (z Nat))
    (= (times2 (plus x y) z) (plus (times2 x z) (times2 y z)))))
(assert
  :axiom |identity for *|
  (forall ((x Nat)) (= (times2 x (succ zero)) x)))
(assert
  :axiom |identity for *|
  (forall ((x Nat)) (= (times2 (succ zero) x) x)))
(assert
  :axiom |identity for +|
  (forall ((x Nat)) (= (plus x zero) x)))
(assert
  :axiom |identity for +|
  (forall ((x Nat)) (= (plus zero x) x)))
(assert
  :axiom |zero for *|
  (forall ((x Nat)) (= (times2 x zero) zero)))
(assert
  :axiom |zero for *|
  (forall ((x Nat)) (= (times2 zero x) zero)))
