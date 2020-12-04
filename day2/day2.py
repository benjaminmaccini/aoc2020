#!/usr/bin/env python
# -*- coding: utf-8 -*-
f = open("day2/day2.txt")

# [[min/first, max/last, letter, pw]]
pws = [
    l.strip()
    .replace("-", " ")
    .replace(":","")
    .split(" ") for l in f.readlines()
]

# Part 1
count = 0
for pw in pws:
    valid = {pw[2]: 0}
    for l in pw[3]:
        if l in valid:
            valid[l] += 1
        else:
            valid[l] = 1
    if valid[pw[2]] <= int(pw[1]) and valid[pw[2]] >= int(pw[0]):
        count += 1

print(count)

# Part 2
count = 0
for pw in pws:
    if (pw[3][int(pw[0]) - 1] == pw[2]) != (pw[3][int(pw[1]) - 1] == pw[2]):
        count += 1

print(count)
