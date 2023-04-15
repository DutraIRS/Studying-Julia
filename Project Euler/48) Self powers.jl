#=
Runned almost instantly, but isn't fancy
desired = 0

for i = 1:1000
    global desired += big(i)^i
end

println(desired)
=#

desired = 0

for i = 1:1000
    n = string(big(i)^i)

    if length(n) > 10
        n = n[end-9:end]
        # Discards unnecessary digits
    end

    global desired += parse(Int, n)
end

desired = string(desired)[end-9:end]

println(desired)