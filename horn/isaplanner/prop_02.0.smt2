(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_34 Nat_1) (x_33 Nat_1))
	(=> (= x_34 (S_1 x_33))
	    (unS_1 x_33 x_34))))
(assert (isZ_0 Z_1))
(assert (forall ((x_35 Nat_1))
	(isS_0 (S_1 x_35))))
(assert (forall ((x_36 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_36))))
(assert (forall ((x_37 Nat_1))
	(diseqNat_0 (S_1 x_37) Z_1)))
(assert (forall ((x_38 Nat_1) (x_39 Nat_1))
	(=> (diseqNat_0 x_38 x_39)
	    (diseqNat_0 (S_1 x_38) (S_1 x_39)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_5 Nat_1))
	(add_0 y_5 Z_1 y_5)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_31 y_5)
	    (add_0 (S_1 r_0) (S_1 x_31) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_1 Z_1 y_5)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_31 y_5)
	    (minus_0 (S_1 r_0) (S_1 x_31) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_1 y_5)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_31 y_5)
	    (le_0 (S_1 x_31) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_1)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_31 y_5)
	    (ge_0 (S_1 x_31) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_1 (S_1 y_5))))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_31 y_5)
	    (lt_0 (S_1 x_31) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_1 y_5) Z_1)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_31 y_5)
	    (gt_0 (S_1 x_31) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_1 Z_1 y_5)))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_31 y_5)
			(add_0 z_4 r_0 y_5))
		(mult_0 z_4 (S_1 x_31) y_5))))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_31 y_5)
	    (div_0 Z_1 x_31 y_5))))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_31 y_5)
			(minus_0 z_4 x_31 y_5)
			(div_0 r_0 z_4 y_5))
		(div_0 (S_1 r_0) x_31 y_5))))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_31 y_5)
	    (mod_0 x_31 x_31 y_5))))
(assert (forall ((x_31 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_31 y_5)
			(minus_0 z_4 x_31 y_5)
			(mod_0 r_0 z_4 y_5))
		(mod_0 r_0 x_31 y_5))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_42 Nat_0) (x_41 Nat_0))
	(=> (= x_42 (S_0 x_41))
	    (projS_1 x_41 x_42))))
(assert (isZ_1 Z_0))
(assert (forall ((x_43 Nat_0))
	(isS_1 (S_0 x_43))))
(assert (forall ((x_44 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_44))))
(assert (forall ((x_45 Nat_0))
	(diseqNat_1 (S_0 x_45) Z_0)))
(assert (forall ((x_46 Nat_0) (x_47 Nat_0))
	(=> (diseqNat_1 x_46 x_47)
	    (diseqNat_1 (S_0 x_46) (S_0 x_47)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_51 list_0) (x_49 Nat_0) (x_50 list_0))
	(=> (= x_51 (cons_0 x_49 x_50))
	    (head_1 x_49 x_51))))
(assert (forall ((x_51 list_0) (x_49 Nat_0) (x_50 list_0))
	(=> (= x_51 (cons_0 x_49 x_50))
	    (tail_1 x_50 x_51))))
(assert (isnil_0 nil_0))
(assert (forall ((x_52 Nat_0) (x_53 list_0))
	(iscons_0 (cons_0 x_52 x_53))))
(assert (forall ((x_54 Nat_0) (x_55 list_0))
	(diseqlist_0 nil_0 (cons_0 x_54 x_55))))
(assert (forall ((x_56 Nat_0) (x_57 list_0))
	(diseqlist_0 (cons_0 x_56 x_57) nil_0)))
(assert (forall ((x_58 Nat_0) (x_59 list_0) (x_60 Nat_0) (x_61 list_0))
	(=> (diseqNat_1 x_58 x_60)
	    (diseqlist_0 (cons_0 x_58 x_59) (cons_0 x_60 x_61)))))
(assert (forall ((x_58 Nat_0) (x_59 list_0) (x_60 Nat_0) (x_61 list_0))
	(=> (diseqlist_0 x_59 x_61)
	    (diseqlist_0 (cons_0 x_58 x_59) (cons_0 x_60 x_61)))))
(declare-fun x_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (y_1 Nat_0) (x_8 Bool) (x_9 Bool))
	(=>	(and (= x_8 x_9)
			(x_0 x_9 x_2 y_1)
			(= x_1 (S_0 x_2))
			(= y_0 (S_0 y_1)))
		(x_0 x_8 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (x_10 Bool))
	(=>	(and (= x_10 false)
			(= x_1 (S_0 x_2))
			(= y_0 Z_0))
		(x_0 x_10 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_11 Bool))
	(=>	(and (= x_11 false)
			(= x_1 Z_0)
			(= y_0 (S_0 z_0)))
		(x_0 x_11 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_12 Bool))
	(=>	(and (= x_12 true)
			(= x_1 Z_0)
			(= y_0 Z_0))
		(x_0 x_12 x_1 y_0))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_14 Nat_0) (x_15 Nat_0) (x_13 Bool))
	(=>	(and (= x_14 (S_0 x_15))
			(count_0 x_15 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_13 true)
			(x_0 x_13 x_3 z_1))
		(count_0 x_14 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_17 Nat_0) (x_18 Nat_0) (x_16 Bool))
	(=>	(and (= x_17 x_18)
			(count_0 x_18 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_16 false)
			(x_0 x_16 x_3 z_1))
		(count_0 x_17 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_19 Nat_0))
	(=>	(and (= x_19 Z_0)
			(= y_2 nil_0))
		(count_0 x_19 x_3 y_2))))
(declare-fun x_4 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_20 Nat_0) (x_21 Nat_0))
	(=>	(and (= x_20 (S_0 x_21))
			(x_4 x_21 z_2 y_3)
			(= x_5 (S_0 z_2)))
		(x_4 x_20 x_5 y_3))))
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_22 y_3)
			(= x_5 Z_0))
		(x_4 x_22 x_5 y_3))))
(declare-fun x_6 (list_0 list_0 list_0) Bool)
(assert (forall ((x_7 list_0) (y_4 list_0) (z_3 Nat_0) (xs_0 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_23 (cons_0 z_3 x_24))
			(x_6 x_24 xs_0 y_4)
			(= x_7 (cons_0 z_3 xs_0)))
		(x_6 x_23 x_7 y_4))))
(assert (forall ((x_7 list_0) (y_4 list_0) (x_25 list_0))
	(=>	(and (= x_25 y_4)
			(= x_7 nil_0))
		(x_6 x_25 x_7 y_4))))
(assert (forall ((n_0 Nat_0) (xs_1 list_0) (ys_1 list_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 list_0) (x_30 Nat_0))
	(=>	(and (diseqNat_1 x_28 x_30)
			(count_0 x_26 n_0 xs_1)
			(count_0 x_27 n_0 ys_1)
			(x_4 x_28 x_26 x_27)
			(x_6 x_29 xs_1 ys_1)
			(count_0 x_30 n_0 x_29))
		false)))
(check-sat)
