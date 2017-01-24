class Politician < ApplicationRecord
	has_many :statements
  belongs_to :person
  belongs_to :party, optional: true

  def getName()
      Person.find(self.person_id).name
  end
end
