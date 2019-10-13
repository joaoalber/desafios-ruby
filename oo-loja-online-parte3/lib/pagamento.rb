class Pagamento
  attr_accessor :quantidade, :produto, :valor

  def initialize(quantidade:, produto: Produto.new(nome, preco, estoque))
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    @valor = @quantidade * @produto.preco
    retirar_estoque(@quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end

  def retirar_estoque(qtd)
    produto.estoque -= qtd
  end
end

