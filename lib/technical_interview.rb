def anagram_index(anagram)
  letters = anagram.split("")
  anagram_index_helper(letters, 0)
end

def anagram_index_helper(letters, offset_by)
  sorted_letters = letters.sort
  index_of_first_letter = sorted_letters.index(letters[0])
  anagram_length = letters.length

  number_of_indexes_per_branch = number_of_permutations(anagram_length) / anagram_length
  number_of_indexes_skipped = number_of_indexes_per_branch * index_of_first_letter
  new_offset = offset_by + number_of_indexes_skipped

  return new_offset if(anagram_length == 1)
  anagram_index_helper(letters[1..anagram_length - 1], new_offset)
end

def number_of_permutations(length)
  factors = [length]
  until (length == 1) do
    factors << (length -= 1)
  end
  factors.inject(1) { |pdt, num| pdt *= num }
end