class CreateRewardPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :reward_points do |t|
      t.integer :earned
      t.integer :used
      t.integer :expired

      t.timestamps
    end
  end
end
