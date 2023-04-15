function is_palindrome(n)
    s = string(n)
    return s == reverse(s)
end

sum = 0

for i in 1:999_999
    if is_palindrome(i) && is_palindrome(string(i, base=2))
        global sum += i
    end
end

println(sum)