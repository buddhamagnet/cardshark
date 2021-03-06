Suit.destroy_all

joker = Card.where(identifier: "joker").first

delete joker if joker.present?

Suit.create(name: 'hearts')
Suit.create(name: 'spades')
Suit.create(name: 'clubs')
Suit.create(name: 'diamonds')

Suit.all.each do |suit|
  Card.create(identifier: 'ace', suit: suit)

  2.upto(10) do |i|
    Card.create(identifier: i, suit: suit)
  end
  Card.create(identifier: 'jack', suit: suit)
  Card.create(identifier: 'queen', suit: suit)
  Card.create(identifier: 'king', suit: suit)
end

Card.create(identifier: 'joker')
