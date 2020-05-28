while true
    s = gets
    sum = 0
    break if s.to_i == 0
    s.each_char do |c|
        sum += c.to_i
    end
    puts sum
end