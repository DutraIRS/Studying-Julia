using Primes

function prime_cycle_length(a, b)
    n = 0
    p = n^2 + a*n + b
    length = 0

    while isprime(p)
        length += 1
        n += 1
        p = n^2 + a*n + b
    end

    length
end

results = Dict("max_length" => 0, "max_a" => 0, "max_b" => 0)

for a in -999:999, b in -999:999
    if isprime(b)
        length = prime_cycle_length(a, b)

        if length > results["max_length"]
            global results["max_length"] = length
            global results["max_a"] = a
            global results["max_b"] = b
        end

    end
end

println(results["max_a"] * results["max_b"])