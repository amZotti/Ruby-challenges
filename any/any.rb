def any? list, &block
  list.each do |i|
    return true if block.call(i)
  end
  false
end
