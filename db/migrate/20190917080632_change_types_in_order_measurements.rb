class ChangeTypesInOrderMeasurements < ActiveRecord::Migration[6.0]
  def change
  	change_table :order_measurements do |t|
      
      t.change :jacket_or_shirt_length, :decimal
      t.change :jacket_or_shirt_shoulder, :decimal
      t.change :jacket_or_shirt_sleeve_length, :decimal
      t.change :jacket_or_shirt_chest, :decimal
      t.change :jacket_or_shirt_waist, :decimal
      t.change :jacket_or_shirt_neck, :decimal
      t.change :jacket_or_shirt_hip, :decimal
      t.change :jacket_or_shirt_hale_back, :decimal
      t.change :jacket_or_shirt_cross_back, :decimal
      t.change :jacket_or_shirt_bicep, :decimal
      t.change :jacket_or_shirt_cross_front, :decimal
      t.change :jacket_or_shirt_arm_hole_round, :decimal
      t.change :trouser_length, :decimal
      t.change :trouser_crotch, :decimal
      t.change :trouser_inseam, :decimal
      t.change :trouser_waist, :decimal
      t.change :trouser_hip, :decimal
      t.change :trouser_knee, :decimal
      t.change :trouser_thigh, :decimal
      t.change :trouser_bottom, :decimal
      t.change :trouser_f_low, :decimal
     end 
  end
end
