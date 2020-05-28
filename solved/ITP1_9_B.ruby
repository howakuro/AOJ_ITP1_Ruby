while true
    s = gets.chomp
    break if s == "-"
    s = s.split("")
    m = gets.to_i
    for i in 0...m
        num = gets.to_i
        tmp = s.shift(num)
        s.concat(tmp)
    end
    puts s.join("")
end

