class RunLength
  def initialize
    @letters_input = get_letters
    @letters_output = ""
    @letter_occurances = 1
    count_letters
    puts @letters_output
  end

  def get_letters
    gets.chomp.split("")
  end

  def count_letters
    @letters_input.each_with_index do |letter, index|
      @comparing_letter = letter
      check_letter_change(index)
    end
  end

  def check_letter_change(index)
    if @comparing_letter == @letters_input[index + 1]
      @letter_occurances += 1
    else
      append_entry!
      clear_entry!
    end
  end

  def clear_entry!()
    @letter_occurances = 1
  end
  def append_entry!
    @letters_output += @letter_occurances.to_s
    @letters_output += @comparing_letter
  end
end

test = RunLength.new
