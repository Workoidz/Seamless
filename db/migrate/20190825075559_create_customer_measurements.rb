class CreateCustomerMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_measurements do |t|
      t.string :upper_body_back_shape
      t.string :upper_body_stomach
      t.string :upper_body_shoulder
      t.string :lower_body_posture
      t.integer :jacket_or_shirt_length
      t.integer :jacket_or_shirt_shoulder
      t.integer :jacket_or_shirt_sleeve_length
      t.integer :jacket_or_shirt_chest
      t.integer :jacket_or_shirt_waist
      t.integer :jacket_or_shirt_neck
      t.integer :jacket_or_shirt_hip
      t.integer :jacket_or_shirt_hale_back
      t.integer :jacket_or_shirt_cross_back
      t.integer :jacket_or_shirt_bicep
      t.integer :jacket_or_shirt_cross_front
      t.integer :jacket_or_shirt_arm_hole_round
      t.integer :trouser_length
      t.integer :trouser_crotch
      t.integer :trouser_inseam
      t.integer :trouser_waist
      t.integer :trouser_hip
      t.integer :trouser_knee
      t.integer :trouser_thigh
      t.integer :trouser_bottom
      t.integer :trouser_f_low
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
