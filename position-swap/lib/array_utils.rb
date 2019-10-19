class ArrayUtils
  def troca(lista)
    (0...lista.size).step(2) do |i|
      tmp = lista[i]
      lista[i] = lista[i+1]
      lista[i+1] = tmp
    end
    lista
  end
end