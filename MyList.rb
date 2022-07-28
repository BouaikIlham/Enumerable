require 'MyEnumerable'
class MyList
    @list = []
    def intialize(list)
        @list = list
        include MyEnumerable
    end
    
    def each(var)
        @list.each(var)
    end
end

