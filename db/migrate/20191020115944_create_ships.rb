class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :ship_name, null: false
      t.text :comment

      t.timestamps
    end
  end
end
