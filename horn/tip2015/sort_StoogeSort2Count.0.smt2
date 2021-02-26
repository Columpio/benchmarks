(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_73 Nat_0) (x_72 Nat_0))
	(=> (= x_73 (S_0 x_72))
	    (unS_1 x_72 x_73))))
(assert (isZ_0 Z_0))
(assert (forall ((x_74 Nat_0))
	(isS_0 (S_0 x_74))))
(assert (forall ((x_75 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_75))))
(assert (forall ((x_76 Nat_0))
	(diseqNat_0 (S_0 x_76) Z_0)))
(assert (forall ((x_77 Nat_0) (x_78 Nat_0))
	(=> (diseqNat_0 x_77 x_78)
	    (diseqNat_0 (S_0 x_77) (S_0 x_78)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_9 Nat_0))
	(add_0 y_9 Z_0 y_9)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_62 y_9)
	    (add_0 (S_0 r_0) (S_0 x_62) y_9))))
(assert (forall ((y_9 Nat_0))
	(minus_0 Z_0 Z_0 y_9)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_62 y_9)
	    (minus_0 (S_0 r_0) (S_0 x_62) y_9))))
(assert (forall ((y_9 Nat_0))
	(le_0 Z_0 y_9)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (le_0 x_62 y_9)
	    (le_0 (S_0 x_62) (S_0 y_9)))))
(assert (forall ((y_9 Nat_0))
	(ge_0 y_9 Z_0)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (ge_0 x_62 y_9)
	    (ge_0 (S_0 x_62) (S_0 y_9)))))
(assert (forall ((y_9 Nat_0))
	(lt_0 Z_0 (S_0 y_9))))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (lt_0 x_62 y_9)
	    (lt_0 (S_0 x_62) (S_0 y_9)))))
(assert (forall ((y_9 Nat_0))
	(gt_0 (S_0 y_9) Z_0)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (gt_0 x_62 y_9)
	    (gt_0 (S_0 x_62) (S_0 y_9)))))
(assert (forall ((y_9 Nat_0))
	(mult_0 Z_0 Z_0 y_9)))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (mult_0 r_0 x_62 y_9)
			(add_0 z_5 r_0 y_9))
		(mult_0 z_5 (S_0 x_62) y_9))))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (lt_0 x_62 y_9)
	    (div_0 Z_0 x_62 y_9))))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_62 y_9)
			(minus_0 z_5 x_62 y_9)
			(div_0 r_0 z_5 y_9))
		(div_0 (S_0 r_0) x_62 y_9))))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0))
	(=> (lt_0 x_62 y_9)
	    (mod_0 x_62 x_62 y_9))))
(assert (forall ((x_62 Nat_0) (y_9 Nat_0) (r_0 Nat_0) (z_5 Nat_0))
	(=>	(and (ge_0 x_62 y_9)
			(minus_0 z_5 x_62 y_9)
			(mod_0 r_0 z_5 y_9))
		(mod_0 r_0 x_62 y_9))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_82 list_0) (x_80 Nat_0) (x_81 list_0))
	(=> (= x_82 (cons_0 x_80 x_81))
	    (head_1 x_80 x_82))))
(assert (forall ((x_82 list_0) (x_80 Nat_0) (x_81 list_0))
	(=> (= x_82 (cons_0 x_80 x_81))
	    (tail_1 x_81 x_82))))
(assert (isnil_0 nil_0))
(assert (forall ((x_83 Nat_0) (x_84 list_0))
	(iscons_0 (cons_0 x_83 x_84))))
(assert (forall ((x_85 Nat_0) (x_86 list_0))
	(diseqlist_0 nil_0 (cons_0 x_85 x_86))))
(assert (forall ((x_87 Nat_0) (x_88 list_0))
	(diseqlist_0 (cons_0 x_87 x_88) nil_0)))
(assert (forall ((x_89 Nat_0) (x_90 list_0) (x_91 Nat_0) (x_92 list_0))
	(=> (diseqNat_0 x_89 x_91)
	    (diseqlist_0 (cons_0 x_89 x_90) (cons_0 x_91 x_92)))))
(assert (forall ((x_89 Nat_0) (x_90 list_0) (x_91 Nat_0) (x_92 list_0))
	(=> (diseqlist_0 x_90 x_92)
	    (diseqlist_0 (cons_0 x_89 x_90) (cons_0 x_91 x_92)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_0 pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_95 pair_0) (x_93 list_0) (x_94 list_0))
	(=> (= x_95 (pair_1 x_93 x_94))
	    (projpair_2 x_93 x_95))))
(assert (forall ((x_95 pair_0) (x_93 list_0) (x_94 list_0))
	(=> (= x_95 (pair_1 x_93 x_94))
	    (projpair_3 x_94 x_95))))
(assert (forall ((x_96 list_0) (x_97 list_0))
	(ispair_0 (pair_1 x_96 x_97))))
(assert (forall ((x_98 list_0) (x_99 list_0) (x_100 list_0) (x_101 list_0))
	(=> (diseqlist_0 x_98 x_100)
	    (diseqpair_0 (pair_1 x_98 x_99) (pair_1 x_100 x_101)))))
(assert (forall ((x_98 list_0) (x_99 list_0) (x_100 list_0) (x_101 list_0))
	(=> (diseqlist_0 x_99 x_101)
	    (diseqpair_0 (pair_1 x_98 x_99) (pair_1 x_100 x_101)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_15 list_0))
	(=>	(and (= x_15 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_15 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_16 list_0) (x_17 list_0) (x_63 Nat_0))
	(=>	(and (= x_16 (cons_0 z_0 x_17))
			(take_0 x_17 x_63 xs_0)
			(gt_0 x_0 Z_0)
			(= y_0 (cons_0 z_0 xs_0))
			(minus_0 x_63 x_0 (S_0 Z_0)))
		(take_0 x_16 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_18 list_0))
	(=>	(and (= x_18 nil_0)
			(le_0 x_0 Z_0))
		(take_0 x_18 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_19 list_0))
	(=>	(and (= x_19 nil_0)
			(gt_0 x_0 Z_0)
			(= y_0 nil_0))
		(take_0 x_19 x_0 y_0))))
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_20 list_0))
	(=>	(and (= x_20 (cons_0 x_1 (cons_0 y_1 nil_0)))
			(le_0 x_1 y_1))
		(sort_0 x_20 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_21 list_0))
	(=>	(and (= x_21 (cons_0 y_1 (cons_0 x_1 nil_0)))
			(gt_0 x_1 y_1))
		(sort_0 x_21 x_1 y_1))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_2 Nat_0) (l_0 list_0) (x_22 Nat_0) (x_23 Nat_0) (x_64 Nat_0))
	(=>	(and (= x_22 x_64)
			(length_0 x_23 l_0)
			(= x_2 (cons_0 y_2 l_0))
			(add_0 x_64 (S_0 Z_0) x_23))
		(length_0 x_22 x_2))))
(assert (forall ((x_2 list_0) (x_24 Nat_0))
	(=>	(and (= x_24 Z_0)
			(= x_2 nil_0))
		(length_0 x_24 x_2))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_3 list_0) (x_25 list_0))
	(=>	(and (= x_25 y_3)
			(le_0 x_3 Z_0))
		(drop_0 x_25 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 list_0) (z_1 Nat_0) (xs_1 list_0) (x_26 list_0) (x_27 list_0) (x_65 Nat_0))
	(=>	(and (= x_26 x_27)
			(drop_0 x_27 x_65 xs_1)
			(gt_0 x_3 Z_0)
			(= y_3 (cons_0 z_1 xs_1))
			(minus_0 x_65 x_3 (S_0 Z_0)))
		(drop_0 x_26 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 list_0) (x_28 list_0))
	(=>	(and (= x_28 y_3)
			(le_0 x_3 Z_0))
		(drop_0 x_28 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 list_0) (x_29 list_0))
	(=>	(and (= x_29 nil_0)
			(gt_0 x_3 Z_0)
			(= y_3 nil_0))
		(drop_0 x_29 x_3 y_3))))
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(assert (forall ((x_4 Nat_0) (y_4 list_0) (x_30 pair_0) (x_31 list_0) (x_32 list_0))
	(=>	(and (= x_30 (pair_1 x_31 x_32))
			(take_0 x_31 x_4 y_4)
			(drop_0 x_32 x_4 y_4))
		(splitAt_0 x_30 x_4 y_4))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_5 Nat_0) (y_5 list_0) (z_2 Nat_0) (ys_0 list_0) (x_33 Nat_0) (x_34 Nat_0) (x_66 Nat_0))
	(=>	(and (= x_33 x_66)
			(count_0 x_34 x_5 ys_0)
			(= y_5 (cons_0 z_2 ys_0))
			(= x_5 z_2)
			(add_0 x_66 (S_0 Z_0) x_34))
		(count_0 x_33 x_5 y_5))))
(assert (forall ((x_5 Nat_0) (y_5 list_0) (z_2 Nat_0) (ys_0 list_0) (x_35 Nat_0) (x_36 Nat_0))
	(=>	(and (= x_35 x_36)
			(count_0 x_36 x_5 ys_0)
			(= y_5 (cons_0 z_2 ys_0))
			(diseqNat_0 x_5 z_2))
		(count_0 x_35 x_5 y_5))))
(assert (forall ((x_5 Nat_0) (y_5 list_0) (x_37 Nat_0))
	(=>	(and (= x_37 Z_0)
			(= y_5 nil_0))
		(count_0 x_37 x_5 y_5))))
(declare-fun x_6 (list_0 list_0 list_0) Bool)
(assert (forall ((x_7 list_0) (y_6 list_0) (z_3 Nat_0) (xs_2 list_0) (x_38 list_0) (x_39 list_0))
	(=>	(and (= x_38 (cons_0 z_3 x_39))
			(x_6 x_39 xs_2 y_6)
			(= x_7 (cons_0 z_3 xs_2)))
		(x_6 x_38 x_7 y_6))))
(assert (forall ((x_7 list_0) (y_6 list_0) (x_40 list_0))
	(=>	(and (= x_40 y_6)
			(= x_7 nil_0))
		(x_6 x_40 x_7 y_6))))
(declare-fun stoogesort_0 (list_0 list_0) Bool)
(declare-fun stoogesort_1 (list_0 list_0) Bool)
(declare-fun stoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (ys_1 list_0) (zs_0 list_0) (x_43 list_0) (x_44 list_0) (x_45 list_0) (x_41 Nat_0) (x_42 pair_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0))
	(=>	(and (= x_43 x_45)
			(stoogesort_1 x_44 ys_1)
			(x_6 x_45 x_44 zs_0)
			(= x_42 (pair_1 ys_1 zs_0))
			(length_0 x_41 x_8)
			(splitAt_0 x_42 x_69 x_8)
			(mult_0 x_67 (S_0 (S_0 Z_0)) x_41)
			(add_0 x_68 x_67 (S_0 Z_0))
			(div_0 x_69 x_68 (S_0 (S_0 (S_0 Z_0)))))
		(stoogesort_0 x_43 x_8))))
(assert (forall ((x_9 list_0) (y_7 Nat_0) (z_4 list_0) (y_8 Nat_0) (x_10 list_0) (x_11 Nat_0) (x_12 list_0) (x_46 list_0) (x_47 list_0) (x_48 list_0) (x_49 list_0))
	(=>	(and (= x_46 x_49)
			(stoogesort_0 x_47 (cons_0 y_7 (cons_0 y_8 (cons_0 x_11 x_12))))
			(stoogesort_2 x_48 x_47)
			(stoogesort_0 x_49 x_48)
			(= x_9 (cons_0 y_7 z_4))
			(= z_4 (cons_0 y_8 x_10))
			(= x_10 (cons_0 x_11 x_12)))
		(stoogesort_1 x_46 x_9))))
(assert (forall ((x_9 list_0) (y_7 Nat_0) (z_4 list_0) (y_8 Nat_0) (x_10 list_0) (x_50 list_0) (x_51 list_0))
	(=>	(and (= x_50 x_51)
			(sort_0 x_51 y_7 y_8)
			(= x_9 (cons_0 y_7 z_4))
			(= z_4 (cons_0 y_8 x_10))
			(= x_10 nil_0))
		(stoogesort_1 x_50 x_9))))
(assert (forall ((x_9 list_0) (y_7 Nat_0) (z_4 list_0) (x_52 list_0))
	(=>	(and (= x_52 (cons_0 y_7 nil_0))
			(= x_9 (cons_0 y_7 z_4))
			(= z_4 nil_0))
		(stoogesort_1 x_52 x_9))))
(assert (forall ((x_9 list_0) (x_53 list_0))
	(=>	(and (= x_53 nil_0)
			(= x_9 nil_0))
		(stoogesort_1 x_53 x_9))))
(assert (forall ((x_13 list_0) (ys_2 list_0) (zs_1 list_0) (x_56 list_0) (x_57 list_0) (x_58 list_0) (x_54 Nat_0) (x_55 pair_0) (x_70 Nat_0))
	(=>	(and (= x_56 x_58)
			(stoogesort_1 x_57 zs_1)
			(x_6 x_58 ys_2 x_57)
			(= x_55 (pair_1 ys_2 zs_1))
			(length_0 x_54 x_13)
			(splitAt_0 x_55 x_70 x_13)
			(div_0 x_70 x_54 (S_0 (S_0 (S_0 Z_0)))))
		(stoogesort_2 x_56 x_13))))
(assert (forall ((x_14 Nat_0) (xs_3 list_0) (x_59 list_0) (x_60 Nat_0) (x_61 Nat_0))
	(=>	(and (diseqNat_0 x_60 x_61)
			(stoogesort_1 x_59 xs_3)
			(count_0 x_60 x_14 x_59)
			(count_0 x_61 x_14 xs_3))
		false)))
(check-sat)
