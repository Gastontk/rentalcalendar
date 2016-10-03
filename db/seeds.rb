# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create([{name:'Fred', email:'j@j.com', password_digest:'$2a$10$BOF9oBHQgTdHeTVdYi1mCesRUZH0kSo93XIj7R8Xvo8...'},
	{name: 'jim', email: 'jim@jim.com', password_digest: '$2a$10$BOF9oBHQgTdHeTVdYi1mCesRUZH0kSo93XIj7R8Xvo8...'},
	{name: 'jane', email:'jane@jane.com', password_digest: '$2a$10$BOF9oBHQgTdHeTVdYi1mCesRUZH0kSo93XIj7R8Xvo8...'}]
	)

Rental.create(name: "first seed", start_time: "2016-10-06 00:00:00", created_at: "2016-10-01 22:10:00", updated_at: "2016-10-02 00:01:18", end_time: "2016-10-12 00:00:00", user_id: 1)
Rental.create(name: "second seed", start_time: "2016-10-06 00:00:00", created_at: "2016-10-01 22:10:00", updated_at: "2016-10-02 00:01:18", end_time: "2016-10-12 00:00:00", user_id: 1)