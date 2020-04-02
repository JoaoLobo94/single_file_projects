# frozen_string_literal: true

require 'pry'
arr = Array.new(2**rand(1..20)) { |i| i + 1 }

@need_sort = arr.shuffle

def merge_sort(arr)
  return arr unless arr.size > 1

  mid = arr.size / 2
  a = merge_sort(arr[0...mid])
  b = merge_sort(arr[mid..-1])
  sorted = []
  sorted << (a[0] < b[0] ? a.shift : b.shift) while [a, b].none?(&:empty?)
  sorted + a + b
end

p merge_sort(@need_sort)[-2]
