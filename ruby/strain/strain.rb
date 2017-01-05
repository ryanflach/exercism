class Array
  def keep(&block)
    return to_enum(:keep) unless block_given?
    output = []
    each { |e| output << e if yield(e) }
    output
  end

  def discard(&block)
    return to_enum(:discard) unless block_given?
    output = []
    each { |e| output << e unless yield(e) }
    output
  end
end
