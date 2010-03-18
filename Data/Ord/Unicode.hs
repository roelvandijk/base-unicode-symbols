{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Ord.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Ord.Unicode ( (≤), (≥), (≮), (≯) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool ( Bool )
import Data.Ord  ( Ord, (<=), (>=) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infix  4 ≤
infix  4 ≥
infix  4 ≮
infix  4 ≯


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2264;) = ('<=')

U+2264, LESS-THAN OR EQUAL TO
-}
(≤) ∷ Ord α ⇒ α → α → Bool
(≤) = (<=)

{-|
(&#x2265;) = ('>=')

U+2265, GREATER-THAN OR EQUAL TO
-}
(≥) ∷ Ord α ⇒ α → α → Bool
(≥) = (>=)

{-|
(&#x226E;) = ('>=')

U+226E, NOT LESS-THAN
-}
(≮) ∷ Ord α ⇒ α → α → Bool
(≮) = (>=)

{-|
(&#x226F;) = ('<=')

U+226F, NOT GREATER-THAN
-}
(≯) ∷ Ord α ⇒ α → α → Bool
(≯) = (<=)