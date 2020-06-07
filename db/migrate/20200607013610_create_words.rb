class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :name
      t.references :language, null: false, foreign_key: true
      t.string :pronunciation
      t.integer :length
      t.string :level
      t.text :meaning

      t.timestamps
    end
  end
end
