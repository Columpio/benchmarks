(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_90 Nat_1) (x_89 Nat_1))
	(=> (= x_90 (S_0 x_89))
	    (unS_1 x_89 x_90))))
(assert (isZ_0 Z_0))
(assert (forall ((x_91 Nat_1))
	(isS_0 (S_0 x_91))))
(assert (forall ((x_92 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_92))))
(assert (forall ((x_93 Nat_1))
	(diseqNat_0 (S_0 x_93) Z_0)))
(assert (forall ((x_94 Nat_1) (x_95 Nat_1))
	(=> (diseqNat_0 x_94 x_95)
	    (diseqNat_0 (S_0 x_94) (S_0 x_95)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_1 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_15 Nat_1))
	(add_0 y_15 Z_0 y_15)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_87 y_15)
	    (add_0 (S_0 r_0) (S_0 x_87) y_15))))
(assert (forall ((y_15 Nat_1))
	(minus_1 Z_0 Z_0 y_15)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1) (r_0 Nat_1))
	(=> (minus_1 r_0 x_87 y_15)
	    (minus_1 (S_0 r_0) (S_0 x_87) y_15))))
(assert (forall ((y_15 Nat_1))
	(le_0 Z_0 y_15)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (le_0 x_87 y_15)
	    (le_0 (S_0 x_87) (S_0 y_15)))))
(assert (forall ((y_15 Nat_1))
	(ge_0 y_15 Z_0)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (ge_0 x_87 y_15)
	    (ge_0 (S_0 x_87) (S_0 y_15)))))
(assert (forall ((y_15 Nat_1))
	(lt_1 Z_0 (S_0 y_15))))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (lt_1 x_87 y_15)
	    (lt_1 (S_0 x_87) (S_0 y_15)))))
(assert (forall ((y_15 Nat_1))
	(gt_0 (S_0 y_15) Z_0)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (gt_0 x_87 y_15)
	    (gt_0 (S_0 x_87) (S_0 y_15)))))
(assert (forall ((y_15 Nat_1))
	(mult_0 Z_0 Z_0 y_15)))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (mult_0 r_0 x_87 y_15)
			(add_0 z_12 r_0 y_15))
		(mult_0 z_12 (S_0 x_87) y_15))))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (lt_1 x_87 y_15)
	    (div_0 Z_0 x_87 y_15))))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_87 y_15)
			(minus_1 z_12 x_87 y_15)
			(div_0 r_0 z_12 y_15))
		(div_0 (S_0 r_0) x_87 y_15))))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1))
	(=> (lt_1 x_87 y_15)
	    (mod_0 x_87 x_87 y_15))))
(assert (forall ((x_87 Nat_1) (y_15 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_87 y_15)
			(minus_1 z_12 x_87 y_15)
			(mod_0 r_0 z_12 y_15))
		(mod_0 r_0 x_87 y_15))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_98 Nat_0) (x_97 Nat_0))
	(=> (= x_98 (succ_0 x_97))
	    (p_1 x_97 x_98))))
(assert (iszero_0 zero_0))
(assert (forall ((x_99 Nat_0))
	(issucc_0 (succ_0 x_99))))
(assert (forall ((x_100 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_100))))
(assert (forall ((x_101 Nat_0))
	(diseqNat_1 (succ_0 x_101) zero_0)))
(assert (forall ((x_102 Nat_0) (x_103 Nat_0))
	(=> (diseqNat_1 x_102 x_103)
	    (diseqNat_1 (succ_0 x_102) (succ_0 x_103)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_107 list_0) (x_105 Nat_0) (x_106 list_0))
	(=> (= x_107 (cons_0 x_105 x_106))
	    (head_1 x_105 x_107))))
(assert (forall ((x_107 list_0) (x_105 Nat_0) (x_106 list_0))
	(=> (= x_107 (cons_0 x_105 x_106))
	    (tail_1 x_106 x_107))))
(assert (isnil_0 nil_0))
(assert (forall ((x_108 Nat_0) (x_109 list_0))
	(iscons_0 (cons_0 x_108 x_109))))
(assert (forall ((x_110 Nat_0) (x_111 list_0))
	(diseqlist_0 nil_0 (cons_0 x_110 x_111))))
(assert (forall ((x_112 Nat_0) (x_113 list_0))
	(diseqlist_0 (cons_0 x_112 x_113) nil_0)))
(assert (forall ((x_114 Nat_0) (x_115 list_0) (x_116 Nat_0) (x_117 list_0))
	(=> (diseqNat_1 x_114 x_116)
	    (diseqlist_0 (cons_0 x_114 x_115) (cons_0 x_116 x_117)))))
(assert (forall ((x_114 Nat_0) (x_115 list_0) (x_116 Nat_0) (x_117 list_0))
	(=> (diseqlist_0 x_115 x_117)
	    (diseqlist_0 (cons_0 x_114 x_115) (cons_0 x_116 x_117)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (z_1 Nat_0) (xs_0 list_0) (x_21 list_0) (x_22 list_0))
	(=>	(and (= x_21 (cons_0 z_1 x_22))
			(take_0 x_22 z_0 xs_0)
			(= x_0 (succ_0 z_0))
			(= y_0 (cons_0 z_1 xs_0)))
		(take_0 x_21 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_23 list_0))
	(=>	(and (= x_23 nil_0)
			(= x_0 (succ_0 z_0))
			(= y_0 nil_0))
		(take_0 x_23 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_24 list_0))
	(=>	(and (= x_24 nil_0)
			(= x_0 zero_0))
		(take_0 x_24 x_0 y_0))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_2 Nat_0) (x_25 Nat_0) (x_26 Nat_0))
	(=>	(and (= x_25 (succ_0 x_26))
			(plus_0 x_26 z_2 y_1)
			(= x_1 (succ_0 z_2)))
		(plus_0 x_25 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_27 Nat_0))
	(=>	(and (= x_27 y_1)
			(= x_1 zero_0))
		(plus_0 x_27 x_1 y_1))))
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (y_3 Nat_0) (x_28 Nat_0) (x_29 Nat_0))
	(=>	(and (= x_28 x_29)
			(minus_0 x_29 z_3 y_3)
			(= x_2 (succ_0 z_3))
			(= y_2 (succ_0 y_3)))
		(minus_0 x_28 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (x_30 Nat_0))
	(=>	(and (= x_30 zero_0)
			(= x_2 (succ_0 z_3))
			(= y_2 zero_0))
		(minus_0 x_30 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_31 Nat_0))
	(=>	(and (= x_31 zero_0)
			(= x_2 zero_0))
		(minus_0 x_31 x_2 y_2))))
(declare-fun lt_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (n_0 Nat_0) (x_32 Bool) (x_33 Bool))
	(=>	(and (= x_32 x_33)
			(lt_0 x_33 n_0 z_4)
			(= y_4 (succ_0 z_4))
			(= x_3 (succ_0 n_0)))
		(lt_0 x_32 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_34 Bool))
	(=>	(and (= x_34 true)
			(= y_4 (succ_0 z_4))
			(= x_3 zero_0))
		(lt_0 x_34 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (x_35 Bool))
	(=>	(and (= x_35 false)
			(= y_4 zero_0))
		(lt_0 x_35 x_3 y_4))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_5 Nat_0) (x_36 Bool) (x_37 Bool))
	(=>	(and (= x_36 x_37)
			(leq_0 x_37 z_5 x_5)
			(= x_4 (succ_0 z_5))
			(= y_5 (succ_0 x_5)))
		(leq_0 x_36 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_38 Bool))
	(=>	(and (= x_38 false)
			(= x_4 (succ_0 z_5))
			(= y_5 zero_0))
		(leq_0 x_38 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (x_39 Bool))
	(=>	(and (= x_39 true)
			(= x_4 zero_0))
		(leq_0 x_39 x_4 y_5))))
(declare-fun lmerge_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_6 list_0) (y_6 list_0) (z_6 Nat_0) (x_7 list_0) (x_8 Nat_0) (x_9 list_0) (x_41 list_0) (x_42 list_0) (x_40 Bool))
	(=>	(and (= x_41 (cons_0 z_6 x_42))
			(lmerge_0 x_42 x_7 (cons_0 x_8 x_9))
			(= x_6 (cons_0 z_6 x_7))
			(= y_6 (cons_0 x_8 x_9))
			(= x_40 true)
			(leq_0 x_40 z_6 x_8))
		(lmerge_0 x_41 x_6 y_6))))
(assert (forall ((x_6 list_0) (y_6 list_0) (z_6 Nat_0) (x_7 list_0) (x_8 Nat_0) (x_9 list_0) (x_44 list_0) (x_45 list_0) (x_43 Bool))
	(=>	(and (= x_44 (cons_0 x_8 x_45))
			(lmerge_0 x_45 (cons_0 z_6 x_7) x_9)
			(= x_6 (cons_0 z_6 x_7))
			(= y_6 (cons_0 x_8 x_9))
			(= x_43 false)
			(leq_0 x_43 z_6 x_8))
		(lmerge_0 x_44 x_6 y_6))))
(assert (forall ((x_6 list_0) (y_6 list_0) (z_6 Nat_0) (x_7 list_0) (x_46 list_0))
	(=>	(and (= x_46 (cons_0 z_6 x_7))
			(= x_6 (cons_0 z_6 x_7))
			(= y_6 nil_0))
		(lmerge_0 x_46 x_6 y_6))))
(assert (forall ((x_6 list_0) (y_6 list_0) (x_47 list_0))
	(=>	(and (= x_47 y_6)
			(= x_6 nil_0))
		(lmerge_0 x_47 x_6 y_6))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_10 list_0) (y_7 Nat_0) (z_7 list_0) (y_8 Nat_0) (xs_1 list_0) (x_48 Bool) (x_49 Bool) (x_50 Bool))
	(=>	(and (= x_48 (and x_49 x_50))
			(leq_0 x_49 y_7 y_8)
			(ordered_0 x_50 (cons_0 y_8 xs_1))
			(= x_10 (cons_0 y_7 z_7))
			(= z_7 (cons_0 y_8 xs_1)))
		(ordered_0 x_48 x_10))))
(assert (forall ((x_10 list_0) (y_7 Nat_0) (z_7 list_0) (x_51 Bool))
	(=>	(and (= x_51 true)
			(= x_10 (cons_0 y_7 z_7))
			(= z_7 nil_0))
		(ordered_0 x_51 x_10))))
(assert (forall ((x_10 list_0) (x_52 Bool))
	(=>	(and (= x_52 true)
			(= x_10 nil_0))
		(ordered_0 x_52 x_10))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_11 list_0) (y_9 Nat_0) (l_0 list_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0))
	(=>	(and (= x_53 x_55)
			(length_0 x_54 l_0)
			(plus_0 x_55 (succ_0 zero_0) x_54)
			(= x_11 (cons_0 y_9 l_0)))
		(length_0 x_53 x_11))))
(assert (forall ((x_11 list_0) (x_56 Nat_0))
	(=>	(and (= x_56 zero_0)
			(= x_11 nil_0))
		(length_0 x_56 x_11))))
(declare-fun idiv_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_12 Nat_0) (y_10 Nat_0) (x_58 Nat_0) (x_57 Bool))
	(=>	(and (= x_58 zero_0)
			(= x_57 true)
			(lt_0 x_57 x_12 y_10))
		(idiv_0 x_58 x_12 y_10))))
(assert (forall ((x_12 Nat_0) (y_10 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_59 Bool))
	(=>	(and (= x_60 (succ_0 x_62))
			(minus_0 x_61 x_12 y_10)
			(idiv_0 x_62 x_61 y_10)
			(= x_59 false)
			(lt_0 x_59 x_12 y_10))
		(idiv_0 x_60 x_12 y_10))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_13 Nat_0) (y_11 list_0) (z_8 Nat_0) (z_9 Nat_0) (xs_2 list_0) (x_63 list_0) (x_64 list_0))
	(=>	(and (= x_63 x_64)
			(drop_0 x_64 z_8 xs_2)
			(= x_13 (succ_0 z_8))
			(= y_11 (cons_0 z_9 xs_2)))
		(drop_0 x_63 x_13 y_11))))
(assert (forall ((x_13 Nat_0) (y_11 list_0) (z_8 Nat_0) (x_65 list_0))
	(=>	(and (= x_65 nil_0)
			(= x_13 (succ_0 z_8))
			(= y_11 nil_0))
		(drop_0 x_65 x_13 y_11))))
(assert (forall ((x_13 Nat_0) (y_11 list_0) (x_66 list_0))
	(=>	(and (= x_66 y_11)
			(= x_13 zero_0))
		(drop_0 x_66 x_13 y_11))))
(declare-fun msorttd_0 (list_0 list_0) Bool)
(assert (forall ((x_14 list_0) (y_12 Nat_0) (z_10 list_0) (x_15 Nat_0) (x_16 list_0) (k_0 Nat_0) (x_69 list_0) (x_70 list_0) (x_71 list_0) (x_72 list_0) (x_73 list_0) (x_74 list_0) (x_67 Nat_0) (x_68 Nat_0))
	(=>	(and (= x_69 x_74)
			(take_0 x_70 k_0 (cons_0 y_12 (cons_0 x_15 x_16)))
			(msorttd_0 x_71 x_70)
			(drop_0 x_72 k_0 (cons_0 y_12 (cons_0 x_15 x_16)))
			(msorttd_0 x_73 x_72)
			(lmerge_0 x_74 x_71 x_73)
			(= x_14 (cons_0 y_12 z_10))
			(= z_10 (cons_0 x_15 x_16))
			(= k_0 x_68)
			(length_0 x_67 (cons_0 y_12 (cons_0 x_15 x_16)))
			(idiv_0 x_68 x_67 (succ_0 (succ_0 zero_0))))
		(msorttd_0 x_69 x_14))))
(assert (forall ((x_14 list_0) (y_12 Nat_0) (z_10 list_0) (x_75 list_0))
	(=>	(and (= x_75 (cons_0 y_12 nil_0))
			(= x_14 (cons_0 y_12 z_10))
			(= z_10 nil_0))
		(msorttd_0 x_75 x_14))))
(assert (forall ((x_14 list_0) (x_76 list_0))
	(=>	(and (= x_76 nil_0)
			(= x_14 nil_0))
		(msorttd_0 x_76 x_14))))
(assert (forall ((x_17 Nat_0) (y_13 Nat_0) (z_11 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_80 Nat_0))
	(=>	(and (diseqNat_1 x_78 x_80)
			(plus_0 x_77 y_13 z_11)
			(plus_0 x_78 x_17 x_77)
			(plus_0 x_79 x_17 y_13)
			(plus_0 x_80 x_79 z_11))
		false)))
(assert (forall ((x_18 Nat_0) (y_14 Nat_0) (x_81 Nat_0) (x_82 Nat_0))
	(=>	(and (diseqNat_1 x_81 x_82)
			(plus_0 x_81 x_18 y_14)
			(plus_0 x_82 y_14 x_18))
		false)))
(assert (forall ((x_19 Nat_0) (x_83 Nat_0))
	(=>	(and (diseqNat_1 x_83 x_19)
			(plus_0 x_83 x_19 zero_0))
		false)))
(assert (forall ((x_20 Nat_0) (x_84 Nat_0))
	(=>	(and (diseqNat_1 x_84 x_20)
			(plus_0 x_84 zero_0 x_20))
		false)))
(assert (forall ((xs_3 list_0) (x_85 list_0) (x_86 Bool))
	(=>	(and (= x_86 false)
			(msorttd_0 x_85 xs_3)
			(ordered_0 x_86 x_85))
		false)))
(check-sat)
