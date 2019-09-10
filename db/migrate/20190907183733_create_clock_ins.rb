class CreateClockIns < ActiveRecord::Migration[5.2]
  def change
    create_table :clock_ins do |t|
      t.references :teacher, foreign_key: true
      t.integer :clock_type

      t.timestamps
    end
  end
end
