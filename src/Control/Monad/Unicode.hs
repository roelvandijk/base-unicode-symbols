{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

module Control.Monad.Unicode ( (≫=), (≫), (=≪), (↣), (↢), (⪼), (⪻) ) where

-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Monad ( Monad, (>>=), (>>), (=<<), (>=>), (<=<) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 1 ≫=
infixl 1 ≫
infixr 1 =≪
infixl 1 ↣
infixr 1 ↢
infixr 1 ⪼
infixr 1 ⪻


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x226B;=) = ('>>=')

(U+226B, MUCH GREATER-THAN) + (U+3D, EQUALS SIGN)
-}
(≫=) ∷ Monad m ⇒ m α → (α → m β) → m β
(≫=) = (>>=)
{-# INLINE (≫=) #-}

{-|
(&#x226B;) = ('>>')

U+226B, MUCH GREATER-THAN
-}
(≫) ∷ Monad m ⇒ m α → m β → m β
(≫) = (>>)
{-# INLINE (≫) #-}

{-|
(=&#x226A;) = ('=<<')

(U+3D, EQUALS SIGN) + (U+226A, MUCH LESS-THAN)
-}
(=≪) ∷ Monad m ⇒ (α → m β) → m α → m β
(=≪) = (=<<)
{-# INLINE (=≪) #-}

{-|
(&#x21a3;) = ('>=>')

(U+21A3, RIGHTWARDS ARROW WITH TAIL)
-}
(↣) ∷ Monad μ ⇒ (α → μ β) → (β → μ γ) → α → μ γ
(↣) = (>=>)
{-# INLINE (↣) #-}

{-|
(&#x21a2;) = ('<=<')

(U+21A2, LEFTWARDS ARROW WITH TAIL)
-}
(↢) ∷ Monad μ ⇒ (β → μ γ) → (α → μ β) → α → μ γ
(↢) = (<=<)
{-# INLINE (↢) #-}

{-|
(&#x2abc;) = ('=<<')

(U+2ABC, DOUBLE SUCCEEDS
-}
(⪼) ∷ Monad μ ⇒ μ α → (α → μ β) → μ β
(⪼) = (>>=)
{-# INLINE (⪼) #-}


{-|
(&#x2abb;) = ('=<<')

(U+2ABB, DOUBLE PRECEDES
-}
(⪻) ∷ Monad μ ⇒ (α → μ β) → μ α → μ β
(⪻) = (=<<)
{-# INLINE (⪻) #-}
