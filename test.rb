def squares_of_two
  squares_of_twos = []
  100.times do |i|
    squares_of_twos << (2 ** i) 
  end
  squares_of_twos
end

def is_square_of_two?(input)
  squares = squares_of_two
  answer = false
  squares.each do |square|
    if input != square
    else
      answer = true
    end
  end
  answer

end

puts is_square_of_two?(999)
