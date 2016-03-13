require 'date'

def billing_date(date, billing_days)
  dates = billing_days.map do |d|
    Date.new(date.year, date.month, d)
  end
  dates.sort!

  result = dates.find { |d| date <= d }
  return result if result

  # next_dates = dates.map { |d| d >> 1 }
  # return next_dates.find { |d| date < d }
  dates.first.next_month
end

billing_days = [15, -1]
puts billing_date(Date.new(2010, 6, 14), billing_days)
puts billing_date(Date.new(2010, 6, 15), billing_days)
puts billing_date(Date.new(2010, 6, 16), billing_days)
puts billing_date(Date.new(2010, 6, 29), billing_days)
puts billing_date(Date.new(2010, 6, 30), billing_days)
puts billing_date(Date.new(2010, 7, 1),  billing_days)

puts billing_date(Date.new(2015, 2, 16), billing_days)
puts billing_date(Date.new(2016, 2, 16), billing_days)
