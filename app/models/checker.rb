class Checker < ApplicationRecord
	belongs_to :person
  has_many :factchecks
end
