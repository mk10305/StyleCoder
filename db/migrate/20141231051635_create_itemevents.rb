class CreateItemevents < ActiveRecord::Migration
  def change
    create_table :itemevents do |t|
      t.integer :item_id
      t.integer :event_id

      t.timestamps
    end
  end
end
