class Event < ApplicationRecord
	has_many :statements
  has_many :moderators
  belongs_to :organization, optional: true
end
