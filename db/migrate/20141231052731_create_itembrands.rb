class CreateItembrands < ActiveRecord::Migration
  def change
    create_table :itembrands do |t|
      t.integer :item_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
