using Primes

summation = 0

for n in 1:1999999
    if isprime(n)
        global summation += n
    end
end

println(summation)