def rando array
lst = []
  while array.length > 0
    rand_index = rand(array.length)
    index = 0
    rand_array = []
    array.each do |object|
      if index != rand_index
          rand_array << object
        else
          lst << object
      end
    index = index + 1
  end
      array = rand_array
    end
  lst
end

input = [1,2,3,4,5]
puts rando input
