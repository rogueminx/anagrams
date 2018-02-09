require ('anagram')
require ('rspec')
require ('pry')

describe ('#anagram_maker') do
  it ("will tell you if act is an anagram of cat") do
    anagram = AnagramMaker.new("act", "cat")
    expect(anagram.anagram_maker()).to(eq("Yes, 'act' is an anagram of 'cat'!"))
  end
  it ("will tell you if act is an anagram of Cat") do
    anagram = AnagramMaker.new("act", "CaT")
    expect(anagram.anagram_maker()).to(eq("Yes, 'act' is an anagram of 'CaT'!"))
  end
  it ("will identify false words") do
    anagram = AnagramMaker.new("act", "ccy")
    expect(anagram.anagram_maker()).to(eq("Um, 'cct' isn't a word, dummy."))
  end
  # it ("will identify an antigram") do
  #   anagram = AnagramMaker.new("act", "dry")
  #   expect(anagram.anagram_maker()).to(eq("That's no anagram, but 'act' is an antigram of 'dry'!"))
  # end
end
