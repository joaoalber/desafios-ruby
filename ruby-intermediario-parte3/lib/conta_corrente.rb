class ContaCorrente < Conta

    def depositar(valor, taxa)
        @saldo += valor - taxa 
    end

    def atualizar
        @saldo
    end
  
end