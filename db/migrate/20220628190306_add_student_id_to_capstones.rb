class AddStudentIdToCapstones < ActiveRecord::Migration[7.0]
  def change
    add_column :capstones, :student_id, :integer
  end
end
