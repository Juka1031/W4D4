class Tower
    attr_accessor :arr1, :arr2, :arr3
    def initialize()
        @arr1 = [3,2,1]
        @arr2 = []
        @arr3 = []
    end

    def play
       
        while !won?
            put_in
            puts "----------------"
            p arr1
            p arr2
            p arr3
           
        end
        puts "you won!"
    end

    def won?
        return true if @arr3 == [3,2,1]
        false
    end

    def take_away
         puts "choose a pole to remove a disc"
        input = gets.chomp

        case input.to_i
        when 1
            arr1.length >= 1 ? (return arr1.pop) : (raise "asd")
        when 2
            arr2.length >= 1 ? (return arr2.pop) : (raise "asd")
        when 3
            arr3.length >= 1 ? (return arr3.pop) : (raise "asd")
        else
            raise "invalid input take_away"
        end
    end

    def put_in
        holding_piece = take_away
        puts "choose a pole to add a disc"
        input = gets.chomp
        case input.to_i
        when 1
            if arr1.empty? || (arr1.last != nil && arr1.last > holding_piece)
                arr1 << holding_piece
            else
                raise "error"
            end
        when 2 
            if arr2.empty? || (arr2.last != nil && arr2.last > holding_piece)
                arr2 << holding_piece
            else
                raise "error"
            end
        when 3
            if arr3.empty? || (arr3.last != nil && arr3.last > holding_piece)
                arr3 << holding_piece
            else
                raise "error"
            end
        else
            raise "invalid input put_in"
        end
    end
    
end