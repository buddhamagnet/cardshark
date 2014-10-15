Suit.create(name: 'hearts')
Suit.create(name: 'spades')
Suit.create(name: 'clubs')
Suit.create(name: 'diamonds')

Suit.all.each do |suit|
  1.upto(10) do |i|
    Card.create(identifier: i, suit: suit)
  end
  Card.create(identifier: 'jack', suit: suit)
  Card.create(identifier: 'queen', suit: suit)
  Card.create(identifier: 'king', suit: suit)
end
