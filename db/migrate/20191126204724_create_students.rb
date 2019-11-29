class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.boolean :admin
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :photo
      t.integer :team_id

      t.timestamps
    end
  end
end