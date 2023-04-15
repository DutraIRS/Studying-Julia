sum_of_squares = 0
square_of_sum = sum(1:100)^2

for n in 1:100
    global sum_of_squares += n^2
end

difference = square_of_sum - sum_of_squares
println(difference)