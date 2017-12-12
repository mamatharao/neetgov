class AddPagenoColumnToEcetexam < ActiveRecord::Migration[5.1]
  def change
    add_column :ecetexams, :pageno, :integer
  end
end
