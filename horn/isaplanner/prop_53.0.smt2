(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_41 Nat_1) (x_40 Nat_1))
	(=> (= x_41 (S_1 x_40))
	    (unS_1 x_40 x_41))))
(assert (isZ_0 Z_1))
(assert (forall ((x_42 Nat_1))
	(isS_0 (S_1 x_42))))
(assert (forall ((x_43 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_43))))
(assert (forall ((x_44 Nat_1))
	(diseqNat_0 (S_1 x_44) Z_1)))
(assert (forall ((x_45 Nat_1) (x_46 Nat_1))
	(=> (diseqNat_0 x_45 x_46)
	    (diseqNat_0 (S_1 x_45) (S_1 x_46)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_6 Nat_1))
	(add_0 y_6 Z_1 y_6)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_38 y_6)
	    (add_0 (S_1 r_0) (S_1 x_38) y_6))))
(assert (forall ((y_6 Nat_1))
	(minus_0 Z_1 Z_1 y_6)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_38 y_6)
	    (minus_0 (S_1 r_0) (S_1 x_38) y_6))))
(assert (forall ((y_6 Nat_1))
	(le_0 Z_1 y_6)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (le_0 x_38 y_6)
	    (le_0 (S_1 x_38) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(ge_0 y_6 Z_1)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (ge_0 x_38 y_6)
	    (ge_0 (S_1 x_38) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(lt_0 Z_1 (S_1 y_6))))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_38 y_6)
	    (lt_0 (S_1 x_38) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(gt_0 (S_1 y_6) Z_1)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (gt_0 x_38 y_6)
	    (gt_0 (S_1 x_38) (S_1 y_6)))))
(assert (forall ((y_6 Nat_1))
	(mult_0 Z_1 Z_1 y_6)))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_38 y_6)
			(add_0 z_4 r_0 y_6))
		(mult_0 z_4 (S_1 x_38) y_6))))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_38 y_6)
	    (div_0 Z_1 x_38 y_6))))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_38 y_6)
			(minus_0 z_4 x_38 y_6)
			(div_0 r_0 z_4 y_6))
		(div_0 (S_1 r_0) x_38 y_6))))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1))
	(=> (lt_0 x_38 y_6)
	    (mod_0 x_38 x_38 y_6))))
(assert (forall ((x_38 Nat_1) (y_6 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_38 y_6)
			(minus_0 z_4 x_38 y_6)
			(mod_0 r_0 z_4 y_6))
		(mod_0 r_0 x_38 y_6))))
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (projS_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(assert (forall ((x_49 Nat_0) (x_48 Nat_0))
	(=> (= x_49 (S_0 x_48))
	    (projS_1 x_48 x_49))))
(assert (isZ_1 Z_0))
(assert (forall ((x_50 Nat_0))
	(isS_1 (S_0 x_50))))
(assert (forall ((x_51 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_51))))
(assert (forall ((x_52 Nat_0))
	(diseqNat_1 (S_0 x_52) Z_0)))
(assert (forall ((x_53 Nat_0) (x_54 Nat_0))
	(=> (diseqNat_1 x_53 x_54)
	    (diseqNat_1 (S_0 x_53) (S_0 x_54)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_58 list_0) (x_56 Nat_0) (x_57 list_0))
	(=> (= x_58 (cons_0 x_56 x_57))
	    (head_1 x_56 x_58))))
(assert (forall ((x_58 list_0) (x_56 Nat_0) (x_57 list_0))
	(=> (= x_58 (cons_0 x_56 x_57))
	    (tail_1 x_57 x_58))))
(assert (isnil_0 nil_0))
(assert (forall ((x_59 Nat_0) (x_60 list_0))
	(iscons_0 (cons_0 x_59 x_60))))
(assert (forall ((x_61 Nat_0) (x_62 list_0))
	(diseqlist_0 nil_0 (cons_0 x_61 x_62))))
(assert (forall ((x_63 Nat_0) (x_64 list_0))
	(diseqlist_0 (cons_0 x_63 x_64) nil_0)))
(assert (forall ((x_65 Nat_0) (x_66 list_0) (x_67 Nat_0) (x_68 list_0))
	(=> (diseqNat_1 x_65 x_67)
	    (diseqlist_0 (cons_0 x_65 x_66) (cons_0 x_67 x_68)))))
(assert (forall ((x_65 Nat_0) (x_66 list_0) (x_67 Nat_0) (x_68 list_0))
	(=> (diseqlist_0 x_66 x_68)
	    (diseqlist_0 (cons_0 x_65 x_66) (cons_0 x_67 x_68)))))
(declare-fun x_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (y_1 Nat_0) (x_9 Bool) (x_10 Bool))
	(=>	(and (= x_9 x_10)
			(x_0 x_10 x_2 y_1)
			(= x_1 (S_0 x_2))
			(= y_0 (S_0 y_1)))
		(x_0 x_9 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_2 Nat_0) (x_11 Bool))
	(=>	(and (= x_11 false)
			(= x_1 (S_0 x_2))
			(= y_0 Z_0))
		(x_0 x_11 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_12 Bool))
	(=>	(and (= x_12 false)
			(= x_1 Z_0)
			(= y_0 (S_0 z_0)))
		(x_0 x_12 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (x_13 Bool))
	(=>	(and (= x_13 true)
			(= x_1 Z_0)
			(= y_0 Z_0))
		(x_0 x_13 x_1 y_0))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_15 Nat_0) (x_16 Nat_0) (x_14 Bool))
	(=>	(and (= x_15 (S_0 x_16))
			(count_0 x_16 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_14 true)
			(x_0 x_14 x_3 z_1))
		(count_0 x_15 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_1 Nat_0) (ys_0 list_0) (x_18 Nat_0) (x_19 Nat_0) (x_17 Bool))
	(=>	(and (= x_18 x_19)
			(count_0 x_19 x_3 ys_0)
			(= y_2 (cons_0 z_1 ys_0))
			(= x_17 false)
			(x_0 x_17 x_3 z_1))
		(count_0 x_18 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_20 Nat_0))
	(=>	(and (= x_20 Z_0)
			(= y_2 nil_0))
		(count_0 x_20 x_3 y_2))))
(declare-fun x_4 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_6 Nat_0) (x_21 Bool) (x_22 Bool))
	(=>	(and (= x_21 x_22)
			(x_4 x_22 z_2 x_6)
			(= x_5 (S_0 z_2))
			(= y_3 (S_0 x_6)))
		(x_4 x_21 x_5 y_3))))
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (z_2 Nat_0) (x_23 Bool))
	(=>	(and (= x_23 false)
			(= x_5 (S_0 z_2))
			(= y_3 Z_0))
		(x_4 x_23 x_5 y_3))))
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (x_24 Bool))
	(=>	(and (= x_24 true)
			(= x_5 Z_0))
		(x_4 x_24 x_5 y_3))))
(declare-fun insort_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_7 Nat_0) (y_4 list_0) (z_3 Nat_0) (xs_0 list_0) (x_26 list_0) (x_25 Bool))
	(=>	(and (= x_26 (cons_0 x_7 (cons_0 z_3 xs_0)))
			(= y_4 (cons_0 z_3 xs_0))
			(= x_25 true)
			(x_4 x_25 x_7 z_3))
		(insort_0 x_26 x_7 y_4))))
(assert (forall ((x_7 Nat_0) (y_4 list_0) (z_3 Nat_0) (xs_0 list_0) (x_28 list_0) (x_29 list_0) (x_27 Bool))
	(=>	(and (= x_28 (cons_0 z_3 x_29))
			(insort_0 x_29 x_7 xs_0)
			(= y_4 (cons_0 z_3 xs_0))
			(= x_27 false)
			(x_4 x_27 x_7 z_3))
		(insort_0 x_28 x_7 y_4))))
(assert (forall ((x_7 Nat_0) (y_4 list_0) (x_30 list_0))
	(=>	(and (= x_30 (cons_0 x_7 nil_0))
			(= y_4 nil_0))
		(insort_0 x_30 x_7 y_4))))
(declare-fun sort_0 (list_0 list_0) Bool)
(assert (forall ((x_8 list_0) (y_5 Nat_0) (xs_1 list_0) (x_31 list_0) (x_32 list_0) (x_33 list_0))
	(=>	(and (= x_31 x_33)
			(sort_0 x_32 xs_1)
			(insort_0 x_33 y_5 x_32)
			(= x_8 (cons_0 y_5 xs_1)))
		(sort_0 x_31 x_8))))
(assert (forall ((x_8 list_0) (x_34 list_0))
	(=>	(and (= x_34 nil_0)
			(= x_8 nil_0))
		(sort_0 x_34 x_8))))
(assert (forall ((n_0 Nat_0) (xs_2 list_0) (x_35 Nat_0) (x_36 list_0) (x_37 Nat_0))
	(=>	(and (diseqNat_1 x_35 x_37)
			(count_0 x_35 n_0 xs_2)
			(sort_0 x_36 xs_2)
			(count_0 x_37 n_0 x_36))
		false)))
(check-sat)
