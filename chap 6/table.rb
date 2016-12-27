line = 40
str = 'Table of Contents'
chap1 = 'Chapter 1: Getting Started'
pg1 = 'page  1'
pg2 = 'page  9'
pg3 = 'page 13'
chap2 = 'Chapter 2: Numbers'
chap3 = 'Chapter 3: Letters'
puts str.center(line)
puts ''
puts chap1.ljust(line) + pg1.rjust(line/2)
puts chap2.ljust(line/2) + pg2.rjust(line)
puts chap3.ljust(line/2) + pg3.rjust(line)
