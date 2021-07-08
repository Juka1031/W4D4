class Array

   def my_uniq
        temp = []
        self.each do |ele|
            if !(temp.include?(ele))
                temp << ele
            end
        end
        temp
   end


   def two_sum
        arr = []
        self.each_with_index do |ele,idx|
            if self.include?(ele*-1)
                if !arr.include?([ele*-1,idx])
                    arr << [idx,self.index(ele*-1)]
                end
            end
        end
        arr
   end
end