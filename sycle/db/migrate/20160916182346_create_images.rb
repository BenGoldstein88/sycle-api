class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.integer :listing_id
    	t.string :image_url
    	t.string :image_description
    	t.timestamps null: false
    end
  end
end
