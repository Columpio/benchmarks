(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_30 Nat_1) (x_29 Nat_1))
	(=> (= x_30 (S_1 x_29))
	    (unS_1 x_29 x_30))))
(assert (isZ_0 Z_1))
(assert (forall ((x_31 Nat_1))
	(isS_0 (S_1 x_31))))
(assert (forall ((x_32 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_32))))
(assert (forall ((x_33 Nat_1))
	(diseqNat_0 (S_1 x_33) Z_1)))
(assert (forall ((x_34 Nat_1) (x_35 Nat_1))
	(=> (diseqNat_0 x_34 x_35)
	    (diseqNat_0 (S_1 x_34) (S_1 x_35)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_3 Nat_1))
	(add_0 y_3 Z_1 y_3)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_27 y_3)
	    (add_0 (S_1 r_0) (S_1 x_27) y_3))))
(assert (forall ((y_3 Nat_1))
	(minus_0 Z_1 Z_1 y_3)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_27 y_3)
	    (minus_0 (S_1 r_0) (S_1 x_27) y_3))))
(assert (forall ((y_3 Nat_1))
	(le_0 Z_1 y_3)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (le_0 x_27 y_3)
	    (le_0 (S_1 x_27) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(ge_0 y_3 Z_1)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (ge_0 x_27 y_3)
	    (ge_0 (S_1 x_27) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(lt_0 Z_1 (S_1 y_3))))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_27 y_3)
	    (lt_0 (S_1 x_27) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(gt_0 (S_1 y_3) Z_1)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (gt_0 x_27 y_3)
	    (gt_0 (S_1 x_27) (S_1 y_3)))))
(assert (forall ((y_3 Nat_1))
	(mult_0 Z_1 Z_1 y_3)))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (mult_0 r_0 x_27 y_3)
			(add_0 z_3 r_0 y_3))
		(mult_0 z_3 (S_1 x_27) y_3))))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_27 y_3)
	    (div_0 Z_1 x_27 y_3))))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_27 y_3)
			(minus_0 z_3 x_27 y_3)
			(div_0 r_0 z_3 y_3))
		(div_0 (S_1 r_0) x_27 y_3))))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1))
	(=> (lt_0 x_27 y_3)
	    (mod_0 x_27 x_27 y_3))))
(assert (forall ((x_27 Nat_1) (y_3 Nat_1) (r_0 Nat_1) (z_3 Nat_1))
	(=>	(and (ge_0 x_27 y_3)
			(minus_0 z_3 x_27 y_3)
			(mod_0 r_0 z_3 y_3))
		(mod_0 r_0 x_27 y_3))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_1) (projpair_1 Nat_1)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Nat_1 pair_0) Bool)
(declare-fun projpair_3 (Nat_1 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_38 pair_0) (x_36 Nat_1) (x_37 Nat_1))
	(=> (= x_38 (pair_1 x_36 x_37))
	    (projpair_2 x_36 x_38))))
(assert (forall ((x_38 pair_0) (x_36 Nat_1) (x_37 Nat_1))
	(=> (= x_38 (pair_1 x_36 x_37))
	    (projpair_3 x_37 x_38))))
(assert (forall ((x_39 Nat_1) (x_40 Nat_1))
	(ispair_0 (pair_1 x_39 x_40))))
(assert (forall ((x_41 Nat_1) (x_42 Nat_1) (x_43 Nat_1) (x_44 Nat_1))
	(=> (diseqNat_0 x_41 x_43)
	    (diseqpair_0 (pair_1 x_41 x_42) (pair_1 x_43 x_44)))))
(assert (forall ((x_41 Nat_1) (x_42 Nat_1) (x_43 Nat_1) (x_44 Nat_1))
	(=> (diseqNat_0 x_42 x_44)
	    (diseqpair_0 (pair_1 x_41 x_42) (pair_1 x_43 x_44)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_1) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_1 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_48 list_0) (x_46 Nat_1) (x_47 list_0))
	(=> (= x_48 (cons_0 x_46 x_47))
	    (head_2 x_46 x_48))))
(assert (forall ((x_48 list_0) (x_46 Nat_1) (x_47 list_0))
	(=> (= x_48 (cons_0 x_46 x_47))
	    (tail_2 x_47 x_48))))
(assert (isnil_0 nil_0))
(assert (forall ((x_49 Nat_1) (x_50 list_0))
	(iscons_0 (cons_0 x_49 x_50))))
(assert (forall ((x_51 Nat_1) (x_52 list_0))
	(diseqlist_0 nil_0 (cons_0 x_51 x_52))))
(assert (forall ((x_53 Nat_1) (x_54 list_0))
	(diseqlist_0 (cons_0 x_53 x_54) nil_0)))
(assert (forall ((x_55 Nat_1) (x_56 list_0) (x_57 Nat_1) (x_58 list_0))
	(=> (diseqNat_0 x_55 x_57)
	    (diseqlist_0 (cons_0 x_55 x_56) (cons_0 x_57 x_58)))))
(assert (forall ((x_55 Nat_1) (x_56 list_0) (x_57 Nat_1) (x_58 list_0))
	(=> (diseqlist_0 x_56 x_58)
	    (diseqlist_0 (cons_0 x_55 x_56) (cons_0 x_57 x_58)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (pair_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_62 list_1) (x_60 pair_0) (x_61 list_1))
	(=> (= x_62 (cons_1 x_60 x_61))
	    (head_3 x_60 x_62))))
(assert (forall ((x_62 list_1) (x_60 pair_0) (x_61 list_1))
	(=> (= x_62 (cons_1 x_60 x_61))
	    (tail_3 x_61 x_62))))
(assert (isnil_1 nil_1))
(assert (forall ((x_63 pair_0) (x_64 list_1))
	(iscons_1 (cons_1 x_63 x_64))))
(assert (forall ((x_65 pair_0) (x_66 list_1))
	(diseqlist_1 nil_1 (cons_1 x_65 x_66))))
(assert (forall ((x_67 pair_0) (x_68 list_1))
	(diseqlist_1 (cons_1 x_67 x_68) nil_1)))
(assert (forall ((x_69 pair_0) (x_70 list_1) (x_71 pair_0) (x_72 list_1))
	(=> (diseqpair_0 x_69 x_71)
	    (diseqlist_1 (cons_1 x_69 x_70) (cons_1 x_71 x_72)))))
(assert (forall ((x_69 pair_0) (x_70 list_1) (x_71 pair_0) (x_72 list_1))
	(=> (diseqlist_1 x_70 x_72)
	    (diseqlist_1 (cons_1 x_69 x_70) (cons_1 x_71 x_72)))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_75 Nat_0) (x_74 Nat_0))
	(=> (= x_75 (S_0 x_74))
	    (projS_1 x_74 x_75))))
(assert (isZ_1 Z_0))
(assert (forall ((x_76 Nat_0))
	(isS_1 (S_0 x_76))))
(assert (forall ((x_77 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_77))))
(assert (forall ((x_78 Nat_0))
	(diseqNat_1 (S_0 x_78) Z_0)))
(assert (forall ((x_79 Nat_0) (x_80 Nat_0))
	(=> (diseqNat_1 x_79 x_80)
	    (diseqNat_1 (S_0 x_79) (S_0 x_80)))))
(declare-fun zip_0 (list_1 list_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 Nat_1) (x_1 list_0) (x_2 Nat_1) (x_3 list_0) (x_10 list_1) (x_11 list_1))
	(=>	(and (= x_10 (cons_1 (pair_1 z_0 x_2) x_11))
			(zip_0 x_11 x_1 x_3)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 (cons_0 x_2 x_3)))
		(zip_0 x_10 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 Nat_1) (x_1 list_0) (x_12 list_1))
	(=>	(and (= x_12 nil_1)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 nil_0))
		(zip_0 x_12 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (x_13 list_1))
	(=>	(and (= x_13 nil_1)
			(= x_0 nil_0))
		(zip_0 x_13 x_0 y_0))))
(declare-fun take_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_4 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_5 Nat_1) (x_6 list_0) (x_14 list_0) (x_15 list_0))
	(=>	(and (= x_14 (cons_0 x_5 x_15))
			(take_0 x_15 z_1 x_6)
			(= x_4 (S_0 z_1))
			(= y_1 (cons_0 x_5 x_6)))
		(take_0 x_14 x_4 y_1))))
(assert (forall ((x_4 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_16 list_0))
	(=>	(and (= x_16 nil_0)
			(= x_4 (S_0 z_1))
			(= y_1 nil_0))
		(take_0 x_16 x_4 y_1))))
(assert (forall ((x_4 Nat_0) (y_1 list_0) (x_17 list_0))
	(=>	(and (= x_17 nil_0)
			(= x_4 Z_0))
		(take_0 x_17 x_4 y_1))))
(declare-fun take_1 (list_1 Nat_0 list_1) Bool)
(assert (forall ((x_7 Nat_0) (y_2 list_1) (z_2 Nat_0) (x_8 pair_0) (x_9 list_1) (x_18 list_1) (x_19 list_1))
	(=>	(and (= x_18 (cons_1 x_8 x_19))
			(take_1 x_19 z_2 x_9)
			(= x_7 (S_0 z_2))
			(= y_2 (cons_1 x_8 x_9)))
		(take_1 x_18 x_7 y_2))))
(assert (forall ((x_7 Nat_0) (y_2 list_1) (z_2 Nat_0) (x_20 list_1))
	(=>	(and (= x_20 nil_1)
			(= x_7 (S_0 z_2))
			(= y_2 nil_1))
		(take_1 x_20 x_7 y_2))))
(assert (forall ((x_7 Nat_0) (y_2 list_1) (x_21 list_1))
	(=>	(and (= x_21 nil_1)
			(= x_7 Z_0))
		(take_1 x_21 x_7 y_2))))
(assert (forall ((n_0 Nat_0) (xs_0 list_0) (ys_0 list_0) (x_22 list_1) (x_23 list_1) (x_24 list_0) (x_25 list_0) (x_26 list_1))
	(=>	(and (diseqlist_1 x_23 x_26)
			(zip_0 x_22 xs_0 ys_0)
			(take_1 x_23 n_0 x_22)
			(take_0 x_24 n_0 xs_0)
			(take_0 x_25 n_0 ys_0)
			(zip_0 x_26 x_24 x_25))
		false)))
(check-sat)
