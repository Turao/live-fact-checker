class FactCheck < ApplicationRecord
	enum veracity: [ :true, :partially_true, :false ]

	has_many :sources, dependent: :destroy
  accepts_nested_attributes_for :sources

  belongs_to :checker
  belongs_to :statement
  belongs_to :moderator, optional: true

  validates_length_of :comment, :minimum => 1, :maximum => 250, :allow_blank => false

  def getCheckerName()
    Checker.find(self.checker_id).getName
  end
end
