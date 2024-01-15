puts "Escolha um número entre 1 e 5"
v1 = gets.chomp.to_i

# Condicional SE / IF
if v1 > 5 then
  puts "O valor digitado é maior que 10"
elsif v1 < 1
  puts "O valor é menor que 1"
else
  puts "voce digitou um numero valido"
end


# A menos que
unless ((v1 < 5) and (v1>1))
  puts "O número digitado é invalido"
else
  puts "O número digitado é valido"
end

case v1
  when 1
    puts "Vc digitou 1"
  when 2
    puts "Vc digitou 2"
  when 3
    puts "Vc digitou 3"
  when 4
    puts "Vc digitou 4"
  when 5
    puts "Vc digitou 5"
  else
    puts "Opção inválida!!"
end
