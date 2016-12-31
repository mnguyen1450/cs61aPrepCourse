input = ''
counter = 0
while true
    input= gets.chomp
    year = rand(1930..1950)
      if input != input.upcase
        puts "HUH?!? SPEAK UP, SONNY!"
      elsif input == input.upcase
        puts "NO NOT SINCE " + year.to_s + '!'
      end
      if input == 'BYE'
        counter = counter + 1
      else
        counter = 0
      end
      if counter == 3
        puts "OK BYE SONNY"
      end
end
