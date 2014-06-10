#input sentence
##loop through and test if upper by using var == var.upper
#if fasle; make it uppercase
#if true, make it lower case
#


class String
  def swapcase
    str2 = ''
    self.each_char do |word|
      if word == word.upcase
        str2 += word.downcase
      else
        str2 += word.upcase
      end
    end
    str2
  end
end





puts  "Lets see JUST HOW Well this workS!".case_swap


