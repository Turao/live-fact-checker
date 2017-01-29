class Checker < ApplicationRecord
	belongs_to :person
  has_many :fact_checks

  def getName()
      self.person.name
  end
end
