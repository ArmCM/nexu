class Api::V1::ModelsController < ApplicationController
    def index
        models = Model.all.includes(:brand)
        render json: models.map { |model| { 
            id: model.id,
            name: model.name,
            average_price: model.average_price,
            brand: model.brand.name
         }}
    end
end
