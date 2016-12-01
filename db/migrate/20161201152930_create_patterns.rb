class CreatePatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :patterns do |t|
      t.string :name
      t.integer :width_loops
      t.integer :height_rows
      t.boolean :repeat_x
      t.boolean :repeat_y

      t.timestamps
    end
  end
end
