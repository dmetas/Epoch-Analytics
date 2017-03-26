class Challenge < ActiveRecord::Base

  has_many :completed_challenges
  validates :name, presence: :true

  def average
  	completed_challenges = self.completed_challenges
 	challenge_time_total = completed_challenges.reduce(|accum, c| accum + c.time)
 	challenge_time_average = challenge_time_total/completed_challenges.length 

  end

  def median

  	midpoint = array.length/2
  	if array.length.even?
  		median = (array[midpoint] + array[midpoint - 1])/2
	else
  		median = array[midpoint]
  	end
  end

  def fork_url
  	url = self.url
  	fork_url = url[0..7] + "api." + url[8..18] + "repos/" + url[19..-1] + "/forks"
  end


end
