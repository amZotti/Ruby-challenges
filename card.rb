require "csv"
require "./card"

class CardReader
  def initialize(filename )
    @filename = filename
  end

  def cards
    cards = []

    CSV.foreach(@filename, headers: true) do |row|
      cards << Card.new(row["Question"], row["Answer"])
    end

    cards
  end
end
