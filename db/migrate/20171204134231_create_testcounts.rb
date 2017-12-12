class CreateTestcounts < ActiveRecord::Migration[5.1]
  def change
    create_table :testcounts do |t|
      t.integer :testcount
      t.integer :userid
      t.string :cet
      t.string :subject
      t.string :shortsubject

      t.timestamps
    end
  end
end
