#gives instructions
##get names
#Until there is a blank
#display random winner 

#NAMING
#PLural  = arrays
#action verb = method

class Lottery

  def initialize
    @names = []
  end

  def play
    give_instructions
    get_names
    display_winner
  end

  private
  def give_instructions
    puts "Enter in a list of names followed by a blank line to start the lottery"
  end

  def get_name
    loop do
      name = get_one_name

      if name.empty?
        break
      else
        @names << name
      end
    end
  end


  def get_one_name
    print("> ")
    gets.chomp
  end

  def display_winner
    puts "The winner is #{@names.sample}"
  end
end

Lottery.new.play
