class Pessoa
    def gritar_alto(texto = "Grrrhhhhh!")
      "Gritando... #{texto}"
    end
  
    def agradecer(texto = "Obrigado!")
      return texto # return é opcional
    end
end

#######################

obj1 = Pessoa.new

result = obj1.gritar_alto("asdfadf")
puts result

puts obj1.agradecer