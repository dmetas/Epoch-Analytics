class RenamePullTimeToForkTime < ActiveRecord::Migration
  def change
    rename_column :completed_challenges, :pull_time, :fork_time
  end
end
