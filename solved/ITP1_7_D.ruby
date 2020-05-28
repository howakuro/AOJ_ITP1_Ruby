n, m, l = gets.split(" ").map{|a| a.to_i}

a = Array.new(n){gets.split(" ").map{|a| a.to_i}}
b = Array.new(m){gets.split(" ").map{|a| a.to_i}}

new_mat = Array.new(n){Array.new(l, 0)}

for i in 0...n
    for j in 0...l
        for k in 0...m
            new_mat[i][j] += a[i][k]*b[k][j]
        end 
    end
end

for i in new_mat
    puts i.join(" ")
end