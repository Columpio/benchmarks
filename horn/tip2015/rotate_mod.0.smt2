(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_71 Nat_1) (x_70 Nat_1))
	(=> (= x_71 (S_0 x_70))
	    (unS_1 x_70 x_71))))
(assert (isZ_0 Z_0))
(assert (forall ((x_72 Nat_1))
	(isS_0 (S_0 x_72))))
(assert (forall ((x_73 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_73))))
(assert (forall ((x_74 Nat_1))
	(diseqNat_0 (S_0 x_74) Z_0)))
(assert (forall ((x_75 Nat_1) (x_76 Nat_1))
	(=> (diseqNat_0 x_75 x_76)
	    (diseqNat_0 (S_0 x_75) (S_0 x_76)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_1 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_1 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_12 Nat_1))
	(add_0 y_12 Z_0 y_12)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_68 y_12)
	    (add_0 (S_0 r_0) (S_0 x_68) y_12))))
(assert (forall ((y_12 Nat_1))
	(minus_1 Z_0 Z_0 y_12)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1) (r_0 Nat_1))
	(=> (minus_1 r_0 x_68 y_12)
	    (minus_1 (S_0 r_0) (S_0 x_68) y_12))))
(assert (forall ((y_12 Nat_1))
	(le_0 Z_0 y_12)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (le_0 x_68 y_12)
	    (le_0 (S_0 x_68) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(ge_0 y_12 Z_0)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (ge_0 x_68 y_12)
	    (ge_0 (S_0 x_68) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(lt_1 Z_0 (S_0 y_12))))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (lt_1 x_68 y_12)
	    (lt_1 (S_0 x_68) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(gt_0 (S_0 y_12) Z_0)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (gt_0 x_68 y_12)
	    (gt_0 (S_0 x_68) (S_0 y_12)))))
(assert (forall ((y_12 Nat_1))
	(mult_0 Z_0 Z_0 y_12)))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (mult_0 r_0 x_68 y_12)
			(add_0 z_12 r_0 y_12))
		(mult_0 z_12 (S_0 x_68) y_12))))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (lt_1 x_68 y_12)
	    (div_0 Z_0 x_68 y_12))))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_68 y_12)
			(minus_1 z_12 x_68 y_12)
			(div_0 r_0 z_12 y_12))
		(div_0 (S_0 r_0) x_68 y_12))))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1))
	(=> (lt_1 x_68 y_12)
	    (mod_1 x_68 x_68 y_12))))
(assert (forall ((x_68 Nat_1) (y_12 Nat_1) (r_0 Nat_1) (z_12 Nat_1))
	(=>	(and (ge_0 x_68 y_12)
			(minus_1 z_12 x_68 y_12)
			(mod_1 r_0 z_12 y_12))
		(mod_1 r_0 x_68 y_12))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_1 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_80 list_0) (x_78 Nat_1) (x_79 list_0))
	(=> (= x_80 (cons_0 x_78 x_79))
	    (head_1 x_78 x_80))))
(assert (forall ((x_80 list_0) (x_78 Nat_1) (x_79 list_0))
	(=> (= x_80 (cons_0 x_78 x_79))
	    (tail_1 x_79 x_80))))
(assert (isnil_0 nil_0))
(assert (forall ((x_81 Nat_1) (x_82 list_0))
	(iscons_0 (cons_0 x_81 x_82))))
(assert (forall ((x_83 Nat_1) (x_84 list_0))
	(diseqlist_0 nil_0 (cons_0 x_83 x_84))))
(assert (forall ((x_85 Nat_1) (x_86 list_0))
	(diseqlist_0 (cons_0 x_85 x_86) nil_0)))
(assert (forall ((x_87 Nat_1) (x_88 list_0) (x_89 Nat_1) (x_90 list_0))
	(=> (diseqNat_0 x_87 x_89)
	    (diseqlist_0 (cons_0 x_87 x_88) (cons_0 x_89 x_90)))))
(assert (forall ((x_87 Nat_1) (x_88 list_0) (x_89 Nat_1) (x_90 list_0))
	(=> (diseqlist_0 x_88 x_90)
	    (diseqlist_0 (cons_0 x_87 x_88) (cons_0 x_89 x_90)))))
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
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (z_1 Nat_1) (xs_0 list_0) (x_14 list_0) (x_15 list_0))
	(=>	(and (= x_14 (cons_0 z_1 x_15))
			(take_0 x_15 z_0 xs_0)
			(= x_0 (succ_0 z_0))
			(= y_0 (cons_0 z_1 xs_0)))
		(take_0 x_14 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (z_0 Nat_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(= x_0 (succ_0 z_0))
			(= y_0 nil_0))
		(take_0 x_16 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 list_0) (x_17 list_0))
	(=>	(and (= x_17 nil_0)
			(= x_0 zero_0))
		(take_0 x_17 x_0 y_0))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_2 Nat_0) (x_18 Nat_0) (x_19 Nat_0))
	(=>	(and (= x_18 (succ_0 x_19))
			(plus_0 x_19 z_2 y_1)
			(= x_1 (succ_0 z_2)))
		(plus_0 x_18 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_20 Nat_0))
	(=>	(and (= x_20 y_1)
			(= x_1 zero_0))
		(plus_0 x_20 x_1 y_1))))
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (y_3 Nat_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_21 x_22)
			(minus_0 x_22 z_3 y_3)
			(= x_2 (succ_0 z_3))
			(= y_2 (succ_0 y_3)))
		(minus_0 x_21 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (z_3 Nat_0) (x_23 Nat_0))
	(=>	(and (= x_23 zero_0)
			(= x_2 (succ_0 z_3))
			(= y_2 zero_0))
		(minus_0 x_23 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 Nat_0) (x_24 Nat_0))
	(=>	(and (= x_24 zero_0)
			(= x_2 zero_0))
		(minus_0 x_24 x_2 y_2))))
(declare-fun lt_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (n_0 Nat_0) (x_25 Bool) (x_26 Bool))
	(=>	(and (= x_25 x_26)
			(lt_0 x_26 n_0 z_4)
			(= y_4 (succ_0 z_4))
			(= x_3 (succ_0 n_0)))
		(lt_0 x_25 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (z_4 Nat_0) (x_27 Bool))
	(=>	(and (= x_27 true)
			(= y_4 (succ_0 z_4))
			(= x_3 zero_0))
		(lt_0 x_27 x_3 y_4))))
(assert (forall ((x_3 Nat_0) (y_4 Nat_0) (x_28 Bool))
	(=>	(and (= x_28 false)
			(= y_4 zero_0))
		(lt_0 x_28 x_3 y_4))))
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_30 Nat_0) (x_29 Bool))
	(=>	(and (= x_30 x_4)
			(= y_5 (succ_0 z_5))
			(= x_29 true)
			(lt_0 x_29 x_4 (succ_0 z_5)))
		(mod_0 x_30 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (z_5 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_31 Bool))
	(=>	(and (= x_32 x_34)
			(minus_0 x_33 x_4 (succ_0 z_5))
			(mod_0 x_34 x_33 (succ_0 z_5))
			(= y_5 (succ_0 z_5))
			(= x_31 false)
			(lt_0 x_31 x_4 (succ_0 z_5)))
		(mod_0 x_32 x_4 y_5))))
(assert (forall ((x_4 Nat_0) (y_5 Nat_0) (x_35 Nat_0))
	(=>	(and (= x_35 zero_0)
			(= y_5 zero_0))
		(mod_0 x_35 x_4 y_5))))
(declare-fun length_0 (Nat_0 list_0) Bool)
(assert (forall ((x_5 list_0) (y_6 Nat_1) (l_0 list_0) (x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0))
	(=>	(and (= x_36 x_38)
			(length_0 x_37 l_0)
			(plus_0 x_38 (succ_0 zero_0) x_37)
			(= x_5 (cons_0 y_6 l_0)))
		(length_0 x_36 x_5))))
(assert (forall ((x_5 list_0) (x_39 Nat_0))
	(=>	(and (= x_39 zero_0)
			(= x_5 nil_0))
		(length_0 x_39 x_5))))
(declare-fun drop_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_6 Nat_0) (y_7 list_0) (z_6 Nat_0) (z_7 Nat_1) (xs_1 list_0) (x_40 list_0) (x_41 list_0))
	(=>	(and (= x_40 x_41)
			(drop_0 x_41 z_6 xs_1)
			(= x_6 (succ_0 z_6))
			(= y_7 (cons_0 z_7 xs_1)))
		(drop_0 x_40 x_6 y_7))))
(assert (forall ((x_6 Nat_0) (y_7 list_0) (z_6 Nat_0) (x_42 list_0))
	(=>	(and (= x_42 nil_0)
			(= x_6 (succ_0 z_6))
			(= y_7 nil_0))
		(drop_0 x_42 x_6 y_7))))
(assert (forall ((x_6 Nat_0) (y_7 list_0) (x_43 list_0))
	(=>	(and (= x_43 y_7)
			(= x_6 zero_0))
		(drop_0 x_43 x_6 y_7))))
(declare-fun x_7 (list_0 list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_8 list_0) (z_8 Nat_1) (xs_2 list_0) (x_44 list_0) (x_45 list_0))
	(=>	(and (= x_44 (cons_0 z_8 x_45))
			(x_7 x_45 xs_2 y_8)
			(= x_8 (cons_0 z_8 xs_2)))
		(x_7 x_44 x_8 y_8))))
(assert (forall ((x_8 list_0) (y_8 list_0) (x_46 list_0))
	(=>	(and (= x_46 y_8)
			(= x_8 nil_0))
		(x_7 x_46 x_8 y_8))))
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_9 Nat_0) (z_10 Nat_1) (xs_3 list_0) (x_47 list_0) (x_48 list_0) (x_49 list_0))
	(=>	(and (= x_47 x_49)
			(x_7 x_48 xs_3 (cons_0 z_10 nil_0))
			(rotate_0 x_49 z_9 x_48)
			(= x_9 (succ_0 z_9))
			(= y_9 (cons_0 z_10 xs_3)))
		(rotate_0 x_47 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (z_9 Nat_0) (x_50 list_0))
	(=>	(and (= x_50 nil_0)
			(= x_9 (succ_0 z_9))
			(= y_9 nil_0))
		(rotate_0 x_50 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_0) (x_51 list_0))
	(=>	(and (= x_51 y_9)
			(= x_9 zero_0))
		(rotate_0 x_51 x_9 y_9))))
(assert (forall ((x_10 Nat_0) (y_10 Nat_0) (z_11 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0))
	(=>	(and (diseqNat_1 x_53 x_55)
			(plus_0 x_52 y_10 z_11)
			(plus_0 x_53 x_10 x_52)
			(plus_0 x_54 x_10 y_10)
			(plus_0 x_55 x_54 z_11))
		false)))
(assert (forall ((x_11 Nat_0) (y_11 Nat_0) (x_56 Nat_0) (x_57 Nat_0))
	(=>	(and (diseqNat_1 x_56 x_57)
			(plus_0 x_56 x_11 y_11)
			(plus_0 x_57 y_11 x_11))
		false)))
(assert (forall ((x_12 Nat_0) (x_58 Nat_0))
	(=>	(and (diseqNat_1 x_58 x_12)
			(plus_0 x_58 x_12 zero_0))
		false)))
(assert (forall ((x_13 Nat_0) (x_59 Nat_0))
	(=>	(and (diseqNat_1 x_59 x_13)
			(plus_0 x_59 zero_0 x_13))
		false)))
(assert (forall ((n_1 Nat_0) (xs_4 list_0) (x_60 list_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 list_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 list_0) (x_67 list_0))
	(=>	(and (diseqlist_0 x_60 x_67)
			(rotate_0 x_60 n_1 xs_4)
			(length_0 x_61 xs_4)
			(mod_0 x_62 n_1 x_61)
			(drop_0 x_63 x_62 xs_4)
			(length_0 x_64 xs_4)
			(mod_0 x_65 n_1 x_64)
			(take_0 x_66 x_65 xs_4)
			(x_7 x_67 x_63 x_66))
		false)))
(check-sat)