n = gets
a = gets.split(" ").map{|a| a.to_i}
puts a.reverse.join(" ")