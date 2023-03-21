class RestaurantPizzasController < ApplicationController

    def get_restaurants
        render json: Restaurant.all 

    end

    def get_pizzas
        render json: Pizza.all

    end


    def create
        price = restaurantpizza_params[:price]



    end

    def get_restaurants_id
        @restaurant = Restaurant.includes(:pizzas).find(params[:id])
        render json: @restaurant.as_json(include: :pizzaz), status: :ok

    end

    def delete
        @restaurant = Restaurant.find_by(id: params[:id])
        if @restaurant
            @restaurant.restaurant_pizzas.destroy_all
            @restaurant.destroy
            head :no_content
          else
            render json: { error: "Restaurant not found" }, status: :not_found
          
        end


    end







    private
    def restaurantpizza_params
        params.permit(:price)

    end
end
