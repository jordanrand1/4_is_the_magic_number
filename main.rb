require 'humanize'

def check_num(num)
  if num.humanize.length == 4
    puts "#{num} is 4"
    puts "4 is the magic number"
  else
    new_number(num)
  end
end

def new_number(num)
  #puts num.humanize.gsub(/[^a-zA-Z0-9]/, '')
  new_num = num.humanize.gsub(/[^a-zA-Z0-9]/, '').length
  puts "#{num} is #{new_num}"
  check_num(new_num)
end

puts 'Enter a number'
num = gets.strip.gsub(/\s+/, '').gsub(/[^0-9]/, '')
check_num(num.to_i)

