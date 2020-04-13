# frozen_string_literal: true

require 'pry'
def smart()
  year = 1910

  while year < 2020
    month = 0
    year += 1
    while month < 12
      day = 1
      month += 1
      while day < 31
        day = '%02d' % day if day < 9
        month = '%02d' % month if month < 10
        pass = [day] + [month] + [year.to_s]
        pass.permutation.each do |combination|
          p combination.join
        end
        day = day.to_i
        month = month.to_i
        day += 1
      end
    end
  end
end

smart
