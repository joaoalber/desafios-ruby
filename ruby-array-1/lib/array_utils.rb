class ArrayUtils

  def self.multiplos(qtd, multiplo)
    arr = []
    numero = multiplo
    qtd.times do |i|
      arr[i] = multiplo
      multiplo = numero + multiplo
    end
    arr
  end

  def self.tabuada(numero)
    arr = []
    tabuada = 1
    numero.times do |i|
      subarr = []
      10.times do |x|
        subarr[x] = tabuada * (x+1)
      end
      arr[i] = subarr
      tabuada += 1
    end
    arr
  end

  def self.ultimo(lista)
    lista[-1]
  end

end
