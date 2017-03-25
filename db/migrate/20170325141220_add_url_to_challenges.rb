class AddUrlToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :url, :string
  end
end
