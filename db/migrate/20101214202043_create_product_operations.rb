class CreateProductOperations < ActiveRecord::Migration
  def self.up
    create_table :product_operations do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :operation_type_id
      t.integer :product_number
      t.date :operation_date

      t.timestamps
    end
  end

  def self.down
    drop_table :product_operations
  end
end
