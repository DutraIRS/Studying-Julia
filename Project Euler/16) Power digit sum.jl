num = BigInt(2)^1000

digits = string(num)
sum = 0

for digit in digits
    global sum += parse(Int64, digit)
end

println(sum)