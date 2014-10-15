class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def shuffle
    @cards = Card.all.shuffle
    render :index
  end
end
