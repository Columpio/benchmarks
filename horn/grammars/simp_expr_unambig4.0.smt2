(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_25 Nat_0) (x_24 Nat_0))
	(=> (= x_25 (S_0 x_24))
	    (unS_1 x_24 x_25))))
(assert (isZ_0 Z_0))
(assert (forall ((x_26 Nat_0))
	(isS_0 (S_0 x_26))))
(assert (forall ((x_27 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_27))))
(assert (forall ((x_28 Nat_0))
	(diseqNat_0 (S_0 x_28) Z_0)))
(assert (forall ((x_29 Nat_0) (x_30 Nat_0))
	(=> (diseqNat_0 x_29 x_30)
	    (diseqNat_0 (S_0 x_29) (S_0 x_30)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_2 Nat_0))
	(add_0 y_2 Z_0 y_2)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_22 y_2)
	    (add_0 (S_0 r_0) (S_0 x_22) y_2))))
(assert (forall ((y_2 Nat_0))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_22 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_22) y_2))))
(assert (forall ((y_2 Nat_0))
	(le_0 Z_0 y_2)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (le_0 x_22 y_2)
	    (le_0 (S_0 x_22) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (ge_0 x_22 y_2)
	    (ge_0 (S_0 x_22) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_22 y_2)
	    (lt_0 (S_0 x_22) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (gt_0 x_22 y_2)
	    (gt_0 (S_0 x_22) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (mult_0 r_0 x_22 y_2)
			(add_0 z_2 r_0 y_2))
		(mult_0 z_2 (S_0 x_22) y_2))))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_22 y_2)
	    (div_0 Z_0 x_22 y_2))))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_22 y_2)
			(minus_0 z_2 x_22 y_2)
			(div_0 r_0 z_2 y_2))
		(div_0 (S_0 r_0) x_22 y_2))))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_22 y_2)
	    (mod_0 x_22 x_22 y_2))))
(assert (forall ((x_22 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_2 Nat_0))
	(=>	(and (ge_0 x_22 y_2)
			(minus_0 z_2 x_22 y_2)
			(mod_0 r_0 z_2 y_2))
		(mod_0 r_0 x_22 y_2))))
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
(assert (forall ((x_39 list_0) (x_37 Tok_0) (x_38 list_0))
	(=> (= x_39 (cons_0 x_37 x_38))
	    (head_1 x_37 x_39))))
(assert (forall ((x_39 list_0) (x_37 Tok_0) (x_38 list_0))
	(=> (= x_39 (cons_0 x_37 x_38))
	    (tail_1 x_38 x_39))))
(assert (isnil_0 nil_0))
(assert (forall ((x_40 Tok_0) (x_41 list_0))
	(iscons_0 (cons_0 x_40 x_41))))
(assert (forall ((x_42 Tok_0) (x_43 list_0))
	(diseqlist_0 nil_0 (cons_0 x_42 x_43))))
(assert (forall ((x_44 Tok_0) (x_45 list_0))
	(diseqlist_0 (cons_0 x_44 x_45) nil_0)))
(assert (forall ((x_46 Tok_0) (x_47 list_0) (x_48 Tok_0) (x_49 list_0))
	(=> (diseqTok_0 x_46 x_48)
	    (diseqlist_0 (cons_0 x_46 x_47) (cons_0 x_48 x_49)))))
(assert (forall ((x_46 Tok_0) (x_47 list_0) (x_48 Tok_0) (x_49 list_0))
	(=> (diseqlist_0 x_47 x_49)
	    (diseqlist_0 (cons_0 x_46 x_47) (cons_0 x_48 x_49)))))
(declare-datatypes ((E_0 0)) (((Plus_0 (projPlus_0 E_0) (projPlus_1 E_0)) (EX_0 ) (EY_0 ))))
(declare-fun diseqE_0 (E_0 E_0) Bool)
(declare-fun projPlus_2 (E_0 E_0) Bool)
(declare-fun projPlus_3 (E_0 E_0) Bool)
(declare-fun isPlus_0 (E_0) Bool)
(declare-fun isEX_0 (E_0) Bool)
(declare-fun isEY_0 (E_0) Bool)
(assert (forall ((x_52 E_0) (x_50 E_0) (x_51 E_0))
	(=> (= x_52 (Plus_0 x_50 x_51))
	    (projPlus_2 x_50 x_52))))
(assert (forall ((x_52 E_0) (x_50 E_0) (x_51 E_0))
	(=> (= x_52 (Plus_0 x_50 x_51))
	    (projPlus_3 x_51 x_52))))
(assert (forall ((x_55 E_0) (x_56 E_0))
	(isPlus_0 (Plus_0 x_55 x_56))))
(assert (isEX_0 EX_0))
(assert (isEY_0 EY_0))
(assert (forall ((x_57 E_0) (x_58 E_0))
	(diseqE_0 (Plus_0 x_57 x_58) EX_0)))
(assert (forall ((x_59 E_0) (x_60 E_0))
	(diseqE_0 (Plus_0 x_59 x_60) EY_0)))
(assert (forall ((x_61 E_0) (x_62 E_0))
	(diseqE_0 EX_0 (Plus_0 x_61 x_62))))
(assert (forall ((x_63 E_0) (x_64 E_0))
	(diseqE_0 EY_0 (Plus_0 x_63 x_64))))
(assert (diseqE_0 EX_0 EY_0))
(assert (diseqE_0 EY_0 EX_0))
(assert (forall ((x_65 E_0) (x_66 E_0) (x_67 E_0) (x_68 E_0))
	(=> (diseqE_0 x_65 x_67)
	    (diseqE_0 (Plus_0 x_65 x_66) (Plus_0 x_67 x_68)))))
(assert (forall ((x_65 E_0) (x_66 E_0) (x_67 E_0) (x_68 E_0))
	(=> (diseqE_0 x_66 x_68)
	    (diseqE_0 (Plus_0 x_65 x_66) (Plus_0 x_67 x_68)))))
(declare-fun x_0 (list_0 list_0 list_0) Bool)
(assert (forall ((x_1 list_0) (y_0 list_0) (z_0 Tok_0) (xs_0 list_0) (x_4 list_0) (x_5 list_0))
	(=>	(and (= x_4 (cons_0 z_0 x_5))
			(x_0 x_5 xs_0 y_0)
			(= x_1 (cons_0 z_0 xs_0)))
		(x_0 x_4 x_1 y_0))))
(assert (forall ((x_1 list_0) (y_0 list_0) (x_6 list_0))
	(=>	(and (= x_6 y_0)
			(= x_1 nil_0))
		(x_0 x_6 x_1 y_0))))
(declare-fun linTerm_0 (list_0 E_0) Bool)
(declare-fun lin_0 (list_0 E_0) Bool)
(assert (forall ((x_2 E_0) (x_7 list_0))
	(=>	(and (= x_7 (cons_0 Y_0 nil_0))
			(= x_2 EY_0))
		(linTerm_0 x_7 x_2))))
(assert (forall ((x_2 E_0) (x_8 list_0))
	(=>	(and (= x_8 (cons_0 X_0 nil_0))
			(= x_2 EX_0))
		(linTerm_0 x_8 x_2))))
(assert (forall ((x_2 E_0) (y_1 E_0) (z_1 E_0) (x_9 list_0) (x_10 list_0) (x_11 list_0) (x_12 list_0))
	(=>	(and (= x_9 x_12)
			(lin_0 x_10 (Plus_0 y_1 z_1))
			(x_0 x_11 x_10 (cons_0 D_0 nil_0))
			(x_0 x_12 (cons_0 C_0 nil_0) x_11)
			(= x_2 (Plus_0 y_1 z_1)))
		(linTerm_0 x_9 x_2))))
(assert (forall ((x_3 E_0) (x_13 list_0))
	(=>	(and (= x_13 (cons_0 Y_0 nil_0))
			(= x_3 EY_0))
		(lin_0 x_13 x_3))))
(assert (forall ((x_3 E_0) (x_14 list_0))
	(=>	(and (= x_14 (cons_0 X_0 nil_0))
			(= x_3 EX_0))
		(lin_0 x_14 x_3))))
(assert (forall ((x_3 E_0) (a_0 E_0) (b_0 E_0) (x_15 list_0) (x_16 list_0) (x_17 list_0) (x_18 list_0) (x_19 list_0))
	(=>	(and (= x_15 x_19)
			(linTerm_0 x_16 a_0)
			(linTerm_0 x_17 b_0)
			(x_0 x_18 (cons_0 Pl_0 nil_0) x_17)
			(x_0 x_19 x_16 x_18)
			(= x_3 (Plus_0 a_0 b_0)))
		(lin_0 x_15 x_3))))
(assert (forall ((u_0 E_0) (v_0 E_0) (x_20 list_0) (x_21 list_0))
	(=>	(and (diseqE_0 u_0 v_0)
			(= x_20 x_21)
			(lin_0 x_20 u_0)
			(lin_0 x_21 v_0))
		false)))
(check-sat)
