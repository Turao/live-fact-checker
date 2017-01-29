class Politician < ApplicationRecord
	has_many :statements
  belongs_to :person
  belongs_to :party

  def getName()
      self.person.name
  end
end
