(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_32 Nat_1) (x_31 Nat_1))
	(=> (= x_32 (S_0 x_31))
	    (unS_1 x_31 x_32))))
(assert (isZ_0 Z_0))
(assert (forall ((x_33 Nat_1))
	(isS_0 (S_0 x_33))))
(assert (forall ((x_34 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_34))))
(assert (forall ((x_35 Nat_1))
	(diseqNat_0 (S_0 x_35) Z_0)))
(assert (forall ((x_36 Nat_1) (x_37 Nat_1))
	(=> (diseqNat_0 x_36 x_37)
	    (diseqNat_0 (S_0 x_36) (S_0 x_37)))))
(declare-fun add_1 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun minus_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun le_0 (Nat_1 Nat_1) Bool)
(declare-fun ge_0 (Nat_1 Nat_1) Bool)
(declare-fun lt_0 (Nat_1 Nat_1) Bool)
(declare-fun gt_0 (Nat_1 Nat_1) Bool)
(declare-fun mult_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun div_0 (Nat_1 Nat_1 Nat_1) Bool)
(declare-fun mod_0 (Nat_1 Nat_1 Nat_1) Bool)
(assert (forall ((y_5 Nat_1))
	(add_1 y_5 Z_0 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (add_1 r_0 x_29 y_5)
	    (add_1 (S_0 r_0) (S_0 x_29) y_5))))
(assert (forall ((y_5 Nat_1))
	(minus_0 Z_0 Z_0 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_29 y_5)
	    (minus_0 (S_0 r_0) (S_0 x_29) y_5))))
(assert (forall ((y_5 Nat_1))
	(le_0 Z_0 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (le_0 x_29 y_5)
	    (le_0 (S_0 x_29) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(ge_0 y_5 Z_0)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (ge_0 x_29 y_5)
	    (ge_0 (S_0 x_29) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(lt_0 Z_0 (S_0 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (lt_0 (S_0 x_29) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(gt_0 (S_0 y_5) Z_0)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (gt_0 x_29 y_5)
	    (gt_0 (S_0 x_29) (S_0 y_5)))))
(assert (forall ((y_5 Nat_1))
	(mult_0 Z_0 Z_0 y_5)))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (mult_0 r_0 x_29 y_5)
			(add_1 z_4 r_0 y_5))
		(mult_0 z_4 (S_0 x_29) y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (div_0 Z_0 x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_29 y_5)
			(minus_0 z_4 x_29 y_5)
			(div_0 r_0 z_4 y_5))
		(div_0 (S_0 r_0) x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1))
	(=> (lt_0 x_29 y_5)
	    (mod_0 x_29 x_29 y_5))))
(assert (forall ((x_29 Nat_1) (y_5 Nat_1) (r_0 Nat_1) (z_4 Nat_1))
	(=>	(and (ge_0 x_29 y_5)
			(minus_0 z_4 x_29 y_5)
			(mod_0 r_0 z_4 y_5))
		(mod_0 r_0 x_29 y_5))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_40 Nat_0) (x_39 Nat_0))
	(=> (= x_40 (succ_0 x_39))
	    (p_1 x_39 x_40))))
(assert (iszero_0 zero_0))
(assert (forall ((x_41 Nat_0))
	(issucc_0 (succ_0 x_41))))
(assert (forall ((x_42 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_42))))
(assert (forall ((x_43 Nat_0))
	(diseqNat_1 (succ_0 x_43) zero_0)))
(assert (forall ((x_44 Nat_0) (x_45 Nat_0))
	(=> (diseqNat_1 x_44 x_45)
	    (diseqNat_1 (succ_0 x_44) (succ_0 x_45)))))
(declare-fun plus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_9 Nat_0) (x_10 Nat_0))
	(=>	(and (= x_9 (succ_0 x_10))
			(plus_0 x_10 z_0 y_0)
			(= x_0 (succ_0 z_0)))
		(plus_0 x_9 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_11 Nat_0))
	(=>	(and (= x_11 y_0)
			(= x_0 zero_0))
		(plus_0 x_11 x_0 y_0))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_2 Nat_0) (x_12 Nat_0) (x_13 Nat_0) (x_14 Nat_0))
	(=>	(and (= x_12 x_14)
			(add_0 x_13 x_2 y_1 z_1)
			(plus_0 x_14 (succ_0 zero_0) x_13)
			(= x_1 (succ_0 x_2)))
		(add_0 x_12 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_3 Nat_0) (x_15 Nat_0) (x_16 Nat_0) (x_17 Nat_0))
	(=>	(and (= x_15 x_17)
			(add_0 x_16 zero_0 x_3 z_1)
			(plus_0 x_17 (succ_0 zero_0) x_16)
			(= x_1 zero_0)
			(= y_1 (succ_0 x_3)))
		(add_0 x_15 x_1 y_1 z_1))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_18 Nat_0))
	(=>	(and (= x_18 z_1)
			(= x_1 zero_0)
			(= y_1 zero_0))
		(add_0 x_18 x_1 y_1 z_1))))
(assert (forall ((x_4 Nat_0) (y_2 Nat_0) (z_2 Nat_0) (x_19 Nat_0) (x_20 Nat_0))
	(=>	(and (diseqNat_1 x_19 x_20)
			(add_0 x_19 x_4 y_2 z_2)
			(add_0 x_20 z_2 x_4 y_2))
		false)))
(assert (forall ((x_5 Nat_0) (y_3 Nat_0) (z_3 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0))
	(=>	(and (diseqNat_1 x_22 x_24)
			(plus_0 x_21 y_3 z_3)
			(plus_0 x_22 x_5 x_21)
			(plus_0 x_23 x_5 y_3)
			(plus_0 x_24 x_23 z_3))
		false)))
(assert (forall ((x_6 Nat_0) (y_4 Nat_0) (x_25 Nat_0) (x_26 Nat_0))
	(=>	(and (diseqNat_1 x_25 x_26)
			(plus_0 x_25 x_6 y_4)
			(plus_0 x_26 y_4 x_6))
		false)))
(assert (forall ((x_7 Nat_0) (x_27 Nat_0))
	(=>	(and (diseqNat_1 x_27 x_7)
			(plus_0 x_27 x_7 zero_0))
		false)))
(assert (forall ((x_8 Nat_0) (x_28 Nat_0))
	(=>	(and (diseqNat_1 x_28 x_8)
			(plus_0 x_28 zero_0 x_8))
		false)))
(check-sat)
