class Fruitable
  def self.create(fruit_type)
    case fruit_type
    when :orange
      Orange.new
    when :apple
      Apple.new
    when :watermelon
      Watermelon.new
    else
      raise "Not a known fruit!"
    end
  end
end

class Orange < Fruitable
  def initialize
    color = "orange"
    size = "small"
    shape = "round"
  end
  attr_reader :color, :size, :shape
end

class Apple < Fruitable
  def initialize
    color = "red"
    size = "small"
    shape = "round"
  end
  attr_reader :color, :size, :shape
end

class Watermelon < Fruitable
  def initialize
    color = "green"
    size = "large"
    shape = "oval"
  end
  attr_reader :color, :size, :shape
end

watermelon = Fruitable.create(:watermelon)
apple = Fruitable.create(:apple)
orange = Fruitable.create(:orange)
