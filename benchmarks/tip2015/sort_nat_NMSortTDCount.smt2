; Top-down merge sort, using division by two on natural numbers
(declare-datatypes (a)
  ((list :source |Prelude.[]| (nil :source |Prelude.[]|)
     (cons :source |Prelude.:| (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-fun-rec
  plus
    ((x Nat) (y Nat)) Nat
    (match x
      (case Z y)
      (case (S z) (S (plus z y)))))
(define-fun-rec
  minus
    ((x Nat) (y Nat)) Nat
    (match x
      (case Z Z)
      (case (S z) (match y (case (S y2) (minus z y2))))))
(define-fun-rec
  nmsorttd-half1 :let
    ((x Nat)) Nat
    (ite
      (= x (S Z)) Z
      (match x
        (case Z Z)
        (case (S y) (plus (S Z) (nmsorttd-half1 (minus x (S (S Z)))))))))
(define-fun-rec
  (par (a)
    (lmerge :source Sort.lmerge
       ((x (list a)) (y (list a))) (list a)
       (match x
         (case nil y)
         (case (cons z x2)
           (match y
             (case nil x)
             (case (cons x3 x4)
               (ite
                 (<= z x3) (cons z (lmerge x2 y)) (cons x3 (lmerge x x4))))))))))
(define-fun-rec
  (par (a)
    (length :source Prelude.length
       ((x (list a))) Nat
       (match x
         (case nil Z)
         (case (cons y l) (plus (S Z) (length l)))))))
(define-fun-rec
  le
    ((x Nat) (y Nat)) Bool
    (match x
      (case Z true)
      (case (S z)
        (match y
          (case Z false)
          (case (S x2) (le z x2))))))
(define-fun-rec
  (par (a)
    (take :source Prelude.take
       ((x Nat) (y (list a))) (list a)
       (ite
         (le x Z) (as nil (list a))
         (match y
           (case nil (as nil (list a)))
           (case (cons z xs)
             (match x (case (S x2) (cons z (take x2 xs))))))))))
(define-fun-rec
  (par (a)
    (drop :source Prelude.drop
       ((x Nat) (y (list a))) (list a)
       (ite
         (le x Z) y
         (match y
           (case nil (as nil (list a)))
           (case (cons z xs1) (match x (case (S x2) (drop x2 xs1)))))))))
(define-fun-rec
  (par (a)
    (nmsorttd :source Sort.nmsorttd
       ((x (list a))) (list a)
       (match x
         (case nil (as nil (list a)))
         (case (cons y z)
           (match z
             (case nil (cons y (as nil (list a))))
             (case (cons x2 x3)
               (let ((k (nmsorttd-half1 (length x))))
                 (lmerge (nmsorttd (take k x)) (nmsorttd (drop k x)))))))))))
(define-fun-rec
  (par (a)
    (count :source SortUtils.count
       ((x a) (y (list a))) Nat
       (match y
         (case nil Z)
         (case (cons z ys)
           (ite (= x z) (plus (S Z) (count x ys)) (count x ys)))))))
(prove
  :source Sort.prop_NMSortTDCount
  (forall ((x Nat) (y (list Nat)))
    (= (count x (nmsorttd y)) (count x y))))
