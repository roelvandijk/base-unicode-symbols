{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE UnicodeSyntax #-}

module Control.Category.Unicode ( (∘) ) where

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
(∘) ∷ Category cat ⇒ cat b c → cat a b → cat a c
(∘) = (.)

