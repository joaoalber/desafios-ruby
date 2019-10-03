class Word
  def longest(phrase)
    arr = phrase.split(" ")
    arr.sort! {|a, b| b.length <=> a.length }
    arr[0]
  end

  def shortest(phrase)
    arr = phrase.split(" ")
    arr.sort! {|a, b| b.length <=> a.length }
    arr[-1]
  end
end
