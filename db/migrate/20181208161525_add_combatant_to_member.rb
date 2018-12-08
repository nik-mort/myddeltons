class AddCombatantToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :combatant, :boolean
  end
end
