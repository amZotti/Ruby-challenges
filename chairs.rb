# Open file for reading
# open another file for writing
# for each line in input file
# Output the round and children eliminated   (output  number of child - number of seats)


class MusicalChairs
  def initialize(input, output)
    @input = File.new(input, "r")
    @output = File.new(output, "w")
  end

  def run
    @input.to_a.each_with_index do |line, index|
      students,chairs = line.split(" ").map(&:to_i)
      eliminated_students = students - chairs
      @output.puts "Round #{index + 1}: #{eliminated_students} students eliminated"
    end
    @output.close
  end
end

musical_chairs = MusicalChairs.new("chairs.in.txt", "chairs.out")
musical_chairs.run
