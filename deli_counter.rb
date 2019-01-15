require 'pry'
katz_deli = []

def take_a_number(array, name)
  array.push(name)
  position = array.index(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
  # return name, position
end

take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Tom")
take_a_number(katz_deli, "Alan")

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    array.each_with_index do |name, index|
      message += " #{index.to_i+1}. #{name}"
    end
    puts "#{message}"
  end
end

line(katz_deli)

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end

now_serving(katz_deli)

deli_line = ["Andy", "Howard"]
#binding.pry
puts "goodbye"
