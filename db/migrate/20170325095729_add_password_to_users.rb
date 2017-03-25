class AddPasswordToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password, :text
    add_column :users, :created_at, :timestamp
    add_column :users, :updated_at, :timestamp
  end
end
