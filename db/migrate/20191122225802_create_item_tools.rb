class CreateItemTools < ActiveRecord::Migration[5.1]
  def change
    create_table :item_tools do |t|

      t.timestamps
    end
  end
end
