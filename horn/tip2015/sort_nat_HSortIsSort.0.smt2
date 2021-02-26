(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_67 Nat_1) (x_66 Nat_1))
	(=> (= x_67 (S_0 x_66))
	    (unS_1 x_66 x_67))))
(assert (isZ_0 Z_0))
(assert (forall ((x_68 Nat_1))
	(isS_0 (S_0 x_68))))
(assert (forall ((x_69 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_69))))
(assert (forall ((x_70 Nat_1))
	(diseqNat_0 (S_0 x_70) Z_0)))
(assert (forall ((x_71 Nat_1) (x_72 Nat_1))
	(=> (diseqNat_0 x_71 x_72)
	    (diseqNat_0 (S_0 x_71) (S_0 x_72)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_8 Nat_1))
	(add_0 y_8 Z_0 y_8)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1) (r_2 Nat_1))
	(=> (add_0 r_2 x_64 y_8)
	    (add_0 (S_0 r_2) (S_0 x_64) y_8))))
(assert (forall ((y_8 Nat_1))
	(minus_0 Z_0 Z_0 y_8)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1) (r_2 Nat_1))
	(=> (minus_0 r_2 x_64 y_8)
	    (minus_0 (S_0 r_2) (S_0 x_64) y_8))))
(assert (forall ((y_8 Nat_1))
	(le_0 Z_0 y_8)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (le_0 x_64 y_8)
	    (le_0 (S_0 x_64) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(ge_0 y_8 Z_0)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (ge_0 x_64 y_8)
	    (ge_0 (S_0 x_64) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(lt_0 Z_0 (S_0 y_8))))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_64 y_8)
	    (lt_0 (S_0 x_64) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(gt_0 (S_0 y_8) Z_0)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (gt_0 x_64 y_8)
	    (gt_0 (S_0 x_64) (S_0 y_8)))))
(assert (forall ((y_8 Nat_1))
	(mult_0 Z_0 Z_0 y_8)))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1) (r_2 Nat_1) (z_5 Nat_1))
	(=>	(and (mult_0 r_2 x_64 y_8)
			(add_0 z_5 r_2 y_8))
		(mult_0 z_5 (S_0 x_64) y_8))))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_64 y_8)
	    (div_0 Z_0 x_64 y_8))))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1) (r_2 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_64 y_8)
			(minus_0 z_5 x_64 y_8)
			(div_0 r_2 z_5 y_8))
		(div_0 (S_0 r_2) x_64 y_8))))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1))
	(=> (lt_0 x_64 y_8)
	    (mod_0 x_64 x_64 y_8))))
(assert (forall ((x_64 Nat_1) (y_8 Nat_1) (r_2 Nat_1) (z_5 Nat_1))
	(=>	(and (ge_0 x_64 y_8)
			(minus_0 z_5 x_64 y_8)
			(mod_0 r_2 z_5 y_8))
		(mod_0 r_2 x_64 y_8))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_75 Nat_0) (x_74 Nat_0))
	(=> (= x_75 (succ_0 x_74))
	    (p_1 x_74 x_75))))
(assert (iszero_0 zero_0))
(assert (forall ((x_76 Nat_0))
	(issucc_0 (succ_0 x_76))))
(assert (forall ((x_77 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_77))))
(assert (forall ((x_78 Nat_0))
	(diseqNat_1 (succ_0 x_78) zero_0)))
(assert (forall ((x_79 Nat_0) (x_80 Nat_0))
	(=> (diseqNat_1 x_79 x_80)
	    (diseqNat_1 (succ_0 x_79) (succ_0 x_80)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_2 (Nat_0 list_0) Bool)
(declare-fun tail_2 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_84 list_0) (x_82 Nat_0) (x_83 list_0))
	(=> (= x_84 (cons_0 x_82 x_83))
	    (head_2 x_82 x_84))))
(assert (forall ((x_84 list_0) (x_82 Nat_0) (x_83 list_0))
	(=> (= x_84 (cons_0 x_82 x_83))
	    (tail_2 x_83 x_84))))
(assert (isnil_0 nil_0))
(assert (forall ((x_85 Nat_0) (x_86 list_0))
	(iscons_0 (cons_0 x_85 x_86))))
(assert (forall ((x_87 Nat_0) (x_88 list_0))
	(diseqlist_0 nil_0 (cons_0 x_87 x_88))))
(assert (forall ((x_89 Nat_0) (x_90 list_0))
	(diseqlist_0 (cons_0 x_89 x_90) nil_0)))
(assert (forall ((x_91 Nat_0) (x_92 list_0) (x_93 Nat_0) (x_94 list_0))
	(=> (diseqNat_1 x_91 x_93)
	    (diseqlist_0 (cons_0 x_91 x_92) (cons_0 x_93 x_94)))))
(assert (forall ((x_91 Nat_0) (x_92 list_0) (x_93 Nat_0) (x_94 list_0))
	(=> (diseqlist_0 x_92 x_94)
	    (diseqlist_0 (cons_0 x_91 x_92) (cons_0 x_93 x_94)))))
(declare-datatypes ((Heap_0 0)) (((Node_0 (projNode_0 Heap_0) (projNode_1 Nat_0) (projNode_2 Heap_0)) (Nil_0 ))))
(declare-fun diseqHeap_0 (Heap_0 Heap_0) Bool)
(declare-fun projNode_3 (Heap_0 Heap_0) Bool)
(declare-fun projNode_4 (Nat_0 Heap_0) Bool)
(declare-fun projNode_5 (Heap_0 Heap_0) Bool)
(declare-fun isNode_0 (Heap_0) Bool)
(declare-fun isNil_0 (Heap_0) Bool)
(assert (forall ((x_98 Heap_0) (x_95 Heap_0) (x_96 Nat_0) (x_97 Heap_0))
	(=> (= x_98 (Node_0 x_95 x_96 x_97))
	    (projNode_3 x_95 x_98))))
(assert (forall ((x_98 Heap_0) (x_95 Heap_0) (x_96 Nat_0) (x_97 Heap_0))
	(=> (= x_98 (Node_0 x_95 x_96 x_97))
	    (projNode_4 x_96 x_98))))
(assert (forall ((x_98 Heap_0) (x_95 Heap_0) (x_96 Nat_0) (x_97 Heap_0))
	(=> (= x_98 (Node_0 x_95 x_96 x_97))
	    (projNode_5 x_97 x_98))))
(assert (forall ((x_100 Heap_0) (x_101 Nat_0) (x_102 Heap_0))
	(isNode_0 (Node_0 x_100 x_101 x_102))))
(assert (isNil_0 Nil_0))
(assert (forall ((x_103 Heap_0) (x_104 Nat_0) (x_105 Heap_0))
	(diseqHeap_0 (Node_0 x_103 x_104 x_105) Nil_0)))
(assert (forall ((x_106 Heap_0) (x_107 Nat_0) (x_108 Heap_0))
	(diseqHeap_0 Nil_0 (Node_0 x_106 x_107 x_108))))
(assert (forall ((x_109 Heap_0) (x_110 Nat_0) (x_111 Heap_0) (x_112 Heap_0) (x_113 Nat_0) (x_114 Heap_0))
	(=> (diseqHeap_0 x_109 x_112)
	    (diseqHeap_0 (Node_0 x_109 x_110 x_111) (Node_0 x_112 x_113 x_114)))))
(assert (forall ((x_109 Heap_0) (x_110 Nat_0) (x_111 Heap_0) (x_112 Heap_0) (x_113 Nat_0) (x_114 Heap_0))
	(=> (diseqNat_1 x_110 x_113)
	    (diseqHeap_0 (Node_0 x_109 x_110 x_111) (Node_0 x_112 x_113 x_114)))))
(assert (forall ((x_109 Heap_0) (x_110 Nat_0) (x_111 Heap_0) (x_112 Heap_0) (x_113 Nat_0) (x_114 Heap_0))
	(=> (diseqHeap_0 x_111 x_114)
	    (diseqHeap_0 (Node_0 x_109 x_110 x_111) (Node_0 x_112 x_113 x_114)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Heap_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_3 (Heap_0 list_1) Bool)
(declare-fun tail_3 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_118 list_1) (x_116 Heap_0) (x_117 list_1))
	(=> (= x_118 (cons_1 x_116 x_117))
	    (head_3 x_116 x_118))))
(assert (forall ((x_118 list_1) (x_116 Heap_0) (x_117 list_1))
	(=> (= x_118 (cons_1 x_116 x_117))
	    (tail_3 x_117 x_118))))
(assert (isnil_1 nil_1))
(assert (forall ((x_119 Heap_0) (x_120 list_1))
	(iscons_1 (cons_1 x_119 x_120))))
(assert (forall ((x_121 Heap_0) (x_122 list_1))
	(diseqlist_1 nil_1 (cons_1 x_121 x_122))))
(assert (forall ((x_123 Heap_0) (x_124 list_1))
	(diseqlist_1 (cons_1 x_123 x_124) nil_1)))
(assert (forall ((x_125 Heap_0) (x_126 list_1) (x_127 Heap_0) (x_128 list_1))
	(=> (diseqHeap_0 x_125 x_127)
	    (diseqlist_1 (cons_1 x_125 x_126) (cons_1 x_127 x_128)))))
(assert (forall ((x_125 Heap_0) (x_126 list_1) (x_127 Heap_0) (x_128 list_1))
	(=> (diseqlist_1 x_126 x_128)
	    (diseqlist_1 (cons_1 x_125 x_126) (cons_1 x_127 x_128)))))
(declare-fun toHeap_0 (list_1 list_0) Bool)
(assert (forall ((x_0 list_0) (y_0 Nat_0) (z_0 list_0) (x_17 list_1) (x_18 list_1))
	(=>	(and (= x_17 (cons_1 (Node_0 Nil_0 y_0 Nil_0) x_18))
			(toHeap_0 x_18 z_0)
			(= x_0 (cons_0 y_0 z_0)))
		(toHeap_0 x_17 x_0))))
(assert (forall ((x_0 list_0) (x_19 list_1))
	(=>	(and (= x_19 nil_1)
			(= x_0 nil_0))
		(toHeap_0 x_19 x_0))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_20 Bool) (x_21 Bool))
	(=>	(and (= x_20 x_21)
			(leq_0 x_21 z_1 x_2)
			(= x_1 (succ_0 z_1))
			(= y_1 (succ_0 x_2)))
		(leq_0 x_20 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_22 Bool))
	(=>	(and (= x_22 false)
			(= x_1 (succ_0 z_1))
			(= y_1 zero_0))
		(leq_0 x_22 x_1 y_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (x_23 Bool))
	(=>	(and (= x_23 true)
			(= x_1 zero_0))
		(leq_0 x_23 x_1 y_1))))
(declare-fun insert_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_2 Nat_0) (xs_0 list_0) (x_25 list_0) (x_24 Bool))
	(=>	(and (= x_25 (cons_0 x_3 (cons_0 z_2 xs_0)))
			(= y_2 (cons_0 z_2 xs_0))
			(= x_24 true)
			(leq_0 x_24 x_3 z_2))
		(insert_0 x_25 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (z_2 Nat_0) (xs_0 list_0) (x_27 list_0) (x_28 list_0) (x_26 Bool))
	(=>	(and (= x_27 (cons_0 z_2 x_28))
			(insert_0 x_28 x_3 xs_0)
			(= y_2 (cons_0 z_2 xs_0))
			(= x_26 false)
			(leq_0 x_26 x_3 z_2))
		(insert_0 x_27 x_3 y_2))))
(assert (forall ((x_3 Nat_0) (y_2 list_0) (x_29 list_0))
	(=>	(and (= x_29 (cons_0 x_3 nil_0))
			(= y_2 nil_0))
		(insert_0 x_29 x_3 y_2))))
(declare-fun isort_0 (list_0 list_0) Bool)
(assert (forall ((x_4 list_0) (y_3 Nat_0) (xs_1 list_0) (x_30 list_0) (x_31 list_0) (x_32 list_0))
	(=>	(and (= x_30 x_32)
			(isort_0 x_31 xs_1)
			(insert_0 x_32 y_3 x_31)
			(= x_4 (cons_0 y_3 xs_1)))
		(isort_0 x_30 x_4))))
(assert (forall ((x_4 list_0) (x_33 list_0))
	(=>	(and (= x_33 nil_0)
			(= x_4 nil_0))
		(isort_0 x_33 x_4))))
(declare-fun hmerge_0 (Heap_0 Heap_0 Heap_0) Bool)
(assert (forall ((x_5 Heap_0) (y_4 Heap_0) (x_34 Heap_0))
	(=>	(and (= x_34 y_4)
			(= x_5 Nil_0))
		(hmerge_0 x_34 x_5 y_4))))
(assert (forall ((x_5 Heap_0) (y_4 Heap_0) (z_3 Heap_0) (x_6 Nat_0) (x_7 Heap_0) (x_35 Heap_0))
	(=>	(and (= x_35 (Node_0 z_3 x_6 x_7))
			(= x_5 (Node_0 z_3 x_6 x_7))
			(= y_4 Nil_0))
		(hmerge_0 x_35 x_5 y_4))))
(assert (forall ((x_5 Heap_0) (y_4 Heap_0) (z_3 Heap_0) (x_6 Nat_0) (x_7 Heap_0) (x_8 Heap_0) (x_9 Nat_0) (x_10 Heap_0) (x_37 Heap_0) (x_38 Heap_0) (x_36 Bool))
	(=>	(and (= x_37 (Node_0 x_38 x_6 z_3))
			(hmerge_0 x_38 x_7 (Node_0 x_8 x_9 x_10))
			(= x_5 (Node_0 z_3 x_6 x_7))
			(= y_4 (Node_0 x_8 x_9 x_10))
			(= x_36 true)
			(leq_0 x_36 x_6 x_9))
		(hmerge_0 x_37 x_5 y_4))))
(assert (forall ((x_5 Heap_0) (y_4 Heap_0) (z_3 Heap_0) (x_6 Nat_0) (x_7 Heap_0) (x_8 Heap_0) (x_9 Nat_0) (x_10 Heap_0) (x_40 Heap_0) (x_41 Heap_0) (x_39 Bool))
	(=>	(and (= x_40 (Node_0 x_41 x_9 x_8))
			(hmerge_0 x_41 (Node_0 z_3 x_6 x_7) x_10)
			(= x_5 (Node_0 z_3 x_6 x_7))
			(= y_4 (Node_0 x_8 x_9 x_10))
			(= x_39 false)
			(leq_0 x_39 x_6 x_9))
		(hmerge_0 x_40 x_5 y_4))))
(declare-fun hpairwise_0 (list_1 list_1) Bool)
(assert (forall ((x_11 list_1) (q_0 Heap_0) (y_5 list_1) (r_0 Heap_0) (qs_0 list_1) (x_42 list_1) (x_43 Heap_0) (x_44 list_1))
	(=>	(and (= x_42 (cons_1 x_43 x_44))
			(hmerge_0 x_43 q_0 r_0)
			(hpairwise_0 x_44 qs_0)
			(= x_11 (cons_1 q_0 y_5))
			(= y_5 (cons_1 r_0 qs_0)))
		(hpairwise_0 x_42 x_11))))
(assert (forall ((x_11 list_1) (q_0 Heap_0) (y_5 list_1) (x_45 list_1))
	(=>	(and (= x_45 (cons_1 q_0 nil_1))
			(= x_11 (cons_1 q_0 y_5))
			(= y_5 nil_1))
		(hpairwise_0 x_45 x_11))))
(assert (forall ((x_11 list_1) (x_46 list_1))
	(=>	(and (= x_46 nil_1)
			(= x_11 nil_1))
		(hpairwise_0 x_46 x_11))))
(declare-fun hmerging_0 (Heap_0 list_1) Bool)
(assert (forall ((x_12 list_1) (q_1 Heap_0) (y_6 list_1) (z_4 Heap_0) (x_13 list_1) (x_47 Heap_0) (x_48 list_1) (x_49 Heap_0))
	(=>	(and (= x_47 x_49)
			(hpairwise_0 x_48 (cons_1 q_1 (cons_1 z_4 x_13)))
			(hmerging_0 x_49 x_48)
			(= x_12 (cons_1 q_1 y_6))
			(= y_6 (cons_1 z_4 x_13)))
		(hmerging_0 x_47 x_12))))
(assert (forall ((x_12 list_1) (q_1 Heap_0) (y_6 list_1) (x_50 Heap_0))
	(=>	(and (= x_50 q_1)
			(= x_12 (cons_1 q_1 y_6))
			(= y_6 nil_1))
		(hmerging_0 x_50 x_12))))
(assert (forall ((x_12 list_1) (x_51 Heap_0))
	(=>	(and (= x_51 Nil_0)
			(= x_12 nil_1))
		(hmerging_0 x_51 x_12))))
(declare-fun toHeap_1 (Heap_0 list_0) Bool)
(assert (forall ((x_14 list_0) (x_52 Heap_0) (x_53 list_1) (x_54 Heap_0))
	(=>	(and (= x_52 x_54)
			(toHeap_0 x_53 x_14)
			(hmerging_0 x_54 x_53))
		(toHeap_1 x_52 x_14))))
(declare-fun toList_0 (list_0 Heap_0) Bool)
(assert (forall ((x_15 Heap_0) (x_55 list_0))
	(=>	(and (= x_55 nil_0)
			(= x_15 Nil_0))
		(toList_0 x_55 x_15))))
(assert (forall ((x_15 Heap_0) (q_2 Heap_0) (y_7 Nat_0) (r_1 Heap_0) (x_56 list_0) (x_57 Heap_0) (x_58 list_0))
	(=>	(and (= x_56 (cons_0 y_7 x_58))
			(hmerge_0 x_57 q_2 r_1)
			(toList_0 x_58 x_57)
			(= x_15 (Node_0 q_2 y_7 r_1)))
		(toList_0 x_56 x_15))))
(declare-fun hsort_0 (list_0 list_0) Bool)
(assert (forall ((x_16 list_0) (x_59 list_0) (x_60 Heap_0) (x_61 list_0))
	(=>	(and (= x_59 x_61)
			(toHeap_1 x_60 x_16)
			(toList_0 x_61 x_60))
		(hsort_0 x_59 x_16))))
(assert (forall ((xs_2 list_0) (x_62 list_0) (x_63 list_0))
	(=>	(and (diseqlist_0 x_62 x_63)
			(hsort_0 x_62 xs_2)
			(isort_0 x_63 xs_2))
		false)))
(check-sat)
