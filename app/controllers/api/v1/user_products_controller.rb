class Api::V1::UserProductsController < ApplicationController
    
    acts_as_token_authentication_handler_for User

    def delete
        favorite = UserProduct.find(params[:id])
        favorite.destroy
        render json: { message: "favorito de id #{favorite.id} foi deletado"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def create
        favorite = UserProduct.new(user_products_params)
        favorite.save!
        render json: favorite, status: :created
    rescue StandardError => e
        render json: e,status: :bad_request
    end

    def user_products_params
        params.require(:user_product).permit( :user_id, :product_id)
    end

end
