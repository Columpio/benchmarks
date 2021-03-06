(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_39 Nat_0) (x_38 Nat_0))
	(=> (= x_39 (S_0 x_38))
	    (unS_1 x_38 x_39))))
(assert (isZ_0 Z_0))
(assert (forall ((x_40 Nat_0))
	(isS_0 (S_0 x_40))))
(assert (forall ((x_41 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_41))))
(assert (forall ((x_42 Nat_0))
	(diseqNat_0 (S_0 x_42) Z_0)))
(assert (forall ((x_43 Nat_0) (x_44 Nat_0))
	(=> (diseqNat_0 x_43 x_44)
	    (diseqNat_0 (S_0 x_43) (S_0 x_44)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_6 Nat_0))
	(add_0 y_6 Z_0 y_6)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_36 y_6)
	    (add_0 (S_0 r_0) (S_0 x_36) y_6))))
(assert (forall ((y_6 Nat_0))
	(minus_0 Z_0 Z_0 y_6)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_36 y_6)
	    (minus_0 (S_0 r_0) (S_0 x_36) y_6))))
(assert (forall ((y_6 Nat_0))
	(le_0 Z_0 y_6)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (le_0 x_36 y_6)
	    (le_0 (S_0 x_36) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(ge_0 y_6 Z_0)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (ge_0 x_36 y_6)
	    (ge_0 (S_0 x_36) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(lt_0 Z_0 (S_0 y_6))))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_36 y_6)
	    (lt_0 (S_0 x_36) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(gt_0 (S_0 y_6) Z_0)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (gt_0 x_36 y_6)
	    (gt_0 (S_0 x_36) (S_0 y_6)))))
(assert (forall ((y_6 Nat_0))
	(mult_0 Z_0 Z_0 y_6)))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (mult_0 r_0 x_36 y_6)
			(add_0 z_2 r_0 y_6))
		(mult_0 z_2 (S_0 x_36) y_6))))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_36 y_6)
	    (div_0 Z_0 x_36 y_6))))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_36 y_6)
			(minus_0 z_2 x_36 y_6)
			(div_0 r_0 z_2 y_6))
		(div_0 (S_0 r_0) x_36 y_6))))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0))
	(=> (lt_0 x_36 y_6)
	    (mod_0 x_36 x_36 y_6))))
(assert (forall ((x_36 Nat_0) (y_6 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_36 y_6)
			(minus_0 z_2 x_36 y_6)
			(mod_0 r_0 z_2 y_6))
		(mod_0 r_0 x_36 y_6))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_48 list_0) (x_46 Nat_0) (x_47 list_0))
	(=> (= x_48 (cons_0 x_46 x_47))
	    (head_1 x_46 x_48))))
(assert (forall ((x_48 list_0) (x_46 Nat_0) (x_47 list_0))
	(=> (= x_48 (cons_0 x_46 x_47))
	    (tail_1 x_47 x_48))))
(assert (isnil_0 nil_0))
(assert (forall ((x_49 Nat_0) (x_50 list_0))
	(iscons_0 (cons_0 x_49 x_50))))
(assert (forall ((x_51 Nat_0) (x_52 list_0))
	(diseqlist_0 nil_0 (cons_0 x_51 x_52))))
(assert (forall ((x_53 Nat_0) (x_54 list_0))
	(diseqlist_0 (cons_0 x_53 x_54) nil_0)))
(assert (forall ((x_55 Nat_0) (x_56 list_0) (x_57 Nat_0) (x_58 list_0))
	(=> (diseqNat_0 x_55 x_57)
	    (diseqlist_0 (cons_0 x_55 x_56) (cons_0 x_57 x_58)))))
(assert (forall ((x_55 Nat_0) (x_56 list_0) (x_57 Nat_0) (x_58 list_0))
	(=> (diseqlist_0 x_56 x_58)
	    (diseqlist_0 (cons_0 x_55 x_56) (cons_0 x_57 x_58)))))
(declare-datatypes ((Heap_0 0)) (((Node_0 (projNode_0 Heap_0) (projNode_1 Nat_0) (projNode_2 Heap_0)) (Nil_0 ))))
(declare-fun diseqHeap_0 (Heap_0 Heap_0) Bool)
(declare-fun projNode_3 (Heap_0 Heap_0) Bool)
(declare-fun projNode_4 (Nat_0 Heap_0) Bool)
(declare-fun projNode_5 (Heap_0 Heap_0) Bool)
(declare-fun isNode_0 (Heap_0) Bool)
(declare-fun isNil_0 (Heap_0) Bool)
(assert (forall ((x_62 Heap_0) (x_59 Heap_0) (x_60 Nat_0) (x_61 Heap_0))
	(=> (= x_62 (Node_0 x_59 x_60 x_61))
	    (projNode_3 x_59 x_62))))
(assert (forall ((x_62 Heap_0) (x_59 Heap_0) (x_60 Nat_0) (x_61 Heap_0))
	(=> (= x_62 (Node_0 x_59 x_60 x_61))
	    (projNode_4 x_60 x_62))))
(assert (forall ((x_62 Heap_0) (x_59 Heap_0) (x_60 Nat_0) (x_61 Heap_0))
	(=> (= x_62 (Node_0 x_59 x_60 x_61))
	    (projNode_5 x_61 x_62))))
(assert (forall ((x_64 Heap_0) (x_65 Nat_0) (x_66 Heap_0))
	(isNode_0 (Node_0 x_64 x_65 x_66))))
(assert (isNil_0 Nil_0))
(assert (forall ((x_67 Heap_0) (x_68 Nat_0) (x_69 Heap_0))
	(diseqHeap_0 (Node_0 x_67 x_68 x_69) Nil_0)))
(assert (forall ((x_70 Heap_0) (x_71 Nat_0) (x_72 Heap_0))
	(diseqHeap_0 Nil_0 (Node_0 x_70 x_71 x_72))))
(assert (forall ((x_73 Heap_0) (x_74 Nat_0) (x_75 Heap_0) (x_76 Heap_0) (x_77 Nat_0) (x_78 Heap_0))
	(=> (diseqHeap_0 x_73 x_76)
	    (diseqHeap_0 (Node_0 x_73 x_74 x_75) (Node_0 x_76 x_77 x_78)))))
(assert (forall ((x_73 Heap_0) (x_74 Nat_0) (x_75 Heap_0) (x_76 Heap_0) (x_77 Nat_0) (x_78 Heap_0))
	(=> (diseqNat_0 x_74 x_77)
	    (diseqHeap_0 (Node_0 x_73 x_74 x_75) (Node_0 x_76 x_77 x_78)))))
(assert (forall ((x_73 Heap_0) (x_74 Nat_0) (x_75 Heap_0) (x_76 Heap_0) (x_77 Nat_0) (x_78 Heap_0))
	(=> (diseqHeap_0 x_75 x_78)
	    (diseqHeap_0 (Node_0 x_73 x_74 x_75) (Node_0 x_76 x_77 x_78)))))
(declare-fun ordered_0 (Bool list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (y_1 Nat_0) (xs_0 list_0) (x_11 Bool) (x_12 Bool))
	(=>	(and (= x_11 (and (le_0 y_0 y_1) x_12))
			(ordered_0 x_12 (cons_0 y_1 xs_0))
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 (cons_0 y_1 xs_0)))
		(ordered_0 x_11 x_0))))
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_13 Bool))
	(=>	(and (= x_13 true)
			(= x_0 (cons_0 y_0 z_0))
			(= z_0 nil_0))
		(ordered_0 x_13 x_0))))
(assert (forall ((x_0 list_0) (x_14 Bool))
	(=>	(and (= x_14 true)
			(= x_0 nil_0))
		(ordered_0 x_14 x_0))))
(declare-fun hmerge_0 (Heap_0 Heap_0 Heap_0) Bool)
(assert (forall ((x_1 Heap_0) (y_2 Heap_0) (x_15 Heap_0))
	(=>	(and (= x_15 y_2)
			(= x_1 Nil_0))
		(hmerge_0 x_15 x_1 y_2))))
(assert (forall ((x_1 Heap_0) (y_2 Heap_0) (z_1 Heap_0) (x_2 Nat_0) (x_3 Heap_0) (x_16 Heap_0))
	(=>	(and (= x_16 (Node_0 z_1 x_2 x_3))
			(= x_1 (Node_0 z_1 x_2 x_3))
			(= y_2 Nil_0))
		(hmerge_0 x_16 x_1 y_2))))
(assert (forall ((x_1 Heap_0) (y_2 Heap_0) (z_1 Heap_0) (x_2 Nat_0) (x_3 Heap_0) (x_4 Heap_0) (x_5 Nat_0) (x_6 Heap_0) (x_17 Heap_0) (x_18 Heap_0))
	(=>	(and (= x_17 (Node_0 x_18 x_2 z_1))
			(hmerge_0 x_18 x_3 (Node_0 x_4 x_5 x_6))
			(= x_1 (Node_0 z_1 x_2 x_3))
			(= y_2 (Node_0 x_4 x_5 x_6))
			(le_0 x_2 x_5))
		(hmerge_0 x_17 x_1 y_2))))
(assert (forall ((x_1 Heap_0) (y_2 Heap_0) (z_1 Heap_0) (x_2 Nat_0) (x_3 Heap_0) (x_4 Heap_0) (x_5 Nat_0) (x_6 Heap_0) (x_19 Heap_0) (x_20 Heap_0))
	(=>	(and (= x_19 (Node_0 x_20 x_5 x_4))
			(hmerge_0 x_20 (Node_0 z_1 x_2 x_3) x_6)
			(= x_1 (Node_0 z_1 x_2 x_3))
			(= y_2 (Node_0 x_4 x_5 x_6))
			(gt_0 x_2 x_5))
		(hmerge_0 x_19 x_1 y_2))))
(declare-fun toList_0 (list_0 Heap_0) Bool)
(assert (forall ((x_7 Heap_0) (x_21 list_0))
	(=>	(and (= x_21 nil_0)
			(= x_7 Nil_0))
		(toList_0 x_21 x_7))))
(assert (forall ((x_7 Heap_0) (p_0 Heap_0) (y_3 Nat_0) (q_0 Heap_0) (x_22 list_0) (x_23 Heap_0) (x_24 list_0))
	(=>	(and (= x_22 (cons_0 y_3 x_24))
			(hmerge_0 x_23 p_0 q_0)
			(toList_0 x_24 x_23)
			(= x_7 (Node_0 p_0 y_3 q_0)))
		(toList_0 x_22 x_7))))
(declare-fun hinsert_0 (Heap_0 Nat_0 Heap_0) Bool)
(assert (forall ((x_8 Nat_0) (y_4 Heap_0) (x_25 Heap_0) (x_26 Heap_0))
	(=>	(and (= x_25 x_26)
			(hmerge_0 x_26 (Node_0 Nil_0 x_8 Nil_0) y_4))
		(hinsert_0 x_25 x_8 y_4))))
(declare-fun toHeap_0 (Heap_0 list_0) Bool)
(assert (forall ((x_9 list_0) (y_5 Nat_0) (xs_1 list_0) (x_27 Heap_0) (x_28 Heap_0) (x_29 Heap_0))
	(=>	(and (= x_27 x_29)
			(toHeap_0 x_28 xs_1)
			(hinsert_0 x_29 y_5 x_28)
			(= x_9 (cons_0 y_5 xs_1)))
		(toHeap_0 x_27 x_9))))
(assert (forall ((x_9 list_0) (x_30 Heap_0))
	(=>	(and (= x_30 Nil_0)
			(= x_9 nil_0))
		(toHeap_0 x_30 x_9))))
(declare-fun hsort_0 (list_0 list_0) Bool)
(assert (forall ((x_10 list_0) (x_31 list_0) (x_32 Heap_0) (x_33 list_0))
	(=>	(and (= x_31 x_33)
			(toHeap_0 x_32 x_10)
			(toList_0 x_33 x_32))
		(hsort_0 x_31 x_10))))
(assert (forall ((xs_2 list_0) (x_34 list_0) (x_35 Bool))
	(=>	(and (= x_35 false)
			(hsort_0 x_34 xs_2)
			(ordered_0 x_35 x_34))
		false)))
(check-sat)
