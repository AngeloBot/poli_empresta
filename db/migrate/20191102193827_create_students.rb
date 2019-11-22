class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :given_name
      t.string :family_name
      t.string :cpf
      t.date :date_of_birth

      t.timestamps
    end
  end
end
