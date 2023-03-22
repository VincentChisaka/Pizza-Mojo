def get_restaurant_id
  @restaurant = Restaurant.includes(:pizzas).find(params[:id])
  render json: @restaurant.as_json(include: :pizzas), status: :ok
end
