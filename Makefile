.PHONY: day1 day2 day3 day4 day5 day6 day7 day8

day1:
	go run day1/day1.go

day2:
	poetry run python day2/day2.py

day3-build:
	gcc day3/day3.c -o day3/day3

day3: day3-build
	./day3/day3

day4:
	bash day4/day4.sh

day5:
	runhaskell day5/day5.hs

day6:
	zig run day6/day6.zig

day7:
	cpanm --quiet Path::Tiny && perl day7/day7.pl

day8:
	node day8/day8.js

day11:
	julia day11/day11.jl

# TODO Broken
# make fetch DAY=n
fetch:
	mkdir -p "day${DAY}" \
	&& poetry run aocd $(DAY) 2020 > "day${DAY}/day${DAY}.txt"

