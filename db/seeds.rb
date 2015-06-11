# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!({ first_name: "Kasia", last_name: "Kowalska", email: "kasia.kowalska@gmail.com", password: "12345678"  })
User.create!({ first_name: "Basia", last_name: "Kowalska", email: "basia.kowalska@gmail.com", password: "12345678"  })
User.create!({ first_name: "Maura", last_name: "Hauska", email: "maura.hauska@gmail.com", password: "12345678"  })
User.create!({ first_name: "Grzegorz", last_name: "Hauska", email: "grzegorz.hauska@gmail.com", password: "12345678"  })
User.create!({ first_name: "Joanna", last_name: "Kopczyk", email: "joanna.kopczyk@gmail.com", password: "12345678"  })

admin = User.find_by_email("grzegorz.hauska@gmail.com")
admin.admin = true
admin.save

user1, user2, user3 = User.limit(3)

kurtki = Category.create!({name: 'Kurtki'})
spodnie = Category.create!({name: 'Spodnie'})


Product.create!({title: "EVALINE", description: "EVALINE - Żakiet - pastel pink", price: 44.99, category: kurtki, user: user1})
Product.create!({title: "COLBYNORD", description: "COLBYNORD - Kurtka skórzana - black", price: 59.99, category: kurtki, user: user1})
Product.create!({title: "FLORRIS", description: "FLORRIS - Kurtka przejściowa - black", price: 69.99, category: kurtki, user: user1})
Product.create!({title: "ONLSTAR", description: "ONLSTAR - Kurtka wiosenna - micro chip", price: 44.99, category: kurtki, user: user1})
Product.create!({title: "Kamizelka", description: "Kamizelka - black", price: 44.99, category: kurtki, user: user1})

Product.create!({title: "ONLSTAR", description: "ONLSTAR - Kurtka wiosenna - micro chip", price: 44.99, category: spodnie, user: user2})
Product.create!({title: "Kamizelka", description: "Kamizelka - black", price: 59.99, category: spodnie, user: user2})

product1, product2 = Product.limit(2)

Review.create!({content: "bardzo mi sie podoba", rating: 4, user: user1, product: product1})
Review.create!({content: "juz po 1 miesiacu do naprawy", rating: 1, user: user2, product: product1})
Review.create!({content: "polecam wszystkim!", rating: 5, user: user3, product: product1})

Review.create!({content: "jest ok", rating: 3, user: user1, product: product2})
Review.create!({content: "bardzo mi sie podoba", rating: 4, user: user2, product: product2})
Review.create!({content: "nie polecam", rating: 2, user: user3, product: product2})

