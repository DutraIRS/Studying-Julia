counter = 1
champernowne_constant = ""

while length(champernowne_constant) < 1_000_000
    global champernowne_constant *= string(counter)
    global counter += 1
end

result = 1

for i in 1:7
    global result *= parse(Int, champernowne_constant[10^(i-1)])
end

println(result)