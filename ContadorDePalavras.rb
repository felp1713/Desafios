def obtendo_palavra
  puts "Escreva uma frase e irei contar quantas palavras existem nela:\n"
  frase = gets.chomp

  palavras_total = contador_palavras(frase, ' ')
  puts "Foram escritas #{palavras_total} palavras"

  reiniciar_contador
end

def contador_palavras(frase, delimitador)
  palavras_contar = []
  palavra_atual = ""

  frase.each_char do |palavra|
    if palavra == delimitador
      palavras_contar << palavra_atual unless palavra_atual.empty?
      palavra_atual = ""
    else
      palavra_atual += palavra
    end

  end

  palavras_contar << palavra_atual unless palavra_atual.empty?

  palavras_contar.count
end

def reiniciar_contador
  puts 'Quer tentar uma nova frase? Pressione 1 - Sim ou 2 - Não'
  tentar_de_novo = gets.chomp.to_i

  tentar_de_novo == 1 ? obtendo_palavra : puts('Obrigado, Até a próxima!!')
end

obtendo_palavra
