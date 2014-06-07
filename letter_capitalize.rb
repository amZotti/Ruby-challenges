#Get input
##Loop through
#Capitalize every words
#Return string of capitalized words

class LetterCapitalize
  def initialize
    input
    loop_words
    display_output
  end

  def input
    @new_word = ''
    @words = gets.chomp.split(" ")
  end


  def loop_words
    @words.each do |word|
      @new_word +=  capitalize(word)\
        + word[1,word.length] + ' '     
    end
  end

  def capitalize(word)
    word[0] =  word[0].upcase
  end

  def display_output
    puts @new_word
  end
end

LetterCapitalize.new
