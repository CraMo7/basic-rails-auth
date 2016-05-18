# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

User.destroy_all
user1 = User.create!(email: "u1@g.com", password: "oneone", password_confirmation: "oneone")
user2 = User.create!(email: "u2@g.com", password: "twotwo", password_confirmation: "twotwo")

Account.destroy_all
# Account.delete_all
acc1 = Account.create!({category: "local", amount: 10.00, user_id: user1.id})
acc2 = Account.create!({category: "offshore", amount: 100000000.00, user_id: user1.id})
acc3 = Account.create!({category: "offshore", amount: 55555555.00, user_id: user2.id})
acc4 = Account.create!({category: "local", amount: 5.00, user_id: user2.id})

user1.accounts.create!({category: "local", amount: 10.00})


#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
