class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.date :when
      t.float :amount
      t.string :description
      t.float :total
      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
