module MyEnumerable
  def all?(&block)
    each do |item|
        return false unless yield(item)
    end
    true
  end

  def any?(&block)
    each do |item|
        return true if yield(item)
    end
    false
  end
  
  def filter(&block)
    result = []
    each do |item| result << item if yield(item)
    end
    result
  end
end