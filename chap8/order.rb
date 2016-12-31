lst = []
puts 'enter in one word per line, press enter on an empty line to end'

while true
  input = gets.chomp
  if input == ""
      break
  else
    lst.push input
  end
end

puts lst.sort
