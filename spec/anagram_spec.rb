require ('anagram')
require ('rspec')
require ('pry')

describe ('#anagram_maker') do
  it ("will tell you if act is an anagram of cat") do
    anagram = AnagramMaker.new("act","cat")
    expect(anagram.anagram_maker().to(eq(true)))
  end
end
