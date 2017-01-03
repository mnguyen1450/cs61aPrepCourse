def new_roman_numerals number
   m = 0
   d = 0
   c = 0
   x = 0
   v = 0 #MCMXCIX
   i = 0
  cm = 0
  cd = 0
  xc = 0
  xl = 0
  ix = 0
  iv = 0
  roman_num = ''


  if number >= 1000
    m = number/1000
    roman_num = roman_num + ('M'* m)
    number = number % 1000
  end

  if number >= 900
    cm = number/900
    roman_num = roman_num + ('CM'* m)
    number = number % 900
  elsif
   number >= 500
      d = number/500
      roman_num = roman_num + ('D'* d)
      number = number % 500
  end

  if number >= 400
    xc = number/400
    roman_num = roman_num + ('XC'* m)
    number = number % 400
  elsif
     number >= 100
      c = number/100
      roman_num = roman_num + ('C'* c)
    number = number % 100
  end

  if number >= 90
    cd = number/90
    roman_num = roman_num + ('CD'* m)
    number = number % 90
  elsif
   number >= 50
    l = number/50
    roman_num = roman_num + ('L'* l)
    number = number % 50
  end

  if number >= 40
    ix = number/40
    roman_num = roman_num + ('CD'* m)
    number = number % 40
  elsif
     number >= 10
    x = number/10
    roman_num = roman_num + ('X'* x)
    number = number % 10
  end

  if number >= 9
    ix = number/9
    roman_num = roman_num + 'IX'
    number = number % 9
  elsif
     number >= 5
    v = number/5
    roman_num = roman_num + ('V'* v)
    number = number % 5
  end

  if number >= 4
    iv = number/4
    roman_num = roman_num + 'IV'
    number = number % 4
  elsif
     number < 5
    i = number/1
    roman_num = roman_num + ('I'* i)
  end

  puts roman_num
end
puts "enter in a number"
number = gets.chomp.to_i
new_roman_numerals number
