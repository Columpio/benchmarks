(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_56 Nat_0) (x_55 Nat_0))
	(=> (= x_56 (S_0 x_55))
	    (unS_1 x_55 x_56))))
(assert (isZ_0 Z_0))
(assert (forall ((x_57 Nat_0))
	(isS_0 (S_0 x_57))))
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (S_0 x_59) Z_0)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61)
	    (diseqNat_0 (S_0 x_60) (S_0 x_61)))))
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
(assert (forall ((x_53 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_53 y_2)
	    (add_0 (S_0 r_0) (S_0 x_53) y_2))))
(assert (forall ((y_2 Nat_0))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_53 y_2)
	    (minus_0 (S_0 r_0) (S_0 x_53) y_2))))
(assert (forall ((y_2 Nat_0))
	(le_0 Z_0 y_2)))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (le_0 x_53 y_2)
	    (le_0 (S_0 x_53) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (ge_0 x_53 y_2)
	    (ge_0 (S_0 x_53) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_53 y_2)
	    (lt_0 (S_0 x_53) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (gt_0 x_53 y_2)
	    (gt_0 (S_0 x_53) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (mult_0 r_0 x_53 y_2)
			(add_0 z_0 r_0 y_2))
		(mult_0 z_0 (S_0 x_53) y_2))))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_53 y_2)
	    (div_0 Z_0 x_53 y_2))))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_53 y_2)
			(minus_0 z_0 x_53 y_2)
			(div_0 r_0 z_0 y_2))
		(div_0 (S_0 r_0) x_53 y_2))))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_53 y_2)
	    (mod_0 x_53 x_53 y_2))))
(assert (forall ((x_53 Nat_0) (y_2 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_53 y_2)
			(minus_0 z_0 x_53 y_2)
			(mod_0 r_0 z_0 y_2))
		(mod_0 r_0 x_53 y_2))))
(declare-datatypes ((Token_0 0)) (((A_0 ) (B_0 ) (C_0 ) (D_0 ) (ESC_0 ) (P_0 ) (Q_0 ) (R_0 ))))
(declare-fun diseqToken_0 (Token_0 Token_0) Bool)
(declare-fun isA_0 (Token_0) Bool)
(declare-fun isB_0 (Token_0) Bool)
(declare-fun isC_0 (Token_0) Bool)
(declare-fun isD_0 (Token_0) Bool)
(declare-fun isESC_0 (Token_0) Bool)
(declare-fun isP_0 (Token_0) Bool)
(declare-fun isQ_0 (Token_0) Bool)
(declare-fun isR_0 (Token_0) Bool)
(assert (isA_0 A_0))
(assert (isB_0 B_0))
(assert (isC_0 C_0))
(assert (isD_0 D_0))
(assert (isESC_0 ESC_0))
(assert (isP_0 P_0))
(assert (isQ_0 Q_0))
(assert (isR_0 R_0))
(assert (diseqToken_0 A_0 B_0))
(assert (diseqToken_0 A_0 C_0))
(assert (diseqToken_0 A_0 D_0))
(assert (diseqToken_0 A_0 ESC_0))
(assert (diseqToken_0 A_0 P_0))
(assert (diseqToken_0 A_0 Q_0))
(assert (diseqToken_0 A_0 R_0))
(assert (diseqToken_0 B_0 A_0))
(assert (diseqToken_0 C_0 A_0))
(assert (diseqToken_0 D_0 A_0))
(assert (diseqToken_0 ESC_0 A_0))
(assert (diseqToken_0 P_0 A_0))
(assert (diseqToken_0 Q_0 A_0))
(assert (diseqToken_0 R_0 A_0))
(assert (diseqToken_0 B_0 C_0))
(assert (diseqToken_0 B_0 D_0))
(assert (diseqToken_0 B_0 ESC_0))
(assert (diseqToken_0 B_0 P_0))
(assert (diseqToken_0 B_0 Q_0))
(assert (diseqToken_0 B_0 R_0))
(assert (diseqToken_0 C_0 B_0))
(assert (diseqToken_0 D_0 B_0))
(assert (diseqToken_0 ESC_0 B_0))
(assert (diseqToken_0 P_0 B_0))
(assert (diseqToken_0 Q_0 B_0))
(assert (diseqToken_0 R_0 B_0))
(assert (diseqToken_0 C_0 D_0))
(assert (diseqToken_0 C_0 ESC_0))
(assert (diseqToken_0 C_0 P_0))
(assert (diseqToken_0 C_0 Q_0))
(assert (diseqToken_0 C_0 R_0))
(assert (diseqToken_0 D_0 C_0))
(assert (diseqToken_0 ESC_0 C_0))
(assert (diseqToken_0 P_0 C_0))
(assert (diseqToken_0 Q_0 C_0))
(assert (diseqToken_0 R_0 C_0))
(assert (diseqToken_0 D_0 ESC_0))
(assert (diseqToken_0 D_0 P_0))
(assert (diseqToken_0 D_0 Q_0))
(assert (diseqToken_0 D_0 R_0))
(assert (diseqToken_0 ESC_0 D_0))
(assert (diseqToken_0 P_0 D_0))
(assert (diseqToken_0 Q_0 D_0))
(assert (diseqToken_0 R_0 D_0))
(assert (diseqToken_0 ESC_0 P_0))
(assert (diseqToken_0 ESC_0 Q_0))
(assert (diseqToken_0 ESC_0 R_0))
(assert (diseqToken_0 P_0 ESC_0))
(assert (diseqToken_0 Q_0 ESC_0))
(assert (diseqToken_0 R_0 ESC_0))
(assert (diseqToken_0 P_0 Q_0))
(assert (diseqToken_0 P_0 R_0))
(assert (diseqToken_0 Q_0 P_0))
(assert (diseqToken_0 R_0 P_0))
(assert (diseqToken_0 Q_0 R_0))
(assert (diseqToken_0 R_0 Q_0))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Token_0) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_1 (Token_0 list_0) Bool)
(declare-fun tail_1 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_73 list_0) (x_71 Token_0) (x_72 list_0))
	(=> (= x_73 (cons_0 x_71 x_72))
	    (head_1 x_71 x_73))))
(assert (forall ((x_73 list_0) (x_71 Token_0) (x_72 list_0))
	(=> (= x_73 (cons_0 x_71 x_72))
	    (tail_1 x_72 x_73))))
(assert (isnil_0 nil_0))
(assert (forall ((x_74 Token_0) (x_75 list_0))
	(iscons_0 (cons_0 x_74 x_75))))
(assert (forall ((x_76 Token_0) (x_77 list_0))
	(diseqlist_0 nil_0 (cons_0 x_76 x_77))))
(assert (forall ((x_78 Token_0) (x_79 list_0))
	(diseqlist_0 (cons_0 x_78 x_79) nil_0)))
(assert (forall ((x_80 Token_0) (x_81 list_0) (x_82 Token_0) (x_83 list_0))
	(=> (diseqToken_0 x_80 x_82)
	    (diseqlist_0 (cons_0 x_80 x_81) (cons_0 x_82 x_83)))))
(assert (forall ((x_80 Token_0) (x_81 list_0) (x_82 Token_0) (x_83 list_0))
	(=> (diseqlist_0 x_81 x_83)
	    (diseqlist_0 (cons_0 x_80 x_81) (cons_0 x_82 x_83)))))
(declare-fun isSpecial_0 (Bool Token_0) Bool)
(assert (forall ((x_0 Token_0) (x_8 Bool))
	(=>	(and (= x_8 true)
			(= x_0 R_0))
		(isSpecial_0 x_8 x_0))))
(assert (forall ((x_0 Token_0) (x_9 Bool))
	(=>	(and (= x_9 true)
			(= x_0 Q_0))
		(isSpecial_0 x_9 x_0))))
(assert (forall ((x_0 Token_0) (x_10 Bool))
	(=>	(and (= x_10 true)
			(= x_0 P_0))
		(isSpecial_0 x_10 x_0))))
(assert (forall ((x_0 Token_0) (x_11 Bool))
	(=>	(and (= x_11 true)
			(= x_0 ESC_0))
		(isSpecial_0 x_11 x_0))))
(assert (forall ((x_0 Token_0) (x_1 Token_0) (x_12 Bool))
	(=>	(and (= x_12 false)
			(= x_0 A_0))
		(isSpecial_0 x_12 x_0))))
(assert (forall ((x_0 Token_0) (x_1 Token_0) (x_13 Bool))
	(=>	(and (= x_13 false)
			(= x_0 B_0))
		(isSpecial_0 x_13 x_0))))
(assert (forall ((x_0 Token_0) (x_1 Token_0) (x_14 Bool))
	(=>	(and (= x_14 false)
			(= x_0 C_0))
		(isSpecial_0 x_14 x_0))))
(assert (forall ((x_0 Token_0) (x_1 Token_0) (x_15 Bool))
	(=>	(and (= x_15 false)
			(= x_0 D_0))
		(isSpecial_0 x_15 x_0))))
(declare-fun ok_0 (Bool Token_0) Bool)
(assert (forall ((x_2 Token_0) (x_16 Bool))
	(=>	(and (= x_16 true)
			(= x_2 ESC_0))
		(ok_0 x_16 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_17 Bool) (x_18 Bool))
	(=>	(and (= x_17 (not x_18))
			(isSpecial_0 x_18 x_2)
			(= x_2 A_0))
		(ok_0 x_17 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_19 Bool) (x_20 Bool))
	(=>	(and (= x_19 (not x_20))
			(isSpecial_0 x_20 x_2)
			(= x_2 B_0))
		(ok_0 x_19 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_21 Bool) (x_22 Bool))
	(=>	(and (= x_21 (not x_22))
			(isSpecial_0 x_22 x_2)
			(= x_2 C_0))
		(ok_0 x_21 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_23 Bool) (x_24 Bool))
	(=>	(and (= x_23 (not x_24))
			(isSpecial_0 x_24 x_2)
			(= x_2 D_0))
		(ok_0 x_23 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_25 Bool) (x_26 Bool))
	(=>	(and (= x_25 (not x_26))
			(isSpecial_0 x_26 x_2)
			(= x_2 P_0))
		(ok_0 x_25 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_27 Bool) (x_28 Bool))
	(=>	(and (= x_27 (not x_28))
			(isSpecial_0 x_28 x_2)
			(= x_2 Q_0))
		(ok_0 x_27 x_2))))
(assert (forall ((x_2 Token_0) (x_3 Token_0) (x_29 Bool) (x_30 Bool))
	(=>	(and (= x_29 (not x_30))
			(isSpecial_0 x_30 x_2)
			(= x_2 R_0))
		(ok_0 x_29 x_2))))
(declare-fun formula_0 (Bool list_0) Bool)
(assert (forall ((x_4 list_0) (y_0 Token_0) (xs_0 list_0) (x_31 Bool) (x_32 Bool) (x_33 Bool))
	(=>	(and (= x_31 (and x_32 x_33))
			(ok_0 x_32 y_0)
			(formula_0 x_33 xs_0)
			(= x_4 (cons_0 y_0 xs_0)))
		(formula_0 x_31 x_4))))
(assert (forall ((x_4 list_0) (x_34 Bool))
	(=>	(and (= x_34 true)
			(= x_4 nil_0))
		(formula_0 x_34 x_4))))
(declare-fun code_0 (Token_0 Token_0) Bool)
(assert (forall ((x_5 Token_0) (x_35 Token_0))
	(=>	(and (= x_35 C_0)
			(= x_5 R_0))
		(code_0 x_35 x_5))))
(assert (forall ((x_5 Token_0) (x_36 Token_0))
	(=>	(and (= x_36 B_0)
			(= x_5 Q_0))
		(code_0 x_36 x_5))))
(assert (forall ((x_5 Token_0) (x_37 Token_0))
	(=>	(and (= x_37 A_0)
			(= x_5 P_0))
		(code_0 x_37 x_5))))
(assert (forall ((x_5 Token_0) (x_38 Token_0))
	(=>	(and (= x_38 ESC_0)
			(= x_5 ESC_0))
		(code_0 x_38 x_5))))
(assert (forall ((x_5 Token_0) (x_6 Token_0) (x_39 Token_0))
	(=>	(and (= x_39 x_5)
			(= x_5 A_0))
		(code_0 x_39 x_5))))
(assert (forall ((x_5 Token_0) (x_6 Token_0) (x_40 Token_0))
	(=>	(and (= x_40 x_5)
			(= x_5 B_0))
		(code_0 x_40 x_5))))
(assert (forall ((x_5 Token_0) (x_6 Token_0) (x_41 Token_0))
	(=>	(and (= x_41 x_5)
			(= x_5 C_0))
		(code_0 x_41 x_5))))
(assert (forall ((x_5 Token_0) (x_6 Token_0) (x_42 Token_0))
	(=>	(and (= x_42 x_5)
			(= x_5 D_0))
		(code_0 x_42 x_5))))
(declare-fun escape_0 (list_0 list_0) Bool)
(assert (forall ((x_7 list_0) (y_1 Token_0) (xs_1 list_0) (x_44 list_0) (x_45 Token_0) (x_46 list_0) (x_43 Bool))
	(=>	(and (= x_44 (cons_0 ESC_0 (cons_0 x_45 x_46)))
			(code_0 x_45 y_1)
			(escape_0 x_46 xs_1)
			(= x_7 (cons_0 y_1 xs_1))
			(= x_43 true)
			(isSpecial_0 x_43 y_1))
		(escape_0 x_44 x_7))))
(assert (forall ((x_7 list_0) (y_1 Token_0) (xs_1 list_0) (x_48 list_0) (x_49 list_0) (x_47 Bool))
	(=>	(and (= x_48 (cons_0 y_1 x_49))
			(escape_0 x_49 xs_1)
			(= x_7 (cons_0 y_1 xs_1))
			(= x_47 false)
			(isSpecial_0 x_47 y_1))
		(escape_0 x_48 x_7))))
(assert (forall ((x_7 list_0) (x_50 list_0))
	(=>	(and (= x_50 nil_0)
			(= x_7 nil_0))
		(escape_0 x_50 x_7))))
(assert (forall ((xs_2 list_0) (x_51 list_0) (x_52 Bool))
	(=>	(and (= x_52 false)
			(escape_0 x_51 xs_2)
			(formula_0 x_52 x_51))
		false)))
(check-sat)
