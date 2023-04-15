palindromes = []

for i in 1:999, j in 1:999
    product = i * j
    if string(product) == reverse(string(product))
        push!(palindromes, product)
    end
end

println(maximum(palindromes))