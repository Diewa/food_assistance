class CreateMeal < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|

      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
