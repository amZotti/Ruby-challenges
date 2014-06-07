class Factorial

  def calculate(factorial)
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

factorial_calculator = Factorial.new()
factorial_calculator.calculate(10)
factorial_calculator.calculate(3)
factorial_calculator.calculate(18)
