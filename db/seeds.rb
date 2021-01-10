# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(name: 'Product 1', description: 'This is Product 1 description.', image: 'product1_img.jpg', price: 20.00)
Product.create!(name: 'Product 2', description: 'This is Product 2 description.', image: 'product2_img.jpg', price: 20.00)
Product.create!(name: 'Product 3', description: 'This is Product 3 description.', image: 'product3_img.jpg', price: 20.00)
Product.create!(name: 'Product 4', description: 'This is Product 4 description.', image: 'product4_img.jpg', price: 20.00)
Product.create!(name: 'Product 5', description: 'This is Product 5 description.', image: 'product5_img.jpg', price: 20.00)