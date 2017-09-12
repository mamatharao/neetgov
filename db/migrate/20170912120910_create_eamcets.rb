class CreateEamcets < ActiveRecord::Migration[5.1]
  def change
    create_table :eamcets do |t|
      t.string :subject
      t.string :short_subject
      t.text :question
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :answer
      t.integer :test_count
      t.string :image_yes
      t.string :image_question
      t.string :imagea
      t.string :imageb
      t.string :imagec
      t.string :imaged
      t.string :imaget

      t.timestamps
    end
  end
end
