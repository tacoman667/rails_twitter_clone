class CreateYells < ActiveRecord::Migration
  def change
    create_table :yells do |t|
      t.text :user_name
      t.text :content

      t.timestamps
    end
  end
end
