class AddTimestampsToMessages < ActiveRecord::Migration[5.1]

  def up
    Message.destroy_all
    add_column :messages, :created_at, :datetime, null: false
    add_column :messages, :updated_at, :datetime, null: false
  end

  def down
    remove_column :messages, :created_at
    remove_column :messages, :updated_at
  end
end
