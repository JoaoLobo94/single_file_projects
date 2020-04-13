# frozen_string_literal: true

require 'pry'

def smarttxt
  p 'Enter your password too see if its common'
  your_pass = gets.chomp
  p "Enter the full pass on your computer of the txt file with the passwords you wish to try first. A list of the world's most common passwords should do"
  path_to_file = gets.chomp
  start = Time.now
  file_data = File.read(path_to_file).split
  p 'Thinking....'
  found = false
  file_data.each_with_index do |pass, index|
    if pass == your_pass
      p "Your pass #{pass} and it is common and its the #{index} common in the world"
      found = true
      break
    end
  end
  finish = Time.now
  elapsed = finish - start
  p "it took #{elapsed} seconds to complete the task"
  p "Your password isn't common" unless found
end

smarttxt
