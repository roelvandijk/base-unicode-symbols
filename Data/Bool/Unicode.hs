{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Bool.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Bool.Unicode ( (∧), (∨), (¬) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool ( Bool, (&&), (||), not )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 2 ∨
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

{-|
(&#x2227;) = ('&&')

U+2227, LOGICAL AND
-}
(∧) ∷ Bool → Bool → Bool
(∧) = (&&)

{-|
(&#x2228;) = ('||')

U+2228, LOGICAL OR
-}
(∨) ∷ Bool → Bool → Bool
(∨) = (||)
