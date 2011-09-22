class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.references :customer
      t.datetime :sale_date
      t.string :delivery_address

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
