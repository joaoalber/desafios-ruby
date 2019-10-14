class PagamentoCredito < Pagamento
    
    attr_accessor :quantidade, :juros, :produto

    def initialize(quantidade:, juros:, produto:)
        @quantidade, @juros, @produto = quantidade, juros, produto
    end

    

end