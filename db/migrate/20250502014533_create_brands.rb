class CreateBrands < ActiveRecord::Migration[8.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :average_price

      t.timestamps
    end
    add_index :brands, :name, unique: true
  end
end
