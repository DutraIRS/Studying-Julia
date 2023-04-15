#=
1: one, 3
2: two, 3
3: three, 5
4: four, 4
5: five, 4
6: six, 3
7: seven, 5
8: eight, 5
9: nine, 4
10: ten, 3
11: eleven, 6
12: twelve, 6
13: thirteen, 8
14: fourteen, 8
15: fifteen, 7
16: sixteen, 7
17: seventeen, 9
18: eighteen, 8
19: nineteen, 8
20: twenty, 6
30: thirty, 6
40: forty, 5
50: fifty, 5
60: sixty, 5
70: seventy, 7
80: eighty, 6
90: ninety, 6

a) For 1-19, we use one word for each number.
b) For 20-99, we use two words for each number, decimal + unit (except if it's 0).
c) For 100, it's "one hundred".
d) For 100-999, we use "x hundred and" and repeat the above.
e) For 1000, it's "one thousand".
=#

one_to_nine = 3 + 3 + 5 + 4 + 4 + 3 + 5 + 5 + 4

case_a = one_to_nine + 3 + 6 + 6 + 8 + 8 + 7 + 7 + 9 + 8 + 8
case_b = 10*(6 + 6 + 5 + 5 + 5 + 7 + 6 + 6) + 8*one_to_nine
case_c = 10
case_d = 99*3 + 100*(one_to_nine - 3) + 899*7 + 891*3 + 9*(case_a + case_b)
case_e = 11

num_letters = case_a + case_b + case_c + case_d + case_e
println(num_letters)
# Not pretty, but works