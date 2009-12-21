{-# LANGUAGE UnicodeSyntax #-}

module Data.Monoid.Unicode 
    ( (∅)
    , (⊕) 
    ) where

import Data.Monoid ( Monoid, mempty, mappend )

{- |
(&#x2205;) = 'mempty'

U+2205, EMPTY SET
-}
(∅) ∷ Monoid α ⇒ α
(∅) = mempty

{- |
(&#x2295;) = 'mappend'

U+2295, CIRCLED PLUS
-}
(⊕) ∷ Monoid α ⇒ α → α → α
(⊕) = mappend

infixr 6 ⊕
