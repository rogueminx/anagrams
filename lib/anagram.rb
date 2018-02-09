#!/usr/bin/env ruby

class AnagramMaker
  def initialize (phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def anagram_maker()
    letter_array1 = @phrase1.downcase.gsub(/[^a-zA-Zs]/, '').split("").sort
    letter_array2 = @phrase2.downcase.gsub(/[^a-zA-Z]/, '').split("").sort
    vowel_check_array = ["a", "e", "o", "i", "u", "y"]
    intersect_array = letter_array1 & letter_array2
    # binding.pry
    if (vowel_check_array - letter_array1) == vowel_check_array
      return "Um, '" + @phrase1 + "' isn't a word, dummy."
    elsif (vowel_check_array - letter_array2) == vowel_check_array
      return "Um, '" + @phrase2 + "' isn't a word, dummy."
    elsif (letter_array1 == letter_array2)
      return "Yes, '" + @phrase1 + "' is an anagram of '" + @phrase2 + "'!"
    elsif ((letter_array1 - letter_array2) == letter_array1)
      return "That's no anagram, but '" + @phrase1 + "' is an antigram of '" + @phrase2 + "'!"
    elsif (intersect_array.empty?) == false
      return "The words '" + @phrase1 + "' and '" + @phrase2 + "', aren't anagrams, but they have these letters in common: " + intersect_array.join(", ") + "."
    else
      return "No, '" + @phrase1 + "' is not an anagram of '" + @phrase2 + "'."
    end
  end
end
