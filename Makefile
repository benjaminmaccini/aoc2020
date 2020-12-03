day1:
	go run day1-go/day1.go

day2:
	python day2-python/day2.py

day3-build:
	gcc day3-C/day3.c -o day3-C/day3

day3: day3-build
	./day3-C/day3

all: day1 day2
	echo 'Merry merry'
