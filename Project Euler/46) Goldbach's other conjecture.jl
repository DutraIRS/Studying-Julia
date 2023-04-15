using Primes

function breaks_goldbach(n)
    primes_list = primes(n)

    for prime in primes_list
        for i in 0:n
            if prime + 2*i^2 == n
                return false
            end
        end
    end

    return true
end

n = 9
while true
    if !isprime(n) && breaks_goldbach(n)
        println(n)
        break
    end
    global n += 2
end