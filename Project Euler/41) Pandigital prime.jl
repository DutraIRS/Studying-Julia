using Primes

function is_pandigital(n)
    is_pandigital = true
    
    for i in 1:length(string(n))
        if !occursin(string(i), string(n))
            is_pandigital = false
            break
        end
    end

    return is_pandigital
end

primes_list = primes(1_000_000_000)

reversed_primes_list = primes_list[end:-1:1]

for prime in reversed_primes_list
    if is_pandigital(prime)
        println(prime)
        break
    end
end