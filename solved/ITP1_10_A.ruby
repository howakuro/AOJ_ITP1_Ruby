a, b, c, d = gets.split(" ").map{|a| a.to_f}
puts Math.sqrt((c - a)**2 + (d - b)**2)