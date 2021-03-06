(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_31 Nat_0) (x_30 Nat_0))
	(=> (= x_31 (S_0 x_30))
	    (unS_1 x_30 x_31))))
(assert (isZ_0 Z_0))
(assert (forall ((x_32 Nat_0))
	(isS_0 (S_0 x_32))))
(assert (forall ((x_33 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_33))))
(assert (forall ((x_34 Nat_0))
	(diseqNat_0 (S_0 x_34) Z_0)))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0))
	(=> (diseqNat_0 x_35 x_36)
	    (diseqNat_0 (S_0 x_35) (S_0 x_36)))))
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
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_28 y_3)
	    (add_0 (S_0 r_0) (S_0 x_28) y_3))))
(assert (forall ((y_3 Nat_0))
	(minus_0 Z_0 Z_0 y_3)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_28 y_3)
	    (minus_0 (S_0 r_0) (S_0 x_28) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_0 y_3)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_28 y_3)
	    (le_0 (S_0 x_28) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(ge_0 y_3 Z_0)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (ge_0 x_28 y_3)
	    (ge_0 (S_0 x_28) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(lt_0 Z_0 (S_0 y_3))))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_28 y_3)
	    (lt_0 (S_0 x_28) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (S_0 y_3) Z_0)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_28 y_3)
	    (gt_0 (S_0 x_28) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(mult_0 Z_0 Z_0 y_3)))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_3 Nat_0))
	(=>	(and (mult_0 r_0 x_28 y_3)
			(add_0 z_3 r_0 y_3))
		(mult_0 z_3 (S_0 x_28) y_3))))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_28 y_3)
	    (div_0 Z_0 x_28 y_3))))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_3 Nat_0))
	(=>	(and (ge_0 x_28 y_3)
			(minus_0 z_3 x_28 y_3)
			(div_0 r_0 z_3 y_3))
		(div_0 (S_0 r_0) x_28 y_3))))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_28 y_3)
	    (mod_0 x_28 x_28 y_3))))
(assert (forall ((x_28 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_3 Nat_0))
	(=>	(and (ge_0 x_28 y_3)
			(minus_0 z_3 x_28 y_3)
			(mod_0 r_0 z_3 y_3))
		(mod_0 r_0 x_28 y_3))))
(declare-datatypes ((It_0 0)) (((A_0 ) (B_0 ) (C_0 ))))
(declare-fun diseqIt_0 (It_0 It_0) Bool)
(declare-fun isA_0 (It_0) Bool)
(declare-fun isB_0 (It_0) Bool)
(declare-fun isC_0 (It_0) Bool)
(assert (isA_0 A_0))
(assert (isB_0 B_0))
(assert (isC_0 C_0))
(assert (diseqIt_0 A_0 B_0))
(assert (diseqIt_0 A_0 C_0))
(assert (diseqIt_0 B_0 A_0))
(assert (diseqIt_0 C_0 A_0))
(assert (diseqIt_0 B_0 C_0))
(assert (diseqIt_0 C_0 B_0))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 It_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (It_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_43 list_0) (x_41 It_0) (x_42 list_0))
	(=> (= x_43 (cons_0 x_41 x_42))
	    (head_1 x_41 x_43))))
(assert (forall ((x_43 list_0) (x_41 It_0) (x_42 list_0))
	(=> (= x_43 (cons_0 x_41 x_42))
	    (tail_1 x_42 x_43))))
(assert (isnil_0 nil_0))
(assert (forall ((x_44 It_0) (x_45 list_0))
	(iscons_0 (cons_0 x_44 x_45))))
(assert (forall ((x_46 It_0) (x_47 list_0))
	(diseqlist_0 nil_0 (cons_0 x_46 x_47))))
(assert (forall ((x_48 It_0) (x_49 list_0))
	(diseqlist_0 (cons_0 x_48 x_49) nil_0)))
(assert (forall ((x_50 It_0) (x_51 list_0) (x_52 It_0) (x_53 list_0))
	(=> (diseqIt_0 x_50 x_52)
	    (diseqlist_0 (cons_0 x_50 x_51) (cons_0 x_52 x_53)))))
(assert (forall ((x_50 It_0) (x_51 list_0) (x_52 It_0) (x_53 list_0))
	(=> (diseqlist_0 x_51 x_53)
	    (diseqlist_0 (cons_0 x_50 x_51) (cons_0 x_52 x_53)))))
(declare-fun isPrefix_0 (Bool list_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 It_0) (x_1 list_0) (x_2 It_0) (x_3 list_0) (x_12 Bool) (x_13 Bool))
	(=>	(and (= x_12 (and (= z_0 x_2) x_13))
			(isPrefix_0 x_13 x_1 x_3)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 (cons_0 x_2 x_3)))
		(isPrefix_0 x_12 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 It_0) (x_1 list_0) (x_14 Bool))
	(=>	(and (= x_14 false)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 nil_0))
		(isPrefix_0 x_14 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (x_15 Bool))
	(=>	(and (= x_15 true)
			(= x_0 nil_0))
		(isPrefix_0 x_15 x_0 y_0))))
(declare-fun isRelaxedPrefix_0 (Bool list_0 list_0) Bool)
(assert (forall ((x_4 list_0) (y_1 list_0) (z_1 It_0) (x_5 list_0) (x_6 It_0) (x_7 list_0) (x_8 It_0) (x_9 list_0) (x_16 Bool) (x_17 Bool))
	(=>	(and (= x_16 x_17)
			(isRelaxedPrefix_0 x_17 (cons_0 x_6 x_7) x_9)
			(= x_4 (cons_0 z_1 x_5))
			(= x_5 (cons_0 x_6 x_7))
			(= y_1 (cons_0 x_8 x_9))
			(= z_1 x_8))
		(isRelaxedPrefix_0 x_16 x_4 y_1))))
(assert (forall ((x_4 list_0) (y_1 list_0) (z_1 It_0) (x_5 list_0) (x_6 It_0) (x_7 list_0) (x_8 It_0) (x_9 list_0) (x_18 Bool) (x_19 Bool))
	(=>	(and (= x_18 x_19)
			(isPrefix_0 x_19 (cons_0 x_6 x_7) (cons_0 x_8 x_9))
			(= x_4 (cons_0 z_1 x_5))
			(= x_5 (cons_0 x_6 x_7))
			(= y_1 (cons_0 x_8 x_9))
			(diseqIt_0 z_1 x_8))
		(isRelaxedPrefix_0 x_18 x_4 y_1))))
(assert (forall ((x_4 list_0) (y_1 list_0) (z_1 It_0) (x_5 list_0) (x_6 It_0) (x_7 list_0) (x_20 Bool))
	(=>	(and (= x_20 false)
			(= x_4 (cons_0 z_1 x_5))
			(= x_5 (cons_0 x_6 x_7))
			(= y_1 nil_0))
		(isRelaxedPrefix_0 x_20 x_4 y_1))))
(assert (forall ((x_4 list_0) (y_1 list_0) (z_1 It_0) (x_5 list_0) (x_21 Bool))
	(=>	(and (= x_21 true)
			(= x_4 (cons_0 z_1 x_5))
			(= x_5 nil_0))
		(isRelaxedPrefix_0 x_21 x_4 y_1))))
(assert (forall ((x_4 list_0) (y_1 list_0) (x_22 Bool))
	(=>	(and (= x_22 true)
			(= x_4 nil_0))
		(isRelaxedPrefix_0 x_22 x_4 y_1))))
(declare-fun x_10 (list_0 list_0 list_0) Bool)
(assert (forall ((x_11 list_0) (y_2 list_0) (z_2 It_0) (xs_0 list_0) (x_23 list_0) (x_24 list_0))
	(=>	(and (= x_23 (cons_0 z_2 x_24))
			(x_10 x_24 xs_0 y_2)
			(= x_11 (cons_0 z_2 xs_0)))
		(x_10 x_23 x_11 y_2))))
(assert (forall ((x_11 list_0) (y_2 list_0) (x_25 list_0))
	(=>	(and (= x_25 y_2)
			(= x_11 nil_0))
		(x_10 x_25 x_11 y_2))))
(assert (forall ((xs_1 list_0) (ys_0 list_0) (x_26 list_0) (x_27 Bool))
	(=>	(and (= x_27 false)
			(x_10 x_26 xs_1 ys_0)
			(isRelaxedPrefix_0 x_27 xs_1 x_26))
		false)))
(check-sat)
