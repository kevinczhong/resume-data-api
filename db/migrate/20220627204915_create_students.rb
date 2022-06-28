class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :short_bio
      t.string :linkedin
      t.string :twitter_handle
      t.string :personal_website
      t.string :online_resume
      t.string :github
      t.string :photo

      t.timestamps
    end
  end
end
