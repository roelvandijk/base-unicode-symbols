{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

module Data.Bool.Unicode ( (∧), (∨), (¬), (⊻), (⊼), (⊽) ) where

-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool ( Bool, (&&), (||), not )

-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 2 ∨
infixr 3 ⊽
infixr 3 ⊼
infixr 3 ⊻
infixr 3 ∧


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x00AC;) = 'not'

U+00AC, NOT SIGN
-}
(¬) ∷ Bool → Bool
(¬) = not
{-# INLINE (¬) #-}

{-|
(&#x2227;) = ('&&')

U+2227, LOGICAL AND
-}
(∧) ∷ Bool → Bool → Bool
(∧) = (&&)
{-# INLINE (∧) #-}

{-|
(&#x2228;) = ('||')

U+2228, LOGICAL OR
-}
(∨) ∷ Bool → Bool → Bool
(∨) = (||)
{-# INLINE (∨) #-}

{-|
a &#x22bb; b = (a &#x2228; b) &#x2227; not (a &#x2227; b)

U+22BB, XOR
-}
(⊻) ∷ Bool → Bool → Bool
a ⊻ b = (a || b) && not (a && b)
{-# INLINE (⊻) #-}

{-|
a &#x22bc; b = not (a &#x2227; b)

U+22bc, NAND
-}
(⊼) ∷ Bool → Bool → Bool
a ⊼ b = not (a && b)
{-# INLINE (⊼) #-}

{-|
a &#x22bd; b = not (a &#x2228; b)

U+22bd, NOR
-}
(⊽) ∷ Bool → Bool → Bool
a ⊽ b = not (a || b)
{-# INLINE (⊽) #-}
