class CreateItemretailers < ActiveRecord::Migration
  def change
    create_table :itemretailers do |t|
      t.integer :item_id
      t.integer :retailer_id

      t.timestamps
    end
  end
end
