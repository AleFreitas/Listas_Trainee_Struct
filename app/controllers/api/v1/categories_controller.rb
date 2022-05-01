class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all.select(:id, :name).order(:id)
        render json: categories, status: :ok  
    end

    def show
        categories = Category.find(params[:id])
        render json: categories, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        category = Category.new(categories_params)
        category.save!
        render json: category, status: :created
    rescue StandardError => e
        render json: e,status: :bad_request
    end

    def update
        category = Category.find(params[:id])
        category.update(categories_params)
        render json: category, status: :ok
    rescue StandardError => e
        render json:e, status: :unprocessable_entity
    end

    def delete
        category = Category.find(params[:id])
        category.destroy
        render json: { message: "Categoria #{category.name} foi deletada"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def category_filter
        category = Category.find(params[:id]).products.select(:id, :name, :description, :price)
        render json: category, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    private

    def categories_params
        params.require(:category).permit(:name)
    end
end
