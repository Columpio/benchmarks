(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_78 Nat_1) (x_77 Nat_1))
	(=> (= x_78 (S_0 x_77))
	    (unS_1 x_77 x_78))))
(assert (isZ_0 Z_0))
(assert (forall ((x_79 Nat_1))
	(isS_0 (S_0 x_79))))
(assert (forall ((x_80 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_80))))
(assert (forall ((x_81 Nat_1))
	(diseqNat_0 (S_0 x_81) Z_0)))
(assert (forall ((x_82 Nat_1) (x_83 Nat_1))
	(=> (diseqNat_0 x_82 x_83)
	    (diseqNat_0 (S_0 x_82) (S_0 x_83)))))
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
(assert (forall ((x_75 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_75 y_12)
	    (add_0 (S_0 r_0) (S_0 x_75) y_12))))
(assert (forall ((y_12 Nat_1))
	(minus_0 Z_0 Z_0 y_12)))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_75 y_12)
	    (minus_0 (S_0 r_0) (S_0 x_75) y_12))))
(assert (forall ((y_12 Nat_1))
	(le_0 Z_0 y_12)))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (le_0 x_75 y_12)
	    (le_0 (S_0 x_75) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(ge_0 y_12 Z_0)))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (ge_0 x_75 y_12)
	    (ge_0 (S_0 x_75) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(lt_0 Z_0 (S_0 y_12))))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_75 y_12)
	    (lt_0 (S_0 x_75) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(gt_0 (S_0 y_12) Z_0)))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (gt_0 x_75 y_12)
	    (gt_0 (S_0 x_75) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(mult_0 Z_0 Z_0 y_12)))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_10 Nat_1))
	(=>	(and (mult_0 r_0 x_75 y_12)
			(add_0 z_10 r_0 y_12))
		(mult_0 z_10 (S_0 x_75) y_12))))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_75 y_12)
	    (div_0 Z_0 x_75 y_12))))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_10 Nat_1))
	(=>	(and (ge_0 x_75 y_12)
			(minus_0 z_10 x_75 y_12)
			(div_0 r_0 z_10 y_12))
		(div_0 (S_0 r_0) x_75 y_12))))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1))
	(=> (lt_0 x_75 y_12)
	    (mod_0 x_75 x_75 y_12))))
(assert (forall ((x_75 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_10 Nat_1))
	(=>	(and (ge_0 x_75 y_12)
			(minus_0 z_10 x_75 y_12)
			(mod_0 r_0 z_10 y_12))
		(mod_0 r_0 x_75 y_12))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_86 Nat_0) (x_85 Nat_0))
	(=> (= x_86 (succ_0 x_85))
	    (p_1 x_85 x_86))))
(assert (iszero_0 zero_0))
(assert (forall ((x_87 Nat_0))
	(issucc_0 (succ_0 x_87))))
(assert (forall ((x_88 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_88))))
(assert (forall ((x_89 Nat_0))
	(diseqNat_1 (succ_0 x_89) zero_0)))
(assert (forall ((x_90 Nat_0) (x_91 Nat_0))
	(=> (diseqNat_1 x_90 x_91)
	    (diseqNat_1 (succ_0 x_90) (succ_0 x_91)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_18 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_18 (succ_0 x_19))
			(plus_0 x_19 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_18 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_20 Nat_0))
	(=>	(and (= x_20 y_0)
			(= x_0 zero_0))
		(plus_0 x_20 x_0 y_0))))
(declare-fun times_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0))
	(=>	(and (= x_21 x_23)
			(times_0 x_22 z_1 y_1)
			(plus_0 x_23 y_1 x_22)
			(= x_1 (succ_0 z_1)))
		(times_0 x_21 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_24 Nat_0))
	(=>	(and (= x_24 zero_0)
			(= x_1 zero_0))
		(times_0 x_24 x_1 y_1))))
(declare-fun formulapow_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0))
	(=>	(and (= x_25 x_27)
			(formulapow_0 x_26 x_2 z_2)
			(times_0 x_27 x_2 x_26)
			(= y_2 (succ_0 z_2)))
		(formulapow_0 x_25 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_28 Nat_0))
	(=>	(and (= x_28 (succ_0 zero_0))
			(= y_2 zero_0))
		(formulapow_0 x_28 x_2 y_2))))
(declare-fun formulapow_1 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0))
	(=>	(and (= x_29 x_31)
			(formulapow_1 x_30 x_3 z_3)
			(times_0 x_31 x_3 x_30)
			(= y_3 (succ_0 z_3)))
		(formulapow_1 x_29 x_3 y_3))))
(assert (forall ((x_3 Nat_0) (y_3 Nat_0) (x_32 Nat_0))
	(=>	(and (= x_32 (succ_0 zero_0))
			(= y_3 zero_0))
		(formulapow_1 x_32 x_3 y_3))))
(declare-fun formulapow_2 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0))
	(=>	(and (= x_33 x_35)
			(formulapow_2 x_34 x_4 z_4)
			(times_0 x_35 x_4 x_34)
			(= y_4 (succ_0 z_4)))
		(formulapow_2 x_33 x_4 y_4))))
(assert (forall ((x_4 Nat_0) (y_4 Nat_0) (x_36 Nat_0))
	(=>	(and (= x_36 (succ_0 zero_0))
			(= y_4 zero_0))
		(formulapow_2 x_36 x_4 y_4))))
(assert (forall ((n_0 Nat_0) (x_5 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0))
	(=>	(and (= x_43 x_46)
			(plus_0 x_37 (succ_0 zero_0) x_5)
			(plus_0 x_38 (succ_0 (succ_0 (succ_0 zero_0))) n_0)
			(formulapow_2 x_39 x_37 x_38)
			(plus_0 x_40 (succ_0 zero_0) y_5)
			(plus_0 x_41 (succ_0 (succ_0 (succ_0 zero_0))) n_0)
			(formulapow_1 x_42 x_40 x_41)
			(plus_0 x_43 x_39 x_42)
			(plus_0 x_44 (succ_0 zero_0) z_5)
			(plus_0 x_45 (succ_0 (succ_0 (succ_0 zero_0))) n_0)
			(formulapow_0 x_46 x_44 x_45))
		false)))
(assert (forall ((x_6 Nat_0) (y_6 Nat_0) (z_6 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0))
	(=>	(and (diseqNat_1 x_48 x_50)
			(times_0 x_47 y_6 z_6)
			(times_0 x_48 x_6 x_47)
			(times_0 x_49 x_6 y_6)
			(times_0 x_50 x_49 z_6))
		false)))
(assert (forall ((x_7 Nat_0) (y_7 Nat_0) (z_7 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0))
	(=>	(and (diseqNat_1 x_52 x_54)
			(plus_0 x_51 y_7 z_7)
			(plus_0 x_52 x_7 x_51)
			(plus_0 x_53 x_7 y_7)
			(plus_0 x_54 x_53 z_7))
		false)))
(assert (forall ((x_8 Nat_0) (y_8 Nat_0) (x_55 Nat_0) (x_56 Nat_0))
	(=>	(and (diseqNat_1 x_55 x_56)
			(times_0 x_55 x_8 y_8)
			(times_0 x_56 y_8 x_8))
		false)))
(assert (forall ((x_9 Nat_0) (y_9 Nat_0) (x_57 Nat_0) (x_58 Nat_0))
	(=>	(and (diseqNat_1 x_57 x_58)
			(plus_0 x_57 x_9 y_9)
			(plus_0 x_58 y_9 x_9))
		false)))
(assert (forall ((x_10 Nat_0) (y_10 Nat_0) (z_8 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Nat_0))
	(=>	(and (diseqNat_1 x_60 x_63)
			(plus_0 x_59 y_10 z_8)
			(times_0 x_60 x_10 x_59)
			(times_0 x_61 x_10 y_10)
			(times_0 x_62 x_10 z_8)
			(plus_0 x_63 x_61 x_62))
		false)))
(assert (forall ((x_11 Nat_0) (y_11 Nat_0) (z_9 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0))
	(=>	(and (diseqNat_1 x_65 x_68)
			(plus_0 x_64 x_11 y_11)
			(times_0 x_65 x_64 z_9)
			(times_0 x_66 x_11 z_9)
			(times_0 x_67 y_11 z_9)
			(plus_0 x_68 x_66 x_67))
		false)))
(assert (forall ((x_12 Nat_0) (x_69 Nat_0))
	(=>	(and (diseqNat_1 x_69 x_12)
			(times_0 x_69 x_12 (succ_0 zero_0)))
		false)))
(assert (forall ((x_13 Nat_0) (x_70 Nat_0))
	(=>	(and (diseqNat_1 x_70 x_13)
			(times_0 x_70 (succ_0 zero_0) x_13))
		false)))
(assert (forall ((x_14 Nat_0) (x_71 Nat_0))
	(=>	(and (diseqNat_1 x_71 x_14)
			(plus_0 x_71 x_14 zero_0))
		false)))
(assert (forall ((x_15 Nat_0) (x_72 Nat_0))
	(=>	(and (diseqNat_1 x_72 x_15)
			(plus_0 x_72 zero_0 x_15))
		false)))
(assert (forall ((x_16 Nat_0) (x_73 Nat_0))
	(=>	(and (diseqNat_1 x_73 zero_0)
			(times_0 x_73 x_16 zero_0))
		false)))
(assert (forall ((x_17 Nat_0) (x_74 Nat_0))
	(=>	(and (diseqNat_1 x_74 zero_0)
			(times_0 x_74 zero_0 x_17))
		false)))
(check-sat)
