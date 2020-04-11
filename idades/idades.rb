# frozen_string_literal: true

require 'pry'
require 'set'
require 'csv'

def idades
  x = 0
  y = 
  z = 0
  r = x * y * z
  padre_age = []
  until r == 2450
    x = rand(1..100)
    y = rand(1..100)
    z = rand(1..100)
    padre = rand(1..100)
    r = x * y * z
    menino = (x + y + z) / 2
    padre_age = [x, y, z, menino]
 end
  padre_age
end

def all_combs
  poss_ages = []
  1000.times { poss_ages.push(idades) }
  padre_idade = []
  poss_ages.uniq!

  poss_ages.each do |comb|
    padre = rand(1..100)
    padre_idade << padre if comb.any? { |age| padre < age }
  end
  padre_idade

  poss_ages.each do |possible|
    p "As idades possiveis dos passageiros sao #{possible[0]}, #{possible[1]}, #{possible[2]}, sacristao #{possible[3]}"
  end
    padre_idade.each do |padreco|
       "O padre pode ter as seguintes idades #{padre_idade}"
  end
  p "Existe, #{poss_ages.count} idades"


  p "Assumindo que o sacristao sabe a sua idade"

  headers = %w[Pessoa1 Pessoa2 Pessoa3 sacristao padre]
  CSV.open('idade.csv', 'wb', headers: true) do |csv|
    csv << headers
    poss_ages.each do |possible|
       csv << possible
      end
    end
  end
all_combs
