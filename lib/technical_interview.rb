def anagram_index(anagram)
  letters = anagram.split("")
  anagram_index_helper(letters, 0)
end

def anagram_index_helper(letters, offset)
  index_of_first_letter = letters.sort.index(letters[0])
  anagram_length = letters.length

  number_of_indexes_per_branch = number_of_permutations(anagram_length - 1)
  number_of_indexes_skipped = number_of_indexes_per_branch * index_of_first_letter
  new_offset = offset + number_of_indexes_skipped

  return new_offset if anagram_length == 1
  anagram_index_helper(letters[1..anagram_length - 1], new_offset)
end

def number_of_permutations(length)
  factors = length
  factors *= (length -= 1) while (length > 1)
  factors
end
