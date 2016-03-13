require 'date'

def age(birth_date)
  today = Date.today
  today_num \
    = today.year * 10000 + today.month * 100 + today.day
  birth_date_num \
    = birth_date.year * 10000 + birth_date.month * 100 + birth_date.day
  (today_num - birth_date_num) / 10000
end

puts age(Date.new(1993, 2, 24))
puts age(Date.new(1990, 1, 18))
