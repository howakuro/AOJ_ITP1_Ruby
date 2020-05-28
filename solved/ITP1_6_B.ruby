hash = {
    "S" => [*1..13], 
    "H" => [*1..13], 
    "C" => [*1..13], 
    "D" => [*1..13]
} 

n = gets.to_i
for i in 0...n
    soot, num = gets.split(" ")
    hash[soot].delete(num.to_i)
end

hash.each do |key,val|
    val.each do |num|
        puts "#{key} #{num}"
    end
end
