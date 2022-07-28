module MyEnumerable
  def all?
    return true unless block_given?

    each { |element| return false unless yield(element) }
    true
  end
end
