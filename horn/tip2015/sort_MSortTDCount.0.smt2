(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_56 Nat_0) (x_55 Nat_0))
	(=> (= x_56 (S_0 x_55))
	    (unS_1 x_55 x_56))))
(assert (isZ_0 Z_0))
(assert (forall ((x_57 Nat_0))
	(isS_0 (S_0 x_57))))
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (S_0 x_59) Z_0)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61)
	    (diseqNat_0 (S_0 x_60) (S_0 x_61)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_6 Nat_0))
	(add_0 y_6 Z_0 y_6)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_48 y_6)
	    (add_0 (S_0 r_0) (S_0 x_48) y_6))))
(assert (forall ((y_6 Nat_0))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_48 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_48) y_6))))
(assert (forall ((y_6 Nat_0))
	(le_0 Z_0 y_6)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (le_0 x_48 y_6)
	    (le_0 (S_0 x_48) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (ge_0 x_48 y_6)
	    (ge_0 (S_0 x_48) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_48 y_6)
	    (lt_0 (S_0 x_48) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (gt_0 x_48 y_6)
	    (gt_0 (S_0 x_48) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (mult_0 r_0 x_48 y_6)
			(add_0 z_5 r_0 y_6))
		(mult_0 z_5 (S_0 x_48) y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_48 y_6)
	    (div_0 Z_0 x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_48 y_6)
			(minus_0 z_5 x_48 y_6)
			(div_0 r_0 z_5 y_6))
		(div_0 (S_0 r_0) x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_48 y_6)
	    (mod_0 x_48 x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_48 y_6)
			(minus_0 z_5 x_48 y_6)
			(mod_0 r_0 z_5 y_6))
		(mod_0 r_0 x_48 y_6))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_65 list_0) (x_63 Nat_0) (x_64 list_0))
	(=> (= x_65 (cons_0 x_63 x_64))
	    (head_1 x_63 x_65))))
(assert (forall ((x_65 list_0) (x_63 Nat_0) (x_64 list_0))
	(=> (= x_65 (cons_0 x_63 x_64))
	    (tail_1 x_64 x_65))))
(assert (isnil_0 nil_0))
(assert (forall ((x_66 Nat_0) (x_67 list_0))
	(iscons_0 (cons_0 x_66 x_67))))
(assert (forall ((x_68 Nat_0) (x_69 list_0))
	(diseqlist_0 nil_0 (cons_0 x_68 x_69))))
(assert (forall ((x_70 Nat_0) (x_71 list_0))
	(diseqlist_0 (cons_0 x_70 x_71) nil_0)))
(assert (forall ((x_72 Nat_0) (x_73 list_0) (x_74 Nat_0) (x_75 list_0))
	(=> (diseqNat_0 x_72 x_74)
	    (diseqlist_0 (cons_0 x_72 x_73) (cons_0 x_74 x_75)))))
(assert (forall ((x_72 Nat_0) (x_73 list_0) (x_74 Nat_0) (x_75 list_0))
	(=> (diseqlist_0 x_73 x_75)
	    (diseqlist_0 (cons_0 x_72 x_73) (cons_0 x_74 x_75)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_12 list_0))
	(=>	(and (= x_12 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_12 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_13 list_0) (x_14 list_0) (x_49 Nat_0))
	(=>	(and (= x_13 (cons_0 z_0 x_14))
			(take_0 x_14 x_49 xs_0)
			(gt_0 x_0 Z_0)
			(= y_0 (cons_0 z_0 xs_0))
			(minus_0 x_49 x_0 (S_0 Z_0)))
		(take_0 x_13 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_15 list_0))
	(=>	(and (= x_15 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_15 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(gt_0 x_0 Z_0)
			(= y_0 nil_0))
		(take_0 x_16 x_0 y_0))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_1 list_0) (z_1 Nat_0) (x_2 list_0) (x_3 Nat_0) (x_4 list_0) (x_17 list_0) (x_18 list_0))
	(=>	(and (= x_17 (cons_0 z_1 x_18))
			(lmerge_0 x_18 x_2 (cons_0 x_3 x_4))
			(= x_1 (cons_0 z_1 x_2))
			(= y_1 (cons_0 x_3 x_4))
			(le_0 z_1 x_3))
		(lmerge_0 x_17 x_1 y_1))))
(assert (forall ((x_1 list_0) (y_1 list_0) (z_1 Nat_0) (x_2 list_0) (x_3 Nat_0) (x_4 list_0) (x_19 list_0) (x_20 list_0))
	(=>	(and (= x_19 (cons_0 x_3 x_20))
			(lmerge_0 x_20 (cons_0 z_1 x_2) x_4)
			(= x_1 (cons_0 z_1 x_2))
			(= y_1 (cons_0 x_3 x_4))
			(gt_0 z_1 x_3))
		(lmerge_0 x_19 x_1 y_1))))
(assert (forall ((x_1 list_0) (y_1 list_0) (z_1 Nat_0) (x_2 list_0) (x_21 list_0))
	(=>	(and (= x_21 (cons_0 z_1 x_2))
			(= x_1 (cons_0 z_1 x_2))
			(= y_1 nil_0))
		(lmerge_0 x_21 x_1 y_1))))
(assert (forall ((x_1 list_0) (y_1 list_0) (x_22 list_0))
	(=>	(and (= x_22 y_1)
			(= x_1 nil_0))
		(lmerge_0 x_22 x_1 y_1))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_5 list_0) (y_2 Nat_0) (l_0 list_0) (x_23 Nat_0) (x_24 Nat_0) (x_50 Nat_0))
	(=>	(and (= x_23 x_50)
			(length_0 x_24 l_0)
			(= x_5 (cons_0 y_2 l_0))
			(add_0 x_50 (S_0 Z_0) x_24))
		(length_0 x_23 x_5))))
(assert (forall ((x_5 list_0) (x_25 Nat_0))
	(=>	(and (= x_25 Z_0)
			(= x_5 nil_0))
		(length_0 x_25 x_5))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_6 Nat_0) (y_3 list_0) (x_26 list_0))
	(=>	(and (= x_26 y_3)
			(le_0 x_6 Z_0))
		(drop_0 x_26 x_6 y_3))))
(assert (forall ((x_6 Nat_0) (y_3 list_0) (z_2 Nat_0) (xs_1 list_0) (x_27 list_0) (x_28 list_0) (x_51 Nat_0))
	(=>	(and (= x_27 x_28)
			(drop_0 x_28 x_51 xs_1)
			(gt_0 x_6 Z_0)
			(= y_3 (cons_0 z_2 xs_1))
			(minus_0 x_51 x_6 (S_0 Z_0)))
		(drop_0 x_27 x_6 y_3))))
(assert (forall ((x_6 Nat_0) (y_3 list_0) (x_29 list_0))
	(=>	(and (= x_29 y_3)
			(le_0 x_6 Z_0))
		(drop_0 x_29 x_6 y_3))))
(assert (forall ((x_6 Nat_0) (y_3 list_0) (x_30 list_0))
	(=>	(and (= x_30 nil_0)
			(gt_0 x_6 Z_0)
			(= y_3 nil_0))
		(drop_0 x_30 x_6 y_3))))
(declare-fun msorttd_0 (list_0 list_0) Bool)
(assert (forall ((x_7 list_0) (y_4 Nat_0) (z_3 list_0) (x_8 Nat_0) (x_9 list_0) (k_0 Nat_0) (x_32 list_0) (x_33 list_0) (x_34 list_0) (x_35 list_0) (x_36 list_0) (x_37 list_0) (x_31 Nat_0) (x_52 Nat_0))
	(=>	(and (= x_32 x_37)
			(take_0 x_33 k_0 (cons_0 y_4 (cons_0 x_8 x_9)))
			(msorttd_0 x_34 x_33)
			(drop_0 x_35 k_0 (cons_0 y_4 (cons_0 x_8 x_9)))
			(msorttd_0 x_36 x_35)
			(lmerge_0 x_37 x_34 x_36)
			(= x_7 (cons_0 y_4 z_3))
			(= z_3 (cons_0 x_8 x_9))
			(= k_0 x_52)
			(length_0 x_31 (cons_0 y_4 (cons_0 x_8 x_9)))
			(div_0 x_52 x_31 (S_0 (S_0 Z_0))))
		(msorttd_0 x_32 x_7))))
(assert (forall ((x_7 list_0) (y_4 Nat_0) (z_3 list_0) (x_38 list_0))
	(=>	(and (= x_38 (cons_0 y_4 nil_0))
			(= x_7 (cons_0 y_4 z_3))
			(= z_3 nil_0))
		(msorttd_0 x_38 x_7))))
(assert (forall ((x_7 list_0) (x_39 list_0))
	(=>	(and (= x_39 nil_0)
			(= x_7 nil_0))
		(msorttd_0 x_39 x_7))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_10 Nat_0) (y_5 list_0) (z_4 Nat_0) (ys_0 list_0) (x_40 Nat_0) (x_41 Nat_0) (x_53 Nat_0))
	(=>	(and (= x_40 x_53)
			(count_0 x_41 x_10 ys_0)
			(= y_5 (cons_0 z_4 ys_0))
			(= x_10 z_4)
			(add_0 x_53 (S_0 Z_0) x_41))
		(count_0 x_40 x_10 y_5))))
(assert (forall ((x_10 Nat_0) (y_5 list_0) (z_4 Nat_0) (ys_0 list_0) (x_42 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_42 x_43)
			(count_0 x_43 x_10 ys_0)
			(= y_5 (cons_0 z_4 ys_0))
			(diseqNat_0 x_10 z_4))
		(count_0 x_42 x_10 y_5))))
(assert (forall ((x_10 Nat_0) (y_5 list_0) (x_44 Nat_0))
	(=>	(and (= x_44 Z_0)
			(= y_5 nil_0))
		(count_0 x_44 x_10 y_5))))
(assert (forall ((x_11 Nat_0) (xs_2 list_0) (x_45 list_0) (x_46 Nat_0) (x_47 Nat_0))
	(=>	(and (diseqNat_0 x_46 x_47)
			(msorttd_0 x_45 xs_2)
			(count_0 x_46 x_11 x_45)
			(count_0 x_47 x_11 xs_2))
		false)))
(check-sat)
