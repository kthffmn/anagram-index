def anagram_index(anagram, offset_by = 0)
  letters = anagram.split("")
  sorted_letters = letters.sort

  index_of_first_letter = sorted_letters.index(letters[0])

  anagram_length = anagram.length
  number_of_possibilities_for_entire_anagram = get_number_of_permutations(anagram_length)

  number_per_branch = number_of_possibilities_for_entire_anagram / anagram_length
  number_skipped = number_per_branch * index_of_first_letter

  index = offset_by + number_skipped

  if(number_of_possibilities_for_entire_anagram == 1)
    return index
  else
    anagram_index(letters[1..anagram_length - 1].join(""), index)
  end
end

def get_number_of_permutations(integer)
  array = []
  until (integer == 1)
    array << integer
    integer -= 1
  end
  array.inject(1) { |product, number| product *= number }
end