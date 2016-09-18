class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
    	t.datetime :start_date
    	t.datetime :end_date
    	t.boolean :current, default: false
    	t.timestamps null: false
    end
  end
end
