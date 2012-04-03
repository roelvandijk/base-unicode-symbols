{-# LANGUAGE CPP, NoImplicitPrelude, UnicodeSyntax, TypeOperators #-}

{-|
Module     : Control.Arrow.Unicode
Copyright  : 2010—2011 Roel van Dijk
License    : BSD3 (see the file LICENSE)
Maintainer : Roel van Dijk <vandijk.roel@gmail.com>
-}

module Control.Arrow.Unicode
    ( (⋙)
    , (⋘)
#if defined(__GLASGOW_HASKELL__) && __GLASGOW_HASKELL__ > 608
    , (⁂)
#endif
    , (⧻)
    , (⫴)
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Arrow ( Arrow, (***), ArrowChoice, (+++), (|||) )
import Data.Either   ( Either )

#if (MIN_VERSION_base(3,0,3))
-- from base-unicode-symbols
import Control.Category.Unicode ( (⋙), (⋘) )
#else
import Control.Arrow ( (>>>), (<<<) )
#endif


-------------------------------------------------------------------------------
-- Fixities
-------------------------------------------------------------------------------

#if defined(__GLASGOW_HASKELL__) && __GLASGOW_HASKELL__ > 608
infixr 3 ⁂
#endif
infixr 2 ⧻
infixr 2 ⫴
#if ! (MIN_VERSION_base(3,0,3))
infixr 1 ⋙, ⋘
#endif


-------------------------------------------------------------------------------
-- Symbols
-------------------------------------------------------------------------------

#if defined(__GLASGOW_HASKELL__) && __GLASGOW_HASKELL__ > 608
{-|
(&#x2042;) = ('***')

U+2042, ASTERISM
-}
(⁂) ∷ Arrow a ⇒ a α β → a α' β' → a (α, α') (β, β')
(⁂) = (***)
{-# INLINE (⁂) #-}
#endif

{-|
(&#x29FB;) = ('+++')

U+29FB, TRIPLE PLUS
-}
(⧻) ∷ ArrowChoice a ⇒ a α β → a α' β' → a (Either α α') (Either β β')
(⧻) = (+++)
{-# INLINE (⧻) #-}

{-|
(&#x2AF4;) = ('|||')

U+2AF4, TRIPLE VERTICAL BAR BINARY RELATION
-}
(⫴) ∷ ArrowChoice a ⇒ a α δ → a β δ → a (Either α β) δ
(⫴) = (|||)
{-# INLINE (⫴) #-}

#if ! (MIN_VERSION_base(3,0,3))
{-|
(&#x22D9;) = ('>>>')

U+22D9, VERY MUCH GREATER-THAN
-}
(⋙) ∷ Arrow a ⇒ a α β → a β γ → a α γ
(⋙) = (>>>)
{-# INLINE (⋙) #-}

{-|
(&#x22D8;) = ('<<<')

U+22D8, VERY MUCH LESS-THAN
-}
(⋘) ∷ Arrow a ⇒ a β γ → a α β → a α γ
(⋘) = (<<<)
{-# INLINE (⋘) #-}
#endif
