# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------CATEGORIAS----------
Category.create!(name:'Pratos')
Category.create!(name:'Bebidas')
Category.create!(name:'Doces')

#-----------PRODUTOS-----------
#pratos
Product.create!(name: 'Nhoque',description: 'serve 2 pessoas',price: 3545,category_id:1)
Product.create!(name: 'Frango a Parmegiana',description: 'serve 1 pessoa',price: 2500,category_id:1)
Product.create!(name: 'Risoto de Camarão',description: 'serve 3 pessoas',price: 4750,category_id:1)
Product.create!(name: 'Omelete',description: 'serve 1 pessoa',price: 2000,category_id:1)
Product.create!(name: 'Picanha temperada',description: 'serve 2 pessoas',price: 4499,category_id:1)
Product.create!(name: 'Batata Frita',description: 'serve 4 pessoas',price: 6250,category_id:1)
Product.create!(name: 'Hamburguer Vegano',description: 'serve 1 pessoa',price: 3499,category_id:1)
#Bebidas
Product.create!(name:'Brahma duplo malte',description: '1 unidade de 350 ml', price: 645,category_id:2)
Product.create!(name:'Coca Cola',description: '1 unidade de 1L', price: 999,category_id:2)
Product.create!(name:'Guaraná',description: '1 unidade de 600mlL', price: 550,category_id:2)
Product.create!(name:'Sprite',description: '1 unidade de 1L', price: 950,category_id:2)
Product.create!(name:'Guarana Jesus',description: '1 unidade de 600ml', price: 699,category_id:2)
#Doces
Product.create!(name:'Doce de leite vaquinha de minas',description: '1 unidade', price:100 ,category_id:3)
Product.create!(name:'Doce Beijinho de Leite em pó',description: '1 unidade', price:150 ,category_id:3)
Product.create!(name:'Fiesta Mix',description: '1 unidade', price: 931,category_id:3)
Product.create!(name:'Doce de Amendoim Gibi',description: '1 unidade', price: 350,category_id:3)
Product.create!(name:'Gummi Mini Burger Doce de Gelatina',description: '1 pacote', price: 1200,category_id:3)

#Usuarios
User.create!(name:'Roberto',email:'roberto@gmail.com',password:'pamonha',admin: 0)
User.create!(name:'Flavio',email:'flavindupneu@gmail.com',password:'batata',admin: 0)
User.create!(name:'Jaime',email:'jaiminmatadordeporco@gmail.com',password:'feijao',admin: 0)
User.create!(name:'Adalberto',email:'bruh@gmail.com',password:'alecrim',admin: 0)
User.create!(name:'jorge luis',email:'carinha@hotmail.com',password:'dopamina',admin: 0)
User.create!(name:'thiaginho',email:'lapeladoce@outlook.com',password:'tecladinho_lindinho_2009',admin: 1)
User.create!(name:'profeteacher',email:'profeteacher@unb.com.br',password:'postgres',admin: 1)

UserProduct.create!(user_id:1,product_id:2)
UserProduct.create!(user_id:1,product_id:3)
UserProduct.create!(user_id:1,product_id:6)
UserProduct.create!(user_id:2,product_id:3)
UserProduct.create!(user_id:4,product_id:5)
UserProduct.create!(user_id:5,product_id:10)
UserProduct.create!(user_id:6,product_id:11)
UserProduct.create!(user_id:6,product_id:12)
UserProduct.create!(user_id:7,product_id:1)
UserProduct.create!(user_id:5,product_id:1)