class Party < ApplicationRecord
	has_many :politicians, dependent: :nullify
end
