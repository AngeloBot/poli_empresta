class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :id_borrower
      t.integer :id_owner
      t.boolean :returned
      t.boolean :accepted
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
