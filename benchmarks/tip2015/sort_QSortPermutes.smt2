; QuickSort
(declare-datatype
  list (par (a) ((nil) (cons (head a) (tail (list a))))))
(define-fun-rec
  filter
  (par (a) (((p (=> a Bool)) (x (list a))) (list a)))
  (match x
    ((nil (_ nil a))
     ((cons y xs) (ite (@ p y) (cons y (filter p xs)) (filter p xs))))))
(define-fun-rec
  elem
  (par (a) (((x a) (y (list a))) Bool))
  (match y
    ((nil false)
     ((cons z xs) (or (= z x) (elem x xs))))))
(define-fun-rec
  deleteBy
  (par (a) (((x (=> a (=> a Bool))) (y a) (z (list a))) (list a)))
  (match z
    ((nil (_ nil a))
     ((cons y2 ys)
      (ite (@ (@ x y) y2) ys (cons y2 (deleteBy x y ys)))))))
(define-fun-rec
  isPermutation
  (par (a) (((x (list a)) (y (list a))) Bool))
  (match x
    ((nil
      (match y
        ((nil true)
         ((cons z x2) false))))
     ((cons x3 xs)
      (and (elem x3 y)
        (isPermutation xs
          (deleteBy (lambda ((x4 a)) (lambda ((x5 a)) (= x4 x5))) x3 y)))))))
(define-fun-rec
  ++
  (par (a) (((x (list a)) (y (list a))) (list a)))
  (match x
    ((nil y)
     ((cons z xs) (cons z (++ xs y))))))
(define-fun-rec
  qsort
  ((x (list Int))) (list Int)
  (match x
    ((nil (_ nil Int))
     ((cons y xs)
      (++ (qsort (filter (lambda ((z Int)) (<= z y)) xs))
        (++ (cons y (_ nil Int))
          (qsort (filter (lambda ((x2 Int)) (> x2 y)) xs))))))))
(prove (forall ((xs (list Int))) (isPermutation (qsort xs) xs)))
