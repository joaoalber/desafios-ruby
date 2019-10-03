class Word
  def vowels_count(frase)
    frase.downcase.count("aeiouáéíóúâêôàãõ")
  end

  def consonants_count(frase)
    frase.downcase.count("bcçdfghjklmnpqrstvxyz")
end
