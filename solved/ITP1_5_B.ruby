while true
    h, w = gets.split(" ").map{|a| a.to_i}
    break if h == 0 and w == 0
    for y in 0...h
        for x in 0...w
            if y == 0 or y == h-1 or x == 0 or x == w-1
                print "#"
            else
                print "."
            end
        end
        puts ""
    end
    puts ""
end