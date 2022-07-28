require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&var)
    @list.each(&var)
  end
end
