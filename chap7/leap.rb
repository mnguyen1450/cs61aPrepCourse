puts "choose a starting year"
input1 = gets.chomp.to_i
puts "choose an ending year"
input2 = gets.chomp.to_i

while input2 >= input1
    if (input1 % 400) == 0 || (input1 % 4) == 0 && (input1 % 100) != 0
      puts input1
    end
    input1 = input1.to_i + 1
end
