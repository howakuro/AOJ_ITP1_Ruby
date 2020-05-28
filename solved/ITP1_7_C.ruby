r, c = gets.split(" ").map{|a| a.to_i}
a = Array.new(r){gets.split(" ").map{|a| a.to_i}}
new_a = Array.new(r+1){Array.new(c+1, 0)}

for y in 0...r
    for x in 0...c
        new_a[y][x]  = a[y][x]
        new_a[y][c] += a[y][x]
        new_a[r][x] += a[y][x]
    end
end

for x in 0...c
    new_a[r][c] += new_a[r][x]
end

for i in new_a
    puts i.join(" ")
end
