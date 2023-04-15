using Primes

# Let's consider the inicial number (m), the last will be m + 6660 = o
# For o to have 4 digits, m must be no greater than 3339
# We already know there's only one solution, therefore:
for m in 1001:3339
    if isprime(m) && m != 1487
        n = m + 3330
        if isprime(n)
            o = n + 3330
            if isprime(o)
            # Written this way, we skip unnecessary calculations
                
                m = string(m)
                n = string(n)
                o = string(o)

                sorted_m = sort!(Array(collect(m)))
                sorted_n = sort!(Array(collect(n)))
                sorted_o = sort!(Array(collect(o)))

                if sorted_m == sorted_n && sorted_m == sorted_o
                    result = join(m)*join(n)*join(o)
                    println(result)
                    break
                end
            end
        end
    end
end
