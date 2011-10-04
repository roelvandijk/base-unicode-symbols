{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Foldable.Unicode
Copyright  : 2009–2011 Roel van Dijk
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
import Data.Function ( flip )
import Data.Foldable ( Foldable, elem, notElem )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infix  4 ∈
infix  4 ∋
infix  4 ∉
infix  4 ∌


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2208;) = 'elem'

U+2208, ELEMENT OF
-}
(∈) ∷ (Foldable t, Eq α) ⇒ α → t α → Bool
(∈) = elem
{-# INLINE (∈) #-}

{-|
(&#x220B;) = 'flip' (&#x2208;)

U+220B, CONTAINS AS MEMBER
-}
(∋) ∷ (Foldable t, Eq α) ⇒ t α → α → Bool
(∋) = flip (∈)
{-# INLINE (∋) #-}

{-|
(&#x2209;) = 'notElem'

U+2209, NOT AN ELEMENT OF
-}
(∉) ∷ (Foldable t, Eq α) ⇒ α → t α → Bool
(∉) = notElem
{-# INLINE (∉) #-}

{-|
(&#x220C;) = 'flip' (&#x2209;)

U+220C, DOES NOT CONTAIN AS MEMBER
-}
(∌) ∷ (Foldable t, Eq α) ⇒ t α → α → Bool
(∌) = flip (∉)
{-# INLINE (∌) #-}
