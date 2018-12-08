class AddMedicalNotesToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :medical_notes, :text
  end
end
