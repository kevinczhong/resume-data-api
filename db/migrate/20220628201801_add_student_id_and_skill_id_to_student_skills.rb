class AddStudentIdAndSkillIdToStudentSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :student_skills, :student_id, :integer
    add_column :student_skills, :skill_id, :integer
  end
end
