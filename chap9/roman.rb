def old_roman_numerals number
  m = 0
  d = 0
  c = 0
  x = 0
  v = 0
  i = 0
  roman_num = ''

  if number >= 1000
    m = number/1000
    roman_num = roman_num + ('M'* m)
    number = number % 1000
  end

  if number >= 500
    d = number/500
    roman_num = roman_num + ('D'* d)
    number = number % 500
  end

  if number >= 100
    c = number/100
    roman_num = roman_num + ('C'* c)
    number = number % 100
  end

  if number >= 50
    l = number/50
    roman_num = roman_num + ('L'* l)
    number = number % 50
  end

  if number >= 10
    x = number/10
    roman_num = roman_num + ('X'* x)
    number = number % 10
  end

  if number >= 5
    v = number/5
    roman_num = roman_num + ('V'* v)
    number = number % 5
  end

  if number < 5
    i = number/1
    roman_num = roman_num + ('I'* i)
  end

  puts roman_num

puts "enter in a number"
number = gets.chomp.to_i
old_roman_numerals number
