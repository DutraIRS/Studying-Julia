function is_leap(year)
    if year % 400 == 0
        true
    elseif year % 100 == 0
        false
    elseif year % 4 == 0
        true
    else
        false
    end
end

months_normal = [31,28,31,30,31,30,31,31,30,31,30,31]

months_leap = [31,29,31,30,31,30,31,31,30,31,30,31]

weekday = 2

first_sundays = 0

for year in 1901:2000
    if is_leap(year)
        months = months_leap
    else
        months = months_normal
    end
    
    for month in 1:12
        global weekday += months[month] % 7
        
        if weekday % 7 == 0
            global first_sundays += 1
        end
    end
end
        
println(first_sundays)