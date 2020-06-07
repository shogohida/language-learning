class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.references :language, null: false, foreign_key: true
      t.string :chat
      t.string :skype

      t.timestamps
    end
  end
end
