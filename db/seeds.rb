# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alice = User.create(email: "alice@xample.com", password: "password")
bob = User.create(email: "bob@xample.com", password: "password")

context = Context.create(title: "Application Development", id_from_tc: "blank")

Enrollment.create(user_id: alice.id, context_id: context.id)
Enrollment.create(user_id: bob.id, context_id: context.id)

Resource.create(title: "Application Development", context_id: context.id, id_from_tc: "blank")

