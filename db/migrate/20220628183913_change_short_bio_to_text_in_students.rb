class ChangeShortBioToTextInStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :short_bio, :text
  end
end
