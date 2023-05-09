# Every hexagonal number is also a triangular number.

function is_hexagonal(n)
    x = mod((sqrt(8n + 1) + 1), 4)
    return x == 0
end

function nth_pentagonal(n)
    return n * (3n - 1) / 2
end

i = 166
p_i = nth_pentagonal(i)

while true
    if is_hexagonal(p_i)
        println(Int(p_i))
        break
    end

    global i += 1
    global p_i = nth_pentagonal(i)
end