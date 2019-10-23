class Telefone
  def teclar(sequencia)
    arr = sequencia.delete("").split("")
    frase = []
    cont = 1

    arr2 = [["2", "a", "b", "c"], ["3", "d", "e", "f"], ["4", "g", "h", "i"], 
    ["5", "j", "k", "l"], ["6", "m", "n", "o"], ["7", "p", "q", "r", "s"], ~
    ["8", "t", "u", "v"], ["9", "w", "x", "y", "z"], ["0", " "]]
    
    while (arr.size > 0) # percorre todo o array até que este seja vazio
      atual = arr[0]
      i = 0
      cont = 1
      while (atual == arr[i+1]) # verifica quantas vezes o numero se repete
        cont = cont + 1
        i = i + 1
      end
        if (atual == "0") # adiciona as letras conforma o array de letras
          frase << " "
        elsif (atual != " ")
          frase << arr2[atual.to_i-2][cont.to_i]
        end
        valor = i+1
        valor.times do # deleta o indice do array para o numero atual que foi utilizado
          arr.delete_at(arr.index(atual))
        end
    end
    frase.join
  end
end
