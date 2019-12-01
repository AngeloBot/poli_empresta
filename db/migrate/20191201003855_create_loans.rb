class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :borrower_id
      t.integer :owner_id
      t.date :start
      t.date :end
      t.boolean :accepted
      t.boolean :returned
      t.integer :tool_quantity

      t.timestamps
    end
  end
end
