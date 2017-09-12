class AddNamesToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :fname, :string
  	add_column :users, :lname, :string
  	add_column :users, :mobile, :string
  	add_column :users, :state, :string
  	add_column :users, :district, :string
  	add_column :users, :refer, :string
  	add_column :users, :key, :string
  end
end
