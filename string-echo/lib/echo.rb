class Echo
    def message(s)
        if s.size == 0 || s == "   " 
            'Nada?'
        elsif s[-1] == '?'
            'Só faço echo, não respondo perguntas.'
        elsif s < s.swapcase && s == s.upcase
            'Não faço echo de gritos.'
        else
            s
        end
    end
end 
