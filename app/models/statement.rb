class Statement < ApplicationRecord
	has_many :factchecks
  belongs_to :politician
  belongs_to :event
end
