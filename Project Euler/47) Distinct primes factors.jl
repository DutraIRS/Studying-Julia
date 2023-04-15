using Primes

function has_four_prime_factors(n)
    a = collect(factor(n))
    length(a) == 4
end

function four_desired_consecutives(n)
    for i in n:n+3
        if !has_four_prime_factors(i)
            return false
        end
    end
    return true
end

counter = 0

while true
    if four_desired_consecutives(counter)
        break
    end
    global counter += 1
end

println(counter)