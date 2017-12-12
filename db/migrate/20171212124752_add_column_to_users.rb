class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :district, :apdistrict
  	add_column :users, :tsdistrict, :string
  end
end
