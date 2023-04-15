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

function is_triangle_number(n::Int)
    return isinteger((sqrt(8n + 1) - 1) / 2)
    #=
    n is a triangle number if n = k(k+1)/2 for some natural k
    2n = k² + k
    k² + k - 2n = 0
    k = (-1 ± √(1 + 8n)) / 2
    since we're not interested in negative k, we only need to check
    if (-1 + √(1 + 8n)) / 2 is a natural
    (-1 + √(1 + 8n)) is positive for every n > 0
    since word values are always positive, we can assume that n > 0
    =# 
end

function is_triangle_word(str::String)
    value = word_value(str)
    return is_triangle_number(value)
end

text = read("Assets/42) words.txt", String)
# reads the file as a string

text = replace(text, "\""=>"")
# removes the quotation marks

substr_list = collect(eachsplit(text, ","))
# splits the string text into a list of substrings and converts to vector

words_list = string.(substr_list)
# converts each substring to a string using Julia's gorgeous broadcasting syntax

bool_array = is_triangle_word.(words_list)
# broadcasts is_triangle_word to each element of words_list, returning a vector of booleans

number_of_triangle_words = sum(bool_array)
# sums the vector of booleans, returning the number of true values

println(number_of_triangle_words)