class CompletedChallenge < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :challenge 

  def work_time
    start_time = self.clone_time
    end_time = self.pull_time

    TimeDifference.between(start_time, end_time).humanize
  end 

end
