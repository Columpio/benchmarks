(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_21 Nat_0) (x_20 Nat_0))
	(=> (= x_21 (S_0 x_20))
	    (unS_1 x_20 x_21))))
(assert (isZ_0 Z_0))
(assert (forall ((x_22 Nat_0))
	(isS_0 (S_0 x_22))))
(assert (forall ((x_23 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_23))))
(assert (forall ((x_24 Nat_0))
	(diseqNat_0 (S_0 x_24) Z_0)))
(assert (forall ((x_25 Nat_0) (x_26 Nat_0))
	(=> (diseqNat_0 x_25 x_26)
	    (diseqNat_0 (S_0 x_25) (S_0 x_26)))))
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
(assert (forall ((x_18 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_18 y_1)
	    (add_0 (S_0 r_0) (S_0 x_18) y_1))))
(assert (forall ((y_1 Nat_0))
	(minus_0 Z_0 Z_0 y_1)))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_18 y_1)
	    (minus_0 (S_0 r_0) (S_0 x_18) y_1))))
(assert (forall ((y_1 Nat_0))
	(le_0 Z_0 y_1)))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (le_0 x_18 y_1)
	    (le_0 (S_0 x_18) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(ge_0 y_1 Z_0)))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (ge_0 x_18 y_1)
	    (ge_0 (S_0 x_18) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(lt_0 Z_0 (S_0 y_1))))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_18 y_1)
	    (lt_0 (S_0 x_18) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(gt_0 (S_0 y_1) Z_0)))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (gt_0 x_18 y_1)
	    (gt_0 (S_0 x_18) (S_0 y_1)))))
(assert (forall ((y_1 Nat_0))
	(mult_0 Z_0 Z_0 y_1)))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_18 y_1)
			(add_0 z_1 r_0 y_1))
		(mult_0 z_1 (S_0 x_18) y_1))))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_18 y_1)
	    (div_0 Z_0 x_18 y_1))))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_18 y_1)
			(minus_0 z_1 x_18 y_1)
			(div_0 r_0 z_1 y_1))
		(div_0 (S_0 r_0) x_18 y_1))))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0))
	(=> (lt_0 x_18 y_1)
	    (mod_0 x_18 x_18 y_1))))
(assert (forall ((x_18 Nat_0) (y_1 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_18 y_1)
			(minus_0 z_1 x_18 y_1)
			(mod_0 r_0 z_1 y_1))
		(mod_0 r_0 x_18 y_1))))
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
(assert (forall ((x_35 list_0) (x_33 Tok_0) (x_34 list_0))
	(=> (= x_35 (cons_0 x_33 x_34))
	    (head_1 x_33 x_35))))
(assert (forall ((x_35 list_0) (x_33 Tok_0) (x_34 list_0))
	(=> (= x_35 (cons_0 x_33 x_34))
	    (tail_1 x_34 x_35))))
(assert (isnil_0 nil_0))
(assert (forall ((x_36 Tok_0) (x_37 list_0))
	(iscons_0 (cons_0 x_36 x_37))))
(assert (forall ((x_38 Tok_0) (x_39 list_0))
	(diseqlist_0 nil_0 (cons_0 x_38 x_39))))
(assert (forall ((x_40 Tok_0) (x_41 list_0))
	(diseqlist_0 (cons_0 x_40 x_41) nil_0)))
(assert (forall ((x_42 Tok_0) (x_43 list_0) (x_44 Tok_0) (x_45 list_0))
	(=> (diseqTok_0 x_42 x_44)
	    (diseqlist_0 (cons_0 x_42 x_43) (cons_0 x_44 x_45)))))
(assert (forall ((x_42 Tok_0) (x_43 list_0) (x_44 Tok_0) (x_45 list_0))
	(=> (diseqlist_0 x_43 x_45)
	    (diseqlist_0 (cons_0 x_42 x_43) (cons_0 x_44 x_45)))))
(declare-datatypes ((T_0 0)) (((TX_0 ) (TY_0 ))))
(declare-fun diseqT_0 (T_0 T_0) Bool)
(declare-fun isTX_0 (T_0) Bool)
(declare-fun isTY_0 (T_0) Bool)
(assert (isTX_0 TX_0))
(assert (isTY_0 TY_0))
(assert (diseqT_0 TX_0 TY_0))
(assert (diseqT_0 TY_0 TX_0))
(declare-datatypes ((E_0 0)) (((Plus_0 (projPlus_0 T_0) (projPlus_1 E_0)) (Term_0 (projTerm_0 T_0)))))
(declare-fun diseqE_0 (E_0 E_0) Bool)
(declare-fun projPlus_2 (T_0 E_0) Bool)
(declare-fun projPlus_3 (E_0 E_0) Bool)
(declare-fun projTerm_1 (T_0 E_0) Bool)
(declare-fun isPlus_0 (E_0) Bool)
(declare-fun isTerm_0 (E_0) Bool)
(assert (forall ((x_50 E_0) (x_48 T_0) (x_49 E_0))
	(=> (= x_50 (Plus_0 x_48 x_49))
	    (projPlus_2 x_48 x_50))))
(assert (forall ((x_50 E_0) (x_48 T_0) (x_49 E_0))
	(=> (= x_50 (Plus_0 x_48 x_49))
	    (projPlus_3 x_49 x_50))))
(assert (forall ((x_52 E_0) (x_51 T_0))
	(=> (= x_52 (Term_0 x_51))
	    (projTerm_1 x_51 x_52))))
(assert (forall ((x_53 T_0) (x_54 E_0))
	(isPlus_0 (Plus_0 x_53 x_54))))
(assert (forall ((x_55 T_0))
	(isTerm_0 (Term_0 x_55))))
(assert (forall ((x_56 T_0) (x_57 E_0) (x_58 T_0))
	(diseqE_0 (Plus_0 x_56 x_57) (Term_0 x_58))))
(assert (forall ((x_59 T_0) (x_60 T_0) (x_61 E_0))
	(diseqE_0 (Term_0 x_59) (Plus_0 x_60 x_61))))
(assert (forall ((x_62 T_0) (x_63 E_0) (x_64 T_0) (x_65 E_0))
	(=> (diseqT_0 x_62 x_64)
	    (diseqE_0 (Plus_0 x_62 x_63) (Plus_0 x_64 x_65)))))
(assert (forall ((x_62 T_0) (x_63 E_0) (x_64 T_0) (x_65 E_0))
	(=> (diseqE_0 x_63 x_65)
	    (diseqE_0 (Plus_0 x_62 x_63) (Plus_0 x_64 x_65)))))
(assert (forall ((x_66 T_0) (x_67 T_0))
	(=> (diseqT_0 x_66 x_67)
	    (diseqE_0 (Term_0 x_66) (Term_0 x_67)))))
(declare-fun linTerm_0 (list_0 T_0) Bool)
(assert (forall ((x_0 T_0) (x_4 list_0))
	(=>	(and (= x_4 (cons_0 Y_0 nil_0))
			(= x_0 TY_0))
		(linTerm_0 x_4 x_0))))
(assert (forall ((x_0 T_0) (x_5 list_0))
	(=>	(and (= x_5 (cons_0 X_0 nil_0))
			(= x_0 TX_0))
		(linTerm_0 x_5 x_0))))
(declare-fun x_1 (list_0 list_0 list_0) Bool)
(assert (forall ((x_2 list_0) (y_0 list_0) (z_0 Tok_0) (xs_0 list_0) (x_6 list_0) (x_7 list_0))
	(=>	(and (= x_6 (cons_0 z_0 x_7))
			(x_1 x_7 xs_0 y_0)
			(= x_2 (cons_0 z_0 xs_0)))
		(x_1 x_6 x_2 y_0))))
(assert (forall ((x_2 list_0) (y_0 list_0) (x_8 list_0))
	(=>	(and (= x_8 y_0)
			(= x_2 nil_0))
		(x_1 x_8 x_2 y_0))))
(declare-fun lin_0 (list_0 E_0) Bool)
(assert (forall ((x_3 E_0) (t_0 T_0) (x_9 list_0) (x_10 list_0))
	(=>	(and (= x_9 x_10)
			(linTerm_0 x_10 t_0)
			(= x_3 (Term_0 t_0)))
		(lin_0 x_9 x_3))))
(assert (forall ((x_3 E_0) (a_0 T_0) (b_0 E_0) (x_11 list_0) (x_12 list_0) (x_13 list_0) (x_14 list_0) (x_15 list_0))
	(=>	(and (= x_11 x_15)
			(linTerm_0 x_12 a_0)
			(lin_0 x_13 b_0)
			(x_1 x_14 (cons_0 Pl_0 nil_0) x_13)
			(x_1 x_15 x_12 x_14)
			(= x_3 (Plus_0 a_0 b_0)))
		(lin_0 x_11 x_3))))
(assert (forall ((u_0 E_0) (v_0 E_0) (x_16 list_0) (x_17 list_0))
	(=>	(and (diseqE_0 u_0 v_0)
			(= x_16 x_17)
			(lin_0 x_16 u_0)
			(lin_0 x_17 v_0))
		false)))
(check-sat)