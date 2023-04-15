function divisors(n::Int64)
    divisors = []
    
    for i in 1:n÷2+1
        if n%i == 0
            push!(divisors, i)
        end
    end

    return divisors
end

is_abundant(n::Int64) = sum(divisors(n)) > n

function list_abundant_numbers(lower_limit::Int64, upper_limit::Int64)
    abundant_numbers_list = []
    
    for i in lower_limit:upper_limit
        if is_abundant(i)
            push!(abundant_numbers_list, i)
        end
    end
    
    return abundant_numbers_list  
end

abundant_numbers_list = list_abundant_numbers(12, 28123)

possible_numbers = []
# numbers that can be written as the sum of two abundant numbers

for i in 1:length(abundant_numbers_list), j in i:length(abundant_numbers_list)
    possible_number = abundant_numbers_list[i] + abundant_numbers_list[j]
    
    if possible_number <= 28123
        push!(possible_numbers, possible_number)
    end
end

non_abundant_sum_numbers = setdiff([i for i in 1:28123], possible_numbers)
# numbers between 1 and 28123 that are not in the list of numbers that can
# be written as the sum of two abundant numbers

desired_sum = sum(non_abundant_sum_numbers)

println(desired_sum)