# frozen_string_literal: true

require 'pry'
arr = Array.new(2**rand(1..20)) { |i| i + 1 }

@need_sort = arr.shuffle

def merge_sort(arr)
  if arr.size > 1 
    divided = arr.each_slice((arr.size / 2.0).round).to_a
    p arr.size
    merge_sort(divided)
  end

end

merge_sort(@need_sort)
