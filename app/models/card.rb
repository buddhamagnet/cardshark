class Card < ActiveRecord::Base
  belongs_to :suit

  def to_s
    "#{identifier} of #{suit.name}"
  end
end
