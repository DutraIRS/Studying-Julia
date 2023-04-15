special_triplet = [0, 0, 0]

for a in 1:1000
    for b in a+1:1000
        for c in b+1:1000
            if a + b + c == 1000 && a^2 + b^2 == c^2
                global special_triplet = [a, b, c]
            end
        end
    end
end

product = special_triplet[1] * special_triplet[2] * special_triplet[3]
println(product)