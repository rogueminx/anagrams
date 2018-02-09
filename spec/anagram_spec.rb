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
    anagram = AnagramMaker.new("act", "cct")
    expect(anagram.anagram_maker()).to(eq("Um, 'cct' isn't a word, dummy."))
  end
  it ("will identify an antigram") do
    anagram = AnagramMaker.new("act", "dry")
    expect(anagram.anagram_maker()).to(eq("That's no anagram, but 'act' is an antigram of 'dry'!"))
  end
  it ("will ignore spaces") do
    anagram = AnagramMaker.new("noon", "No No")
    expect(anagram.anagram_maker()).to(eq("Yes, 'noon' is an anagram of 'No No'!"))
  end
  it ("will ignore punctuation") do
    anagram = AnagramMaker.new("noon", "No, No!")
    expect(anagram.anagram_maker()).to(eq("Yes, 'noon' is an anagram of 'No, No!'!"))
  end
  it ("will inform you of any matching letters in words") do
    anagram = AnagramMaker.new("cat", "batty")
    expect(anagram.anagram_maker()).to(eq("The words 'cat' and 'batty', aren't anagrams, but they have these letters in common: a, t."))
  end
end
