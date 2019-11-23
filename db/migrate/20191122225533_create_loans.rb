class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :id_borrower
      t.integer :id_owner
      t.bool :returned
      t.bool :accepted
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
