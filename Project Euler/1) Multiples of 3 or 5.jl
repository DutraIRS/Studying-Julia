multiples = []

for n in 1:999
    if n % 3 == 0 || n % 5 == 0
        push!(multiples, n)
    end
end

println(sum(multiples))