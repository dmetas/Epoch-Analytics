class CreateCompletedChallenges < ActiveRecord::Migration
  def change
    create_table :CompletedChallenges do |t|
      t.string :gh_username
      t.string :clone_time
      t.string :pull_time
      t.references :challenge

      t.timestamps
    end
  end
end
