class Array
  def accumulate(&block)
    output = []
    each { |e| output << yield(e) }
    output
  end
end

module BookKeeping
  VERSION = 1
end
