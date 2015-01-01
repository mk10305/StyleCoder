class CreateWoreItVotes < ActiveRecord::Migration
  def change
    create_table :wore_it_votes do |t|
      t.boolean :vote
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
