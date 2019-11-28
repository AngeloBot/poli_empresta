class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :keyword
      t.integer :team_id

      t.timestamps
    end
  end
end
