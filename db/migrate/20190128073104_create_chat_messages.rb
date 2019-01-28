class CreateChatMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_messages do |t|
      t.integer :chat_room_id, null: false
      t.integer :user_id, null: false
      t.string :message, null: false
      t.timestamps
    end
  end
end
