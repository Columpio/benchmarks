(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_197 Nat_0) (x_196 Nat_0))
	(=> (= x_197 (S_0 x_196))
	    (unS_1 x_196 x_197))))
(assert (isZ_0 Z_0))
(assert (forall ((x_198 Nat_0))
	(isS_0 (S_0 x_198))))
(assert (forall ((x_199 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_199))))
(assert (forall ((x_200 Nat_0))
	(diseqNat_0 (S_0 x_200) Z_0)))
(assert (forall ((x_201 Nat_0) (x_202 Nat_0))
	(=> (diseqNat_0 x_201 x_202)
	    (diseqNat_0 (S_0 x_201) (S_0 x_202)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_20 Nat_0))
	(add_0 y_20 Z_0 y_20)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_143 y_20)
	    (add_0 (S_0 r_0) (S_0 x_143) y_20))))
(assert (forall ((y_20 Nat_0))
	(minus_0 Z_0 Z_0 y_20)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_143 y_20)
	    (minus_0 (S_0 r_0) (S_0 x_143) y_20))))
(assert (forall ((y_20 Nat_0))
	(le_0 Z_0 y_20)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (le_0 x_143 y_20)
	    (le_0 (S_0 x_143) (S_0 y_20)))))
(assert (forall ((y_20 Nat_0))
	(ge_0 y_20 Z_0)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (ge_0 x_143 y_20)
	    (ge_0 (S_0 x_143) (S_0 y_20)))))
(assert (forall ((y_20 Nat_0))
	(lt_0 Z_0 (S_0 y_20))))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (lt_0 x_143 y_20)
	    (lt_0 (S_0 x_143) (S_0 y_20)))))
(assert (forall ((y_20 Nat_0))
	(gt_0 (S_0 y_20) Z_0)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (gt_0 x_143 y_20)
	    (gt_0 (S_0 x_143) (S_0 y_20)))))
(assert (forall ((y_20 Nat_0))
	(mult_0 Z_0 Z_0 y_20)))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0) (r_0 Nat_0) (z_14 Nat_0))
	(=>	(and (mult_0 r_0 x_143 y_20)
			(add_0 z_14 r_0 y_20))
		(mult_0 z_14 (S_0 x_143) y_20))))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (lt_0 x_143 y_20)
	    (div_0 Z_0 x_143 y_20))))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0) (r_0 Nat_0) (z_14 Nat_0))
	(=>	(and (ge_0 x_143 y_20)
			(minus_0 z_14 x_143 y_20)
			(div_0 r_0 z_14 y_20))
		(div_0 (S_0 r_0) x_143 y_20))))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0))
	(=> (lt_0 x_143 y_20)
	    (mod_0 x_143 x_143 y_20))))
(assert (forall ((x_143 Nat_0) (y_20 Nat_0) (r_0 Nat_0) (z_14 Nat_0))
	(=>	(and (ge_0 x_143 y_20)
			(minus_0 z_14 x_143 y_20)
			(mod_0 r_0 z_14 y_20))
		(mod_0 r_0 x_143 y_20))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_2 (Nat_0 pair_0) Bool)
(declare-fun projpair_3 (Nat_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_205 pair_0) (x_203 Nat_0) (x_204 Nat_0))
	(=> (= x_205 (pair_1 x_203 x_204))
	    (projpair_2 x_203 x_205))))
(assert (forall ((x_205 pair_0) (x_203 Nat_0) (x_204 Nat_0))
	(=> (= x_205 (pair_1 x_203 x_204))
	    (projpair_3 x_204 x_205))))
(assert (forall ((x_206 Nat_0) (x_207 Nat_0))
	(ispair_0 (pair_1 x_206 x_207))))
(assert (forall ((x_208 Nat_0) (x_209 Nat_0) (x_210 Nat_0) (x_211 Nat_0))
	(=> (diseqNat_0 x_208 x_210)
	    (diseqpair_0 (pair_1 x_208 x_209) (pair_1 x_210 x_211)))))
(assert (forall ((x_208 Nat_0) (x_209 Nat_0) (x_210 Nat_0) (x_211 Nat_0))
	(=> (diseqNat_0 x_209 x_211)
	    (diseqpair_0 (pair_1 x_208 x_209) (pair_1 x_210 x_211)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_3 (Bool list_0) Bool)
(declare-fun tail_3 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_215 list_0) (x_213 Bool) (x_214 list_0))
	(=> (= x_215 (cons_0 x_213 x_214))
	    (head_3 x_213 x_215))))
(assert (forall ((x_215 list_0) (x_213 Bool) (x_214 list_0))
	(=> (= x_215 (cons_0 x_213 x_214))
	    (tail_3 x_214 x_215))))
(assert (isnil_0 nil_0))
(assert (forall ((x_216 Bool) (x_217 list_0))
	(iscons_0 (cons_0 x_216 x_217))))
(assert (forall ((x_218 Bool) (x_219 list_0))
	(diseqlist_0 nil_0 (cons_0 x_218 x_219))))
(assert (forall ((x_220 Bool) (x_221 list_0))
	(diseqlist_0 (cons_0 x_220 x_221) nil_0)))
(assert (forall ((x_222 Bool) (x_223 list_0) (x_224 Bool) (x_225 list_0))
	(=> (not (= x_222 x_224))
	    (diseqlist_0 (cons_0 x_222 x_223) (cons_0 x_224 x_225)))))
(assert (forall ((x_222 Bool) (x_223 list_0) (x_224 Bool) (x_225 list_0))
	(=> (diseqlist_0 x_223 x_225)
	    (diseqlist_0 (cons_0 x_222 x_223) (cons_0 x_224 x_225)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Nat_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_4 (Nat_0 list_1) Bool)
(declare-fun tail_4 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_229 list_1) (x_227 Nat_0) (x_228 list_1))
	(=> (= x_229 (cons_1 x_227 x_228))
	    (head_4 x_227 x_229))))
(assert (forall ((x_229 list_1) (x_227 Nat_0) (x_228 list_1))
	(=> (= x_229 (cons_1 x_227 x_228))
	    (tail_4 x_228 x_229))))
(assert (isnil_1 nil_1))
(assert (forall ((x_230 Nat_0) (x_231 list_1))
	(iscons_1 (cons_1 x_230 x_231))))
(assert (forall ((x_232 Nat_0) (x_233 list_1))
	(diseqlist_1 nil_1 (cons_1 x_232 x_233))))
(assert (forall ((x_234 Nat_0) (x_235 list_1))
	(diseqlist_1 (cons_1 x_234 x_235) nil_1)))
(assert (forall ((x_236 Nat_0) (x_237 list_1) (x_238 Nat_0) (x_239 list_1))
	(=> (diseqNat_0 x_236 x_238)
	    (diseqlist_1 (cons_1 x_236 x_237) (cons_1 x_238 x_239)))))
(assert (forall ((x_236 Nat_0) (x_237 list_1) (x_238 Nat_0) (x_239 list_1))
	(=> (diseqlist_1 x_237 x_239)
	    (diseqlist_1 (cons_1 x_236 x_237) (cons_1 x_238 x_239)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_5 (pair_0 list_2) Bool)
(declare-fun tail_5 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_243 list_2) (x_241 pair_0) (x_242 list_2))
	(=> (= x_243 (cons_2 x_241 x_242))
	    (head_5 x_241 x_243))))
(assert (forall ((x_243 list_2) (x_241 pair_0) (x_242 list_2))
	(=> (= x_243 (cons_2 x_241 x_242))
	    (tail_5 x_242 x_243))))
(assert (isnil_2 nil_2))
(assert (forall ((x_244 pair_0) (x_245 list_2))
	(iscons_2 (cons_2 x_244 x_245))))
(assert (forall ((x_246 pair_0) (x_247 list_2))
	(diseqlist_2 nil_2 (cons_2 x_246 x_247))))
(assert (forall ((x_248 pair_0) (x_249 list_2))
	(diseqlist_2 (cons_2 x_248 x_249) nil_2)))
(assert (forall ((x_250 pair_0) (x_251 list_2) (x_252 pair_0) (x_253 list_2))
	(=> (diseqpair_0 x_250 x_252)
	    (diseqlist_2 (cons_2 x_250 x_251) (cons_2 x_252 x_253)))))
(assert (forall ((x_250 pair_0) (x_251 list_2) (x_252 pair_0) (x_253 list_2))
	(=> (diseqlist_2 x_251 x_253)
	    (diseqlist_2 (cons_2 x_250 x_251) (cons_2 x_252 x_253)))))
(declare-fun primEnumFromTo_0 (list_1 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_31 list_1))
	(=>	(and (= x_31 nil_1)
			(gt_0 x_0 y_0))
		(primEnumFromTo_0 x_31 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_32 list_1) (x_33 list_1) (x_144 Nat_0))
	(=>	(and (= x_32 (cons_1 x_0 x_33))
			(primEnumFromTo_0 x_33 x_144 y_0)
			(le_0 x_0 y_0)
			(add_0 x_144 (S_0 Z_0) x_0))
		(primEnumFromTo_0 x_32 x_0 y_0))))
(declare-fun path_0 (list_0 Nat_0 Nat_0 list_2) Bool)
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_0 list_2) (x_2 pair_0) (x_3 list_2) (u_0 Nat_0) (v_0 Nat_0) (x_34 list_0) (x_35 list_0))
	(=>	(and (= x_34 (cons_0 (or (and (= u_0 x_1) (= v_0 y_1)) (and (= u_0 y_1) (= v_0 x_1))) x_35))
			(path_0 x_35 x_1 y_1 x_3)
			(= z_0 (cons_2 x_2 x_3))
			(= x_2 (pair_1 u_0 v_0)))
		(path_0 x_34 x_1 y_1 z_0))))
(assert (forall ((x_1 Nat_0) (y_1 Nat_0) (z_0 list_2) (x_36 list_0))
	(=>	(and (= x_36 nil_0)
			(= z_0 nil_2))
		(path_0 x_36 x_1 y_1 z_0))))
(declare-fun or_0 (Bool list_0) Bool)
(assert (forall ((x_4 list_0) (y_2 Bool) (xs_0 list_0) (x_37 Bool) (x_38 Bool))
	(=>	(and (= x_37 (or y_2 x_38))
			(or_0 x_38 xs_0)
			(= x_4 (cons_0 y_2 xs_0)))
		(or_0 x_37 x_4))))
(assert (forall ((x_4 list_0) (x_39 Bool))
	(=>	(and (= x_39 false)
			(= x_4 nil_0))
		(or_0 x_39 x_4))))
(declare-fun path_1 (Bool list_1 list_2) Bool)
(assert (forall ((x_5 list_1) (y_3 list_2) (z_1 Nat_0) (x_6 list_1) (y_4 Nat_0) (xs_1 list_1) (x_40 Bool) (x_41 list_0) (x_42 Bool) (x_43 Bool))
	(=>	(and (= x_40 (and x_42 x_43))
			(path_0 x_41 z_1 y_4 y_3)
			(or_0 x_42 x_41)
			(path_1 x_43 (cons_1 y_4 xs_1) y_3)
			(= x_5 (cons_1 z_1 x_6))
			(= x_6 (cons_1 y_4 xs_1)))
		(path_1 x_40 x_5 y_3))))
(assert (forall ((x_5 list_1) (y_3 list_2) (z_1 Nat_0) (x_6 list_1) (x_44 Bool))
	(=>	(and (= x_44 true)
			(= x_5 (cons_1 z_1 x_6))
			(= x_6 nil_1))
		(path_1 x_44 x_5 y_3))))
(assert (forall ((x_5 list_1) (y_3 list_2) (x_45 Bool))
	(=>	(and (= x_45 true)
			(= x_5 nil_1))
		(path_1 x_45 x_5 y_3))))
(declare-fun maximummaximum_0 (Nat_0 Nat_0 list_2) Bool)
(assert (forall ((x_7 Nat_0) (y_5 list_2) (z_2 pair_0) (yzs_0 list_2) (y_6 Nat_0) (z_3 Nat_0) (y_7 Nat_0) (x_46 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_46 x_47)
			(maximummaximum_0 x_47 y_7 yzs_0)
			(= y_5 (cons_2 z_2 yzs_0))
			(= z_2 (pair_1 y_6 z_3))
			(= y_7 z_3)
			(le_0 y_6 z_3)
			(le_0 x_7 y_7))
		(maximummaximum_0 x_46 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_2) (z_2 pair_0) (yzs_0 list_2) (y_6 Nat_0) (z_3 Nat_0) (y_7 Nat_0) (x_48 Nat_0) (x_49 Nat_0))
	(=>	(and (= x_48 x_49)
			(maximummaximum_0 x_49 x_7 yzs_0)
			(= y_5 (cons_2 z_2 yzs_0))
			(= z_2 (pair_1 y_6 z_3))
			(= y_7 z_3)
			(le_0 y_6 z_3)
			(gt_0 x_7 y_7))
		(maximummaximum_0 x_48 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_2) (z_2 pair_0) (yzs_0 list_2) (y_6 Nat_0) (z_3 Nat_0) (y_7 Nat_0) (x_50 Nat_0) (x_51 Nat_0))
	(=>	(and (= x_50 x_51)
			(maximummaximum_0 x_51 y_7 yzs_0)
			(= y_5 (cons_2 z_2 yzs_0))
			(= z_2 (pair_1 y_6 z_3))
			(= y_7 y_6)
			(gt_0 y_6 z_3)
			(le_0 x_7 y_7))
		(maximummaximum_0 x_50 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_2) (z_2 pair_0) (yzs_0 list_2) (y_6 Nat_0) (z_3 Nat_0) (y_7 Nat_0) (x_52 Nat_0) (x_53 Nat_0))
	(=>	(and (= x_52 x_53)
			(maximummaximum_0 x_53 x_7 yzs_0)
			(= y_5 (cons_2 z_2 yzs_0))
			(= z_2 (pair_1 y_6 z_3))
			(= y_7 y_6)
			(gt_0 y_6 z_3)
			(gt_0 x_7 y_7))
		(maximummaximum_0 x_52 x_7 y_5))))
(assert (forall ((x_7 Nat_0) (y_5 list_2) (x_54 Nat_0))
	(=>	(and (= x_54 x_7)
			(= y_5 nil_2))
		(maximummaximum_0 x_54 x_7 y_5))))
(declare-fun length_0 (Nat_0 list_1) Bool)
(assert (forall ((x_8 list_1) (y_8 Nat_0) (l_0 list_1) (x_55 Nat_0) (x_56 Nat_0) (x_145 Nat_0))
	(=>	(and (= x_55 x_145)
			(length_0 x_56 l_0)
			(= x_8 (cons_1 y_8 l_0))
			(add_0 x_145 (S_0 Z_0) x_56))
		(length_0 x_55 x_8))))
(assert (forall ((x_8 list_1) (x_57 Nat_0))
	(=>	(and (= x_57 Z_0)
			(= x_8 nil_1))
		(length_0 x_57 x_8))))
(declare-fun last_0 (Nat_0 Nat_0 list_1) Bool)
(assert (forall ((x_9 Nat_0) (y_9 list_1) (z_4 Nat_0) (ys_0 list_1) (x_58 Nat_0) (x_59 Nat_0))
	(=>	(and (= x_58 x_59)
			(last_0 x_59 z_4 ys_0)
			(= y_9 (cons_1 z_4 ys_0)))
		(last_0 x_58 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_1) (x_60 Nat_0))
	(=>	(and (= x_60 x_9)
			(= y_9 nil_1))
		(last_0 x_60 x_9 y_9))))
(declare-fun elem_0 (Bool Nat_0 list_1) Bool)
(assert (forall ((x_10 Nat_0) (y_10 list_1) (z_5 Nat_0) (xs_2 list_1) (x_61 Bool) (x_62 Bool))
	(=>	(and (= x_61 (or (= z_5 x_10) x_62))
			(elem_0 x_62 x_10 xs_2)
			(= y_10 (cons_1 z_5 xs_2)))
		(elem_0 x_61 x_10 y_10))))
(assert (forall ((x_10 Nat_0) (y_10 list_1) (x_63 Bool))
	(=>	(and (= x_63 false)
			(= y_10 nil_1))
		(elem_0 x_63 x_10 y_10))))
(declare-fun unique_0 (Bool list_1) Bool)
(assert (forall ((x_11 list_1) (y_11 Nat_0) (xs_3 list_1) (x_65 Bool) (x_64 Bool))
	(=>	(and (= x_65 false)
			(= x_11 (cons_1 y_11 xs_3))
			(= x_64 true)
			(elem_0 x_64 y_11 xs_3))
		(unique_0 x_65 x_11))))
(assert (forall ((x_11 list_1) (y_11 Nat_0) (xs_3 list_1) (x_67 Bool) (x_68 Bool) (x_66 Bool))
	(=>	(and (= x_67 x_68)
			(unique_0 x_68 xs_3)
			(= x_11 (cons_1 y_11 xs_3))
			(= x_66 false)
			(elem_0 x_66 y_11 xs_3))
		(unique_0 x_67 x_11))))
(assert (forall ((x_11 list_1) (x_69 Bool))
	(=>	(and (= x_69 true)
			(= x_11 nil_1))
		(unique_0 x_69 x_11))))
(declare-fun tour_0 (Bool list_1 list_2) Bool)
(assert (forall ((x_12 list_1) (y_12 list_2) (x_13 Nat_0) (x_14 list_1) (x_15 pair_0) (vs_0 list_2) (u_1 Nat_0) (v_1 Nat_0) (x_70 Bool) (x_71 Nat_0) (x_72 Bool) (x_73 Bool) (x_74 Nat_0) (x_75 Nat_0) (x_146 Nat_0))
	(=>	(and (= x_70 (and (= x_13 x_71) (and x_72 (and x_73 (= x_74 x_146)))))
			(last_0 x_71 x_13 x_14)
			(path_1 x_72 (cons_1 x_13 x_14) (cons_2 (pair_1 u_1 v_1) vs_0))
			(unique_0 x_73 x_14)
			(length_0 x_74 (cons_1 x_13 x_14))
			(maximummaximum_0 x_75 v_1 vs_0)
			(= x_12 (cons_1 x_13 x_14))
			(= y_12 (cons_2 x_15 vs_0))
			(= x_15 (pair_1 u_1 v_1))
			(le_0 u_1 v_1)
			(add_0 x_146 (S_0 (S_0 Z_0)) x_75))
		(tour_0 x_70 x_12 y_12))))
(assert (forall ((x_12 list_1) (y_12 list_2) (x_13 Nat_0) (x_14 list_1) (x_15 pair_0) (vs_0 list_2) (u_1 Nat_0) (v_1 Nat_0) (x_76 Bool) (x_77 Nat_0) (x_78 Bool) (x_79 Bool) (x_80 Nat_0) (x_81 Nat_0) (x_147 Nat_0))
	(=>	(and (= x_76 (and (= x_13 x_77) (and x_78 (and x_79 (= x_80 x_147)))))
			(last_0 x_77 x_13 x_14)
			(path_1 x_78 (cons_1 x_13 x_14) (cons_2 (pair_1 u_1 v_1) vs_0))
			(unique_0 x_79 x_14)
			(length_0 x_80 (cons_1 x_13 x_14))
			(maximummaximum_0 x_81 u_1 vs_0)
			(= x_12 (cons_1 x_13 x_14))
			(= y_12 (cons_2 x_15 vs_0))
			(= x_15 (pair_1 u_1 v_1))
			(gt_0 u_1 v_1)
			(add_0 x_147 (S_0 (S_0 Z_0)) x_81))
		(tour_0 x_76 x_12 y_12))))
(assert (forall ((x_12 list_1) (y_12 list_2) (x_13 Nat_0) (x_14 list_1) (x_82 Bool))
	(=>	(and (= x_82 false)
			(= x_12 (cons_1 x_13 x_14))
			(= y_12 nil_2))
		(tour_0 x_82 x_12 y_12))))
(assert (forall ((x_12 list_1) (y_12 list_2) (z_6 pair_0) (x_16 list_2) (x_83 Bool))
	(=>	(and (= x_83 false)
			(= x_12 nil_1)
			(= y_12 (cons_2 z_6 x_16)))
		(tour_0 x_83 x_12 y_12))))
(assert (forall ((x_12 list_1) (y_12 list_2) (x_84 Bool))
	(=>	(and (= x_84 true)
			(= x_12 nil_1)
			(= y_12 nil_2))
		(tour_0 x_84 x_12 y_12))))
(declare-fun dodeca_0 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_17 Nat_0) (y_13 list_1) (z_7 Nat_0) (x_18 list_1) (x_85 list_2) (x_86 list_2) (x_148 Nat_0) (x_149 Nat_0) (x_150 Nat_0) (x_151 Nat_0) (x_152 Nat_0) (x_153 Nat_0) (x_154 Nat_0))
	(=>	(and (= x_85 (cons_2 (pair_1 x_150 x_154) x_86))
			(dodeca_0 x_86 x_17 x_18)
			(= y_13 (cons_1 z_7 x_18))
			(add_0 x_148 x_17 x_17)
			(add_0 x_149 x_148 x_17)
			(add_0 x_150 x_149 z_7)
			(add_0 x_151 x_17 x_17)
			(add_0 x_152 x_151 x_17)
			(add_0 x_153 (S_0 Z_0) z_7)
			(add_0 x_154 x_152 x_153))
		(dodeca_0 x_85 x_17 y_13))))
(assert (forall ((x_17 Nat_0) (y_13 list_1) (x_87 list_2))
	(=>	(and (= x_87 nil_2)
			(= y_13 nil_1))
		(dodeca_0 x_87 x_17 y_13))))
(declare-fun dodeca_1 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_19 Nat_0) (y_14 list_1) (z_8 Nat_0) (x_20 list_1) (x_88 list_2) (x_89 list_2) (x_155 Nat_0) (x_156 Nat_0) (x_157 Nat_0) (x_158 Nat_0) (x_159 Nat_0))
	(=>	(and (= x_88 (cons_2 (pair_1 x_156 x_159) x_89))
			(dodeca_1 x_89 x_19 x_20)
			(= y_14 (cons_1 z_8 x_20))
			(add_0 x_155 x_19 x_19)
			(add_0 x_156 x_155 z_8)
			(add_0 x_157 x_19 x_19)
			(add_0 x_158 x_157 x_19)
			(add_0 x_159 x_158 z_8))
		(dodeca_1 x_88 x_19 y_14))))
(assert (forall ((x_19 Nat_0) (y_14 list_1) (x_90 list_2))
	(=>	(and (= x_90 nil_2)
			(= y_14 nil_1))
		(dodeca_1 x_90 x_19 y_14))))
(declare-fun dodeca_2 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_21 Nat_0) (y_15 list_1) (z_9 Nat_0) (x_22 list_1) (x_91 list_2) (x_92 list_2) (x_160 Nat_0) (x_161 Nat_0) (x_162 Nat_0) (x_163 Nat_0))
	(=>	(and (= x_91 (cons_2 (pair_1 x_161 x_163) x_92))
			(dodeca_2 x_92 x_21 x_22)
			(= y_15 (cons_1 z_9 x_22))
			(add_0 x_160 (S_0 Z_0) z_9)
			(add_0 x_161 x_21 x_160)
			(add_0 x_162 x_21 x_21)
			(add_0 x_163 x_162 z_9))
		(dodeca_2 x_91 x_21 y_15))))
(assert (forall ((x_21 Nat_0) (y_15 list_1) (x_93 list_2))
	(=>	(and (= x_93 nil_2)
			(= y_15 nil_1))
		(dodeca_2 x_93 x_21 y_15))))
(declare-fun dodeca_3 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_23 Nat_0) (y_16 list_1) (z_10 Nat_0) (x_24 list_1) (x_94 list_2) (x_95 list_2) (x_164 Nat_0) (x_165 Nat_0) (x_166 Nat_0))
	(=>	(and (= x_94 (cons_2 (pair_1 x_164 x_166) x_95))
			(dodeca_3 x_95 x_23 x_24)
			(= y_16 (cons_1 z_10 x_24))
			(add_0 x_164 x_23 z_10)
			(add_0 x_165 x_23 x_23)
			(add_0 x_166 x_165 z_10))
		(dodeca_3 x_94 x_23 y_16))))
(assert (forall ((x_23 Nat_0) (y_16 list_1) (x_96 list_2))
	(=>	(and (= x_96 nil_2)
			(= y_16 nil_1))
		(dodeca_3 x_96 x_23 y_16))))
(declare-fun dodeca_4 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_25 Nat_0) (y_17 list_1) (z_11 Nat_0) (x_26 list_1) (x_97 list_2) (x_98 list_2) (x_167 Nat_0))
	(=>	(and (= x_97 (cons_2 (pair_1 z_11 x_167) x_98))
			(dodeca_4 x_98 x_25 x_26)
			(= y_17 (cons_1 z_11 x_26))
			(add_0 x_167 x_25 z_11))
		(dodeca_4 x_97 x_25 y_17))))
(assert (forall ((x_25 Nat_0) (y_17 list_1) (x_99 list_2))
	(=>	(and (= x_99 nil_2)
			(= y_17 nil_1))
		(dodeca_4 x_99 x_25 y_17))))
(declare-fun dodeca_5 (list_2 list_1) Bool)
(assert (forall ((x_27 list_1) (y_18 Nat_0) (z_12 list_1) (x_100 list_2) (x_101 list_2) (x_168 Nat_0))
	(=>	(and (= x_100 (cons_2 (pair_1 y_18 x_168) x_101))
			(dodeca_5 x_101 z_12)
			(= x_27 (cons_1 y_18 z_12))
			(add_0 x_168 (S_0 Z_0) y_18))
		(dodeca_5 x_100 x_27))))
(assert (forall ((x_27 list_1) (x_102 list_2))
	(=>	(and (= x_102 nil_2)
			(= x_27 nil_1))
		(dodeca_5 x_102 x_27))))
(declare-fun x_28 (list_2 list_2 list_2) Bool)
(assert (forall ((x_29 list_2) (y_19 list_2) (z_13 pair_0) (xs_4 list_2) (x_103 list_2) (x_104 list_2))
	(=>	(and (= x_103 (cons_2 z_13 x_104))
			(x_28 x_104 xs_4 y_19)
			(= x_29 (cons_2 z_13 xs_4)))
		(x_28 x_103 x_29 y_19))))
(assert (forall ((x_29 list_2) (y_19 list_2) (x_105 list_2))
	(=>	(and (= x_105 y_19)
			(= x_29 nil_2))
		(x_28 x_105 x_29 y_19))))
(declare-fun dodeca_6 (list_2 Nat_0) Bool)
(assert (forall ((x_30 Nat_0) (x_106 list_2))
	(=>	(and (= x_106 nil_2)
			(= x_30 Z_0))
		(dodeca_6 x_106 x_30))))
(assert (forall ((x_30 Nat_0) (x_107 list_2) (x_108 list_1) (x_109 list_2) (x_110 list_1) (x_111 list_2) (x_112 list_1) (x_113 list_2) (x_114 list_1) (x_115 list_2) (x_116 list_1) (x_117 list_2) (x_118 list_1) (x_119 list_2) (x_120 list_2) (x_121 list_2) (x_122 list_2) (x_123 list_2) (x_124 list_2) (x_169 Nat_0) (x_170 Nat_0) (x_171 Nat_0) (x_172 Nat_0) (x_173 Nat_0) (x_174 Nat_0) (x_175 Nat_0) (x_176 Nat_0) (x_177 Nat_0) (x_178 Nat_0) (x_179 Nat_0) (x_180 Nat_0) (x_181 Nat_0))
	(=>	(and (= x_107 x_124)
			(primEnumFromTo_0 x_108 Z_0 x_169)
			(dodeca_5 x_109 x_108)
			(primEnumFromTo_0 x_110 Z_0 x_30)
			(dodeca_4 x_111 x_30 x_110)
			(primEnumFromTo_0 x_112 Z_0 x_30)
			(dodeca_3 x_113 x_30 x_112)
			(primEnumFromTo_0 x_114 Z_0 x_170)
			(dodeca_2 x_115 x_30 x_114)
			(primEnumFromTo_0 x_116 Z_0 x_30)
			(dodeca_1 x_117 x_30 x_116)
			(primEnumFromTo_0 x_118 Z_0 x_171)
			(dodeca_0 x_119 x_30 x_118)
			(x_28 x_120 x_117 (cons_2 (pair_1 x_175 x_177) x_119))
			(x_28 x_121 (cons_2 (pair_1 x_30 x_180) x_115) x_120)
			(x_28 x_122 x_113 x_121)
			(x_28 x_123 x_111 x_122)
			(x_28 x_124 (cons_2 (pair_1 x_181 Z_0) x_109) x_123)
			(diseqNat_0 x_30 Z_0)
			(minus_0 x_169 x_30 (S_0 Z_0))
			(minus_0 x_170 x_30 (S_0 Z_0))
			(minus_0 x_171 x_30 (S_0 Z_0))
			(add_0 x_172 x_30 x_30)
			(add_0 x_173 x_172 x_30)
			(minus_0 x_174 x_30 (S_0 Z_0))
			(add_0 x_175 x_173 x_174)
			(add_0 x_176 x_30 x_30)
			(add_0 x_177 x_176 x_30)
			(add_0 x_178 x_30 x_30)
			(minus_0 x_179 x_30 (S_0 Z_0))
			(add_0 x_180 x_178 x_179)
			(minus_0 x_181 x_30 (S_0 Z_0)))
		(dodeca_6 x_107 x_30))))
(assert (forall ((p_0 list_1) (x_125 list_1) (x_126 list_2) (x_127 list_1) (x_128 list_2) (x_129 list_1) (x_130 list_2) (x_131 list_1) (x_132 list_2) (x_133 list_1) (x_134 list_2) (x_135 list_1) (x_136 list_2) (x_137 list_2) (x_138 list_2) (x_139 list_2) (x_140 list_2) (x_141 list_2) (x_142 Bool) (x_182 Nat_0) (x_183 Nat_0) (x_184 Nat_0) (x_185 Nat_0) (x_186 Nat_0) (x_187 Nat_0) (x_188 Nat_0) (x_189 Nat_0) (x_190 Nat_0) (x_191 Nat_0) (x_192 Nat_0) (x_193 Nat_0) (x_194 Nat_0))
	(=>	(and (= x_142 true)
			(primEnumFromTo_0 x_125 Z_0 x_182)
			(dodeca_5 x_126 x_125)
			(primEnumFromTo_0 x_127 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_4 x_128 (S_0 (S_0 (S_0 Z_0))) x_127)
			(primEnumFromTo_0 x_129 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_3 x_130 (S_0 (S_0 (S_0 Z_0))) x_129)
			(primEnumFromTo_0 x_131 Z_0 x_183)
			(dodeca_2 x_132 (S_0 (S_0 (S_0 Z_0))) x_131)
			(primEnumFromTo_0 x_133 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_1 x_134 (S_0 (S_0 (S_0 Z_0))) x_133)
			(primEnumFromTo_0 x_135 Z_0 x_184)
			(dodeca_0 x_136 (S_0 (S_0 (S_0 Z_0))) x_135)
			(x_28 x_137 x_134 (cons_2 (pair_1 x_188 x_190) x_136))
			(x_28 x_138 (cons_2 (pair_1 (S_0 (S_0 (S_0 Z_0))) x_193) x_132) x_137)
			(x_28 x_139 x_130 x_138)
			(x_28 x_140 x_128 x_139)
			(x_28 x_141 (cons_2 (pair_1 x_194 Z_0) x_126) x_140)
			(tour_0 x_142 p_0 x_141)
			(minus_0 x_182 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(minus_0 x_183 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(minus_0 x_184 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_185 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_186 x_185 (S_0 (S_0 (S_0 Z_0))))
			(minus_0 x_187 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_188 x_186 x_187)
			(add_0 x_189 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_190 x_189 (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_191 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(minus_0 x_192 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_193 x_191 x_192)
			(minus_0 x_194 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0)))
		false)))
(check-sat)
