#!/usr/bin/env ruby

class AnagramMaker
  def initialize (phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def anagram_maker()
    letter_array1 = @phrase1.split("")
    letter_array2 = @phrase2.split("")
    if letter_array1 = letter_array2
      return "Yes, '" + @phrase1 + "' is an anagram of '" + @phrase2 + "'!"
    else
      return false
    end
  end
end
