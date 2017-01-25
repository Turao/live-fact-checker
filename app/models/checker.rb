class Checker < ApplicationRecord
	belongs_to :person
  has_many :factchecks

  def getName()
      Person.find(self.person_id).name
  end
end
