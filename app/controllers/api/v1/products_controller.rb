class Api::V1::ProductsController < ApplicationController
    
    acts_as_token_authentication_handler_for User

    def index
        product = Product.all.select(:id, :name, :description, :price).order(:id)
        render json: product, status: :ok  
    end

    def show
        product = Product.find(params[:id])
        render json: product, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        product = Product.new(products_params)
        product.save!
        render json: product, status: :created
    rescue StandardError => e
        render json: e,status: :bad_request
    end

    def update
        product = Product.find(params[:id])
        product.update(products_params)
        render json: product, status: :ok
    rescue StandardError => e
        render json:e, status: :unprocessable_entity
    end

    def delete
        product = Product.find(params[:id])
        product.destroy
        render json: { message: "Produto #{product.name} foi deletado"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def products_params
        params.require(:product).permit(:name, :description, :price, :category_id)
    end
end
