class ChangeColumnNameEcet < ActiveRecord::Migration[5.1]
  def change
  	change_column :ecets, :question, :text
  end
end
