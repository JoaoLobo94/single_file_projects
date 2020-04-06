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

def sample(n)
    Hash[to_a.sample(n)]
end

def random_prisoner
  generator
  correct_number = 0
  ammount_of_tries = 0
  ammount_of_opens = 0

  @prisoners.each do |prisoner|
    @cupboard.each do |drawer|
        ammount_of_opens += 1
        if ammount_of_opens <= 50
            ammount_of_tries += 1
            if prisoner == drawer.last
              p correct_number +=1 
            end
        end
    end
    ammount_of_opens = 0
  end
end

def inteligent_prisoner; end

random_prisoner
