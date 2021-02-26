(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_18 Nat_0) (x_17 Nat_0))
	(=> (= x_18 (S_0 x_17))
	    (unS_1 x_17 x_18))))
(assert (isZ_0 Z_0))
(assert (forall ((x_19 Nat_0))
	(isS_0 (S_0 x_19))))
(assert (forall ((x_20 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_20))))
(assert (forall ((x_21 Nat_0))
	(diseqNat_0 (S_0 x_21) Z_0)))
(assert (forall ((x_22 Nat_0) (x_23 Nat_0))
	(=> (diseqNat_0 x_22 x_23)
	    (diseqNat_0 (S_0 x_22) (S_0 x_23)))))
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
(assert (forall ((x_15 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_15 y_3)
	    (add_0 (S_0 r_0) (S_0 x_15) y_3))))
(assert (forall ((y_3 Nat_0))
	(minus_0 Z_0 Z_0 y_3)))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_15 y_3)
	    (minus_0 (S_0 r_0) (S_0 x_15) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_0 y_3)))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_15 y_3)
	    (le_0 (S_0 x_15) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(ge_0 y_3 Z_0)))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (ge_0 x_15 y_3)
	    (ge_0 (S_0 x_15) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(lt_0 Z_0 (S_0 y_3))))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_15 y_3)
	    (lt_0 (S_0 x_15) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (S_0 y_3) Z_0)))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_15 y_3)
	    (gt_0 (S_0 x_15) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(mult_0 Z_0 Z_0 y_3)))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (mult_0 r_0 x_15 y_3)
			(add_0 z_2 r_0 y_3))
		(mult_0 z_2 (S_0 x_15) y_3))))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_15 y_3)
	    (div_0 Z_0 x_15 y_3))))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_15 y_3)
			(minus_0 z_2 x_15 y_3)
			(div_0 r_0 z_2 y_3))
		(div_0 (S_0 r_0) x_15 y_3))))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_15 y_3)
	    (mod_0 x_15 x_15 y_3))))
(assert (forall ((x_15 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_15 y_3)
			(minus_0 z_2 x_15 y_3)
			(mod_0 r_0 z_2 y_3))
		(mod_0 r_0 x_15 y_3))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Nat_0 pair_0) Bool)
(declare-fun projpair_3 (Nat_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_26 pair_0) (x_24 Nat_0) (x_25 Nat_0))
	(=> (= x_26 (pair_1 x_24 x_25))
	    (projpair_2 x_24 x_26))))
(assert (forall ((x_26 pair_0) (x_24 Nat_0) (x_25 Nat_0))
	(=> (= x_26 (pair_1 x_24 x_25))
	    (projpair_3 x_25 x_26))))
(assert (forall ((x_27 Nat_0) (x_28 Nat_0))
	(ispair_0 (pair_1 x_27 x_28))))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0))
	(=> (diseqNat_0 x_29 x_31)
	    (diseqpair_0 (pair_1 x_29 x_30) (pair_1 x_31 x_32)))))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0))
	(=> (diseqNat_0 x_30 x_32)
	    (diseqpair_0 (pair_1 x_29 x_30) (pair_1 x_31 x_32)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_36 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (= x_36 (cons_0 x_34 x_35))
	    (head_2 x_34 x_36))))
(assert (forall ((x_36 list_0) (x_34 Nat_0) (x_35 list_0))
	(=> (= x_36 (cons_0 x_34 x_35))
	    (tail_2 x_35 x_36))))
(assert (isnil_0 nil_0))
(assert (forall ((x_37 Nat_0) (x_38 list_0))
	(iscons_0 (cons_0 x_37 x_38))))
(assert (forall ((x_39 Nat_0) (x_40 list_0))
	(diseqlist_0 nil_0 (cons_0 x_39 x_40))))
(assert (forall ((x_41 Nat_0) (x_42 list_0))
	(diseqlist_0 (cons_0 x_41 x_42) nil_0)))
(assert (forall ((x_43 Nat_0) (x_44 list_0) (x_45 Nat_0) (x_46 list_0))
	(=> (diseqNat_0 x_43 x_45)
	    (diseqlist_0 (cons_0 x_43 x_44) (cons_0 x_45 x_46)))))
(assert (forall ((x_43 Nat_0) (x_44 list_0) (x_45 Nat_0) (x_46 list_0))
	(=> (diseqlist_0 x_44 x_46)
	    (diseqlist_0 (cons_0 x_43 x_44) (cons_0 x_45 x_46)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 pair_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (pair_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_50 list_1) (x_48 pair_0) (x_49 list_1))
	(=> (= x_50 (cons_1 x_48 x_49))
	    (head_3 x_48 x_50))))
(assert (forall ((x_50 list_1) (x_48 pair_0) (x_49 list_1))
	(=> (= x_50 (cons_1 x_48 x_49))
	    (tail_3 x_49 x_50))))
(assert (isnil_1 nil_1))
(assert (forall ((x_51 pair_0) (x_52 list_1))
	(iscons_1 (cons_1 x_51 x_52))))
(assert (forall ((x_53 pair_0) (x_54 list_1))
	(diseqlist_1 nil_1 (cons_1 x_53 x_54))))
(assert (forall ((x_55 pair_0) (x_56 list_1))
	(diseqlist_1 (cons_1 x_55 x_56) nil_1)))
(assert (forall ((x_57 pair_0) (x_58 list_1) (x_59 pair_0) (x_60 list_1))
	(=> (diseqpair_0 x_57 x_59)
	    (diseqlist_1 (cons_1 x_57 x_58) (cons_1 x_59 x_60)))))
(assert (forall ((x_57 pair_0) (x_58 list_1) (x_59 pair_0) (x_60 list_1))
	(=> (diseqlist_1 x_58 x_60)
	    (diseqlist_1 (cons_1 x_57 x_58) (cons_1 x_59 x_60)))))
(declare-fun zip_0 (list_1 list_0 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 Nat_0) (x_1 list_0) (x_2 Nat_0) (x_3 list_0) (x_6 list_1) (x_7 list_1))
	(=>	(and (= x_6 (cons_1 (pair_1 z_0 x_2) x_7))
			(zip_0 x_7 x_1 x_3)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 (cons_0 x_2 x_3)))
		(zip_0 x_6 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (z_0 Nat_0) (x_1 list_0) (x_8 list_1))
	(=>	(and (= x_8 nil_1)
			(= x_0 (cons_0 z_0 x_1))
			(= y_0 nil_0))
		(zip_0 x_8 x_0 y_0))))
(assert (forall ((x_0 list_0) (y_0 list_0) (x_9 list_1))
	(=>	(and (= x_9 nil_1)
			(= x_0 nil_0))
		(zip_0 x_9 x_0 y_0))))
(declare-fun zipConcat_0 (list_1 Nat_0 list_0 list_0) Bool)
(assert (forall ((x_4 Nat_0) (y_1 list_0) (z_1 list_0) (y_2 Nat_0) (ys_0 list_0) (x_10 list_1) (x_11 list_1))
	(=>	(and (= x_10 (cons_1 (pair_1 x_4 y_2) x_11))
			(zip_0 x_11 y_1 ys_0)
			(= z_1 (cons_0 y_2 ys_0)))
		(zipConcat_0 x_10 x_4 y_1 z_1))))
(assert (forall ((x_4 Nat_0) (y_1 list_0) (z_1 list_0) (x_12 list_1))
	(=>	(and (= x_12 nil_1)
			(= z_1 nil_0))
		(zipConcat_0 x_12 x_4 y_1 z_1))))
(assert (forall ((x_5 Nat_0) (xs_0 list_0) (ys_1 list_0) (x_13 list_1) (x_14 list_1))
	(=>	(and (diseqlist_1 x_13 x_14)
			(zip_0 x_13 (cons_0 x_5 xs_0) ys_1)
			(zipConcat_0 x_14 x_5 xs_0 ys_1))
		false)))
(check-sat)
