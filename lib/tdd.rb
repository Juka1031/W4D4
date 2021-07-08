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
        if !(self.all? {|ele| ele.is_a?(Integer)})
            raise "asd"
        end  
        arr = []
        self.each_with_index do |ele,idx|
            if self.include?(ele*-1)
                if !arr.include?([self.index(ele*-1),idx])
                    arr << [idx,self.index(ele*-1)]
                end
            end
        end
        arr
   end

   def my_transpose
        if !(self.all? {|array| array.length == self[0].length})
            raise "asd"
        end

        arr = Array.new(self.length) {Array.new(self[0].length)}
        self.each_with_index do |rows,rows_idx|
            rows.each_with_index do |ele,ele_idx|
                arr[ele_idx][rows_idx] = ele
            end
        end
    arr
   end
end

