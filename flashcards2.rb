require "./card_reader"

class Deck
  def initialize(cards)
    @cards = cards.shuffle
  end

  def play
    @cards.each do |card|
      card.play
    end
  end
end

card_reader = CardReader.new("cards")

deck = Deck.new(card_reader.cards)
deck.play

