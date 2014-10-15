class Card < ActiveRecord::Base
  belongs_to :suit

  def orphaned?
    suit.nil?
  end

  def to_s
    orphaned? ? identifier : "#{identifier} of #{suit.name}"
  end

  def icon
    orphaned? ? "#{identifier}.png" : "#{identifier}_#{suit.name}.png"
  end
end
