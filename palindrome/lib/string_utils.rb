class StringUtils
  def palindromo?(frase)
    frase = frase.downcase.delete(" ").split("")
    rev = []
    rev.replace(frase)
    (0..rev.size-1).each do |i|
        rev[i] = frase[rev.size-1-i]
    end
    frase == rev
  end
end

