class CreateRows < ActiveRecord::Migration[5.0]
  def change
    create_table :rows do |t|
      t.integer :pattern_id
      t.integer :loop_id
      t.integer :side
      t.integer :row_number
      t.integer :loop_number

      t.timestamps
    end
  end
end
