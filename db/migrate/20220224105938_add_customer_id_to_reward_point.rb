class AddCustomerIdToRewardPoint < ActiveRecord::Migration[6.1]
  def change
    add_column :reward_points, :customer_id, :bigint
  end
end
