(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_52 Nat_0) (x_51 Nat_0))
	(=> (= x_52 (S_0 x_51))
	    (unS_1 x_51 x_52))))
(assert (isZ_0 Z_0))
(assert (forall ((x_53 Nat_0))
	(isS_0 (S_0 x_53))))
(assert (forall ((x_54 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_54))))
(assert (forall ((x_55 Nat_0))
	(diseqNat_0 (S_0 x_55) Z_0)))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0))
	(=> (diseqNat_0 x_56 x_57)
	    (diseqNat_0 (S_0 x_56) (S_0 x_57)))))
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
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (mult_0 r_0 x_48 y_6)
			(add_0 z_4 r_0 y_6))
		(mult_0 z_4 (S_0 x_48) y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_48 y_6)
	    (div_0 Z_0 x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_48 y_6)
			(minus_0 z_4 x_48 y_6)
			(div_0 r_0 z_4 y_6))
		(div_0 (S_0 r_0) x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_48 y_6)
	    (mod_0 x_48 x_48 y_6))))
(assert (forall ((x_48 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_4 Nat_0))
	(=>	(and (ge_0 x_48 y_6)
			(minus_0 z_4 x_48 y_6)
			(mod_0 r_0 z_4 y_6))
		(mod_0 r_0 x_48 y_6))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_61 list_0) (x_59 Nat_0) (x_60 list_0))
	(=> (= x_61 (cons_0 x_59 x_60))
	    (head_2 x_59 x_61))))
(assert (forall ((x_61 list_0) (x_59 Nat_0) (x_60 list_0))
	(=> (= x_61 (cons_0 x_59 x_60))
	    (tail_2 x_60 x_61))))
(assert (isnil_0 nil_0))
(assert (forall ((x_62 Nat_0) (x_63 list_0))
	(iscons_0 (cons_0 x_62 x_63))))
(assert (forall ((x_64 Nat_0) (x_65 list_0))
	(diseqlist_0 nil_0 (cons_0 x_64 x_65))))
(assert (forall ((x_66 Nat_0) (x_67 list_0))
	(diseqlist_0 (cons_0 x_66 x_67) nil_0)))
(assert (forall ((x_68 Nat_0) (x_69 list_0) (x_70 Nat_0) (x_71 list_0))
	(=> (diseqNat_0 x_68 x_70)
	    (diseqlist_0 (cons_0 x_68 x_69) (cons_0 x_70 x_71)))))
(assert (forall ((x_68 Nat_0) (x_69 list_0) (x_70 Nat_0) (x_71 list_0))
	(=> (diseqlist_0 x_69 x_71)
	    (diseqlist_0 (cons_0 x_68 x_69) (cons_0 x_70 x_71)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (list_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_75 list_1) (x_73 list_0) (x_74 list_1))
	(=> (= x_75 (cons_1 x_73 x_74))
	    (head_3 x_73 x_75))))
(assert (forall ((x_75 list_1) (x_73 list_0) (x_74 list_1))
	(=> (= x_75 (cons_1 x_73 x_74))
	    (tail_3 x_74 x_75))))
(assert (isnil_1 nil_1))
(assert (forall ((x_76 list_0) (x_77 list_1))
	(iscons_1 (cons_1 x_76 x_77))))
(assert (forall ((x_78 list_0) (x_79 list_1))
	(diseqlist_1 nil_1 (cons_1 x_78 x_79))))
(assert (forall ((x_80 list_0) (x_81 list_1))
	(diseqlist_1 (cons_1 x_80 x_81) nil_1)))
(assert (forall ((x_82 list_0) (x_83 list_1) (x_84 list_0) (x_85 list_1))
	(=> (diseqlist_0 x_82 x_84)
	    (diseqlist_1 (cons_1 x_82 x_83) (cons_1 x_84 x_85)))))
(assert (forall ((x_82 list_0) (x_83 list_1) (x_84 list_0) (x_85 list_1))
	(=> (diseqlist_1 x_83 x_85)
	    (diseqlist_1 (cons_1 x_82 x_83) (cons_1 x_84 x_85)))))
(declare-fun risers_0 (list_1 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (ys_0 list_0) (yss_0 list_1) (x_12 list_1) (x_11 list_1))
	(=>	(and (= x_12 (cons_1 (cons_0 y_0 ys_0) yss_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(le_0 y_0 y_1)
			(= x_11 (cons_1 ys_0 yss_0))
			(risers_0 x_11 (cons_0 y_1 xs_0)))
		(risers_0 x_12 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_13 list_1) (x_14 list_1))
	(=>	(and (= x_13 (cons_1 (cons_0 y_0 nil_0) x_14))
			(risers_0 x_14 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(gt_0 y_0 y_1))
		(risers_0 x_13 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_16 list_1) (x_15 list_1))
	(=>	(and (= x_16 nil_1)
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(le_0 y_0 y_1)
			(= x_15 nil_1)
			(risers_0 x_15 (cons_0 y_1 xs_0)))
		(risers_0 x_16 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_17 list_1) (x_18 list_1))
	(=>	(and (= x_17 (cons_1 (cons_0 y_0 nil_0) x_18))
			(risers_0 x_18 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0))
			(gt_0 y_0 y_1))
		(risers_0 x_17 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_19 list_1))
	(=>	(and (= x_19 (cons_1 (cons_0 y_0 nil_0) nil_1))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 nil_0))
		(risers_0 x_19 x_0))))
(assert (forall ((x_0 list_0) (x_20 list_1))
	(=>	(and (= x_20 nil_1)
			(= x_0 nil_0))
		(risers_0 x_20 x_0))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_2 list_0) (z_1 Nat_0) (x_2 list_0) (x_3 Nat_0) (x_4 list_0) (x_21 list_0) (x_22 list_0))
	(=>	(and (= x_21 (cons_0 z_1 x_22))
			(lmerge_0 x_22 x_2 (cons_0 x_3 x_4))
			(= x_1 (cons_0 z_1 x_2))
			(= y_2 (cons_0 x_3 x_4))
			(le_0 z_1 x_3))
		(lmerge_0 x_21 x_1 y_2))))
(assert (forall ((x_1 list_0) (y_2 list_0) (z_1 Nat_0) (x_2 list_0) (x_3 Nat_0) (x_4 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_23 (cons_0 x_3 x_24))
			(lmerge_0 x_24 (cons_0 z_1 x_2) x_4)
			(= x_1 (cons_0 z_1 x_2))
			(= y_2 (cons_0 x_3 x_4))
			(gt_0 z_1 x_3))
		(lmerge_0 x_23 x_1 y_2))))
(assert (forall ((x_1 list_0) (y_2 list_0) (z_1 Nat_0) (x_2 list_0) (x_25 list_0))
	(=>	(and (= x_25 (cons_0 z_1 x_2))
			(= x_1 (cons_0 z_1 x_2))
			(= y_2 nil_0))
		(lmerge_0 x_25 x_1 y_2))))
(assert (forall ((x_1 list_0) (y_2 list_0) (x_26 list_0))
	(=>	(and (= x_26 y_2)
			(= x_1 nil_0))
		(lmerge_0 x_26 x_1 y_2))))
(declare-fun pairwise_0 (list_1 list_1) Bool)
(assert (forall ((x_5 list_1) (xs_1 list_0) (y_3 list_1) (ys_1 list_0) (xss_0 list_1) (x_27 list_1) (x_28 list_0) (x_29 list_1))
	(=>	(and (= x_27 (cons_1 x_28 x_29))
			(lmerge_0 x_28 xs_1 ys_1)
			(pairwise_0 x_29 xss_0)
			(= x_5 (cons_1 xs_1 y_3))
			(= y_3 (cons_1 ys_1 xss_0)))
		(pairwise_0 x_27 x_5))))
(assert (forall ((x_5 list_1) (xs_1 list_0) (y_3 list_1) (x_30 list_1))
	(=>	(and (= x_30 (cons_1 xs_1 nil_1))
			(= x_5 (cons_1 xs_1 y_3))
			(= y_3 nil_1))
		(pairwise_0 x_30 x_5))))
(assert (forall ((x_5 list_1) (x_31 list_1))
	(=>	(and (= x_31 nil_1)
			(= x_5 nil_1))
		(pairwise_0 x_31 x_5))))
(declare-fun mergingbu_0 (list_0 list_1) Bool)
(assert (forall ((x_6 list_1) (xs_2 list_0) (y_4 list_1) (z_2 list_0) (x_7 list_1) (x_32 list_0) (x_33 list_1) (x_34 list_0))
	(=>	(and (= x_32 x_34)
			(pairwise_0 x_33 (cons_1 xs_2 (cons_1 z_2 x_7)))
			(mergingbu_0 x_34 x_33)
			(= x_6 (cons_1 xs_2 y_4))
			(= y_4 (cons_1 z_2 x_7)))
		(mergingbu_0 x_32 x_6))))
(assert (forall ((x_6 list_1) (xs_2 list_0) (y_4 list_1) (x_35 list_0))
	(=>	(and (= x_35 xs_2)
			(= x_6 (cons_1 xs_2 y_4))
			(= y_4 nil_1))
		(mergingbu_0 x_35 x_6))))
(assert (forall ((x_6 list_1) (x_36 list_0))
	(=>	(and (= x_36 nil_0)
			(= x_6 nil_1))
		(mergingbu_0 x_36 x_6))))
(declare-fun msortbu_0 (list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (x_37 list_0) (x_38 list_1) (x_39 list_0))
	(=>	(and (= x_37 x_39)
			(risers_0 x_38 x_8)
			(mergingbu_0 x_39 x_38))
		(msortbu_0 x_37 x_8))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_9 Nat_0) (y_5 list_0) (z_3 Nat_0) (ys_2 list_0) (x_40 Nat_0) (x_41 Nat_0) (x_49 Nat_0))
	(=>	(and (= x_40 x_49)
			(count_0 x_41 x_9 ys_2)
			(= y_5 (cons_0 z_3 ys_2))
			(= x_9 z_3)
			(add_0 x_49 (S_0 Z_0) x_41))
		(count_0 x_40 x_9 y_5))))
(assert (forall ((x_9 Nat_0) (y_5 list_0) (z_3 Nat_0) (ys_2 list_0) (x_42 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_42 x_43)
			(count_0 x_43 x_9 ys_2)
			(= y_5 (cons_0 z_3 ys_2))
			(diseqNat_0 x_9 z_3))
		(count_0 x_42 x_9 y_5))))
(assert (forall ((x_9 Nat_0) (y_5 list_0) (x_44 Nat_0))
	(=>	(and (= x_44 Z_0)
			(= y_5 nil_0))
		(count_0 x_44 x_9 y_5))))
(assert (forall ((x_10 Nat_0) (xs_3 list_0) (x_45 list_0) (x_46 Nat_0) (x_47 Nat_0))
	(=>	(and (diseqNat_0 x_46 x_47)
			(msortbu_0 x_45 xs_3)
			(count_0 x_46 x_10 x_45)
			(count_0 x_47 x_10 xs_3))
		false)))
(check-sat)
