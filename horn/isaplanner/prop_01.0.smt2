(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_25 Nat_1) (x_24 Nat_1))
	(=> (= x_25 (S_1 x_24))
	    (unS_1 x_24 x_25))))
(assert (isZ_0 Z_1))
(assert (forall ((x_26 Nat_1))
	(isS_0 (S_1 x_26))))
(assert (forall ((x_27 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_27))))
(assert (forall ((x_28 Nat_1))
	(diseqNat_0 (S_1 x_28) Z_1)))
(assert (forall ((x_29 Nat_1) (x_30 Nat_1))
	(=> (diseqNat_0 x_29 x_30)
	    (diseqNat_0 (S_1 x_29) (S_1 x_30)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_3 Nat_1))
	(add_0 y_3 Z_1 y_3)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_22 y_3)
	    (add_0 (S_1 r_0) (S_1 x_22) y_3))))
(assert (forall ((y_3 Nat_1))
	(minus_0 Z_1 Z_1 y_3)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_22 y_3)
	    (minus_0 (S_1 r_0) (S_1 x_22) y_3))))
(assert (forall ((y_3 Nat_1))
	(le_0 Z_1 y_3)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (le_0 x_22 y_3)
	    (le_0 (S_1 x_22) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(ge_0 y_3 Z_1)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (ge_0 x_22 y_3)
	    (ge_0 (S_1 x_22) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(lt_0 Z_1 (S_1 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_22 y_3)
	    (lt_0 (S_1 x_22) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(gt_0 (S_1 y_3) Z_1)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (gt_0 x_22 y_3)
	    (gt_0 (S_1 x_22) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(mult_0 Z_1 Z_1 y_3)))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_22 y_3)
			(add_0 z_3 r_0 y_3))
		(mult_0 z_3 (S_1 x_22) y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_22 y_3)
	    (div_0 Z_1 x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_22 y_3)
			(minus_0 z_3 x_22 y_3)
			(div_0 r_0 z_3 y_3))
		(div_0 (S_1 r_0) x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_22 y_3)
	    (mod_0 x_22 x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_22 y_3)
			(minus_0 z_3 x_22 y_3)
			(mod_0 r_0 z_3 y_3))
		(mod_0 r_0 x_22 y_3))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_1 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_34 list_0) (x_32 Nat_1) (x_33 list_0))
	(=> (= x_34 (cons_0 x_32 x_33))
	    (head_1 x_32 x_34))))
(assert (forall ((x_34 list_0) (x_32 Nat_1) (x_33 list_0))
	(=> (= x_34 (cons_0 x_32 x_33))
	    (tail_1 x_33 x_34))))
(assert (isnil_0 nil_0))
(assert (forall ((x_35 Nat_1) (x_36 list_0))
	(iscons_0 (cons_0 x_35 x_36))))
(assert (forall ((x_37 Nat_1) (x_38 list_0))
	(diseqlist_0 nil_0 (cons_0 x_37 x_38))))
(assert (forall ((x_39 Nat_1) (x_40 list_0))
	(diseqlist_0 (cons_0 x_39 x_40) nil_0)))
(assert (forall ((x_41 Nat_1) (x_42 list_0) (x_43 Nat_1) (x_44 list_0))
	(=> (diseqNat_0 x_41 x_43)
	    (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(assert (forall ((x_41 Nat_1) (x_42 list_0) (x_43 Nat_1) (x_44 list_0))
	(=> (diseqlist_0 x_42 x_44)
	    (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_47 Nat_0) (x_46 Nat_0))
	(=> (= x_47 (S_0 x_46))
	    (projS_1 x_46 x_47))))
(assert (isZ_1 Z_0))
(assert (forall ((x_48 Nat_0))
	(isS_1 (S_0 x_48))))
(assert (forall ((x_49 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_49))))
(assert (forall ((x_50 Nat_0))
	(diseqNat_1 (S_0 x_50) Z_0)))
(assert (forall ((x_51 Nat_0) (x_52 Nat_0))
	(=> (diseqNat_1 x_51 x_52)
	    (diseqNat_1 (S_0 x_51) (S_0 x_52)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_1 Nat_1) (x_2 list_0) (x_8 list_0) (x_9 list_0))
	(=>	(and (= x_8 (cons_0 x_1 x_9))
			(take_0 x_9 z_0 x_2)
			(= x_0 (S_0 z_0))
			(= y_0 (cons_0 x_1 x_2)))
		(take_0 x_8 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_10 list_0))
	(=>	(and (= x_10 nil_0)
			(= x_0 (S_0 z_0))
			(= y_0 nil_0))
		(take_0 x_10 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_11 list_0))
	(=>	(and (= x_11 nil_0)
			(= x_0 Z_0))
		(take_0 x_11 x_0 y_0))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_4 Nat_1) (x_5 list_0) (x_12 list_0) (x_13 list_0))
	(=>	(and (= x_12 x_13)
			(drop_0 x_13 z_1 x_5)
			(= x_3 (S_0 z_1))
			(= y_1 (cons_0 x_4 x_5)))
		(drop_0 x_12 x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_14 list_0))
	(=>	(and (= x_14 nil_0)
			(= x_3 (S_0 z_1))
			(= y_1 nil_0))
		(drop_0 x_14 x_3 y_1))))
(assert (forall ((x_3 Nat_0) (y_1 list_0) (x_15 list_0))
	(=>	(and (= x_15 y_1)
			(= x_3 Z_0))
		(drop_0 x_15 x_3 y_1))))
(declare-fun x_6 (list_0 list_0 list_0) Bool)
(assert (forall ((x_7 list_0) (y_2 list_0) (z_2 Nat_1) (xs_0 list_0) (x_16 list_0) (x_17 list_0))
	(=>	(and (= x_16 (cons_0 z_2 x_17))
			(x_6 x_17 xs_0 y_2)
			(= x_7 (cons_0 z_2 xs_0)))
		(x_6 x_16 x_7 y_2))))
(assert (forall ((x_7 list_0) (y_2 list_0) (x_18 list_0))
	(=>	(and (= x_18 y_2)
			(= x_7 nil_0))
		(x_6 x_18 x_7 y_2))))
(assert (forall ((n_0 Nat_0) (xs_1 list_0) (x_19 list_0) (x_20 list_0) (x_21 list_0))
	(=>	(and (diseqlist_0 x_21 xs_1)
			(take_0 x_19 n_0 xs_1)
			(drop_0 x_20 n_0 xs_1)
			(x_6 x_21 x_19 x_20))
		false)))
(check-sat)
