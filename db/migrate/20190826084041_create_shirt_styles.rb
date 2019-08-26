class CreateShirtStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :shirt_styles do |t|
      t.text :style_for
      t.string :style_for_fabric_picture
      t.string :style
      t.string :lapel
      t.string :vent
      t.string :pocket
      t.string :fit
      t.string :sleeve_placket
      t.string :front_cut
      t.string :related_pictures
      t.string :master_comment
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
