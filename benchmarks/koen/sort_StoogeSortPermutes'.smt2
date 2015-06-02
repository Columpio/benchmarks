; Stooge sort defined using reverse
(declare-datatypes (a)
  ((list (nil) (cons (head a) (tail (list a))))))
(declare-datatypes (a b) ((Pair (Pair2 (first a) (second b)))))
(define-funs-rec
  ((par (a) (ztake ((x Int) (y (list a))) (list a))))
  ((ite
     (= x 0) (as nil (list a))
     (match y
       (case nil (as nil (list a)))
       (case (cons z xs) (cons z (ztake (- x 1) xs)))))))
(define-funs-rec
  ((par (a) (zlength ((x (list a))) Int)))
  ((match x
     (case nil 0)
     (case (cons y xs) (+ 1 (zlength xs))))))
(define-funs-rec
  ((par (a) (zdrop ((x Int) (y (list a))) (list a))))
  ((ite
     (= x 0) y
     (match y
       (case nil (as nil (list a)))
       (case (cons z xs) (zdrop (- x 1) xs))))))
(define-funs-rec
  ((par (a)
     (zsplitAt ((x Int) (y (list a))) (Pair (list a) (list a)))))
  ((Pair2 (ztake x y) (zdrop x y))))
(define-funs-rec
  ((sort2 ((x Int) (y Int)) (list Int)))
  ((ite
     (<= x y) (cons x (cons y (as nil (list Int))))
     (cons y (cons x (as nil (list Int)))))))
(define-funs-rec
  ((par (t) (null ((x (list t))) Bool)))
  ((match x
     (case nil true)
     (case (cons y z) false))))
(define-funs-rec
  ((elem ((x Int) (y (list Int))) Bool))
  ((match y
     (case nil false)
     (case (cons z ys) (or (= x z) (elem x ys))))))
(define-funs-rec
  ((delete ((x Int) (y (list Int))) (list Int)))
  ((match y
     (case nil (as nil (list Int)))
     (case (cons z ys) (ite (= x z) ys (cons z (delete x ys)))))))
(define-funs-rec
  ((isPermutation ((x (list Int)) (y (list Int))) Bool))
  ((match x
     (case nil (null y))
     (case (cons z xs)
       (and (elem z y) (isPermutation xs (delete z y)))))))
(define-funs-rec
  ((par (a) (append ((x (list a)) (y (list a))) (list a))))
  ((match x
     (case nil y)
     (case (cons z xs) (cons z (append xs y))))))
(define-funs-rec
  ((par (t) (reverse ((x (list t))) (list t))))
  ((match x
     (case nil (as nil (list t)))
     (case (cons y xs)
       (append (reverse xs) (cons y (as nil (list t))))))))
(define-funs-rec
  ((stooge1sort2 ((x (list Int))) (list Int))
   (stoogesort ((x (list Int))) (list Int))
   (stooge1sort1 ((x (list Int))) (list Int)))
  ((match (zsplitAt (div (zlength x) 3) (reverse x))
     (case (Pair2 ys zs) (append (stoogesort zs) (reverse ys))))
   (match x
     (case nil (as nil (list Int)))
     (case (cons y z)
       (match z
         (case nil (cons y (as nil (list Int))))
         (case (cons y2 x2)
           (match x2
             (case nil (sort2 y y2))
             (case (cons x3 x4)
               (stooge1sort2 (stooge1sort1 (stooge1sort2 x)))))))))
   (match (zsplitAt (div (zlength x) 3) x)
     (case (Pair2 ys zs) (append ys (stoogesort zs))))))
(assert-not
  (forall ((x (list Int))) (isPermutation (stoogesort x) x)))
(check-sat)
