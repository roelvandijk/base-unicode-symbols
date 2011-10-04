{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Control.Applicative.Unicode
Copyright  : 2009–2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Applicative.Unicode ( (⊛), (∅) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Applicative ( Applicative, Alternative, (<*>), empty )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infixl 4 ⊛


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x229B;) = '<*>'

U+229B, CIRCLED ASTERISK OPERATOR
-}
(⊛) ∷ Applicative f ⇒ f (α → β) → f α → f β
(⊛) = (<*>)
{-# INLINE (⊛) #-}

{-|
(&#x2205;) = 'empty'

U+2205, EMPTY SET
-}
(∅) ∷ Alternative f ⇒ f α
(∅) = empty
{-# INLINE (∅) #-}
