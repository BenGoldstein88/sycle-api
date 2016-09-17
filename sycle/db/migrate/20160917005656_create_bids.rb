class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    	t.integer :user_id
    	t.integer :listing_id
    	t.integer :amount
    	t.boolean :current_highest_bid, default: false
    	t.timestamps null: false
    end
  end
end
