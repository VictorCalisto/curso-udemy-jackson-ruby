class Cachorro
    attr_reader :raca
    attr_accessor :nome

    def initialize(nome="cachorro",raca="vira-lata")
        @nome=nome
        @raca=raca
    end

    def latir(latido='au au')
        latido
    end

end
###############
cao1=Cachorro.new('toto','pincher')
puts cao1.latir
cao2=Cachorro.new('rex','pitbull')
puts cao2.latir('wolf wolf')
#########################
class Papagaio
    attr_accessor :nome,:idade
    def initialize(nome='papagaio',idade=0)
        @nome=nome
        @idade=idade
    end
    def repetir_frase(frase='curupaco!')
        frase
    end
end
#############
puts
puts
puts

passaro1=Papagaio.new('maritaca')
puts passaro1.nome
puts passaro1.idade
puts passaro1.repetir_frase()