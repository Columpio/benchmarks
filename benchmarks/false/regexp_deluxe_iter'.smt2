(declare-datatype
  list (par (a) ((nil) (cons (head a) (tail (list a))))))
(declare-datatype T ((A) (B) (C)))
(declare-datatype
  R
  (par (a)
    ((Nil) (Eps) (Atom (proj1-Atom a))
     (|:+:| (|proj1-:+:| (R a)) (|proj2-:+:| (R a)))
     (|:&:| (|proj1-:&:| (R a)) (|proj2-:&:| (R a)))
     (|:>:| (|proj1-:>:| (R a)) (|proj2-:>:| (R a)))
     (Star (proj1-Star (R a))))))
(define-fun
  x.>.
  ((x (R T)) (y (R T))) (R T)
  (match x
    ((_
      (match y
        ((_
          (match x
            ((_
              (match y
                ((_ (|:>:| x y))
                 (Eps x))))
             (Eps y))))
         (Nil (_ Nil T)))))
     (Nil (_ Nil T)))))
(define-fun
  x.+.
  ((x (R T)) (y (R T))) (R T)
  (match x
    ((_
      (match y
        ((_ (|:+:| x y))
         (Nil x))))
     (Nil y))))
(define-fun-rec
  iter
  ((x Int) (y (R T))) (R T)
  (ite (= x 0) (_ Eps T) (|:>:| y (iter (- x 1) y))))
(define-fun-rec
  eps
  ((x (R T))) Bool
  (match x
    ((_ false)
     (Eps true)
     ((|:+:| p q) (or (eps p) (eps q)))
     ((|:&:| r q2) (and (eps r) (eps q2)))
     ((|:>:| p2 q3) (and (eps p2) (eps q3)))
     ((Star y) true))))
(define-fun-rec
  step
  ((x (R T)) (y T)) (R T)
  (match x
    ((_ (_ Nil T))
     ((Atom b) (ite (= b y) (_ Eps T) (_ Nil T)))
     ((|:+:| p q) (x.+. (step p y) (step q y)))
     ((|:&:| r q2)
      (let
        ((z (step r y))
         (q1 (step q2 y)))
        (match z
          ((_
            (match q1
              ((_ (|:&:| z q1))
               (Nil (_ Nil T)))))
           (Nil (_ Nil T))))))
     ((|:>:| p2 q3)
      (ite
        (eps p2) (x.+. (x.>. (step p2 y) q3) (step q3 y))
        (x.+. (x.>. (step p2 y) q3) (_ Nil T))))
     ((Star p3) (x.>. (step p3 y) x)))))
(define-fun-rec
  rec
  ((x (R T)) (y (list T))) Bool
  (match y
    ((nil (eps x))
     ((cons z xs) (rec (step x z) xs)))))
(prove
  (forall ((i1 Int) (j1 Int) (p (R T)) (s (list T)))
    (let
      ((x (iter i1 p))
       (q (iter j1 p)))
      (=> (distinct i1 j1)
        (=> (not (eps p))
          (not
            (match x
              ((_
                (match q
                  ((_ (rec (|:&:| x q) s))
                   (Nil (rec (_ Nil T) s)))))
               (Nil (rec (_ Nil T) s))))))))))
