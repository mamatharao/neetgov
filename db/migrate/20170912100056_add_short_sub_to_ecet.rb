class AddShortSubToEcet < ActiveRecord::Migration[5.1]
  def change
  	add_column :ecets, :short_subject, :string
  end
end
