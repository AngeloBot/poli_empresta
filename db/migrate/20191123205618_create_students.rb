class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.boolean :admin
      t.string :name
      t.string :email
      t.string :password
      t.string :photo

      t.timestamps
    end
  end
end
