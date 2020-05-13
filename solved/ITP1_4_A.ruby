a,b = gets.split(" ").map{|a| a.to_i}
puts "#{a/b} #{a%b} #{sprintf("%.10f",a.to_f/b.to_f)}"