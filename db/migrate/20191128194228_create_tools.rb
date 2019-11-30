class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :team_id
      t.integer :quantity
      t.string :state

      t.timestamps
    end
  end
end
