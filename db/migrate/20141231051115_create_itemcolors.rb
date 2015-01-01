class CreateItemcolors < ActiveRecord::Migration
  def change
    create_table :itemcolors do |t|
      t.integer :item_id
      t.integer :color_id

      t.timestamps
    end
  end
end
