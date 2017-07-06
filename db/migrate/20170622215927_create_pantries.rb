class CreatePantries < ActiveRecord::Migration
  def change
    create_table :pantries do |t|
      t.string :ingredient
      t.text :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
