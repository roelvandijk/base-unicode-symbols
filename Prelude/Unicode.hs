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
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Prelude ( Num, Floating, Fractional
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

{-|
(&#x00F7;) = ('/')

U+00F7, DIVISION SIGN
-}
(÷) ∷ Fractional α ⇒ α → α → α
(÷) = (/)

{-|
(&#x22C5;) = ('*')

U+22C5, DOT OPERATOR
-}
(⋅) ∷ Num α ⇒ α → α → α
(⋅) = (*)

{-|
(&#x22A5;) = 'undefined'

U+22A5, UP TACK
-}
(⊥) ∷ α
(⊥) = undefined
