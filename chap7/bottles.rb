str = " bottles of beer on the wall"
str2 = " bottles of beer"
str3 = "on the wall"
bottles = 99
while bottles > 0
    puts bottles.to_s + str + ", " + str2
    bottles = bottles - 1
    puts "take one down and pass it around, " + bottles.to_s + str2 + str3
    if bottles == 0
        puts "no more bottles of beer on the wall, no more beer on the wall."
        end
end
