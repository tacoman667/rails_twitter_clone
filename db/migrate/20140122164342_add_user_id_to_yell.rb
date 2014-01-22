class AddUserIdToYell < ActiveRecord::Migration
  def change
    add_column :yells, :user_id, :integer
  end
end
