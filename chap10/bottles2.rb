def english_number number
  if number == 0
    return "zero"
  end

  num_string = ''
  zillions = {2 =>'hundred',3 => 'thousand',6 =>'million',9=>'billion',
  12 =>'trillion',15 =>'quadrillion'}
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
 left = number
 write = left/1000000000
 left = left - write*1000000000
 if write > 0
    start = english_number write
    num_string = num_string + start + " " + "billion"
    if left > 0
      num_string = num_string + ' '
    end
  end


 write = left/1000000
 left = left - write*1000000
 if write > 0
  start = english_number write
  num_string = num_string + start + " " + "million"
    if left > 0
      num_string = num_string + ' '
    end
end

  write = left/1000
  left = left - write*1000
  if write > 0
    start = english_number write
    num_string = num_string + start + " " + "thousand"
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/100
  left = left - write*100
  if write > 0
    start = english_number write
    num_string = num_string + start + " " + "hundred"
    if left > 0
      num_string = num_string + ' '
    end
  end

write = left/10
left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
  else
    num_string = num_string + tens_place[write-1]
  end

  if left > 0
    num_string = num_string + '-'
  end
end

write = left
left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
num_string.capitalize
end

str = " bottles of beer on the wall"
str2 = " bottles of beer"
str3 = " on the wall"
bottles = 99
while bottles > 0
    puts english_number(bottles).to_s + str + ", " + english_number(bottles).to_s + str2
    bottles = bottles - 1
    puts "take one down and pass it around, " + english_number(bottles).to_s + str2 + str3
    if bottles == 0
        puts "no more bottles of beer on the wall, no more beer on the wall."
        end
end
