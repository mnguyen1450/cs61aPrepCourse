def rando array
lst = []
  while array.length != 0
    rand_index = rand(0..array.length)
    index = 0
    rand_array = []
    array.each do |object|
      if index != rand_index
          rand_array << object
        else
          lst << object
      end
    index += 1
  end
      array = rand_array + lst
    end
end

input = [1,2,3,4,5,6]
puts (rando(input))
