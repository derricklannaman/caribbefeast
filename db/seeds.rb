# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Destination.delete_all
Meal.delete_all

d1 =  Destination.create(name: "Jamaica", description: "Beautiful tropical island", image_url: 'jamaican_beach.jpg')
d2 =  Destination.create(name: "Barbados", description: "Sunny tropical island", image_url: 'jamaican_beach.jpg')
d3 =  Destination.create(name: "Cuba", description: "Beautiful island, cuisine delights", image_url: 'jamaican_beach.jpg')
d4 =  Destination.create(name: "Dominican Republic", description: "Beautiful tropical island", image_url: 'jamaican_beach.jpg')

m1 = Meal.create(name: "Jerk Chicken", description: "chicken in jerk seasoning", price: "15.00")
m2 = Meal.create(name: "Curry Chicken", description: "chicken in curray seasoning", price: "14.00")
m3 = Meal.create(name: "Jerk Pork", description: "pork in jerk seasoning", price: "20.00")
m4 = Meal.create(name: "Ackee", description: "ackee in jerk seasoning", price: "10.00")
m5 = Meal.create(name: "Mojito Chicken", description: "chicken in jerk seasoning", price: "15.00")
m6 = Meal.create(name: "Cuban Chicken", description: "chicken in jerk seasoning", price: "15.00")
m7 = Meal.create(name: "Cuban pork", description: "chicken in jerk seasoning", price: "15.00")
m8 = Meal.create(name: "DR Jerk Chicken", description: "chicken in jerk seasoning", price: "15.00")
m9 = Meal.create(name: "DR Jerk pork", description: "chicken in jerk seasoning", price: "15.00")
m10 = Meal.create(name: "Barbados Chicken", description: "chicken in jerk seasoning", price: "15.00")
m11 = Meal.create(name: "Barbados pork", description: "chicken in jerk seasoning", price: "15.00")

d1.meals = [m1, m2, m3, m4]
d2.meals = [m10, m11]
d3.meals = [m5, m6, m7]
d4.meals = [m8, m9]



