function d(n)
    proper_divisors = []
    
    for i in 1:n/2+1
        if n%i == 0
            push!(proper_divisors, i)
        end
    end

    return sum(proper_divisors)
end

function is_amicable(n)
    # d(a) = b and d(b) = a <=> d(d(a)) = a
    d(d(n)) == n && d(n) != n
end

amicable_sum = 0

for a in 1:10000
    if is_amicable(a)
        global amicable_sum += a
    end
end

println(amicable_sum)