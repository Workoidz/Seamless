class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :trail_date
      t.string :trail_status
      t.date :delivery_date
      t.string :delivery_status
      t.string :order_pictures
      t.string :trail_pictures
      t.text :remark
      t.integer :stitching_cost
      t.integer :fabric_cost
      t.integer :stitching_advance
      t.integer :fabric_advance
      t.string :balance_clear_status
      t.integer :master_allocated
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
