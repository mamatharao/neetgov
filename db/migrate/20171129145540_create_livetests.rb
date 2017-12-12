class CreateLivetests < ActiveRecord::Migration[5.1]
  def change
    create_table :livetests do |t|
      t.string :cet
      t.string :subject
      t.integer :testcount
      t.string :status
      t.string :key

      t.timestamps
    end
  end
end
