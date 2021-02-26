(set-logic HORN)
(declare-datatypes ((Nat_1 0)) (((Z_0 ) (S_0 (unS_0 Nat_1)))))
(declare-fun diseqNat_0 (Nat_1 Nat_1) Bool)
(declare-fun unS_1 (Nat_1 Nat_1) Bool)
(declare-fun isZ_0 (Nat_1) Bool)
(declare-fun isS_0 (Nat_1) Bool)
(assert (forall ((x_12 Nat_1) (x_11 Nat_1))
	(=> (= x_12 (S_0 x_11))
	    (unS_1 x_11 x_12))))
(assert (isZ_0 Z_0))
(assert (forall ((x_13 Nat_1))
	(isS_0 (S_0 x_13))))
(assert (forall ((x_14 Nat_1))
	(diseqNat_0 Z_0 (S_0 x_14))))
(assert (forall ((x_15 Nat_1))
	(diseqNat_0 (S_0 x_15) Z_0)))
(assert (forall ((x_16 Nat_1) (x_17 Nat_1))
	(=> (diseqNat_0 x_16 x_17)
	    (diseqNat_0 (S_0 x_16) (S_0 x_17)))))
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
(assert (forall ((x_9 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (add_0 r_0 x_9 y_2)
	    (add_0 (S_0 r_0) (S_0 x_9) y_2))))
(assert (forall ((y_2 Nat_1))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1) (r_0 Nat_1))
	(=> (minus_0 r_0 x_9 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_9) y_2))))
(assert (forall ((y_2 Nat_1))
	(le_0 Z_0 y_2)))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (le_0 x_9 y_2)
	    (le_0 (S_0 x_9) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (ge_0 x_9 y_2)
	    (ge_0 (S_0 x_9) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_9 y_2)
	    (lt_0 (S_0 x_9) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (gt_0 x_9 y_2)
	    (gt_0 (S_0 x_9) (S_0 y_2)))))
(assert (forall ((y_2 Nat_1))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (mult_0 r_0 x_9 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_0 x_9) y_2))))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_9 y_2)
	    (div_0 Z_0 x_9 y_2))))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_9 y_2)
			(minus_0 z_2 x_9 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_0 r_0) x_9 y_2))))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1))
	(=> (lt_0 x_9 y_2)
	    (mod_0 x_9 x_9 y_2))))
(assert (forall ((x_9 Nat_1) (y_2 Nat_1) (r_0 Nat_1) (z_2 Nat_1))
	(=>	(and (ge_0 x_9 y_2)
			(minus_0 z_2 x_9 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_9 y_2))))
(declare-datatypes ((Nat_0 0)) (((zero_0 ) (succ_0 (p_0 Nat_0)))))
(declare-fun diseqNat_1 (Nat_0 Nat_0) Bool)
(declare-fun p_1 (Nat_0 Nat_0) Bool)
(declare-fun iszero_0 (Nat_0) Bool)
(declare-fun issucc_0 (Nat_0) Bool)
(assert (forall ((x_20 Nat_0) (x_19 Nat_0))
	(=> (= x_20 (succ_0 x_19))
	    (p_1 x_19 x_20))))
(assert (iszero_0 zero_0))
(assert (forall ((x_21 Nat_0))
	(issucc_0 (succ_0 x_21))))
(assert (forall ((x_22 Nat_0))
	(diseqNat_1 zero_0 (succ_0 x_22))))
(assert (forall ((x_23 Nat_0))
	(diseqNat_1 (succ_0 x_23) zero_0)))
(assert (forall ((x_24 Nat_0) (x_25 Nat_0))
	(=> (diseqNat_1 x_24 x_25)
	    (diseqNat_1 (succ_0 x_24) (succ_0 x_25)))))
(declare-fun accplus_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (z_0 Nat_0) (x_2 Nat_0) (x_3 Nat_0))
	(=>	(and (= x_2 x_3)
			(accplus_0 x_3 z_0 (succ_0 y_0))
			(= x_0 (succ_0 z_0)))
		(accplus_0 x_2 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_4 Nat_0))
	(=>	(and (= x_4 y_0)
			(= x_0 zero_0))
		(accplus_0 x_4 x_0 y_0))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_1 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (x_8 Nat_0))
	(=>	(and (diseqNat_1 x_6 x_8)
			(accplus_0 x_5 y_1 z_1)
			(accplus_0 x_6 x_1 x_5)
			(accplus_0 x_7 x_1 y_1)
			(accplus_0 x_8 x_7 z_1))
		false)))
(check-sat)
