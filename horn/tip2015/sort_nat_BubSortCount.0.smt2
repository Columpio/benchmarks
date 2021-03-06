(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_51 Nat_1) (x_50 Nat_1))
	(=> (= x_51 (S_0 x_50))
	    (unS_1 x_50 x_51))))
(assert (isZ_0 Z_0))
(assert (forall ((x_52 Nat_1))
	(isS_0 (S_0 x_52))))
(assert (forall ((x_53 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_53))))
(assert (forall ((x_54 Nat_1))
	(diseqNat_0 (S_0 x_54) Z_0)))
(assert (forall ((x_55 Nat_1) (x_56 Nat_1))
	(=> (diseqNat_0 x_55 x_56)
	    (diseqNat_0 (S_0 x_55) (S_0 x_56)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_7 Nat_1))
	(add_0 y_7 Z_0 y_7)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_48 y_7)
	    (add_0 (S_0 r_0) (S_0 x_48) y_7))))
(assert (forall ((y_7 Nat_1))
	(minus_0 Z_0 Z_0 y_7)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_48 y_7)
	    (minus_0 (S_0 r_0) (S_0 x_48) y_7))))
(assert (forall ((y_7 Nat_1))
	(le_0 Z_0 y_7)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (le_0 x_48 y_7)
	    (le_0 (S_0 x_48) (S_0 y_7)))))
(assert (forall ((y_7 Nat_1))
	(ge_0 y_7 Z_0)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (ge_0 x_48 y_7)
	    (ge_0 (S_0 x_48) (S_0 y_7)))))
(assert (forall ((y_7 Nat_1))
	(lt_0 Z_0 (S_0 y_7))))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (lt_0 x_48 y_7)
	    (lt_0 (S_0 x_48) (S_0 y_7)))))
(assert (forall ((y_7 Nat_1))
	(gt_0 (S_0 y_7) Z_0)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (gt_0 x_48 y_7)
	    (gt_0 (S_0 x_48) (S_0 y_7)))))
(assert (forall ((y_7 Nat_1))
	(mult_0 Z_0 Z_0 y_7)))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (mult_0 r_0 x_48 y_7)
			(add_0 z_5 r_0 y_7))
		(mult_0 z_5 (S_0 x_48) y_7))))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (lt_0 x_48 y_7)
	    (div_0 Z_0 x_48 y_7))))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_48 y_7)
			(minus_0 z_5 x_48 y_7)
			(div_0 r_0 z_5 y_7))
		(div_0 (S_0 r_0) x_48 y_7))))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1))
	(=> (lt_0 x_48 y_7)
	    (mod_0 x_48 x_48 y_7))))
(assert (forall ((x_48 Nat_1) (y_7 Nat_1) (r_0 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_48 y_7)
			(minus_0 z_5 x_48 y_7)
			(mod_0 r_0 z_5 y_7))
		(mod_0 r_0 x_48 y_7))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_59 Nat_0) (x_58 Nat_0))
	(=> (= x_59 (succ_0 x_58))
	    (p_1 x_58 x_59))))
(assert (iszero_0 zero_0))
(assert (forall ((x_60 Nat_0))
	(issucc_0 (succ_0 x_60))))
(assert (forall ((x_61 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_61))))
(assert (forall ((x_62 Nat_0))
	(diseqNat_1 (succ_0 x_62) zero_0)))
(assert (forall ((x_63 Nat_0) (x_64 Nat_0))
	(=> (diseqNat_1 x_63 x_64)
	    (diseqNat_1 (succ_0 x_63) (succ_0 x_64)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_68 list_0) (x_66 Nat_0) (x_67 list_0))
	(=> (= x_68 (cons_0 x_66 x_67))
	    (head_1 x_66 x_68))))
(assert (forall ((x_68 list_0) (x_66 Nat_0) (x_67 list_0))
	(=> (= x_68 (cons_0 x_66 x_67))
	    (tail_1 x_67 x_68))))
(assert (isnil_0 nil_0))
(assert (forall ((x_69 Nat_0) (x_70 list_0))
	(iscons_0 (cons_0 x_69 x_70))))
(assert (forall ((x_71 Nat_0) (x_72 list_0))
	(diseqlist_0 nil_0 (cons_0 x_71 x_72))))
(assert (forall ((x_73 Nat_0) (x_74 list_0))
	(diseqlist_0 (cons_0 x_73 x_74) nil_0)))
(assert (forall ((x_75 Nat_0) (x_76 list_0) (x_77 Nat_0) (x_78 list_0))
	(=> (diseqNat_1 x_75 x_77)
	    (diseqlist_0 (cons_0 x_75 x_76) (cons_0 x_77 x_78)))))
(assert (forall ((x_75 Nat_0) (x_76 list_0) (x_77 Nat_0) (x_78 list_0))
	(=> (diseqlist_0 x_76 x_78)
	    (diseqlist_0 (cons_0 x_75 x_76) (cons_0 x_77 x_78)))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Bool) (projpair_1 list_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Bool pair_0) Bool)
(declare-fun projpair_3 (list_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_81 pair_0) (x_79 Bool) (x_80 list_0))
	(=> (= x_81 (pair_1 x_79 x_80))
	    (projpair_2 x_79 x_81))))
(assert (forall ((x_81 pair_0) (x_79 Bool) (x_80 list_0))
	(=> (= x_81 (pair_1 x_79 x_80))
	    (projpair_3 x_80 x_81))))
(assert (forall ((x_82 Bool) (x_83 list_0))
	(ispair_0 (pair_1 x_82 x_83))))
(assert (forall ((x_84 Bool) (x_85 list_0) (x_86 Bool) (x_87 list_0))
	(=> (not (= x_84 x_86))
	    (diseqpair_0 (pair_1 x_84 x_85) (pair_1 x_86 x_87)))))
(assert (forall ((x_84 Bool) (x_85 list_0) (x_86 Bool) (x_87 list_0))
	(=> (diseqlist_0 x_85 x_87)
	    (diseqpair_0 (pair_1 x_84 x_85) (pair_1 x_86 x_87)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_11 Nat_0) (x_12 Nat_0))
	(=>	(and (= x_11 (succ_0 x_12))
			(plus_0 x_12 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_11 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_13 Nat_0))
	(=>	(and (= x_13 y_0)
			(= x_0 zero_0))
		(plus_0 x_13 x_0 y_0))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_14 Bool) (x_15 Bool))
	(=>	(and (= x_14 x_15)
			(leq_0 x_15 z_1 x_2)
			(= x_1 (succ_0 z_1))
			(= y_1 (succ_0 x_2)))
		(leq_0 x_14 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_16 Bool))
	(=>	(and (= x_16 false)
			(= x_1 (succ_0 z_1))
			(= y_1 zero_0))
		(leq_0 x_16 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_17 Bool))
	(=>	(and (= x_17 true)
			(= x_1 zero_0))
		(leq_0 x_17 x_1 y_1))))
(declare-fun count_0 (Nat_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_2 Nat_0) (ys_0 list_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0))
	(=>	(and (= x_18 x_20)
			(count_0 x_19 x_3 ys_0)
			(plus_0 x_20 (succ_0 zero_0) x_19)
			(= y_2 (cons_0 z_2 ys_0))
			(= x_3 z_2))
		(count_0 x_18 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_2 Nat_0) (ys_0 list_0) (x_21 Nat_0) (x_22 Nat_0))
	(=>	(and (= x_21 x_22)
			(count_0 x_22 x_3 ys_0)
			(= y_2 (cons_0 z_2 ys_0))
			(diseqNat_1 x_3 z_2))
		(count_0 x_21 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_23 Nat_0))
	(=>	(and (= x_23 zero_0)
			(= y_2 nil_0))
		(count_0 x_23 x_3 y_2))))
(declare-fun bubble_0 (pair_0 list_0) Bool)
(assert (forall ((x_4 list_0) (y_3 Nat_0) (z_3 list_0) (y_4 Nat_0) (xs_0 list_0) (b_0 Bool) (ys_1 list_0) (x_26 pair_0) (x_24 Bool) (x_25 pair_0))
	(=>	(and (= x_26 (pair_1 b_0 (cons_0 y_3 ys_1)))
			(= x_4 (cons_0 y_3 z_3))
			(= z_3 (cons_0 y_4 xs_0))
			(= x_24 true)
			(= x_25 (pair_1 b_0 ys_1))
			(leq_0 x_24 y_3 y_4)
			(bubble_0 x_25 (cons_0 y_4 xs_0)))
		(bubble_0 x_26 x_4))))
(assert (forall ((x_4 list_0) (y_3 Nat_0) (z_3 list_0) (y_4 Nat_0) (xs_0 list_0) (b_1 Bool) (ys_2 list_0) (x_29 pair_0) (x_27 Bool) (x_28 pair_0))
	(=>	(and (= x_29 (pair_1 true (cons_0 y_4 ys_2)))
			(= x_4 (cons_0 y_3 z_3))
			(= z_3 (cons_0 y_4 xs_0))
			(= x_27 false)
			(= x_28 (pair_1 b_1 ys_2))
			(leq_0 x_27 y_3 y_4)
			(bubble_0 x_28 (cons_0 y_3 xs_0)))
		(bubble_0 x_29 x_4))))
(assert (forall ((x_4 list_0) (y_3 Nat_0) (z_3 list_0) (x_30 pair_0))
	(=>	(and (= x_30 (pair_1 false (cons_0 y_3 nil_0)))
			(= x_4 (cons_0 y_3 z_3))
			(= z_3 nil_0))
		(bubble_0 x_30 x_4))))
(assert (forall ((x_4 list_0) (x_31 pair_0))
	(=>	(and (= x_31 (pair_1 false nil_0))
			(= x_4 nil_0))
		(bubble_0 x_31 x_4))))
(declare-fun bubsort_0 (list_0 list_0) Bool)
(assert (forall ((x_5 list_0) (c_0 Bool) (ys_3 list_0) (x_33 list_0) (x_34 list_0) (x_32 pair_0))
	(=>	(and (= x_33 x_34)
			(bubsort_0 x_34 ys_3)
			(= x_32 (pair_1 c_0 ys_3))
			c_0
			(bubble_0 x_32 x_5))
		(bubsort_0 x_33 x_5))))
(assert (forall ((x_5 list_0) (c_0 Bool) (ys_3 list_0) (x_36 list_0) (x_35 pair_0))
	(=>	(and (= x_36 x_5)
			(= x_35 (pair_1 c_0 ys_3))
			(not c_0)
			(bubble_0 x_35 x_5))
		(bubsort_0 x_36 x_5))))
(assert (forall ((x_6 Nat_0) (y_5 Nat_0) (z_4 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0))
	(=>	(and (diseqNat_1 x_38 x_40)
			(plus_0 x_37 y_5 z_4)
			(plus_0 x_38 x_6 x_37)
			(plus_0 x_39 x_6 y_5)
			(plus_0 x_40 x_39 z_4))
		false)))
(assert (forall ((x_7 Nat_0) (y_6 Nat_0) (x_41 Nat_0) (x_42 Nat_0))
	(=>	(and (diseqNat_1 x_41 x_42)
			(plus_0 x_41 x_7 y_6)
			(plus_0 x_42 y_6 x_7))
		false)))
(assert (forall ((x_8 Nat_0) (x_43 Nat_0))
	(=>	(and (diseqNat_1 x_43 x_8)
			(plus_0 x_43 x_8 zero_0))
		false)))
(assert (forall ((x_9 Nat_0) (x_44 Nat_0))
	(=>	(and (diseqNat_1 x_44 x_9)
			(plus_0 x_44 zero_0 x_9))
		false)))
(assert (forall ((x_10 Nat_0) (xs_1 list_0) (x_45 list_0) (x_46 Nat_0) (x_47 Nat_0))
	(=>	(and (diseqNat_1 x_46 x_47)
			(bubsort_0 x_45 xs_1)
			(count_0 x_46 x_10 x_45)
			(count_0 x_47 x_10 xs_1))
		false)))
(check-sat)
