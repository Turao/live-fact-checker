class Source < ApplicationRecord
	belongs_to :fact_check, required: false

  validates_length_of :url, :minimum => 1, :maximum => 250, :allow_blank => false
end
