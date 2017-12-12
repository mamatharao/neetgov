class AddColumnToEcetexam < ActiveRecord::Migration[5.1]
  def change
  	add_column :ecetexams, :startcount, :integer
  	add_column :testcounts, :submited, :string
  end
end
