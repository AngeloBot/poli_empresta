class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.integer :quantity
      t.text :description
      t.string :name
      t.string :photo
      t.integer :team_id

      t.timestamps
    end
  end
end
