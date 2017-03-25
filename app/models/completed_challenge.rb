class CompletedChallenge < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :challenge 

  def work_time
    starttime = self.clone_time
    endtime = self.pull_time

  end 

end
