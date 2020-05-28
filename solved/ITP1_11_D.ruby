class Dice
    def initialize(data)
        @data = data;
        @start_data = data.map{|a| a} 
    end
    
    def reset
        @data = @start_data.map{|a| a}
    end

    def west
        @data[0], @data[3],@data[5],@data[2] = @data[2], @data[0], @data[3], @data[5]
    end
    
    def east
        @data[0], @data[3],@data[5],@data[2] = @data[3],@data[5], @data[2], @data[0]
    end
    
    def north
        @data[0], @data[1], @data[5], @data[4] = @data[1], @data[5], @data[4], @data[0]
    end 
    
    def south
        @data[0], @data[1], @data[5], @data[4] = @data[4], @data[0], @data[1], @data[5]
    end
    
    def command(direction)
        case direction
            when "E" then
                self.east
            when "N" then
                self.north
            when "W" then
                self.west
            when "S" then
                self.south
        end
    end

    def get_surface(n)
        return @data[n-1]
    end

    def get_dice
        return @data
    end
end

def same_check(dice1, dice2)
    if dice1.get_dice == dice2.get_dice
        return true
    end
    "EEENEEENEEESEEESEEENEEEN".each_char do |c|
        dice1.command(c)
        if dice1.get_dice == dice2.get_dice
            dice1.reset
            return true
        end
    end
    dice1.reset
    return false
end

def main()
    n = gets.to_i
    dice = []
    for i in 0...n
        dice.push(Dice.new(gets.split(" ").map{|a| a.to_i}))
    end
    
    for comb in [*0...n].combination(2)
        if same_check(dice[comb[0]],dice[comb[1]])
            puts "No"
            return
        end
    end
    puts "Yes"
end

main()
