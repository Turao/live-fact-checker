class Moderator < ApplicationRecord
	has_many :fact_checks
  belongs_to :person
  belongs_to :event

  def getName()
      self.person.name
  end
end
