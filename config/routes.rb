Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get '/restaurants', to: "restaurant_pizzas#get_restaurants"
  get '/pizzas', to: "restaurant_pizzas#get_pizzas"
  get '/restaurants', to: 'restaurant_pizzas#get_restaurants_id'
  get '/restaurants/:id', to: "restaurant_pizzas#get_restaurants_id"
  delete '/restaurants/:id', to: "restaurant_pizzas#delete"
end
