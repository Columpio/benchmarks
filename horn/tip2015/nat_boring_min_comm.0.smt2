(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_18 Nat_1) (x_17 Nat_1))
	(=> (= x_18 (S_0 x_17))
	    (unS_1 x_17 x_18))))
(assert (isZ_0 Z_0))
(assert (forall ((x_19 Nat_1))
	(isS_0 (S_0 x_19))))
(assert (forall ((x_20 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_20))))
(assert (forall ((x_21 Nat_1))
	(diseqNat_0 (S_0 x_21) Z_0)))
(assert (forall ((x_22 Nat_1) (x_23 Nat_1))
	(=> (diseqNat_0 x_22 x_23)
	    (diseqNat_0 (S_0 x_22) (S_0 x_23)))))
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
	(add_0 y_2 Z_0 y_2)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_15 y_2)
	    (add_0 (S_0 r_0) (S_0 x_15) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_15 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_15) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_0 y_2)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_15 y_2)
	    (le_0 (S_0 x_15) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_15 y_2)
	    (ge_0 (S_0 x_15) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_15 y_2)
	    (lt_0 (S_0 x_15) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_15 y_2)
	    (gt_0 (S_0 x_15) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (mult_0 r_0 x_15 y_2)
			(add_0 z_1 r_0 y_2))
		(mult_0 z_1 (S_0 x_15) y_2))))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_15 y_2)
	    (div_0 Z_0 x_15 y_2))))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_15 y_2)
			(minus_0 z_1 x_15 y_2)
			(div_0 r_0 z_1 y_2))
		(div_0 (S_0 r_0) x_15 y_2))))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_15 y_2)
	    (mod_0 x_15 x_15 y_2))))
(assert (forall ((x_15 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_1 Nat_1))
	(=>	(and (ge_0 x_15 y_2)
			(minus_0 z_1 x_15 y_2)
			(mod_0 r_0 z_1 y_2))
		(mod_0 r_0 x_15 y_2))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_26 Nat_0) (x_25 Nat_0))
	(=> (= x_26 (succ_0 x_25))
	    (p_1 x_25 x_26))))
(assert (iszero_0 zero_0))
(assert (forall ((x_27 Nat_0))
	(issucc_0 (succ_0 x_27))))
(assert (forall ((x_28 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_28))))
(assert (forall ((x_29 Nat_0))
	(diseqNat_1 (succ_0 x_29) zero_0)))
(assert (forall ((x_30 Nat_0) (x_31 Nat_0))
	(=> (diseqNat_1 x_30 x_31)
	    (diseqNat_1 (succ_0 x_30) (succ_0 x_31)))))
(declare-fun leq_0 (Bool Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_1 Nat_0) (x_3 Bool) (x_4 Bool))
	(=>	(and (= x_3 x_4)
			(leq_0 x_4 z_0 x_1)
			(= x_0 (succ_0 z_0))
			(= y_0 (succ_0 x_1)))
		(leq_0 x_3 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_5 Bool))
	(=>	(and (= x_5 false)
			(= x_0 (succ_0 z_0))
			(= y_0 zero_0))
		(leq_0 x_5 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_6 Bool))
	(=>	(and (= x_6 true)
			(= x_0 zero_0))
		(leq_0 x_6 x_0 y_0))))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_7 Bool) (x_8 Bool))
	(=>	(and (diseqNat_1 x_2 y_1)
			(= x_7 true)
			(= x_8 true)
			(leq_0 x_7 x_2 y_1)
			(leq_0 x_8 y_1 x_2))
		false)))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_9 Bool) (x_10 Bool))
	(=>	(and (diseqNat_1 y_1 y_1)
			(= x_9 false)
			(= x_10 true)
			(leq_0 x_9 x_2 y_1)
			(leq_0 x_10 y_1 x_2))
		false)))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_11 Bool) (x_12 Bool))
	(=>	(and (diseqNat_1 x_2 x_2)
			(= x_11 true)
			(= x_12 false)
			(leq_0 x_11 x_2 y_1)
			(leq_0 x_12 y_1 x_2))
		false)))
(assert (forall ((x_2 Nat_0) (y_1 Nat_0) (x_13 Bool) (x_14 Bool))
	(=>	(and (diseqNat_1 y_1 x_2)
			(= x_13 false)
			(= x_14 false)
			(leq_0 x_13 x_2 y_1)
			(leq_0 x_14 y_1 x_2))
		false)))
(check-sat)