#=
Note that, no matter the path,
there will be 20 right moves and 20 down moves.
Therefore, we are looking for the number of ways
to permutate 40 moves with the repetitions mentioned.
=#

num_ways = factorial(big(40))/factorial(20)/factorial(20)
println(num_ways)
# The output is in scientific notation