# Naive brute force solution
count = 0
for a in 0:200, b in 0:100, c in 0:40, d in 0:20, e in 0:10, f in 0:4, g in 0:2, h in 0:1
    if a + 2b + 5c + 10d + 20e + 50f + 100g + 200h == 200
        global count += 1
    end
end
count