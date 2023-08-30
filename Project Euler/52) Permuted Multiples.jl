function is_desired(n::Int)
    digits = sort(collect(string(n)))

    for i in 2:6
        if sort(collect(string(i*n))) != digits
            return false
        end
    end
    
    return true
end

x = 12

while !is_desired(x)
    global x += 1
end

println(x)