class CreateNotepads < ActiveRecord::Migration[7.0]
  def change
    create_table :notepads do |t|
      t.string :name
      t.date :purchase_date

      t.timestamps
    end
  end
end
