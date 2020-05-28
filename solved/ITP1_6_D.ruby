n, m = gets.split(" ").map{|a| a.to_i}

a = Array.new(n) {gets.split(" ").map{|a| a.to_i}}
b = Array.new(m) {gets.to_i}
c = Array.new(n, 0)
for i in 0...n
    for j in 0...m
        c[i] += a[i][j]*b[j]
    end
end

puts c
