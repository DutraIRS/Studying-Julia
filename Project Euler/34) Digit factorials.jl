function is_curious(number)
    sum = 0
    
    n = string(number)

    for i in 1:length(n)
        sum += factorial(parse(Int, n[i]))
    end

    return sum == number
end

curious_sum = 0

for i in 3:2_903_040
#=
Note that the maximum sum of factorials of digits
for a n-digit number is n*9! = n*362880
8*9! = 2_903_040 has 7 digits
Beyond that, no more curious numbers can be found
=#
    if is_curious(i)
        global curious_sum += i
    end
end

println(curious_sum)