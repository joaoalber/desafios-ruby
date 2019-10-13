class Pagamento
    attr_accessor :quantidade, :produto, :preco, :nome, :valor
    def initialize(quantidade:, produto: "Sem nome", preco:, nome:nil, valor: 0)
        @quantidade, @produto, @preco, @nome, @valor = quantidade, produto, preco, nome, valor
    end

    def calcular_valor() 
       @valor = @quantidade * @preco
    end

    def aplicar_desconto(valor)
        @valor -= valor
    end
end
