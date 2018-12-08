class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :contact_number
      t.string :emergency_contact

      t.timestamps
    end
  end
end
