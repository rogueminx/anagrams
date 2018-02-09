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
  it ("identify false words") do
    anagram = AnagramMaker.new("cat", "actt")
    expect(anagram.anagram_maker()).to(eq("Um, 'actt' isn't a word, dummy."))
  end
end
