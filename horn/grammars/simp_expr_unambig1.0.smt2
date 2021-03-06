(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_20 Nat_0) (x_19 Nat_0))
	(=> (= x_20 (S_0 x_19))
	    (unS_1 x_19 x_20))))
(assert (isZ_0 Z_0))
(assert (forall ((x_21 Nat_0))
	(isS_0 (S_0 x_21))))
(assert (forall ((x_22 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_22))))
(assert (forall ((x_23 Nat_0))
	(diseqNat_0 (S_0 x_23) Z_0)))
(assert (forall ((x_24 Nat_0) (x_25 Nat_0))
	(=> (diseqNat_0 x_24 x_25)
	    (diseqNat_0 (S_0 x_24) (S_0 x_25)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_1 Nat_0))
	(add_0 y_1 Z_0 y_1)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_17 y_1)
	    (add_0 (S_0 r_0) (S_0 x_17) y_1))))
(assert (forall ((y_1 Nat_0))
	(minus_0 Z_0 Z_0 y_1)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_17 y_1)
	    (minus_0 (S_0 r_0) (S_0 x_17) y_1))))
(assert (forall ((y_1 Nat_0))
	(le_0 Z_0 y_1)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_17 y_1)
	    (le_0 (S_0 x_17) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(ge_0 y_1 Z_0)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (ge_0 x_17 y_1)
	    (ge_0 (S_0 x_17) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(lt_0 Z_0 (S_0 y_1))))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_17 y_1)
	    (lt_0 (S_0 x_17) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(gt_0 (S_0 y_1) Z_0)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_17 y_1)
	    (gt_0 (S_0 x_17) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(mult_0 Z_0 Z_0 y_1)))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_17 y_1)
			(add_0 z_1 r_0 y_1))
		(mult_0 z_1 (S_0 x_17) y_1))))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_17 y_1)
	    (div_0 Z_0 x_17 y_1))))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_17 y_1)
			(minus_0 z_1 x_17 y_1)
			(div_0 r_0 z_1 y_1))
		(div_0 (S_0 r_0) x_17 y_1))))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_17 y_1)
	    (mod_0 x_17 x_17 y_1))))
(assert (forall ((x_17 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_17 y_1)
			(minus_0 z_1 x_17 y_1)
			(mod_0 r_0 z_1 y_1))
		(mod_0 r_0 x_17 y_1))))
(declare-datatypes ((Tok_0 0)) (((C_0 ) (D_0 ) (X_0 ) (Y_0 ) (Pl_0 ))))
(declare-fun diseqTok_0 (Tok_0 Tok_0) Bool)
(declare-fun isC_0 (Tok_0) Bool)
(declare-fun isD_0 (Tok_0) Bool)
(declare-fun isX_0 (Tok_0) Bool)
(declare-fun isY_0 (Tok_0) Bool)
(declare-fun isPl_0 (Tok_0) Bool)
(assert (isC_0 C_0))
(assert (isD_0 D_0))
(assert (isX_0 X_0))
(assert (isY_0 Y_0))
(assert (isPl_0 Pl_0))
(assert (diseqTok_0 C_0 D_0))
(assert (diseqTok_0 C_0 X_0))
(assert (diseqTok_0 C_0 Y_0))
(assert (diseqTok_0 C_0 Pl_0))
(assert (diseqTok_0 D_0 C_0))
(assert (diseqTok_0 X_0 C_0))
(assert (diseqTok_0 Y_0 C_0))
(assert (diseqTok_0 Pl_0 C_0))
(assert (diseqTok_0 D_0 X_0))
(assert (diseqTok_0 D_0 Y_0))
(assert (diseqTok_0 D_0 Pl_0))
(assert (diseqTok_0 X_0 D_0))
(assert (diseqTok_0 Y_0 D_0))
(assert (diseqTok_0 Pl_0 D_0))
(assert (diseqTok_0 X_0 Y_0))
(assert (diseqTok_0 X_0 Pl_0))
(assert (diseqTok_0 Y_0 X_0))
(assert (diseqTok_0 Pl_0 X_0))
(assert (diseqTok_0 Y_0 Pl_0))
(assert (diseqTok_0 Pl_0 Y_0))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Tok_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Tok_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_34 list_0) (x_32 Tok_0) (x_33 list_0))
	(=> (= x_34 (cons_0 x_32 x_33))
	    (head_1 x_32 x_34))))
(assert (forall ((x_34 list_0) (x_32 Tok_0) (x_33 list_0))
	(=> (= x_34 (cons_0 x_32 x_33))
	    (tail_1 x_33 x_34))))
(assert (isnil_0 nil_0))
(assert (forall ((x_35 Tok_0) (x_36 list_0))
	(iscons_0 (cons_0 x_35 x_36))))
(assert (forall ((x_37 Tok_0) (x_38 list_0))
	(diseqlist_0 nil_0 (cons_0 x_37 x_38))))
(assert (forall ((x_39 Tok_0) (x_40 list_0))
	(diseqlist_0 (cons_0 x_39 x_40) nil_0)))
(assert (forall ((x_41 Tok_0) (x_42 list_0) (x_43 Tok_0) (x_44 list_0))
	(=> (diseqTok_0 x_41 x_43)
	    (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(assert (forall ((x_41 Tok_0) (x_42 list_0) (x_43 Tok_0) (x_44 list_0))
	(=> (diseqlist_0 x_42 x_44)
	    (diseqlist_0 (cons_0 x_41 x_42) (cons_0 x_43 x_44)))))
(declare-datatypes ((E_0 0)) (((Plus_0 (projPlus_0 E_0) (projPlus_1 E_0)) (EX_0 ) (EY_0 ))))
(declare-fun diseqE_0 (E_0 E_0) Bool)
(declare-fun projPlus_2 (E_0 E_0) Bool)
(declare-fun projPlus_3 (E_0 E_0) Bool)
(declare-fun isPlus_0 (E_0) Bool)
(declare-fun isEX_0 (E_0) Bool)
(declare-fun isEY_0 (E_0) Bool)
(assert (forall ((x_47 E_0) (x_45 E_0) (x_46 E_0))
	(=> (= x_47 (Plus_0 x_45 x_46))
	    (projPlus_2 x_45 x_47))))
(assert (forall ((x_47 E_0) (x_45 E_0) (x_46 E_0))
	(=> (= x_47 (Plus_0 x_45 x_46))
	    (projPlus_3 x_46 x_47))))
(assert (forall ((x_50 E_0) (x_51 E_0))
	(isPlus_0 (Plus_0 x_50 x_51))))
(assert (isEX_0 EX_0))
(assert (isEY_0 EY_0))
(assert (forall ((x_52 E_0) (x_53 E_0))
	(diseqE_0 (Plus_0 x_52 x_53) EX_0)))
(assert (forall ((x_54 E_0) (x_55 E_0))
	(diseqE_0 (Plus_0 x_54 x_55) EY_0)))
(assert (forall ((x_56 E_0) (x_57 E_0))
	(diseqE_0 EX_0 (Plus_0 x_56 x_57))))
(assert (forall ((x_58 E_0) (x_59 E_0))
	(diseqE_0 EY_0 (Plus_0 x_58 x_59))))
(assert (diseqE_0 EX_0 EY_0))
(assert (diseqE_0 EY_0 EX_0))
(assert (forall ((x_60 E_0) (x_61 E_0) (x_62 E_0) (x_63 E_0))
	(=> (diseqE_0 x_60 x_62)
	    (diseqE_0 (Plus_0 x_60 x_61) (Plus_0 x_62 x_63)))))
(assert (forall ((x_60 E_0) (x_61 E_0) (x_62 E_0) (x_63 E_0))
	(=> (diseqE_0 x_61 x_63)
	    (diseqE_0 (Plus_0 x_60 x_61) (Plus_0 x_62 x_63)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 list_0) (z_0 Tok_0) (xs_0 list_0) (x_3 list_0) (x_4 list_0))
	(=>	(and (= x_3 (cons_0 z_0 x_4))
			(x_0 x_4 xs_0 y_0)
			(= x_1 (cons_0 z_0 xs_0)))
		(x_0 x_3 x_1 y_0))))
(assert (forall ((x_1 list_0) (y_0 list_0) (x_5 list_0))
	(=>	(and (= x_5 y_0)
			(= x_1 nil_0))
		(x_0 x_5 x_1 y_0))))
(declare-fun lin_0 (list_0 E_0) Bool)
(assert (forall ((x_2 E_0) (x_6 list_0))
	(=>	(and (= x_6 (cons_0 Y_0 nil_0))
			(= x_2 EY_0))
		(lin_0 x_6 x_2))))
(assert (forall ((x_2 E_0) (x_7 list_0))
	(=>	(and (= x_7 (cons_0 X_0 nil_0))
			(= x_2 EX_0))
		(lin_0 x_7 x_2))))
(assert (forall ((x_2 E_0) (a_0 E_0) (b_0 E_0) (x_8 list_0) (x_9 list_0) (x_10 list_0) (x_11 list_0) (x_12 list_0) (x_13 list_0) (x_14 list_0))
	(=>	(and (= x_8 x_14)
			(lin_0 x_9 a_0)
			(lin_0 x_10 b_0)
			(x_0 x_11 x_10 (cons_0 D_0 nil_0))
			(x_0 x_12 (cons_0 Pl_0 nil_0) x_11)
			(x_0 x_13 x_9 x_12)
			(x_0 x_14 (cons_0 C_0 nil_0) x_13)
			(= x_2 (Plus_0 a_0 b_0)))
		(lin_0 x_8 x_2))))
(assert (forall ((u_0 E_0) (v_0 E_0) (x_15 list_0) (x_16 list_0))
	(=>	(and (diseqE_0 u_0 v_0)
			(= x_15 x_16)
			(lin_0 x_15 u_0)
			(lin_0 x_16 v_0))
		false)))
(check-sat)
