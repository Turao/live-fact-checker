class Statement < ApplicationRecord
	has_many :factchecks
  belongs_to :politician
  belongs_to :event

  validates_length_of :content, :minimum => 1, :maximum => 250, :allow_blank => false
end
