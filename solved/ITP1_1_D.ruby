s = gets.split(" ").map{|a| a.to_i}
h = s / 3600
s -= h * 3600
m = s / 60
s -= m * 60

puts "#{h}:#{m}:#{s}"
