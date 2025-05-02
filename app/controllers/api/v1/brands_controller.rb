class Api::V1::BrandsController < ApplicationController
    def index
        brands = Brand.all.includes(:models)
        render json: brands.map { |brand| { 
            id: brand.id,
            name: brand.name,
            average_price: brand.average_price
         }}
    end

    def create
        brand = Brand.new(name: params[:name])
    
          return render json: brand, status: :created if brand.save

          render json: { error: brand.errors.full_messages }, status: :unprocessable_entity
    end
end
