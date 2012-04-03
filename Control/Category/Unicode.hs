{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Control.Category.Unicode
Copyright  : 2009–2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Category.Unicode ( (∘), (⋙), (⋘) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Category ( Category, (.), (>>>), (<<<) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixr 9 ∘
infixr 1 ⋙, ⋘


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2218;) = ('.')

U+2218, RING OPERATOR
-}
(∘) ∷ Category c ⇒ c β γ → c α β → c α γ
(∘) = (.)
{-# INLINE (∘) #-}

{-|
(&#x22D9;) = ('>>>')

U+22D9, VERY MUCH GREATER-THAN
-}
(⋙) ∷ Category c ⇒ c α β → c β γ → c α γ
(⋙) = (>>>)
{-# INLINE (⋙) #-}

{-|
(&#x22D8;) = ('<<<')

U+22D8, VERY MUCH LESS-THAN
-}
(⋘) ∷ Category c ⇒ c β γ → c α β → c α γ
(⋘) = (<<<)
{-# INLINE (⋘) #-}
