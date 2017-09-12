class CreateEcets < ActiveRecord::Migration[5.1]
  def change
    create_table :ecets do |t|
      t.string :subject
      t.string :question
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :answer
      t.integer :test_count
      t.string :type
      t.string :que_image
      t.string :imagea
      t.string :imageb
      t.string :imagec
      t.string :imaged
      t.string :imaget

      t.timestamps
    end
  end
end
