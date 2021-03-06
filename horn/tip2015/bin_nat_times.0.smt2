(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_98 Nat_1) (x_97 Nat_1))
	(=> (= x_98 (S_0 x_97))
	    (unS_1 x_97 x_98))))
(assert (isZ_0 Z_0))
(assert (forall ((x_99 Nat_1))
	(isS_0 (S_0 x_99))))
(assert (forall ((x_100 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_100))))
(assert (forall ((x_101 Nat_1))
	(diseqNat_0 (S_0 x_101) Z_0)))
(assert (forall ((x_102 Nat_1) (x_103 Nat_1))
	(=> (diseqNat_0 x_102 x_103)
	    (diseqNat_0 (S_0 x_102) (S_0 x_103)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_11 Nat_1))
	(add_0 y_11 Z_0 y_11)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_95 y_11)
	    (add_0 (S_0 r_0) (S_0 x_95) y_11))))
(assert (forall ((y_11 Nat_1))
	(minus_0 Z_0 Z_0 y_11)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_95 y_11)
	    (minus_0 (S_0 r_0) (S_0 x_95) y_11))))
(assert (forall ((y_11 Nat_1))
	(le_0 Z_0 y_11)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (le_0 x_95 y_11)
	    (le_0 (S_0 x_95) (S_0 y_11)))))
(assert (forall ((y_11 Nat_1))
	(ge_0 y_11 Z_0)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (ge_0 x_95 y_11)
	    (ge_0 (S_0 x_95) (S_0 y_11)))))
(assert (forall ((y_11 Nat_1))
	(lt_0 Z_0 (S_0 y_11))))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (lt_0 x_95 y_11)
	    (lt_0 (S_0 x_95) (S_0 y_11)))))
(assert (forall ((y_11 Nat_1))
	(gt_0 (S_0 y_11) Z_0)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (gt_0 x_95 y_11)
	    (gt_0 (S_0 x_95) (S_0 y_11)))))
(assert (forall ((y_11 Nat_1))
	(mult_0 Z_0 Z_0 y_11)))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1) (r_0 Nat_1) (z_7 Nat_1))
	(=>	(and (mult_0 r_0 x_95 y_11)
			(add_0 z_7 r_0 y_11))
		(mult_0 z_7 (S_0 x_95) y_11))))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (lt_0 x_95 y_11)
	    (div_0 Z_0 x_95 y_11))))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1) (r_0 Nat_1) (z_7 Nat_1))
	(=>	(and (ge_0 x_95 y_11)
			(minus_0 z_7 x_95 y_11)
			(div_0 r_0 z_7 y_11))
		(div_0 (S_0 r_0) x_95 y_11))))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1))
	(=> (lt_0 x_95 y_11)
	    (mod_0 x_95 x_95 y_11))))
(assert (forall ((x_95 Nat_1) (y_11 Nat_1) (r_0 Nat_1) (z_7 Nat_1))
	(=>	(and (ge_0 x_95 y_11)
			(minus_0 z_7 x_95 y_11)
			(mod_0 r_0 z_7 y_11))
		(mod_0 r_0 x_95 y_11))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_106 Nat_0) (x_105 Nat_0))
	(=> (= x_106 (succ_0 x_105))
	    (p_1 x_105 x_106))))
(assert (iszero_0 zero_0))
(assert (forall ((x_107 Nat_0))
	(issucc_0 (succ_0 x_107))))
(assert (forall ((x_108 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_108))))
(assert (forall ((x_109 Nat_0))
	(diseqNat_1 (succ_0 x_109) zero_0)))
(assert (forall ((x_110 Nat_0) (x_111 Nat_0))
	(=> (diseqNat_1 x_110 x_111)
	    (diseqNat_1 (succ_0 x_110) (succ_0 x_111)))))
(declare-datatypes ((Bin_0 0)) (((One_0 ) (ZeroAnd_0 (projZeroAnd_0 Bin_0)) (OneAnd_0 (projOneAnd_0 Bin_0)))))
(declare-fun diseqBin_0 (Bin_0 Bin_0) Bool)
(declare-fun projZeroAnd_1 (Bin_0 Bin_0) Bool)
(declare-fun projOneAnd_1 (Bin_0 Bin_0) Bool)
(declare-fun isOne_0 (Bin_0) Bool)
(declare-fun isZeroAnd_0 (Bin_0) Bool)
(declare-fun isOneAnd_0 (Bin_0) Bool)
(assert (forall ((x_114 Bin_0) (x_113 Bin_0))
	(=> (= x_114 (ZeroAnd_0 x_113))
	    (projZeroAnd_1 x_113 x_114))))
(assert (forall ((x_116 Bin_0) (x_115 Bin_0))
	(=> (= x_116 (OneAnd_0 x_115))
	    (projOneAnd_1 x_115 x_116))))
(assert (isOne_0 One_0))
(assert (forall ((x_117 Bin_0))
	(isZeroAnd_0 (ZeroAnd_0 x_117))))
(assert (forall ((x_118 Bin_0))
	(isOneAnd_0 (OneAnd_0 x_118))))
(assert (forall ((x_119 Bin_0))
	(diseqBin_0 One_0 (ZeroAnd_0 x_119))))
(assert (forall ((x_120 Bin_0))
	(diseqBin_0 One_0 (OneAnd_0 x_120))))
(assert (forall ((x_121 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_121) One_0)))
(assert (forall ((x_122 Bin_0))
	(diseqBin_0 (OneAnd_0 x_122) One_0)))
(assert (forall ((x_123 Bin_0) (x_124 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_123) (OneAnd_0 x_124))))
(assert (forall ((x_125 Bin_0) (x_126 Bin_0))
	(diseqBin_0 (OneAnd_0 x_125) (ZeroAnd_0 x_126))))
(assert (forall ((x_127 Bin_0) (x_128 Bin_0))
	(=> (diseqBin_0 x_127 x_128)
	    (diseqBin_0 (ZeroAnd_0 x_127) (ZeroAnd_0 x_128)))))
(assert (forall ((x_129 Bin_0) (x_130 Bin_0))
	(=> (diseqBin_0 x_129 x_130)
	    (diseqBin_0 (OneAnd_0 x_129) (OneAnd_0 x_130)))))
(declare-fun s_0 (Bin_0 Bin_0) Bool)
(assert (forall ((x_0 Bin_0) (ys_0 Bin_0) (x_20 Bin_0) (x_21 Bin_0))
	(=>	(and (= x_20 (ZeroAnd_0 x_21))
			(s_0 x_21 ys_0)
			(= x_0 (OneAnd_0 ys_0)))
		(s_0 x_20 x_0))))
(assert (forall ((x_0 Bin_0) (xs_0 Bin_0) (x_22 Bin_0))
	(=>	(and (= x_22 (OneAnd_0 xs_0))
			(= x_0 (ZeroAnd_0 xs_0)))
		(s_0 x_22 x_0))))
(assert (forall ((x_0 Bin_0) (x_23 Bin_0))
	(=>	(and (= x_23 (ZeroAnd_0 One_0))
			(= x_0 One_0))
		(s_0 x_23 x_0))))
(declare-fun plus_0 (Bin_0 Bin_0 Bin_0) Bool)
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (ys_1 Bin_0) (x_24 Bin_0) (x_25 Bin_0) (x_26 Bin_0))
	(=>	(and (= x_24 (ZeroAnd_0 x_26))
			(plus_0 x_25 x_2 ys_1)
			(s_0 x_26 x_25)
			(= x_1 (OneAnd_0 x_2))
			(= y_0 (OneAnd_0 ys_1)))
		(plus_0 x_24 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (zs_0 Bin_0) (x_27 Bin_0) (x_28 Bin_0))
	(=>	(and (= x_27 (OneAnd_0 x_28))
			(plus_0 x_28 x_2 zs_0)
			(= x_1 (OneAnd_0 x_2))
			(= y_0 (ZeroAnd_0 zs_0)))
		(plus_0 x_27 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (x_29 Bin_0) (x_30 Bin_0))
	(=>	(and (= x_29 x_30)
			(s_0 x_30 (OneAnd_0 x_2))
			(= x_1 (OneAnd_0 x_2))
			(= y_0 One_0))
		(plus_0 x_29 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (xs_1 Bin_0) (x_31 Bin_0) (x_32 Bin_0))
	(=>	(and (= x_31 (OneAnd_0 x_32))
			(plus_0 x_32 z_0 xs_1)
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 (OneAnd_0 xs_1)))
		(plus_0 x_31 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (ys_2 Bin_0) (x_33 Bin_0) (x_34 Bin_0))
	(=>	(and (= x_33 (ZeroAnd_0 x_34))
			(plus_0 x_34 z_0 ys_2)
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 (ZeroAnd_0 ys_2)))
		(plus_0 x_33 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (x_35 Bin_0) (x_36 Bin_0))
	(=>	(and (= x_35 x_36)
			(s_0 x_36 (ZeroAnd_0 z_0))
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 One_0))
		(plus_0 x_35 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_37 Bin_0) (x_38 Bin_0))
	(=>	(and (= x_37 x_38)
			(s_0 x_38 y_0)
			(= x_1 One_0))
		(plus_0 x_37 x_1 y_0))))
(declare-fun times_0 (Bin_0 Bin_0 Bin_0) Bool)
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (xs_2 Bin_0) (x_39 Bin_0) (x_40 Bin_0) (x_41 Bin_0))
	(=>	(and (= x_39 x_41)
			(times_0 x_40 xs_2 y_1)
			(plus_0 x_41 (ZeroAnd_0 x_40) y_1)
			(= x_3 (OneAnd_0 xs_2)))
		(times_0 x_39 x_3 y_1))))
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (xs_3 Bin_0) (x_42 Bin_0) (x_43 Bin_0))
	(=>	(and (= x_42 (ZeroAnd_0 x_43))
			(times_0 x_43 xs_3 y_1)
			(= x_3 (ZeroAnd_0 xs_3)))
		(times_0 x_42 x_3 y_1))))
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (x_44 Bin_0))
	(=>	(and (= x_44 y_1)
			(= x_3 One_0))
		(times_0 x_44 x_3 y_1))))
(declare-fun plus_1 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_1 Nat_0) (x_45 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_45 (succ_0 x_46))
			(plus_1 x_46 z_1 y_2)
			(= x_4 (succ_0 z_1)))
		(plus_1 x_45 x_4 y_2))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_47 y_2)
			(= x_4 zero_0))
		(plus_1 x_47 x_4 y_2))))
(declare-fun times_1 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0))
	(=>	(and (= x_48 x_50)
			(times_1 x_49 z_2 y_3)
			(plus_1 x_50 y_3 x_49)
			(= x_5 (succ_0 z_2)))
		(times_1 x_48 x_5 y_3))))
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (x_51 Nat_0))
	(=>	(and (= x_51 zero_0)
			(= x_5 zero_0))
		(times_1 x_51 x_5 y_3))))
(declare-fun toNat_0 (Nat_0 Bin_0) Bool)
(assert (forall ((x_6 Bin_0) (ys_3 Bin_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0))
	(=>	(and (= x_52 x_56)
			(toNat_0 x_53 ys_3)
			(plus_1 x_54 (succ_0 zero_0) x_53)
			(toNat_0 x_55 ys_3)
			(plus_1 x_56 x_54 x_55)
			(= x_6 (OneAnd_0 ys_3)))
		(toNat_0 x_52 x_6))))
(assert (forall ((x_6 Bin_0) (xs_4 Bin_0) (x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0))
	(=>	(and (= x_57 x_60)
			(toNat_0 x_58 xs_4)
			(toNat_0 x_59 xs_4)
			(plus_1 x_60 x_58 x_59)
			(= x_6 (ZeroAnd_0 xs_4)))
		(toNat_0 x_57 x_6))))
(assert (forall ((x_6 Bin_0) (x_61 Nat_0))
	(=>	(and (= x_61 (succ_0 zero_0))
			(= x_6 One_0))
		(toNat_0 x_61 x_6))))
(assert (forall ((x_7 Bin_0) (y_4 Bin_0) (x_62 Bin_0) (x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0))
	(=>	(and (diseqNat_1 x_63 x_66)
			(times_0 x_62 x_7 y_4)
			(toNat_0 x_63 x_62)
			(toNat_0 x_64 x_7)
			(toNat_0 x_65 y_4)
			(times_1 x_66 x_64 x_65))
		false)))
(assert (forall ((x_8 Nat_0) (y_5 Nat_0) (z_3 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0))
	(=>	(and (diseqNat_1 x_68 x_70)
			(times_1 x_67 y_5 z_3)
			(times_1 x_68 x_8 x_67)
			(times_1 x_69 x_8 y_5)
			(times_1 x_70 x_69 z_3))
		false)))
(assert (forall ((x_9 Nat_0) (y_6 Nat_0) (z_4 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0) (x_74 Nat_0))
	(=>	(and (diseqNat_1 x_72 x_74)
			(plus_1 x_71 y_6 z_4)
			(plus_1 x_72 x_9 x_71)
			(plus_1 x_73 x_9 y_6)
			(plus_1 x_74 x_73 z_4))
		false)))
(assert (forall ((x_10 Nat_0) (y_7 Nat_0) (x_75 Nat_0) (x_76 Nat_0))
	(=>	(and (diseqNat_1 x_75 x_76)
			(times_1 x_75 x_10 y_7)
			(times_1 x_76 y_7 x_10))
		false)))
(assert (forall ((x_11 Nat_0) (y_8 Nat_0) (x_77 Nat_0) (x_78 Nat_0))
	(=>	(and (diseqNat_1 x_77 x_78)
			(plus_1 x_77 x_11 y_8)
			(plus_1 x_78 y_8 x_11))
		false)))
(assert (forall ((x_12 Nat_0) (y_9 Nat_0) (z_5 Nat_0) (x_79 Nat_0) (x_80 Nat_0) (x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0))
	(=>	(and (diseqNat_1 x_80 x_83)
			(plus_1 x_79 y_9 z_5)
			(times_1 x_80 x_12 x_79)
			(times_1 x_81 x_12 y_9)
			(times_1 x_82 x_12 z_5)
			(plus_1 x_83 x_81 x_82))
		false)))
(assert (forall ((x_13 Nat_0) (y_10 Nat_0) (z_6 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0))
	(=>	(and (diseqNat_1 x_85 x_88)
			(plus_1 x_84 x_13 y_10)
			(times_1 x_85 x_84 z_6)
			(times_1 x_86 x_13 z_6)
			(times_1 x_87 y_10 z_6)
			(plus_1 x_88 x_86 x_87))
		false)))
(assert (forall ((x_14 Nat_0) (x_89 Nat_0))
	(=>	(and (diseqNat_1 x_89 x_14)
			(times_1 x_89 x_14 (succ_0 zero_0)))
		false)))
(assert (forall ((x_15 Nat_0) (x_90 Nat_0))
	(=>	(and (diseqNat_1 x_90 x_15)
			(times_1 x_90 (succ_0 zero_0) x_15))
		false)))
(assert (forall ((x_16 Nat_0) (x_91 Nat_0))
	(=>	(and (diseqNat_1 x_91 x_16)
			(plus_1 x_91 x_16 zero_0))
		false)))
(assert (forall ((x_17 Nat_0) (x_92 Nat_0))
	(=>	(and (diseqNat_1 x_92 x_17)
			(plus_1 x_92 zero_0 x_17))
		false)))
(assert (forall ((x_18 Nat_0) (x_93 Nat_0))
	(=>	(and (diseqNat_1 x_93 zero_0)
			(times_1 x_93 x_18 zero_0))
		false)))
(assert (forall ((x_19 Nat_0) (x_94 Nat_0))
	(=>	(and (diseqNat_1 x_94 zero_0)
			(times_1 x_94 zero_0 x_19))
		false)))
(check-sat)
