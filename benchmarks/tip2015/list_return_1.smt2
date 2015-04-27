; List monad laws
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(define-funs-rec
  ((par (a) (return ((x a)) (list a)))) ((cons x (as nil (list a)))))
(define-funs-rec
  ((par (a) (append ((x (list a)) (y (list a))) (list a))))
  ((match x
     (case nil y)
     (case (cons z xs) (cons z (as (append xs y) (list a)))))))
(define-funs-rec
  ((par (a b) (bind ((x (list a)) (y (=> a (list b)))) (list b))))
  ((match x
     (case nil (as nil (list b)))
     (case (cons z xs) (append (@ y z) (as (bind xs y) (list b)))))))
(assert-not
  (par (a b)
    (forall ((x a) (f (=> a (list b))))
      (= (bind (return x) f) (@ f x)))))
(check-sat)