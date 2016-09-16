class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.integer :auction_id
      t.string :item_name
      t.string :item_description
      t.integer :starting_price, default: 0
      t.integer :min_bid_increment, default: 100
      t.integer :reserve_price, default: 0
      t.string :item_location
      t.boolean :sold, default: false
      t.datetime :start_date
      t.datetime :end_date


      t.timestamps null: false
    end
  end
end
