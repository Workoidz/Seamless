class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :contact_person_name
      t.text :address
      t.string :contact_number
      t.string :email
      t.string :facebook_link
      t.string :whatsapp_number
      t.string :youtube_link
      t.string :instagram_link
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end
