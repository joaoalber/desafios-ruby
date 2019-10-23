class Conta
    attr_accessor :numero, :titular, :saldo, :limite
    def initialize(numero, titular, saldo, limite)
        @numero, @titular, @saldo, @limite = numero, titular, saldo, limite
    end

    def sacar(valor)
        valor > @saldo + @limite ? false : @saldo -= valor
    end

    def depositar(valor)
        @saldo += valor
    end

    def no_limite?()
        @saldo < 0 ? true : false
    end

    def transfere(conta, valor)
        if (valor < @saldo + @limite)
            @saldo -= valor
            conta.saldo += valor
        else
            return false
        end
    end
    
    def ==(conta)
        @numero === conta.numero
        @titular === conta.titular
        @saldo === conta.saldo
        @limite === conta.limite
    end
    
end
