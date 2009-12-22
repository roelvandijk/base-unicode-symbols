{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE UnicodeSyntax #-}

module Data.List.Unicode ( (∈), (∉), (∪), (∩) ) where

import Data.Bool ( Bool )
import Data.Eq   ( Eq )
import Data.List ( elem, notElem , union, intersect )


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
(∈) ∷ Eq α ⇒ α → [α] → Bool
(∈) = elem

{- |
(&#x2209;) = 'notElem'

U+2209, NOT AN ELEMENT OF
-}
(∉) ∷ Eq α ⇒ α → [α] → Bool
(∉) = notElem

{- |
(&#x222A;) = 'union'

U+222A, UNION
-}
(∪) ∷ Eq α ⇒ [α] → [α] → [α]
(∪) = union

{- |
(&#x2229;) = 'intersect'

U+2229, INTERSECTION
-}
(∩) ∷ Eq α ⇒ [α] → [α] → [α]
(∩) = intersect
