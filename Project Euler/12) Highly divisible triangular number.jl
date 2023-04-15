using Primes

num = 28
index = 7

num_divisors = 1

while num_divisors <= 500
    global index += 1
    global num += index
    global num_divisors = 1
    # Pay attention to the fact that the increment of the index must be done before num is incremented
    # Since 28 is the 7th triangular number, the 8th is obtained by adding 8
    
    factorization = collect(factor(num))

    for i in 1:length(factorization)
        global num_divisors *= factorization[i][2] + 1
    end
end

println(num)