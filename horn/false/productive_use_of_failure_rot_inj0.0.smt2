(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_35 Nat_1) (x_34 Nat_1))
	(=> (= x_35 (S_1 x_34))
	    (unS_1 x_34 x_35))))
(assert (isZ_0 Z_1))
(assert (forall ((x_36 Nat_1))
	(isS_0 (S_1 x_36))))
(assert (forall ((x_37 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_37))))
(assert (forall ((x_38 Nat_1))
	(diseqNat_0 (S_1 x_38) Z_1)))
(assert (forall ((x_39 Nat_1) (x_40 Nat_1))
	(=> (diseqNat_0 x_39 x_40)
	    (diseqNat_0 (S_1 x_39) (S_1 x_40)))))
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
(assert (forall ((x_32 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_32 y_5)
	    (add_0 (S_1 r_0) (S_1 x_32) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_1 Z_1 y_5)))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_32 y_5)
	    (minus_0 (S_1 r_0) (S_1 x_32) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_1 y_5)))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_32 y_5)
	    (le_0 (S_1 x_32) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_1)))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_32 y_5)
	    (ge_0 (S_1 x_32) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_1 (S_1 y_5))))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_32 y_5)
	    (lt_0 (S_1 x_32) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_1 y_5) Z_1)))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_32 y_5)
	    (gt_0 (S_1 x_32) (S_1 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_1 Z_1 y_5)))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_32 y_5)
			(add_0 z_3 r_0 y_5))
		(mult_0 z_3 (S_1 x_32) y_5))))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_32 y_5)
	    (div_0 Z_1 x_32 y_5))))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_32 y_5)
			(minus_0 z_3 x_32 y_5)
			(div_0 r_0 z_3 y_5))
		(div_0 (S_1 r_0) x_32 y_5))))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_32 y_5)
	    (mod_0 x_32 x_32 y_5))))
(assert (forall ((x_32 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_32 y_5)
			(minus_0 z_3 x_32 y_5)
			(mod_0 r_0 z_3 y_5))
		(mod_0 r_0 x_32 y_5))))
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(assert (forall ((x_42 Nat_0) (x_41 Nat_0))
	(=> (= x_42 (S_0 x_41))
	    (projS_1 x_41 x_42))))
(assert (forall ((x_44 Nat_0))
	(isS_1 (S_0 x_44))))
(assert (isZ_1 Z_0))
(assert (forall ((x_45 Nat_0))
	(diseqNat_1 (S_0 x_45) Z_0)))
(assert (forall ((x_46 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_46))))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0))
	(=> (diseqNat_1 x_47 x_48)
	    (diseqNat_1 (S_0 x_47) (S_0 x_48)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_52 list_0) (x_50 Nat_0) (x_51 list_0))
	(=> (= x_52 (cons_0 x_50 x_51))
	    (head_1 x_50 x_52))))
(assert (forall ((x_52 list_0) (x_50 Nat_0) (x_51 list_0))
	(=> (= x_52 (cons_0 x_50 x_51))
	    (tail_1 x_51 x_52))))
(assert (isnil_0 nil_0))
(assert (forall ((x_53 Nat_0) (x_54 list_0))
	(iscons_0 (cons_0 x_53 x_54))))
(assert (forall ((x_55 Nat_0) (x_56 list_0))
	(diseqlist_0 nil_0 (cons_0 x_55 x_56))))
(assert (forall ((x_57 Nat_0) (x_58 list_0))
	(diseqlist_0 (cons_0 x_57 x_58) nil_0)))
(assert (forall ((x_59 Nat_0) (x_60 list_0) (x_61 Nat_0) (x_62 list_0))
	(=> (diseqNat_1 x_59 x_61)
	    (diseqlist_0 (cons_0 x_59 x_60) (cons_0 x_61 x_62)))))
(assert (forall ((x_59 Nat_0) (x_60 list_0) (x_61 Nat_0) (x_62 list_0))
	(=> (diseqlist_0 x_60 x_62)
	    (diseqlist_0 (cons_0 x_59 x_60) (cons_0 x_61 x_62)))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (xs_0 list_0) (x_9 Nat_0) (x_10 Nat_0))
	(=>	(and (= x_9 (S_0 x_10))
			(length_0 x_10 xs_0)
			(= x_0 (cons_0 y_0 xs_0)))
		(length_0 x_9 x_0))))
(assert (forall ((x_0 list_0) (x_11 Nat_0))
	(=>	(and (= x_11 Z_0)
			(= x_0 nil_0))
		(length_0 x_11 x_0))))
(declare-fun x_1 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_12 Bool))
	(=>	(and (= x_12 false)
			(= x_2 Z_0)
			(= y_1 Z_0))
		(x_1 x_12 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_3 Nat_0) (x_13 Bool))
	(=>	(and (= x_13 true)
			(= x_2 Z_0)
			(= y_1 (S_0 x_3)))
		(x_1 x_13 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_0 Nat_0) (x_14 Bool))
	(=>	(and (= x_14 false)
			(= x_2 (S_0 z_0))
			(= y_1 Z_0))
		(x_1 x_14 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (z_0 Nat_0) (y_2 Nat_0) (x_15 Bool) (x_16 Bool))
	(=>	(and (= x_15 x_16)
			(x_1 x_16 z_0 y_2)
			(= x_2 (S_0 z_0))
			(= y_1 (S_0 y_2)))
		(x_1 x_15 x_2 y_1))))
(declare-fun x_4 (list_0 list_0 list_0) Bool)
(assert (forall ((x_5 list_0) (y_3 list_0) (z_1 Nat_0) (xs_1 list_0) (x_17 list_0) (x_18 list_0))
	(=>	(and (= x_17 (cons_0 z_1 x_18))
			(x_4 x_18 xs_1 y_3)
			(= x_5 (cons_0 z_1 xs_1)))
		(x_4 x_17 x_5 y_3))))
(assert (forall ((x_5 list_0) (y_3 list_0) (x_19 list_0))
	(=>	(and (= x_19 y_3)
			(= x_5 nil_0))
		(x_4 x_19 x_5 y_3))))
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_6 Nat_0) (y_4 list_0) (x_20 list_0))
	(=>	(and (= x_20 y_4)
			(= x_6 Z_0))
		(rotate_0 x_20 x_6 y_4))))
(assert (forall ((x_6 Nat_0) (y_4 list_0) (z_2 Nat_0) (x_7 Nat_0) (x_8 list_0) (x_21 list_0) (x_22 list_0) (x_23 list_0))
	(=>	(and (= x_21 x_23)
			(x_4 x_22 x_8 (cons_0 x_7 nil_0))
			(rotate_0 x_23 z_2 x_22)
			(= x_6 (S_0 z_2))
			(= y_4 (cons_0 x_7 x_8)))
		(rotate_0 x_21 x_6 y_4))))
(assert (forall ((x_6 Nat_0) (y_4 list_0) (z_2 Nat_0) (x_24 list_0))
	(=>	(and (= x_24 nil_0)
			(= x_6 (S_0 z_2))
			(= y_4 nil_0))
		(rotate_0 x_24 x_6 y_4))))
(assert (forall ((n_0 Nat_0) (m_0 Nat_0) (ys_0 list_0) (xs_2 list_0) (x_25 list_0) (x_26 list_0) (x_27 list_0) (x_28 Nat_0) (x_29 Bool) (x_30 Nat_0) (x_31 Bool))
	(=>	(and (diseqNat_1 n_0 m_0)
			(= x_25 x_26)
			(diseqlist_0 x_27 xs_2)
			(= xs_2 ys_0)
			(= x_29 true)
			(= x_31 true)
			(rotate_0 x_25 n_0 xs_2)
			(rotate_0 x_26 m_0 ys_0)
			(rotate_0 x_27 (S_0 Z_0) xs_2)
			(length_0 x_28 ys_0)
			(x_1 x_29 m_0 x_28)
			(length_0 x_30 xs_2)
			(x_1 x_31 n_0 x_30))
		false)))
(check-sat)
