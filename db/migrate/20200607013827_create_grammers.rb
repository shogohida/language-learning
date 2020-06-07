class CreateGrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :grammers do |t|
      t.string :name
      t.references :language, null: false, foreign_key: true
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
