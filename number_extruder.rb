# frozen_string_literal: true

require 'pry'

def extruder(number)
  no_point_arr = number.split('') - ['.']

   no_point_arr.join
end

extruder('3.14159265')
