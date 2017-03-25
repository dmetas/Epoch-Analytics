class Challenge < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_challenges
  validates	:hashed_password, presence: :true
  validates :name, presence: :true
end
