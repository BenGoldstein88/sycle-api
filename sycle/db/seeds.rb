# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Auction.destroy_all
Listing.destroy_all
Image.destroy_all
Bid.destroy_all
# admin
tim = User.new(username: 'Tim', email: 'tim@tim.com', admin: 'true')
tim.password = 'timtim'
tim.save!
# non-admin
tom = User.new(username: 'Tom', email: 'tom@tom.com')
tom.password = 'tomtom'
tom.save!

a = Auction.create!
l = Listing.create!(item_name: 'test item #1', item_description: 'this be a test description, yar', auction_id: a.id, user_id: tom.id)
i = Image.create!(image_url: '../test', listing_id: l.id)
b = Bid.create!(user_id: tim.id, listing_id: l.id)
