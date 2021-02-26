(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_10 Nat_0) (x_9 Nat_0))
	(=> (= x_10 (S_0 x_9))
	    (unS_1 x_9 x_10))))
(assert (isZ_0 Z_0))
(assert (forall ((x_11 Nat_0))
	(isS_0 (S_0 x_11))))
(assert (forall ((x_12 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_12))))
(assert (forall ((x_13 Nat_0))
	(diseqNat_0 (S_0 x_13) Z_0)))
(assert (forall ((x_14 Nat_0) (x_15 Nat_0))
	(=> (diseqNat_0 x_14 x_15)
	    (diseqNat_0 (S_0 x_14) (S_0 x_15)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_1 Nat_0))
	(add_0 y_1 Z_0 y_1)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_7 y_1)
	    (add_0 (S_0 r_0) (S_0 x_7) y_1))))
(assert (forall ((y_1 Nat_0))
	(minus_0 Z_0 Z_0 y_1)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_7 y_1)
	    (minus_0 (S_0 r_0) (S_0 x_7) y_1))))
(assert (forall ((y_1 Nat_0))
	(le_0 Z_0 y_1)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_7 y_1)
	    (le_0 (S_0 x_7) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(ge_0 y_1 Z_0)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (ge_0 x_7 y_1)
	    (ge_0 (S_0 x_7) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(lt_0 Z_0 (S_0 y_1))))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_7 y_1)
	    (lt_0 (S_0 x_7) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(gt_0 (S_0 y_1) Z_0)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_7 y_1)
	    (gt_0 (S_0 x_7) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(mult_0 Z_0 Z_0 y_1)))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_7 y_1)
			(add_0 z_1 r_0 y_1))
		(mult_0 z_1 (S_0 x_7) y_1))))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_7 y_1)
	    (div_0 Z_0 x_7 y_1))))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_7 y_1)
			(minus_0 z_1 x_7 y_1)
			(div_0 r_0 z_1 y_1))
		(div_0 (S_0 r_0) x_7 y_1))))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_7 y_1)
	    (mod_0 x_7 x_7 y_1))))
(assert (forall ((x_7 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_7 y_1)
			(minus_0 z_1 x_7 y_1)
			(mod_0 r_0 z_1 y_1))
		(mod_0 r_0 x_7 y_1))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_19 list_0) (x_17 Nat_0) (x_18 list_0))
	(=> (= x_19 (cons_0 x_17 x_18))
	    (head_1 x_17 x_19))))
(assert (forall ((x_19 list_0) (x_17 Nat_0) (x_18 list_0))
	(=> (= x_19 (cons_0 x_17 x_18))
	    (tail_1 x_18 x_19))))
(assert (isnil_0 nil_0))
(assert (forall ((x_20 Nat_0) (x_21 list_0))
	(iscons_0 (cons_0 x_20 x_21))))
(assert (forall ((x_22 Nat_0) (x_23 list_0))
	(diseqlist_0 nil_0 (cons_0 x_22 x_23))))
(assert (forall ((x_24 Nat_0) (x_25 list_0))
	(diseqlist_0 (cons_0 x_24 x_25) nil_0)))
(assert (forall ((x_26 Nat_0) (x_27 list_0) (x_28 Nat_0) (x_29 list_0))
	(=> (diseqNat_0 x_26 x_28)
	    (diseqlist_0 (cons_0 x_26 x_27) (cons_0 x_28 x_29)))))
(assert (forall ((x_26 Nat_0) (x_27 list_0) (x_28 Nat_0) (x_29 list_0))
	(=> (diseqlist_0 x_27 x_29)
	    (diseqlist_0 (cons_0 x_26 x_27) (cons_0 x_28 x_29)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_2 list_0) (x_3 list_0))
	(=>	(and (= x_2 (cons_0 z_0 x_3))
			(x_0 x_3 xs_0 y_0)
			(= x_1 (cons_0 z_0 xs_0)))
		(x_0 x_2 x_1 y_0))))
(assert (forall ((x_1 list_0) (y_0 list_0) (x_4 list_0))
	(=>	(and (= x_4 y_0)
			(= x_1 nil_0))
		(x_0 x_4 x_1 y_0))))
(assert (forall ((xs_1 list_0) (ys_0 list_0) (zs_0 list_0) (x_5 list_0) (x_6 list_0))
	(=>	(and (diseqlist_0 xs_1 ys_0)
			(= x_5 x_6)
			(x_0 x_5 xs_1 zs_0)
			(x_0 x_6 ys_0 zs_0))
		false)))
(check-sat)
