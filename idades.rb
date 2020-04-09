# frozen_string_literal: true

require 'pry'
require "sqlite3"

  def idades
    x = 0
    y = 0
    padre = 0
    menino = 0
    z = 0
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
    end
    "As idades possiveis dos passageiros sao #{x}, #{y}, #{z}, sacristao #{menino} e o padre tem #{padre}"
    padre_age
  end

  def all_combs
    poss_ages = []
    idades until 
    100.times { poss_ages.push(idades) unless poss_ages.include?(idades) }
    comb << poss_ages.count
    debugger
  end



