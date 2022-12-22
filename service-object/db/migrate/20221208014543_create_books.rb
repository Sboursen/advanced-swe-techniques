class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :title
      t.text :condition
      t.decimal :price, precision: 12, scale: 2
      t.decimal :discount, precision: 12, scale: 2

      t.timestamps
    end
  end
end
