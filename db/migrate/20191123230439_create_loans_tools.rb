class CreateLoansTools < ActiveRecord::Migration[5.1]
  def change
    create_table :loans_tools do |t|
      t.integer :loan_id, null: false
      t.integer :tool_id, null: false
      t.integer :tool_quantity, null: false
    end
    add_index :loans_tools, [:loan_id, :tool_id, :tool_quantity], unique:true
  end
end
