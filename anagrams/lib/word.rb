class Word
  def anagrama?(uma_palavra, outra_palavra)
     uma_palavra.downcase.split('').sort == outra_palavra.downcase.split('').sort
  end
end
