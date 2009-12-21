{-# LANGUAGE UnicodeSyntax #-}

module Prelude.Unicode
    ( (¬), (∧), (∨)
    , (≡), (≢)
    , (≤), (≥), (≮), (≯)
    , π
    , (÷), (⋅)
    , (∘)
    , (∈), (∉)
    , (⊥)
    ) where

-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 2 ∨
infixr 3 ∧
infix  4 ≡
infix  4 ≢
infix  4 ≤
infix  4 ≥
infix  4 ≮
infix  4 ≯
infix  4 ∈
infix  4 ∉
infixl 7 ÷
infixl 7 ⋅
infixr 9 ∘

-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{- |
(&#x00AC;) = 'not'

U+00AC, NOT SIGN
-}
(¬) ∷ Bool → Bool
(¬) = not

{- |
(&#x2227;) = ('&&')

U+2227, LOGICAL AND
-}
(∧) ∷ Bool → Bool → Bool
(∧) = (&&)

{- |
(&#x2228;) = ('||')

U+2228, LOGICAL OR
-}
(∨) ∷ Bool → Bool → Bool
(∨) = (||)

{- |
(&#x2261;) = ('==')

U+2261, IDENTICAL TO
-}
(≡) ∷ Eq α ⇒ α → α → Bool
(≡) = (==)

{- |
(&#x2262;) = ('/=')

U+2262, NOT IDENTICAL TO
-}
(≢) ∷ Eq α ⇒ α → α → Bool
(≢) = (/=)

{- |
(&#x2264;) = ('<=')

U+2264, LESS-THAN OR EQUAL TO
-}
(≤) ∷ Ord α ⇒ α → α → Bool
(≤) = (<=)

{- |
(&#x2265;) = ('>=')

U+2265, GREATER-THAN OR EQUAL TO
-}
(≥) ∷ Ord α ⇒ α → α → Bool
(≥) = (>=)

{- |
(&#x226E;) = ('>=')

U+226E, NOT LESS-THAN
-}
(≮) ∷ Ord α ⇒ α → α → Bool
(≮) = (>=)

{- |
(&#x226F;) = ('<=')

U+226F, NOT GREATER-THAN
-}
(≯) ∷ Ord α ⇒ α → α → Bool
(≯) = (<=)

{- |
&#x03C0; = 'pi'

U+03C0, GREEK SMALL LETTER PI
-}
π ∷ Floating α ⇒ α
π = pi

{- |
(&#x00F7;) = ('/')

U+00F7, DIVISION SIGN
-}
(÷) ∷ Fractional α ⇒ α → α → α
(÷) = (/)

{- |
(&#x22C5;) = ('*')

U+22C5, DOT OPERATOR
-}
(⋅) ∷ Num α ⇒ α → α → α
(⋅) = (*)

{- |
(&#x2218;) = ('.')

U+2218, RING OPERATOR
-}
(∘) ∷ (b → c) → (a → b) → (a → c)
(∘) = (.)

{- |
(&#x2208;) = 'elem'

U+2208, ELEMENT OF
-}
(∈) ∷ Eq α ⇒ α → [α] → Bool
(∈) = elem

{- |
x &#x2209; y = 'not' (x &#x2208; y)

U+2209, NOT AN ELEMENT OF
-}
(∉) ∷ Eq α ⇒ α → [α] → Bool
x ∉ y = not (x ∈ y)

{- |
(&#x22A5;) = 'undefined'

U+22A5, UP TACK
-}
(⊥) ∷ α
(⊥) = undefined
