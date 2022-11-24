require 'faker'
require 'securerandom'

puts("Seeding... 🌰")

#=Roles Added==========================================================================================================================================================================================================================================================================================================#

puts("Adding Roles 🐊")

Role.create(name: 'admin', resource_type: 'User', resource_id: 1) if Role.where(name: 'admin', resource_type: 'User')  if Role.where(name: 'admin', resource_type: 'User')
Role.create(name: 'employeer', resource_type: 'User', resource_id: 2) if Role.where(name: 'employeer', resource_type: 'User')
Role.create(name: 'client', resource_type: 'User', resource_id: 3) if Role.where(name: 'client', resource_type: 'User')

#===========================================================================================================================================================================================================================================================================================================#

#=Users, Cart and Cards Added==========================================================================================================================================================================================================================================================================================================#

puts("Adding Profile of Users 🥹")

User.create(name: 'Javier', lastname: 'Diaz', cedula: '29543140', email: 'javierdiazt406@gmail.com', password:'277353', password_confirmation: '277353', location: 'Circunvalacion 2, Amparo, Maracaibo, Zulia.', phone: "4121688466")
User.find(1).add_role(:admin)

Card.create(card_number: "4002-1034-1294-3302", cvc: "343", exp_month: "12", exp_year: "23", user_id: 1)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 1)
Cart.create(user_id: 1)

User.create(name: 'Briyith', lastname: 'Portillo', cedula: '30355033', email:'briyithportillo@gmail.com', password:'123456', password_confirmation: '123456', location: 'Barrio Sur America, San Francisco, Zulia', phone: "4146961248")
User.find(2).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 2)
Cart.create(user_id: 2)

20.times do |i|
  User.create(name: Faker::Name.name, lastname: Faker::Name.last_name, cedula: Faker::Number.number(digits: 8), email: Faker::Internet.email, password:'123456', password_confirmation: '123456', location: Faker::Address.full_address, phone: Faker::Base.numerify('412#######'))
  # User.find(3+i).add_role(:client)
  Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 3+i)
  Cart.create(user_id: 3+i)
end

User.create(name: 'Evanan', lastname: 'Semprun', cedula: '28488961', email: 'evanansemprun@gmail.com', password:'123456', password_confirmation: '123456', location: 'Fuerzas Armadas, Maracaibo, Zulia.', phone: "4146317864")
User.find(23).add_role(:employeer)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 23)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 23)
Cart.create(user_id: 23)

User.create(name: 'Edmundo', lastname: 'Arias', cedula: '28938720', email: 'edmundomiguelarias@gmail.com', password:'123456', password_confirmation: '123456', location: 'Torre Epifania, Maracaibo, Zulia.', phone: Faker::Base.numerify('4246630017'))
User.find(24).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 24)
Cart.create(user_id: 24)

5.times do |i|
  User.create(name: Faker::Name.name, lastname: Faker::Name.last_name, cedula: Faker::Number.number(digits: 8), email: Faker::Internet.email, password:'123456', password_confirmation: '123456', location: Faker::Address.full_address, phone: Faker::Base.numerify('412#######'))
  # User.find(25+i).add_role(:client)
  Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 25+i)
  Cart.create(user_id: 25+i)
end

User.create(name: 'Samantha', lastname: 'Linares', cedula: '29788342', email: 'samilila112@gmail.com', password:'123456', password_confirmation: '123456', location: 'La Victoria, Maracaibo, Zulia.', phone: "4127500573")
User.find(30).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 30)
Cart.create(user_id: 30)

#===========================================================================================================================================================================================================================================================================================================#

#==Families=========================================================================================================================================================================================================================================================================================================#

Family.create(family: 'Vegetales')
Family.create(family: 'Frutas')
Family.create(family: 'Carnes')
Family.create(family: 'Pescados')
Family.create(family: 'Lacteos')
Family.create(family: 'Cereales')
Family.create(family: 'Legumbres')
Family.create(family: 'Bebidas')
Family.create(family: 'Licores')
Family.create(family: 'Narguiles')

#===========================================================================================================================================================================================================================================================================================================#


#==Ingredients added=========================================================================================================================================================================================================================================================================================================#

puts('Adding ingredients 🍅')

Ingredient.create(name: "Tomate", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Papa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Cebolla", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Zanahoria", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Lechuga", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Pimenton", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Ajo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Perejil", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Cilantro", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Cebollin", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Pepino", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Aguacate", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Pepinillo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Champiñon", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Espinaca", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)
Ingredient.create(name: "Pimenton", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 1)

Ingredient.create(name: "Manzana", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Naranja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Platano", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Pera", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Mango", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Melon", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Sandia", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Papaya", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Piña", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Uva", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Fresa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Mora", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Ciruela", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Cereza", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Kiwi", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)
Ingredient.create(name: "Mandarina", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 2)

Ingredient.create(name: "Pollo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 7, family_id: 3)
Ingredient.create(name: "Res", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 3)
Ingredient.create(name: "Cerdo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 7, family_id: 3)
Ingredient.create(name: "Cordero", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 3)
Ingredient.create(name: "Pavo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 8, family_id: 3)
Ingredient.create(name: "Pepperonni", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)
Ingredient.create(name: "Salchicha", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)
Ingredient.create(name: "Jamón", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)
Ingredient.create(name: "Tocino", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)
Ingredient.create(name: "Chorizo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)
Ingredient.create(name: "Carne molida", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 3)

Ingredient.create(name: "Tiburon", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 9, family_id: 4)
Ingredient.create(name: "Corvina", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 4)
Ingredient.create(name: "Camarones", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Langosta", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 7, family_id: 4)
Ingredient.create(name: "Cangrejo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 4)
Ingredient.create(name: "Ostras", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Almejas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Calamar", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Pulpo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Atun", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Salmón", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Trucha", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Caballa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Sardina", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Bonito", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Anchoa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 4)
Ingredient.create(name: "Pez espada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Pez vela", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Pez globo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Pez payaso", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 4)
Ingredient.create(name: "Pez león", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 6, family_id: 4)
Ingredient.create(name: "Pez loro", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 6, family_id: 4)

Ingredient.create(name: "Leche de vaca", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de cabra", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de oveja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Leche de alpaca", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 5)
Ingredient.create(name: "Leche de burra", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 99, family_id: 5)
Ingredient.create(name: "Leche del Edmundito", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 99, family_id: 5)
Ingredient.create(name: "Leche del Banano", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 99, family_id: 5)
Ingredient.create(name: "Leche de deslactosada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de soya", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de almendra", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de coco", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de avena", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Chicha de arroz", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Chicha de pasta", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche de quinoa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Huevo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 5)
Ingredient.create(name: "Yogurt", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Queso", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Mantequilla", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Crema", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Margarina", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Nata", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 5)
Ingredient.create(name: "Leche condensada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Leche evaporada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Leche en polvo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 5)
Ingredient.create(name: "Huevo de codorniz", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 5, family_id: 5)
Ingredient.create(name: "Huevo Jumbo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 8, family_id: 5)

Ingredient.create(name: "Avena", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Arroz", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Hariana de Maíz", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Harina de Trigo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Cebada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pan", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta penne", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta fideos", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta espagueti", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta macarrones", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta tallarines", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta fettuccine", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta lasagna", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta ravioli", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta tortellini", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta tagliatelle", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta linguine", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta fusilli", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)
Ingredient.create(name: "Pasta conchas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 6)

Ingredient.create(name: "Caraotas negras", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 7)
Ingredient.create(name: "Arveja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 7)
Ingredient.create(name: "Caraotas rojas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 7)
Ingredient.create(name: "Lenteja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 7)
Ingredient.create(name: "Garbanzo", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 7)

Ingredient.create(name: "Coca-Cola 2 litros", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Pepsi 2 litros", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Coca-Cola Zero", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Coca-Cola Light", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Pepsi Light", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Fanta", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Sprite", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Manaos", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Manaos Light", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Manaos Zero", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de naranja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de piña", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de uva", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de fresa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de mango", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de papaya", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de maracuyá", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de guanábana", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Limonada", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Jugo de toronja", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Café", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 8)
Ingredient.create(name: "Té", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 8)
Ingredient.create(name: "Agua mineral", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0, family_id: 8)
Ingredient.create(name: "Agua de sabor", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 8)
Ingredient.create(name: "Agua de coco", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 8)
Ingredient.create(name: "Agua de panela", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 8)
Ingredient.create(name: "Agua de jamaica", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 8)


Ingredient.create(name: "Coctel de frutas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1.5, family_id: 9)
Ingredient.create(name: "Coctel de frutas con leche", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 9)
Ingredient.create(name: "Balde de Cervezas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 10, family_id: 9)
Ingredient.create(name: "Balde de Cervezas Zulia", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 10, family_id: 9)
Ingredient.create(name: "Cerveza Polar", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 9)
Ingredient.create(name: "Cerveza Polar Light", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 9)
Ingredient.create(name: "Cerveza Regional", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 9)
Ingredient.create(name: "Cerveza Regional Light", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1, family_id: 9)
Ingredient.create(name: "Cerveza Morena", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 1.5, family_id: 9)
Ingredient.create(name: "Vodka", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 30, family_id: 9)
Ingredient.create(name: "Ron cinco estrellas", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 20, family_id: 9)
Ingredient.create(name: "Cacique", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 30, family_id: 9)
Ingredient.create(name: "Ron blanco", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 20, family_id: 9)
Ingredient.create(name: "Old Parr", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 40, family_id: 9)
Ingredient.create(name: "Buchanan's Deluxe", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 50, family_id: 9)
Ingredient.create(name: "Bacardi", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 60, family_id: 9)
Ingredient.create(name: "Margarita", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 3, family_id: 9)
Ingredient.create(name: "Margarita con tequila", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 9)
Ingredient.create(name: "Daikiri", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 4, family_id: 9)
Ingredient.create(name: "Mojito", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 2, family_id: 9)
Ingredient.create(name: "La Nonna", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 6, family_id: 9)

Ingredient.create(name: "Narguiles", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 0.5, family_id: 10)
Ingredient.create(name: "Narguiles con tabaco", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 12, family_id: 10)
Ingredient.create(name: "Narguiles con sabor limon", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 14, family_id: 10)
Ingredient.create(name: "Narguiles con sabor fresa", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 14, family_id: 10)
Ingredient.create(name: "Narguiles con sabor menta", quantity: rand(150..400), serial: SecureRandom.uuid, unit_price: 15, family_id: 10)

#===========================================================================================================================================================================================================================================================================================================#

#==Platillos=========================================================================================================================================================================================================================================================================================================#

puts("Adding dishes 🍕")

Platillo.create(name: 'Pizza de Pepperoni', price: 11, image_url: "https://lanonna.online/images/20.png", category: 'Pizza')
Platillo.create(name: 'Pizza de Tocineta', price: 13, image_url: "https://lanonna.online/images/17.png", category: 'Pizza')
Platillo.create(name: 'Pizza de Hawainas', price: 14, image_url: "https://lanonna.online/images/18.png", category: 'Pizza')
Platillo.create(name: 'Pizza de Champiñones con Pollo', price: 15, image_url: "https://lanonna.online/images/19.png", category: 'Pizza')

Platillo.create(name: 'Jumbo Burger', price: 10, image_url: "https://lanonna.online/images/1.png", category: 'Hamburguesas')
Platillo.create(name: 'Burguer Mixta', price: 11, image_url: "https://lanonna.online/images/21.png", category: 'Hamburguesas')
Platillo.create(name: 'Burguer de Cerdo', price: 15, image_url: "https://lanonna.online/images/22.png", category: 'Hamburguesas')
Platillo.create(name: 'Burguer de Pollo crispy', price: 10, image_url: "https://lanonna.online/images/11.png", category: 'Hamburguesas')

Platillo.create(name: 'Servicio de Papas Fritas', price: 6, image_url: "https://lanonna.online/images/8.png", category: 'Papas')
Platillo.create(name: 'Servicio de Papitas delgadas', price: 4, image_url: "https://lanonna.online/images/2.png", category: 'Papas')

Platillo.create(name: 'Pasta a la carbonara', price: 12, image_url: "https://lanonna.online/images/15.png", category: 'Pastas')
Platillo.create(name: 'Pasta con Albondigas', price: 9, image_url: "https://lanonna.online/images/5.png", category: 'Pastas')
Platillo.create(name: 'Lasagna', price: 6, image_url: "https://lanonna.online/images/3.png", category: 'Pastas')
Platillo.create(name: 'Spaguetti', price: 7.50, image_url: "https://lanonna.online/images/4.png", category: 'Pastas')

puts("Joining dishes with ingredients🫶🏻")

PlatillosHasIngredient.create(platillo_id: 1, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 2, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 3, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 4, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 5, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 5, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 6, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 7, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 8, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 9, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 10, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 11, ingredient_id: 3)
PlatillosHasIngredient.create(platillo_id: 12, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 13, ingredient_id: 1)
PlatillosHasIngredient.create(platillo_id: 14, ingredient_id: 1)

puts("Adding bills 📝")

30.times do |i|
  Factura.create(tipo: 'Fiscal', user_id: i+1)
  PlatillosHasFactura.create(platillo_id: rand(1..14), factura_id: i+1)
end

30.times do |i|
  Factura.create(tipo: 'Fiscal', user_id: i+1)
  PlatillosHasFactura.create(platillo_id: rand(1..14), factura_id: i+31)
end

30.times do |i|
  Factura.create(tipo: 'Fiscal', user_id: i+1)
  PlatillosHasFactura.create(platillo_id: rand(1..14), factura_id: i+61)
end


#===========================================================================================================================================================================================================================================================================================================#

puts('Seeds already planted! 🌱')