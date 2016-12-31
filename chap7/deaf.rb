input = ''
while true
    input= gets.chomp
    year = rand(1930..1950)
      if input != input.upcase
        puts "HUH?!? SPEAK UP, SONNY!"
      elsif input == input.upcase
        puts "NO NOT SINCE " + year.to_s + '!'
      end
      if input == 'BYE'
        puts 'ok bye'
        break
      end
end
