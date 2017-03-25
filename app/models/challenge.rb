class Challenge < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_challenges
  validates :name, presence: :true

  def average
  	completed_challenges = self.completed_challenges
 	challenge_time_total = completed_challenges.reduce(|accum, c| accum + c.time)
 	challenge_time_average = challenge_time_total/completed_challenges.length 

  end

  def median
  #Array 
  	#save array.length/2 as variable
  		#halfway = array.length/2
  	#array[halfway
  #Determine midpoint value
  	#Save midpoint value as a variable
  	#Return variable
  	midpoint = array.length/2
  	if array.length.even?
  		median = (array[midpoint] + array[midpoint - 1])/2
	else
  		median = array[midpoint]
  	end
  end


end
