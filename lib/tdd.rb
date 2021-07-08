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
end