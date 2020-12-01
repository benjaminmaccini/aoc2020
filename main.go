package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// Convert a text file to a list of integers
func Text2IntList(fn string) []int {
	file, err := os.Open(fn)
	if err != nil {
		panic(err)
	}

	defer file.Close()

	scanner := bufio.NewScanner(file)

	var ilist []int

	for scanner.Scan() {
		i, err := strconv.Atoi(scanner.Text())
		if err != nil {
			panic(err)
		}
		ilist = append(ilist, i)
	}

	return ilist
}

// Day 1 (Part 1)
// Find the two numbers that sum to 2020, then return their product
func FirstTwoSum(input []int, target int) int {
	for i, n := range input {
		if n < target {
			for _, nn := range input[i+1:] {
				if (n + nn) == target {
					fmt.Printf("%d %d\n", n, nn)
					return n * nn
				}
			}
		}
	}
	return 0
}

// Day 1 (Part 2)
// Find the three numbers that sum to 2020, then return their product
func FirstThreeSum(input []int, target int) int {
	for i, n := range input {
		if n < target {
			for ii, nn := range input[i+1:] {
				if (n + nn) < target {
					for _, nnn := range input[ii+1:] {
						if (n + nn + nnn) == target {
							fmt.Printf("%d %d %d\n", n, nn, nnn)
							return n * nn * nnn
						}
					}

				}
			}
		}
	}
	return 0
}

func main() {
	input := Text2IntList("p1.txt")
	fmt.Printf("Day 1 - Part 1: %d\n", FirstTwoSum(input, 2020))
	fmt.Printf("Day 1 - Part 2: %d\n", FirstThreeSum(input, 2020))
}
