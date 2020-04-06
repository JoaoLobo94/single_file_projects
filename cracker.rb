# frozen_string_literal: true

def cracker(pass)
  p 'App is running, we are checking all combinations in the background...'
  start = Time.now
  counter = 0
  xs = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  1.upto(pass.split('').count).flat_map do |n|
    xs.repeated_permutation(n).each do |perm|
      counter += 1
      if perm.join == pass
        p "Password is #{perm.join} in #{counter} via bruteforce"
      end
    end
  end
  finish = Time.now
  elapse = finish - start
  p "Total time for hacks #{elapse}"
end

def what_pass
  p 'What password would you like to know the time to crack?'
  password = gets.chomp
  cracker(password.to_s)
end

what_pass
