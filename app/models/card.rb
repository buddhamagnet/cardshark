class Card < ActiveRecord::Base
  belongs_to :suit

  delegate :name, :to => :suit, :prefix => true

  def orphaned?
    suit.nil?
  end

  def to_s
    orphaned? ? identifier : "#{identifier} of #{suit_name}"
  end

  def icon
    orphaned? ? "#{identifier}.png" : "#{identifier}_#{suit_name}.png"
  end
end
