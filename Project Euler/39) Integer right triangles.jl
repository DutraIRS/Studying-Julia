most_solutions = 1
most_solutions_p = 1

for p in 1:1000
    number_of_solutions = 0
    
    for a in 1:p
        for b in a:(p-a)
            # this ensures that b >= a,
            # so as to avoid double counting
            
            c = p - a - b
            
            if a^2 + b^2 == c^2
                number_of_solutions += 1
            end
        end
    end
    
    if number_of_solutions > most_solutions
        global most_solutions = number_of_solutions
        global most_solutions_p = p
    end
end

println(most_solutions_p)