class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :retail_price, :precision => 8, :scale => 2
      t.integer :rating
      t.string :vineyard

      t.timestamps null: false
    end
  end
end
