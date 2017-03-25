class CreateCompletedChallenges < ActiveRecord::Migration
  def change
    create_table :completed_challenges do |t|
      t.string :gh_username
      t.datetime :clone_time
      t.datetime :pull_time
      t.references :challenge

      t.timestamps
    end
  end
end
