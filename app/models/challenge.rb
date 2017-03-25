class Challenge < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_challenges
  
  validates :name, presence: :true
end
