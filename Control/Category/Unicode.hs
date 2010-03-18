{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Control.Category.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Category.Unicode ( (∘) ) where

-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Category ( Category, (.) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 9 ∘


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2218;) = ('.')

U+2218, RING OPERATOR
-}
(∘) ∷ Category cat ⇒ cat β γ → cat α β → cat α γ
(∘) = (.)

