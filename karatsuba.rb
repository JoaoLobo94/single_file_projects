# frozen_string_literal: true

# Karatsuba multiplication
# two equal even numbers with same length
require 'pry'

def karatsuba(number1, number2)
  return unless number1.positive? && number2.positive?

  n = number1.to_s.length

  # check for greater integer
  # add 0 on smallter integer until it becomes same length as larger int && add extra 0 if are uneaven

  if n == 1
    number1 * number2
  else
    a = number1.to_s.split('').take(n / 2).join.to_i
    b = number1.to_s.split('').last(n / 2).join.to_i
    c = number2.to_s.split('').take(n / 2).join.to_i
    d = number2.to_s.split('').last(n / 2).join.to_i
    ac = a * c
    bd = b * d
    pr = a + b
    q = c + d
    pq = pr * q
    adbc = pq - ac - bd
    ((10**n) * ac) + ((10**(n / 2)) * adbc) + bd
  end
end