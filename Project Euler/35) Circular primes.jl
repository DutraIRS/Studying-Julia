using Primes

function is_circular_prime(p)
    is_circular_prime = true
    p = string(p)
    pp = p*p

    for i in 1:length(p)
        rotation = parse(Int, pp[i:length(p)+i-1])
        if !isprime(rotation)
            is_circular_prime = false
            break
        end
    end

    return is_circular_prime
end

num_circular_primes = 0

for i in 1:999_999
    if is_circular_prime(i)
        global num_circular_primes += 1
    end
end

println(num_circular_primes)