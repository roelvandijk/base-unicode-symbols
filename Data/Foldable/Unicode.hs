{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Foldable.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Foldable.Unicode where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool     ( Bool )
import Data.Eq       ( Eq )
import Data.Foldable ( Foldable, elem, notElem )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infix  4 ∈
infix  4 ∉


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{- |
(&#x2208;) = 'elem'

U+2208, ELEMENT OF
-}
(∈) ∷ (Foldable t, Eq α) ⇒ α → t α → Bool
(∈) = elem

{- |
(&#x2209;) = 'notElem'

U+2209, NOT AN ELEMENT OF
-}
(∉) ∷ (Foldable t, Eq α) ⇒ α → t α → Bool
(∉) = notElem
