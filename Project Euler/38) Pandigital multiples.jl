function is_pandigital(n::Int)::Bool
    number = string(n)

    if length(number) != 9
        return false
    else
        digits = join(sort(collect(number)))
        # converts to string, then to array, then sorts,
        # then joins back to string

        return digits == "123456789"
    end
end

function concat_product(number::Int, n::Int)::Int
    result = ""

    for i in 1:n
        result *= string(number * i)
    end

    if length(result) > 9
        return 1_000_000_000
    else
        return parse(Int, result)
    end
end

largest_pandigital = 0 

for i in 1:100_000
# any number > 9_999 will have a concatenated product of length > 9

    for j in 2:10
    # n > 1, as specified in the problem
    
        product = concat_product(i, j)

        if is_pandigital(product) && product > largest_pandigital
            global largest_pandigital = product
        end
    end
end

println(largest_pandigital)