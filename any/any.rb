class Array
  def any?  &block
    self.each do |i|
      return true if block.call(i)
    end
    false
  end
end
