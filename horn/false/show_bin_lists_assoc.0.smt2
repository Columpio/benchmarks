(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_46 Nat_0) (x_45 Nat_0))
	(=> (= x_46 (S_0 x_45))
	    (unS_1 x_45 x_46))))
(assert (isZ_0 Z_0))
(assert (forall ((x_47 Nat_0))
	(isS_0 (S_0 x_47))))
(assert (forall ((x_48 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_48))))
(assert (forall ((x_49 Nat_0))
	(diseqNat_0 (S_0 x_49) Z_0)))
(assert (forall ((x_50 Nat_0) (x_51 Nat_0))
	(=> (diseqNat_0 x_50 x_51)
	    (diseqNat_0 (S_0 x_50) (S_0 x_51)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_4 Nat_0))
	(add_0 y_4 Z_0 y_4)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_38 y_4)
	    (add_0 (S_0 r_0) (S_0 x_38) y_4))))
(assert (forall ((y_4 Nat_0))
	(minus_0 Z_0 Z_0 y_4)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_38 y_4)
	    (minus_0 (S_0 r_0) (S_0 x_38) y_4))))
(assert (forall ((y_4 Nat_0))
	(le_0 Z_0 y_4)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (le_0 x_38 y_4)
	    (le_0 (S_0 x_38) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(ge_0 y_4 Z_0)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (ge_0 x_38 y_4)
	    (ge_0 (S_0 x_38) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(lt_0 Z_0 (S_0 y_4))))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_38 y_4)
	    (lt_0 (S_0 x_38) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(gt_0 (S_0 y_4) Z_0)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (gt_0 x_38 y_4)
	    (gt_0 (S_0 x_38) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(mult_0 Z_0 Z_0 y_4)))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (mult_0 r_0 x_38 y_4)
			(add_0 z_2 r_0 y_4))
		(mult_0 z_2 (S_0 x_38) y_4))))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_38 y_4)
	    (div_0 Z_0 x_38 y_4))))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_38 y_4)
			(minus_0 z_2 x_38 y_4)
			(div_0 r_0 z_2 y_4))
		(div_0 (S_0 r_0) x_38 y_4))))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_38 y_4)
	    (mod_0 x_38 x_38 y_4))))
(assert (forall ((x_38 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_38 y_4)
			(minus_0 z_2 x_38 y_4)
			(mod_0 r_0 z_2 y_4))
		(mod_0 r_0 x_38 y_4))))
(declare-datatypes ((B_0 0)) (((I_0 ) (O_0 ))))
(declare-fun diseqB_0 (B_0 B_0) Bool)
(declare-fun isI_0 (B_0) Bool)
(declare-fun isO_0 (B_0) Bool)
(assert (isI_0 I_0))
(assert (isO_0 O_0))
(assert (diseqB_0 I_0 O_0))
(assert (diseqB_0 O_0 I_0))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 B_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (B_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_57 list_0) (x_55 B_0) (x_56 list_0))
	(=> (= x_57 (cons_0 x_55 x_56))
	    (head_1 x_55 x_57))))
(assert (forall ((x_57 list_0) (x_55 B_0) (x_56 list_0))
	(=> (= x_57 (cons_0 x_55 x_56))
	    (tail_1 x_56 x_57))))
(assert (isnil_0 nil_0))
(assert (forall ((x_58 B_0) (x_59 list_0))
	(iscons_0 (cons_0 x_58 x_59))))
(assert (forall ((x_60 B_0) (x_61 list_0))
	(diseqlist_0 nil_0 (cons_0 x_60 x_61))))
(assert (forall ((x_62 B_0) (x_63 list_0))
	(diseqlist_0 (cons_0 x_62 x_63) nil_0)))
(assert (forall ((x_64 B_0) (x_65 list_0) (x_66 B_0) (x_67 list_0))
	(=> (diseqB_0 x_64 x_66)
	    (diseqlist_0 (cons_0 x_64 x_65) (cons_0 x_66 x_67)))))
(assert (forall ((x_64 B_0) (x_65 list_0) (x_66 B_0) (x_67 list_0))
	(=> (diseqlist_0 x_65 x_67)
	    (diseqlist_0 (cons_0 x_64 x_65) (cons_0 x_66 x_67)))))
(declare-fun half_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (x_9 Nat_0) (x_39 Nat_0))
	(=>	(and (= x_9 x_39)
			(div_0 x_39 x_0 (S_0 (S_0 Z_0))))
		(half_0 x_9 x_0))))
(declare-fun shw_0 (list_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (x_10 list_0))
	(=>	(and (= x_10 nil_0)
			(= x_1 Z_0))
		(shw_0 x_10 x_1))))
(assert (forall ((x_1 Nat_0) (x_11 list_0) (x_12 Nat_0) (x_13 list_0) (x_40 Nat_0))
	(=>	(and (= x_11 (cons_0 O_0 x_13))
			(half_0 x_12 x_1)
			(shw_0 x_13 x_12)
			(diseqNat_0 x_1 Z_0)
			(= x_40 Z_0)
			(mod_0 x_40 x_1 (S_0 (S_0 Z_0))))
		(shw_0 x_11 x_1))))
(assert (forall ((x_1 Nat_0) (x_14 list_0))
	(=>	(and (= x_14 nil_0)
			(= x_1 Z_0))
		(shw_0 x_14 x_1))))
(assert (forall ((x_1 Nat_0) (x_15 list_0) (x_16 Nat_0) (x_17 list_0) (x_41 Nat_0))
	(=>	(and (= x_15 (cons_0 I_0 x_17))
			(half_0 x_16 x_1)
			(shw_0 x_17 x_16)
			(diseqNat_0 x_1 Z_0)
			(diseqNat_0 x_41 Z_0)
			(mod_0 x_41 x_1 (S_0 (S_0 Z_0))))
		(shw_0 x_15 x_1))))
(declare-fun double_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (x_18 Nat_0) (x_42 Nat_0))
	(=>	(and (= x_18 x_42)
			(add_0 x_42 x_2 x_2))
		(double_0 x_18 x_2))))
(declare-fun rd_0 (Nat_0 list_0) Bool)
(assert (forall ((x_3 list_0) (y_0 B_0) (xs_0 list_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 Nat_0))
	(=>	(and (= x_19 x_21)
			(rd_0 x_20 xs_0)
			(double_0 x_21 x_20)
			(= x_3 (cons_0 y_0 xs_0))
			(= y_0 O_0))
		(rd_0 x_19 x_3))))
(assert (forall ((x_3 list_0) (y_0 B_0) (xs_0 list_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_22 x_43)
			(rd_0 x_23 xs_0)
			(double_0 x_24 x_23)
			(= x_3 (cons_0 y_0 xs_0))
			(= y_0 I_0)
			(add_0 x_43 (S_0 Z_0) x_24))
		(rd_0 x_22 x_3))))
(assert (forall ((x_3 list_0) (x_25 Nat_0))
	(=>	(and (= x_25 Z_0)
			(= x_3 nil_0))
		(rd_0 x_25 x_3))))
(declare-fun x_4 (list_0 list_0 list_0) Bool)
(assert (forall ((x_5 list_0) (y_1 list_0) (z_0 B_0) (xs_1 list_0) (x_26 list_0) (x_27 list_0))
	(=>	(and (= x_26 (cons_0 z_0 x_27))
			(x_4 x_27 xs_1 y_1)
			(= x_5 (cons_0 z_0 xs_1)))
		(x_4 x_26 x_5 y_1))))
(assert (forall ((x_5 list_0) (y_1 list_0) (x_28 list_0))
	(=>	(and (= x_28 y_1)
			(= x_5 nil_0))
		(x_4 x_28 x_5 y_1))))
(declare-fun x_6 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_7 Nat_0) (y_2 Nat_0) (x_29 Nat_0) (x_30 list_0) (x_31 list_0) (x_32 list_0) (x_33 Nat_0))
	(=>	(and (= x_29 x_33)
			(shw_0 x_30 x_7)
			(shw_0 x_31 y_2)
			(x_4 x_32 x_30 x_31)
			(rd_0 x_33 x_32))
		(x_6 x_29 x_7 y_2))))
(assert (forall ((x_8 Nat_0) (y_3 Nat_0) (z_1 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0))
	(=>	(and (diseqNat_0 x_35 x_37)
			(x_6 x_34 y_3 z_1)
			(x_6 x_35 x_8 x_34)
			(x_6 x_36 x_8 y_3)
			(x_6 x_37 x_36 z_1))
		false)))
(check-sat)
