(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_48 Nat_0) (x_47 Nat_0))
	(=> (= x_48 (S_0 x_47))
	    (unS_1 x_47 x_48))))
(assert (isZ_0 Z_0))
(assert (forall ((x_49 Nat_0))
	(isS_0 (S_0 x_49))))
(assert (forall ((x_50 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_50))))
(assert (forall ((x_51 Nat_0))
	(diseqNat_0 (S_0 x_51) Z_0)))
(assert (forall ((x_52 Nat_0) (x_53 Nat_0))
	(=> (diseqNat_0 x_52 x_53)
	    (diseqNat_0 (S_0 x_52) (S_0 x_53)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_7 Nat_0))
	(add_0 y_7 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_45 y_7)
	    (add_0 (S_0 r_0) (S_0 x_45) y_7))))
(assert (forall ((y_7 Nat_0))
	(minus_0 Z_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_45 y_7)
	    (minus_0 (S_0 r_0) (S_0 x_45) y_7))))
(assert (forall ((y_7 Nat_0))
	(le_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (le_0 x_45 y_7)
	    (le_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(ge_0 y_7 Z_0)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (ge_0 x_45 y_7)
	    (ge_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(lt_0 Z_0 (S_0 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (lt_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(gt_0 (S_0 y_7) Z_0)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (gt_0 x_45 y_7)
	    (gt_0 (S_0 x_45) (S_0 y_7)))))
(assert (forall ((y_7 Nat_0))
	(mult_0 Z_0 Z_0 y_7)))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_0 x_45 y_7)
			(add_0 z_4 r_0 y_7))
		(mult_0 z_4 (S_0 x_45) y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (div_0 Z_0 x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_45 y_7)
			(minus_0 z_4 x_45 y_7)
			(div_0 r_0 z_4 y_7))
		(div_0 (S_0 r_0) x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0))
	(=> (lt_0 x_45 y_7)
	    (mod_0 x_45 x_45 y_7))))
(assert (forall ((x_45 Nat_0) (y_7 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_45 y_7)
			(minus_0 z_4 x_45 y_7)
			(mod_0 r_0 z_4 y_7))
		(mod_0 r_0 x_45 y_7))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_57 list_0) (x_55 Nat_0) (x_56 list_0))
	(=> (= x_57 (cons_0 x_55 x_56))
	    (head_2 x_55 x_57))))
(assert (forall ((x_57 list_0) (x_55 Nat_0) (x_56 list_0))
	(=> (= x_57 (cons_0 x_55 x_56))
	    (tail_2 x_56 x_57))))
(assert (isnil_0 nil_0))
(assert (forall ((x_58 Nat_0) (x_59 list_0))
	(iscons_0 (cons_0 x_58 x_59))))
(assert (forall ((x_60 Nat_0) (x_61 list_0))
	(diseqlist_0 nil_0 (cons_0 x_60 x_61))))
(assert (forall ((x_62 Nat_0) (x_63 list_0))
	(diseqlist_0 (cons_0 x_62 x_63) nil_0)))
(assert (forall ((x_64 Nat_0) (x_65 list_0) (x_66 Nat_0) (x_67 list_0))
	(=> (diseqNat_0 x_64 x_66)
	    (diseqlist_0 (cons_0 x_64 x_65) (cons_0 x_66 x_67)))))
(assert (forall ((x_64 Nat_0) (x_65 list_0) (x_66 Nat_0) (x_67 list_0))
	(=> (diseqlist_0 x_65 x_67)
	    (diseqlist_0 (cons_0 x_64 x_65) (cons_0 x_66 x_67)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (list_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_71 list_1) (x_69 list_0) (x_70 list_1))
	(=> (= x_71 (cons_1 x_69 x_70))
	    (head_3 x_69 x_71))))
(assert (forall ((x_71 list_1) (x_69 list_0) (x_70 list_1))
	(=> (= x_71 (cons_1 x_69 x_70))
	    (tail_3 x_70 x_71))))
(assert (isnil_1 nil_1))
(assert (forall ((x_72 list_0) (x_73 list_1))
	(iscons_1 (cons_1 x_72 x_73))))
(assert (forall ((x_74 list_0) (x_75 list_1))
	(diseqlist_1 nil_1 (cons_1 x_74 x_75))))
(assert (forall ((x_76 list_0) (x_77 list_1))
	(diseqlist_1 (cons_1 x_76 x_77) nil_1)))
(assert (forall ((x_78 list_0) (x_79 list_1) (x_80 list_0) (x_81 list_1))
	(=> (diseqlist_0 x_78 x_80)
	    (diseqlist_1 (cons_1 x_78 x_79) (cons_1 x_80 x_81)))))
(assert (forall ((x_78 list_0) (x_79 list_1) (x_80 list_0) (x_81 list_1))
	(=> (diseqlist_1 x_79 x_81)
	    (diseqlist_1 (cons_1 x_78 x_79) (cons_1 x_80 x_81)))))
(declare-fun risers_0 (list_1 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (ys_0 list_0) (yss_0 list_1) (x_11 list_1) (x_10 list_1))
	(=>	(and (= x_11 (cons_1 (cons_0 y_0 ys_0) yss_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(le_0 y_0 y_1)
			(= x_10 (cons_1 ys_0 yss_0))
			(risers_0 x_10 (cons_0 y_1 xs_0)))
		(risers_0 x_11 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_12 list_1) (x_13 list_1))
	(=>	(and (= x_12 (cons_1 (cons_0 y_0 nil_0) x_13))
			(risers_0 x_13 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(gt_0 y_0 y_1))
		(risers_0 x_12 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_15 list_1) (x_14 list_1))
	(=>	(and (= x_15 nil_1)
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(le_0 y_0 y_1)
			(= x_14 nil_1)
			(risers_0 x_14 (cons_0 y_1 xs_0)))
		(risers_0 x_15 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_16 list_1) (x_17 list_1))
	(=>	(and (= x_16 (cons_1 (cons_0 y_0 nil_0) x_17))
			(risers_0 x_17 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(gt_0 y_0 y_1))
		(risers_0 x_16 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_18 list_1))
	(=>	(and (= x_18 (cons_1 (cons_0 y_0 nil_0) nil_1))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 nil_0))
		(risers_0 x_18 x_0))))
(assert (forall ((x_0 list_0) (x_19 list_1))
	(=>	(and (= x_19 nil_1)
			(= x_0 nil_0))
		(risers_0 x_19 x_0))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_1 list_0) (y_2 Nat_0) (z_1 list_0) (y_3 Nat_0) (xs_1 list_0) (x_20 Bool) (x_21 Bool))
	(=>	(and (= x_20 (and (le_0 y_2 y_3) x_21))
			(ordered_0 x_21 (cons_0 y_3 xs_1))
			(= x_1 (cons_0 y_2 z_1))
			(= z_1 (cons_0 y_3 xs_1)))
		(ordered_0 x_20 x_1))))
(assert (forall ((x_1 list_0) (y_2 Nat_0) (z_1 list_0) (x_22 Bool))
	(=>	(and (= x_22 true)
			(= x_1 (cons_0 y_2 z_1))
			(= z_1 nil_0))
		(ordered_0 x_22 x_1))))
(assert (forall ((x_1 list_0) (x_23 Bool))
	(=>	(and (= x_23 true)
			(= x_1 nil_0))
		(ordered_0 x_23 x_1))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_4 list_0) (z_2 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_24 list_0) (x_25 list_0))
	(=>	(and (= x_24 (cons_0 z_2 x_25))
			(lmerge_0 x_25 x_3 (cons_0 x_4 x_5))
			(= x_2 (cons_0 z_2 x_3))
			(= y_4 (cons_0 x_4 x_5))
			(le_0 z_2 x_4))
		(lmerge_0 x_24 x_2 y_4))))
(assert (forall ((x_2 list_0) (y_4 list_0) (z_2 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_26 list_0) (x_27 list_0))
	(=>	(and (= x_26 (cons_0 x_4 x_27))
			(lmerge_0 x_27 (cons_0 z_2 x_3) x_5)
			(= x_2 (cons_0 z_2 x_3))
			(= y_4 (cons_0 x_4 x_5))
			(gt_0 z_2 x_4))
		(lmerge_0 x_26 x_2 y_4))))
(assert (forall ((x_2 list_0) (y_4 list_0) (z_2 Nat_0) (x_3 list_0) (x_28 list_0))
	(=>	(and (= x_28 (cons_0 z_2 x_3))
			(= x_2 (cons_0 z_2 x_3))
			(= y_4 nil_0))
		(lmerge_0 x_28 x_2 y_4))))
(assert (forall ((x_2 list_0) (y_4 list_0) (x_29 list_0))
	(=>	(and (= x_29 y_4)
			(= x_2 nil_0))
		(lmerge_0 x_29 x_2 y_4))))
(declare-fun pairwise_0 (list_1 list_1) Bool)
(assert (forall ((x_6 list_1) (xs_2 list_0) (y_5 list_1) (ys_1 list_0) (xss_0 list_1) (x_30 list_1) (x_31 list_0) (x_32 list_1))
	(=>	(and (= x_30 (cons_1 x_31 x_32))
			(lmerge_0 x_31 xs_2 ys_1)
			(pairwise_0 x_32 xss_0)
			(= x_6 (cons_1 xs_2 y_5))
			(= y_5 (cons_1 ys_1 xss_0)))
		(pairwise_0 x_30 x_6))))
(assert (forall ((x_6 list_1) (xs_2 list_0) (y_5 list_1) (x_33 list_1))
	(=>	(and (= x_33 (cons_1 xs_2 nil_1))
			(= x_6 (cons_1 xs_2 y_5))
			(= y_5 nil_1))
		(pairwise_0 x_33 x_6))))
(assert (forall ((x_6 list_1) (x_34 list_1))
	(=>	(and (= x_34 nil_1)
			(= x_6 nil_1))
		(pairwise_0 x_34 x_6))))
(declare-fun mergingbu_0 (list_0 list_1) Bool)
(assert (forall ((x_7 list_1) (xs_3 list_0) (y_6 list_1) (z_3 list_0) (x_8 list_1) (x_35 list_0) (x_36 list_1) (x_37 list_0))
	(=>	(and (= x_35 x_37)
			(pairwise_0 x_36 (cons_1 xs_3 (cons_1 z_3 x_8)))
			(mergingbu_0 x_37 x_36)
			(= x_7 (cons_1 xs_3 y_6))
			(= y_6 (cons_1 z_3 x_8)))
		(mergingbu_0 x_35 x_7))))
(assert (forall ((x_7 list_1) (xs_3 list_0) (y_6 list_1) (x_38 list_0))
	(=>	(and (= x_38 xs_3)
			(= x_7 (cons_1 xs_3 y_6))
			(= y_6 nil_1))
		(mergingbu_0 x_38 x_7))))
(assert (forall ((x_7 list_1) (x_39 list_0))
	(=>	(and (= x_39 nil_0)
			(= x_7 nil_1))
		(mergingbu_0 x_39 x_7))))
(declare-fun msortbu_0 (list_0 list_0) Bool)
(assert (forall ((x_9 list_0) (x_40 list_0) (x_41 list_1) (x_42 list_0))
	(=>	(and (= x_40 x_42)
			(risers_0 x_41 x_9)
			(mergingbu_0 x_42 x_41))
		(msortbu_0 x_40 x_9))))
(assert (forall ((xs_4 list_0) (x_43 list_0) (x_44 Bool))
	(=>	(and (= x_44 false)
			(msortbu_0 x_43 xs_4)
			(ordered_0 x_44 x_43))
		false)))
(check-sat)
