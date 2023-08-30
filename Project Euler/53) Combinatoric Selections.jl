n_choose_r(n::BigInt, r::BigInt) = factorial(n) / (factorial(r) * factorial(n - r))

count = 0

for n in 1:100, r in 1:n
    if n_choose_r(big(n), big(r)) > 1_000_000
        global count += 1
    end
end

println(count)