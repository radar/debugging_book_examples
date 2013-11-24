# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create(:title => "Hello World", :body => "This is the first post.")
users = 5.times.map do
  User.create(:name => "User#{rand(9999)}")
end

1000.times do
  Comment.create(:post => post, :user => users[rand(5)], :body => "This is just a comment.")
end