class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :owner_id
      t.integer :borrower_id
      t.date :start
      t.date :end
      t.boolean :returned
      t.boolean :accepted
      t.integer :tool_quantity
      t.integer :tool_id

      t.timestamps
    end
  end
end
