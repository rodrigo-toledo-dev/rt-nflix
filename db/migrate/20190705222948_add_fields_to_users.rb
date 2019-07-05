class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :birthday, :date
    remove_column :users, :image
  end

  def down
    remove_column :users, :birthday
    add_column :users, :image, :string
  end
end
