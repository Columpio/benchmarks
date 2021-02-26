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
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_22 y_3)
			(add_0 z_2 r_0 y_3))
		(mult_0 z_2 (S_1 x_22) y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_22 y_3)
	    (div_0 Z_1 x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_22 y_3)
			(minus_0 z_2 x_22 y_3)
			(div_0 r_0 z_2 y_3))
		(div_0 (S_1 r_0) x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_22 y_3)
	    (mod_0 x_22 x_22 y_3))))
(assert (forall ((x_22 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_22 y_3)
			(minus_0 z_2 x_22 y_3)
			(mod_0 r_0 z_2 y_3))
		(mod_0 r_0 x_22 y_3))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_33 Nat_0) (x_32 Nat_0))
	(=> (= x_33 (S_0 x_32))
	    (projS_1 x_32 x_33))))
(assert (isZ_1 Z_0))
(assert (forall ((x_34 Nat_0))
	(isS_1 (S_0 x_34))))
(assert (forall ((x_35 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_35))))
(assert (forall ((x_36 Nat_0))
	(diseqNat_1 (S_0 x_36) Z_0)))
(assert (forall ((x_37 Nat_0) (x_38 Nat_0))
	(=> (diseqNat_1 x_37 x_38)
	    (diseqNat_1 (S_0 x_37) (S_0 x_38)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_42 list_0) (x_40 Nat_0) (x_41 list_0))
	(=> (= x_42 (cons_0 x_40 x_41))
	    (head_1 x_40 x_42))))
(assert (forall ((x_42 list_0) (x_40 Nat_0) (x_41 list_0))
	(=> (= x_42 (cons_0 x_40 x_41))
	    (tail_1 x_41 x_42))))
(assert (isnil_0 nil_0))
(assert (forall ((x_43 Nat_0) (x_44 list_0))
	(iscons_0 (cons_0 x_43 x_44))))
(assert (forall ((x_45 Nat_0) (x_46 list_0))
	(diseqlist_0 nil_0 (cons_0 x_45 x_46))))
(assert (forall ((x_47 Nat_0) (x_48 list_0))
	(diseqlist_0 (cons_0 x_47 x_48) nil_0)))
(assert (forall ((x_49 Nat_0) (x_50 list_0) (x_51 Nat_0) (x_52 list_0))
	(=> (diseqNat_1 x_49 x_51)
	    (diseqlist_0 (cons_0 x_49 x_50) (cons_0 x_51 x_52)))))
(assert (forall ((x_49 Nat_0) (x_50 list_0) (x_51 Nat_0) (x_52 list_0))
	(=> (diseqlist_0 x_50 x_52)
	    (diseqlist_0 (cons_0 x_49 x_50) (cons_0 x_51 x_52)))))
(declare-fun len_0 (Nat_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (xs_0 list_0) (x_6 Nat_0) (x_7 Nat_0))
	(=>	(and (= x_6 (S_0 x_7))
			(len_0 x_7 xs_0)
			(= x_0 (cons_0 y_0 xs_0)))
		(len_0 x_6 x_0))))
(assert (forall ((x_0 list_0) (x_8 Nat_0))
	(=>	(and (= x_8 Z_0)
			(= x_0 nil_0))
		(len_0 x_8 x_0))))
(declare-fun x_1 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_0 Nat_0) (x_3 Nat_0) (x_9 Bool) (x_10 Bool))
	(=>	(and (= x_9 x_10)
			(x_1 x_10 x_3 z_0)
			(= y_1 (S_0 z_0))
			(= x_2 (S_0 x_3)))
		(x_1 x_9 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_0 Nat_0) (x_11 Bool))
	(=>	(and (= x_11 true)
			(= y_1 (S_0 z_0))
			(= x_2 Z_0))
		(x_1 x_11 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_12 Bool))
	(=>	(and (= x_12 false)
			(= y_1 Z_0))
		(x_1 x_12 x_2 y_1))))
(declare-fun ins_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 list_0) (z_1 Nat_0) (xs_1 list_0) (x_14 list_0) (x_13 Bool))
	(=>	(and (= x_14 (cons_0 x_4 (cons_0 z_1 xs_1)))
			(= y_2 (cons_0 z_1 xs_1))
			(= x_13 true)
			(x_1 x_13 x_4 z_1))
		(ins_0 x_14 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 list_0) (z_1 Nat_0) (xs_1 list_0) (x_16 list_0) (x_17 list_0) (x_15 Bool))
	(=>	(and (= x_16 (cons_0 z_1 x_17))
			(ins_0 x_17 x_4 xs_1)
			(= y_2 (cons_0 z_1 xs_1))
			(= x_15 false)
			(x_1 x_15 x_4 z_1))
		(ins_0 x_16 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 list_0) (x_18 list_0))
	(=>	(and (= x_18 (cons_0 x_4 nil_0))
			(= y_2 nil_0))
		(ins_0 x_18 x_4 y_2))))
(assert (forall ((x_5 Nat_0) (xs_2 list_0) (x_19 list_0) (x_20 Nat_0) (x_21 Nat_0))
	(=>	(and (diseqNat_1 x_20 (S_0 x_21))
			(ins_0 x_19 x_5 xs_2)
			(len_0 x_20 x_19)
			(len_0 x_21 xs_2))
		false)))
(check-sat)
