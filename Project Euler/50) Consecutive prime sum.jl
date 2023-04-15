using Primes

primes_list = primes(1000_000)

function is_consec_prime_sum(n, primes_list)
    for i in 1:length(primes_list)
        sum = 0
        chain = 0
        for j in i:length(primes_list)
            sum += primes_list[j]
            chain += 1
            if sum == n
                return [true, chain]
            elseif sum > n
                break
            end
        end
    end
    return false
end

longest_chain = 0
longest_chain_prime = 2

for prime in primes_list
    if Bool(is_consec_prime_sum(prime, primes_list)[1])
        if is_consec_prime_sum(prime, primes_list)[2] > longest_chain
            global longest_chain = is_consec_prime_sum(prime, primes_list)[2]
            global longest_chain_prime = prime
        end
    end
end

println(longest_chain_prime)