class MyHash
  def initialize
    @pairs = []
  end
  
  def inspect
    "{ #{@pairs.join(", ")} }"
  end

  def []=(key,value)
    if key?(key)

    else
    @pairs << Pair.new(key, value)
    end
  end
end

class Pair
  def initialize(key, value)
    @key = key
    @value = value
  end
  def value=(new_value)
    @value = new_value
  end
  def to_s
    "#{@key.inspect} => #{@value.inspect}"
  end
end
