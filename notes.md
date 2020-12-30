# Notes

I want to do a write-up after this to make up some sort of meaning from my cursory
exploration into a bunch of different languages. So! I'm gonna jot down some notes
as I think them up.

This seems like more of a judgement on the protability of certain languages,
whether or not certain ones are good for general scripting, how hard they are
to learn, how tricky it is to get started on my machine...

A table perhaps?

| Language | Scripting | Learning  (enough to complete the challenge)         | Getting started | Tier |
| ---      | ---       | ---                                                  | ---             | ---  |
| Go       | 8         | 10 (lots of resources)                               | 9               | S    |
| Python   | 10        | 9 (too many resources)                               | 10              | A    |
| C        | 3         | 6 (I used a printed pamphlet lol)                    | 7               | B    |
| Haskell  | 2 or 8    | 7 (wealth of resources, but have to REALLY learn it) | depends         | S    |
|          |           |                                                      |                 |      |


## General

Look at real life open source projects... useful for writing idiomatic code.

What does it mean to be statically type? A: Types are assigned to a variable at compile time. This
differs from dynamically typed, which assigns type to a variable at runtime. Although certain 
statically-typed langauges provide type inferencing (Haskell), and most dynamically typed 
langauges allow for type-hinting (which is important for documentation)

## Haskell
Haskell is unlike anything I have ever done. It is strict and immediately difficult to read. Because it is a functional
programming language it requires you to write everything in a functional manner, even IO. Coming from an imperative background
this is especially tricky.



- In order to read a file into Haskell and Parse it I had to learn the basics of functional programming
this is partly due to the IO Monad
- Haskell is incredibly mathematical. functions are defined as in proofs, things like otherwise.
- What is a lazy language? A: Refers to lazy evaluation. Values are not computed till they are needed, caching the results.
- Some video said most functions in Haskell are recursive functions. Neat.
