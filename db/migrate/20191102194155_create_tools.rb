class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.decimal :price
      t.integer :student_id

      t.timestamps
    end
  end
end
