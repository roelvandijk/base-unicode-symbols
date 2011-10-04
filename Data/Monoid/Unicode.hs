{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Monoid.Unicode
Copyright  : 2009–2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Monoid.Unicode ( (∅), (⊕) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Monoid ( Monoid, mempty, mappend )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 6 ⊕


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2205;) = 'mempty'

U+2205, EMPTY SET
-}
(∅) ∷ Monoid α ⇒ α
(∅) = mempty
{-# INLINE (∅) #-}

{-|
(&#x2295;) = 'mappend'

U+2295, CIRCLED PLUS
-}
(⊕) ∷ Monoid α ⇒ α → α → α
(⊕) = mappend
{-# INLINE (⊕) #-}
