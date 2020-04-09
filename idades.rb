# frozen_string_literal: true

require 'pry'
require 'set'
require 'csv'

def idades
  x = 0
  y = 0
  z = 0
  padre = 0
  r = x * y * z
  padre_age = []
  until r == 2450 && padre_age.any? { |age| padre < age }
    x = rand(1..100)
    y = rand(1..100)
    z = rand(1..100)
    padre = rand(1..100)
    r = x * y * z
    menino = (x + y + z) / 2
    padre_age = [x, y, z, menino]
    all_ages = [x, y, z, menino, padre]
 end
    all_ages
end

def all_combs
  poss_ages = []
  100.times { poss_ages.push(idades) }
  array_of_xyz = []
  poss_ages.each do |new_age|
    array_of_xyz << new_age[0]
    array_of_xyz << new_age[2]
    array_of_xyz << new_age[1]
    array_of_xyz << new_age[3]
  end
  array_of_xyz.in_groups_of(3){|group| p group}

  poss_ages.each do |possible|
    p "As idades possiveis dos passageiros sao #{possible[0]}, #{possible[1]}, #{possible[2]}, sacristao #{possible[3]} e o padre tem #{possible[4]}"
  end
  p "Existe, #{poss_ages.count} idades"

  headers = %w[Pessoa1 Pessoa2 Pessoa3 sacristao padre]
  CSV.open('idade.csv', 'wb', headers: true) do |csv|
    csv << headers
    poss_ages.each do |possible|
      csv << possible
    end
  end
end
all_combs
