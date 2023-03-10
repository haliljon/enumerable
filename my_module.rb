module MyEnumerable
  def all?(*)
    each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?(*)
    each do |item|
      return true if yield(item)
    end
    false
  end

  def filter(*)
    result = []
    each do |item|
      result << item if yield(item)
    end
    result
  end
end
