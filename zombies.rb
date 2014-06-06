class Game
  def initialize
    gather_information
    format_dictionary_words
    start_turn_nth
    
  end

  def gather_information
    ask_turns
    ask_number_words
    @matched_words = []
    @dictionary_words = []
    ask_words
  end

  def ask_turns
    puts "How many turns do you want to have?"
    @number_of_turns = gets.chomp.to_i
  end

  def ask_number_words
    puts "How many dictionary words do you want to have?"
    @number_of_words = gets.chomp.to_i
  end

  def ask_words
    puts "Pretty pretty please input #{@number_of_words} seperatd by RETURN. Kthnx bai"
    @number_of_words.times do
      @dictionary_words << gets.chomp
    end
  end

  def start_turn_nth
    @number_of_turns.times do
      gather_turn_info
      format_zombie_words
      find_matches
      create_matches
      show_message
    end
  end

  def find_matches
   @matched_letters =  @zombie_words & @dictionary_words
  end


 def show_message
   if @matched_words.empty?
     puts "No matches found\n"
   else
     puts "Did you mean:"
     show_all_answers
     @matched_words = []
   end
 end
 def show_all_answers
   @matched_words.each do |word|
     puts "#{word}?\n"
   end
 end
 


  def create_matches
    @matched_letters.each do |word|
    match_index =  @dictionary_words.index(word)
    @matched_words << @unformatted_dictionary[match_index]
    
    end
  end

  def format_dictionary_words
    @unformatted_dictionary = @dictionary_words
    formatted_dictionary = []

    @unformatted_dictionary.each do |word|
      formatted_dictionary <<  format_word(word)
    end
    @dictionary_words = formatted_dictionary
  end


  def format_word(word)
    word.chars.sort.join.squeeze
  end

  def format_zombie_words
    formatted_zombie_words = []
    @zombie_words.each do |zombie_word|
      formatted_zombie_words << format_word(zombie_word)
    end
    @zombie_words = formatted_zombie_words
  end

  def gather_turn_info
    @zombie_words = []
    ask_number_zombie_words
    gather_zombie_words
  end

  def ask_number_zombie_words
    puts "How many zombie words will we translate for this turn?"
    @number_of_zombie_words = gets.chomp.to_i
  end

  def gather_zombie_words
    @number_of_zombie_words.times do |word_num|
      puts "Enter word number #{word_num}"
      @zombie_words << gets.chomp
    end
  end



end


zomb_game = Game.new
