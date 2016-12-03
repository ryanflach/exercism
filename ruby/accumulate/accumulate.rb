class Array
  def accumulate(&block)
    return to_enum(:accumulate) unless block_given?
    output = []
    each { |e| output << yield(e) }
    output
  end
end

module BookKeeping
  VERSION = 1
end
