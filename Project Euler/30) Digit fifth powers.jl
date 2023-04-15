# 999999 => 9^5 + 9^5 + 9^5 + 9^5 + 9^5 + 9^5 = 354294 < 999999
# Even with the best-case scenario for six digits, we can't get the original number
# Notice that the sum grows at a n*9^5 pace, while 9...9 grows at a 10^n pace, surpassing the sum at n=6

function digit_powers(n, p)
    digits = parse.(Int, collect(string(n)))
    # Transforms the number to str, gets a vector of each char and parses each to int
    return sum(digits.^p)
    # Returns the sum of each digit to the power of p
    # God save broadcasting!
end

desired = 0

for i = 2:354294
    if digit_powers(i, 5) == i
        global desired += i
    end
end

println(desired)