class ContaPoupanca < Conta

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = Cliente.new(titular)
        @saldo = saldo
    end

    def depositar(valor)
        @saldo += valor
    end

    def atualizar(juros)
        @saldo *= 1 + juros
    end

end