# frozen_string_literal: true

require 'pry'
@door = {}
@arr = %w[open closed]
def doorgen
  (0..100).each do |i|
    @door[i] = @arr.sample
  end
  doorstate
end

def doorstate
    first_p[1] = if first_p[1] == @arr[0]
                   @arr[1]
                 else
                   @arr[0]
                 end
  end
  second_pass = first_pass.each do |second_p|
    next unless second_p[0].even?

    second_p[1] = if second_p[1] == @arr[0]
                    @arr[1]
                  else
                    @arr[0]
                  end
  end
  third_pass = second_pass.each do |third_p|
    next unless third_p[0].odd?

    third_p[1] = if third_p[1] == @arr[0]
                   @arr[1]
                 else
                   @arr[0]
                 end
  end
  third_pass
end

doorgen
