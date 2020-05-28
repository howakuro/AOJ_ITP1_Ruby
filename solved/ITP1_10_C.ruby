while true
    n = gets.to_i
    break if n == 0
    s = gets.split(" ").map{|a| a.to_f}
    mean = s.sum / s.length
    sum_of_squares = s.inject(0){|sum, a| sum + (a - mean)**2}
    puts Math.sqrt(sum_of_squares / s.length)
end