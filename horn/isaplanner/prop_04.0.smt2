(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_21 Nat_1) (x_20 Nat_1))
	(=> (= x_21 (S_1 x_20))
	    (unS_1 x_20 x_21))))
(assert (isZ_0 Z_1))
(assert (forall ((x_22 Nat_1))
	(isS_0 (S_1 x_22))))
(assert (forall ((x_23 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_23))))
(assert (forall ((x_24 Nat_1))
	(diseqNat_0 (S_1 x_24) Z_1)))
(assert (forall ((x_25 Nat_1) (x_26 Nat_1))
	(=> (diseqNat_0 x_25 x_26)
	    (diseqNat_0 (S_1 x_25) (S_1 x_26)))))
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
(assert (forall ((x_18 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_18 y_3)
	    (add_0 (S_1 r_0) (S_1 x_18) y_3))))
(assert (forall ((y_3 Nat_1))
	(minus_0 Z_1 Z_1 y_3)))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_18 y_3)
	    (minus_0 (S_1 r_0) (S_1 x_18) y_3))))
(assert (forall ((y_3 Nat_1))
	(le_0 Z_1 y_3)))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (le_0 x_18 y_3)
	    (le_0 (S_1 x_18) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(ge_0 y_3 Z_1)))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (ge_0 x_18 y_3)
	    (ge_0 (S_1 x_18) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(lt_0 Z_1 (S_1 y_3))))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_18 y_3)
	    (lt_0 (S_1 x_18) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(gt_0 (S_1 y_3) Z_1)))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (gt_0 x_18 y_3)
	    (gt_0 (S_1 x_18) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(mult_0 Z_1 Z_1 y_3)))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_18 y_3)
			(add_0 z_2 r_0 y_3))
		(mult_0 z_2 (S_1 x_18) y_3))))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_18 y_3)
	    (div_0 Z_1 x_18 y_3))))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_18 y_3)
			(minus_0 z_2 x_18 y_3)
			(div_0 r_0 z_2 y_3))
		(div_0 (S_1 r_0) x_18 y_3))))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_18 y_3)
	    (mod_0 x_18 x_18 y_3))))
(assert (forall ((x_18 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_18 y_3)
			(minus_0 z_2 x_18 y_3)
			(mod_0 r_0 z_2 y_3))
		(mod_0 r_0 x_18 y_3))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_29 Nat_0) (x_28 Nat_0))
	(=> (= x_29 (S_0 x_28))
	    (projS_1 x_28 x_29))))
(assert (isZ_1 Z_0))
(assert (forall ((x_30 Nat_0))
	(isS_1 (S_0 x_30))))
(assert (forall ((x_31 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_31))))
(assert (forall ((x_32 Nat_0))
	(diseqNat_1 (S_0 x_32) Z_0)))
(assert (forall ((x_33 Nat_0) (x_34 Nat_0))
	(=> (diseqNat_1 x_33 x_34)
	    (diseqNat_1 (S_0 x_33) (S_0 x_34)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_38 list_0) (x_36 Nat_0) (x_37 list_0))
	(=> (= x_38 (cons_0 x_36 x_37))
	    (head_1 x_36 x_38))))
(assert (forall ((x_38 list_0) (x_36 Nat_0) (x_37 list_0))
	(=> (= x_38 (cons_0 x_36 x_37))
	    (tail_1 x_37 x_38))))
(assert (isnil_0 nil_0))
(assert (forall ((x_39 Nat_0) (x_40 list_0))
	(iscons_0 (cons_0 x_39 x_40))))
(assert (forall ((x_41 Nat_0) (x_42 list_0))
	(diseqlist_0 nil_0 (cons_0 x_41 x_42))))
(assert (forall ((x_43 Nat_0) (x_44 list_0))
	(diseqlist_0 (cons_0 x_43 x_44) nil_0)))
(assert (forall ((x_45 Nat_0) (x_46 list_0) (x_47 Nat_0) (x_48 list_0))
	(=> (diseqNat_1 x_45 x_47)
	    (diseqlist_0 (cons_0 x_45 x_46) (cons_0 x_47 x_48)))))
(assert (forall ((x_45 Nat_0) (x_46 list_0) (x_47 Nat_0) (x_48 list_0))
	(=> (diseqlist_0 x_46 x_48)
	    (diseqlist_0 (cons_0 x_45 x_46) (cons_0 x_47 x_48)))))
(declare-fun x_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (y_1 Nat_0) (x_4 Bool) (x_5 Bool))
	(=>	(and (= x_4 x_5)
			(x_0 x_5 x_2 y_1)
			(= x_1 (S_0 x_2))
			(= y_0 (S_0 y_1)))
		(x_0 x_4 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (x_6 Bool))
	(=>	(and (= x_6 false)
			(= x_1 (S_0 x_2))
			(= y_0 Z_0))
		(x_0 x_6 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_7 Bool))
	(=>	(and (= x_7 false)
			(= x_1 Z_0)
			(= y_0 (S_0 z_0)))
		(x_0 x_7 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_8 Bool))
	(=>	(and (= x_8 true)
			(= x_1 Z_0)
			(= y_0 Z_0))
		(x_0 x_8 x_1 y_0))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_10 Nat_0) (x_11 Nat_0) (x_9 Bool))
	(=>	(and (= x_10 (S_0 x_11))
			(count_0 x_11 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_9 true)
			(x_0 x_9 x_3 z_1))
		(count_0 x_10 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_13 Nat_0) (x_14 Nat_0) (x_12 Bool))
	(=>	(and (= x_13 x_14)
			(count_0 x_14 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_12 false)
			(x_0 x_12 x_3 z_1))
		(count_0 x_13 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_15 Nat_0))
	(=>	(and (= x_15 Z_0)
			(= y_2 nil_0))
		(count_0 x_15 x_3 y_2))))
(assert (forall ((n_0 Nat_0) (xs_0 list_0) (x_16 Nat_0) (x_17 Nat_0))
	(=>	(and (diseqNat_1 (S_0 x_16) x_17)
			(count_0 x_16 n_0 xs_0)
			(count_0 x_17 n_0 (cons_0 n_0 xs_0)))
		false)))
(check-sat)
