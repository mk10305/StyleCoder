class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :cost
      t.string :image
      t.string :fit
      t.string :season
      t.text :notes
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
