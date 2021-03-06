(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_61 Nat_1) (x_60 Nat_1))
	(=> (= x_61 (S_0 x_60))
	    (unS_1 x_60 x_61))))
(assert (isZ_0 Z_0))
(assert (forall ((x_62 Nat_1))
	(isS_0 (S_0 x_62))))
(assert (forall ((x_63 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_63))))
(assert (forall ((x_64 Nat_1))
	(diseqNat_0 (S_0 x_64) Z_0)))
(assert (forall ((x_65 Nat_1) (x_66 Nat_1))
	(=> (diseqNat_0 x_65 x_66)
	    (diseqNat_0 (S_0 x_65) (S_0 x_66)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_8 Nat_1))
	(add_0 y_8 Z_0 y_8)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_58 y_8)
	    (add_0 (S_0 r_0) (S_0 x_58) y_8))))
(assert (forall ((y_8 Nat_1))
	(minus_0 Z_0 Z_0 y_8)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_58 y_8)
	    (minus_0 (S_0 r_0) (S_0 x_58) y_8))))
(assert (forall ((y_8 Nat_1))
	(le_0 Z_0 y_8)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (le_0 x_58 y_8)
	    (le_0 (S_0 x_58) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(ge_0 y_8 Z_0)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (ge_0 x_58 y_8)
	    (ge_0 (S_0 x_58) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(lt_0 Z_0 (S_0 y_8))))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_58 y_8)
	    (lt_0 (S_0 x_58) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(gt_0 (S_0 y_8) Z_0)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (gt_0 x_58 y_8)
	    (gt_0 (S_0 x_58) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(mult_0 Z_0 Z_0 y_8)))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (mult_0 r_0 x_58 y_8)
			(add_0 z_5 r_0 y_8))
		(mult_0 z_5 (S_0 x_58) y_8))))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_58 y_8)
	    (div_0 Z_0 x_58 y_8))))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_58 y_8)
			(minus_0 z_5 x_58 y_8)
			(div_0 r_0 z_5 y_8))
		(div_0 (S_0 r_0) x_58 y_8))))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_58 y_8)
	    (mod_0 x_58 x_58 y_8))))
(assert (forall ((x_58 Nat_1) (y_8 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_58 y_8)
			(minus_0 z_5 x_58 y_8)
			(mod_0 r_0 z_5 y_8))
		(mod_0 r_0 x_58 y_8))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_69 Nat_0) (x_68 Nat_0))
	(=> (= x_69 (succ_0 x_68))
	    (p_1 x_68 x_69))))
(assert (iszero_0 zero_0))
(assert (forall ((x_70 Nat_0))
	(issucc_0 (succ_0 x_70))))
(assert (forall ((x_71 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_71))))
(assert (forall ((x_72 Nat_0))
	(diseqNat_1 (succ_0 x_72) zero_0)))
(assert (forall ((x_73 Nat_0) (x_74 Nat_0))
	(=> (diseqNat_1 x_73 x_74)
	    (diseqNat_1 (succ_0 x_73) (succ_0 x_74)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_78 list_0) (x_76 Nat_0) (x_77 list_0))
	(=> (= x_78 (cons_0 x_76 x_77))
	    (head_2 x_76 x_78))))
(assert (forall ((x_78 list_0) (x_76 Nat_0) (x_77 list_0))
	(=> (= x_78 (cons_0 x_76 x_77))
	    (tail_2 x_77 x_78))))
(assert (isnil_0 nil_0))
(assert (forall ((x_79 Nat_0) (x_80 list_0))
	(iscons_0 (cons_0 x_79 x_80))))
(assert (forall ((x_81 Nat_0) (x_82 list_0))
	(diseqlist_0 nil_0 (cons_0 x_81 x_82))))
(assert (forall ((x_83 Nat_0) (x_84 list_0))
	(diseqlist_0 (cons_0 x_83 x_84) nil_0)))
(assert (forall ((x_85 Nat_0) (x_86 list_0) (x_87 Nat_0) (x_88 list_0))
	(=> (diseqNat_1 x_85 x_87)
	    (diseqlist_0 (cons_0 x_85 x_86) (cons_0 x_87 x_88)))))
(assert (forall ((x_85 Nat_0) (x_86 list_0) (x_87 Nat_0) (x_88 list_0))
	(=> (diseqlist_0 x_86 x_88)
	    (diseqlist_0 (cons_0 x_85 x_86) (cons_0 x_87 x_88)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 list_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (list_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_92 list_1) (x_90 list_0) (x_91 list_1))
	(=> (= x_92 (cons_1 x_90 x_91))
	    (head_3 x_90 x_92))))
(assert (forall ((x_92 list_1) (x_90 list_0) (x_91 list_1))
	(=> (= x_92 (cons_1 x_90 x_91))
	    (tail_3 x_91 x_92))))
(assert (isnil_1 nil_1))
(assert (forall ((x_93 list_0) (x_94 list_1))
	(iscons_1 (cons_1 x_93 x_94))))
(assert (forall ((x_95 list_0) (x_96 list_1))
	(diseqlist_1 nil_1 (cons_1 x_95 x_96))))
(assert (forall ((x_97 list_0) (x_98 list_1))
	(diseqlist_1 (cons_1 x_97 x_98) nil_1)))
(assert (forall ((x_99 list_0) (x_100 list_1) (x_101 list_0) (x_102 list_1))
	(=> (diseqlist_0 x_99 x_101)
	    (diseqlist_1 (cons_1 x_99 x_100) (cons_1 x_101 x_102)))))
(assert (forall ((x_99 list_0) (x_100 list_1) (x_101 list_0) (x_102 list_1))
	(=> (diseqlist_1 x_100 x_102)
	    (diseqlist_1 (cons_1 x_99 x_100) (cons_1 x_101 x_102)))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_12 Bool) (x_13 Bool))
	(=>	(and (= x_12 x_13)
			(leq_0 x_13 z_0 x_1)
			(= x_0 (succ_0 z_0))
			(= y_0 (succ_0 x_1)))
		(leq_0 x_12 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_14 Bool))
	(=>	(and (= x_14 false)
			(= x_0 (succ_0 z_0))
			(= y_0 zero_0))
		(leq_0 x_14 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_15 Bool))
	(=>	(and (= x_15 true)
			(= x_0 zero_0))
		(leq_0 x_15 x_0 y_0))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_17 list_0) (x_18 list_0) (x_16 Bool))
	(=>	(and (= x_17 (cons_0 z_1 x_18))
			(lmerge_0 x_18 x_3 (cons_0 x_4 x_5))
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 (cons_0 x_4 x_5))
			(= x_16 true)
			(leq_0 x_16 z_1 x_4))
		(lmerge_0 x_17 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_4 Nat_0) (x_5 list_0) (x_20 list_0) (x_21 list_0) (x_19 Bool))
	(=>	(and (= x_20 (cons_0 x_4 x_21))
			(lmerge_0 x_21 (cons_0 z_1 x_3) x_5)
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 (cons_0 x_4 x_5))
			(= x_19 false)
			(leq_0 x_19 z_1 x_4))
		(lmerge_0 x_20 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (z_1 Nat_0) (x_3 list_0) (x_22 list_0))
	(=>	(and (= x_22 (cons_0 z_1 x_3))
			(= x_2 (cons_0 z_1 x_3))
			(= y_1 nil_0))
		(lmerge_0 x_22 x_2 y_1))))
(assert (forall ((x_2 list_0) (y_1 list_0) (x_23 list_0))
	(=>	(and (= x_23 y_1)
			(= x_2 nil_0))
		(lmerge_0 x_23 x_2 y_1))))
(declare-fun pairwise_0 (list_1 list_1) Bool)
(assert (forall ((x_6 list_1) (xs_0 list_0) (y_2 list_1) (ys_0 list_0) (xss_0 list_1) (x_24 list_1) (x_25 list_0) (x_26 list_1))
	(=>	(and (= x_24 (cons_1 x_25 x_26))
			(lmerge_0 x_25 xs_0 ys_0)
			(pairwise_0 x_26 xss_0)
			(= x_6 (cons_1 xs_0 y_2))
			(= y_2 (cons_1 ys_0 xss_0)))
		(pairwise_0 x_24 x_6))))
(assert (forall ((x_6 list_1) (xs_0 list_0) (y_2 list_1) (x_27 list_1))
	(=>	(and (= x_27 (cons_1 xs_0 nil_1))
			(= x_6 (cons_1 xs_0 y_2))
			(= y_2 nil_1))
		(pairwise_0 x_27 x_6))))
(assert (forall ((x_6 list_1) (x_28 list_1))
	(=>	(and (= x_28 nil_1)
			(= x_6 nil_1))
		(pairwise_0 x_28 x_6))))
(declare-fun mergingbu_0 (list_0 list_1) Bool)
(assert (forall ((x_7 list_1) (xs_1 list_0) (y_3 list_1) (z_2 list_0) (x_8 list_1) (x_29 list_0) (x_30 list_1) (x_31 list_0))
	(=>	(and (= x_29 x_31)
			(pairwise_0 x_30 (cons_1 xs_1 (cons_1 z_2 x_8)))
			(mergingbu_0 x_31 x_30)
			(= x_7 (cons_1 xs_1 y_3))
			(= y_3 (cons_1 z_2 x_8)))
		(mergingbu_0 x_29 x_7))))
(assert (forall ((x_7 list_1) (xs_1 list_0) (y_3 list_1) (x_32 list_0))
	(=>	(and (= x_32 xs_1)
			(= x_7 (cons_1 xs_1 y_3))
			(= y_3 nil_1))
		(mergingbu_0 x_32 x_7))))
(assert (forall ((x_7 list_1) (x_33 list_0))
	(=>	(and (= x_33 nil_0)
			(= x_7 nil_1))
		(mergingbu_0 x_33 x_7))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_9 list_0) (y_4 Nat_0) (z_3 list_0) (y_5 Nat_0) (xs_2 list_0) (x_34 Bool) (x_35 Bool) (x_36 Bool))
	(=>	(and (= x_34 (and x_35 x_36))
			(leq_0 x_35 y_4 y_5)
			(ordered_0 x_36 (cons_0 y_5 xs_2))
			(= x_9 (cons_0 y_4 z_3))
			(= z_3 (cons_0 y_5 xs_2)))
		(ordered_0 x_34 x_9))))
(assert (forall ((x_9 list_0) (y_4 Nat_0) (z_3 list_0) (x_37 Bool))
	(=>	(and (= x_37 true)
			(= x_9 (cons_0 y_4 z_3))
			(= z_3 nil_0))
		(ordered_0 x_37 x_9))))
(assert (forall ((x_9 list_0) (x_38 Bool))
	(=>	(and (= x_38 true)
			(= x_9 nil_0))
		(ordered_0 x_38 x_9))))
(declare-fun risers_0 (list_1 list_0) Bool)
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (y_7 Nat_0) (xs_3 list_0) (ys_1 list_0) (yss_0 list_1) (x_41 list_1) (x_39 Bool) (x_40 list_1))
	(=>	(and (= x_41 (cons_1 (cons_0 y_6 ys_1) yss_0))
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 (cons_0 y_7 xs_3))
			(= x_39 true)
			(= x_40 (cons_1 ys_1 yss_0))
			(leq_0 x_39 y_6 y_7)
			(risers_0 x_40 (cons_0 y_7 xs_3)))
		(risers_0 x_41 x_10))))
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (y_7 Nat_0) (xs_3 list_0) (x_43 list_1) (x_44 list_1) (x_42 Bool))
	(=>	(and (= x_43 (cons_1 (cons_0 y_6 nil_0) x_44))
			(risers_0 x_44 (cons_0 y_7 xs_3))
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 (cons_0 y_7 xs_3))
			(= x_42 false)
			(leq_0 x_42 y_6 y_7))
		(risers_0 x_43 x_10))))
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (y_7 Nat_0) (xs_3 list_0) (x_47 list_1) (x_45 Bool) (x_46 list_1))
	(=>	(and (= x_47 nil_1)
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 (cons_0 y_7 xs_3))
			(= x_45 true)
			(= x_46 nil_1)
			(leq_0 x_45 y_6 y_7)
			(risers_0 x_46 (cons_0 y_7 xs_3)))
		(risers_0 x_47 x_10))))
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (y_7 Nat_0) (xs_3 list_0) (x_49 list_1) (x_50 list_1) (x_48 Bool))
	(=>	(and (= x_49 (cons_1 (cons_0 y_6 nil_0) x_50))
			(risers_0 x_50 (cons_0 y_7 xs_3))
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 (cons_0 y_7 xs_3))
			(= x_48 false)
			(leq_0 x_48 y_6 y_7))
		(risers_0 x_49 x_10))))
(assert (forall ((x_10 list_0) (y_6 Nat_0) (z_4 list_0) (x_51 list_1))
	(=>	(and (= x_51 (cons_1 (cons_0 y_6 nil_0) nil_1))
			(= x_10 (cons_0 y_6 z_4))
			(= z_4 nil_0))
		(risers_0 x_51 x_10))))
(assert (forall ((x_10 list_0) (x_52 list_1))
	(=>	(and (= x_52 nil_1)
			(= x_10 nil_0))
		(risers_0 x_52 x_10))))
(declare-fun msortbu_0 (list_0 list_0) Bool)
(assert (forall ((x_11 list_0) (x_53 list_0) (x_54 list_1) (x_55 list_0))
	(=>	(and (= x_53 x_55)
			(risers_0 x_54 x_11)
			(mergingbu_0 x_55 x_54))
		(msortbu_0 x_53 x_11))))
(assert (forall ((xs_4 list_0) (x_56 list_0) (x_57 Bool))
	(=>	(and (= x_57 false)
			(msortbu_0 x_56 xs_4)
			(ordered_0 x_57 x_56))
		false)))
(check-sat)
