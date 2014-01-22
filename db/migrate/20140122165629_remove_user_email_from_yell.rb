class RemoveUserEmailFromYell < ActiveRecord::Migration
  def change
  	remove_column :yells, :user_name
  end
end
