class RemoveStudentIdFromSkills < ActiveRecord::Migration[7.0]
  def change
    remove_column :skills, :student_id, :integer
  end
end
