module MyEnumerable
  def all?
    return true unless block_given?

    each { |element| return false unless yield(element) }
    true
  end

  def any?
    return true unless block_given?

    each { |element| return true if yield(element) }
    false
  end

  def filter
    enum_array = []
    each { |element| enum_array.push(element) if yield(element) }
    enum_array
  end
end
