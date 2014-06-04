class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "Name: #{@name}, age:#{@age}"
  end
end

class YoungestOldest
  attr_accessor :people
  def initialize
    @people = []
    @active_input  = true
  end

  def sort_people
    @people.sort_by { |person| person.age }
  end

  def oldest_person
    sort_people.last
  end

  def youngest_person
    sort_people.first
  end

  def display_generations
    puts "Youngest person is #{youngest_person.name}"
    puts "Oldest person is #{oldest_person.name}"
  end

  def process_data(input)
    name,age = input.split(" ")
    @people << Person.new(name,age.to_i)
  end

  def input_loop
    while @active_input
      print(">")
      input = gets.chomp
      if input == ""
        @active_input = false
      else
        process_data(input)
      end
    end
  end

  def getinfo
    puts "Enter names followed by ages"
    input_loop
    display_generations
  end
end

young_men = YoungestOldest.new
young_men.getinfo
