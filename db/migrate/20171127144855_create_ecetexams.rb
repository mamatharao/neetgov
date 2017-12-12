class CreateEcetexams < ActiveRecord::Migration[5.1]
  def change
    create_table :ecetexams do |t|
      t.string :question_id
      t.integer :userid
      t.string :answer
      t.string :testcount
      t.string :subject

      t.timestamps
    end
  end
end
