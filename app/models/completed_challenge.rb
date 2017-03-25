class CompletedChallenge < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :challenge 
end
