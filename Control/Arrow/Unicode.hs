{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax, TypeOperators #-}

{-|
Module     : Control.Arrow.Unicode
Copyright  : (c) 2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Arrow.Unicode ( (⋙), (⋘), (⧻), (⫴) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Arrow ( ArrowChoice, (+++), (|||) )
import Data.Either   ( Either )

-- from base-unicode-symbols
import Control.Category.Unicode ( (⋙), (⋘) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 2 ⧻
infixr 2 ⫴


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------


{-|
(&#x29FB;) = ('+++')

U+29FB, TRIPLE PLUS
-}
(⧻) ∷ ArrowChoice (⇝) ⇒ (α ⇝ β) → (α' ⇝ β') → (Either α α' ⇝ Either β β')
(⧻) = (+++)

{-|
(&#x2AF4;) = ('|||')

U+2AF4, TRIPLE VERTICAL BAR BINARY RELATION
-}
(⫴) ∷ ArrowChoice (⇝) ⇒ (α ⇝ δ) → (β ⇝ δ) → (Either α β ⇝ δ)
(⫴) = (|||)
