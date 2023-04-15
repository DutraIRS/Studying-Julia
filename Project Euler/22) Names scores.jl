function word_value(str::String)
    positions = Dict(
        'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 
        'E' => 5, 'F' => 6, 'G' => 7, 'H' => 8, 
        'I' => 9, 'J' => 10, 'K' => 11, 'L' => 12, 
        'M' => 13, 'N' => 14, 'O' => 15, 'P' => 16, 
        'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20, 
        'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 
        'Y' => 25, 'Z' => 26
        )

    word_value = 0

    for i in 1:length(str)
        word_value += positions[str[i]]
    end

    return word_value
end

text = read("Assets/22) names.txt", String)
# reads the file as a string

text = replace(text, "\""=>"")
# removes the quotation marks

substr_list = collect(eachsplit(text, ","))
# splits the string text into a list of substrings and converts to vector

names_list = string.(substr_list)
# converts each substring to a string using Julia's gorgeous broadcasting syntax

sort!(names_list)
# sorts alphabetically

total = 0

for idx in 1:length(names_list)
    global total += idx * word_value(names_list[idx])
end

println(total)