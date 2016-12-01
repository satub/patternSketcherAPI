class CreateLoops < ActiveRecord::Migration[5.0]
  def change
    create_table :loops do |t|
      t.string :name

      t.timestamps
    end
  end
end
