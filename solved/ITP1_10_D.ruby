n = gets.to_i
x = gets.split(" ").map{|a| a.to_f}
y = gets.split(" ").map{|a| a.to_f}


for p in 1..3
    puts ((0...n).map{|i| ((x[i] - y[i]).abs)**p}.sum)**(1.0/p)
end

puts (0...n).map{|i| (x[i] - y[i]).abs}.max