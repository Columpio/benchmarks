(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_83 Nat_1) (x_82 Nat_1))
	(=> (= x_83 (S_0 x_82))
	    (unS_1 x_82 x_83))))
(assert (isZ_0 Z_0))
(assert (forall ((x_84 Nat_1))
	(isS_0 (S_0 x_84))))
(assert (forall ((x_85 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_85))))
(assert (forall ((x_86 Nat_1))
	(diseqNat_0 (S_0 x_86) Z_0)))
(assert (forall ((x_87 Nat_1) (x_88 Nat_1))
	(=> (diseqNat_0 x_87 x_88)
	    (diseqNat_0 (S_0 x_87) (S_0 x_88)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_12 Nat_1))
	(add_0 y_12 Z_0 y_12)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_80 y_12)
	    (add_0 (S_0 r_0) (S_0 x_80) y_12))))
(assert (forall ((y_12 Nat_1))
	(minus_0 Z_0 Z_0 y_12)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_80 y_12)
	    (minus_0 (S_0 r_0) (S_0 x_80) y_12))))
(assert (forall ((y_12 Nat_1))
	(le_0 Z_0 y_12)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (le_0 x_80 y_12)
	    (le_0 (S_0 x_80) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(ge_0 y_12 Z_0)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (ge_0 x_80 y_12)
	    (ge_0 (S_0 x_80) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(lt_0 Z_0 (S_0 y_12))))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_80 y_12)
	    (lt_0 (S_0 x_80) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(gt_0 (S_0 y_12) Z_0)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (gt_0 x_80 y_12)
	    (gt_0 (S_0 x_80) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(mult_0 Z_0 Z_0 y_12)))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_8 Nat_1))
	(=>	(and (mult_0 r_0 x_80 y_12)
			(add_0 z_8 r_0 y_12))
		(mult_0 z_8 (S_0 x_80) y_12))))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_80 y_12)
	    (div_0 Z_0 x_80 y_12))))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_8 Nat_1))
	(=>	(and (ge_0 x_80 y_12)
			(minus_0 z_8 x_80 y_12)
			(div_0 r_0 z_8 y_12))
		(div_0 (S_0 r_0) x_80 y_12))))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_80 y_12)
	    (mod_0 x_80 x_80 y_12))))
(assert (forall ((x_80 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_8 Nat_1))
	(=>	(and (ge_0 x_80 y_12)
			(minus_0 z_8 x_80 y_12)
			(mod_0 r_0 z_8 y_12))
		(mod_0 r_0 x_80 y_12))))
(declare-datatypes ((Sign_0 0)) (((Pos_0 ) (Neg_0 ))))
(declare-fun diseqSign_0 (Sign_0 Sign_0) Bool)
(declare-fun isPos_0 (Sign_0) Bool)
(declare-fun isNeg_0 (Sign_0) Bool)
(assert (isPos_0 Pos_0))
(assert (isNeg_0 Neg_0))
(assert (diseqSign_0 Pos_0 Neg_0))
(assert (diseqSign_0 Neg_0 Pos_0))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_93 Nat_0) (x_92 Nat_0))
	(=> (= x_93 (succ_0 x_92))
	    (p_1 x_92 x_93))))
(assert (iszero_0 zero_0))
(assert (forall ((x_94 Nat_0))
	(issucc_0 (succ_0 x_94))))
(assert (forall ((x_95 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_95))))
(assert (forall ((x_96 Nat_0))
	(diseqNat_1 (succ_0 x_96) zero_0)))
(assert (forall ((x_97 Nat_0) (x_98 Nat_0))
	(=> (diseqNat_1 x_97 x_98)
	    (diseqNat_1 (succ_0 x_97) (succ_0 x_98)))))
(declare-datatypes ((Integer_0 0)) (((P_0 (projP_0 Nat_0)) (N_0 (projN_0 Nat_0)))))
(declare-fun diseqInteger_0 (Integer_0 Integer_0) Bool)
(declare-fun projP_1 (Nat_0 Integer_0) Bool)
(declare-fun projN_1 (Nat_0 Integer_0) Bool)
(declare-fun isP_0 (Integer_0) Bool)
(declare-fun isN_0 (Integer_0) Bool)
(assert (forall ((x_100 Integer_0) (x_99 Nat_0))
	(=> (= x_100 (P_0 x_99))
	    (projP_1 x_99 x_100))))
(assert (forall ((x_102 Integer_0) (x_101 Nat_0))
	(=> (= x_102 (N_0 x_101))
	    (projN_1 x_101 x_102))))
(assert (forall ((x_103 Nat_0))
	(isP_0 (P_0 x_103))))
(assert (forall ((x_104 Nat_0))
	(isN_0 (N_0 x_104))))
(assert (forall ((x_105 Nat_0) (x_106 Nat_0))
	(diseqInteger_0 (P_0 x_105) (N_0 x_106))))
(assert (forall ((x_107 Nat_0) (x_108 Nat_0))
	(diseqInteger_0 (N_0 x_107) (P_0 x_108))))
(assert (forall ((x_109 Nat_0) (x_110 Nat_0))
	(=> (diseqNat_1 x_109 x_110)
	    (diseqInteger_0 (P_0 x_109) (P_0 x_110)))))
(assert (forall ((x_111 Nat_0) (x_112 Nat_0))
	(=> (diseqNat_1 x_111 x_112)
	    (diseqInteger_0 (N_0 x_111) (N_0 x_112)))))
(declare-fun toInteger_0 (Integer_0 Sign_0 Nat_0) Bool)
(assert (forall ((x_0 Sign_0) (y_0 Nat_0) (z_0 Nat_0) (x_21 Integer_0))
	(=>	(and (= x_21 (N_0 z_0))
			(= x_0 Neg_0)
			(= y_0 (succ_0 z_0)))
		(toInteger_0 x_21 x_0 y_0))))
(assert (forall ((x_0 Sign_0) (y_0 Nat_0) (x_22 Integer_0))
	(=>	(and (= x_22 (P_0 zero_0))
			(= x_0 Neg_0)
			(= y_0 zero_0))
		(toInteger_0 x_22 x_0 y_0))))
(assert (forall ((x_0 Sign_0) (y_0 Nat_0) (x_23 Integer_0))
	(=>	(and (= x_23 (P_0 y_0))
			(= x_0 Pos_0))
		(toInteger_0 x_23 x_0 y_0))))
(declare-fun sign_0 (Sign_0 Integer_0) Bool)
(assert (forall ((x_1 Integer_0) (z_1 Nat_0) (x_24 Sign_0))
	(=>	(and (= x_24 Neg_0)
			(= x_1 (N_0 z_1)))
		(sign_0 x_24 x_1))))
(assert (forall ((x_1 Integer_0) (y_1 Nat_0) (x_25 Sign_0))
	(=>	(and (= x_25 Pos_0)
			(= x_1 (P_0 y_1)))
		(sign_0 x_25 x_1))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_26 Nat_0) (x_27 Nat_0))
	(=>	(and (= x_26 (succ_0 x_27))
			(plus_0 x_27 z_2 y_2)
			(= x_2 (succ_0 z_2)))
		(plus_0 x_26 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_28 Nat_0))
	(=>	(and (= x_28 y_2)
			(= x_2 zero_0))
		(plus_0 x_28 x_2 y_2))))
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0))
	(=>	(and (= x_29 x_31)
			(times_0 x_30 z_3 y_3)
			(plus_0 x_31 y_3 x_30)
			(= x_3 (succ_0 z_3)))
		(times_0 x_29 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (x_32 Nat_0))
	(=>	(and (= x_32 zero_0)
			(= x_3 zero_0))
		(times_0 x_32 x_3 y_3))))
(declare-fun opposite_0 (Sign_0 Sign_0) Bool)
(assert (forall ((x_4 Sign_0) (x_33 Sign_0))
	(=>	(and (= x_33 Pos_0)
			(= x_4 Neg_0))
		(opposite_0 x_33 x_4))))
(assert (forall ((x_4 Sign_0) (x_34 Sign_0))
	(=>	(and (= x_34 Neg_0)
			(= x_4 Pos_0))
		(opposite_0 x_34 x_4))))
(declare-fun timesSign_0 (Sign_0 Sign_0 Sign_0) Bool)
(assert (forall ((x_5 Sign_0) (y_4 Sign_0) (x_35 Sign_0) (x_36 Sign_0))
	(=>	(and (= x_35 x_36)
			(opposite_0 x_36 y_4)
			(= x_5 Neg_0))
		(timesSign_0 x_35 x_5 y_4))))
(assert (forall ((x_5 Sign_0) (y_4 Sign_0) (x_37 Sign_0))
	(=>	(and (= x_37 y_4)
			(= x_5 Pos_0))
		(timesSign_0 x_37 x_5 y_4))))
(declare-fun one_0 (Integer_0) Bool)
(assert (forall ((x_38 Integer_0))
	(=> (= x_38 (P_0 (succ_0 zero_0)))
	    (one_0 x_38))))
(declare-fun absVal_0 (Nat_0 Integer_0) Bool)
(assert (forall ((x_6 Integer_0) (m_0 Nat_0) (x_39 Nat_0) (x_40 Nat_0))
	(=>	(and (= x_39 x_40)
			(plus_0 x_40 (succ_0 zero_0) m_0)
			(= x_6 (N_0 m_0)))
		(absVal_0 x_39 x_6))))
(assert (forall ((x_6 Integer_0) (n_0 Nat_0) (x_41 Nat_0))
	(=>	(and (= x_41 n_0)
			(= x_6 (P_0 n_0)))
		(absVal_0 x_41 x_6))))
(declare-fun times_1 (Integer_0 Integer_0 Integer_0) Bool)
(assert (forall ((x_7 Integer_0) (y_5 Integer_0) (x_42 Integer_0) (x_43 Sign_0) (x_44 Sign_0) (x_45 Sign_0) (x_46 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Integer_0))
	(=>	(and (= x_42 x_49)
			(sign_0 x_43 x_7)
			(sign_0 x_44 y_5)
			(timesSign_0 x_45 x_43 x_44)
			(absVal_0 x_46 x_7)
			(absVal_0 x_47 y_5)
			(times_0 x_48 x_46 x_47)
			(toInteger_0 x_49 x_45 x_48))
		(times_1 x_42 x_7 y_5))))
(assert (forall ((x_8 Integer_0) (x_50 Integer_0) (x_51 Integer_0))
	(=>	(and (diseqInteger_0 x_8 x_51)
			(one_0 x_50)
			(times_1 x_51 x_8 x_50))
		false)))
(assert (forall ((x_9 Nat_0) (y_6 Nat_0) (z_4 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0))
	(=>	(and (diseqNat_1 x_53 x_55)
			(times_0 x_52 y_6 z_4)
			(times_0 x_53 x_9 x_52)
			(times_0 x_54 x_9 y_6)
			(times_0 x_55 x_54 z_4))
		false)))
(assert (forall ((x_10 Nat_0) (y_7 Nat_0) (z_5 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0))
	(=>	(and (diseqNat_1 x_57 x_59)
			(plus_0 x_56 y_7 z_5)
			(plus_0 x_57 x_10 x_56)
			(plus_0 x_58 x_10 y_7)
			(plus_0 x_59 x_58 z_5))
		false)))
(assert (forall ((x_11 Nat_0) (y_8 Nat_0) (x_60 Nat_0) (x_61 Nat_0))
	(=>	(and (diseqNat_1 x_60 x_61)
			(times_0 x_60 x_11 y_8)
			(times_0 x_61 y_8 x_11))
		false)))
(assert (forall ((x_12 Nat_0) (y_9 Nat_0) (x_62 Nat_0) (x_63 Nat_0))
	(=>	(and (diseqNat_1 x_62 x_63)
			(plus_0 x_62 x_12 y_9)
			(plus_0 x_63 y_9 x_12))
		false)))
(assert (forall ((x_13 Nat_0) (y_10 Nat_0) (z_6 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0))
	(=>	(and (diseqNat_1 x_65 x_68)
			(plus_0 x_64 y_10 z_6)
			(times_0 x_65 x_13 x_64)
			(times_0 x_66 x_13 y_10)
			(times_0 x_67 x_13 z_6)
			(plus_0 x_68 x_66 x_67))
		false)))
(assert (forall ((x_14 Nat_0) (y_11 Nat_0) (z_7 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0))
	(=>	(and (diseqNat_1 x_70 x_73)
			(plus_0 x_69 x_14 y_11)
			(times_0 x_70 x_69 z_7)
			(times_0 x_71 x_14 z_7)
			(times_0 x_72 y_11 z_7)
			(plus_0 x_73 x_71 x_72))
		false)))
(assert (forall ((x_15 Nat_0) (x_74 Nat_0))
	(=>	(and (diseqNat_1 x_74 x_15)
			(times_0 x_74 x_15 (succ_0 zero_0)))
		false)))
(assert (forall ((x_16 Nat_0) (x_75 Nat_0))
	(=>	(and (diseqNat_1 x_75 x_16)
			(times_0 x_75 (succ_0 zero_0) x_16))
		false)))
(assert (forall ((x_17 Nat_0) (x_76 Nat_0))
	(=>	(and (diseqNat_1 x_76 x_17)
			(plus_0 x_76 x_17 zero_0))
		false)))
(assert (forall ((x_18 Nat_0) (x_77 Nat_0))
	(=>	(and (diseqNat_1 x_77 x_18)
			(plus_0 x_77 zero_0 x_18))
		false)))
(assert (forall ((x_19 Nat_0) (x_78 Nat_0))
	(=>	(and (diseqNat_1 x_78 zero_0)
			(times_0 x_78 x_19 zero_0))
		false)))
(assert (forall ((x_20 Nat_0) (x_79 Nat_0))
	(=>	(and (diseqNat_1 x_79 zero_0)
			(times_0 x_79 zero_0 x_20))
		false)))
(check-sat)
