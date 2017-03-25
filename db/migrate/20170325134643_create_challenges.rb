class CreateChallenges < ActiveRecord::Migration
  def change
  	create_table :challenges do |t|
  		t.string :name
  		t.string :average
  		t.string :median

  		t.timestamps
  	end
  end
end
