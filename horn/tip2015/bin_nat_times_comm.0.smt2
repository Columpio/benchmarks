(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_35 Nat_0) (x_34 Nat_0))
	(=> (= x_35 (S_0 x_34))
	    (unS_1 x_34 x_35))))
(assert (isZ_0 Z_0))
(assert (forall ((x_36 Nat_0))
	(isS_0 (S_0 x_36))))
(assert (forall ((x_37 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_37))))
(assert (forall ((x_38 Nat_0))
	(diseqNat_0 (S_0 x_38) Z_0)))
(assert (forall ((x_39 Nat_0) (x_40 Nat_0))
	(=> (diseqNat_0 x_39 x_40)
	    (diseqNat_0 (S_0 x_39) (S_0 x_40)))))
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
(assert (forall ((x_32 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_32 y_3)
	    (add_0 (S_0 r_0) (S_0 x_32) y_3))))
(assert (forall ((y_3 Nat_0))
	(minus_0 Z_0 Z_0 y_3)))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_32 y_3)
	    (minus_0 (S_0 r_0) (S_0 x_32) y_3))))
(assert (forall ((y_3 Nat_0))
	(le_0 Z_0 y_3)))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (le_0 x_32 y_3)
	    (le_0 (S_0 x_32) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(ge_0 y_3 Z_0)))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (ge_0 x_32 y_3)
	    (ge_0 (S_0 x_32) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(lt_0 Z_0 (S_0 y_3))))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_32 y_3)
	    (lt_0 (S_0 x_32) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(gt_0 (S_0 y_3) Z_0)))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (gt_0 x_32 y_3)
	    (gt_0 (S_0 x_32) (S_0 y_3)))))
(assert (forall ((y_3 Nat_0))
	(mult_0 Z_0 Z_0 y_3)))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_32 y_3)
			(add_0 z_1 r_0 y_3))
		(mult_0 z_1 (S_0 x_32) y_3))))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_32 y_3)
	    (div_0 Z_0 x_32 y_3))))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_32 y_3)
			(minus_0 z_1 x_32 y_3)
			(div_0 r_0 z_1 y_3))
		(div_0 (S_0 r_0) x_32 y_3))))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0))
	(=> (lt_0 x_32 y_3)
	    (mod_0 x_32 x_32 y_3))))
(assert (forall ((x_32 Nat_0) (y_3 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_32 y_3)
			(minus_0 z_1 x_32 y_3)
			(mod_0 r_0 z_1 y_3))
		(mod_0 r_0 x_32 y_3))))
(declare-datatypes ((Bin_0 0)) (((One_0 ) (ZeroAnd_0 (projZeroAnd_0 Bin_0)) (OneAnd_0 (projOneAnd_0 Bin_0)))))
(declare-fun diseqBin_0 (Bin_0 Bin_0) Bool)
(declare-fun projZeroAnd_1 (Bin_0 Bin_0) Bool)
(declare-fun projOneAnd_1 (Bin_0 Bin_0) Bool)
(declare-fun isOne_0 (Bin_0) Bool)
(declare-fun isZeroAnd_0 (Bin_0) Bool)
(declare-fun isOneAnd_0 (Bin_0) Bool)
(assert (forall ((x_43 Bin_0) (x_42 Bin_0))
	(=> (= x_43 (ZeroAnd_0 x_42))
	    (projZeroAnd_1 x_42 x_43))))
(assert (forall ((x_45 Bin_0) (x_44 Bin_0))
	(=> (= x_45 (OneAnd_0 x_44))
	    (projOneAnd_1 x_44 x_45))))
(assert (isOne_0 One_0))
(assert (forall ((x_46 Bin_0))
	(isZeroAnd_0 (ZeroAnd_0 x_46))))
(assert (forall ((x_47 Bin_0))
	(isOneAnd_0 (OneAnd_0 x_47))))
(assert (forall ((x_48 Bin_0))
	(diseqBin_0 One_0 (ZeroAnd_0 x_48))))
(assert (forall ((x_49 Bin_0))
	(diseqBin_0 One_0 (OneAnd_0 x_49))))
(assert (forall ((x_50 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_50) One_0)))
(assert (forall ((x_51 Bin_0))
	(diseqBin_0 (OneAnd_0 x_51) One_0)))
(assert (forall ((x_52 Bin_0) (x_53 Bin_0))
	(diseqBin_0 (ZeroAnd_0 x_52) (OneAnd_0 x_53))))
(assert (forall ((x_54 Bin_0) (x_55 Bin_0))
	(diseqBin_0 (OneAnd_0 x_54) (ZeroAnd_0 x_55))))
(assert (forall ((x_56 Bin_0) (x_57 Bin_0))
	(=> (diseqBin_0 x_56 x_57)
	    (diseqBin_0 (ZeroAnd_0 x_56) (ZeroAnd_0 x_57)))))
(assert (forall ((x_58 Bin_0) (x_59 Bin_0))
	(=> (diseqBin_0 x_58 x_59)
	    (diseqBin_0 (OneAnd_0 x_58) (OneAnd_0 x_59)))))
(declare-fun s_0 (Bin_0 Bin_0) Bool)
(assert (forall ((x_0 Bin_0) (ys_0 Bin_0) (x_5 Bin_0) (x_6 Bin_0))
	(=>	(and (= x_5 (ZeroAnd_0 x_6))
			(s_0 x_6 ys_0)
			(= x_0 (OneAnd_0 ys_0)))
		(s_0 x_5 x_0))))
(assert (forall ((x_0 Bin_0) (xs_0 Bin_0) (x_7 Bin_0))
	(=>	(and (= x_7 (OneAnd_0 xs_0))
			(= x_0 (ZeroAnd_0 xs_0)))
		(s_0 x_7 x_0))))
(assert (forall ((x_0 Bin_0) (x_8 Bin_0))
	(=>	(and (= x_8 (ZeroAnd_0 One_0))
			(= x_0 One_0))
		(s_0 x_8 x_0))))
(declare-fun plus_0 (Bin_0 Bin_0 Bin_0) Bool)
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (ys_1 Bin_0) (x_9 Bin_0) (x_10 Bin_0) (x_11 Bin_0))
	(=>	(and (= x_9 (ZeroAnd_0 x_11))
			(plus_0 x_10 x_2 ys_1)
			(s_0 x_11 x_10)
			(= x_1 (OneAnd_0 x_2))
			(= y_0 (OneAnd_0 ys_1)))
		(plus_0 x_9 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (zs_0 Bin_0) (x_12 Bin_0) (x_13 Bin_0))
	(=>	(and (= x_12 (OneAnd_0 x_13))
			(plus_0 x_13 x_2 zs_0)
			(= x_1 (OneAnd_0 x_2))
			(= y_0 (ZeroAnd_0 zs_0)))
		(plus_0 x_12 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_2 Bin_0) (x_14 Bin_0) (x_15 Bin_0))
	(=>	(and (= x_14 x_15)
			(s_0 x_15 (OneAnd_0 x_2))
			(= x_1 (OneAnd_0 x_2))
			(= y_0 One_0))
		(plus_0 x_14 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (xs_1 Bin_0) (x_16 Bin_0) (x_17 Bin_0))
	(=>	(and (= x_16 (OneAnd_0 x_17))
			(plus_0 x_17 z_0 xs_1)
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 (OneAnd_0 xs_1)))
		(plus_0 x_16 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (ys_2 Bin_0) (x_18 Bin_0) (x_19 Bin_0))
	(=>	(and (= x_18 (ZeroAnd_0 x_19))
			(plus_0 x_19 z_0 ys_2)
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 (ZeroAnd_0 ys_2)))
		(plus_0 x_18 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (z_0 Bin_0) (x_20 Bin_0) (x_21 Bin_0))
	(=>	(and (= x_20 x_21)
			(s_0 x_21 (ZeroAnd_0 z_0))
			(= x_1 (ZeroAnd_0 z_0))
			(= y_0 One_0))
		(plus_0 x_20 x_1 y_0))))
(assert (forall ((x_1 Bin_0) (y_0 Bin_0) (x_22 Bin_0) (x_23 Bin_0))
	(=>	(and (= x_22 x_23)
			(s_0 x_23 y_0)
			(= x_1 One_0))
		(plus_0 x_22 x_1 y_0))))
(declare-fun times_0 (Bin_0 Bin_0 Bin_0) Bool)
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (xs_2 Bin_0) (x_24 Bin_0) (x_25 Bin_0) (x_26 Bin_0))
	(=>	(and (= x_24 x_26)
			(times_0 x_25 xs_2 y_1)
			(plus_0 x_26 (ZeroAnd_0 x_25) y_1)
			(= x_3 (OneAnd_0 xs_2)))
		(times_0 x_24 x_3 y_1))))
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (xs_3 Bin_0) (x_27 Bin_0) (x_28 Bin_0))
	(=>	(and (= x_27 (ZeroAnd_0 x_28))
			(times_0 x_28 xs_3 y_1)
			(= x_3 (ZeroAnd_0 xs_3)))
		(times_0 x_27 x_3 y_1))))
(assert (forall ((x_3 Bin_0) (y_1 Bin_0) (x_29 Bin_0))
	(=>	(and (= x_29 y_1)
			(= x_3 One_0))
		(times_0 x_29 x_3 y_1))))
(assert (forall ((x_4 Bin_0) (y_2 Bin_0) (x_30 Bin_0) (x_31 Bin_0))
	(=>	(and (diseqBin_0 x_30 x_31)
			(times_0 x_30 x_4 y_2)
			(times_0 x_31 y_2 x_4))
		false)))
(check-sat)
