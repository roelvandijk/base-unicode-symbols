{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.List.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.List.Unicode ( (⧺), (∈), (∋), (∉), (∌), (∪), (∩) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool     ( Bool )
import Data.Eq       ( Eq )
import Data.Function ( flip )
import Data.List     ( (++), elem, notElem, union, intersect )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infix  4 ∈
infix  4 ∋
infix  4 ∉
infix  4 ∌
infixr 5 ⧺


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x29FA;) = ('++')

U+29FA, DOUBLE PLUS
-}
(⧺) ∷ [α] → [α] → [α]
(⧺) = (++)

{-|
(&#x2208;) = 'elem'

U+2208, ELEMENT OF
-}
(∈) ∷ Eq α ⇒ α → [α] → Bool
(∈) = elem

{- |
(&#x220B;) = 'flip' (&#x2208;)

U+220B, CONTAINS AS MEMBER
-}
(∋) ∷ Eq α ⇒ [α] → α → Bool
(∋) = flip (∈)

{-|
(&#x2209;) = 'notElem'

U+2209, NOT AN ELEMENT OF
-}
(∉) ∷ Eq α ⇒ α → [α] → Bool
(∉) = notElem

{- |
(&#x220C;) = 'flip' (&#x2209;)

U+220C, DOES NOT CONTAIN AS MEMBER
-}
(∌) ∷ Eq α ⇒ [α] → α → Bool
(∌) = flip (∉)

{-|
(&#x222A;) = 'union'

U+222A, UNION
-}
(∪) ∷ Eq α ⇒ [α] → [α] → [α]
(∪) = union

{-|
(&#x2229;) = 'intersect'

U+2229, INTERSECTION
-}
(∩) ∷ Eq α ⇒ [α] → [α] → [α]
(∩) = intersect
