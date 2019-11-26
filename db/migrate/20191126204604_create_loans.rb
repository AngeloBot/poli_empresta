class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :borrower_id
      t.integer :owner_id
      t.boolean :returned
      t.boolean :accepted
      t.date :start
      t.date :end
      t.integer :tool_quantity
      t.integer :tool_id

      t.timestamps
    end
  end
end
