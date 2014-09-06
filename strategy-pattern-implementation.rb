class Shapeable
  def draw
  end
end

class Square < Shapeable
  def draw
    puts "----"
    puts "|   |"
    puts "|   |"
    puts "----"
  end
end

class Triangle < Shapeable
  def draw
    puts "   ^   "
    puts "  / \\  "
    puts "/     \\"
    puts "-------"
  end
end
Triangle.new.draw
Square.new.draw
