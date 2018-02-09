#!/usr/bin/env ruby

class AnagramMaker
  def initialize (phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def anagram_maker()
    letter_array1 = @phrase1.downcase.gsub(/[\s]/, '').split("").sort
    letter_array2 = @phrase2.downcase.gsub(/[\s]/, '').split("").sort
    vowel_check_array = ["a", "e", "o", "i", "u", "y"]
    # binding.pry
    if (vowel_check_array - letter_array1) == vowel_check_array
      return "Um, '" + @phrase1 + "' isn't a word, dummy."
    elsif (vowel_check_array - letter_array2) == vowel_check_array
      return "Um, '" + @phrase2 + "' isn't a word, dummy."
    elsif (letter_array1 == letter_array2)
      return "Yes, '" + @phrase1 + "' is an anagram of '" + @phrase2 + "'!"
    elsif ((letter_array1 - letter_array2) == letter_array1)
      return "That's no anagram, but '" + @phrase1 + "' is an antigram of '" + @phrase2 + "'!"
    else
      return "No, '" + @phrase1 + "' is NOT an anagram of '" + @phrase2 + "'."
    end
  end
end
