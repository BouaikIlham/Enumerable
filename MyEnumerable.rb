module MyEnumerable
    def all?
        return true unless block_given?
        each { |element| return false if yield(element) }
        true 
    end

