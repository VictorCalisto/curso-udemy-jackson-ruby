class Adivinhacao
    attr_reader :sorteado, :maximo, :minino
    attr_accessor :chute, :tentativas, :testa

    def initialize(minimo=1,maximo=100,tentativas=10)
        @maximo=maximo
        @minino=minimo
        @tentativas=tentativas
        @testa=false
        @sorteado=Random.rand(@minino..@maximo)
        begin
            puts "Chute um numero entre #{@maximo} e #{@minino}"
            ler()
            compara()
        end while (@testa==false) and (tentativas>0)
    end

    def ler()
        @chute=gets.chomp.to_i
    end
    def compara()
        if(@chute==@sorteado)
            puts "Parabens voce acertou"
            @testa=true
        elsif(@chute>@sorteado)
            puts "Digite um valor menor"
            @tentativas-=1
        else
            puts "Digite um valor maior"
            @tentativas-=1
        end
    end
end
##############
jogo=Adivinhacao.new(1,10,10)
