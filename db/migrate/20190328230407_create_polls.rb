class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.timestamps
      t.integer :author_id, null: false 

    end
    add_index :polls, :author_id, unique: true 
  end
end
