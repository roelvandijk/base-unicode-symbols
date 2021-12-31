{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

<<<<<<< HEAD:Control/Monad/Unicode.hs
{-|
Module     : Control.Monad.Unicode
Copyright  : 2010—2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Monad.Unicode ( (≫=), (≫), (=≪), (↣), (↢), (⪼), (⪻) ) where

=======
module Control.Monad.Unicode ( (≫=), (≫), (=≪), (↣), (↢), (⪼), (⪻) ) where
>>>>>>> ffwd:src/Control/Monad/Unicode.hs

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
<<<<<<< HEAD:Control/Monad/Unicode.hs

infixl 1 ⪼
=======
infixr 1 ⪼
>>>>>>> ffwd:src/Control/Monad/Unicode.hs
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

<<<<<<< HEAD:Control/Monad/Unicode.hs

{-|
(&#x2abc;) = ('>>=')
=======
{-|
(&#x2abc;) = ('=<<')
>>>>>>> ffwd:src/Control/Monad/Unicode.hs

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
<<<<<<< HEAD:Control/Monad/Unicode.hs

=======
>>>>>>> ffwd:src/Control/Monad/Unicode.hs
