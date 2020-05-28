n = gets.to_i
a = Array.new(4) { Array.new(3) {Array.new(10,0)}}

for i in 0...n
    b, f, r, v = gets.split(" ").map{|a| a.to_i}
    a[b-1][f-1][r-1] += v
end

for b in 0..3
    for f in 0..2
        for r in 0..9
            print " #{a[b][f][r]}"
        end
        puts ""
    end
    if b != 3
        puts "####################"
    end
end