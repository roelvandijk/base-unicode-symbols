{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Eq.Unicode
Copyright  : 2009–2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Eq.Unicode ( (≡), (≢), (≠) ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Data.Bool ( Bool )
import Data.Eq   ( Eq, (==), (/=) )


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

infix  4 ≡
infix  4 ≢
infix  4 ≠

-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2261;) = ('==')

U+2261, IDENTICAL TO
-}
(≡) ∷ Eq α ⇒ α → α → Bool
(≡) = (==)
{-# INLINE (≡) #-}

{-|
(&#x2262;) = ('/=')

U+2262, NOT IDENTICAL TO
-}
(≢) ∷ Eq α ⇒ α → α → Bool
(≢) = (/=)
{-# INLINE (≢) #-}

{-|
(&#x2260;) = ('/=')

U+2260, NOT EQUAL TO
-}
(≠) ∷ Eq α ⇒ α → α → Bool
(≠) = (/=)
{-# INLINE (≠) #-}
