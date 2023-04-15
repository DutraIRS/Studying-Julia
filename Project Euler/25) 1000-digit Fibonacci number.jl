using Combinatorics

counter = 12
f_n = fibonaccinum(counter)

while length(string(f_n)) < 1000
    global counter += 1
    global f_n = fibonaccinum(counter)
end

println(counter)