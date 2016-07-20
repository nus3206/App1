# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(name: "Role_1")
Role.create(name: "Role_2")
Role.create(name: "Role_3")
Role.create(name: "Role_4")

Simplefrom.create(name: "nas1", email: "sfgthr", year: 5, remember_me: 1, role_id: 2)
Simplefrom.create(name: "nas2", email: "sfgthr", year: 5, remember_me: 1, role_id: 2)
Simplefrom.create(name: "nas3", email: "sfgthr", year: 5, remember_me: 1, role_id: 2)