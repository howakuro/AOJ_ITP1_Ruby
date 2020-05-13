a, b, c = gets.split(" ").map{|a| a.to_i}
puts (a < b and b < c) ? "Yes" : "No"