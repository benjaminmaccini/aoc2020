# Notes

I want to do a write-up after this to make up some sort of meaning from my cursory
exploration into a bunch of different languages. So! I'm gonna jot down some notes
as I think them up.

This seems like more of a judgement on the protability of certain languages,
whether or not certain ones are good for general scripting, how hard they are
to learn, how tricky it is to get started on my machine...

A table perhaps?

| Language | Scripting | Learning  (enough to complete the challenge)                  | Getting started | Tier |
| ---      | ---       | ---                                                           | ---             | ---  |
| Go       | 8         | 10 (lots of resources)                                        | 9               | S    |
| Python   | 10        | 9 (too many resources)                                        | 10              | A    |
| C        | 3         | 6 (I used a printed pamphlet lol)                             | 7               | B    |
| Haskell  | 2 or 8    | 7 (wealth of resources, but have to REALLY learn it)          | depends         | S    |
| Julia    | 10        | 10 (Base documentation is great)                              | 10              | A    |
| BASH     | 10        | 8 (Everyone has their own flavor, sometimes competing)        | 8               | S    |
| Zig      | 4         | 5 (There aren't all that many resources, can't google errors) | 5               | C    |
|          |           |                                                               |                 |      |

## Quarter Thoughts

I've made it through about 6 different languages now. This is making me think about a couple things.
- Knowing what language to use for a problem. What do you car about? Community (I should add this column),
speed, web, business logic, research (in what sector), language development itself??? I know programmers love analogies,
so here's one; Knowing a bunch of languages is like having a Swiss Army Knife... You know exactly when to use each tool,
but to be honest, you've never REALLY used the can opener, so when you go to use it... it takes forever.
- Most important languages to learn? Python (*idiomatic* numpy, scipy, tensorflow), Haskell, and C.
- Favorite language? Go

It's got me thinking a lot about the opportunity cost of learning a new language. Most things can be written in most things,
and, sure, some things are better written in some things. On top of that, learning to write idiomatic code is inherently
difficult and needs to be factored into the equation as well. Some langauges make it easier with built-in tooling,
other allow flavors of styling on a per-developer preference, but regardless, across langauges, it changes greatly.

## General

Look at real life open source projects... useful for writing idiomatic code.

What does it mean to be statically type? A: Types are assigned to a variable at compile time. This
differs from dynamically typed, which assigns type to a variable at runtime. Although certain 
statically-typed langauges provide type inferencing (Haskell), and most dynamically typed 
langauges allow for type-hinting (which is important for documentation)

[Learn X in Y Minutes](https://learnxinyminutes.com/) is a great resource for this project, although "learn" isn't necessarily accurate.

After doing a few I'm starting to learn that entirely learning a couple languages over barely learning several is
truly the path to excellence, although exposure to competing paradigms.

## Python

Scripting, ML, readability, documentation, community, broad demand.

Setting up on a Mac 0/10

## Go

A great cross between type safety, readability and portability. A truly solid modern language. Makes concurrency
accessible.

## Haskell

### Resources
http://dev.stephendiehl.com/hask/tutorial.pdf
https://www.youtube.com/channel/UC3xdLFFsqG701QAyGJIPT1g

### Thoughts

Haskell is unlike anything I have ever done. It is strict and immediately difficult to read. Because it is a functional
programming language it requires you to write everything in a functional manner, even IO. Coming from an imperative background
this is especially tricky.

Canonical functional programming example.

- In order to read a file into Haskell and Parse it I had to learn the basics of functional programming
this is partly due to the IO Monad
- Haskell is incredibly mathematical. functions are defined as in proofs, things like otherwise.
- What is a lazy language? A: Refers to lazy evaluation. Values are not computed till they are needed, caching the results.
- Some video said most functions in Haskell are recursive functions. Neat.

What is Haskell good for? Probably applications with no GUI, minimal IO and a lot of pure, mathematical, logic.

## Julia

Package management seems heavy and runtime execution (for scripting) is sluggish.

APLs are great for ML/stats it seems with broadcasting and strong supporting packages... the most popular package in Julia is [flux](https://fluxml.ai/Flux.jl/stable/).

## BASH

Great as a glue language, built in utilities are great for most things. Essential.

## Zig

### Resources
- https://ziglang.org/documentation/0.6.0/std/#std
- https://ziglang.org/documentation/0.6.0/
- https://ziglearn.org/

### Thoughts

Budding community and language is already changing rapidly. hello_world.zig doesn't work across versions 0.6.0 and 0.7.1 (at the time of 
writing this.) However, the source of documentation is centralized and clear, so the previous issue wasn't much of an issue, just something
to be aware of. Installing with brew gives me 0.6.0, so that's what I'll use. Volatility in the language makes learning-by-example difficult,
I couldn't use Google/Stack Overflow. I feel like it could benefit from better-uniformed naming conventions for APIs across types. I like how
the error handling is treated, although prefer Go's over the conventional `try` statement in Zig. Some of the docs had dead links, or were just
TODO comments.
  
Ultimately, most of my criticism is aimed at the language's infancy. Pretty excited to see an "upgraded" C and will definitely be looking at it more
in the coming years, especially once the organizational side of the language matures more.
