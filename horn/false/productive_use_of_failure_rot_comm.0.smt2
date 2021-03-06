(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_1 ) (S_1 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_20 Nat_1) (x_19 Nat_1))
	(=> (= x_20 (S_1 x_19))
	    (unS_1 x_19 x_20))))
(assert (isZ_0 Z_1))
(assert (forall ((x_21 Nat_1))
	(isS_0 (S_1 x_21))))
(assert (forall ((x_22 Nat_1))
	(diseqNat_0 Z_1 (S_1 x_22))))
(assert (forall ((x_23 Nat_1))
	(diseqNat_0 (S_1 x_23) Z_1)))
(assert (forall ((x_24 Nat_1) (x_25 Nat_1))
	(=> (diseqNat_0 x_24 x_25)
	    (diseqNat_0 (S_1 x_24) (S_1 x_25)))))
(declare-fun add_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_2 Nat_1))
	(add_0 y_2 Z_1 y_2)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_17 y_2)
	    (add_0 (S_1 r_0) (S_1 x_17) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_1 Z_1 y_2)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_17 y_2)
	    (minus_0 (S_1 r_0) (S_1 x_17) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_1 y_2)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_17 y_2)
	    (le_0 (S_1 x_17) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_1)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_17 y_2)
	    (ge_0 (S_1 x_17) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_1 (S_1 y_2))))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_17 y_2)
	    (lt_0 (S_1 x_17) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_1 y_2) Z_1)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_17 y_2)
	    (gt_0 (S_1 x_17) (S_1 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_1 Z_1 y_2)))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_17 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_1 x_17) y_2))))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_17 y_2)
	    (div_0 Z_1 x_17 y_2))))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_17 y_2)
			(minus_0 z_2 x_17 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_1 r_0) x_17 y_2))))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_17 y_2)
	    (mod_0 x_17 x_17 y_2))))
(assert (forall ((x_17 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_17 y_2)
			(minus_0 z_2 x_17 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_17 y_2))))
(declare-datatypes ((Nat_0 0)) (((S_0 (projS_0 Nat_0)) (Z_0 ))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun projS_1 (Nat_0 Nat_0) Bool)
(declare-fun isS_1 (Nat_0) Bool)
(declare-fun isZ_1 (Nat_0) Bool)
(assert (forall ((x_27 Nat_0) (x_26 Nat_0))
	(=> (= x_27 (S_0 x_26))
	    (projS_1 x_26 x_27))))
(assert (forall ((x_29 Nat_0))
	(isS_1 (S_0 x_29))))
(assert (isZ_1 Z_0))
(assert (forall ((x_30 Nat_0))
	(diseqNat_1 (S_0 x_30) Z_0)))
(assert (forall ((x_31 Nat_0))
	(diseqNat_1 Z_0 (S_0 x_31))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0))
	(=> (diseqNat_1 x_32 x_33)
	    (diseqNat_1 (S_0 x_32) (S_0 x_33)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Nat_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Nat_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_37 list_0) (x_35 Nat_0) (x_36 list_0))
	(=> (= x_37 (cons_0 x_35 x_36))
	    (head_1 x_35 x_37))))
(assert (forall ((x_37 list_0) (x_35 Nat_0) (x_36 list_0))
	(=> (= x_37 (cons_0 x_35 x_36))
	    (tail_1 x_36 x_37))))
(assert (isnil_0 nil_0))
(assert (forall ((x_38 Nat_0) (x_39 list_0))
	(iscons_0 (cons_0 x_38 x_39))))
(assert (forall ((x_40 Nat_0) (x_41 list_0))
	(diseqlist_0 nil_0 (cons_0 x_40 x_41))))
(assert (forall ((x_42 Nat_0) (x_43 list_0))
	(diseqlist_0 (cons_0 x_42 x_43) nil_0)))
(assert (forall ((x_44 Nat_0) (x_45 list_0) (x_46 Nat_0) (x_47 list_0))
	(=> (diseqNat_1 x_44 x_46)
	    (diseqlist_0 (cons_0 x_44 x_45) (cons_0 x_46 x_47)))))
(assert (forall ((x_44 Nat_0) (x_45 list_0) (x_46 Nat_0) (x_47 list_0))
	(=> (diseqlist_0 x_45 x_47)
	    (diseqlist_0 (cons_0 x_44 x_45) (cons_0 x_46 x_47)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 list_0) (z_0 Nat_0) (xs_0 list_0) (x_5 list_0) (x_6 list_0))
	(=>	(and (= x_5 (cons_0 z_0 x_6))
			(x_0 x_6 xs_0 y_0)
			(= x_1 (cons_0 z_0 xs_0)))
		(x_0 x_5 x_1 y_0))))
(assert (forall ((x_1 list_0) (y_0 list_0) (x_7 list_0))
	(=>	(and (= x_7 y_0)
			(= x_1 nil_0))
		(x_0 x_7 x_1 y_0))))
(declare-fun rotate_0 (list_0 Nat_0 list_0) Bool)
(assert (forall ((x_2 Nat_0) (y_1 list_0) (x_8 list_0))
	(=>	(and (= x_8 y_1)
			(= x_2 Z_0))
		(rotate_0 x_8 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_3 Nat_0) (x_4 list_0) (x_9 list_0) (x_10 list_0) (x_11 list_0))
	(=>	(and (= x_9 x_11)
			(x_0 x_10 x_4 (cons_0 x_3 nil_0))
			(rotate_0 x_11 z_1 x_10)
			(= x_2 (S_0 z_1))
			(= y_1 (cons_0 x_3 x_4)))
		(rotate_0 x_9 x_2 y_1))))
(assert (forall ((x_2 Nat_0) (y_1 list_0) (z_1 Nat_0) (x_12 list_0))
	(=>	(and (= x_12 nil_0)
			(= x_2 (S_0 z_1))
			(= y_1 nil_0))
		(rotate_0 x_12 x_2 y_1))))
(assert (forall ((n_0 Nat_0) (m_0 Nat_0) (xs_1 list_0) (x_13 list_0) (x_14 list_0) (x_15 list_0) (x_16 list_0))
	(=>	(and (diseqlist_0 x_14 x_16)
			(rotate_0 x_13 m_0 xs_1)
			(rotate_0 x_14 n_0 x_13)
			(rotate_0 x_15 n_0 xs_1)
			(rotate_0 x_16 m_0 x_15))
		false)))
(check-sat)
