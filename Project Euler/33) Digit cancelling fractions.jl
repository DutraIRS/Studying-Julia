numerators = []
denominators = []

for n in 10:99, d in 10:99
    if n/d >= 1
    # filters fractions greater than 1
        continue

    else
        i = string(n)
        j = string(d)

        if occursin("0", i) && occursin("0", j)
        # filters trivial cases
            continue
        
        else
            if occursin(i[1], j)
            # cancels the first digit of i and the same digit in j
                j = replace(j, i[1] => "", count=1)
                # removes the first occurence of the repeated digit
                i = i[2]
            elseif occursin(i[2], j)
            # cancels the second digit of i and the same digit in j
                j = replace(j, i[2] => "", count=1)
                i = i[1]
            else
                continue
            end
        end
    end
    i = parse(Int, i)
    j = parse(Int, j)

    if j != 0
    # avoiding division by zero
        if n/d == i/j
            push!(numerators, i)
            push!(denominators, j)
        end
    end
end

println(prod(denominators) / prod(numerators))