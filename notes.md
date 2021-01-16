# Notes

I want to do a write-up after this to make up some sort of meaning from my cursory
exploration into a bunch of different languages. So! I'm gonna jot down some notes
as I think them up.

This seems like more of a judgement on the protability of certain languages,
whether or not certain ones are good for general scripting, how hard they are
to learn, how tricky it is to get started on my machine...

A table perhaps?

Note: Tier is completely subjective

| Language   | Scripting | Learning  (enough to complete the challenge)                    | Getting started | Tier |
| ---        | ---       | ---                                                             | ---             | ---  |
| Go         | 8         | 10 (lots of resources)                                          | 9               | S    |
| Python     | 10        | 9 (too many resources)                                          | 10              | A    |
| C          | 3         | 6 (I used a printed pamphlet lol)                               | 7               | B    |
| Haskell    | 2 or 8    | 7 (wealth of resources, but have to REALLY learn it)            | depends         | S    |
| Julia      | 8         | 9 (Base documentation is great)                                 | 10              | A    |
| BASH       | 10        | 8 (Everyone has their own flavor, sometimes competing)          | 8               | B    |
| Zig        | 4         | 5 (There aren't all that many resources, errors can be unclear) | 5               | C    |
| Perl       | 10        | 10                                                              | 10              | A    |
| Javascript | 8         | 8                                                               | 7               | C    |
| Typescript | 8         | 8                                                               | 8               | A    |

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
- http://dev.stephendiehl.com/hask/tutorial.pdf
- https://www.youtube.com/channel/UC3xdLFFsqG701QAyGJIPT1g
- http://book.realworldhaskell.org/read/

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

## Perl

### Resources
- https://learn.perl.org/

### Thoughts

Readable, wealth of WELL WRITTEN resources. There is something about it (whether it's the fact it's not the de facto language to be
taught in school, or it's had a strong community to build more centralized resources) but Perl really hits the documentation sweet
spot. It's up there with Go on that.

Solid scripting language, works well with shell commands. Provides a bit more type safety with certain values like arrays and hashmaps.
And the error messages, wow, these are the most informative error messages I have ever seen. If Python didn't have such a rocking,
third-party package ecosystem, I would use Perl more, for sure.

Only downside is that syntactical sugar for array vs hash vs value vs reference can get a bit confusing, at least for me. Also,
the way subroutines are defined don't force clear function signatures, which, without good documentation creates tricky to decipher functions.

## Javascript / Typescript / Coffeescript

I'm gonna group these guys since they are very similar. Javascript is easy to write, has some querks and funcitonality that I won't
explore in this series of code snippits, but the main takeaway is that it is easy to write and read. Because it's a web standard,
there is clear and comprehensive documentation from so many different resources.

Both Typescript and Coffeescript compile down to Javascript. Typescript is a professional, modern addition to js... It is akin
to some work that did in Python using mypy + Data Classes + type hints....

## Elixir

https://www.youtube.com/watch?v=cWAHpvkh8Vs

# Conclusion

Written on 1/15/2021

You might notice that I have made it barely half way... not nearly to my proposed 25 languages. Simply put... life gets in the way and a
series of revelations led to my decision to stop. First is the opportunity cost of learning these languages. Learning this many
languages, even at a surface level, takes time. Each language has different core principles that drive their logical structure. 
Haskell challenged me to come up with an elegant recursive solution and Julia led me to a unique, abliet slow, idiomatic solution
that utilized their matrix-operation-friendly syntax. Knowing multiple paradigms is invaluable, and ultimately transferable to whatever
tools/language I choose to use in my career. A second time sink is the syntax. I get it. Every language needs to be written differently
with their own syntactical sugar and spices, but it is a non trivial problem to try and learn them and I don't find nailing the nuances of 
a language to be particularly rewarding.

I don't, you don't, in fact very few people NEED to learn, or even be able to make sense of 25 different languages.
I am a person who needs money in exchange for goods in services, so naturally the job market dictates my needs. Job searching is rough, and I personally
struggle with the timeless advice I have recieved: "it's a numbers game." The urge to cast my net and be relevant to as many jobs as possible, however mildly so,
is foolish, frankly, but strong nonetheless. Companies reach out to you for your strong suits, and it makes sense to lean into that. I feel as though
my demonstration of learning languages was more a desperate attempt to solve the paradox of "need experince to get experience." There are absolutely
amazing programmers out there that just know javascript (this is more of me telling me this). Perhaps it's a young man's revelation to say, "Oh, so
I should focus on specific things to get great at instead of being mildly good at a bunch of things" Duh. What's that phrase about a jack and... oh
I forget. I will say, it is nice being able to binary search my was to a decent tech stack based on the problem space.
I feel as though (perhaps just a bit) I can see a specific problem and recognize not only a solution that would be appropriate, but a language to write it
in. Not everything needs to be object oriented. Not everything needs to have strong asynchronous support. Sometimes it's nice to use things more than expressions. 
Strong typing can be a burden. There is no "right" answer when you go up to a person or a team, and ask "what's the best language for X?". But given a nail and
a bag of tools, I feel comfortable saying "probably should use some sort of blunt object, most people go for a hammer".
- Go is good for backend services, concurrency and networking
- Python is a diverse language that can be used for almost anything, but it's important to make use strong 3rd party libraries
- Perl is a truly free scripting language that plays nicely with input parsing.
- Bash is a glue that holds everything together
- Zig is a budding improvement on C
- C is for low-level programming and operating systems
- Haskell is great for clearly separated businees logic, and critical systems
- Julia is great for machine learning problems
- Javascript is the web. The web is javascript. Async and beautiful.
- Typescript is lends professional, maintainable js code
- The rest? I don't know.

My biggest takeaways are;
- I can get through 99% of all problems with Python.
- Languages can be useful vectors for teaching CS fundamentals. If you are starting out, learn C, Haskell, Go, and Python
- Generalized comparisons between languages is ignorant. Languages are different and have both pros and cons, there is no
perfect solution for your problem.

All in all this was a favorable experience and I don't think I can ever call this project "completely abandoned" (although it definitely is partly). I
like the challenge.
