#!/usr/bin/env ruby

class AnagramMaker
  def initialize (phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def anagram_maker()
    letter_array1 = @phrase1.downcase.split("").sort
    letter_array2 = @phrase2.downcase.split("").sort
    vowel_check_array = ["a", "e", "o", "i", "u", "y"]
    # binding.pry
    if (@phrase1.include?("a"||"e"||"o"||"i"||"u"||"y") == false)
      return "Um, '" + @phrase1 + "' isn't a word, dummy."
    elsif (@phrase2.include?("a"||"e"||"o"||"i"||"u"||"y") == false)
        return "Um, '" + @phrase2 + "' isn't a word, dummy."
    elsif (letter_array1 == letter_array2)
      return "Yes, '" + @phrase1 + "' is an anagram of '" + @phrase2 + "'!"
    else
      return "No, '" + @phrase1 + "' is NOT an anagram of '" + @phrase2 + "'."
    end
  end
end
