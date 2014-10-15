class CardsController < ApplicationController
  def index
    @cards = Card.includes(:suit)
  end

  def shuffle
    @cards = Card.includes(:suit).shuffle
    render :index
  end
end
