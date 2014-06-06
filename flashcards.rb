#require "./card.rb"
#require "./card_reader"
require "csv"


class Card
  def initialize(question, answer)
    @question = question
    @answer = answer.to_s.upcase
    @user_input = ""
    @return_val = 0
  end

  def play
    output_question
    input_answer
  end

  def output_question
    puts @question
  end

  def input_answer
    @user_input = gets.chomp.upcase

  end
end


  class Deck
    def initialize(cards)
      @score = 0
      @cards = cards.shuffle
    end  

    def play_cards
      @cards.each do |card|
        @score += card.play
        puts @score
      end
      puts "Your final score is: #{@score}"
    end
  end
  cards = [
    Card.new("What is the equivalant of 'try' in ruby?", "begin"),
    Card.new("What symbol indicates global variables?", "$"),
    Card.new("What is the command that checkes the ruby directory for libraries?", "$LOAD_PATH"),
    Card.new("What symbol indicates a class method on the documentation?", "::"),
    Card.new("What symbol indicates an instance method on the documentation?", "#"),
    Card.new("What is an integer called in Ruby?", "FixNum"),
    Card.new("How do you see the type of a variable?", "variable.class"),
    Card.new("How do you see the object ID of a variable?", "variable.object_id"),
    Card.new("How do you determine if a FixNum is even?", "FixNum.even?"),
    Card.new("How do you change the base of a fixnum?", "FixNum.to_s(base)"),
    Card.new("How do you access a class inside a module?", "Module::Class"),
    Card.new("All operators are methods: true or false ", "true"),
    Card.new("methods/conditionals return the last statement in the method/condition: true or false ", "true")
  ]

  deck1 = Deck.new(cards)
  deck1.play_cards
