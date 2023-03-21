puts "Doing some magic  ..."
10.times do
    name = Faker::Food.dish
    ingredients = Faker::Food.ingredients
    Pizza.create(name: name, ingredients: ingredients)

end

10.times do
    name = Faker::Restaurant.name 
    address = Faker::Address.street_address
    Restaurant.create(name: name, address: address)


end

10.times do
    price = Faker::Number.between(from: 1, to: 30)
    RestaurantPizza.create(price: price)

end


puts "Houdini caught up with us !!!!"