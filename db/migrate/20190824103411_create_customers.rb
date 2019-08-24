class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :contact_number
      t.string :email
      t.text :address
      t.date :date_of_birth
      t.date :date_of_anniversary
      t.string :picture
      t.string :profile
      t.integer :sales_person
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
