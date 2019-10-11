class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome:, categoria: 'Geral', preco:, estoque:)
    @nome, @categoria, @preco, @estoque  = nome, categoria, preco, estoque
  end

end
