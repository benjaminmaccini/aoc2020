using DelimitedFiles
using ImageFiltering

mTemp = [split(s, "") for s in readdlm("day11/day11.txt")]
d = Dict{String, Integer}("." => 0, "L" => 1)

# Get into matrix form 
seats = []
for r in mTemp
  push!(seats, [d[c] for c in r])
end

# For degugging purposes
seats = [
  1 0 1 1 0 1 1 0 1 1;
  1 1 1 1 1 1 1 0 1 1;
  1 0 1 0 1 0 0 1 0 0;
  1 1 1 1 0 1 1 0 1 1;
  1 0 1 1 0 1 1 0 1 1;
  1 0 1 1 1 1 1 0 1 1;
  0 0 1 0 1 0 0 0 0 0;
  1 1 1 1 1 1 1 1 1 1;
  1 0 1 1 1 1 1 1 0 1;
  1 0 1 1 1 1 1 0 1 1
]

seats = Bool.(seats)
println(seats)

occupied = zeros(Bool, size(seats))

k1 = [1 1 1; 1 0 1; 1 1 1]

surrounding = imfilter(occupied, centered(k1))
toBeOccupied = surrounding .== 0
toBeAbandoned = surrounding .>= 4

println(surrounding)

# Seats to be occupied and abandoned are mutually exclusive
occupied = occupied .+ (seats .& toBeOccupied) .- (seats .& toBeAbandoned)
println(occupied)

surrounding = imfilter(occupied, centered(k1))
toBeOccupied = surrounding .== 0
toBeAbandoned = surrounding .>= 4
println(surrounding)
occupied = occupied .+ (seats .& toBeOccupied) .- (seats .& toBeAbandoned)
println(occupied)
