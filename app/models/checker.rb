class Checker < ApplicationRecord
	belongs_to :person
  has_many :fact_checks

  validates :person, uniqueness: true

  def getName()
      self.person.name
  end
end
