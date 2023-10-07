# Test
# Driven
# Development
require "date"

def day_until_christmas(date = Date.today)
  # return date.today - date.new()
  # today date
  # Christmas date
  # substraction
  # return the value
  today_date = date
  christmas_date = Date.new(date.year,12,25)
  christmas_date_nextyear = Date.new(date.year + 1,12,25)
  if today_date < christmas_date
    return (christmas_date - today_date).to_i
  else
    return (christmas_date_nextyear - today_date).to_i
  end
end

# puts day_until_christmas

# puts day_until_christmas.class == Integer # => true
# puts day_until_christmas == 167 # => true
# puts day_until_christmas <= 365 # => true
# puts day_until_christmas(Date.new(2023,12,26)) == 365 # => true
# puts day_until_christmas(Date.new(2024,12,26)) == 364 # => true

puts "what the day today ?"
user_day = gets.chomp.to_i
puts "what the month today ?"
user_month = gets.chomp.to_i
puts "what the year today ?"
user_year = gets.chomp.to_i

user_date = Date.new(user_year, user_month, user_day)

puts day_until_christmas(user_date)
