class Factorial
  def initialize(factorial)
    @num = 1
    @factorial = factorial
    calculateFactorial
  end

  def calculateFactorial
    (@factorial).times do |i|
     @num  *= (i+1)
    end
    puts @num
  end
end

Factorial.new(5)
