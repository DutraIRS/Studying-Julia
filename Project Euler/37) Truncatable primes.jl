using Primes

function is_truncatable_prime(n)
    is_truncatable_prime = true

    for i in "0468"
        if occursin(i, string(n))
            is_truncatable_prime = false
            break
        end
    end
    
    for i in 1:length(string(n))
        if !isprime(parse(Int, string(n)[i:end])) || !isprime(parse(Int, string(n)[1:i]))
            is_truncatable_prime = false
            break
        end
    end
    
    return is_truncatable_prime
end

truncatable_primes = []
counter = 5
# 2, 3, 5, 7 are not truncatable primes, so we begin with the 5th prime

while length(truncatable_primes) < 11
    num = prime(counter)
    
    if is_truncatable_prime(num)
        push!(truncatable_primes, num)
    end
    
    global counter += 1
end

println(sum(truncatable_primes))