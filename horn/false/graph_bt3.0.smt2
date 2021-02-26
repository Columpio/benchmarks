(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_243 Nat_0) (x_242 Nat_0))
	(=> (= x_243 (S_0 x_242))
	    (unS_1 x_242 x_243))))
(assert (isZ_0 Z_0))
(assert (forall ((x_244 Nat_0))
	(isS_0 (S_0 x_244))))
(assert (forall ((x_245 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_245))))
(assert (forall ((x_246 Nat_0))
	(diseqNat_0 (S_0 x_246) Z_0)))
(assert (forall ((x_247 Nat_0) (x_248 Nat_0))
	(=> (diseqNat_0 x_247 x_248)
	    (diseqNat_0 (S_0 x_247) (S_0 x_248)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_23 Nat_0))
	(add_0 y_23 Z_0 y_23)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_183 y_23)
	    (add_0 (S_0 r_0) (S_0 x_183) y_23))))
(assert (forall ((y_23 Nat_0))
	(minus_0 Z_0 Z_0 y_23)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_183 y_23)
	    (minus_0 (S_0 r_0) (S_0 x_183) y_23))))
(assert (forall ((y_23 Nat_0))
	(le_0 Z_0 y_23)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (le_0 x_183 y_23)
	    (le_0 (S_0 x_183) (S_0 y_23)))))
(assert (forall ((y_23 Nat_0))
	(ge_0 y_23 Z_0)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (ge_0 x_183 y_23)
	    (ge_0 (S_0 x_183) (S_0 y_23)))))
(assert (forall ((y_23 Nat_0))
	(lt_0 Z_0 (S_0 y_23))))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_183 y_23)
	    (lt_0 (S_0 x_183) (S_0 y_23)))))
(assert (forall ((y_23 Nat_0))
	(gt_0 (S_0 y_23) Z_0)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (gt_0 x_183 y_23)
	    (gt_0 (S_0 x_183) (S_0 y_23)))))
(assert (forall ((y_23 Nat_0))
	(mult_0 Z_0 Z_0 y_23)))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0) (r_0 Nat_0) (z_16 Nat_0))
	(=>	(and (mult_0 r_0 x_183 y_23)
			(add_0 z_16 r_0 y_23))
		(mult_0 z_16 (S_0 x_183) y_23))))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_183 y_23)
	    (div_0 Z_0 x_183 y_23))))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0) (r_0 Nat_0) (z_16 Nat_0))
	(=>	(and (ge_0 x_183 y_23)
			(minus_0 z_16 x_183 y_23)
			(div_0 r_0 z_16 y_23))
		(div_0 (S_0 r_0) x_183 y_23))))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0))
	(=> (lt_0 x_183 y_23)
	    (mod_0 x_183 x_183 y_23))))
(assert (forall ((x_183 Nat_0) (y_23 Nat_0) (r_0 Nat_0) (z_16 Nat_0))
	(=>	(and (ge_0 x_183 y_23)
			(minus_0 z_16 x_183 y_23)
			(mod_0 r_0 z_16 y_23))
		(mod_0 r_0 x_183 y_23))))
(declare-datatypes ((pair_0 0)) (((pair_1 (projpair_0 Nat_0) (projpair_1 Nat_0)))))
(declare-fun diseqpair_0 (pair_0 pair_0) Bool)
(declare-fun projpair_4 (Nat_0 pair_0) Bool)
(declare-fun projpair_5 (Nat_0 pair_0) Bool)
(declare-fun ispair_0 (pair_0) Bool)
(assert (forall ((x_251 pair_0) (x_249 Nat_0) (x_250 Nat_0))
	(=> (= x_251 (pair_1 x_249 x_250))
	    (projpair_4 x_249 x_251))))
(assert (forall ((x_251 pair_0) (x_249 Nat_0) (x_250 Nat_0))
	(=> (= x_251 (pair_1 x_249 x_250))
	    (projpair_5 x_250 x_251))))
(assert (forall ((x_252 Nat_0) (x_253 Nat_0))
	(ispair_0 (pair_1 x_252 x_253))))
(assert (forall ((x_254 Nat_0) (x_255 Nat_0) (x_256 Nat_0) (x_257 Nat_0))
	(=> (diseqNat_0 x_254 x_256)
	    (diseqpair_0 (pair_1 x_254 x_255) (pair_1 x_256 x_257)))))
(assert (forall ((x_254 Nat_0) (x_255 Nat_0) (x_256 Nat_0) (x_257 Nat_0))
	(=> (diseqNat_0 x_255 x_257)
	    (diseqpair_0 (pair_1 x_254 x_255) (pair_1 x_256 x_257)))))
(declare-datatypes ((list_0 0)) (((nil_0 ) (cons_0 (head_0 Bool) (tail_0 list_0)))))
(declare-fun diseqlist_0 (list_0 list_0) Bool)
(declare-fun head_6 (Bool list_0) Bool)
(declare-fun tail_6 (list_0 list_0) Bool)
(declare-fun isnil_0 (list_0) Bool)
(declare-fun iscons_0 (list_0) Bool)
(assert (forall ((x_261 list_0) (x_259 Bool) (x_260 list_0))
	(=> (= x_261 (cons_0 x_259 x_260))
	    (head_6 x_259 x_261))))
(assert (forall ((x_261 list_0) (x_259 Bool) (x_260 list_0))
	(=> (= x_261 (cons_0 x_259 x_260))
	    (tail_6 x_260 x_261))))
(assert (isnil_0 nil_0))
(assert (forall ((x_262 Bool) (x_263 list_0))
	(iscons_0 (cons_0 x_262 x_263))))
(assert (forall ((x_264 Bool) (x_265 list_0))
	(diseqlist_0 nil_0 (cons_0 x_264 x_265))))
(assert (forall ((x_266 Bool) (x_267 list_0))
	(diseqlist_0 (cons_0 x_266 x_267) nil_0)))
(assert (forall ((x_268 Bool) (x_269 list_0) (x_270 Bool) (x_271 list_0))
	(=> (not (= x_268 x_270))
	    (diseqlist_0 (cons_0 x_268 x_269) (cons_0 x_270 x_271)))))
(assert (forall ((x_268 Bool) (x_269 list_0) (x_270 Bool) (x_271 list_0))
	(=> (diseqlist_0 x_269 x_271)
	    (diseqlist_0 (cons_0 x_268 x_269) (cons_0 x_270 x_271)))))
(declare-datatypes ((list_1 0)) (((nil_1 ) (cons_1 (head_1 Nat_0) (tail_1 list_1)))))
(declare-fun diseqlist_1 (list_1 list_1) Bool)
(declare-fun head_7 (Nat_0 list_1) Bool)
(declare-fun tail_7 (list_1 list_1) Bool)
(declare-fun isnil_1 (list_1) Bool)
(declare-fun iscons_1 (list_1) Bool)
(assert (forall ((x_275 list_1) (x_273 Nat_0) (x_274 list_1))
	(=> (= x_275 (cons_1 x_273 x_274))
	    (head_7 x_273 x_275))))
(assert (forall ((x_275 list_1) (x_273 Nat_0) (x_274 list_1))
	(=> (= x_275 (cons_1 x_273 x_274))
	    (tail_7 x_274 x_275))))
(assert (isnil_1 nil_1))
(assert (forall ((x_276 Nat_0) (x_277 list_1))
	(iscons_1 (cons_1 x_276 x_277))))
(assert (forall ((x_278 Nat_0) (x_279 list_1))
	(diseqlist_1 nil_1 (cons_1 x_278 x_279))))
(assert (forall ((x_280 Nat_0) (x_281 list_1))
	(diseqlist_1 (cons_1 x_280 x_281) nil_1)))
(assert (forall ((x_282 Nat_0) (x_283 list_1) (x_284 Nat_0) (x_285 list_1))
	(=> (diseqNat_0 x_282 x_284)
	    (diseqlist_1 (cons_1 x_282 x_283) (cons_1 x_284 x_285)))))
(assert (forall ((x_282 Nat_0) (x_283 list_1) (x_284 Nat_0) (x_285 list_1))
	(=> (diseqlist_1 x_283 x_285)
	    (diseqlist_1 (cons_1 x_282 x_283) (cons_1 x_284 x_285)))))
(declare-datatypes ((list_2 0)) (((nil_2 ) (cons_2 (head_2 pair_0) (tail_2 list_2)))))
(declare-fun diseqlist_2 (list_2 list_2) Bool)
(declare-fun head_8 (pair_0 list_2) Bool)
(declare-fun tail_8 (list_2 list_2) Bool)
(declare-fun isnil_2 (list_2) Bool)
(declare-fun iscons_2 (list_2) Bool)
(assert (forall ((x_289 list_2) (x_287 pair_0) (x_288 list_2))
	(=> (= x_289 (cons_2 x_287 x_288))
	    (head_8 x_287 x_289))))
(assert (forall ((x_289 list_2) (x_287 pair_0) (x_288 list_2))
	(=> (= x_289 (cons_2 x_287 x_288))
	    (tail_8 x_288 x_289))))
(assert (isnil_2 nil_2))
(assert (forall ((x_290 pair_0) (x_291 list_2))
	(iscons_2 (cons_2 x_290 x_291))))
(assert (forall ((x_292 pair_0) (x_293 list_2))
	(diseqlist_2 nil_2 (cons_2 x_292 x_293))))
(assert (forall ((x_294 pair_0) (x_295 list_2))
	(diseqlist_2 (cons_2 x_294 x_295) nil_2)))
(assert (forall ((x_296 pair_0) (x_297 list_2) (x_298 pair_0) (x_299 list_2))
	(=> (diseqpair_0 x_296 x_298)
	    (diseqlist_2 (cons_2 x_296 x_297) (cons_2 x_298 x_299)))))
(assert (forall ((x_296 pair_0) (x_297 list_2) (x_298 pair_0) (x_299 list_2))
	(=> (diseqlist_2 x_297 x_299)
	    (diseqlist_2 (cons_2 x_296 x_297) (cons_2 x_298 x_299)))))
(declare-datatypes ((B_0 0)) (((I_0 ) (O_0 ))))
(declare-fun diseqB_0 (B_0 B_0) Bool)
(declare-fun isI_0 (B_0) Bool)
(declare-fun isO_0 (B_0) Bool)
(assert (isI_0 I_0))
(assert (isO_0 O_0))
(assert (diseqB_0 I_0 O_0))
(assert (diseqB_0 O_0 I_0))
(declare-datatypes ((list_3 0)) (((nil_3 ) (cons_3 (head_3 B_0) (tail_3 list_3)))))
(declare-fun diseqlist_3 (list_3 list_3) Bool)
(declare-fun head_9 (B_0 list_3) Bool)
(declare-fun tail_9 (list_3 list_3) Bool)
(declare-fun isnil_3 (list_3) Bool)
(declare-fun iscons_3 (list_3) Bool)
(assert (forall ((x_305 list_3) (x_303 B_0) (x_304 list_3))
	(=> (= x_305 (cons_3 x_303 x_304))
	    (head_9 x_303 x_305))))
(assert (forall ((x_305 list_3) (x_303 B_0) (x_304 list_3))
	(=> (= x_305 (cons_3 x_303 x_304))
	    (tail_9 x_304 x_305))))
(assert (isnil_3 nil_3))
(assert (forall ((x_306 B_0) (x_307 list_3))
	(iscons_3 (cons_3 x_306 x_307))))
(assert (forall ((x_308 B_0) (x_309 list_3))
	(diseqlist_3 nil_3 (cons_3 x_308 x_309))))
(assert (forall ((x_310 B_0) (x_311 list_3))
	(diseqlist_3 (cons_3 x_310 x_311) nil_3)))
(assert (forall ((x_312 B_0) (x_313 list_3) (x_314 B_0) (x_315 list_3))
	(=> (diseqB_0 x_312 x_314)
	    (diseqlist_3 (cons_3 x_312 x_313) (cons_3 x_314 x_315)))))
(assert (forall ((x_312 B_0) (x_313 list_3) (x_314 B_0) (x_315 list_3))
	(=> (diseqlist_3 x_313 x_315)
	    (diseqlist_3 (cons_3 x_312 x_313) (cons_3 x_314 x_315)))))
(declare-datatypes ((list_4 0)) (((nil_4 ) (cons_4 (head_4 list_3) (tail_4 list_4)))))
(declare-fun diseqlist_4 (list_4 list_4) Bool)
(declare-fun head_10 (list_3 list_4) Bool)
(declare-fun tail_10 (list_4 list_4) Bool)
(declare-fun isnil_4 (list_4) Bool)
(declare-fun iscons_4 (list_4) Bool)
(assert (forall ((x_319 list_4) (x_317 list_3) (x_318 list_4))
	(=> (= x_319 (cons_4 x_317 x_318))
	    (head_10 x_317 x_319))))
(assert (forall ((x_319 list_4) (x_317 list_3) (x_318 list_4))
	(=> (= x_319 (cons_4 x_317 x_318))
	    (tail_10 x_318 x_319))))
(assert (isnil_4 nil_4))
(assert (forall ((x_320 list_3) (x_321 list_4))
	(iscons_4 (cons_4 x_320 x_321))))
(assert (forall ((x_322 list_3) (x_323 list_4))
	(diseqlist_4 nil_4 (cons_4 x_322 x_323))))
(assert (forall ((x_324 list_3) (x_325 list_4))
	(diseqlist_4 (cons_4 x_324 x_325) nil_4)))
(assert (forall ((x_326 list_3) (x_327 list_4) (x_328 list_3) (x_329 list_4))
	(=> (diseqlist_3 x_326 x_328)
	    (diseqlist_4 (cons_4 x_326 x_327) (cons_4 x_328 x_329)))))
(assert (forall ((x_326 list_3) (x_327 list_4) (x_328 list_3) (x_329 list_4))
	(=> (diseqlist_4 x_327 x_329)
	    (diseqlist_4 (cons_4 x_326 x_327) (cons_4 x_328 x_329)))))
(declare-datatypes ((pair_2 0)) (((pair_3 (projpair_2 list_3) (projpair_3 list_3)))))
(declare-fun diseqpair_1 (pair_2 pair_2) Bool)
(declare-fun projpair_6 (list_3 pair_2) Bool)
(declare-fun projpair_7 (list_3 pair_2) Bool)
(declare-fun ispair_1 (pair_2) Bool)
(assert (forall ((x_332 pair_2) (x_330 list_3) (x_331 list_3))
	(=> (= x_332 (pair_3 x_330 x_331))
	    (projpair_6 x_330 x_332))))
(assert (forall ((x_332 pair_2) (x_330 list_3) (x_331 list_3))
	(=> (= x_332 (pair_3 x_330 x_331))
	    (projpair_7 x_331 x_332))))
(assert (forall ((x_333 list_3) (x_334 list_3))
	(ispair_1 (pair_3 x_333 x_334))))
(assert (forall ((x_335 list_3) (x_336 list_3) (x_337 list_3) (x_338 list_3))
	(=> (diseqlist_3 x_335 x_337)
	    (diseqpair_1 (pair_3 x_335 x_336) (pair_3 x_337 x_338)))))
(assert (forall ((x_335 list_3) (x_336 list_3) (x_337 list_3) (x_338 list_3))
	(=> (diseqlist_3 x_336 x_338)
	    (diseqpair_1 (pair_3 x_335 x_336) (pair_3 x_337 x_338)))))
(declare-datatypes ((list_5 0)) (((nil_5 ) (cons_5 (head_5 pair_2) (tail_5 list_5)))))
(declare-fun diseqlist_5 (list_5 list_5) Bool)
(declare-fun head_11 (pair_2 list_5) Bool)
(declare-fun tail_11 (list_5 list_5) Bool)
(declare-fun isnil_5 (list_5) Bool)
(declare-fun iscons_5 (list_5) Bool)
(assert (forall ((x_342 list_5) (x_340 pair_2) (x_341 list_5))
	(=> (= x_342 (cons_5 x_340 x_341))
	    (head_11 x_340 x_342))))
(assert (forall ((x_342 list_5) (x_340 pair_2) (x_341 list_5))
	(=> (= x_342 (cons_5 x_340 x_341))
	    (tail_11 x_341 x_342))))
(assert (isnil_5 nil_5))
(assert (forall ((x_343 pair_2) (x_344 list_5))
	(iscons_5 (cons_5 x_343 x_344))))
(assert (forall ((x_345 pair_2) (x_346 list_5))
	(diseqlist_5 nil_5 (cons_5 x_345 x_346))))
(assert (forall ((x_347 pair_2) (x_348 list_5))
	(diseqlist_5 (cons_5 x_347 x_348) nil_5)))
(assert (forall ((x_349 pair_2) (x_350 list_5) (x_351 pair_2) (x_352 list_5))
	(=> (diseqpair_1 x_349 x_351)
	    (diseqlist_5 (cons_5 x_349 x_350) (cons_5 x_351 x_352)))))
(assert (forall ((x_349 pair_2) (x_350 list_5) (x_351 pair_2) (x_352 list_5))
	(=> (diseqlist_5 x_350 x_352)
	    (diseqlist_5 (cons_5 x_349 x_350) (cons_5 x_351 x_352)))))
(declare-fun primEnumFromTo_0 (list_1 Nat_0 Nat_0) Bool)
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_40 list_1))
	(=>	(and (= x_40 nil_1)
			(gt_0 x_0 y_0))
		(primEnumFromTo_0 x_40 x_0 y_0))))
(assert (forall ((x_0 Nat_0) (y_0 Nat_0) (x_41 list_1) (x_42 list_1) (x_184 Nat_0))
	(=>	(and (= x_41 (cons_1 x_0 x_42))
			(primEnumFromTo_0 x_42 x_184 y_0)
			(le_0 x_0 y_0)
			(add_0 x_184 (S_0 Z_0) x_0))
		(primEnumFromTo_0 x_41 x_0 y_0))))
(declare-fun or_0 (Bool list_0) Bool)
(assert (forall ((x_1 list_0) (y_1 Bool) (xs_0 list_0) (x_43 Bool) (x_44 Bool))
	(=>	(and (= x_43 (or y_1 x_44))
			(or_0 x_44 xs_0)
			(= x_1 (cons_0 y_1 xs_0)))
		(or_0 x_43 x_1))))
(assert (forall ((x_1 list_0) (x_45 Bool))
	(=>	(and (= x_45 false)
			(= x_1 nil_0))
		(or_0 x_45 x_1))))
(declare-fun maximummaximum_0 (Nat_0 Nat_0 list_2) Bool)
(assert (forall ((x_2 Nat_0) (y_2 list_2) (z_0 pair_0) (yzs_0 list_2) (y_3 Nat_0) (z_1 Nat_0) (y_4 Nat_0) (x_46 Nat_0) (x_47 Nat_0))
	(=>	(and (= x_46 x_47)
			(maximummaximum_0 x_47 y_4 yzs_0)
			(= y_2 (cons_2 z_0 yzs_0))
			(= z_0 (pair_1 y_3 z_1))
			(= y_4 z_1)
			(le_0 y_3 z_1)
			(le_0 x_2 y_4))
		(maximummaximum_0 x_46 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 list_2) (z_0 pair_0) (yzs_0 list_2) (y_3 Nat_0) (z_1 Nat_0) (y_4 Nat_0) (x_48 Nat_0) (x_49 Nat_0))
	(=>	(and (= x_48 x_49)
			(maximummaximum_0 x_49 x_2 yzs_0)
			(= y_2 (cons_2 z_0 yzs_0))
			(= z_0 (pair_1 y_3 z_1))
			(= y_4 z_1)
			(le_0 y_3 z_1)
			(gt_0 x_2 y_4))
		(maximummaximum_0 x_48 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 list_2) (z_0 pair_0) (yzs_0 list_2) (y_3 Nat_0) (z_1 Nat_0) (y_4 Nat_0) (x_50 Nat_0) (x_51 Nat_0))
	(=>	(and (= x_50 x_51)
			(maximummaximum_0 x_51 y_4 yzs_0)
			(= y_2 (cons_2 z_0 yzs_0))
			(= z_0 (pair_1 y_3 z_1))
			(= y_4 y_3)
			(gt_0 y_3 z_1)
			(le_0 x_2 y_4))
		(maximummaximum_0 x_50 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 list_2) (z_0 pair_0) (yzs_0 list_2) (y_3 Nat_0) (z_1 Nat_0) (y_4 Nat_0) (x_52 Nat_0) (x_53 Nat_0))
	(=>	(and (= x_52 x_53)
			(maximummaximum_0 x_53 x_2 yzs_0)
			(= y_2 (cons_2 z_0 yzs_0))
			(= z_0 (pair_1 y_3 z_1))
			(= y_4 y_3)
			(gt_0 y_3 z_1)
			(gt_0 x_2 y_4))
		(maximummaximum_0 x_52 x_2 y_2))))
(assert (forall ((x_2 Nat_0) (y_2 list_2) (x_54 Nat_0))
	(=>	(and (= x_54 x_2)
			(= y_2 nil_2))
		(maximummaximum_0 x_54 x_2 y_2))))
(declare-fun length_0 (Nat_0 list_4) Bool)
(assert (forall ((x_3 list_4) (y_5 list_3) (l_0 list_4) (x_55 Nat_0) (x_56 Nat_0) (x_185 Nat_0))
	(=>	(and (= x_55 x_185)
			(length_0 x_56 l_0)
			(= x_3 (cons_4 y_5 l_0))
			(add_0 x_185 (S_0 Z_0) x_56))
		(length_0 x_55 x_3))))
(assert (forall ((x_3 list_4) (x_57 Nat_0))
	(=>	(and (= x_57 Z_0)
			(= x_3 nil_4))
		(length_0 x_57 x_3))))
(declare-fun last_0 (list_3 list_3 list_4) Bool)
(assert (forall ((x_4 list_3) (y_6 list_4) (z_2 list_3) (ys_0 list_4) (x_58 list_3) (x_59 list_3))
	(=>	(and (= x_58 x_59)
			(last_0 x_59 z_2 ys_0)
			(= y_6 (cons_4 z_2 ys_0)))
		(last_0 x_58 x_4 y_6))))
(assert (forall ((x_4 list_3) (y_6 list_4) (x_60 list_3))
	(=>	(and (= x_60 x_4)
			(= y_6 nil_4))
		(last_0 x_60 x_4 y_6))))
(declare-fun dodeca_0 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_5 Nat_0) (y_7 list_1) (z_3 Nat_0) (x_6 list_1) (x_61 list_2) (x_62 list_2) (x_186 Nat_0) (x_187 Nat_0) (x_188 Nat_0) (x_189 Nat_0) (x_190 Nat_0) (x_191 Nat_0) (x_192 Nat_0))
	(=>	(and (= x_61 (cons_2 (pair_1 x_188 x_192) x_62))
			(dodeca_0 x_62 x_5 x_6)
			(= y_7 (cons_1 z_3 x_6))
			(add_0 x_186 x_5 x_5)
			(add_0 x_187 x_186 x_5)
			(add_0 x_188 x_187 z_3)
			(add_0 x_189 x_5 x_5)
			(add_0 x_190 x_189 x_5)
			(add_0 x_191 (S_0 Z_0) z_3)
			(add_0 x_192 x_190 x_191))
		(dodeca_0 x_61 x_5 y_7))))
(assert (forall ((x_5 Nat_0) (y_7 list_1) (x_63 list_2))
	(=>	(and (= x_63 nil_2)
			(= y_7 nil_1))
		(dodeca_0 x_63 x_5 y_7))))
(declare-fun dodeca_1 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_7 Nat_0) (y_8 list_1) (z_4 Nat_0) (x_8 list_1) (x_64 list_2) (x_65 list_2) (x_193 Nat_0) (x_194 Nat_0) (x_195 Nat_0) (x_196 Nat_0) (x_197 Nat_0))
	(=>	(and (= x_64 (cons_2 (pair_1 x_194 x_197) x_65))
			(dodeca_1 x_65 x_7 x_8)
			(= y_8 (cons_1 z_4 x_8))
			(add_0 x_193 x_7 x_7)
			(add_0 x_194 x_193 z_4)
			(add_0 x_195 x_7 x_7)
			(add_0 x_196 x_195 x_7)
			(add_0 x_197 x_196 z_4))
		(dodeca_1 x_64 x_7 y_8))))
(assert (forall ((x_7 Nat_0) (y_8 list_1) (x_66 list_2))
	(=>	(and (= x_66 nil_2)
			(= y_8 nil_1))
		(dodeca_1 x_66 x_7 y_8))))
(declare-fun dodeca_2 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_9 Nat_0) (y_9 list_1) (z_5 Nat_0) (x_10 list_1) (x_67 list_2) (x_68 list_2) (x_198 Nat_0) (x_199 Nat_0) (x_200 Nat_0) (x_201 Nat_0))
	(=>	(and (= x_67 (cons_2 (pair_1 x_199 x_201) x_68))
			(dodeca_2 x_68 x_9 x_10)
			(= y_9 (cons_1 z_5 x_10))
			(add_0 x_198 (S_0 Z_0) z_5)
			(add_0 x_199 x_9 x_198)
			(add_0 x_200 x_9 x_9)
			(add_0 x_201 x_200 z_5))
		(dodeca_2 x_67 x_9 y_9))))
(assert (forall ((x_9 Nat_0) (y_9 list_1) (x_69 list_2))
	(=>	(and (= x_69 nil_2)
			(= y_9 nil_1))
		(dodeca_2 x_69 x_9 y_9))))
(declare-fun dodeca_3 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_11 Nat_0) (y_10 list_1) (z_6 Nat_0) (x_12 list_1) (x_70 list_2) (x_71 list_2) (x_202 Nat_0) (x_203 Nat_0) (x_204 Nat_0))
	(=>	(and (= x_70 (cons_2 (pair_1 x_202 x_204) x_71))
			(dodeca_3 x_71 x_11 x_12)
			(= y_10 (cons_1 z_6 x_12))
			(add_0 x_202 x_11 z_6)
			(add_0 x_203 x_11 x_11)
			(add_0 x_204 x_203 z_6))
		(dodeca_3 x_70 x_11 y_10))))
(assert (forall ((x_11 Nat_0) (y_10 list_1) (x_72 list_2))
	(=>	(and (= x_72 nil_2)
			(= y_10 nil_1))
		(dodeca_3 x_72 x_11 y_10))))
(declare-fun dodeca_4 (list_2 Nat_0 list_1) Bool)
(assert (forall ((x_13 Nat_0) (y_11 list_1) (z_7 Nat_0) (x_14 list_1) (x_73 list_2) (x_74 list_2) (x_205 Nat_0))
	(=>	(and (= x_73 (cons_2 (pair_1 z_7 x_205) x_74))
			(dodeca_4 x_74 x_13 x_14)
			(= y_11 (cons_1 z_7 x_14))
			(add_0 x_205 x_13 z_7))
		(dodeca_4 x_73 x_13 y_11))))
(assert (forall ((x_13 Nat_0) (y_11 list_1) (x_75 list_2))
	(=>	(and (= x_75 nil_2)
			(= y_11 nil_1))
		(dodeca_4 x_75 x_13 y_11))))
(declare-fun dodeca_5 (list_2 list_1) Bool)
(assert (forall ((x_15 list_1) (y_12 Nat_0) (z_8 list_1) (x_76 list_2) (x_77 list_2) (x_206 Nat_0))
	(=>	(and (= x_76 (cons_2 (pair_1 y_12 x_206) x_77))
			(dodeca_5 x_77 z_8)
			(= x_15 (cons_1 y_12 z_8))
			(add_0 x_206 (S_0 Z_0) y_12))
		(dodeca_5 x_76 x_15))))
(assert (forall ((x_15 list_1) (x_78 list_2))
	(=>	(and (= x_78 nil_2)
			(= x_15 nil_1))
		(dodeca_5 x_78 x_15))))
(declare-fun bin_0 (list_3 Nat_0) Bool)
(assert (forall ((x_16 Nat_0) (x_79 list_3))
	(=>	(and (= x_79 nil_3)
			(= x_16 Z_0))
		(bin_0 x_79 x_16))))
(assert (forall ((x_16 Nat_0) (x_80 list_3) (x_81 list_3) (x_207 Nat_0) (x_208 Nat_0))
	(=>	(and (= x_80 (cons_3 O_0 x_81))
			(bin_0 x_81 x_207)
			(diseqNat_0 x_16 Z_0)
			(= x_208 Z_0)
			(div_0 x_207 x_16 (S_0 (S_0 Z_0)))
			(mod_0 x_208 x_16 (S_0 (S_0 Z_0))))
		(bin_0 x_80 x_16))))
(assert (forall ((x_16 Nat_0) (x_82 list_3))
	(=>	(and (= x_82 nil_3)
			(= x_16 Z_0))
		(bin_0 x_82 x_16))))
(assert (forall ((x_16 Nat_0) (x_83 list_3) (x_84 list_3) (x_209 Nat_0) (x_210 Nat_0))
	(=>	(and (= x_83 (cons_3 I_0 x_84))
			(bin_0 x_84 x_209)
			(diseqNat_0 x_16 Z_0)
			(diseqNat_0 x_210 Z_0)
			(div_0 x_209 x_16 (S_0 (S_0 Z_0)))
			(mod_0 x_210 x_16 (S_0 (S_0 Z_0))))
		(bin_0 x_83 x_16))))
(declare-fun bgraph_0 (list_5 list_2) Bool)
(assert (forall ((x_17 list_2) (y_13 pair_0) (z_9 list_2) (u_0 Nat_0) (v_0 Nat_0) (x_85 list_5) (x_86 list_3) (x_87 list_3) (x_88 list_5))
	(=>	(and (= x_85 (cons_5 (pair_3 x_86 x_87) x_88))
			(bin_0 x_86 u_0)
			(bin_0 x_87 v_0)
			(bgraph_0 x_88 z_9)
			(= x_17 (cons_2 y_13 z_9))
			(= y_13 (pair_1 u_0 v_0)))
		(bgraph_0 x_85 x_17))))
(assert (forall ((x_17 list_2) (x_89 list_5))
	(=>	(and (= x_89 nil_5)
			(= x_17 nil_2))
		(bgraph_0 x_89 x_17))))
(declare-fun beq_0 (Bool list_3 list_3) Bool)
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_20 B_0) (zs_0 list_3) (x_90 Bool) (x_91 Bool))
	(=>	(and (= x_90 x_91)
			(beq_0 x_91 xs_1 zs_0)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 O_0)
			(= y_14 (cons_3 x_20 zs_0))
			(= x_20 O_0))
		(beq_0 x_90 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_20 B_0) (zs_0 list_3) (x_92 Bool))
	(=>	(and (= x_92 false)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 O_0)
			(= y_14 (cons_3 x_20 zs_0))
			(= x_20 I_0))
		(beq_0 x_92 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_93 Bool))
	(=>	(and (= x_93 false)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 O_0)
			(= y_14 nil_3))
		(beq_0 x_93 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_21 B_0) (ys_1 list_3) (x_94 Bool))
	(=>	(and (= x_94 false)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 I_0)
			(= y_14 (cons_3 x_21 ys_1))
			(= x_21 O_0))
		(beq_0 x_94 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_21 B_0) (ys_1 list_3) (x_95 Bool) (x_96 Bool))
	(=>	(and (= x_95 x_96)
			(beq_0 x_96 xs_1 ys_1)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 I_0)
			(= y_14 (cons_3 x_21 ys_1))
			(= x_21 I_0))
		(beq_0 x_95 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_19 B_0) (xs_1 list_3) (x_97 Bool))
	(=>	(and (= x_97 false)
			(= x_18 (cons_3 x_19 xs_1))
			(= x_19 I_0)
			(= y_14 nil_3))
		(beq_0 x_97 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (z_10 B_0) (x_22 list_3) (x_98 Bool))
	(=>	(and (= x_98 false)
			(= x_18 nil_3)
			(= y_14 (cons_3 z_10 x_22)))
		(beq_0 x_98 x_18 y_14))))
(assert (forall ((x_18 list_3) (y_14 list_3) (x_99 Bool))
	(=>	(and (= x_99 true)
			(= x_18 nil_3)
			(= y_14 nil_3))
		(beq_0 x_99 x_18 y_14))))
(declare-fun bpath_0 (list_0 list_3 list_3 list_5) Bool)
(assert (forall ((x_23 list_3) (y_15 list_3) (z_11 list_5) (x_24 pair_2) (x_25 list_5) (u_1 list_3) (v_1 list_3) (x_100 list_0) (x_101 Bool) (x_102 Bool) (x_103 Bool) (x_104 Bool) (x_105 list_0))
	(=>	(and (= x_100 (cons_0 (or (and x_101 x_102) (and x_103 x_104)) x_105))
			(beq_0 x_101 u_1 x_23)
			(beq_0 x_102 v_1 y_15)
			(beq_0 x_103 u_1 y_15)
			(beq_0 x_104 v_1 x_23)
			(bpath_0 x_105 x_23 y_15 x_25)
			(= z_11 (cons_5 x_24 x_25))
			(= x_24 (pair_3 u_1 v_1)))
		(bpath_0 x_100 x_23 y_15 z_11))))
(assert (forall ((x_23 list_3) (y_15 list_3) (z_11 list_5) (x_106 list_0))
	(=>	(and (= x_106 nil_0)
			(= z_11 nil_5))
		(bpath_0 x_106 x_23 y_15 z_11))))
(declare-fun bpath_1 (Bool list_4 list_5) Bool)
(assert (forall ((x_26 list_4) (y_16 list_5) (z_12 list_3) (x_27 list_4) (y_17 list_3) (xs_2 list_4) (x_107 Bool) (x_108 list_0) (x_109 Bool) (x_110 Bool))
	(=>	(and (= x_107 (and x_109 x_110))
			(bpath_0 x_108 z_12 y_17 y_16)
			(or_0 x_109 x_108)
			(bpath_1 x_110 (cons_4 y_17 xs_2) y_16)
			(= x_26 (cons_4 z_12 x_27))
			(= x_27 (cons_4 y_17 xs_2)))
		(bpath_1 x_107 x_26 y_16))))
(assert (forall ((x_26 list_4) (y_16 list_5) (z_12 list_3) (x_27 list_4) (x_111 Bool))
	(=>	(and (= x_111 true)
			(= x_26 (cons_4 z_12 x_27))
			(= x_27 nil_4))
		(bpath_1 x_111 x_26 y_16))))
(assert (forall ((x_26 list_4) (y_16 list_5) (x_112 Bool))
	(=>	(and (= x_112 true)
			(= x_26 nil_4))
		(bpath_1 x_112 x_26 y_16))))
(declare-fun belem_0 (list_0 list_3 list_4) Bool)
(assert (forall ((x_28 list_3) (y_18 list_4) (z_13 list_3) (x_29 list_4) (x_113 list_0) (x_114 Bool) (x_115 list_0))
	(=>	(and (= x_113 (cons_0 x_114 x_115))
			(beq_0 x_114 x_28 z_13)
			(belem_0 x_115 x_28 x_29)
			(= y_18 (cons_4 z_13 x_29)))
		(belem_0 x_113 x_28 y_18))))
(assert (forall ((x_28 list_3) (y_18 list_4) (x_116 list_0))
	(=>	(and (= x_116 nil_0)
			(= y_18 nil_4))
		(belem_0 x_116 x_28 y_18))))
(declare-fun belem_1 (Bool list_3 list_4) Bool)
(assert (forall ((x_30 list_3) (y_19 list_4) (x_117 Bool) (x_118 list_0) (x_119 Bool))
	(=>	(and (= x_117 x_119)
			(belem_0 x_118 x_30 y_19)
			(or_0 x_119 x_118))
		(belem_1 x_117 x_30 y_19))))
(declare-fun bunique_0 (Bool list_4) Bool)
(assert (forall ((x_31 list_4) (y_20 list_3) (xs_3 list_4) (x_120 Bool) (x_121 Bool) (x_122 Bool))
	(=>	(and (= x_120 (and (not x_121) x_122))
			(belem_1 x_121 y_20 xs_3)
			(bunique_0 x_122 xs_3)
			(= x_31 (cons_4 y_20 xs_3)))
		(bunique_0 x_120 x_31))))
(assert (forall ((x_31 list_4) (x_123 Bool))
	(=>	(and (= x_123 true)
			(= x_31 nil_4))
		(bunique_0 x_123 x_31))))
(declare-fun btour_0 (Bool list_4 list_2) Bool)
(assert (forall ((x_32 list_4) (y_21 list_2) (x_33 list_3) (x_34 list_4) (x_35 pair_0) (vs_0 list_2) (u_2 Nat_0) (v_2 Nat_0) (x_124 Bool) (x_125 list_3) (x_126 Bool) (x_127 list_5) (x_128 Bool) (x_129 Bool) (x_130 Nat_0) (x_131 Nat_0) (x_211 Nat_0) (x_212 Nat_0))
	(=>	(and (= x_124 (and x_126 (and x_128 (and x_129 (= x_130 x_212)))))
			(last_0 x_125 x_33 x_34)
			(beq_0 x_126 x_33 x_125)
			(bgraph_0 x_127 (cons_2 (pair_1 u_2 v_2) vs_0))
			(bpath_1 x_128 (cons_4 x_33 x_34) x_127)
			(bunique_0 x_129 x_34)
			(length_0 x_130 (cons_4 x_33 x_34))
			(maximummaximum_0 x_131 v_2 vs_0)
			(= x_32 (cons_4 x_33 x_34))
			(= y_21 (cons_2 x_35 vs_0))
			(= x_35 (pair_1 u_2 v_2))
			(le_0 u_2 v_2)
			(add_0 x_211 (S_0 Z_0) x_131)
			(add_0 x_212 (S_0 Z_0) x_211))
		(btour_0 x_124 x_32 y_21))))
(assert (forall ((x_32 list_4) (y_21 list_2) (x_33 list_3) (x_34 list_4) (x_35 pair_0) (vs_0 list_2) (u_2 Nat_0) (v_2 Nat_0) (x_132 Bool) (x_133 list_3) (x_134 Bool) (x_135 list_5) (x_136 Bool) (x_137 Bool) (x_138 Nat_0) (x_139 Nat_0) (x_213 Nat_0) (x_214 Nat_0))
	(=>	(and (= x_132 (and x_134 (and x_136 (and x_137 (= x_138 x_214)))))
			(last_0 x_133 x_33 x_34)
			(beq_0 x_134 x_33 x_133)
			(bgraph_0 x_135 (cons_2 (pair_1 u_2 v_2) vs_0))
			(bpath_1 x_136 (cons_4 x_33 x_34) x_135)
			(bunique_0 x_137 x_34)
			(length_0 x_138 (cons_4 x_33 x_34))
			(maximummaximum_0 x_139 u_2 vs_0)
			(= x_32 (cons_4 x_33 x_34))
			(= y_21 (cons_2 x_35 vs_0))
			(= x_35 (pair_1 u_2 v_2))
			(gt_0 u_2 v_2)
			(add_0 x_213 (S_0 Z_0) x_139)
			(add_0 x_214 (S_0 Z_0) x_213))
		(btour_0 x_132 x_32 y_21))))
(assert (forall ((x_32 list_4) (y_21 list_2) (x_33 list_3) (x_34 list_4) (x_140 Bool))
	(=>	(and (= x_140 false)
			(= x_32 (cons_4 x_33 x_34))
			(= y_21 nil_2))
		(btour_0 x_140 x_32 y_21))))
(assert (forall ((x_32 list_4) (y_21 list_2) (z_14 pair_0) (x_36 list_2) (x_141 Bool))
	(=>	(and (= x_141 false)
			(= x_32 nil_4)
			(= y_21 (cons_2 z_14 x_36)))
		(btour_0 x_141 x_32 y_21))))
(assert (forall ((x_32 list_4) (y_21 list_2) (x_142 Bool))
	(=>	(and (= x_142 true)
			(= x_32 nil_4)
			(= y_21 nil_2))
		(btour_0 x_142 x_32 y_21))))
(declare-fun x_37 (list_2 list_2 list_2) Bool)
(assert (forall ((x_38 list_2) (y_22 list_2) (z_15 pair_0) (xs_4 list_2) (x_143 list_2) (x_144 list_2))
	(=>	(and (= x_143 (cons_2 z_15 x_144))
			(x_37 x_144 xs_4 y_22)
			(= x_38 (cons_2 z_15 xs_4)))
		(x_37 x_143 x_38 y_22))))
(assert (forall ((x_38 list_2) (y_22 list_2) (x_145 list_2))
	(=>	(and (= x_145 y_22)
			(= x_38 nil_2))
		(x_37 x_145 x_38 y_22))))
(declare-fun dodeca_6 (list_2 Nat_0) Bool)
(assert (forall ((x_39 Nat_0) (x_146 list_2))
	(=>	(and (= x_146 nil_2)
			(= x_39 Z_0))
		(dodeca_6 x_146 x_39))))
(assert (forall ((x_39 Nat_0) (x_147 list_2) (x_148 list_1) (x_149 list_2) (x_150 list_1) (x_151 list_2) (x_152 list_1) (x_153 list_2) (x_154 list_1) (x_155 list_2) (x_156 list_1) (x_157 list_2) (x_158 list_1) (x_159 list_2) (x_160 list_2) (x_161 list_2) (x_162 list_2) (x_163 list_2) (x_164 list_2) (x_215 Nat_0) (x_216 Nat_0) (x_217 Nat_0) (x_218 Nat_0) (x_219 Nat_0) (x_220 Nat_0) (x_221 Nat_0) (x_222 Nat_0) (x_223 Nat_0) (x_224 Nat_0) (x_225 Nat_0) (x_226 Nat_0) (x_227 Nat_0))
	(=>	(and (= x_147 x_164)
			(primEnumFromTo_0 x_148 Z_0 x_215)
			(dodeca_5 x_149 x_148)
			(primEnumFromTo_0 x_150 Z_0 x_39)
			(dodeca_4 x_151 x_39 x_150)
			(primEnumFromTo_0 x_152 Z_0 x_39)
			(dodeca_3 x_153 x_39 x_152)
			(primEnumFromTo_0 x_154 Z_0 x_216)
			(dodeca_2 x_155 x_39 x_154)
			(primEnumFromTo_0 x_156 Z_0 x_39)
			(dodeca_1 x_157 x_39 x_156)
			(primEnumFromTo_0 x_158 Z_0 x_217)
			(dodeca_0 x_159 x_39 x_158)
			(x_37 x_160 x_157 (cons_2 (pair_1 x_221 x_223) x_159))
			(x_37 x_161 (cons_2 (pair_1 x_39 x_226) x_155) x_160)
			(x_37 x_162 x_153 x_161)
			(x_37 x_163 x_151 x_162)
			(x_37 x_164 (cons_2 (pair_1 x_227 Z_0) x_149) x_163)
			(diseqNat_0 x_39 Z_0)
			(minus_0 x_215 x_39 (S_0 Z_0))
			(minus_0 x_216 x_39 (S_0 Z_0))
			(minus_0 x_217 x_39 (S_0 Z_0))
			(add_0 x_218 x_39 x_39)
			(add_0 x_219 x_218 x_39)
			(minus_0 x_220 x_39 (S_0 Z_0))
			(add_0 x_221 x_219 x_220)
			(add_0 x_222 x_39 x_39)
			(add_0 x_223 x_222 x_39)
			(add_0 x_224 x_39 x_39)
			(minus_0 x_225 x_39 (S_0 Z_0))
			(add_0 x_226 x_224 x_225)
			(minus_0 x_227 x_39 (S_0 Z_0)))
		(dodeca_6 x_147 x_39))))
(assert (forall ((p_0 list_4) (x_165 list_1) (x_166 list_2) (x_167 list_1) (x_168 list_2) (x_169 list_1) (x_170 list_2) (x_171 list_1) (x_172 list_2) (x_173 list_1) (x_174 list_2) (x_175 list_1) (x_176 list_2) (x_177 list_2) (x_178 list_2) (x_179 list_2) (x_180 list_2) (x_181 list_2) (x_182 Bool) (x_228 Nat_0) (x_229 Nat_0) (x_230 Nat_0) (x_231 Nat_0) (x_232 Nat_0) (x_233 Nat_0) (x_234 Nat_0) (x_235 Nat_0) (x_236 Nat_0) (x_237 Nat_0) (x_238 Nat_0) (x_239 Nat_0) (x_240 Nat_0))
	(=>	(and (= x_182 true)
			(primEnumFromTo_0 x_165 Z_0 x_228)
			(dodeca_5 x_166 x_165)
			(primEnumFromTo_0 x_167 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_4 x_168 (S_0 (S_0 (S_0 Z_0))) x_167)
			(primEnumFromTo_0 x_169 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_3 x_170 (S_0 (S_0 (S_0 Z_0))) x_169)
			(primEnumFromTo_0 x_171 Z_0 x_229)
			(dodeca_2 x_172 (S_0 (S_0 (S_0 Z_0))) x_171)
			(primEnumFromTo_0 x_173 Z_0 (S_0 (S_0 (S_0 Z_0))))
			(dodeca_1 x_174 (S_0 (S_0 (S_0 Z_0))) x_173)
			(primEnumFromTo_0 x_175 Z_0 x_230)
			(dodeca_0 x_176 (S_0 (S_0 (S_0 Z_0))) x_175)
			(x_37 x_177 x_174 (cons_2 (pair_1 x_234 x_236) x_176))
			(x_37 x_178 (cons_2 (pair_1 (S_0 (S_0 (S_0 Z_0))) x_239) x_172) x_177)
			(x_37 x_179 x_170 x_178)
			(x_37 x_180 x_168 x_179)
			(x_37 x_181 (cons_2 (pair_1 x_240 Z_0) x_166) x_180)
			(btour_0 x_182 p_0 x_181)
			(minus_0 x_228 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(minus_0 x_229 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(minus_0 x_230 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_231 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_232 x_231 (S_0 (S_0 (S_0 Z_0))))
			(minus_0 x_233 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_234 x_232 x_233)
			(add_0 x_235 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_236 x_235 (S_0 (S_0 (S_0 Z_0))))
			(add_0 x_237 (S_0 (S_0 (S_0 Z_0))) (S_0 (S_0 (S_0 Z_0))))
			(minus_0 x_238 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0))
			(add_0 x_239 x_237 x_238)
			(minus_0 x_240 (S_0 (S_0 (S_0 Z_0))) (S_0 Z_0)))
		false)))
(check-sat)
