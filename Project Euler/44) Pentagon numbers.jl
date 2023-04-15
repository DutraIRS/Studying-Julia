# Notice that n(3n - 1)/2 = 1.5n^2 - 0.5n a quadratic equation
# Therefore, P(n+1) - P(n) tends to infinity as n tends to infinity
# So we only need to find the point in which P(n+1) - P(n) becomes larger
# Than the smallest difference between two pentagonal numbers that is pentagonal

nth_pentagon(n) = n*(3n-1)/2

function is_pentagon(n)
    p_n = 1
    i = 1
    while p_n <= n
        p_n = nth_pentagon(i)
        if p_n == n
            return true
        end
        i += 1
    end
    return false
end

function list_candidates(n)
    is_candidate = []
    
    for i in 1:n-1
        push!(is_candidate, nth_pentagon(i))
    end

    is_candidate = is_pentagon.(is_candidate .- nth_pentagon(n)) .&& is_pentagon.(is_candidate .+ nth_pentagon(n))

    return is_candidate
end

for i in 1:10000000
    if any(list_candidates(i))
        println(nth_pentagon(i))
        break
    end
end