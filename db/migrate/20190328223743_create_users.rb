class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.timestamps
    t.string :username, null: false 
    
    end
    add_index :users, :username, unique: true 
    
  end
end
