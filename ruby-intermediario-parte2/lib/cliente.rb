class Cliente
    attr_accessor :nome, :sobrenome, :cpf, :tratamento, :nome_completo
    def initialize(nome, sobrenome, cpf)
        @nome = nome
        @sobrenome = sobrenome
        @cpf = cpf    
    end
    def nome_completo
        return @tratamento.nil? ? @nome_completo = @nome + ' ' + @sobrenome :
        @nome_completo = @tratamento + ' ' + @nome + ' ' + @sobrenome
    end
end
