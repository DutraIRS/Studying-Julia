# It is easily provable that a_(1xk) + a_(kxk) = a_(kx1) + a_(1x1) for every k > 1 (A is a kxk matrix created by completing the spiral n times).
# Therefore, we'll just start with 1 and add 2(a_(1xk) + a_(kxk)) in each step.
# Notice that a_(1xk) = (2n - 1)^2 and a_(kxk) = a_(1xk) - 3(2n - 2).
# 2(a_(1xk) + a_(kxk)) = 2((2n - 1)^2 + (2n - 1)^2 - 3(2n - 2)) = 16n^2 - 28n + 16
# 1001x1001 = 1002001
# (sqrt(1002001) + 1)/2 = 501 = n
# n = 1 is the base case, so we'll perform the loop from 2 to 501.

sum = 1

for n in 2:501
    global sum += 16n^2 - 28n + 16
end

println(sum)