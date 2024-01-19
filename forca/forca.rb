class Forca
    NIVEL_MAXIMO=5
    NIVEL_MINIMO=1
    attr_reader :palavra, :dica, :letras
    attr_accessor :posicoes
    def initialize()
        puts "Bem vindo ao jogo da forca!"
        puts "Escolha um nivel de 1 a 5 de dificuldade."
        nivel=ler_nivel()
        linha[[],[],[]]=sortear_palavra(nivel)
        @palavra=linha[0][1]
        @dica=linha[0][2]
        puts "Preste atenção, a dica para sua palavra é :"
        puts @dica
        begin
            seta_posicoes()
            puts @posicoes.join
            ler_palavra()

        end while(@vidas>0 and chute!=@palavra)
        
    end
    private
    def seta_posicoes()
        posicoes
        @palavra.each do |letra|
            tamanho=posicoes.length
            @letras.each do |caracter|
                if (letra==caracter)
                    posicoes<<letra
                end
            end
            posicoes<<'_'  if (tamanho==posicoes.length)
        end
        @posicoes= posicoes
    end

    def ler_arquivo()
        NOME_ARQUIVO_CSV= 'palavras.csv'
        linhas[[],[],[]]
        File.open(NOME_ARQUIVO_CSV, 'r') do |arquivo|
        # Loop enquanto houver linhas no arquivo
        while linha = arquivo.gets
            # Divide a linha usando ';' como delimitador
            dados = linha.chomp.split(';')
            linhas<<[dados[0].to_i,dados[1].to_s,dados[2].to_s]
        end
        linhas
    end

    def sortear_palavra(nivel=3)
        linhas=ler_arquivo()
        linha[[],[],[]]
        if(nivel>=NIVEL_MINIMO and nivel<=NIVEL_MAXIMO)
            condicao=false
            begin
                sorteado= Random.rand((NIVEL_MINIMO-1)..NIVEL_MAXIMO)
                if(linhas[sorteado][0]==nivel.to_i)
                    linha<<=linhas[sorteado]
                    condicao=true
                end
            end while(condicao)
        end
        @linha= linha
    end
    def ler_nivel()
        begin
            nivel= gets.chomp.to_i
        end while(nivel>=NIVEL_MINIMO and nivel<=NIVEL_MAXIMO)
        nivel
    end
    def ler_palavra()
        palavra = gets.chomp.gsub(/[^a-zA-Z]/, '')
        palavra.downcase
        palavra
    end
end
