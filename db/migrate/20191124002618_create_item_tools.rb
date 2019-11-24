class CreateItemTools < ActiveRecord::Migration[5.1]
  def change
    create_table :item_tools do |t|
      t.integer :tool_id
      t.integer :loan_id
      t.integer :tool_quantity

      t.timestamps
    end
  end
end
