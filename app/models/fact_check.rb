class FactCheck < ApplicationRecord
	enum veracity: [ :true, :partially_true, :false ]

	has_one :source
  has_one :moderator
  belongs_to :checker
  belongs_to :statement
end
