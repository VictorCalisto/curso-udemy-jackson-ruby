class Pessoa
    attr_accessor :nome , :idade
    # attr_reader
    # attr_writer
    # def nome=(nome)
    #   @nome = nome
    # end
  
    # def nome
    #   @nome
    # end
  
    # def idade=(idade)
    #   @idade = idade
    # end
  
    # def idade
    #   @idade
    # end

end
  
  #######################
  
  pessoa1 = Pessoa.new
  pessoa1.nome = "Jackson Pires"
  pessoa1.idade = 20
  
  pessoa2 = Pessoa.new
  pessoa2.nome = "Joao"
  pessoa2.idade = 30
  
  puts pessoa1.nome
  puts pessoa1.idade
  
  puts pessoa2.nome
  puts pessoa2.idade
  
  