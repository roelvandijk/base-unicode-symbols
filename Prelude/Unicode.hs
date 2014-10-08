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
    , (‼)
    , (⊥)
    , (∣), (∤)
    , ℤ, ℚ
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool ( Bool )
import Data.Eq ( (==) )
import Data.Ratio ( Ratio )
import Prelude    ( Num, Floating, Fractional, Integer, Integral
                  , (/), (*), pi, undefined, mod
                  )

-- from base-unicode-symbols:
import Data.Bool.Unicode     ( (∧), (∨), (¬) )
import Data.Eq.Unicode       ( (≡), (≢), (≠) )
import Data.Function.Unicode ( (∘) )
import Data.List.Unicode     ( (⧺), (∈), (∉), (‼) )
import Data.Ord.Unicode      ( (≤), (≥), (≮), (≯) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 7 ÷
infixl 7 ⋅
infix 4 ∣
infix 4 ∤


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

{-|
a &#x2223; b = mod a b == 0

U+2223, DIVIDES
-}
(∣) ∷ Integral a ⇒ a → a → Bool
a ∣ b = mod a b == 0
{-# INLINE (∣) #-}

{-|
a &#x2224; b = not (a &#x2223; b)

U+2224, DOES NOT DIVIDE
-}
(∤) ∷ Integral a ⇒ a → a → Bool
a ∤ b = (¬)(a ∣ b)
{-# INLINE (∤) #-}


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
