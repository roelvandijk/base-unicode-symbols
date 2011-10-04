{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Prelude.Unicode
Copyright  : 2009–2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Prelude.Unicode
    ( (¬), (∧), (∨)
    , (≡), (≢), (≠)
    , (≤), (≥), (≮), (≯)
    , π
    , (÷), (⋅)
    , (∘)
    , (⧺)
    , (∈), (∉)
    , (⊥)
    , ℤ, ℚ
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Ratio ( Ratio )
import Prelude    ( Num, Floating, Fractional, Integer
                  , (/), (*), pi, undefined
                  )

-- from base-unicode-symbols:
import Data.Bool.Unicode     ( (∧), (∨), (¬) )
import Data.Eq.Unicode       ( (≡), (≢), (≠) )
import Data.Function.Unicode ( (∘) )
import Data.List.Unicode     ( (⧺), (∈), (∉) )
import Data.Ord.Unicode      ( (≤), (≥), (≮), (≯) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 7 ÷
infixl 7 ⋅


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
&#x03C0; = 'pi'

U+03C0, GREEK SMALL LETTER PI
-}
π ∷ Floating α ⇒ α
π = pi
{-# INLINE π #-}

{-|
(&#x00F7;) = ('/')

U+00F7, DIVISION SIGN
-}
(÷) ∷ Fractional α ⇒ α → α → α
(÷) = (/)
{-# INLINE (÷) #-}

{-|
(&#x22C5;) = ('*')

U+22C5, DOT OPERATOR
-}
(⋅) ∷ Num α ⇒ α → α → α
(⋅) = (*)
{-# INLINE (⋅) #-}

{-|
(&#x22A5;) = 'undefined'

U+22A5, UP TACK
-}
(⊥) ∷ α
(⊥) = undefined
{-# INLINE (⊥) #-}


-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

{-|
U+2124, DOUBLE-STRUCK CAPITAL Z
-}
type ℤ = Integer

{-|
U+2124, DOUBLE-STRUCK CAPITAL Q
-}
type ℚ = Ratio ℤ
