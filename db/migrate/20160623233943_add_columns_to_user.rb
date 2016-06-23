class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile_photo, :string
    add_column :users, :role, :integer
  end
end
