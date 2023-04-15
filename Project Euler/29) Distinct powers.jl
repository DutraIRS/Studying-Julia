distinct_powers = Set()

for a in 2:100, b in 2:100
    push!(distinct_powers, big(a)^b)
end

println(length(distinct_powers))