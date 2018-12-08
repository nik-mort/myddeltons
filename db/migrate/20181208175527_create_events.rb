class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :tier

      t.timestamps
    end
  end
end
