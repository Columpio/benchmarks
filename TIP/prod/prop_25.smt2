(declare-sort sk 0)
(declare-datatype list ((nil) (cons (head sk) (tail list))))
(declare-datatype Nat ((Z) (S (proj1-S Nat))))
(define-fun-rec
  length
  ((x list)) Nat
  (match x
    ((nil Z)
     ((cons y xs) (S (length xs))))))
(define-fun-rec
  even
  ((x Nat)) Bool
  (match x
    ((Z true)
     ((S y)
      (match y
        ((Z false)
         ((S z) (even z))))))))
(define-fun-rec
  +2
  ((x Nat) (y Nat)) Nat
  (match x
    ((Z y)
     ((S z) (S (+2 z y))))))
(define-fun-rec
  ++
  ((x list) (y list)) list
  (match x
    ((nil y)
     ((cons z xs) (cons z (++ xs y))))))
(assert
  (not
    (forall ((x list) (y list))
      (= (even (length (++ x y))) (even (+2 (length y) (length x)))))))
(check-sat)
