class Moderator < ApplicationRecord
	has_many :fact_checks
  belongs_to :person
  belongs_to :event

  validates :person, uniqueness: true

  def getName()
      self.person.name
  end
end
