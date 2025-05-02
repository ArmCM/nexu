class Api::V1::BrandsController < ApplicationController
    def index
        brands = Brand.all.includes(:models)
        render json: brands.map { |brand| { 
            id: brand.id,
            nombre: brand.name,
            average_price: brand.average_price
         }}
    end
end
