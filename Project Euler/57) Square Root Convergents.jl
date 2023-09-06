#=
Let a_k/b_k be the kth fractional part of the approximation.
For a general a_k and b_k, a_{k+1}/b{k+1} = 1/(2 + a_k/b_k)
= 1/( (2*b_k + a_k)/b_k ) = b_k/(2*b_k + a_k). All in all,
the next approximation is given by the following recurrence:
a_{k+1} = b_k + b_{k+1}
b_{k+1} = 2*b_k + a_k
=#

function frac_components(n::Int)::Array{Pair{BigInt}}
    components::Array{Pair{BigInt}} = []

    a_k = big(1)
    b_k = big(2)
    push!(components, Pair(a_k + b_k, b_k))

    for _ in 1:n
        a_k, b_k = b_k, 2*b_k + a_k
        push!(components, Pair(a_k + b_k, b_k))
    end

    return components
end

count = 0
for component_pair in frac_components(1000)
    if length(string(component_pair.first)) > length(string(component_pair.second))
        global count += 1
    end
end

@time println(count)