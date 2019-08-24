class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :mobile
      t.string :password_digest
      t.string :role
      t.string :email
      t.string :aadhar_card_no
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
