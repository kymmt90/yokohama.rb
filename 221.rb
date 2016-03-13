require 'date'

module Date4
  def self.nth_kday(year, month, nth, wday)
    first_day = Date.new(year, month, 1)
    first_day + 7 * (nth - 1) + wday - (first_day.cwday % 7)
  end
end

puts Date4.nth_kday(2010, 7, 1, 5)
puts Date4.nth_kday(2010, 7, 1, 6)
puts Date4.nth_kday(2010, 7, 2, 0)
puts Date4.nth_kday(2010, 7, 2, 1)
puts Date4.nth_kday(2010, 7, 4, 1)
puts Date4.nth_kday(2010, 7, 5, 6)
puts Date4.nth_kday(2016, 3, 2, 6)
puts Date4.nth_kday(2016, 2, 5, 1)
