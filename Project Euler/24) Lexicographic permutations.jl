using Combinatorics

desired_permutation = nthperm([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 1_000_000)

desired_number = parse(Int, join(desired_permutation))

println(desired_number)