# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  User.create!({ firstname: "Chicago#{i}", lastname: "Kowalski#{i}", email: "kowalski#{i}@gmail.com", password: "kowalski#{i}"  })
end
admin = User.last
admin.admin = true
admin.save

category = Category.create!({name: 'kurtki'})

5.times do |i|
  Product.create!({title: "kurtka", description: "bardzo ladna kurtka", price: i, category: category, user: admin})
end

product = Product.first

5.times do |i|
  Review.create!({content: "bardzo mi sie podoba", rating: 4, user: admin, product: product})
end
