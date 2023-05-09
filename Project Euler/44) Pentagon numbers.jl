function nth_pentagonal(n)
    return n * (3n - 1) / 2
end

function is_pentagonal(n)
    x = mod((sqrt(24n + 1) + 1), 6)
    return x == 0
end

i = 1
p_i = nth_pentagonal(i)

while true
    for j in 1:i
        p_j = nth_pentagonal(j)

        if is_pentagonal(p_i + p_j) && is_pentagonal(p_i - p_j)
            println(Int(p_i - p_j))
            break
        end
    end

    global i += 1
    global p_i = nth_pentagonal(i)
end