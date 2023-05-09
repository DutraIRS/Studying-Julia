function cycle_length(b)
    results = []

    quotient = Int(1 / b - mod(1 / b, 1))
    remainder = rem(1, b)
    tup = (quotient, remainder)

    while tup ∉ results
        push!(results, tup)
        quotient = remainder * 10 ÷ b
        remainder = rem(remainder * 10, b)
        tup = (quotient, remainder)
    end

    idx = 1
    while results[idx] != tup
        idx += 1
    end

    return length(results) - idx + 1
end

d = 7
max_cycle_length = 6

for i in 8:999
    cycle_length_i = cycle_length(i)
    if cycle_length_i > max_cycle_length
        global d = i
        global max_cycle_length = cycle_length_i
    end
end

println(d)