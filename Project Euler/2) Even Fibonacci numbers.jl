fibonacci = [1, 2]

while fibonacci[end] < 4000000
    push!(fibonacci, fibonacci[end] + fibonacci[end-1])
end

even_fibonacci = filter(x -> x % 2 == 0, fibonacci)

println(sum(even_fibonacci))