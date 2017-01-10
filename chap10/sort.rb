def sort some_array
  recursive_sort some_array, []
end

def smallest_word array
  smallest = array.inject do |word1,word2|
    word1.length < word2.length ? word1 : word2
  end
  smallest
end


def recursive_sort unsorted_array, sorted_array
  smallest = unsorted_array.inject do |word1,word2|
    word1[0] < word2[0] ? word1 : word2
  end
  unsorted_array.delete_at(unsorted_array.index(smallest))
  sorted_array << smallest
  if unsorted_array.empty?
    return sorted_array
  else
    recursive_sort unsorted_array, sorted_array
  end
end

puts (sort (['can','feel','ana','singing','can']))
