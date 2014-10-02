{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Functor.Unicode
Copyright  : 2014 Brian Chen
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Functor.Unicode ( (§) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Functor ( Functor, (<$>) )

-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 4 §

-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#xA7;) = ('<$>')

U+A7, SECTION SYMBOL
-}
(§) ∷ Functor f ⇒ (α → β) → f α → f β
(§) = (<$>)
{-# INLINE (§) #-}
