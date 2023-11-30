class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.boolean :status
      t.references :notepad, null: false, foreign_key: true

      t.timestamps
    end
  end
end
