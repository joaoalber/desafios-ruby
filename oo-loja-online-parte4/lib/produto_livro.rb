class ProdutoLivro < Produto

    attr_accessor :nome, :preco, :estoque, :autor, :genero, :paginas

    def initialize(nome:, preco:, estoque:, autor:, genero:, paginas:)
        @nome, @preco, @estoque, @autor, @genero, @paginas = nome, preco, estoque, autor, 
        genero, paginas
    end

    
end