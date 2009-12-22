{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE UnicodeSyntax #-}

module Data.Foldable.Unicode where

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
