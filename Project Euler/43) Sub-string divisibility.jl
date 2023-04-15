using Combinatorics

function is_interesting(n::String)
    if parse(Int, n[2:4]) % 2 != 0
        return false
    elseif parse(Int, n[3:5]) % 3 != 0
        return false
    elseif parse(Int, n[4:6]) % 5 != 0
        return false
    elseif parse(Int, n[5:7]) % 7 != 0
        return false
    elseif parse(Int, n[6:8]) % 11 != 0
        return false
    elseif parse(Int, n[7:9]) % 13 != 0
        return false
    elseif parse(Int, n[8:10]) % 17 != 0
        return false
    else
        return true
    end
end

pandigital_list = collect(permutations([0, 1 , 2, 3, 4, 5, 6, 7, 8, 9]))
# creates an array of vectors, each of which is a permutation of the digits 0-9, in lexicographic order

pandigital_list = join.(pandigital_list)
# converts the permutations to strings

interesting_pandigital_sum = 0

for pandigital in pandigital_list
    if is_interesting(pandigital)
        global interesting_pandigital_sum += parse(Int, pandigital)
    end
end

println(interesting_pandigital_sum)