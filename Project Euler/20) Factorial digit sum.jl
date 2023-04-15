number = factorial(big(100))

n = string(number)

digits_sum = 0

for i in 1:length(n)
    global digits_sum += parse(Int64, n[i])
end

println(digits_sum)