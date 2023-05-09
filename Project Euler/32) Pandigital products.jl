function is_pandigital(n)
    is_pandigital = true
    
    n = string(n)

    if length(n) != 9
        return false
    end

    for i in 1:9
        if !occursin(string(i), n)
            return false
        end
    end

    return true
end

a = []

for i in 1:9876, j in 1:9876
    k = i * j

    if !in(k, a) && is_pandigital(string(i)*string(j)*string(k))
        push!(a, k)
    end
end

println(sum(a))