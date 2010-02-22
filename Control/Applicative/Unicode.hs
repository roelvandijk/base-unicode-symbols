{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE UnicodeSyntax #-}

module Control.Applicative.Unicode ( (⊛), (∅) ) where

import Control.Applicative ( Applicative, Alternative
                           , (<*>), empty
                           )


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

{-|
(&#x2205;) = 'empty'

U+2205, EMPTY SET
-}
(∅) ∷ Alternative f ⇒ f α
(∅) = empty
