require_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&var)
    @list.each(&var)
  end
end
list = MyList.new(1, 2, 3, 4)

puts list.filter(&:even?)
