def soma(primeiro_numero, segundo_numero)
    resultado = primeiro_numero + segundo_numero
    resultado
end

def subtracao(primeiro_numero, segundo_numero)
    resultado = primeiro_numero - segundo_numero
    resultado
end

def multiplicacao(primeiro_numero, segundo_numero)
    resultado = primeiro_numero * segundo_numero
    resultado
end

def divisao(primeiro_numero, segundo_numero)
    if (segundo_numero == 0) then
        "Opa! Zero como divisor"
    else
        resultado = primeiro_numero / segundo_numero
        resultado
    end
end
