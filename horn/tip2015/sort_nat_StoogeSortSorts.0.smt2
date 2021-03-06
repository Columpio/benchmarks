(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_112 Nat_1) (x_111 Nat_1))
	(=> (= x_112 (S_0 x_111))
	    (unS_1 x_111 x_112))))
(assert (isZ_0 Z_0))
(assert (forall ((x_113 Nat_1))
	(isS_0 (S_0 x_113))))
(assert (forall ((x_114 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_114))))
(assert (forall ((x_115 Nat_1))
	(diseqNat_0 (S_0 x_115) Z_0)))
(assert (forall ((x_116 Nat_1) (x_117 Nat_1))
	(=> (diseqNat_0 x_116 x_117)
	    (diseqNat_0 (S_0 x_116) (S_0 x_117)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_1 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_19 Nat_1))
	(add_0 y_19 Z_0 y_19)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_109 y_19)
	    (add_0 (S_0 r_0) (S_0 x_109) y_19))))
(assert (forall ((y_19 Nat_1))
	(minus_1 Z_0 Z_0 y_19)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1) (r_0 Nat_1))
	(=> (minus_1 r_0 x_109 y_19)
	    (minus_1 (S_0 r_0) (S_0 x_109) y_19))))
(assert (forall ((y_19 Nat_1))
	(le_0 Z_0 y_19)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (le_0 x_109 y_19)
	    (le_0 (S_0 x_109) (S_0 y_19)))))
(assert (forall ((y_19 Nat_1))
	(ge_0 y_19 Z_0)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (ge_0 x_109 y_19)
	    (ge_0 (S_0 x_109) (S_0 y_19)))))
(assert (forall ((y_19 Nat_1))
	(lt_1 Z_0 (S_0 y_19))))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (lt_1 x_109 y_19)
	    (lt_1 (S_0 x_109) (S_0 y_19)))))
(assert (forall ((y_19 Nat_1))
	(gt_0 (S_0 y_19) Z_0)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (gt_0 x_109 y_19)
	    (gt_0 (S_0 x_109) (S_0 y_19)))))
(assert (forall ((y_19 Nat_1))
	(mult_0 Z_0 Z_0 y_19)))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (mult_0 r_0 x_109 y_19)
			(add_0 z_12 r_0 y_19))
		(mult_0 z_12 (S_0 x_109) y_19))))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (lt_1 x_109 y_19)
	    (div_0 Z_0 x_109 y_19))))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_109 y_19)
			(minus_1 z_12 x_109 y_19)
			(div_0 r_0 z_12 y_19))
		(div_0 (S_0 r_0) x_109 y_19))))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1))
	(=> (lt_1 x_109 y_19)
	    (mod_0 x_109 x_109 y_19))))
(assert (forall ((x_109 Nat_1) (y_19 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_109 y_19)
			(minus_1 z_12 x_109 y_19)
			(mod_0 r_0 z_12 y_19))
		(mod_0 r_0 x_109 y_19))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_120 Nat_0) (x_119 Nat_0))
	(=> (= x_120 (succ_0 x_119))
	    (p_1 x_119 x_120))))
(assert (iszero_0 zero_0))
(assert (forall ((x_121 Nat_0))
	(issucc_0 (succ_0 x_121))))
(assert (forall ((x_122 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_122))))
(assert (forall ((x_123 Nat_0))
	(diseqNat_1 (succ_0 x_123) zero_0)))
(assert (forall ((x_124 Nat_0) (x_125 Nat_0))
	(=> (diseqNat_1 x_124 x_125)
	    (diseqNat_1 (succ_0 x_124) (succ_0 x_125)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_129 list_0) (x_127 Nat_0) (x_128 list_0))
	(=> (= x_129 (cons_0 x_127 x_128))
	    (head_1 x_127 x_129))))
(assert (forall ((x_129 list_0) (x_127 Nat_0) (x_128 list_0))
	(=> (= x_129 (cons_0 x_127 x_128))
	    (tail_1 x_128 x_129))))
(assert (isnil_0 nil_0))
(assert (forall ((x_130 Nat_0) (x_131 list_0))
	(iscons_0 (cons_0 x_130 x_131))))
(assert (forall ((x_132 Nat_0) (x_133 list_0))
	(diseqlist_0 nil_0 (cons_0 x_132 x_133))))
(assert (forall ((x_134 Nat_0) (x_135 list_0))
	(diseqlist_0 (cons_0 x_134 x_135) nil_0)))
(assert (forall ((x_136 Nat_0) (x_137 list_0) (x_138 Nat_0) (x_139 list_0))
	(=> (diseqNat_1 x_136 x_138)
	    (diseqlist_0 (cons_0 x_136 x_137) (cons_0 x_138 x_139)))))
(assert (forall ((x_136 Nat_0) (x_137 list_0) (x_138 Nat_0) (x_139 list_0))
	(=> (diseqlist_0 x_137 x_139)
	    (diseqlist_0 (cons_0 x_136 x_137) (cons_0 x_138 x_139)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_0 pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_142 pair_0) (x_140 list_0) (x_141 list_0))
	(=> (= x_142 (pair_1 x_140 x_141))
	    (projpair_2 x_140 x_142))))
(assert (forall ((x_142 pair_0) (x_140 list_0) (x_141 list_0))
	(=> (= x_142 (pair_1 x_140 x_141))
	    (projpair_3 x_141 x_142))))
(assert (forall ((x_143 list_0) (x_144 list_0))
	(ispair_0 (pair_1 x_143 x_144))))
(assert (forall ((x_145 list_0) (x_146 list_0) (x_147 list_0) (x_148 list_0))
	(=> (diseqlist_0 x_145 x_147)
	    (diseqpair_0 (pair_1 x_145 x_146) (pair_1 x_147 x_148)))))
(assert (forall ((x_145 list_0) (x_146 list_0) (x_147 list_0) (x_148 list_0))
	(=> (diseqlist_0 x_146 x_148)
	    (diseqpair_0 (pair_1 x_145 x_146) (pair_1 x_147 x_148)))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (z_1 Nat_0) (xs_0 list_0) (x_25 list_0) (x_26 list_0))
	(=>	(and (= x_25 (cons_0 z_1 x_26))
			(take_0 x_26 z_0 xs_0)
			(= x_0 (succ_0 z_0))
			(= y_0 (cons_0 z_1 xs_0)))
		(take_0 x_25 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_27 list_0))
	(=>	(and (= x_27 nil_0)
			(= x_0 (succ_0 z_0))
			(= y_0 nil_0))
		(take_0 x_27 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_28 list_0))
	(=>	(and (= x_28 nil_0)
			(= x_0 zero_0))
		(take_0 x_28 x_0 y_0))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_2 Nat_0) (x_29 Nat_0) (x_30 Nat_0))
	(=>	(and (= x_29 (succ_0 x_30))
			(plus_0 x_30 z_2 y_1)
			(= x_1 (succ_0 z_2)))
		(plus_0 x_29 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_31 Nat_0))
	(=>	(and (= x_31 y_1)
			(= x_1 zero_0))
		(plus_0 x_31 x_1 y_1))))
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (y_3 Nat_0) (x_32 Nat_0) (x_33 Nat_0))
	(=>	(and (= x_32 x_33)
			(minus_0 x_33 z_3 y_3)
			(= x_2 (succ_0 z_3))
			(= y_2 (succ_0 y_3)))
		(minus_0 x_32 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (x_34 Nat_0))
	(=>	(and (= x_34 zero_0)
			(= x_2 (succ_0 z_3))
			(= y_2 zero_0))
		(minus_0 x_34 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_35 Nat_0))
	(=>	(and (= x_35 zero_0)
			(= x_2 zero_0))
		(minus_0 x_35 x_2 y_2))))
(declare-fun lt_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (n_0 Nat_0) (x_36 Bool) (x_37 Bool))
	(=>	(and (= x_36 x_37)
			(lt_0 x_37 n_0 z_4)
			(= y_4 (succ_0 z_4))
			(= x_3 (succ_0 n_0)))
		(lt_0 x_36 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_38 Bool))
	(=>	(and (= x_38 true)
			(= y_4 (succ_0 z_4))
			(= x_3 zero_0))
		(lt_0 x_38 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (x_39 Bool))
	(=>	(and (= x_39 false)
			(= y_4 zero_0))
		(lt_0 x_39 x_3 y_4))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_5 Nat_0) (x_40 Bool) (x_41 Bool))
	(=>	(and (= x_40 x_41)
			(leq_0 x_41 z_5 x_5)
			(= x_4 (succ_0 z_5))
			(= y_5 (succ_0 x_5)))
		(leq_0 x_40 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_42 Bool))
	(=>	(and (= x_42 false)
			(= x_4 (succ_0 z_5))
			(= y_5 zero_0))
		(leq_0 x_42 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (x_43 Bool))
	(=>	(and (= x_43 true)
			(= x_4 zero_0))
		(leq_0 x_43 x_4 y_5))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_6 list_0) (y_6 Nat_0) (z_6 list_0) (y_7 Nat_0) (xs_1 list_0) (x_44 Bool) (x_45 Bool) (x_46 Bool))
	(=>	(and (= x_44 (and x_45 x_46))
			(leq_0 x_45 y_6 y_7)
			(ordered_0 x_46 (cons_0 y_7 xs_1))
			(= x_6 (cons_0 y_6 z_6))
			(= z_6 (cons_0 y_7 xs_1)))
		(ordered_0 x_44 x_6))))
(assert (forall ((x_6 list_0) (y_6 Nat_0) (z_6 list_0) (x_47 Bool))
	(=>	(and (= x_47 true)
			(= x_6 (cons_0 y_6 z_6))
			(= z_6 nil_0))
		(ordered_0 x_47 x_6))))
(assert (forall ((x_6 list_0) (x_48 Bool))
	(=>	(and (= x_48 true)
			(= x_6 nil_0))
		(ordered_0 x_48 x_6))))
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_7 Nat_0) (y_8 Nat_0) (x_50 list_0) (x_49 Bool))
	(=>	(and (= x_50 (cons_0 x_7 (cons_0 y_8 nil_0)))
			(= x_49 true)
			(leq_0 x_49 x_7 y_8))
		(sort_0 x_50 x_7 y_8))))
(assert (forall ((x_7 Nat_0) (y_8 Nat_0) (x_52 list_0) (x_51 Bool))
	(=>	(and (= x_52 (cons_0 y_8 (cons_0 x_7 nil_0)))
			(= x_51 false)
			(leq_0 x_51 x_7 y_8))
		(sort_0 x_52 x_7 y_8))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_9 Nat_0) (l_0 list_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0))
	(=>	(and (= x_53 x_55)
			(length_0 x_54 l_0)
			(plus_0 x_55 (succ_0 zero_0) x_54)
			(= x_8 (cons_0 y_9 l_0)))
		(length_0 x_53 x_8))))
(assert (forall ((x_8 list_0) (x_56 Nat_0))
	(=>	(and (= x_56 zero_0)
			(= x_8 nil_0))
		(length_0 x_56 x_8))))
(declare-fun idiv_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_9 Nat_0) (y_10 Nat_0) (x_58 Nat_0) (x_57 Bool))
	(=>	(and (= x_58 zero_0)
			(= x_57 true)
			(lt_0 x_57 x_9 y_10))
		(idiv_0 x_58 x_9 y_10))))
(assert (forall ((x_9 Nat_0) (y_10 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_59 Bool))
	(=>	(and (= x_60 (succ_0 x_62))
			(minus_0 x_61 x_9 y_10)
			(idiv_0 x_62 x_61 y_10)
			(= x_59 false)
			(lt_0 x_59 x_9 y_10))
		(idiv_0 x_60 x_9 y_10))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_10 Nat_0) (y_11 list_0) (z_7 Nat_0) (z_8 Nat_0) (xs_2 list_0) (x_63 list_0) (x_64 list_0))
	(=>	(and (= x_63 x_64)
			(drop_0 x_64 z_7 xs_2)
			(= x_10 (succ_0 z_7))
			(= y_11 (cons_0 z_8 xs_2)))
		(drop_0 x_63 x_10 y_11))))
(assert (forall ((x_10 Nat_0) (y_11 list_0) (z_7 Nat_0) (x_65 list_0))
	(=>	(and (= x_65 nil_0)
			(= x_10 (succ_0 z_7))
			(= y_11 nil_0))
		(drop_0 x_65 x_10 y_11))))
(assert (forall ((x_10 Nat_0) (y_11 list_0) (x_66 list_0))
	(=>	(and (= x_66 y_11)
			(= x_10 zero_0))
		(drop_0 x_66 x_10 y_11))))
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(assert (forall ((x_11 Nat_0) (y_12 list_0) (x_67 pair_0) (x_68 list_0) (x_69 list_0))
	(=>	(and (= x_67 (pair_1 x_68 x_69))
			(take_0 x_68 x_11 y_12)
			(drop_0 x_69 x_11 y_12))
		(splitAt_0 x_67 x_11 y_12))))
(declare-fun x_12 (list_0 list_0 list_0) Bool)
(assert (forall ((x_13 list_0) (y_13 list_0) (z_9 Nat_0) (xs_3 list_0) (x_70 list_0) (x_71 list_0))
	(=>	(and (= x_70 (cons_0 z_9 x_71))
			(x_12 x_71 xs_3 y_13)
			(= x_13 (cons_0 z_9 xs_3)))
		(x_12 x_70 x_13 y_13))))
(assert (forall ((x_13 list_0) (y_13 list_0) (x_72 list_0))
	(=>	(and (= x_72 y_13)
			(= x_13 nil_0))
		(x_12 x_72 x_13 y_13))))
(declare-fun reverse_0 (list_0 list_0) Bool)
(assert (forall ((x_14 list_0) (y_14 Nat_0) (xs_4 list_0) (x_73 list_0) (x_74 list_0) (x_75 list_0))
	(=>	(and (= x_73 x_75)
			(reverse_0 x_74 xs_4)
			(x_12 x_75 x_74 (cons_0 y_14 nil_0))
			(= x_14 (cons_0 y_14 xs_4)))
		(reverse_0 x_73 x_14))))
(assert (forall ((x_14 list_0) (x_76 list_0))
	(=>	(and (= x_76 nil_0)
			(= x_14 nil_0))
		(reverse_0 x_76 x_14))))
(declare-fun stoogesort_0 (list_0 list_0) Bool)
(declare-fun stoogesort_1 (list_0 list_0) Bool)
(declare-fun stoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_15 list_0) (ys_0 list_0) (zs_0 list_0) (x_81 list_0) (x_82 list_0) (x_83 list_0) (x_84 list_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 list_0) (x_80 pair_0))
	(=>	(and (= x_81 x_84)
			(stoogesort_1 x_82 zs_0)
			(reverse_0 x_83 ys_0)
			(x_12 x_84 x_82 x_83)
			(= x_80 (pair_1 ys_0 zs_0))
			(length_0 x_77 x_15)
			(idiv_0 x_78 x_77 (succ_0 (succ_0 (succ_0 zero_0))))
			(reverse_0 x_79 x_15)
			(splitAt_0 x_80 x_78 x_79))
		(stoogesort_0 x_81 x_15))))
(assert (forall ((x_16 list_0) (y_15 Nat_0) (z_10 list_0) (y_16 Nat_0) (x_17 list_0) (x_18 Nat_0) (x_19 list_0) (x_85 list_0) (x_86 list_0) (x_87 list_0) (x_88 list_0))
	(=>	(and (= x_85 x_88)
			(stoogesort_0 x_86 (cons_0 y_15 (cons_0 y_16 (cons_0 x_18 x_19))))
			(stoogesort_2 x_87 x_86)
			(stoogesort_0 x_88 x_87)
			(= x_16 (cons_0 y_15 z_10))
			(= z_10 (cons_0 y_16 x_17))
			(= x_17 (cons_0 x_18 x_19)))
		(stoogesort_1 x_85 x_16))))
(assert (forall ((x_16 list_0) (y_15 Nat_0) (z_10 list_0) (y_16 Nat_0) (x_17 list_0) (x_89 list_0) (x_90 list_0))
	(=>	(and (= x_89 x_90)
			(sort_0 x_90 y_15 y_16)
			(= x_16 (cons_0 y_15 z_10))
			(= z_10 (cons_0 y_16 x_17))
			(= x_17 nil_0))
		(stoogesort_1 x_89 x_16))))
(assert (forall ((x_16 list_0) (y_15 Nat_0) (z_10 list_0) (x_91 list_0))
	(=>	(and (= x_91 (cons_0 y_15 nil_0))
			(= x_16 (cons_0 y_15 z_10))
			(= z_10 nil_0))
		(stoogesort_1 x_91 x_16))))
(assert (forall ((x_16 list_0) (x_92 list_0))
	(=>	(and (= x_92 nil_0)
			(= x_16 nil_0))
		(stoogesort_1 x_92 x_16))))
(assert (forall ((x_20 list_0) (ys_1 list_0) (zs_1 list_0) (x_96 list_0) (x_97 list_0) (x_98 list_0) (x_93 Nat_0) (x_94 Nat_0) (x_95 pair_0))
	(=>	(and (= x_96 x_98)
			(stoogesort_1 x_97 zs_1)
			(x_12 x_98 ys_1 x_97)
			(= x_95 (pair_1 ys_1 zs_1))
			(length_0 x_93 x_20)
			(idiv_0 x_94 x_93 (succ_0 (succ_0 (succ_0 zero_0))))
			(splitAt_0 x_95 x_94 x_20))
		(stoogesort_2 x_96 x_20))))
(assert (forall ((x_21 Nat_0) (y_17 Nat_0) (z_11 Nat_0) (x_99 Nat_0) (x_100 Nat_0) (x_101 Nat_0) (x_102 Nat_0))
	(=>	(and (diseqNat_1 x_100 x_102)
			(plus_0 x_99 y_17 z_11)
			(plus_0 x_100 x_21 x_99)
			(plus_0 x_101 x_21 y_17)
			(plus_0 x_102 x_101 z_11))
		false)))
(assert (forall ((x_22 Nat_0) (y_18 Nat_0) (x_103 Nat_0) (x_104 Nat_0))
	(=>	(and (diseqNat_1 x_103 x_104)
			(plus_0 x_103 x_22 y_18)
			(plus_0 x_104 y_18 x_22))
		false)))
(assert (forall ((x_23 Nat_0) (x_105 Nat_0))
	(=>	(and (diseqNat_1 x_105 x_23)
			(plus_0 x_105 x_23 zero_0))
		false)))
(assert (forall ((x_24 Nat_0) (x_106 Nat_0))
	(=>	(and (diseqNat_1 x_106 x_24)
			(plus_0 x_106 zero_0 x_24))
		false)))
(assert (forall ((xs_5 list_0) (x_107 list_0) (x_108 Bool))
	(=>	(and (= x_108 false)
			(stoogesort_1 x_107 xs_5)
			(ordered_0 x_108 x_107))
		false)))
(check-sat)
