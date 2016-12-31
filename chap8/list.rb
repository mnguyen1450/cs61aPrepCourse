lst = ['Table of contents','Chapter 1','page  1','page  9',
'page 13','Chapter 2: Numbers','Chapter 3: Letters' ]
line = 40

puts lst[0].center(line)
puts ''
puts lst[1].ljust(line) + lst[2].rjust(line/2)
puts lst[5].ljust(line) + lst[3].rjust(line/2)
puts lst[6].ljust(line) + lst[4].rjust(line/2)
