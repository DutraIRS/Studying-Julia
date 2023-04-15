using Primes

factors = collect(factor(600851475143))
# Returns a Vector of Pairs in which the first element is the prime factor and the second is its power
# The largest prime factor is the first element of the last pair

largest_factor = factors[end][1]

println(largest_factor)