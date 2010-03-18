{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

{-|
Module     : Data.Eq.Unicode
Copyright  : (c) 2009–2010 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Data.Eq.Unicode ( (≡), (≢) ) where


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


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

{-|
(&#x2261;) = ('==')

U+2261, IDENTICAL TO
-}
(≡) ∷ Eq α ⇒ α → α → Bool
(≡) = (==)

{-|
(&#x2262;) = ('/=')

U+2262, NOT IDENTICAL TO
-}
(≢) ∷ Eq α ⇒ α → α → Bool
(≢) = (/=)
