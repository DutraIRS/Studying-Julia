function collatz(n)
    if n % 2 == 0
        n/2
    else
        3n + 1
    end
end

collatz_sequence = []
collatz_champion = 1
# The seed for the longest chain

for n in 1:999999
    new_collatz_sequence = [n]
    k = copy(n)

    while n > 1
        n = collatz(n)
        push!(new_collatz_sequence, n)
    end

    if length(new_collatz_sequence) > length(collatz_sequence)
        global collatz_sequence = new_collatz_sequence
        global collatz_champion = k
    end
end

println(collatz_champion)
# This one takes some time to compute