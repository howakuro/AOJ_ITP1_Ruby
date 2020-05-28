alphabets = "A".."D"

1.upto(11) do |i|
    alphabets.each do |a|
        str = "./Problems/ITP1_#{i}_#{a}.ruby"
        if not File.exist?(str)  
            open(str,'w')
        end
    end
 end
