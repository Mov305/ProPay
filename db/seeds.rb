# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some example users
User.create(name: 'user1', email: 'user1@example.com', password: 'password1')
User.create(name: 'user2', email: 'user2@example.com', password: 'password2')
User.create(name: 'user3', email: 'user3@example.com', password: 'password3')

# Create some example groups
Group.create(name: 'Group A', icon: 'icon-a.png')
Group.create(name: 'Group B', icon: 'icon-b.png')
Group.create(name: 'Group C', icon: 'icon-c.png')

# Create some example payments associated with users
user1 = User.find_by(name: 'user1')
user2 = User.find_by(name: 'user2')

# Create some example payments associated with groups
group1 = Group.find_by(name: 'Group A')
group2 = Group.find_by(name: 'Group B')


Payment.create(amount: 100, user: user1, group: group1)
Payment.create(amount: 50, user: user2, group: group1)
Payment.create(amount: 75, user: user1, group: group2)