# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.find_or_create_by(name: "Sandal")
Category.find_or_create_by(name: "Bata")
Category.find_or_create_by(name: "Sport")

Company.find_or_create_by(name: "Nike")
Company.find_or_create_by(name: "Adidas")
Company.find_or_create_by(name: "Puma")

Shoe.create(name: 'Sandal 2014', category_id: '1', company_id: '1', description: 'mau ma sieu dep nhap khau tu Nhat Ban', price: '20000')