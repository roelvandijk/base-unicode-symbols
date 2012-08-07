This package defines Unicode symbol aliases for a number of functions and
operators in the `base` package of the Haskell standard library.
Many of these aliases enable the use of standard mathematical notation in place of ASCII approximations or textual names.
For example, `(∧)` (U+2227 LOGICAL AND) can be used in place of `(&&)` for boolean AND.

All symbols are documented with their actual definition and their Unicode code point. They should be
completely interchangeable with their definitions.

# Versus the `UnicodeSyntax` language extension

This library only provides Unicode aliases for *library* functions.
If you want to use Unicode symbols for core language tokens, also enable the
[`UnicodeSyntax`](http://www.haskell.org/ghc/docs/latest/html/users_guide/syntax-extns.html#unicode-syntax)
language extension. This extension enables Unicode characters to be
used to stand for certain ASCII character sequences, i.e. `→` instead of
`->`, `∀` instead of `forall` and many others.

# Credits

Original idea by Péter Diviánszky.
