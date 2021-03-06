(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_43 Nat_0) (x_42 Nat_0))
	(=> (= x_43 (S_0 x_42))
	    (unS_1 x_42 x_43))))
(assert (isZ_0 Z_0))
(assert (forall ((x_44 Nat_0))
	(isS_0 (S_0 x_44))))
(assert (forall ((x_45 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_45))))
(assert (forall ((x_46 Nat_0))
	(diseqNat_0 (S_0 x_46) Z_0)))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0))
	(=> (diseqNat_0 x_47 x_48)
	    (diseqNat_0 (S_0 x_47) (S_0 x_48)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_3 Nat_0))
	(add_0 y_3 Z_0 y_3)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0) (r_2 Nat_0))
	(=> (add_0 r_2 x_40 y_3)
	    (add_0 (S_0 r_2) (S_0 x_40) y_3))))
(assert (forall ((y_3 Nat_0))
	(minus_0 Z_0 Z_0 y_3)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0) (r_2 Nat_0))
	(=> (minus_0 r_2 x_40 y_3)
	    (minus_0 (S_0 r_2) (S_0 x_40) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_0 y_3)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_40 y_3)
	    (le_0 (S_0 x_40) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(ge_0 y_3 Z_0)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (ge_0 x_40 y_3)
	    (ge_0 (S_0 x_40) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(lt_0 Z_0 (S_0 y_3))))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_40 y_3)
	    (lt_0 (S_0 x_40) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (S_0 y_3) Z_0)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_40 y_3)
	    (gt_0 (S_0 x_40) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(mult_0 Z_0 Z_0 y_3)))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_2 x_40 y_3)
			(add_0 z_1 r_2 y_3))
		(mult_0 z_1 (S_0 x_40) y_3))))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_40 y_3)
	    (div_0 Z_0 x_40 y_3))))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_40 y_3)
			(minus_0 z_1 x_40 y_3)
			(div_0 r_2 z_1 y_3))
		(div_0 (S_0 r_2) x_40 y_3))))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_40 y_3)
	    (mod_0 x_40 x_40 y_3))))
(assert (forall ((x_40 Nat_0) (y_3 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_40 y_3)
			(minus_0 z_1 x_40 y_3)
			(mod_0 r_2 z_1 y_3))
		(mod_0 r_2 x_40 y_3))))
(declare-datatypes ((T_0 0)) (((A_0 ) (B_0 ) (C_0 ))))
(declare-fun diseqT_0 (T_0 T_0) Bool)
(declare-fun isA_0 (T_0) Bool)
(declare-fun isB_0 (T_0) Bool)
(declare-fun isC_0 (T_0) Bool)
(assert (isA_0 A_0))
(assert (isB_0 B_0))
(assert (isC_0 C_0))
(assert (diseqT_0 A_0 B_0))
(assert (diseqT_0 A_0 C_0))
(assert (diseqT_0 B_0 A_0))
(assert (diseqT_0 C_0 A_0))
(assert (diseqT_0 B_0 C_0))
(assert (diseqT_0 C_0 B_0))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 T_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (T_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_55 list_0) (x_53 T_0) (x_54 list_0))
	(=> (= x_55 (cons_0 x_53 x_54))
	    (head_1 x_53 x_55))))
(assert (forall ((x_55 list_0) (x_53 T_0) (x_54 list_0))
	(=> (= x_55 (cons_0 x_53 x_54))
	    (tail_1 x_54 x_55))))
(assert (isnil_0 nil_0))
(assert (forall ((x_56 T_0) (x_57 list_0))
	(iscons_0 (cons_0 x_56 x_57))))
(assert (forall ((x_58 T_0) (x_59 list_0))
	(diseqlist_0 nil_0 (cons_0 x_58 x_59))))
(assert (forall ((x_60 T_0) (x_61 list_0))
	(diseqlist_0 (cons_0 x_60 x_61) nil_0)))
(assert (forall ((x_62 T_0) (x_63 list_0) (x_64 T_0) (x_65 list_0))
	(=> (diseqT_0 x_62 x_64)
	    (diseqlist_0 (cons_0 x_62 x_63) (cons_0 x_64 x_65)))))
(assert (forall ((x_62 T_0) (x_63 list_0) (x_64 T_0) (x_65 list_0))
	(=> (diseqlist_0 x_63 x_65)
	    (diseqlist_0 (cons_0 x_62 x_63) (cons_0 x_64 x_65)))))
(declare-datatypes ((R_0 0)) (((Nil_0 ) (Eps_0 ) (Atom_0 (projAtom_0 T_0)) (x_0 (proj_0 R_0) (proj_1 R_0)) (x_1 (proj_2 R_0) (proj_3 R_0)) (Star_0 (projStar_0 R_0)))))
(declare-fun diseqR_0 (R_0 R_0) Bool)
(declare-fun projAtom_1 (T_0 R_0) Bool)
(declare-fun proj_4 (R_0 R_0) Bool)
(declare-fun proj_5 (R_0 R_0) Bool)
(declare-fun proj_6 (R_0 R_0) Bool)
(declare-fun proj_7 (R_0 R_0) Bool)
(declare-fun projStar_1 (R_0 R_0) Bool)
(declare-fun isNil_0 (R_0) Bool)
(declare-fun isEps_0 (R_0) Bool)
(declare-fun isAtom_0 (R_0) Bool)
(declare-fun isx_0 (R_0) Bool)
(declare-fun isx_1 (R_0) Bool)
(declare-fun isStar_0 (R_0) Bool)
(assert (forall ((x_69 R_0) (x_68 T_0))
	(=> (= x_69 (Atom_0 x_68))
	    (projAtom_1 x_68 x_69))))
(assert (forall ((x_72 R_0) (x_70 R_0) (x_71 R_0))
	(=> (= x_72 (x_0 x_70 x_71))
	    (proj_4 x_70 x_72))))
(assert (forall ((x_72 R_0) (x_70 R_0) (x_71 R_0))
	(=> (= x_72 (x_0 x_70 x_71))
	    (proj_5 x_71 x_72))))
(assert (forall ((x_75 R_0) (x_73 R_0) (x_74 R_0))
	(=> (= x_75 (x_1 x_73 x_74))
	    (proj_6 x_73 x_75))))
(assert (forall ((x_75 R_0) (x_73 R_0) (x_74 R_0))
	(=> (= x_75 (x_1 x_73 x_74))
	    (proj_7 x_74 x_75))))
(assert (forall ((x_77 R_0) (x_76 R_0))
	(=> (= x_77 (Star_0 x_76))
	    (projStar_1 x_76 x_77))))
(assert (isNil_0 Nil_0))
(assert (isEps_0 Eps_0))
(assert (forall ((x_78 T_0))
	(isAtom_0 (Atom_0 x_78))))
(assert (forall ((x_79 R_0) (x_80 R_0))
	(isx_0 (x_0 x_79 x_80))))
(assert (forall ((x_81 R_0) (x_82 R_0))
	(isx_1 (x_1 x_81 x_82))))
(assert (forall ((x_83 R_0))
	(isStar_0 (Star_0 x_83))))
(assert (diseqR_0 Nil_0 Eps_0))
(assert (forall ((x_84 T_0))
	(diseqR_0 Nil_0 (Atom_0 x_84))))
(assert (forall ((x_85 R_0) (x_86 R_0))
	(diseqR_0 Nil_0 (x_0 x_85 x_86))))
(assert (forall ((x_87 R_0) (x_88 R_0))
	(diseqR_0 Nil_0 (x_1 x_87 x_88))))
(assert (forall ((x_89 R_0))
	(diseqR_0 Nil_0 (Star_0 x_89))))
(assert (diseqR_0 Eps_0 Nil_0))
(assert (forall ((x_90 T_0))
	(diseqR_0 (Atom_0 x_90) Nil_0)))
(assert (forall ((x_91 R_0) (x_92 R_0))
	(diseqR_0 (x_0 x_91 x_92) Nil_0)))
(assert (forall ((x_93 R_0) (x_94 R_0))
	(diseqR_0 (x_1 x_93 x_94) Nil_0)))
(assert (forall ((x_95 R_0))
	(diseqR_0 (Star_0 x_95) Nil_0)))
(assert (forall ((x_96 T_0))
	(diseqR_0 Eps_0 (Atom_0 x_96))))
(assert (forall ((x_97 R_0) (x_98 R_0))
	(diseqR_0 Eps_0 (x_0 x_97 x_98))))
(assert (forall ((x_99 R_0) (x_100 R_0))
	(diseqR_0 Eps_0 (x_1 x_99 x_100))))
(assert (forall ((x_101 R_0))
	(diseqR_0 Eps_0 (Star_0 x_101))))
(assert (forall ((x_102 T_0))
	(diseqR_0 (Atom_0 x_102) Eps_0)))
(assert (forall ((x_103 R_0) (x_104 R_0))
	(diseqR_0 (x_0 x_103 x_104) Eps_0)))
(assert (forall ((x_105 R_0) (x_106 R_0))
	(diseqR_0 (x_1 x_105 x_106) Eps_0)))
(assert (forall ((x_107 R_0))
	(diseqR_0 (Star_0 x_107) Eps_0)))
(assert (forall ((x_108 T_0) (x_109 R_0) (x_110 R_0))
	(diseqR_0 (Atom_0 x_108) (x_0 x_109 x_110))))
(assert (forall ((x_111 T_0) (x_112 R_0) (x_113 R_0))
	(diseqR_0 (Atom_0 x_111) (x_1 x_112 x_113))))
(assert (forall ((x_114 T_0) (x_115 R_0))
	(diseqR_0 (Atom_0 x_114) (Star_0 x_115))))
(assert (forall ((x_116 R_0) (x_117 R_0) (x_118 T_0))
	(diseqR_0 (x_0 x_116 x_117) (Atom_0 x_118))))
(assert (forall ((x_119 R_0) (x_120 R_0) (x_121 T_0))
	(diseqR_0 (x_1 x_119 x_120) (Atom_0 x_121))))
(assert (forall ((x_122 R_0) (x_123 T_0))
	(diseqR_0 (Star_0 x_122) (Atom_0 x_123))))
(assert (forall ((x_124 R_0) (x_125 R_0) (x_126 R_0) (x_127 R_0))
	(diseqR_0 (x_0 x_124 x_125) (x_1 x_126 x_127))))
(assert (forall ((x_128 R_0) (x_129 R_0) (x_130 R_0))
	(diseqR_0 (x_0 x_128 x_129) (Star_0 x_130))))
(assert (forall ((x_131 R_0) (x_132 R_0) (x_133 R_0) (x_134 R_0))
	(diseqR_0 (x_1 x_131 x_132) (x_0 x_133 x_134))))
(assert (forall ((x_135 R_0) (x_136 R_0) (x_137 R_0))
	(diseqR_0 (Star_0 x_135) (x_0 x_136 x_137))))
(assert (forall ((x_138 R_0) (x_139 R_0) (x_140 R_0))
	(diseqR_0 (x_1 x_138 x_139) (Star_0 x_140))))
(assert (forall ((x_141 R_0) (x_142 R_0) (x_143 R_0))
	(diseqR_0 (Star_0 x_141) (x_1 x_142 x_143))))
(assert (forall ((x_144 T_0) (x_145 T_0))
	(=> (diseqT_0 x_144 x_145)
	    (diseqR_0 (Atom_0 x_144) (Atom_0 x_145)))))
(assert (forall ((x_146 R_0) (x_147 R_0) (x_148 R_0) (x_149 R_0))
	(=> (diseqR_0 x_146 x_148)
	    (diseqR_0 (x_0 x_146 x_147) (x_0 x_148 x_149)))))
(assert (forall ((x_146 R_0) (x_147 R_0) (x_148 R_0) (x_149 R_0))
	(=> (diseqR_0 x_147 x_149)
	    (diseqR_0 (x_0 x_146 x_147) (x_0 x_148 x_149)))))
(assert (forall ((x_150 R_0) (x_151 R_0) (x_152 R_0) (x_153 R_0))
	(=> (diseqR_0 x_150 x_152)
	    (diseqR_0 (x_1 x_150 x_151) (x_1 x_152 x_153)))))
(assert (forall ((x_150 R_0) (x_151 R_0) (x_152 R_0) (x_153 R_0))
	(=> (diseqR_0 x_151 x_153)
	    (diseqR_0 (x_1 x_150 x_151) (x_1 x_152 x_153)))))
(assert (forall ((x_154 R_0) (x_155 R_0))
	(=> (diseqR_0 x_154 x_155)
	    (diseqR_0 (Star_0 x_154) (Star_0 x_155)))))
(declare-fun eps_0 (Bool R_0) Bool)
(assert (forall ((x_2 R_0) (y_0 R_0) (x_8 Bool))
	(=>	(and (= x_8 true)
			(= x_2 (Star_0 y_0)))
		(eps_0 x_8 x_2))))
(assert (forall ((x_2 R_0) (r_0 R_0) (q_0 R_0) (x_9 Bool) (x_10 Bool) (x_11 Bool))
	(=>	(and (= x_9 (and x_10 x_11))
			(eps_0 x_10 r_0)
			(eps_0 x_11 q_0)
			(= x_2 (x_1 r_0 q_0)))
		(eps_0 x_9 x_2))))
(assert (forall ((x_2 R_0) (p_0 R_0) (q_1 R_0) (x_12 Bool) (x_13 Bool) (x_14 Bool))
	(=>	(and (= x_12 (or x_13 x_14))
			(eps_0 x_13 p_0)
			(eps_0 x_14 q_1)
			(= x_2 (x_0 p_0 q_1)))
		(eps_0 x_12 x_2))))
(assert (forall ((x_2 R_0) (x_15 Bool))
	(=>	(and (= x_15 true)
			(= x_2 Eps_0))
		(eps_0 x_15 x_2))))
(assert (forall ((x_2 R_0) (x_7 T_0) (x_3 R_0) (x_16 Bool))
	(=>	(and (= x_16 false)
			(= x_2 (Atom_0 x_7)))
		(eps_0 x_16 x_2))))
(assert (forall ((x_2 R_0) (x_3 R_0) (x_17 Bool))
	(=>	(and (= x_17 false)
			(= x_2 Nil_0))
		(eps_0 x_17 x_2))))
(declare-fun step_0 (R_0 R_0 T_0) Bool)
(assert (forall ((x_4 R_0) (y_1 T_0) (p_1 R_0) (x_18 R_0) (x_19 R_0))
	(=>	(and (= x_18 (x_1 x_19 (Star_0 p_1)))
			(step_0 x_19 p_1 y_1)
			(= x_4 (Star_0 p_1)))
		(step_0 x_18 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (r_1 R_0) (q_2 R_0) (x_21 R_0) (x_22 R_0) (x_23 R_0) (x_20 Bool))
	(=>	(and (= x_21 (x_0 (x_1 x_22 q_2) x_23))
			(step_0 x_22 r_1 y_1)
			(step_0 x_23 q_2 y_1)
			(= x_4 (x_1 r_1 q_2))
			(= x_20 true)
			(eps_0 x_20 r_1))
		(step_0 x_21 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (r_1 R_0) (q_2 R_0) (x_25 R_0) (x_26 R_0) (x_24 Bool))
	(=>	(and (= x_25 (x_0 (x_1 x_26 q_2) Nil_0))
			(step_0 x_26 r_1 y_1)
			(= x_4 (x_1 r_1 q_2))
			(= x_24 false)
			(eps_0 x_24 r_1))
		(step_0 x_25 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (p_2 R_0) (q_3 R_0) (x_27 R_0) (x_28 R_0) (x_29 R_0))
	(=>	(and (= x_27 (x_0 x_28 x_29))
			(step_0 x_28 p_2 y_1)
			(step_0 x_29 q_3 y_1)
			(= x_4 (x_0 p_2 q_3)))
		(step_0 x_27 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (b_0 T_0) (x_30 R_0))
	(=>	(and (= x_30 Eps_0)
			(= x_4 (Atom_0 b_0))
			(= b_0 y_1))
		(step_0 x_30 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (b_0 T_0) (x_31 R_0))
	(=>	(and (= x_31 Nil_0)
			(= x_4 (Atom_0 b_0))
			(diseqT_0 b_0 y_1))
		(step_0 x_31 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (x_5 R_0) (x_32 R_0))
	(=>	(and (= x_32 Nil_0)
			(= x_4 Eps_0))
		(step_0 x_32 x_4 y_1))))
(assert (forall ((x_4 R_0) (y_1 T_0) (x_5 R_0) (x_33 R_0))
	(=>	(and (= x_33 Nil_0)
			(= x_4 Nil_0))
		(step_0 x_33 x_4 y_1))))
(declare-fun rec_0 (Bool R_0 list_0) Bool)
(assert (forall ((x_6 R_0) (y_2 list_0) (z_0 T_0) (xs_0 list_0) (x_34 Bool) (x_35 R_0) (x_36 Bool))
	(=>	(and (= x_34 x_36)
			(step_0 x_35 x_6 z_0)
			(rec_0 x_36 x_35 xs_0)
			(= y_2 (cons_0 z_0 xs_0)))
		(rec_0 x_34 x_6 y_2))))
(assert (forall ((x_6 R_0) (y_2 list_0) (x_37 Bool) (x_38 Bool))
	(=>	(and (= x_37 x_38)
			(eps_0 x_38 x_6)
			(= y_2 nil_0))
		(rec_0 x_37 x_6 y_2))))
(assert (forall ((p_3 R_0) (x_39 Bool))
	(=>	(and (= x_39 true)
			(rec_0 x_39 p_3 (cons_0 A_0 (cons_0 B_0 (cons_0 B_0 (cons_0 A_0 nil_0))))))
		false)))
(check-sat)
