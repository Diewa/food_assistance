class CreateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|

      t.string :name
      t.string :quantity

      t.belongs_to :meal, index: true
      t.timestamps
    end
  end
end
