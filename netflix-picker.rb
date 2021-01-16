def genero
  puts 'a menina tem alguma preferencia?(fala tsim ou naum)'
  generes = %w[si-fi terror suspanse mulher]
  choose_preference = gets.chomp
  if choose_preference.include?('tsim')
    puts 'a menina tem de escolher o tipo que quer ver.. FAVOOR'
    puts "os generos disponiveis sao #{generes}"
    which_preference = gets.chomp
    puts "taziz, a menina escolheu #{which_preference}, pera o computadorzinho vai escolher. ainti"
    sleep 3
    generes.delete(which_preference)
    choices = [which_preference, generes[rand(0..generes.count)], generes[rand(0..generes.count)]].uniq
    puts "o computadorzinho escolheu #{choices}"

  else
    puts 'a randomizar o genero...'
    sleep 3
    randn = rand(0..generes.count)
    puts "o computadorzinhuzi escolheu #{generes[randn]}"
  end
end

genero
