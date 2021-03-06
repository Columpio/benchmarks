module Untyped where

import Tip

data Nat = Suc Nat | Z
  deriving Show

index :: [a] -> Nat -> Maybe a
index (x:xs) Z       = Just x
index (x:xs) (Suc n) = index xs n
index []     _       = Nothing

data Term = Term :$ Term | TheVar | K | I
  | S
  | B
  | C
--  | W

infixl :$

cheating :: Term -> Bool
cheating (a :$ b) = cheating a || cheating b
cheating TheVar   = True
cheating _        = False

step :: Term -> Maybe Term
step (S :$ f :$ g :$ x) = Just (f :$ x :$ (g :$ x))
step (K :$ x :$ _)      = Just x
step (I :$ x)           = Just x
step (B :$ f :$ g :$ x) = Just (f :$ (g :$ x))
step (C :$ f :$ x :$ y) = Just (f :$ y :$ x)
-- step (W :$ f :$ x)      = Just (f :$ x :$ x)
step (t :$ u)           = par t u (step t) (step u)
-- step (t :$ u)           = left u (step t) `mplus` right t (step u)
step _                  = Nothing

par :: Term -> Term -> Maybe Term -> Maybe Term -> Maybe Term
par t u (Just t_red) (Just u_red) = Just (t_red :$ u_red)
par t u Nothing      (Just u_red) = Just (t     :$ u_red)
par t u (Just t_red) Nothing      = Just (t_red :$ u)
par _ _ _ _ = Nothing


{-
left u (Just x) = Just (x :$ u)
left _ Nothing  = Nothing

right u (Just x) = Just (u :$ x)
right _ Nothing  = Nothing

mplus :: Maybe a -> Maybe a -> Maybe a
Just x `mplus` _ = Just x
_      `mplus` m = m

kstep :: Nat -> Term -> Term
kstep Z       x = x
kstep (Suc n) x = case step x of
    Just u  -> kstep n u
    Nothing -> x
    -}

astep :: Nat -> Term -> Maybe Term
astep Z       x = Just x
astep (Suc n) x = case step x of
    Just u  -> astep n u
    Nothing -> Nothing

-- thm  k x y = step ((k :$ x) :$ y) === Just x ==> True === False
-- thm  x = step x === Just x ==> True === False
-- thm2 x = fmap step (step x) === Just (Just x) ==> True === False

{-
thm_id n f x y = kstep n (f :$ Var x) === Var x ==>
                 kstep n (f :$ Var y) === Var y ==>
                 x === y
-}

-- 0.5s:
-- thm_omg n f = astep (Suc n) f === Just f ==> True === False

-- 3s (with S,B,C,W)
--thm_why_easy_smaller y = astep (Suc (Suc (Suc Z))) (y :$ TheVar) === Just (TheVar :$ (y :$ TheVar)) ==> cheating y === True

-- 15s (with S,B,C,W)
-- thm_why_easy_small y = astep (Suc (Suc (Suc (Suc Z)))) (y :$ TheVar) === Just (TheVar :$ (y :$ TheVar)) ==> cheating y === True

-- 1m4s:  (with S,B,C,W)
-- 1m08s: (with S,B)
-- 4m10s: (with S)
-- thm_why_easy y = astep (Suc (Suc (Suc (Suc (Suc Z))))) (y :$ TheVar) === Just (TheVar :$ (y :$ TheVar)) ==> cheating y === True

-- 1m57s: (with K,S,B,C)
--   32s: (with     B,C,W)
-- 1m56s: (with   S,B,C,W)
thm_why n y = astep n (y :$ TheVar) === Just (TheVar :$ (y :$ TheVar)) ==> cheating y === True

-- save:
-- (Suc (Suc (Suc (Suc (Suc Z)))),(((S (K (S I))) ((S (I I)) ((S K) (I I)))) ((S (K (S I))) (((S S) (S K)) (I I)))))

