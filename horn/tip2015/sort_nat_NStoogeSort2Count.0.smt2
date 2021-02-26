(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_120 Nat_1) (x_119 Nat_1))
	(=> (= x_120 (S_0 x_119))
	    (unS_1 x_119 x_120))))
(assert (isZ_0 Z_0))
(assert (forall ((x_121 Nat_1))
	(isS_0 (S_0 x_121))))
(assert (forall ((x_122 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_122))))
(assert (forall ((x_123 Nat_1))
	(diseqNat_0 (S_0 x_123) Z_0)))
(assert (forall ((x_124 Nat_1) (x_125 Nat_1))
	(=> (diseqNat_0 x_124 x_125)
	    (diseqNat_0 (S_0 x_124) (S_0 x_125)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_17 Nat_1))
	(add_0 y_17 Z_0 y_17)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_117 y_17)
	    (add_0 (S_0 r_0) (S_0 x_117) y_17))))
(assert (forall ((y_17 Nat_1))
	(minus_1 Z_0 Z_0 y_17)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1) (r_0 Nat_1))
	(=> (minus_1 r_0 x_117 y_17)
	    (minus_1 (S_0 r_0) (S_0 x_117) y_17))))
(assert (forall ((y_17 Nat_1))
	(le_0 Z_0 y_17)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (le_0 x_117 y_17)
	    (le_0 (S_0 x_117) (S_0 y_17)))))
(assert (forall ((y_17 Nat_1))
	(ge_0 y_17 Z_0)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (ge_0 x_117 y_17)
	    (ge_0 (S_0 x_117) (S_0 y_17)))))
(assert (forall ((y_17 Nat_1))
	(lt_0 Z_0 (S_0 y_17))))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (lt_0 x_117 y_17)
	    (lt_0 (S_0 x_117) (S_0 y_17)))))
(assert (forall ((y_17 Nat_1))
	(gt_0 (S_0 y_17) Z_0)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (gt_0 x_117 y_17)
	    (gt_0 (S_0 x_117) (S_0 y_17)))))
(assert (forall ((y_17 Nat_1))
	(mult_0 Z_0 Z_0 y_17)))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1) (r_0 Nat_1) (z_11 Nat_1))
	(=>	(and (mult_0 r_0 x_117 y_17)
			(add_0 z_11 r_0 y_17))
		(mult_0 z_11 (S_0 x_117) y_17))))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (lt_0 x_117 y_17)
	    (div_0 Z_0 x_117 y_17))))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1) (r_0 Nat_1) (z_11 Nat_1))
	(=>	(and (ge_0 x_117 y_17)
			(minus_1 z_11 x_117 y_17)
			(div_0 r_0 z_11 y_17))
		(div_0 (S_0 r_0) x_117 y_17))))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1))
	(=> (lt_0 x_117 y_17)
	    (mod_0 x_117 x_117 y_17))))
(assert (forall ((x_117 Nat_1) (y_17 Nat_1) (r_0 Nat_1) (z_11 Nat_1))
	(=>	(and (ge_0 x_117 y_17)
			(minus_1 z_11 x_117 y_17)
			(mod_0 r_0 z_11 y_17))
		(mod_0 r_0 x_117 y_17))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_128 Nat_0) (x_127 Nat_0))
	(=> (= x_128 (succ_0 x_127))
	    (p_1 x_127 x_128))))
(assert (iszero_0 zero_0))
(assert (forall ((x_129 Nat_0))
	(issucc_0 (succ_0 x_129))))
(assert (forall ((x_130 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_130))))
(assert (forall ((x_131 Nat_0))
	(diseqNat_1 (succ_0 x_131) zero_0)))
(assert (forall ((x_132 Nat_0) (x_133 Nat_0))
	(=> (diseqNat_1 x_132 x_133)
	    (diseqNat_1 (succ_0 x_132) (succ_0 x_133)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_137 list_0) (x_135 Nat_0) (x_136 list_0))
	(=> (= x_137 (cons_0 x_135 x_136))
	    (head_1 x_135 x_137))))
(assert (forall ((x_137 list_0) (x_135 Nat_0) (x_136 list_0))
	(=> (= x_137 (cons_0 x_135 x_136))
	    (tail_1 x_136 x_137))))
(assert (isnil_0 nil_0))
(assert (forall ((x_138 Nat_0) (x_139 list_0))
	(iscons_0 (cons_0 x_138 x_139))))
(assert (forall ((x_140 Nat_0) (x_141 list_0))
	(diseqlist_0 nil_0 (cons_0 x_140 x_141))))
(assert (forall ((x_142 Nat_0) (x_143 list_0))
	(diseqlist_0 (cons_0 x_142 x_143) nil_0)))
(assert (forall ((x_144 Nat_0) (x_145 list_0) (x_146 Nat_0) (x_147 list_0))
	(=> (diseqNat_1 x_144 x_146)
	    (diseqlist_0 (cons_0 x_144 x_145) (cons_0 x_146 x_147)))))
(assert (forall ((x_144 Nat_0) (x_145 list_0) (x_146 Nat_0) (x_147 list_0))
	(=> (diseqlist_0 x_145 x_147)
	    (diseqlist_0 (cons_0 x_144 x_145) (cons_0 x_146 x_147)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 list_0) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (list_0 pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_150 pair_0) (x_148 list_0) (x_149 list_0))
	(=> (= x_150 (pair_1 x_148 x_149))
	    (projpair_2 x_148 x_150))))
(assert (forall ((x_150 pair_0) (x_148 list_0) (x_149 list_0))
	(=> (= x_150 (pair_1 x_148 x_149))
	    (projpair_3 x_149 x_150))))
(assert (forall ((x_151 list_0) (x_152 list_0))
	(ispair_0 (pair_1 x_151 x_152))))
(assert (forall ((x_153 list_0) (x_154 list_0) (x_155 list_0) (x_156 list_0))
	(=> (diseqlist_0 x_153 x_155)
	    (diseqpair_0 (pair_1 x_153 x_154) (pair_1 x_155 x_156)))))
(assert (forall ((x_153 list_0) (x_154 list_0) (x_155 list_0) (x_156 list_0))
	(=> (diseqlist_0 x_154 x_156)
	    (diseqpair_0 (pair_1 x_153 x_154) (pair_1 x_155 x_156)))))
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
(declare-fun third_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (x_36 Nat_0))
	(=>	(and (= x_36 zero_0)
			(= x_3 (succ_0 (succ_0 zero_0))))
		(third_0 x_36 x_3))))
(assert (forall ((x_3 Nat_0) (x_37 Nat_0))
	(=>	(and (= x_37 zero_0)
			(diseqNat_1 x_3 (succ_0 (succ_0 zero_0)))
			(= x_3 (succ_0 zero_0)))
		(third_0 x_37 x_3))))
(assert (forall ((x_3 Nat_0) (x_38 Nat_0))
	(=>	(and (= x_38 zero_0)
			(= x_3 (succ_0 (succ_0 zero_0))))
		(third_0 x_38 x_3))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_41 Nat_0) (x_42 Nat_0))
	(=>	(and (= x_39 x_42)
			(minus_0 x_40 (succ_0 y_4) (succ_0 (succ_0 (succ_0 zero_0))))
			(third_0 x_41 x_40)
			(plus_0 x_42 (succ_0 zero_0) x_41)
			(diseqNat_1 x_3 (succ_0 (succ_0 zero_0)))
			(diseqNat_1 x_3 (succ_0 zero_0))
			(= x_3 (succ_0 y_4)))
		(third_0 x_39 x_3))))
(assert (forall ((x_3 Nat_0) (x_43 Nat_0))
	(=>	(and (= x_43 zero_0)
			(= x_3 (succ_0 (succ_0 zero_0))))
		(third_0 x_43 x_3))))
(assert (forall ((x_3 Nat_0) (x_44 Nat_0))
	(=>	(and (= x_44 zero_0)
			(diseqNat_1 x_3 (succ_0 (succ_0 zero_0)))
			(= x_3 (succ_0 zero_0)))
		(third_0 x_44 x_3))))
(assert (forall ((x_3 Nat_0) (x_45 Nat_0))
	(=>	(and (= x_45 zero_0)
			(= x_3 (succ_0 (succ_0 zero_0))))
		(third_0 x_45 x_3))))
(assert (forall ((x_3 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_46 zero_0)
			(diseqNat_1 x_3 (succ_0 (succ_0 zero_0)))
			(diseqNat_1 x_3 (succ_0 zero_0))
			(= x_3 zero_0))
		(third_0 x_46 x_3))))
(declare-fun twoThirds_0 (Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_47 (succ_0 zero_0))
			(= x_4 (succ_0 (succ_0 zero_0))))
		(twoThirds_0 x_47 x_4))))
(assert (forall ((x_4 Nat_0) (x_48 Nat_0))
	(=>	(and (= x_48 (succ_0 zero_0))
			(diseqNat_1 x_4 (succ_0 (succ_0 zero_0)))
			(= x_4 (succ_0 zero_0)))
		(twoThirds_0 x_48 x_4))))
(assert (forall ((x_4 Nat_0) (x_49 Nat_0))
	(=>	(and (= x_49 (succ_0 zero_0))
			(= x_4 (succ_0 (succ_0 zero_0))))
		(twoThirds_0 x_49 x_4))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0))
	(=>	(and (= x_50 x_53)
			(minus_0 x_51 (succ_0 y_5) (succ_0 (succ_0 (succ_0 zero_0))))
			(twoThirds_0 x_52 x_51)
			(plus_0 x_53 (succ_0 (succ_0 zero_0)) x_52)
			(diseqNat_1 x_4 (succ_0 (succ_0 zero_0)))
			(diseqNat_1 x_4 (succ_0 zero_0))
			(= x_4 (succ_0 y_5)))
		(twoThirds_0 x_50 x_4))))
(assert (forall ((x_4 Nat_0) (x_54 Nat_0))
	(=>	(and (= x_54 (succ_0 zero_0))
			(= x_4 (succ_0 (succ_0 zero_0))))
		(twoThirds_0 x_54 x_4))))
(assert (forall ((x_4 Nat_0) (x_55 Nat_0))
	(=>	(and (= x_55 (succ_0 zero_0))
			(diseqNat_1 x_4 (succ_0 (succ_0 zero_0)))
			(= x_4 (succ_0 zero_0)))
		(twoThirds_0 x_55 x_4))))
(assert (forall ((x_4 Nat_0) (x_56 Nat_0))
	(=>	(and (= x_56 (succ_0 zero_0))
			(= x_4 (succ_0 (succ_0 zero_0))))
		(twoThirds_0 x_56 x_4))))
(assert (forall ((x_4 Nat_0) (x_57 Nat_0))
	(=>	(and (= x_57 zero_0)
			(diseqNat_1 x_4 (succ_0 (succ_0 zero_0)))
			(diseqNat_1 x_4 (succ_0 zero_0))
			(= x_4 zero_0))
		(twoThirds_0 x_57 x_4))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (z_4 Nat_0) (x_6 Nat_0) (x_58 Bool) (x_59 Bool))
	(=>	(and (= x_58 x_59)
			(leq_0 x_59 z_4 x_6)
			(= x_5 (succ_0 z_4))
			(= y_6 (succ_0 x_6)))
		(leq_0 x_58 x_5 y_6))))
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (z_4 Nat_0) (x_60 Bool))
	(=>	(and (= x_60 false)
			(= x_5 (succ_0 z_4))
			(= y_6 zero_0))
		(leq_0 x_60 x_5 y_6))))
(assert (forall ((x_5 Nat_0) (y_6 Nat_0) (x_61 Bool))
	(=>	(and (= x_61 true)
			(= x_5 zero_0))
		(leq_0 x_61 x_5 y_6))))
(declare-fun sort_0 (list_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_7 Nat_0) (y_7 Nat_0) (x_63 list_0) (x_62 Bool))
	(=>	(and (= x_63 (cons_0 x_7 (cons_0 y_7 nil_0)))
			(= x_62 true)
			(leq_0 x_62 x_7 y_7))
		(sort_0 x_63 x_7 y_7))))
(assert (forall ((x_7 Nat_0) (y_7 Nat_0) (x_65 list_0) (x_64 Bool))
	(=>	(and (= x_65 (cons_0 y_7 (cons_0 x_7 nil_0)))
			(= x_64 false)
			(leq_0 x_64 x_7 y_7))
		(sort_0 x_65 x_7 y_7))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_8 Nat_0) (l_0 list_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0))
	(=>	(and (= x_66 x_68)
			(length_0 x_67 l_0)
			(plus_0 x_68 (succ_0 zero_0) x_67)
			(= x_8 (cons_0 y_8 l_0)))
		(length_0 x_66 x_8))))
(assert (forall ((x_8 list_0) (x_69 Nat_0))
	(=>	(and (= x_69 zero_0)
			(= x_8 nil_0))
		(length_0 x_69 x_8))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_5 Nat_0) (z_6 Nat_0) (xs_1 list_0) (x_70 list_0) (x_71 list_0))
	(=>	(and (= x_70 x_71)
			(drop_0 x_71 z_5 xs_1)
			(= x_9 (succ_0 z_5))
			(= y_9 (cons_0 z_6 xs_1)))
		(drop_0 x_70 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_5 Nat_0) (x_72 list_0))
	(=>	(and (= x_72 nil_0)
			(= x_9 (succ_0 z_5))
			(= y_9 nil_0))
		(drop_0 x_72 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (x_73 list_0))
	(=>	(and (= x_73 y_9)
			(= x_9 zero_0))
		(drop_0 x_73 x_9 y_9))))
(declare-fun splitAt_0 (pair_0 Nat_0 list_0) Bool)
(assert (forall ((x_10 Nat_0) (y_10 list_0) (x_74 pair_0) (x_75 list_0) (x_76 list_0))
	(=>	(and (= x_74 (pair_1 x_75 x_76))
			(take_0 x_75 x_10 y_10)
			(drop_0 x_76 x_10 y_10))
		(splitAt_0 x_74 x_10 y_10))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_11 Nat_0) (y_11 list_0) (z_7 Nat_0) (ys_0 list_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0))
	(=>	(and (= x_77 x_79)
			(count_0 x_78 x_11 ys_0)
			(plus_0 x_79 (succ_0 zero_0) x_78)
			(= y_11 (cons_0 z_7 ys_0))
			(= x_11 z_7))
		(count_0 x_77 x_11 y_11))))
(assert (forall ((x_11 Nat_0) (y_11 list_0) (z_7 Nat_0) (ys_0 list_0) (x_80 Nat_0) (x_81 Nat_0))
	(=>	(and (= x_80 x_81)
			(count_0 x_81 x_11 ys_0)
			(= y_11 (cons_0 z_7 ys_0))
			(diseqNat_1 x_11 z_7))
		(count_0 x_80 x_11 y_11))))
(assert (forall ((x_11 Nat_0) (y_11 list_0) (x_82 Nat_0))
	(=>	(and (= x_82 zero_0)
			(= y_11 nil_0))
		(count_0 x_82 x_11 y_11))))
(declare-fun x_12 (list_0 list_0 list_0) Bool)
(assert (forall ((x_13 list_0) (y_12 list_0) (z_8 Nat_0) (xs_2 list_0) (x_83 list_0) (x_84 list_0))
	(=>	(and (= x_83 (cons_0 z_8 x_84))
			(x_12 x_84 xs_2 y_12)
			(= x_13 (cons_0 z_8 xs_2)))
		(x_12 x_83 x_13 y_12))))
(assert (forall ((x_13 list_0) (y_12 list_0) (x_85 list_0))
	(=>	(and (= x_85 y_12)
			(= x_13 nil_0))
		(x_12 x_85 x_13 y_12))))
(declare-fun nstoogesort_0 (list_0 list_0) Bool)
(declare-fun nstoogesort_1 (list_0 list_0) Bool)
(declare-fun nstoogesort_2 (list_0 list_0) Bool)
(assert (forall ((x_14 list_0) (ys_1 list_0) (zs_0 list_0) (x_89 list_0) (x_90 list_0) (x_91 list_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 pair_0))
	(=>	(and (= x_89 x_91)
			(nstoogesort_1 x_90 ys_1)
			(x_12 x_91 x_90 zs_0)
			(= x_88 (pair_1 ys_1 zs_0))
			(length_0 x_86 x_14)
			(twoThirds_0 x_87 x_86)
			(splitAt_0 x_88 x_87 x_14))
		(nstoogesort_0 x_89 x_14))))
(assert (forall ((x_15 list_0) (y_13 Nat_0) (z_9 list_0) (y_14 Nat_0) (x_16 list_0) (x_17 Nat_0) (x_18 list_0) (x_92 list_0) (x_93 list_0) (x_94 list_0) (x_95 list_0))
	(=>	(and (= x_92 x_95)
			(nstoogesort_0 x_93 (cons_0 y_13 (cons_0 y_14 (cons_0 x_17 x_18))))
			(nstoogesort_2 x_94 x_93)
			(nstoogesort_0 x_95 x_94)
			(= x_15 (cons_0 y_13 z_9))
			(= z_9 (cons_0 y_14 x_16))
			(= x_16 (cons_0 x_17 x_18)))
		(nstoogesort_1 x_92 x_15))))
(assert (forall ((x_15 list_0) (y_13 Nat_0) (z_9 list_0) (y_14 Nat_0) (x_16 list_0) (x_96 list_0) (x_97 list_0))
	(=>	(and (= x_96 x_97)
			(sort_0 x_97 y_13 y_14)
			(= x_15 (cons_0 y_13 z_9))
			(= z_9 (cons_0 y_14 x_16))
			(= x_16 nil_0))
		(nstoogesort_1 x_96 x_15))))
(assert (forall ((x_15 list_0) (y_13 Nat_0) (z_9 list_0) (x_98 list_0))
	(=>	(and (= x_98 (cons_0 y_13 nil_0))
			(= x_15 (cons_0 y_13 z_9))
			(= z_9 nil_0))
		(nstoogesort_1 x_98 x_15))))
(assert (forall ((x_15 list_0) (x_99 list_0))
	(=>	(and (= x_99 nil_0)
			(= x_15 nil_0))
		(nstoogesort_1 x_99 x_15))))
(assert (forall ((x_19 list_0) (ys_2 list_0) (zs_1 list_0) (x_103 list_0) (x_104 list_0) (x_105 list_0) (x_100 Nat_0) (x_101 Nat_0) (x_102 pair_0))
	(=>	(and (= x_103 x_105)
			(nstoogesort_1 x_104 zs_1)
			(x_12 x_105 ys_2 x_104)
			(= x_102 (pair_1 ys_2 zs_1))
			(length_0 x_100 x_19)
			(third_0 x_101 x_100)
			(splitAt_0 x_102 x_101 x_19))
		(nstoogesort_2 x_103 x_19))))
(assert (forall ((x_20 Nat_0) (y_15 Nat_0) (z_10 Nat_0) (x_106 Nat_0) (x_107 Nat_0) (x_108 Nat_0) (x_109 Nat_0))
	(=>	(and (diseqNat_1 x_107 x_109)
			(plus_0 x_106 y_15 z_10)
			(plus_0 x_107 x_20 x_106)
			(plus_0 x_108 x_20 y_15)
			(plus_0 x_109 x_108 z_10))
		false)))
(assert (forall ((x_21 Nat_0) (y_16 Nat_0) (x_110 Nat_0) (x_111 Nat_0))
	(=>	(and (diseqNat_1 x_110 x_111)
			(plus_0 x_110 x_21 y_16)
			(plus_0 x_111 y_16 x_21))
		false)))
(assert (forall ((x_22 Nat_0) (x_112 Nat_0))
	(=>	(and (diseqNat_1 x_112 x_22)
			(plus_0 x_112 x_22 zero_0))
		false)))
(assert (forall ((x_23 Nat_0) (x_113 Nat_0))
	(=>	(and (diseqNat_1 x_113 x_23)
			(plus_0 x_113 zero_0 x_23))
		false)))
(assert (forall ((x_24 Nat_0) (xs_3 list_0) (x_114 list_0) (x_115 Nat_0) (x_116 Nat_0))
	(=>	(and (diseqNat_1 x_115 x_116)
			(nstoogesort_1 x_114 xs_3)
			(count_0 x_115 x_24 x_114)
			(count_0 x_116 x_24 xs_3))
		false)))
(check-sat)