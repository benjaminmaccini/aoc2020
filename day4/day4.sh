#!/bin/bash
set -e

# I couldn't for the life of me figure out how to split on a blank line
# so use this "clever" hack
sed 's/^$/-/g' day4/day4.txt > day4/day4_new.txt
echo "-" >> day4/day4_new.txt

rm day4/day4_flattened.txt
touch day4/day4_flattened.txt

while IFS= read -r -d $'-' p; do
  echo $p >> day4/day4_flattened.txt
done < day4/day4_new.txt

# Note basic grep doesn't support positive look ahead in regex (i.e. ?=.), so gotta do perl's regex
regex='(?=.*byr)(?=.*iyr)(?=.*eyr)(?=.*hgt)(?=.*hcl)(?=.*ecl)(?=.*pid)'
echo $(ggrep -P $regex day4/day4_flattened.txt | wc -l)

regex='(?=.*(byr:(?:19[2-9][0-9]|200[0-2])))(?=.*(iyr:(?:201[0-9]|2020)))(?=.*(eyr:(?:202[0-9]|2030)))(?=.*hgt:((?:1[5-8][0-9]|19[0-3])cm|(?:59|6[0-9]|7[0-6])in))(?=.*(hcl:#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})))(?=.*(ecl:(?:amb|hzl|blu|brn|gry|grn|oth)))(?=.*(pid:\d{9}\b))'
echo $(ggrep -P $regex day4/day4_flattened.txt | wc -l)

