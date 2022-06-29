class ChangeExperienceDatesToDate < ActiveRecord::Migration[7.0]
  def change
    remove_column :experiences, :start_date, :string
    remove_column :experiences, :end_date, :string
    add_column :experiences, :start_date, :date
    add_column :experiences, :end_date, :date
  end
end
