class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort ? true : false
  end

  def self.soma(lista)
    lista.inject(:+)
  end

  def self.divisiveis(numero1, numero2)
    arr = []
    subarr0 = Array.new(50/numero1) {|i| (i+1) * numero1}
    subarr1 = Array.new(50/numero2) {|i| (i+1) * numero2}
    arr << (subarr0 & subarr1)
    arr << (subarr0 - subarr1)
    arr << (subarr1 - subarr0)
  end

  def self.combinar(numeros, letras)
    arr = []
    numeros.each do |i|
      letras.each do |j|
        arr << [i, j]
      end
    end
    arr
  end

end
