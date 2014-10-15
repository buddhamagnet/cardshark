require 'test_helper'

class CardTest < ActiveSupport::TestCase
  def setup
    @suit = Suit.new(name: 'hearts')
    @card = Card.create(identifier: "king")
    @suit.cards << @card
    @suit.save
  end

  def test_friendly_name
    assert_equal("king of hearts", @card.to_s)
  end
end
