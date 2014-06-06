class Lottery
  def initialize
    @names = []
    @valid_name = true
   
 
end
  def play
    puts "Enter in a list of names by a blank line to start the lottery!"
    while @valid_name
     input = receive_input
     check_input(input)
   end
  display_winner
  end
  

  def receive_input
    print ">"
    input = gets.chomp
  end

  def check_input(input)
    if input == ""
      @valid_name = false
    else
      @names << input
    end
  end
 

  

  def display_winner
   puts "#{@names.sample} wins!"  
  end
end


run_lottery = Lottery.new
run_lottery.play
