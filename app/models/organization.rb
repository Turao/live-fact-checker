class Organization < ApplicationRecord
	has_many :events, dependent: :nullify
end
