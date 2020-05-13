n = gets.to_i
array = gets.split(" ").map{|a| a.to_i}
puts "#{array.min} #{array.max} #{array.inject(:+)}"