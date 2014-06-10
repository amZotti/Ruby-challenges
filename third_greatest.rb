#Counts length of each array
#sorts them in ascending order
#Returns the third largest
#If 2 have the same number then run test method
#Have test method loop through in reverse and checks which one comes first
#Return that one

class Array
  def third_greatest
    self.sort_by! { |word| word.length }
    self.each {|i| puts i}
  end
 
end


arr = 'hey this is my bbq'.split(" ")
arr.third_greatest


