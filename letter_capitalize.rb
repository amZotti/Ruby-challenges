class String
  def titleize
    self.gsub(/\w+/) do |word|
      word.capitalize
    end
  end
end
puts "lets see how this works".titleize
