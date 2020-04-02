# frozen_string_literal: true

require 'pry'
def generator
  @prisoners = []
  @card = []
  @cupboard = {}
  (0..100).each do |i|
    @prisoners << i
    @card << i
  end
  (0..100).each do |i|
    @cupboard[i] = @card.sample
    @card.delete(@card.sample)
  end
end

def random_prisoner
  generator
  @prisoners.each do |prisoner|

  end
end

def inteligent_prisoner; end

random_prisoner
