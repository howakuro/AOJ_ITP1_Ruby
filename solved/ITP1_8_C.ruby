hash = Hash.new(0) 
while s = gets
    s = s.downcase
    s.each_char do |a|
        if 'a'.ord <= a.ord and a.ord <= 'z'.ord
            hash[a] += 1
        end
    end
end

for i in 'a'..'z'
    puts "#{i} : #{hash[i]}"
end