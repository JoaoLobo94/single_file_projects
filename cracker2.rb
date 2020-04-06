  def what_pass
    p 'What password would you like to know the time to crack?'
    password = gets.chomp
    p randomizer_brute(password.split('').count, password)
  end

  def randomizer_brute(letters, pass)
    alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,]
    arr = []
    pass.split('').each_with_index do |letter, index|
      val = alphabet.sample(letters)
       if val[index] == letter
        arr<<val[index]
         p arr.join
    end
  end
end
  
  what_pass