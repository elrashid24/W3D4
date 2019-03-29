class RemoveUniquenessFromAnswerId < ActiveRecord::Migration[5.2]
  def change
    remove_index :responses, :answer_id
    add_index :responses, :answer_id
  end
end
