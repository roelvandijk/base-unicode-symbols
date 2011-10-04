{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Control.Monad.Unicode
Copyright  : 2010—2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Monad.Unicode ( (≫=), (≫), (=≪) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Monad ( Monad, (>>=), (>>), (=<<) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 1 ≫=
infixl 1 ≫
infixr 1 =≪


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
