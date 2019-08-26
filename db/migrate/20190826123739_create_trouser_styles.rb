class CreateTrouserStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :trouser_styles do |t|
      t.text :style_for
      t.string :style_for_fabric_picture
      t.string :belt
      t.string :pleat
      t.string :pocket
      t.string :back_pocket
      t.string :bottom
      t.string :loops
      t.string :fit
      t.string :related_pictures
      t.string :master_comment
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
