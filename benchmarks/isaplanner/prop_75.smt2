; Source: IsaPlanner test suite
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes () ((Nat (Z) (S (p Nat)))))
(define-funs-rec
  ((plus ((x Nat) (y Nat)) Nat))
  ((match x
     (case Z y)
     (case (S z) (S (plus z y))))))
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
(define-funs-rec
  ((count ((x Nat) (y (list Nat))) Nat))
  ((match y
     (case nil Z)
     (case (cons z ys)
       (ite (equal x z) (S (count x ys)) (count x ys))))))
(assert-not
  (forall ((n Nat) (m Nat) (xs (list Nat)))
    (= (plus (count n xs) (count n (cons m (as nil (list Nat)))))
      (count n (cons m xs)))))
(check-sat)