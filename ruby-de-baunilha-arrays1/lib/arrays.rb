class Arrays

  def self.converte_impares_por(lista, numero)
    arr = []
    resposta = []
    multiplos = []
    j = 0
    lista.size.times do |i|
      if lista[i] % 2 != 0
        arr[j] = lista[i]
        multiplos[j] = lista[i] * numero
        j = j + 1
      end 
    end
      resposta[0] = arr
      resposta[1] = multiplos
      resposta
  end
 

  def self.converte_pares_por(lista, numero)
    arr = []
    multiplos = []
    resposta = []
    j = 0
    lista.size.times do |i| 
      if lista[i] % 2 == 0
        arr[j] = lista[i]
        multiplos[j] = lista[i] * numero
        j += 1
      end
    end
    resposta[0] = arr
    resposta[1] = multiplos
    resposta
  end

end
