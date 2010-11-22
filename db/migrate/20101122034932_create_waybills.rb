class CreateWaybills < ActiveRecord::Migration
  def self.up
    create_table :waybills do |t|
      t.string :sender_address
      t.string :sender_name
      t.string :customer_name
      t.string :customer_address
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :waybills
  end
end
