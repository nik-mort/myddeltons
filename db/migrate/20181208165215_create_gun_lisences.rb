class CreateGunLisences < ActiveRecord::Migration[5.1]
  def change
    create_table :gun_lisences do |t|
      t.string :classification
      t.string :number
      t.date :expiry_date
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
