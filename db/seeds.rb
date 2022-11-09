require 'faker'

Role.create(name: 'admin', resource_type: 'User', resource_id: 1) if Role.where(name: 'admin', resource_type: 'User')  if Role.where(name: 'admin', resource_type: 'User')
Role.create(name: 'employeer', resource_type: 'User', resource_id: 2) if Role.where(name: 'employeer', resource_type: 'User')
Role.create(name: 'client', resource_type: 'User', resource_id: 3) if Role.where(name: 'client', resource_type: 'User')

User.create(name: 'Javier', lastname: 'Diaz', cedula: '29543140', email: 'javierdiazt406@gmail.com', password:'277353', password_confirmation: '277353', location: 'Circunvalacion 2, Amparo, Maracaibo, Zulia.')
User.find(1).add_role(:admin)

Card.create(card_number: "4002-1034-1294-3302", cvc: "343", exp_month: "12", exp_year: "23", user_id: 1)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 1)

User.create(name: 'Evanan', lastname: 'Semprun', cedula: '28488961', email: 'evanansemprun@gmail.com', password:'123456', password_confirmation: '123456', location: 'Fuerzas Armadas, Maracaibo, Zulia.')
User.find(2).add_role(:employeer)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 2)

20.times do |i|
  User.create(name: Faker::Name.name, lastname: Faker::Name.last_name, cedula: Faker::Number.number(digits: 8), email: Faker::Internet.email, password:'123456', password_confirmation: '123456', location: Faker::Address.full_address)
  User.find(3+i).add_role(:client)
  Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 3+i)
end

User.create(name: 'Briyith', lastname: 'Portillo', cedula: '30355033', email:'briyithportillo@gmail.com', password:'123456', password_confirmation: '123456', location: 'Barrio Sur America, San Francisco, Zulia')
User.find(23).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 23)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 23)

User.create(name: 'Edmundo', lastname: 'Arias', cedula: '28938720', email: 'edmundomiguelarias@gmail.com', password:'123456', password_confirmation: '123456', location: 'Torre Epifania, Maracaibo, Zulia.')
User.find(24).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 24)

5.times do |i|
  User.create(name: Faker::Name.name, lastname: Faker::Name.last_name, cedula: Faker::Number.number(digits: 8), email: Faker::Internet.email, password:'123456', password_confirmation: '123456', location: Faker::Address.full_address)
  User.find(25+i).add_role(:client)
  Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 25+i)
end

User.create(name: 'Samantha', lastname: 'Linares', cedula: '29788342', email: 'samilila112@gmail.com', password:'123456', password_confirmation: '123456', location: 'La Victoria, Maracaibo, Zulia.')
User.find(30).add_role(:admin)
Card.create(card_number: rand(3000..6999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s + "-" + rand(1000..9999).to_s, cvc: rand(100..999).to_s, exp_month: rand(10..12).to_s, exp_year: rand(23..26).to_s, user_id: 30)

puts('Seeds already planted! 🌱')