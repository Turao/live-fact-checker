class Moderator < ApplicationRecord
	has_many :factchecks
  belongs_to :person
  belongs_to :event
end
