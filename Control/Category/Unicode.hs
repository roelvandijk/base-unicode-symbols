{-# LANGUAGE UnicodeSyntax #-}

module Control.Category.Unicode
    ( (∘)
    ) where

import Prelude hiding ( (.) )
import Control.Category

{- |
(&#x2218;) = ('.')

U+2218, RING OPERATOR
-}
(∘) ∷ Category cat ⇒ cat b c → cat a b → cat a c
(∘) = (.)

infixr 9 ∘
