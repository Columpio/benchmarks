(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_23 Nat_0) (x_22 Nat_0))
	(=> (= x_23 (S_0 x_22))
	    (unS_1 x_22 x_23))))
(assert (isZ_0 Z_0))
(assert (forall ((x_24 Nat_0))
	(isS_0 (S_0 x_24))))
(assert (forall ((x_25 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_25))))
(assert (forall ((x_26 Nat_0))
	(diseqNat_0 (S_0 x_26) Z_0)))
(assert (forall ((x_27 Nat_0) (x_28 Nat_0))
	(=> (diseqNat_0 x_27 x_28)
	    (diseqNat_0 (S_0 x_27) (S_0 x_28)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_4 Nat_0))
	(add_0 y_4 Z_0 y_4)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_20 y_4)
	    (add_0 (S_0 r_0) (S_0 x_20) y_4))))
(assert (forall ((y_4 Nat_0))
	(minus_0 Z_0 Z_0 y_4)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_20 y_4)
	    (minus_0 (S_0 r_0) (S_0 x_20) y_4))))
(assert (forall ((y_4 Nat_0))
	(le_0 Z_0 y_4)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (le_0 x_20 y_4)
	    (le_0 (S_0 x_20) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(ge_0 y_4 Z_0)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (ge_0 x_20 y_4)
	    (ge_0 (S_0 x_20) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(lt_0 Z_0 (S_0 y_4))))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_20 y_4)
	    (lt_0 (S_0 x_20) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(gt_0 (S_0 y_4) Z_0)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (gt_0 x_20 y_4)
	    (gt_0 (S_0 x_20) (S_0 y_4)))))
(assert (forall ((y_4 Nat_0))
	(mult_0 Z_0 Z_0 y_4)))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (mult_0 r_0 x_20 y_4)
			(add_0 z_2 r_0 y_4))
		(mult_0 z_2 (S_0 x_20) y_4))))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_20 y_4)
	    (div_0 Z_0 x_20 y_4))))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_20 y_4)
			(minus_0 z_2 x_20 y_4)
			(div_0 r_0 z_2 y_4))
		(div_0 (S_0 r_0) x_20 y_4))))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0))
	(=> (lt_0 x_20 y_4)
	    (mod_0 x_20 x_20 y_4))))
(assert (forall ((x_20 Nat_0) (y_4 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_20 y_4)
			(minus_0 z_2 x_20 y_4)
			(mod_0 r_0 z_2 y_4))
		(mod_0 r_0 x_20 y_4))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_32 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (= x_32 (cons_0 x_30 x_31))
	    (head_1 x_30 x_32))))
(assert (forall ((x_32 list_0) (x_30 Nat_0) (x_31 list_0))
	(=> (= x_32 (cons_0 x_30 x_31))
	    (tail_1 x_31 x_32))))
(assert (isnil_0 nil_0))
(assert (forall ((x_33 Nat_0) (x_34 list_0))
	(iscons_0 (cons_0 x_33 x_34))))
(assert (forall ((x_35 Nat_0) (x_36 list_0))
	(diseqlist_0 nil_0 (cons_0 x_35 x_36))))
(assert (forall ((x_37 Nat_0) (x_38 list_0))
	(diseqlist_0 (cons_0 x_37 x_38) nil_0)))
(assert (forall ((x_39 Nat_0) (x_40 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (diseqNat_0 x_39 x_41)
	    (diseqlist_0 (cons_0 x_39 x_40) (cons_0 x_41 x_42)))))
(assert (forall ((x_39 Nat_0) (x_40 list_0) (x_41 Nat_0) (x_42 list_0))
	(=> (diseqlist_0 x_40 x_42)
	    (diseqlist_0 (cons_0 x_39 x_40) (cons_0 x_41 x_42)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Bool pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_45 pair_0) (x_43 Bool) (x_44 list_0))
	(=> (= x_45 (pair_1 x_43 x_44))
	    (projpair_2 x_43 x_45))))
(assert (forall ((x_45 pair_0) (x_43 Bool) (x_44 list_0))
	(=> (= x_45 (pair_1 x_43 x_44))
	    (projpair_3 x_44 x_45))))
(assert (forall ((x_46 Bool) (x_47 list_0))
	(ispair_0 (pair_1 x_46 x_47))))
(assert (forall ((x_48 Bool) (x_49 list_0) (x_50 Bool) (x_51 list_0))
	(=> (not (= x_48 x_50))
	    (diseqpair_0 (pair_1 x_48 x_49) (pair_1 x_50 x_51)))))
(assert (forall ((x_48 Bool) (x_49 list_0) (x_50 Bool) (x_51 list_0))
	(=> (diseqlist_0 x_49 x_51)
	    (diseqpair_0 (pair_1 x_48 x_49) (pair_1 x_50 x_51)))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_3 Bool) (x_4 Bool))
	(=>	(and (= x_3 (and (le_0 y_0 y_1) x_4))
			(ordered_0 x_4 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0)))
		(ordered_0 x_3 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_5 Bool))
	(=>	(and (= x_5 true)
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 nil_0))
		(ordered_0 x_5 x_0))))
(assert (forall ((x_0 list_0) (x_6 Bool))
	(=>	(and (= x_6 true)
			(= x_0 nil_0))
		(ordered_0 x_6 x_0))))
(declare-fun bubble_0 (pair_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_2 Nat_0) (z_1 list_0) (y_3 Nat_0) (xs_1 list_0) (b_0 Bool) (ys_0 list_0) (x_8 pair_0) (x_7 pair_0))
	(=>	(and (= x_8 (pair_1 b_0 (cons_0 y_2 ys_0)))
			(= x_1 (cons_0 y_2 z_1))
			(= z_1 (cons_0 y_3 xs_1))
			(le_0 y_2 y_3)
			(= x_7 (pair_1 b_0 ys_0))
			(bubble_0 x_7 (cons_0 y_3 xs_1)))
		(bubble_0 x_8 x_1))))
(assert (forall ((x_1 list_0) (y_2 Nat_0) (z_1 list_0) (y_3 Nat_0) (xs_1 list_0) (b_1 Bool) (ys_1 list_0) (x_10 pair_0) (x_9 pair_0))
	(=>	(and (= x_10 (pair_1 true (cons_0 y_3 ys_1)))
			(= x_1 (cons_0 y_2 z_1))
			(= z_1 (cons_0 y_3 xs_1))
			(gt_0 y_2 y_3)
			(= x_9 (pair_1 b_1 ys_1))
			(bubble_0 x_9 (cons_0 y_2 xs_1)))
		(bubble_0 x_10 x_1))))
(assert (forall ((x_1 list_0) (y_2 Nat_0) (z_1 list_0) (x_11 pair_0))
	(=>	(and (= x_11 (pair_1 false (cons_0 y_2 nil_0)))
			(= x_1 (cons_0 y_2 z_1))
			(= z_1 nil_0))
		(bubble_0 x_11 x_1))))
(assert (forall ((x_1 list_0) (x_12 pair_0))
	(=>	(and (= x_12 (pair_1 false nil_0))
			(= x_1 nil_0))
		(bubble_0 x_12 x_1))))
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (c_0 Bool) (ys_2 list_0) (x_14 list_0) (x_15 list_0) (x_13 pair_0))
	(=>	(and (= x_14 x_15)
			(bubsort_0 x_15 ys_2)
			(= x_13 (pair_1 c_0 ys_2))
			c_0
			(bubble_0 x_13 x_2))
		(bubsort_0 x_14 x_2))))
(assert (forall ((x_2 list_0) (c_0 Bool) (ys_2 list_0) (x_17 list_0) (x_16 pair_0))
	(=>	(and (= x_17 x_2)
			(= x_16 (pair_1 c_0 ys_2))
			(not c_0)
			(bubble_0 x_16 x_2))
		(bubsort_0 x_17 x_2))))
(assert (forall ((xs_2 list_0) (x_18 list_0) (x_19 Bool))
	(=>	(and (= x_19 false)
			(bubsort_0 x_18 xs_2)
			(ordered_0 x_19 x_18))
		false)))
(check-sat)
