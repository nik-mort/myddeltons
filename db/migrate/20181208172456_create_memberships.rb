class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.references :member, foreign_key: true
      t.references :organisation, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
