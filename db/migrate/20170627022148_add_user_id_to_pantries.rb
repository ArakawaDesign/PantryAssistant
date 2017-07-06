class AddUserIdToPantries < ActiveRecord::Migration
  def change
    add_column :pantries, :user_id, :integer
  end
end
