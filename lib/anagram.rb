#!/usr/bin/env ruby

class AnagramMaker
  def initialize (phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def anagram_maker()
    letter_array1 = @phrase1.downcase.split("").sort
    letter_array2 = @phrase2.downcase.split("").sort
    # binding.pry
    if (letter_array1 == letter_array2)
      return "Yes, '" + @phrase1 + "' is an anagram of '" + @phrase2 + "'!"
    else
      return "No, '" + @phrase1 + "' is NOT an anagram of '" + @phrase2 + "'."
    end
  end
end
